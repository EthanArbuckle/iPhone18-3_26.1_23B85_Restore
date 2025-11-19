void global constructor keyed to_000102()
{
  {
    if (v0)
    {
      google::protobuf::internal::fixed_address_empty_string = 0;
      *algn_1ED448AE8 = 0;
      qword_1ED448AF0 = 0;
      google::protobuf::internal::OnShutdownRun(v0, v1, v2);
    }
  }
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  {
    operator new();
  }

  v3 = google::protobuf::internal::ShutdownData::get(void)::data;
  std::mutex::lock((google::protobuf::internal::ShutdownData::get(void)::data + 24));
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 >= v5)
  {
    v7 = *v3;
    v8 = v4 - *v3;
    v9 = v8 >> 4;
    v10 = (v8 >> 4) + 1;
    if (v10 >> 60)
    {
      std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (16 * v9);
    *v13 = google::protobuf::internal::DestroyString;
    v13[1] = &google::protobuf::internal::fixed_address_empty_string;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v4 = google::protobuf::internal::DestroyString;
    v4[1] = &google::protobuf::internal::fixed_address_empty_string;
    v6 = (v4 + 2);
  }

  *(v3 + 8) = v6;

  std::mutex::unlock((v3 + 24));
}

void MLAssetIO::ProtoWireFormatCallbackParser::addBranchesToSearchTree(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a2;
  if (*a2 == v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Field number path is empty.");
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v8 = *a1;
  v7 = a1[1];
  *a3 = *a1;
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = (v5 - 4); v6 != i; v7 = v15)
  {
    v10 = *v6;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v11 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v12;
    do
    {
      if (*(v11 + 32) >= v10)
      {
        v14 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 32) < v10));
    }

    while (v11);
    if (v14 == v12 || v10 < *(v14 + 32))
    {
LABEL_12:
      operator new();
    }

    v8 = *(v14 + 40);
    v15 = *(v14 + 48);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v15;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    ++v6;
  }
}

void sub_1C1BCF9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C1BCFA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MLAssetIO::ProtoWireFormatCallbackParser::parse(MLAssetIO::ProtoWireFormatCallbackParser *this, CodedInputStream *a2)
{
  v2 = *(this + 1);
  v3[0] = *this;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MLAssetIO::ProtoWireFormatCallbackParser::parseRecursively(this, a2, v3);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1C1BCFB18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MLAssetIO::ProtoWireFormatCallbackParser::parseRecursively(uint64_t a1, CodedInputStream *a2, uint64_t a3)
{
  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v38, a2);
  for (result = MLAssetIO::ProtoWireFormatParser::nextField(v38); result; result = MLAssetIO::ProtoWireFormatParser::nextField(v38))
  {
    v7 = *(*a3 + 16);
    if (!v7)
    {
      continue;
    }

    v8 = *a3 + 16;
    do
    {
      if (*(v7 + 32) >= result)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < result));
    }

    while (v7);
    if (v8 == *a3 + 16 || result < *(v8 + 32))
    {
      continue;
    }

    v9 = MLAssetIO::ProtoWireFormatParser::tag(v38) & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v8 + 40);
        if (v19)
        {
          v20 = **v19;
          if (v21)
          {
            v22 = *(v8 + 48);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              v28 = v21;
              v29 = v22;
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v28 = v21;
              v29 = 0;
            }

            MLAssetIO::ProtoWireFormatCallbackParser::parseRecursively(a1, a2, &v28);
            if (!v22)
            {
              continue;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            v25 = v22;
LABEL_39:
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            continue;
          }
        }

        v23 = *(v8 + 48);
        v26 = v19;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(google::protobuf::io::CodedInputStream &)>>(&v26, &v36);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        v24 = *(v36 + 32);
        if (!v24)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v24 + 48))(v24, a2);
      }

      else
      {
        if (v9 != 5)
        {
          continue;
        }

        v13 = *(v8 + 48);
        v30 = *(v8 + 40);
        v31 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()>>(&v30, &v36);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        v14 = v36;
        v15 = MLAssetIO::ProtoWireFormatParser::fixed32Value(v38);
        std::function<void ()>::operator()(v14 + 8, v15);
      }
    }

    else if (v9)
    {
      v10 = *(v8 + 48);
      v32 = *(v8 + 40);
      v33 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(unsigned long long)>>(&v32, &v36);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      v11 = v36;
      v12 = MLAssetIO::ProtoWireFormatParser::fixed64Value(v38);
      std::function<void ()(unsigned long long)>::operator()(v11 + 8, v12);
    }

    else
    {
      v16 = *(v8 + 48);
      v34 = *(v8 + 40);
      v35 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(long long)>>(&v34, &v36);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v17 = v36;
      v18 = MLAssetIO::ProtoWireFormatParser::int64Value(v38);
      std::function<void ()(long long)>::operator()(v17 + 8, v18);
    }

    v25 = v37;
    if (v37)
    {
      goto LABEL_39;
    }
  }

  return result;
}

void sub_1C1BCFE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(long long)>>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  {
    *a2 = 0;
    a2[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1C69087B0](exception, "The field handler for the field number path is not compatible with the protobuf message type.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *(a1 + 8);
  *a2 = result;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::function<void ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(unsigned long long)>>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  {
    *a2 = 0;
    a2[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1C69087B0](exception, "The field handler for the field number path is not compatible with the protobuf message type.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *(a1 + 8);
  *a2 = result;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::function<void ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(unsigned int)>>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  {
    *a2 = 0;
    a2[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1C69087B0](exception, "The field handler for the field number path is not compatible with the protobuf message type.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *(a1 + 8);
  *a2 = result;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::verifyAndCast<std::function<void ()(google::protobuf::io::CodedInputStream &)>>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  {
    *a2 = 0;
    a2[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1C69087B0](exception, "The field handler for the field number path is not compatible with the protobuf message type.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v7 = *(a1 + 8);
  *a2 = result;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MLAssetIO::ProtoWireFormatCallbackParser::BranchField::~BranchField(MLAssetIO::ProtoWireFormatCallbackParser::BranchField *this)
{
  *this = &unk_1F415D230;
  std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_1F415D230;
  std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::destroy(this + 8, *(this + 2));

  JUMPOUT(0x1C6908B60);
}

void std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void sub_1C1BD0460(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>::shared_ptr[abi:ne200100]<MLAssetIO::ProtoWireFormatCallbackParser::BranchField,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MLAssetIO::ProtoWireFormatCallbackParser::BranchField *,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>::__shared_ptr_default_delete<MLAssetIO::ProtoWireFormatCallbackParser::BranchField,MLAssetIO::ProtoWireFormatCallbackParser::BranchField>,std::allocator<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__shared_ptr_pointer<MLAssetIO::ProtoWireFormatCallbackParser::BranchField *,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>::__shared_ptr_default_delete<MLAssetIO::ProtoWireFormatCallbackParser::BranchField,MLAssetIO::ProtoWireFormatCallbackParser::BranchField>,std::allocator<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MLAssetIO::ProtoWireFormatCallbackParser::BranchField *,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>::__shared_ptr_default_delete<MLAssetIO::ProtoWireFormatCallbackParser::BranchField,MLAssetIO::ProtoWireFormatCallbackParser::BranchField>,std::allocator<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<MLAssetIO::ProtoWireFormatCallbackParser::BranchField>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::__emplace_unique_key_args<int,std::pair<int const,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>> const&>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void *std::__shared_ptr_emplace<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(google::protobuf::io::CodedInputStream &)>>>::__shared_ptr_emplace[abi:ne200100]<std::function<void ()(google::protobuf::io::CodedInputStream &)> const&,std::allocator<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(google::protobuf::io::CodedInputStream &)>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F415CBF0;
  a1[3] = &unk_1F415D210;
  std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::__value_func[abi:ne200100]((a1 + 4), a2);
  return a1;
}

void std::__shared_ptr_emplace<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(google::protobuf::io::CodedInputStream &)>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CBF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(google::protobuf::io::CodedInputStream &)>>::~LeafField(void *a1)
{
  *a1 = &unk_1F415D210;
  std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(google::protobuf::io::CodedInputStream &)>>::~LeafField(void *a1)
{
  *a1 = &unk_1F415D210;
  std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<MLAssetIO::ProtoWireFormatCallbackParser::Field>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void *std::__shared_ptr_emplace<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(long long)>>>::__shared_ptr_emplace[abi:ne200100]<std::function<void ()(long long)> const&,std::allocator<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(long long)>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F415CBB8;
  a1[3] = &unk_1F415D1F0;
  std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100]((a1 + 4), a2);
  return a1;
}

void std::__shared_ptr_emplace<MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(long long)>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F415CBB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void *MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(long long)>>::~LeafField(void *a1)
{
  *a1 = &unk_1F415D1F0;
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void MLAssetIO::ProtoWireFormatCallbackParser::LeafField<std::function<void ()(long long)>>::~LeafField(void *a1)
{
  *a1 = &unk_1F415D1F0;
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(uint64_t this, CodedInputStream *a2)
{
  *this = a2;
  *(this + 8) = -1;
  return this;
}

uint64_t MLAssetIO::ProtoWireFormatParser::nextField(char ***this)
{
  if ((this[1] & 7) == 2)
  {
    v2 = *this;
    v3 = google::protobuf::io::CodedInputStream::BytesUntilLimit(*this);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = *(v2 + 2) - *v2;
      if (v3 <= v4)
      {
        *v2 += v3;
      }

      else
      {
        google::protobuf::io::CodedInputStream::SkipFallback(v2, v3, v4);
      }
    }

    google::protobuf::io::CodedInputStream::PopLimit(*this, *(this + 6));
  }

  v5 = *this;
  v6 = **this;
  v7 = (*this)[1];
  if (v6 == v7 && (*(v5 + 11) || *(v5 + 6) == *(v5 + 10)))
  {
    v9 = 0;
    *(v5 + 8) = 0;
    *(v5 + 36) = 1;
    return v9;
  }

  if (v6 >= v7)
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      *v5 = v6 + 1;
      goto LABEL_16;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*this, TagFallback);
LABEL_16:
  *(v5 + 8) = TagFallback;
  *(this + 2) = TagFallback;
  v9 = TagFallback >> 3;
  v10 = TagFallback & 7;
  if (v10 <= 1)
  {
    if ((TagFallback & 7) == 0)
    {
      v11 = *this;
      v21 = **this;
      if (v21 < (*this)[1])
      {
        v22 = *v21;
        if ((v22 & 0x8000000000000000) == 0)
        {
          this[2] = v22;
          v15 = v21 + 1;
          goto LABEL_28;
        }
      }

      this[2] = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v11);
      if ((v26 & 1) == 0)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v44);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Failed to read varint integer for field number ", 47);
        MEMORY[0x1C6908970](v27, v9);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x1C69087C0](exception, v43);
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      return v9;
    }

    if (v10 == 1)
    {
      v13 = *this;
      v12 = (this + 2);
      v11 = v13;
      v14 = *v13;
      if ((*(v13 + 2) - *v13) >= 8)
      {
        v16 = *v14;
        v15 = (v14 + 1);
        *v12 = v16;
LABEL_28:
        *v11 = v15;
        return v9;
      }

      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v11, v12))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v44);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Failed to read FIXED64 for field number ", 40);
        MEMORY[0x1C6908970](v31, v9);
        v32 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x1C69087C0](v32, v43);
        __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      return v9;
    }

LABEL_42:
    v35 = TagFallback & 7;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v44);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Field number ", 13);
    v37 = MEMORY[0x1C6908970](v36, v9);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " has wireType ", 14);
    v39 = MEMORY[0x1C6908970](v38, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", which is not supported.", 25);
    v40 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x1C69087C0](v40, v43);
    __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v10 == 2)
  {
    v23 = *this;
    v24 = **this;
    if (v24 >= (*this)[1] || (v25 = *v24, (v25 & 0x80000000) != 0))
    {
      VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(v23);
      *(this + 4) = VarintSizeAsIntFallback;
      if ((VarintSizeAsIntFallback & 0x80000000) != 0)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v44);
        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Failed to read length-delimited length for field number ", 56);
        MEMORY[0x1C6908970](v41, v9);
        v42 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        MEMORY[0x1C69087C0](v42, v43);
        __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v25 = VarintSizeAsIntFallback;
      v23 = *this;
    }

    else
    {
      *(this + 4) = v25;
      *v23 = v24 + 1;
    }

    *(this + 6) = google::protobuf::io::CodedInputStream::PushLimit(v23, v25);
    return v9;
  }

  if (v10 != 5)
  {
    goto LABEL_42;
  }

  v18 = *this;
  v17 = (this + 2);
  v11 = v18;
  v19 = *v18;
  if ((*(v18 + 2) - *v18) >= 4)
  {
    v20 = *v19;
    v15 = (v19 + 1);
    *v17 = v20;
    goto LABEL_28;
  }

  if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v11, v17))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v44);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Failed to read FIXED32 for field number ", 40);
    MEMORY[0x1C6908970](v33, v9);
    v34 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x1C69087C0](v34, v43);
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v9;
}

void sub_1C1BD1988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1C1BD1C7C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1C6908AC0](v1);
  _Unwind_Resume(a1);
}

uint64_t MLAssetIO::ProtoWireFormatParser::int32Value(MLAssetIO::ProtoWireFormatParser *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "int32");
  MLAssetIO::verifyWireType(__p, *(this + 2), 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 4);
}

void sub_1C1BD1D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MLAssetIO::verifyWireType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a2 & 7) != a3)
  {
    v4 = result;
    v18 = a2 & 7;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v20);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Failed to read ", 15);
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    if (v6 >= 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = *(v4 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " value because field number ", 28);
    v11 = MEMORY[0x1C6908970](v10, a2 >> 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " uses wireType ", 15);
    v13 = MEMORY[0x1C6908970](v12, v18);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ". It should have used wireType ", 31);
    v15 = MEMORY[0x1C6908970](v14, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    MEMORY[0x1C69087C0](exception, v19);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1C1BD1E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
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

uint64_t MLAssetIO::ProtoWireFormatParser::int64Value(MLAssetIO::ProtoWireFormatParser *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "int64");
  MLAssetIO::verifyWireType(__p, *(this + 2), 0);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 2);
}

void sub_1C1BD1FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MLAssetIO::ProtoWireFormatParser::fixed64Value(MLAssetIO::ProtoWireFormatParser *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fixed64");
  MLAssetIO::verifyWireType(__p, *(this + 2), 1u);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 2);
}

void sub_1C1BD201C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MLAssetIO::ProtoWireFormatParser::fixed32Value(MLAssetIO::ProtoWireFormatParser *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fixed32");
  MLAssetIO::verifyWireType(__p, *(this + 2), 5u);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 4);
}

void sub_1C1BD2094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MLAssetIO::ProtoWireFormatParser::length(MLAssetIO::ProtoWireFormatParser *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "message length");
  MLAssetIO::verifyWireType(__p, *(this + 2), 2u);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return *(this + 4);
}

void sub_1C1BD210C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *MLAssetIO::ProtoWireFormatParser::copyMessageFieldTo(unsigned __int8 *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 4);
  v5 = *(a2 + 8);
  if (*a2 <= v5)
  {
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, v5);
    v5 = this;
  }

  *(a2 + 8) = v5;
  *v5 = v4;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    v5[1] = v4 >> 7;
    v6 = v5 + 2;
    if (v4 >= 0x4000)
    {
      LOBYTE(v8) = v5[1];
      do
      {
        *(v6 - 1) = v8 | 0x80;
        v8 = v7 >> 7;
        *v6++ = v7 >> 7;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
    }
  }

  else
  {
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v19 = 0;
  v18 = 0;
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = v18;
      if (v18 == v11)
      {
        v13 = *v3;
        if ((v11 & 0x80000000) == 0)
        {
          v14 = *(v13 + 2) - *v13;
          if (v11 <= v14)
          {
            *v13 += v11;
          }

          else
          {
            google::protobuf::io::CodedInputStream::SkipFallback(v13, v11, v14);
            v13 = *v3;
          }
        }

        google::protobuf::io::CodedInputStream::GetDirectBufferPointer(v13, &v19, &v18);
        v11 = 0;
        v12 = v18;
        v6 = *(a2 + 8);
      }

      v15 = v12 - v11;
      if (v15 >= v10)
      {
        v15 = v10;
      }

      v16 = v19 + v11;
      v17 = v15;
      if (*a2 - v6 < v15)
      {
        this = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a2, v16, v15, v6);
        v6 = this;
      }

      else
      {
        this = memcpy(v6, v16, v15);
        v6 += v17;
      }

      *(a2 + 8) = v6;
      v11 += v17;
      v10 -= v17;
    }

    while (v10);
  }

  return this;
}

unsigned __int8 *MLAssetIO::ProtoWireFormatParser::copyFieldTo(unsigned __int8 *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = *(this + 2);
  v4 = v3 & 7;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 5)
      {
        v8 = *(this + 4);
        v9 = *(a2 + 8);
        if (*a2 <= v9)
        {
          this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, v9);
          v9 = this;
        }

        *v9 = v8;
        v7 = v9 + 4;
        goto LABEL_12;
      }

LABEL_24:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v22);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Field number ", 13);
      v17 = MEMORY[0x1C6908970](v16, v3 >> 3);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " uses wireType ", 15);
      v19 = MEMORY[0x1C6908970](v18, v3 & 7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", which is not supported.", 25);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x1C69087C0](exception, &v21);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    return MLAssetIO::ProtoWireFormatParser::copyMessageFieldTo(this, a2);
  }

  else
  {
    if ((v3 & 7) != 0)
    {
      if (v4 == 1)
      {
        v5 = *(this + 2);
        v6 = *(a2 + 8);
        if (*a2 <= v6)
        {
          this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, v6);
          v6 = this;
        }

        *v6 = v5;
        v7 = v6 + 8;
LABEL_12:
        *(a2 + 8) = v7;
        return this;
      }

      goto LABEL_24;
    }

    v10 = *(this + 2);
    v11 = *(a2 + 8);
    if (*a2 <= v11)
    {
      this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, v11);
      v11 = this;
    }

    *(a2 + 8) = v11;
    *v11 = v10;
    if (v10 > 0x7F)
    {
      *v11 = v10 | 0x80;
      v13 = v10 >> 7;
      v11[1] = v10 >> 7;
      v12 = v11 + 2;
      if (v10 >= 0x4000)
      {
        LOBYTE(v14) = v11[1];
        do
        {
          *(v12 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v12++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v11 + 1;
    }

    *(a2 + 8) = v12;
  }

  return this;
}

void sub_1C1BD24B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E814D1E8, MEMORY[0x1E69E5278]);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_1C1BD451C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t setShortDescription(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  v7 = a2[23];
  if (v6)
  {
    v9 = *a2;
    if ((v7 & 0x80u) == 0)
    {
      v10 = a2[23];
    }

    else
    {
      v10 = *(a2 + 1);
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v12 = 8 * v6;
    while (1)
    {
      v13 = *v5;
      v14 = *(*v5 + 16) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v14 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v14 + 8);
      }

      if (v15 == v10)
      {
        v17 = v16 >= 0 ? (*(*v5 + 16) & 0xFFFFFFFFFFFFFFFELL) : *v14;
        if (!memcmp(v17, v11, v10))
        {
          break;
        }
      }

      ++v5;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v20 = *(v13 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    return google::protobuf::internal::ArenaStringPtr::Set(v13 + 24, a3, v21);
  }

  else
  {
    v9 = *a2;
LABEL_22:
    if ((v7 & 0x80u) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = v9;
    }

    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"No input feature named: %s was found.", v18}];
  }
}

void sub_1C1BD48F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_1C1BD4B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_1C1BD4C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1C1BD50D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreML::Specification::Metadata::~Metadata(va);

  _Unwind_Resume(a1);
}

uint64_t defaultFunctionDescriptionSpecification(const CoreML::Specification::ModelDescription *a1)
{
  v1 = *(a1 + 19) & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(a1 + 13);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_20:
    exception = __cxa_allocate_exception(0x10uLL);
    v16 = *(v1 + 23);
    if (v16 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = *v1;
    }

    if (v16 >= 0)
    {
      v18 = *(v1 + 23);
    }

    else
    {
      v18 = *(v1 + 8);
    }

    v19 = std::string::append(&v24, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27 = v21->__r_.__value_.__r.__words[2];
    v26 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1C6908790](exception, &v26);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v5 = *(v1 + 23);
  if (v5 >= 0)
  {
    v6 = *(v1 + 23);
  }

  else
  {
    v6 = *(v1 + 8);
  }

  v7 = 8 * v4;
  while (1)
  {
    v8 = *v3;
    v9 = *(*v3 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v9 + 8);
    }

    if (v10 == v6)
    {
      v12 = v11 >= 0 ? (*(*v3 + 88) & 0xFFFFFFFFFFFFFFFELL) : *v9;
      v13 = *v1;
      v14 = v5 >= 0 ? v1 : *v1;
      if (!memcmp(v12, v14, v6))
      {
        return v8;
      }
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_20;
    }
  }
}

void sub_1C1BD5818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(uint64_t a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C1BD58E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Map<std::string,std::string>::InnerMap::insert<char const*>(void *a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<char const*>(a1, a2, 0, &v19);
  if (v19)
  {
    v6 = 0;
    v7 = *(&v19 + 1);
    v8 = v20;
    *a3 = v19;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  else
  {
    if (google::protobuf::Map<std::string,std::string>::InnerMap::ResizeIfLoadIsOutOfRange(a1, *a1 + 1))
    {
      google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<char const*>(a1, a2, 0, __p);
      v19 = *__p;
      v9 = v18;
      v20 = v17;
      v21 = v18;
    }

    else
    {
      v9 = v21;
    }

    v10 = a1[5];
    if (v10)
    {
      AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(v10, 0x38uLL, MEMORY[0x1E69E5470]);
    }

    else
    {
      AlignedWithHook = operator new(0x38uLL);
    }

    v12 = AlignedWithHook;
    v13 = a1[5];
    std::string::basic_string[abi:ne200100]<0>(__p, *a2);
    v14 = *__p;
    v12[2] = v17;
    *v12 = v14;
    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    if (v13)
    {
      google::protobuf::internal::ThreadSafeArena::AddCleanup(v13, v12, google::protobuf::internal::arena_destruct_object<std::string>);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = a1[5];
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
    if (v15)
    {
      google::protobuf::internal::ThreadSafeArena::AddCleanup(v15, v12 + 3, google::protobuf::internal::arena_destruct_object<std::string>);
    }

    google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(a1, v9, v12, a3);
    ++*a1;
    v6 = 1;
  }

  *(a3 + 24) = v6;
}

void sub_1C1BD5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Map<std::string,std::string>::InnerMap::InsertUnique(void *a1@<X0>, unint64_t a2@<X1>, std::string::size_type a3@<X2>, std::string::size_type *a4@<X8>)
{
  v8 = a1[3];
  if (v8 != a1[1] && !*(a1[4] + 8 * v8))
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 806);
    v9 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: index_of_first_non_null_ == num_buckets_ || table_[index_of_first_non_null_] != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v20, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>(a1, a3, 0, v21);
  if (v21[0].__r_.__value_.__r.__words[0])
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 812);
    v10 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: find(node->kv.first) == end(): ");
    google::protobuf::internal::LogFinisher::operator=(&v20, v10);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  v11 = a1[4];
  v12 = *(v11 + 8 * a2);
  if (!v12)
  {
    *(a3 + 48) = 0;
    *(v11 + 8 * a2) = a3;
    size = a1;
    goto LABEL_14;
  }

  if (v12 != *(v11 + 8 * (a2 ^ 1)))
  {
    if (!google::protobuf::Map<std::string,std::string>::InnerMap::TableEntryIsTooLong(a1, a2))
    {
      v13 = (a1[4] + 8 * a2);
      v14 = *v13;
      if (*v13)
      {
        if ((a1[2] ^ a3) % 0xD >= 7)
        {
          v13 = (v14 + 48);
          v14 = *(v14 + 48);
        }
      }

      *(a3 + 48) = v14;
      *v13 = a3;
      *a4 = a3;
      a4[1] = a1;
LABEL_17:
      a4[2] = a2;
      return;
    }

    google::protobuf::Map<std::string,std::string>::InnerMap::TreeConvert(a1, a2);
    google::protobuf::Map<std::string,std::string>::InnerMap::InsertUniqueInTree(a1, a2, a3, v21);
    size = v21[0].__r_.__value_.__l.__size_;
    a3 = v21[0].__r_.__value_.__r.__words[0];
    v17 = a2 & 0xFFFFFFFFFFFFFFFELL;
    a2 = v21[0].__r_.__value_.__r.__words[2];
    if (v21[0].__r_.__value_.__r.__words[2] != v17)
    {
      v19 = v21[0].__r_.__value_.__l.__size_;
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 819);
      v18 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (result.bucket_index_) == (b & ~static_cast<size_type>(1)): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, v18);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
      size = v19;
    }

LABEL_14:
    v16 = a1[3];
    if (a2 < v16)
    {
      v16 = a2;
    }

    a1[3] = v16;
    *a4 = a3;
    a4[1] = size;
    goto LABEL_17;
  }

  google::protobuf::Map<std::string,std::string>::InnerMap::InsertUniqueInTree(a1, a2, a3, a4);
}

void sub_1C1BD5CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<char const*>@<X0>(void *a1@<X0>, const char **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = strlen(*a2);
  result = std::__string_view_hash<char>::operator()[abi:ne200100](a1, v8, v9);
  v11 = (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ result)) >> 32);
  v12 = a1[4];
  v13 = *(v12 + 8 * v11);
  if (!v13)
  {
    goto LABEL_10;
  }

  if (v13 == *(v12 + 8 * (v11 ^ 1)))
  {
    v11 = v11 & 0xFFFFFFFE;
    v14 = *(v12 + 8 * v11);
    result = std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::find<char const*>(v14, a2);
    if (v14 + 8 != result)
    {
      if (a3)
      {
        *a3 = result;
      }

      result = google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::iterator_base(a4, result, a1, v11);
      goto LABEL_12;
    }

LABEL_10:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_12;
  }

  while (1)
  {
    result = google::protobuf::internal::TransparentSupport<std::string>::Equals<std::string,char const*>(v13, a2);
    if (result)
    {
      break;
    }

    v13 = *(v13 + 48);
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  *a4 = v13;
  a4[1] = a1;
  a4[2] = v11;
LABEL_12:
  a4[3] = v11;
  return result;
}

BOOL google::protobuf::internal::TransparentSupport<std::string>::Equals<std::string,char const*>(const void **a1, const char **a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = *a2;
  if (v4 != strlen(*a2))
  {
    return 0;
  }

  v6 = *a1;
  if (v3 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  return memcmp(v7, v5, v4) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::find<char const*>(uint64_t a1, const char **a2)
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
    v7 = google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,char const*>(a1, (v3 + 32), a2);
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
  if (v6 == v2 || google::protobuf::internal::TransparentSupport<std::string>::less::operator()<char const*,std::reference_wrapper<std::string const>>(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t google::protobuf::internal::TransparentSupport<std::string>::less::operator()<std::reference_wrapper<std::string const>,char const*>(uint64_t a1, const void ***a2, const char **a3)
{
  v3 = *(*a2 + 23);
  if (v3 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if (v3 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  v6 = *a3;
  v7 = strlen(*a3);
  v8 = v7;
  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v4, v6, v9);
  if (v5 < v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v8)
  {
    v11 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  return v11 >> 31;
}

uint64_t google::protobuf::internal::TransparentSupport<std::string>::less::operator()<char const*,std::reference_wrapper<std::string const>>(uint64_t a1, const char **a2, const void ***a3)
{
  v4 = *a2;
  v5 = strlen(*a2);
  v6 = v5;
  v7 = *(*a3 + 23);
  if (v7 >= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = **a3;
  }

  if (v7 >= 0)
  {
    v9 = *(*a3 + 23);
  }

  else
  {
    v9 = (*a3)[1];
  }

  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = memcmp(v4, v8, v10);
  if (v6 < v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 == v9)
  {
    v12 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  return v12 >> 31;
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::iterator_base(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *(a2 + 40);
  a1[1] = a3;
  a1[2] = a4;
  if (a4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 529);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (bucket_index_ % 2) == (0u): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C1BD6428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Map<std::string,std::string>::InnerMap::Resize(unint64_t a1, size_t __sz)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    *(a1 + 24) = 8;
    *(a1 + 8) = 8;
    v4 = *(a1 + 40);
    if (v4)
    {
      AlignedWithHook = google::protobuf::Arena::AllocateAlignedWithHook(v4, 0x40uLL, MEMORY[0x1E69E5470]);
    }

    else
    {
      AlignedWithHook = operator new(0x40uLL);
    }

    AlignedWithHook[2] = 0u;
    AlignedWithHook[3] = 0u;
    *AlignedWithHook = 0u;
    AlignedWithHook[1] = 0u;
    *(a1 + 32) = AlignedWithHook;
    *(a1 + 16) = mach_absolute_time() + (a1 >> 4);
  }

  else
  {
    if (__sz <= 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 928);
      v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (new_num_buckets) >= (kMinTableSize): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, v7);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
      v3 = *(a1 + 8);
    }

    v8 = *(a1 + 32);
    *(a1 + 8) = __sz;
    EmptyTable = google::protobuf::Map<std::string,std::string>::InnerMap::CreateEmptyTable(a1, __sz);
    v10 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 8);
    *(a1 + 32) = EmptyTable;
    while (v10 < v3)
    {
      v11 = v8[v10];
      if (v11)
      {
        if (v11 == v8[v10 ^ 1])
        {
          google::protobuf::Map<std::string,std::string>::InnerMap::TransferTree(a1, v8, v10++);
        }

        else
        {
          google::protobuf::Map<std::string,std::string>::InnerMap::TransferList(a1, v8, v10);
        }
      }

      ++v10;
    }

    if (!*(a1 + 40))
    {
      operator delete(v8);
    }
  }
}

void sub_1C1BD65A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::CreateEmptyTable(uint64_t a1, size_t __sz)
{
  if (__sz <= 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 1074);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: n >= kMinTableSize: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  if ((__sz & (__sz - 1)) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 1075);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (n & (n - 1)) == (0u): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v9[0].__r_.__value_.__r.__words[0] = *(a1 + 40);
  v6 = google::protobuf::internal::MapAllocator<void *>::allocate(v9, __sz);
  bzero(v6, 8 * __sz);
  return v6;
}

void sub_1C1BD669C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::Map<std::string,std::string>::InnerMap::BucketNumber<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return (*(a1 + 8) - 1) & ((0x9E3779B97F4A7C15 * (*(a1 + 16) ^ std::__string_view_hash<char>::operator()[abi:ne200100](a1, a2, v3))) >> 32);
}

BOOL google::protobuf::Map<std::string,std::string>::InnerMap::TableEntryIsTooLong(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(*(a1 + 32) + 8 * a2);
  do
  {
    ++v2;
    v3 = *(v3 + 48);
  }

  while (v3);
  if (v2 >= 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 1022);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (count) <= (kMaxLength): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return v2 > 7;
}

void sub_1C1BD67A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Map<std::string,std::string>::InnerMap::TreeConvert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8 * a2);
  if (!v5)
  {
    v6 = *(v4 + 8 * (a2 ^ 1));
LABEL_5:
    if (v6)
    {
      v7 = v6 == v5;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = *(v4 + 8 * (a2 ^ 1));
  if (v5 != v6)
  {
    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 987);
  v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !TableEntryIsTree(b) && !TableEntryIsTree(b ^ 1): ");
  google::protobuf::internal::LogFinisher::operator=(&v12, v8);
  google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
LABEL_11:
  v13[0].__r_.__value_.__r.__words[0] = *(a1 + 40);
  v9 = google::protobuf::Arena::Create<std::map<std::reference_wrapper<std::string const>,void *,google::protobuf::internal::TransparentSupport<std::string>::less,google::protobuf::internal::MapAllocator<std::pair<std::reference_wrapper<std::string const> const,void *>>>,google::protobuf::internal::TransparentSupport<std::string>::less,google::protobuf::internal::MapAllocator<std::pair<std::reference_wrapper<std::string const> const,void *>>>(v13[0].__r_.__value_.__l.__data_, &v12, v13);
  v10 = google::protobuf::Map<std::string,std::string>::InnerMap::CopyListToTree(a1, a2, v9);
  if ((google::protobuf::Map<std::string,std::string>::InnerMap::CopyListToTree(a1, a2 ^ 1, v9) + v10) != v9[3])
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 992);
    v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (count) == (tree->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v11);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v9;
  *(*(a1 + 32) + 8 * a2) = v9;
}

void sub_1C1BD6904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::InsertUniqueInTree@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string::size_type a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 32);
  if (*(v8 + 8 * a2) != *(v8 + 8 * (a2 ^ 1)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 868);
    v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (table_[b]) == (table_[b ^ 1]): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v8 = *(a1 + 32);
  }

  *(a3 + 48) = 0;
  v10 = *(v8 + 8 * a2);
  v14[0].__r_.__value_.__r.__words[0] = a3;
  v14[0].__r_.__value_.__l.__size_ = a3;
  v11 = std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,void *>>(v10, v14, v14);
  return google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::iterator_base(a4, v11, a1, a2 & 0xFFFFFFFFFFFFFFFELL);
}

void sub_1C1BD69E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::FindHelper<std::string>@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = google::protobuf::Map<std::string,std::string>::InnerMap::BucketNumber<std::string>(a1, a2);
  v9 = result;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8 * result);
  if (!v11)
  {
    goto LABEL_10;
  }

  if (v11 == *(v10 + 8 * (result ^ 1)))
  {
    v9 = result & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v10 + 8 * (result & 0xFFFFFFFFFFFFFFFELL));
    result = std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::find<std::string>(v12, a2);
    if (v12 + 8 != result)
    {
      if (a3)
      {
        *a3 = result;
      }

      result = google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string> const>::iterator_base(a4, result, a1, v9);
      goto LABEL_12;
    }

LABEL_10:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_12;
  }

  while (1)
  {
    result = google::protobuf::internal::TransparentSupport<std::string>::Equals<std::string,std::string>(v11, a2);
    if (result)
    {
      break;
    }

    v11 = v11[6];
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  *a4 = v11;
  a4[1] = a1;
  a4[2] = v9;
LABEL_12:
  a4[3] = v9;
  return result;
}

BOOL google::protobuf::internal::TransparentSupport<std::string>::Equals<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *google::protobuf::Arena::Create<std::map<std::reference_wrapper<std::string const>,void *,google::protobuf::internal::TransparentSupport<std::string>::less,google::protobuf::internal::MapAllocator<std::pair<std::reference_wrapper<std::string const> const,void *>>>,google::protobuf::internal::TransparentSupport<std::string>::less,google::protobuf::internal::MapAllocator<std::pair<std::reference_wrapper<std::string const> const,void *>>>(atomic_ullong *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    operator new();
  }

  *v5 = result;
  v5[1] = google::protobuf::internal::arena_destruct_object<std::map<std::reference_wrapper<std::string const>,void *,google::protobuf::internal::TransparentSupport<std::string>::less,google::protobuf::internal::MapAllocator<std::pair<std::reference_wrapper<std::string const> const,void *>>>>;
  v6 = *a3;
  result[1] = 0;
  result[2] = v6;
  result[3] = 0;
  *result = result + 1;
  return result;
}

uint64_t google::protobuf::Map<std::string,std::string>::InnerMap::CopyListToTree(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(*(a1 + 32) + 8 * a2);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    *&v8 = v3;
    *(&v8 + 1) = v3;
    std::__tree<std::__value_type<std::reference_wrapper<std::string const>,void *>,std::__map_value_compare<std::reference_wrapper<std::string const>,std::__value_type<std::reference_wrapper<std::string const>,void *>,google::protobuf::internal::TransparentSupport<std::string>::less,true>,google::protobuf::internal::MapAllocator<std::__value_type<std::reference_wrapper<std::string const>,void *>>>::__emplace_unique_key_args<std::reference_wrapper<std::string const>,std::pair<std::reference_wrapper<std::string const> const,void *>>(a3, &v8, &v8);
    ++v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = 0;
    v3 = v6;
  }

  while (v6);
  return v5;
}

void *google::protobuf::internal::MapAllocator<std::__tree_node<std::__value_type<std::reference_wrapper<std::string const>,void *>,void *>>::allocate(atomic_ullong **a1, size_t __sz)
{
  v2 = *a1;
  v3 = 48 * __sz;
  if (v2)
  {
    return google::protobuf::Arena::AllocateAlignedWithHook(v2, v3, MEMORY[0x1E69E5470]);
  }

  else
  {
    return operator new(v3);
  }
}

void *google::protobuf::Map<std::string,std::string>::InnerMap::iterator_base<google::protobuf::MapPair<std::string,std::string>>::iterator_base(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *(a2 + 40);
  a1[1] = a3;
  a1[2] = a4;
  if (a4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/CoreML/coremltools-internal/deps/protobuf/src/google/protobuf/map.h", 529);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (bucket_index_ % 2) == (0u): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C1BD6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromMIORange(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"InvalidRange";
  }

  else
  {
    if (a2 == -1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd, unbound]", a1, v6, v2];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd, %zd]", a1, a2, v2];
    }
    v4 = ;
  }

  return v4;
}

__CFString *MIOMultiArrayDataTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  v2 = @"Int32";
  if (a1 == 65600)
  {
    v3 = @"Double";
  }

  else
  {
    v3 = @"unknown";
  }

  if (a1 != 131104)
  {
    v2 = v3;
  }

  if (a1 == 65568)
  {
    v1 = @"Float32";
  }

  if (a1 == 65552)
  {
    v1 = @"Float16";
  }

  if (a1 <= 65599)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1C1BD96E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(va);

  _Unwind_Resume(a1);
}

void sub_1C1BDA398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_1C1BDA510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a10, a11);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t nullSafeEqual(objc_object *a1, objc_object *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [(objc_object *)v3 isEqual:v4];
  }

  else
  {
    v6 = v3 == v4;
  }

  return v6;
}

void MIOParseModelSpecification(CodedInputStream *a1, MIOParserContext *a2, MIOModelInfo *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v89 = a2;
  v91 = a1;
  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v103, a1);
  v97 = 0u;
  v98 = 0u;
  v99 = 1065353216;
  v100 = 0u;
  v101 = 0u;
  v102 = 0;
  v86 = *(MEMORY[0x1E69E54D8] + 64);
  v87 = *MEMORY[0x1E69E54D8];
  v85 = *(MEMORY[0x1E69E54D8] + 72);
  while (1)
  {
    Field = MLAssetIO::ProtoWireFormatParser::nextField(v103);
    v5 = Field;
    if (Field > 1)
    {
      if (Field == 2)
      {
        _ZNSt3__115allocate_sharedB8ne200100IN6CoreML13Specification16ModelDescriptionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      if (Field == 10)
      {
        *(a3 + 6) = MLAssetIO::ProtoWireFormatParser::int32Value(v103);
LABEL_9:
        v6 = MEMORY[0x1E696AEC0];
LABEL_10:
        v7 = "INVALID";
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if (Field == 1)
    {
      *a3 = MLAssetIO::ProtoWireFormatParser::int32Value(v103);
      goto LABEL_9;
    }

    if (!Field)
    {
      break;
    }

LABEL_15:
    if ((Field & 0xFFFFFFFE) == 0xC8)
    {
      v11 = v89;
      MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(&v116, v91);
      while (1)
      {
        v12 = MLAssetIO::ProtoWireFormatParser::nextField(&v116);
        if (!v12)
        {
          break;
        }

        v13 = objc_autoreleasePoolPush();
        if (v12 == 1)
        {
          parsePipeline(v91, v11, a3 + 6);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else if (Field <= 499)
    {
      if (Field <= 400)
      {
        switch(Field)
        {
          case 202:
            parsePipeline(v91, v89, a3 + 6);
            v6 = MEMORY[0x1E696AEC0];
LABEL_140:
            v7 = "MLModelType_pipeline";
            goto LABEL_11;
          case 303:
LABEL_91:
            parseNeuralNetworkSpecification(v91, a3 + 6, &v97);
            break;
          case 400:
            parseClassLabels(v91, 100, 101, &v97);
        }
      }

      else
      {
        if (Field <= 402)
        {
          if (Field != 401)
          {
            parseClassLabels(v91, 100, 101, &v97);
          }

          parseClassLabels(v91, 100, 101, &v97);
        }

        if (Field == 403)
        {
          goto LABEL_91;
        }

        if (Field == 404)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(&v119);
        }
      }
    }

    else if (Field > 609)
    {
      if (Field > 2000)
      {
        if (Field == 2001)
        {
          parseClassLabels(v91, 200, 0, &v97);
        }

        if (Field == 2004)
        {
          parseClassLabels(v91, 200, 0, &v97);
        }
      }

      else
      {
        if (Field == 610)
        {
          parseClassLabels(v91, 100, 101, &v97);
        }

        if (Field == 2000)
        {
          parseClassLabels(v91, 200, 0, &v97);
        }
      }
    }

    else if (Field > 502)
    {
      if (Field == 503)
      {
        v18 = *(a3 + 1);
        v19 = *(a3 + 2);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v18 + 104);
        if (v20)
        {
          v21 = v20 + 8;
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v18 + 96);
        if (v22)
        {
          v23 = 8 * v22;
          do
          {
            v24 = *(*v21 + 88) & 0xFFFFFFFFFFFFFFFELL;
            if (*(v24 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(__p, *v24, *(v24 + 8));
            }

            else
            {
              v25 = *v24;
              v124[0] = *(v24 + 16);
              *__p = v25;
            }

            v118 = 0;
            v116 = 0u;
            v117 = 0u;
            *&v119 = __p;
            v26 = std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v97, __p);
            v27 = v26[5];
            v26[5] = 0;

            v28 = v26[6];
            v26[6] = 0;

            v29 = v26[7];
            v26[7] = 0;

            v30 = v26[8];
            v26[8] = 0;

            v31 = v26[9];
            v26[9] = 0;

            if (SHIBYTE(v124[0]) < 0)
            {
              operator delete(__p[0]);
            }

            v21 += 8;
            v23 -= 8;
          }

          while (v23);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      else if (Field == 556)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(&v119);
      }
    }

    else
    {
      if (Field == 500)
      {
        goto LABEL_91;
      }

      if (Field == 502)
      {
        v89;
        memset(v125, 0, 24);
        v14 = google::protobuf::io::CodedInputStream::BytesUntilLimit(v91);
        if (google::protobuf::io::CodedInputStream::ReadString(v91, v125, v14))
        {
          v15 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v116, v125, 24);
          CoreML::MIL::CoreMLUtil::MakeContext(v15, __p);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1C69087B0](exception, "Failed to read MIL message.");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v6 = MEMORY[0x1E696AEC0];
    if (v5 > 559)
    {
      if (v5 <= 609)
      {
        if (v5 <= 602)
        {
          if (v5 > 600)
          {
            if (v5 == 601)
            {
              v7 = "MLModelType_imputer";
            }

            else
            {
              v7 = "MLModelType_featureVectorizer";
            }

            goto LABEL_11;
          }

          if (v5 == 560)
          {
            v7 = "MLModelType_classConfidenceThresholding";
          }

          else
          {
            if (v5 != 600)
            {
              goto LABEL_10;
            }

            v7 = "MLModelType_oneHotEncoder";
          }
        }

        else if (v5 <= 605)
        {
          if (v5 == 603)
          {
            v7 = "MLModelType_dictVectorizer";
          }

          else
          {
            if (v5 != 604)
            {
              goto LABEL_10;
            }

            v7 = "MLModelType_scaler";
          }
        }

        else
        {
          switch(v5)
          {
            case 606:
              v7 = "MLModelType_categoricalMapping";
              break;
            case 607:
              v7 = "MLModelType_normalizer";
              break;
            case 609:
              v7 = "MLModelType_arrayFeatureExtractor";
              break;
            default:
              goto LABEL_10;
          }
        }
      }

      else if (v5 > 2002)
      {
        if (v5 <= 2004)
        {
          if (v5 == 2003)
          {
            v7 = "MLModelType_soundAnalysisPreprocessing";
          }

          else
          {
            v7 = "MLModelType_gazetteer";
          }

          goto LABEL_11;
        }

        switch(v5)
        {
          case 2005:
            v7 = "MLModelType_wordEmbedding";
            break;
          case 2006:
            v7 = "MLModelType_audioFeaturePrint";
            break;
          case 3000:
            v7 = "MLModelType_serializedModel";
            break;
          default:
            goto LABEL_10;
        }
      }

      else
      {
        if (v5 > 1999)
        {
          if (v5 == 2000)
          {
            v7 = "MLModelType_textClassifier";
          }

          else if (v5 == 2001)
          {
            v7 = "MLModelType_wordTagger";
          }

          else
          {
            v7 = "MLModelType_visionFeaturePrint";
          }

          goto LABEL_11;
        }

        if (v5 == 610)
        {
          v7 = "MLModelType_nonMaximumSuppression";
        }

        else
        {
          if (v5 != 900)
          {
            goto LABEL_10;
          }

          v7 = "MLModelType_identity";
        }
      }
    }

    else if (v5 <= 400)
    {
      if (v5 <= 300)
      {
        if (v5 > 201)
        {
          if (v5 == 202)
          {
            goto LABEL_140;
          }

          if (v5 != 300)
          {
            goto LABEL_10;
          }

          v7 = "MLModelType_glmRegressor";
        }

        else if (v5 == 200)
        {
          v7 = "MLModelType_pipelineClassifier";
        }

        else
        {
          if (v5 != 201)
          {
            goto LABEL_10;
          }

          v7 = "MLModelType_pipelineRegressor";
        }
      }

      else
      {
        if (v5 <= 302)
        {
          if (v5 == 301)
          {
            v7 = "MLModelType_supportVectorRegressor";
          }

          else
          {
            v7 = "MLModelType_treeEnsembleRegressor";
          }

          goto LABEL_11;
        }

        switch(v5)
        {
          case 303:
            v7 = "MLModelType_neuralNetworkRegressor";
            break;
          case 304:
            v7 = "MLModelType_bayesianProbitRegressor";
            break;
          case 400:
            v7 = "MLModelType_glmClassifier";
            break;
          default:
            goto LABEL_10;
        }
      }
    }

    else if (v5 > 500)
    {
      if (v5 <= 502)
      {
        if (v5 == 501)
        {
          v7 = "MLModelType_itemSimilarityRecommender";
        }

        else
        {
          v7 = "MLModelType_mlProgram";
        }

        goto LABEL_11;
      }

      switch(v5)
      {
        case 503:
          v7 = "MLModelType_odieLibrary";
          break;
        case 555:
          v7 = "MLModelType_customModel";
          break;
        case 556:
          v7 = "MLModelType_linkedModel";
          break;
        default:
          goto LABEL_10;
      }
    }

    else
    {
      if (v5 <= 402)
      {
        if (v5 == 401)
        {
          v7 = "MLModelType_supportVectorClassifier";
        }

        else
        {
          v7 = "MLModelType_treeEnsembleClassifier";
        }

        goto LABEL_11;
      }

      switch(v5)
      {
        case 403:
          v7 = "MLModelType_neuralNetworkClassifier";
          break;
        case 404:
          v7 = "MLModelType_kNearestNeighborsClassifier";
          break;
        case 500:
          v7 = "MLModelType_neuralNetwork";
          break;
        default:
          goto LABEL_10;
      }
    }

LABEL_11:
    v8 = [v6 stringWithUTF8String:v7];
    if (![v8 rangeOfString:@"MLModelType_"])
    {
      v9 = [v8 stringByReplacingOccurrencesOfString:@"MLModelType_" withString:&stru_1F4162270];
      v10 = *(a3 + 4);
      *(a3 + 4) = v9;

      *(a3 + 10) = v5;
    }
  }

  if ([*(a3 + 6) count])
  {
    v32 = *(*(a3 + 1) + 136) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      v32 = *v32;
    }

    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
    v34 = *(a3 + 6);
    v88 = v33;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v94 = v34;
    v35 = [v94 countByEnumeratingWithState:&v119 objects:&v116 count:16];
    if (v35)
    {
      v36 = *v120;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v120 != v36)
          {
            objc_enumerationMutation(v94);
          }

          v38 = [*(*(&v119 + 1) + 8 * i) modelDescription];
          v39 = [v38 outputDescriptions];
          *&v108 = MEMORY[0x1E69E9820];
          *(&v108 + 1) = 3221225472;
          *&v109 = ___ZL22classLabelsForPipelineP7NSArrayIP8MIOModelEP8NSString_block_invoke;
          *(&v109 + 1) = &unk_1E814D828;
          *&v110 = v88;
          v40 = [v39 indexOfObjectPassingTest:&v108];

          if (v40 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v42 = [v38 classLabels];
            v48 = v110;
LABEL_183:

            goto LABEL_184;
          }
        }

        v35 = [v94 countByEnumeratingWithState:&v119 objects:&v116 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v126 = 0u;
    v127 = 0u;
    memset(v125, 0, sizeof(v125));
    v41 = v94;
    v42 = 0;
    v43 = [v41 countByEnumeratingWithState:v125 objects:__p count:16];
    if (v43)
    {
      v44 = **&v125[16];
      while (2)
      {
        for (j = 0; j != v43; ++j)
        {
          if (**&v125[16] != v44)
          {
            objc_enumerationMutation(v41);
          }

          v38 = [*(*&v125[8] + 8 * j) modelDescription];
          v46 = [v38 classLabels];
          v47 = v46 == 0;

          if (!v47)
          {
            if (v42)
            {

              v48 = +[MIOLogging coreChannel];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C1BCE000, v48, OS_LOG_TYPE_INFO, "This pipeline contains multiple sub-models with class labels. As a result, the classLabel property of the pipeline instance will not be populated.", buf, 2u);
              }

              v42 = 0;
              goto LABEL_183;
            }

            v42 = [v38 classLabels];
          }
        }

        v43 = [v41 countByEnumeratingWithState:v125 objects:__p count:16];
        if (v43)
        {
          continue;
        }

        break;
      }
    }

LABEL_184:

    v49 = v100;
    *&v100 = v42;

    v93 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(&v100 + 1)];
    v95 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v101];
    v50 = [MEMORY[0x1E695DFA8] setWithArray:*(&v101 + 1)];
    v51 = [MEMORY[0x1E695DFA8] setWithArray:v102];
    v126 = 0u;
    v127 = 0u;
    memset(v125, 0, sizeof(v125));
    v90 = *(a3 + 6);
    v52 = [v90 countByEnumeratingWithState:v125 objects:&v116 count:16];
    if (v52)
    {
      v92 = **&v125[16];
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (**&v125[16] != v92)
          {
            objc_enumerationMutation(v90);
          }

          v54 = *(*&v125[8] + 8 * k);
          v55 = [v54 neuralNetworkLayerHistogramForFunctionNamed:0];
          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 3221225472;
          v114[2] = ___ZL26populatePipelineInfomationRK12MIOModelInfoR20ModelParserWorkspace_block_invoke;
          v114[3] = &unk_1E814D7E0;
          v115 = v93;
          [v55 enumerateKeysAndObjectsUsingBlock:v114];

          v56 = [v54 programOperationHistogramForFunctionNamed:0];
          v112[0] = MEMORY[0x1E69E9820];
          v112[1] = 3221225472;
          v112[2] = ___ZL26populatePipelineInfomationRK12MIOModelInfoR20ModelParserWorkspace_block_invoke_2;
          v112[3] = &unk_1E814D7E0;
          v113 = v95;
          [v56 enumerateKeysAndObjectsUsingBlock:v112];

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v57 = [v54 computePrecisionForFunctionNamed:0];
          v58 = [v57 countByEnumeratingWithState:&v108 objects:__p count:16];
          if (v58)
          {
            v59 = *v109;
            do
            {
              for (m = 0; m != v58; ++m)
              {
                if (*v109 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                [v50 addObject:*(*(&v108 + 1) + 8 * m)];
              }

              v58 = [v57 countByEnumeratingWithState:&v108 objects:__p count:16];
            }

            while (v58);
          }

          v106 = 0u;
          v107 = 0u;
          *buf = 0u;
          v105 = 0u;
          v61 = [v54 storagePrecisionForFunctionNamed:0];
          v62 = [v61 countByEnumeratingWithState:buf objects:&v119 count:16];
          if (v62)
          {
            v63 = *v105;
            do
            {
              for (n = 0; n != v62; ++n)
              {
                if (*v105 != v63)
                {
                  objc_enumerationMutation(v61);
                }

                [v51 addObject:*(*&buf[8] + 8 * n)];
              }

              v62 = [v61 countByEnumeratingWithState:buf objects:&v119 count:16];
            }

            while (v62);
          }
        }

        v52 = [v90 countByEnumeratingWithState:v125 objects:&v116 count:16];
      }

      while (v52);
    }

    if ([v93 count])
    {
      objc_storeStrong(&v100 + 1, v93);
    }

    if ([v95 count])
    {
      objc_storeStrong(&v101, v95);
    }

    if ([v50 count])
    {
      v65 = [v50 allObjects];
      v66 = *(&v101 + 1);
      *(&v101 + 1) = v65;
    }

    if ([v51 count])
    {
      v67 = [v51 allObjects];
      v68 = v102;
      v102 = v67;
    }
  }

  v69 = *(a3 + 1);
  if (!v69)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN6CoreML13Specification16ModelDescriptionENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v70 = *(a3 + 2);
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = *(v69 + 96);
  if (v71)
  {
    v72 = *(v69 + 104);
    if (v72)
    {
      v73 = v72 + 8;
    }

    else
    {
      v73 = 0;
    }

    v74 = 8 * v71;
    do
    {
      v75 = std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::find<std::string>(&v97, (*(*v73 + 88) & 0xFFFFFFFFFFFFFFFELL));
      v76 = v75;
      if (!v75)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v77 = v75[5];
      v78 = v76[6];
      v79 = v76[7];
      v80 = v76[8];
      *&v81 = v79;
      *(&v81 + 1) = v80;
      *&v82 = v77;
      *(&v82 + 1) = v78;
      v116 = v82;
      v117 = v81;
      v118 = v76[9];
      std::vector<MIOFunctionInfo>::push_back[abi:ne200100](a3 + 72, &v116);

      v73 += 8;
      v74 -= 8;
    }

    while (v74);
  }

  else if (*(&v98 + 1))
  {
    std::vector<MIOFunctionInfo>::push_back[abi:ne200100](a3 + 72, (v98 + 40));
  }

  else
  {
    std::vector<MIOFunctionInfo>::push_back[abi:ne200100](a3 + 72, &v100);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::~__hash_table(&v97);
  v83 = *MEMORY[0x1E69E9840];
}

void sub_1C1BDC7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _Unwind_Exception *exception_objecta, ...)
{
  va_start(va, exception_objecta);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  ModelParserWorkspace::~ModelParserWorkspace(va);

  _Unwind_Resume(a1);
}

void sub_1C1BDCB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ModelParserWorkspace::~ModelParserWorkspace(&a25);

  _Unwind_Resume(a1);
}

void sub_1C1BDCB68()
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&STACK[0x380]);

  JUMPOUT(0x1C1BDCBB8);
}

void sub_1C1BDCDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_end_catch();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a69, MEMORY[0x1E69E54D8]);
  MEMORY[0x1C6908AC0](&STACK[0x260]);
  if (*(v70 - 153) < 0)
  {
    operator delete(*(v70 - 176));
  }

  JUMPOUT(0x1C1BDCF18);
}

void sub_1C1BDCEB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void parsePipeline(CodedInputStream *a1, MIOParserContext *a2, void **a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v21, a1);
  while (1)
  {
    Field = MLAssetIO::ProtoWireFormatParser::nextField(v21);
    if (!Field)
    {
      break;
    }

    v8 = objc_autoreleasePoolPush();
    if (Field == 1)
    {
      v9 = v5;
      MIL::ParserOptions::Make(&v24, v9);
      (*(*v24 + 64))(v24, 1);
      MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v23, a1);
      v10 = 0;
      while (1)
      {
        v11 = MLAssetIO::ProtoWireFormatParser::nextField(v23);
        if (!v11)
        {
          break;
        }

        if (v11 == 1)
        {
          v12 = [MIOModel alloc];
          v22 = 0;
          v13 = [(MIOModel *)v12 initWithMessageStream:a1 parserContext:v9 error:&v22];
          v14 = v22;

          if (!v13)
          {
            v17 = MEMORY[0x1E696AEC0];
            v18 = [v14 localizedDescription];
            v19 = [v17 stringWithFormat:@"Failed to parse a sub model: %@", v18];

            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x1C69087B0](exception, [v19 UTF8String]);
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v10 = v13;
        }
      }

      v15 = v24;
      v24 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      [v6 addObject:v10];
    }

    objc_autoreleasePoolPop(v8);
  }

  v16 = *a3;
  *a3 = v6;
}

void sub_1C1BDD148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  _Unwind_Resume(a1);
}

void parseNeuralNetworkSpecification(CodedInputStream *a1, id *a2, ModelParserWorkspace *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v41, a1);
  while (1)
  {
    Field = MLAssetIO::ProtoWireFormatParser::nextField(v41);
    if (!Field)
    {
      break;
    }

    v5 = objc_autoreleasePoolPush();
    if (Field > 99)
    {
      if (Field == 100)
      {
        v7 = parseStringVector(a1);
      }

      else
      {
        if (Field != 101)
        {
          goto LABEL_15;
        }

        v7 = parseInt64Vector(a1);
      }

      v10 = *(a3 + 5);
      *(a3 + 5) = v7;
      goto LABEL_14;
    }

    if (Field == 1)
    {
      v8 = [MIOModelLayer alloc];
      v40 = 0;
      v9 = [(MIOModelLayer *)v8 initWithMessageStream:a1 error:&v40];
      v10 = v40;
      if (!v9)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to parse layer: %i due to error: %@", 1, v10];
        exception = __cxa_allocate_exception(0x10uLL);
        v28 = v26;
        MEMORY[0x1C69087B0](exception, [v26 UTF8String]);
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v11 = [(MIOModelLayer *)v9 computePrecision];
      [v30 addObjectsFromArray:v11];

      v12 = [(MIOModelLayer *)v9 storagePrecision];
      [v31 addObjectsFromArray:v12];

      [obj addObject:v9];
LABEL_14:

      goto LABEL_15;
    }

    if (Field == 10)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v42);
    }

LABEL_15:
    objc_autoreleasePoolPop(v5);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = obj;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v15)
  {
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [v18 layerHistogram];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___ZL31parseNeuralNetworkSpecificationRN6google8protobuf2io16CodedInputStreamER20MIOModelSpecificInfoR20ModelParserWorkspace_block_invoke;
        v34[3] = &unk_1E814D7E0;
        v35 = v13;
        [v20 enumerateKeysAndObjectsUsingBlock:v34];

        objc_autoreleasePoolPop(v19);
      }

      v15 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v15);
  }

  objc_storeStrong(a2 + 1, obj);
  objc_storeStrong(a3 + 6, v13);
  v21 = [v30 allObjects];
  v22 = *(a3 + 8);
  *(a3 + 8) = v21;

  v23 = [v31 allObjects];
  v24 = *(a3 + 9);
  *(a3 + 9) = v23;

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1C1BDDDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  std::__function::__value_func<void ()(google::protobuf::io::CodedInputStream &)>::~__value_func[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void ModelParserWorkspace::~ModelParserWorkspace(id *this)
{

  std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::~__hash_table(this);
}

void MIOParseNeuralNetworkLayerSpecification(CodedInputStream *a1, uint64_t a2)
{
  v4 = @"InvalidType";
  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v35, a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0x1E696A000uLL;
  v9 = &stru_1F4162270;
  while (1)
  {
    Field = MLAssetIO::ProtoWireFormatParser::nextField(v35);
    if (!Field)
    {
      break;
    }

    if (Field == 1)
    {
      v18 = MLAssetIO::ProtoWireFormatParser::length(v35);
      memset(&__p, 0, sizeof(__p));
      if ((google::protobuf::io::CodedInputStream::ReadString(a1, &__p, v18) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1C69087B0](exception, "Failed to read a string.");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v20 = [*(v8 + 3776) stringWithUTF8String:p_p];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v17 = v9;
      v9 = v20;
LABEL_13:
    }

    else if (Field >= 100)
    {
      v33 = v5;
      v34 = v4;
      v31 = v7;
      v32 = v6;
      parseLayerParams(Field, a1, &v34, &v33, &v32, &v31);
      v11 = v34;

      v12 = v33;
      v13 = v7;
      v14 = v8;
      v15 = v32;

      v16 = v31;
      v17 = v13;
      v4 = v11;
      v5 = v12;
      v6 = v15;
      v8 = v14;
      v7 = v16;
      goto LABEL_13;
    }
  }

  v21 = *a2;
  *a2 = v9;
  v22 = v9;

  v23 = *(a2 + 8);
  *(a2 + 8) = v4;
  v24 = v4;

  v25 = *(a2 + 16);
  *(a2 + 16) = v5;
  v26 = v5;

  v27 = *(a2 + 24);
  *(a2 + 24) = v6;
  v28 = v6;

  v29 = *(a2 + 32);
  *(a2 + 32) = v7;
}

void sub_1C1BDE0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void parseLayerParams(int a1, CodedInputStream *a2, __CFString **a3, void *a4, void *a5, void *a6)
{
  v12 = 0;
  v48[4] = *MEMORY[0x1E69E9840];
  if (a1 > 879)
  {
    if (a1 <= 1134)
    {
      if (a1 <= 984)
      {
        if (a1 <= 934)
        {
          if (a1 <= 899)
          {
            if (a1 > 889)
            {
              if (a1 == 890)
              {
                v13 = MIOModelLayerTypeDivideBroadcastable;
              }

              else
              {
                if (a1 != 895)
                {
                  goto LABEL_381;
                }

                v13 = MIOModelLayerTypeFloorDivBroadcastable;
              }
            }

            else if (a1 == 880)
            {
              v13 = MIOModelLayerTypeAddBroadcastable;
            }

            else
            {
              if (a1 != 885)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypePowBroadcastable;
            }
          }

          else if (a1 <= 919)
          {
            if (a1 == 900)
            {
              v13 = MIOModelLayerTypeMultiplyBroadcastable;
            }

            else
            {
              if (a1 != 905)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypeSubtractBroadcastable;
            }
          }

          else
          {
            switch(a1)
            {
              case 920:
                v13 = MIOModelLayerTypeTile;
                break;
              case 925:
                v13 = MIOModelLayerTypeStack;
                break;
              case 930:
                v13 = MIOModelLayerTypeGather;
                break;
              default:
                goto LABEL_381;
            }
          }
        }

        else if (a1 > 953)
        {
          if (a1 <= 964)
          {
            if (a1 == 954)
            {
              v13 = MIOModelLayerTypeScatterAlongAxis;
            }

            else
            {
              if (a1 != 960)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypeReverse;
            }
          }

          else
          {
            switch(a1)
            {
              case 965:
                v13 = MIOModelLayerTypeReverseSeq;
                break;
              case 975:
                v13 = MIOModelLayerTypeSplitND;
                break;
              case 980:
                v13 = MIOModelLayerTypeConcatND;
                break;
              default:
                goto LABEL_381;
            }
          }
        }

        else if (a1 <= 944)
        {
          if (a1 == 935)
          {
            v13 = MIOModelLayerTypeScatter;
          }

          else
          {
            if (a1 != 940)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeGatherND;
          }
        }

        else
        {
          switch(a1)
          {
            case 945:
              v13 = MIOModelLayerTypeScatterND;
              break;
            case 950:
              v13 = MIOModelLayerTypeSoftmaxND;
              break;
            case 952:
              v13 = MIOModelLayerTypeGatherAlongAxis;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 > 1069)
      {
        if (a1 > 1104)
        {
          if (a1 <= 1119)
          {
            if (a1 == 1105)
            {
              v13 = MIOModelLayerTypeBroadcastToStatic;
            }

            else
            {
              if (a1 != 1110)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypeBroadcastToDynamic;
            }
          }

          else
          {
            switch(a1)
            {
              case 1120:
                v13 = MIOModelLayerTypeSqueeze;
                break;
              case 1125:
                v13 = MIOModelLayerTypeExpandDims;
                break;
              case 1130:
                v13 = MIOModelLayerTypeFlattenTo2D;
                break;
              default:
                goto LABEL_381;
            }
          }
        }

        else if (a1 <= 1084)
        {
          if (a1 == 1070)
          {
            v13 = MIOModelLayerTypeLoadConstantND;
          }

          else
          {
            if (a1 != 1080)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeFillLike;
          }
        }

        else
        {
          switch(a1)
          {
            case 1085:
              v13 = MIOModelLayerTypeFillStatic;
              break;
            case 1090:
              v13 = MIOModelLayerTypeFillDynamic;
              break;
            case 1100:
              v13 = MIOModelLayerTypeBroadcastToLike;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 > 1019)
      {
        if (a1 <= 1039)
        {
          if (a1 == 1020)
          {
            v13 = MIOModelLayerTypeArgMin;
          }

          else
          {
            if (a1 != 1025)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeArgMax;
          }
        }

        else
        {
          switch(a1)
          {
            case 1040:
              v13 = MIOModelLayerTypeEmbeddingND;
              break;
            case 1045:
              v13 = MIOModelLayerTypeBatchedMatmul;
              break;
            case 1065:
              v13 = MIOModelLayerTypeGetShape;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 999)
      {
        if (a1 == 985)
        {
          v13 = MIOModelLayerTypeTranspose;
        }

        else
        {
          if (a1 != 995)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeSliceStatic;
        }
      }

      else
      {
        switch(a1)
        {
          case 1000:
            v13 = MIOModelLayerTypeSliceDynamic;
            break;
          case 1005:
            v13 = MIOModelLayerTypeSlidingWindows;
            break;
          case 1015:
            v13 = MIOModelLayerTypeTopK;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 1274)
    {
      if (a1 > 1349)
      {
        if (a1 > 1460)
        {
          if (a1 <= 1465)
          {
            if (a1 == 1461)
            {
              v13 = MIOModelLayerTypeArgSort;
            }

            else
            {
              if (a1 != 1465)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypePooling3D;
            }
          }

          else
          {
            switch(a1)
            {
              case 1466:
                v13 = MIOModelLayerTypeGlobalPooling3D;
                break;
              case 1470:
                v13 = MIOModelLayerTypeSliceBySize;
                break;
              case 1471:
                v13 = MIOModelLayerTypeConvolution3D;
                break;
              default:
                goto LABEL_381;
            }
          }
        }

        else if (a1 <= 1449)
        {
          if (a1 == 1350)
          {
            v13 = MIOModelLayerTypeLayerNormalization;
          }

          else
          {
            if (a1 != 1400)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeNonMaximumSuppression;
          }
        }

        else
        {
          switch(a1)
          {
            case 1450:
              v13 = MIOModelLayerTypeOneHot;
              break;
            case 1455:
              v13 = MIOModelLayerTypeCumSum;
              break;
            case 1460:
              v13 = MIOModelLayerTypeClampedReLU;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 > 1312)
      {
        if (a1 <= 1319)
        {
          if (a1 == 1313)
          {
            v13 = MIOModelLayerTypeWhereNonZero;
          }

          else
          {
            if (a1 != 1315)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeMatrixBandPart;
          }
        }

        else
        {
          switch(a1)
          {
            case 1320:
              v13 = MIOModelLayerTypeLowerTriangular;
              break;
            case 1325:
              v13 = MIOModelLayerTypeUpperTriangular;
              break;
            case 1330:
              v13 = MIOModelLayerTypeWhereBroadcastable;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 1284)
      {
        if (a1 == 1275)
        {
          v13 = MIOModelLayerTypeReduceProd;
        }

        else
        {
          if (a1 != 1280)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeReduceMean;
        }
      }

      else
      {
        switch(a1)
        {
          case 1285:
            v13 = MIOModelLayerTypeReduceLogSum;
            break;
          case 1290:
            v13 = MIOModelLayerTypeReduceSumSquare;
            break;
          case 1295:
            v13 = MIOModelLayerTypeReduceLogSumExp;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 1199)
    {
      if (a1 > 1249)
      {
        if (a1 <= 1259)
        {
          if (a1 == 1250)
          {
            v13 = MIOModelLayerTypeReduceL1;
          }

          else
          {
            if (a1 != 1255)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeReduceL2;
          }
        }

        else
        {
          switch(a1)
          {
            case 1260:
              v13 = MIOModelLayerTypeReduceMax;
              break;
            case 1265:
              v13 = MIOModelLayerTypeReduceMin;
              break;
            case 1270:
              v13 = MIOModelLayerTypeReduceSum;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 1214)
      {
        if (a1 == 1200)
        {
          v13 = MIOModelLayerTypeRandomUniformDynamic;
        }

        else
        {
          if (a1 != 1210)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeRandomBernoulliLike;
        }
      }

      else
      {
        switch(a1)
        {
          case 1215:
            v13 = MIOModelLayerTypeRandomBernoulliStatic;
            break;
          case 1220:
            v13 = MIOModelLayerTypeRandomBernoulliDynamic;
            break;
          case 1230:
            v13 = MIOModelLayerTypeCategoricalDistribution;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 1169)
    {
      if (a1 <= 1179)
      {
        if (a1 == 1170)
        {
          v13 = MIOModelLayerTypeRandomNormalLike;
        }

        else
        {
          if (a1 != 1175)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeRandomNormalStatic;
        }
      }

      else
      {
        switch(a1)
        {
          case 1180:
            v13 = MIOModelLayerTypeRandomNormalDynamic;
            break;
          case 1190:
            v13 = MIOModelLayerTypeRandomUniformLike;
            break;
          case 1195:
            v13 = MIOModelLayerTypeRandomUniformStatic;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 <= 1144)
    {
      if (a1 == 1135)
      {
        v13 = MIOModelLayerTypeReshapeLike;
      }

      else
      {
        if (a1 != 1140)
        {
          goto LABEL_381;
        }

        v13 = MIOModelLayerTypeReshapeStatic;
      }
    }

    else
    {
      switch(a1)
      {
        case 1145:
          v13 = MIOModelLayerTypeReshapeDynamic;
          break;
        case 1150:
          v13 = MIOModelLayerTypeRankPreservingReshape;
          break;
        case 1155:
          v13 = MIOModelLayerTypeConstantPad;
          break;
        default:
          goto LABEL_381;
      }
    }
  }

  else if (a1 <= 599)
  {
    if (a1 <= 244)
    {
      if (a1 <= 179)
      {
        if (a1 <= 149)
        {
          if (a1 > 129)
          {
            if (a1 == 130)
            {
              v13 = MIOModelLayerTypeActivation;
            }

            else
            {
              if (a1 != 140)
              {
                goto LABEL_381;
              }

              v13 = MIOModelLayerTypeInnerProduct;
            }
          }

          else if (a1 == 100)
          {
            v13 = MIOModelLayerTypeConvolution;
          }

          else
          {
            if (a1 != 120)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypePooling;
          }
        }

        else if (a1 <= 164)
        {
          if (a1 == 150)
          {
            v13 = MIOModelLayerTypeEmbedding;
          }

          else
          {
            if (a1 != 160)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeBatchnorm;
          }
        }

        else
        {
          switch(a1)
          {
            case 165:
              v13 = MIOModelLayerTypeMvn;
              break;
            case 170:
              v13 = MIOModelLayerTypeL2Normalize;
              break;
            case 175:
              v13 = MIOModelLayerTypeSoftmax;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 > 211)
      {
        if (a1 <= 229)
        {
          if (a1 == 212)
          {
            v13 = MIOModelLayerTypeCropResize;
          }

          else
          {
            if (a1 != 220)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeUnary;
          }
        }

        else
        {
          switch(a1)
          {
            case 230:
              v13 = MIOModelLayerTypeAdd;
              break;
            case 231:
              v13 = MIOModelLayerTypeMultiply;
              break;
            case 240:
              v13 = MIOModelLayerTypeAverage;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 199)
      {
        if (a1 == 180)
        {
          v13 = MIOModelLayerTypeLrn;
        }

        else
        {
          if (a1 != 190)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeCrop;
        }
      }

      else
      {
        switch(a1)
        {
          case 200:
            v13 = MIOModelLayerTypePadding;
            break;
          case 210:
            v13 = MIOModelLayerTypeUpsample;
            break;
          case 211:
            v13 = MIOModelLayerTypeResizeBilinear;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 319)
    {
      if (a1 > 399)
      {
        if (a1 <= 419)
        {
          if (a1 == 400)
          {
            v13 = MIOModelLayerTypeSimpleRecurrent;
          }

          else
          {
            if (a1 != 410)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeGru;
          }
        }

        else
        {
          switch(a1)
          {
            case 420:
              v13 = MIOModelLayerTypeUniDirectionalLSTM;
              break;
            case 430:
              v13 = MIOModelLayerTypeBiDirectionalLSTM;
              break;
            case 500:
              v13 = MIOModelLayerTypeCustom;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 339)
      {
        if (a1 == 320)
        {
          v13 = MIOModelLayerTypeConcat;
        }

        else
        {
          if (a1 != 330)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeSplit;
        }
      }

      else
      {
        switch(a1)
        {
          case 340:
            v13 = MIOModelLayerTypeSequenceRepeat;
            break;
          case 345:
            v13 = MIOModelLayerTypeReorganizeData;
            break;
          case 350:
            v13 = MIOModelLayerTypeSlice;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 279)
    {
      if (a1 <= 299)
      {
        if (a1 == 280)
        {
          v13 = MIOModelLayerTypeReduce;
        }

        else
        {
          if (a1 != 290)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeLoadConstant;
        }
      }

      else
      {
        switch(a1)
        {
          case 300:
            v13 = MIOModelLayerTypeReshape;
            break;
          case 301:
            v13 = MIOModelLayerTypeFlatten;
            break;
          case 310:
            v13 = MIOModelLayerTypePermute;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 <= 259)
    {
      if (a1 == 245)
      {
        v13 = MIOModelLayerTypeScale;
      }

      else
      {
        if (a1 != 250)
        {
          goto LABEL_381;
        }

        v13 = MIOModelLayerTypeBias;
      }
    }

    else
    {
      switch(a1)
      {
        case 260:
          v13 = MIOModelLayerTypeMax;
          break;
        case 261:
          v13 = MIOModelLayerTypeMin;
          break;
        case 270:
          v13 = MIOModelLayerTypeDot;
          break;
        default:
          goto LABEL_381;
      }
    }
  }

  else if (a1 > 754)
  {
    if (a1 > 826)
    {
      if (a1 > 849)
      {
        if (a1 <= 864)
        {
          if (a1 == 850)
          {
            v13 = MIOModelLayerTypeLogicalNot;
          }

          else
          {
            if (a1 != 855)
            {
              goto LABEL_381;
            }

            v13 = MIOModelLayerTypeLogicalAnd;
          }
        }

        else
        {
          switch(a1)
          {
            case 865:
              v13 = MIOModelLayerTypeModBroadcastable;
              break;
            case 870:
              v13 = MIOModelLayerTypeMinBroadcastable;
              break;
            case 875:
              v13 = MIOModelLayerTypeMaxBroadcastable;
              break;
            default:
              goto LABEL_381;
          }
        }
      }

      else if (a1 <= 831)
      {
        if (a1 == 827)
        {
          v13 = MIOModelLayerTypeLessEqual;
        }

        else
        {
          if (a1 != 830)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeGreaterThan;
        }
      }

      else
      {
        switch(a1)
        {
          case 832:
            v13 = MIOModelLayerTypeGreaterEqual;
            break;
          case 840:
            v13 = MIOModelLayerTypeLogicalOr;
            break;
          case 845:
            v13 = MIOModelLayerTypeLogicalXor;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 > 789)
    {
      if (a1 <= 814)
      {
        if (a1 == 790)
        {
          v13 = MIOModelLayerTypeErf;
        }

        else
        {
          if (a1 != 795)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeGelu;
        }
      }

      else
      {
        switch(a1)
        {
          case 815:
            v13 = MIOModelLayerTypeEqual;
            break;
          case 820:
            v13 = MIOModelLayerTypeNotEqual;
            break;
          case 825:
            v13 = MIOModelLayerTypeLessThan;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 <= 769)
    {
      if (a1 == 755)
      {
        v13 = MIOModelLayerTypeCosh;
      }

      else
      {
        if (a1 != 760)
        {
          goto LABEL_381;
        }

        v13 = MIOModelLayerTypeTanh;
      }
    }

    else
    {
      switch(a1)
      {
        case 770:
          v13 = MIOModelLayerTypeAsinh;
          break;
        case 775:
          v13 = MIOModelLayerTypeAcosh;
          break;
        case 780:
          v13 = MIOModelLayerTypeAtanh;
          break;
        default:
          goto LABEL_381;
      }
    }
  }

  else if (a1 > 679)
  {
    if (a1 > 719)
    {
      if (a1 <= 734)
      {
        if (a1 == 720)
        {
          v13 = MIOModelLayerTypeTan;
        }

        else
        {
          if (a1 != 730)
          {
            goto LABEL_381;
          }

          v13 = MIOModelLayerTypeAsin;
        }
      }

      else
      {
        switch(a1)
        {
          case 735:
            v13 = MIOModelLayerTypeAcos;
            break;
          case 740:
            v13 = MIOModelLayerTypeAtan;
            break;
          case 750:
            v13 = MIOModelLayerTypeSinh;
            break;
          default:
            goto LABEL_381;
        }
      }
    }

    else if (a1 <= 699)
    {
      if (a1 == 680)
      {
        v13 = MIOModelLayerTypeSign;
      }

      else
      {
        if (a1 != 685)
        {
          goto LABEL_381;
        }

        v13 = MIOModelLayerTypeRound;
      }
    }

    else
    {
      switch(a1)
      {
        case 700:
          v13 = MIOModelLayerTypeExp2;
          break;
        case 710:
          v13 = MIOModelLayerTypeSin;
          break;
        case 715:
          v13 = MIOModelLayerTypeCos;
          break;
        default:
          goto LABEL_381;
      }
    }
  }

  else if (a1 > 634)
  {
    if (a1 <= 659)
    {
      if (a1 == 635)
      {
        v13 = MIOModelLayerTypeRangeStatic;
      }

      else
      {
        if (a1 != 640)
        {
          goto LABEL_381;
        }

        v13 = MIOModelLayerTypeRangeDynamic;
      }
    }

    else
    {
      switch(a1)
      {
        case 660:
          v13 = MIOModelLayerTypeClip;
          break;
        case 665:
          v13 = MIOModelLayerTypeCeil;
          break;
        case 670:
          v13 = MIOModelLayerTypeFloor;
          break;
        default:
          goto LABEL_381;
      }
    }
  }

  else if (a1 <= 614)
  {
    if (a1 == 600)
    {
      v13 = MIOModelLayerTypeCopy;
    }

    else
    {
      if (a1 != 605)
      {
        goto LABEL_381;
      }

      v13 = MIOModelLayerTypeBranch;
    }
  }

  else
  {
    switch(a1)
    {
      case 615:
        v13 = MIOModelLayerTypeLoop;
        break;
      case 620:
        v13 = MIOModelLayerTypeLoopBreak;
        break;
      case 625:
        v13 = MIOModelLayerTypeLoopContinue;
        break;
      default:
        goto LABEL_381;
    }
  }

  v12 = *v13;
LABEL_381:
  location = &stru_1F4162270;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [MEMORY[0x1E695E0F0] mutableCopy];
  if (a1 > 344)
  {
    if (a1 > 614)
    {
      if (a1 > 1069)
      {
        switch(a1)
        {
          case 1070:
            v36 = location;
            location = @"LoadConstantND";

            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
          case 1350:
            v25 = location;
            location = @"LayerNormalization";

            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
          case 1471:
            v19 = location;
            location = @"Convolution3D";

            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        }
      }

      else
      {
        switch(a1)
        {
          case 615:
            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
          case 1040:
            v21 = location;
            location = @"EmbeddingND";

            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
          case 1045:
            v18 = location;
            location = @"BatchedMatmul";

            MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        }
      }
    }

    else if (a1 > 429)
    {
      switch(a1)
      {
        case 430:
          v34 = location;
          location = @"BiDirectionalLSTM";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 500:
          v23 = location;
          location = @"Custom";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 605:
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      }
    }

    else
    {
      switch(a1)
      {
        case 345:
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 400:
          v20 = location;
          location = @"SimpleRecurrent";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 420:
          v16 = location;
          location = @"UniDirectionalLSTM";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      }
    }

LABEL_441:
    if (a1 <= 879)
    {
      if (a1 > 599)
      {
        if (a1 <= 754)
        {
          if (a1 <= 679)
          {
            if (a1 <= 634)
            {
              if (a1 > 619)
              {
                if (a1 == 620)
                {
                  v44 = "MLNeuralNetworkLayerlayer_loopBreak";
                  goto LABEL_776;
                }

                if (a1 == 625)
                {
                  v44 = "MLNeuralNetworkLayerlayer_loopContinue";
                  goto LABEL_776;
                }
              }

              else if (a1 == 600)
              {
                v44 = "MLNeuralNetworkLayerlayer_copy";
                goto LABEL_776;
              }
            }

            else if (a1 <= 659)
            {
              if (a1 == 635)
              {
                v44 = "MLNeuralNetworkLayerlayer_rangeStatic";
                goto LABEL_776;
              }

              if (a1 == 640)
              {
                v44 = "MLNeuralNetworkLayerlayer_rangeDynamic";
                goto LABEL_776;
              }
            }

            else
            {
              switch(a1)
              {
                case 660:
                  v44 = "MLNeuralNetworkLayerlayer_clip";
                  goto LABEL_776;
                case 665:
                  v44 = "MLNeuralNetworkLayerlayer_ceil";
                  goto LABEL_776;
                case 670:
                  v44 = "MLNeuralNetworkLayerlayer_floor";
                  goto LABEL_776;
              }
            }
          }

          else if (a1 > 719)
          {
            if (a1 <= 734)
            {
              if (a1 == 720)
              {
                v44 = "MLNeuralNetworkLayerlayer_tan";
                goto LABEL_776;
              }

              if (a1 == 730)
              {
                v44 = "MLNeuralNetworkLayerlayer_asin";
                goto LABEL_776;
              }
            }

            else
            {
              switch(a1)
              {
                case 735:
                  v44 = "MLNeuralNetworkLayerlayer_acos";
                  goto LABEL_776;
                case 740:
                  v44 = "MLNeuralNetworkLayerlayer_atan";
                  goto LABEL_776;
                case 750:
                  v44 = "MLNeuralNetworkLayerlayer_sinh";
                  goto LABEL_776;
              }
            }
          }

          else if (a1 <= 699)
          {
            if (a1 == 680)
            {
              v44 = "MLNeuralNetworkLayerlayer_sign";
              goto LABEL_776;
            }

            if (a1 == 685)
            {
              v44 = "MLNeuralNetworkLayerlayer_round";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 700:
                v44 = "MLNeuralNetworkLayerlayer_exp2";
                goto LABEL_776;
              case 710:
                v44 = "MLNeuralNetworkLayerlayer_sin";
                goto LABEL_776;
              case 715:
                v44 = "MLNeuralNetworkLayerlayer_cos";
                goto LABEL_776;
            }
          }
        }

        else if (a1 > 826)
        {
          if (a1 > 849)
          {
            if (a1 <= 864)
            {
              if (a1 == 850)
              {
                v44 = "MLNeuralNetworkLayerlayer_logicalNot";
                goto LABEL_776;
              }

              if (a1 == 855)
              {
                v44 = "MLNeuralNetworkLayerlayer_logicalAnd";
                goto LABEL_776;
              }
            }

            else
            {
              switch(a1)
              {
                case 865:
                  v44 = "MLNeuralNetworkLayerlayer_modBroadcastable";
                  goto LABEL_776;
                case 870:
                  v44 = "MLNeuralNetworkLayerlayer_minBroadcastable";
                  goto LABEL_776;
                case 875:
                  v44 = "MLNeuralNetworkLayerlayer_maxBroadcastable";
                  goto LABEL_776;
              }
            }
          }

          else if (a1 <= 831)
          {
            if (a1 == 827)
            {
              v44 = "MLNeuralNetworkLayerlayer_lessEqual";
              goto LABEL_776;
            }

            if (a1 == 830)
            {
              v44 = "MLNeuralNetworkLayerlayer_greaterThan";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 832:
                v44 = "MLNeuralNetworkLayerlayer_greaterEqual";
                goto LABEL_776;
              case 840:
                v44 = "MLNeuralNetworkLayerlayer_logicalOr";
                goto LABEL_776;
              case 845:
                v44 = "MLNeuralNetworkLayerlayer_logicalXor";
                goto LABEL_776;
            }
          }
        }

        else if (a1 > 789)
        {
          if (a1 <= 814)
          {
            if (a1 == 790)
            {
              v44 = "MLNeuralNetworkLayerlayer_erf";
              goto LABEL_776;
            }

            if (a1 == 795)
            {
              v44 = "MLNeuralNetworkLayerlayer_gelu";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 815:
                v44 = "MLNeuralNetworkLayerlayer_equal";
                goto LABEL_776;
              case 820:
                v44 = "MLNeuralNetworkLayerlayer_notEqual";
                goto LABEL_776;
              case 825:
                v44 = "MLNeuralNetworkLayerlayer_lessThan";
                goto LABEL_776;
            }
          }
        }

        else if (a1 <= 769)
        {
          if (a1 == 755)
          {
            v44 = "MLNeuralNetworkLayerlayer_cosh";
            goto LABEL_776;
          }

          if (a1 == 760)
          {
            v44 = "MLNeuralNetworkLayerlayer_tanh";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 770:
              v44 = "MLNeuralNetworkLayerlayer_asinh";
              goto LABEL_776;
            case 775:
              v44 = "MLNeuralNetworkLayerlayer_acosh";
              goto LABEL_776;
            case 780:
              v44 = "MLNeuralNetworkLayerlayer_atanh";
              goto LABEL_776;
          }
        }
      }

      else if (a1 <= 244)
      {
        if (a1 <= 179)
        {
          if (a1 > 164)
          {
            switch(a1)
            {
              case 165:
                v44 = "MLNeuralNetworkLayerlayer_mvn";
                goto LABEL_776;
              case 170:
                v44 = "MLNeuralNetworkLayerlayer_l2normalize";
                goto LABEL_776;
              case 175:
                v44 = "MLNeuralNetworkLayerlayer_softmax";
                goto LABEL_776;
            }
          }
        }

        else if (a1 > 211)
        {
          if (a1 <= 229)
          {
            if (a1 == 212)
            {
              v44 = "MLNeuralNetworkLayerlayer_cropResize";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 230:
                v44 = "MLNeuralNetworkLayerlayer_add";
                goto LABEL_776;
              case 231:
                v44 = "MLNeuralNetworkLayerlayer_multiply";
                goto LABEL_776;
              case 240:
                v44 = "MLNeuralNetworkLayerlayer_average";
                goto LABEL_776;
            }
          }
        }

        else if (a1 <= 199)
        {
          if (a1 == 180)
          {
            v44 = "MLNeuralNetworkLayerlayer_lrn";
            goto LABEL_776;
          }

          if (a1 == 190)
          {
            v44 = "MLNeuralNetworkLayerlayer_crop";
            goto LABEL_776;
          }
        }

        else if (a1 == 211)
        {
          v44 = "MLNeuralNetworkLayerlayer_resizeBilinear";
          goto LABEL_776;
        }
      }

      else if (a1 > 319)
      {
        if (a1 > 399)
        {
          if (a1 == 410)
          {
            v44 = "MLNeuralNetworkLayerlayer_gru";
            goto LABEL_776;
          }
        }

        else if (a1 <= 339)
        {
          if (a1 == 320)
          {
            v44 = "MLNeuralNetworkLayerlayer_concat";
            goto LABEL_776;
          }

          if (a1 == 330)
          {
            v44 = "MLNeuralNetworkLayerlayer_split";
            goto LABEL_776;
          }
        }

        else
        {
          if (a1 == 340)
          {
            v44 = "MLNeuralNetworkLayerlayer_sequenceRepeat";
            goto LABEL_776;
          }

          if (a1 == 350)
          {
            v44 = "MLNeuralNetworkLayerlayer_slice";
            goto LABEL_776;
          }
        }
      }

      else if (a1 > 279)
      {
        if (a1 <= 299)
        {
          if (a1 == 290)
          {
            v44 = "MLNeuralNetworkLayerlayer_loadConstant";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 300:
              v44 = "MLNeuralNetworkLayerlayer_reshape";
              goto LABEL_776;
            case 301:
              v44 = "MLNeuralNetworkLayerlayer_flatten";
              goto LABEL_776;
            case 310:
              v44 = "MLNeuralNetworkLayerlayer_permute";
              goto LABEL_776;
          }
        }
      }

      else if (a1 > 259)
      {
        switch(a1)
        {
          case 260:
            v44 = "MLNeuralNetworkLayerlayer_max";
            goto LABEL_776;
          case 261:
            v44 = "MLNeuralNetworkLayerlayer_min";
            goto LABEL_776;
          case 270:
            v44 = "MLNeuralNetworkLayerlayer_dot";
            goto LABEL_776;
        }
      }
    }

    else if (a1 <= 1134)
    {
      if (a1 <= 984)
      {
        if (a1 <= 934)
        {
          if (a1 <= 899)
          {
            if (a1 > 889)
            {
              if (a1 == 890)
              {
                v44 = "MLNeuralNetworkLayerlayer_divideBroadcastable";
                goto LABEL_776;
              }

              if (a1 == 895)
              {
                v44 = "MLNeuralNetworkLayerlayer_floorDivBroadcastable";
                goto LABEL_776;
              }
            }

            else
            {
              if (a1 == 880)
              {
                v44 = "MLNeuralNetworkLayerlayer_addBroadcastable";
                goto LABEL_776;
              }

              if (a1 == 885)
              {
                v44 = "MLNeuralNetworkLayerlayer_powBroadcastable";
                goto LABEL_776;
              }
            }
          }

          else if (a1 <= 919)
          {
            if (a1 == 900)
            {
              v44 = "MLNeuralNetworkLayerlayer_multiplyBroadcastable";
              goto LABEL_776;
            }

            if (a1 == 905)
            {
              v44 = "MLNeuralNetworkLayerlayer_subtractBroadcastable";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 920:
                v44 = "MLNeuralNetworkLayerlayer_tile";
                goto LABEL_776;
              case 925:
                v44 = "MLNeuralNetworkLayerlayer_stack";
                goto LABEL_776;
              case 930:
                v44 = "MLNeuralNetworkLayerlayer_gather";
                goto LABEL_776;
            }
          }
        }

        else if (a1 > 953)
        {
          if (a1 <= 964)
          {
            if (a1 == 954)
            {
              v44 = "MLNeuralNetworkLayerlayer_scatterAlongAxis";
              goto LABEL_776;
            }

            if (a1 == 960)
            {
              v44 = "MLNeuralNetworkLayerlayer_reverse";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 965:
                v44 = "MLNeuralNetworkLayerlayer_reverseSeq";
                goto LABEL_776;
              case 975:
                v44 = "MLNeuralNetworkLayerlayer_splitND";
                goto LABEL_776;
              case 980:
                v44 = "MLNeuralNetworkLayerlayer_concatND";
                goto LABEL_776;
            }
          }
        }

        else if (a1 <= 944)
        {
          if (a1 == 935)
          {
            v44 = "MLNeuralNetworkLayerlayer_scatter";
            goto LABEL_776;
          }

          if (a1 == 940)
          {
            v44 = "MLNeuralNetworkLayerlayer_gatherND";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 945:
              v44 = "MLNeuralNetworkLayerlayer_scatterND";
              goto LABEL_776;
            case 950:
              v44 = "MLNeuralNetworkLayerlayer_softmaxND";
              goto LABEL_776;
            case 952:
              v44 = "MLNeuralNetworkLayerlayer_gatherAlongAxis";
              goto LABEL_776;
          }
        }
      }

      else if (a1 > 1069)
      {
        if (a1 > 1104)
        {
          if (a1 <= 1119)
          {
            if (a1 == 1105)
            {
              v44 = "MLNeuralNetworkLayerlayer_broadcastToStatic";
              goto LABEL_776;
            }

            if (a1 == 1110)
            {
              v44 = "MLNeuralNetworkLayerlayer_broadcastToDynamic";
              goto LABEL_776;
            }
          }

          else
          {
            switch(a1)
            {
              case 1120:
                v44 = "MLNeuralNetworkLayerlayer_squeeze";
                goto LABEL_776;
              case 1125:
                v44 = "MLNeuralNetworkLayerlayer_expandDims";
                goto LABEL_776;
              case 1130:
                v44 = "MLNeuralNetworkLayerlayer_flattenTo2D";
                goto LABEL_776;
            }
          }
        }

        else if (a1 <= 1084)
        {
          if (a1 == 1080)
          {
            v44 = "MLNeuralNetworkLayerlayer_fillLike";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 1085:
              v44 = "MLNeuralNetworkLayerlayer_fillStatic";
              goto LABEL_776;
            case 1090:
              v44 = "MLNeuralNetworkLayerlayer_fillDynamic";
              goto LABEL_776;
            case 1100:
              v44 = "MLNeuralNetworkLayerlayer_broadcastToLike";
              goto LABEL_776;
          }
        }
      }

      else if (a1 > 1019)
      {
        if (a1 <= 1039)
        {
          if (a1 == 1020)
          {
            v44 = "MLNeuralNetworkLayerlayer_argMin";
            goto LABEL_776;
          }

          if (a1 == 1025)
          {
            v44 = "MLNeuralNetworkLayerlayer_argMax";
            goto LABEL_776;
          }
        }

        else if (a1 == 1065)
        {
          v44 = "MLNeuralNetworkLayerlayer_getShape";
          goto LABEL_776;
        }
      }

      else if (a1 <= 999)
      {
        if (a1 == 985)
        {
          v44 = "MLNeuralNetworkLayerlayer_transpose";
          goto LABEL_776;
        }

        if (a1 == 995)
        {
          v44 = "MLNeuralNetworkLayerlayer_sliceStatic";
          goto LABEL_776;
        }
      }

      else
      {
        switch(a1)
        {
          case 1000:
            v44 = "MLNeuralNetworkLayerlayer_sliceDynamic";
            goto LABEL_776;
          case 1005:
            v44 = "MLNeuralNetworkLayerlayer_slidingWindows";
            goto LABEL_776;
          case 1015:
            v44 = "MLNeuralNetworkLayerlayer_topK";
            goto LABEL_776;
        }
      }
    }

    else if (a1 > 1274)
    {
      if (a1 > 1349)
      {
        if (a1 > 1460)
        {
          if (a1 <= 1465)
          {
            if (a1 == 1461)
            {
              v44 = "MLNeuralNetworkLayerlayer_argSort";
              goto LABEL_776;
            }

            if (a1 == 1465)
            {
              v44 = "MLNeuralNetworkLayerlayer_pooling3d";
              goto LABEL_776;
            }
          }

          else
          {
            if (a1 == 1466)
            {
              v44 = "MLNeuralNetworkLayerlayer_globalPooling3d";
              goto LABEL_776;
            }

            if (a1 == 1470)
            {
              v44 = "MLNeuralNetworkLayerlayer_sliceBySize";
              goto LABEL_776;
            }
          }
        }

        else if (a1 <= 1449)
        {
          if (a1 == 1400)
          {
            v44 = "MLNeuralNetworkLayerlayer_NonMaximumSuppression";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 1450:
              v44 = "MLNeuralNetworkLayerlayer_oneHot";
              goto LABEL_776;
            case 1455:
              v44 = "MLNeuralNetworkLayerlayer_cumSum";
              goto LABEL_776;
            case 1460:
              v44 = "MLNeuralNetworkLayerlayer_clampedReLU";
              goto LABEL_776;
          }
        }
      }

      else if (a1 > 1312)
      {
        if (a1 <= 1319)
        {
          if (a1 == 1313)
          {
            v44 = "MLNeuralNetworkLayerlayer_whereNonZero";
            goto LABEL_776;
          }

          if (a1 == 1315)
          {
            v44 = "MLNeuralNetworkLayerlayer_matrixBandPart";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 1320:
              v44 = "MLNeuralNetworkLayerlayer_lowerTriangular";
              goto LABEL_776;
            case 1325:
              v44 = "MLNeuralNetworkLayerlayer_upperTriangular";
              goto LABEL_776;
            case 1330:
              v44 = "MLNeuralNetworkLayerlayer_whereBroadcastable";
              goto LABEL_776;
          }
        }
      }

      else if (a1 <= 1284)
      {
        if (a1 == 1275)
        {
          v44 = "MLNeuralNetworkLayerlayer_reduceProd";
          goto LABEL_776;
        }

        if (a1 == 1280)
        {
          v44 = "MLNeuralNetworkLayerlayer_reduceMean";
          goto LABEL_776;
        }
      }

      else
      {
        switch(a1)
        {
          case 1285:
            v44 = "MLNeuralNetworkLayerlayer_reduceLogSum";
            goto LABEL_776;
          case 1290:
            v44 = "MLNeuralNetworkLayerlayer_reduceSumSquare";
            goto LABEL_776;
          case 1295:
            v44 = "MLNeuralNetworkLayerlayer_reduceLogSumExp";
            goto LABEL_776;
        }
      }
    }

    else if (a1 > 1199)
    {
      if (a1 > 1249)
      {
        if (a1 <= 1259)
        {
          if (a1 == 1250)
          {
            v44 = "MLNeuralNetworkLayerlayer_reduceL1";
            goto LABEL_776;
          }

          if (a1 == 1255)
          {
            v44 = "MLNeuralNetworkLayerlayer_reduceL2";
            goto LABEL_776;
          }
        }

        else
        {
          switch(a1)
          {
            case 1260:
              v44 = "MLNeuralNetworkLayerlayer_reduceMax";
              goto LABEL_776;
            case 1265:
              v44 = "MLNeuralNetworkLayerlayer_reduceMin";
              goto LABEL_776;
            case 1270:
              v44 = "MLNeuralNetworkLayerlayer_reduceSum";
              goto LABEL_776;
          }
        }
      }

      else if (a1 <= 1214)
      {
        if (a1 == 1200)
        {
          v44 = "MLNeuralNetworkLayerlayer_randomUniformDynamic";
          goto LABEL_776;
        }

        if (a1 == 1210)
        {
          v44 = "MLNeuralNetworkLayerlayer_randomBernoulliLike";
          goto LABEL_776;
        }
      }

      else
      {
        switch(a1)
        {
          case 1215:
            v44 = "MLNeuralNetworkLayerlayer_randomBernoulliStatic";
            goto LABEL_776;
          case 1220:
            v44 = "MLNeuralNetworkLayerlayer_randomBernoulliDynamic";
            goto LABEL_776;
          case 1230:
            v44 = "MLNeuralNetworkLayerlayer_categoricalDistribution";
            goto LABEL_776;
        }
      }
    }

    else if (a1 > 1169)
    {
      if (a1 <= 1179)
      {
        if (a1 == 1170)
        {
          v44 = "MLNeuralNetworkLayerlayer_randomNormalLike";
          goto LABEL_776;
        }

        if (a1 == 1175)
        {
          v44 = "MLNeuralNetworkLayerlayer_randomNormalStatic";
          goto LABEL_776;
        }
      }

      else
      {
        switch(a1)
        {
          case 1180:
            v44 = "MLNeuralNetworkLayerlayer_randomNormalDynamic";
            goto LABEL_776;
          case 1190:
            v44 = "MLNeuralNetworkLayerlayer_randomUniformLike";
            goto LABEL_776;
          case 1195:
            v44 = "MLNeuralNetworkLayerlayer_randomUniformStatic";
            goto LABEL_776;
        }
      }
    }

    else if (a1 <= 1144)
    {
      if (a1 == 1135)
      {
        v44 = "MLNeuralNetworkLayerlayer_reshapeLike";
        goto LABEL_776;
      }

      if (a1 == 1140)
      {
        v44 = "MLNeuralNetworkLayerlayer_reshapeStatic";
        goto LABEL_776;
      }
    }

    else
    {
      switch(a1)
      {
        case 1145:
          v44 = "MLNeuralNetworkLayerlayer_reshapeDynamic";
          goto LABEL_776;
        case 1150:
          v44 = "MLNeuralNetworkLayerlayer_rankPreservingReshape";
          goto LABEL_776;
        case 1155:
          v44 = "MLNeuralNetworkLayerlayer_constantPad";
LABEL_776:
          v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v44];

          location = prettyProtoFieldName(v45, &cfstr_Mlneuralnetwor.isa);

          goto LABEL_440;
      }
    }

    v44 = "INVALID";
    goto LABEL_776;
  }

  if (a1 <= 199)
  {
    if (a1 > 139)
    {
      switch(a1)
      {
        case 140:
          v33 = location;
          location = @"InnerProduct";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 150:
          v22 = location;
          location = @"Embedding";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 160:
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      }
    }

    else
    {
      switch(a1)
      {
        case 100:
          v26 = location;
          location = @"Convolution";

          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 120:
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
        case 130:
          MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      }
    }

    goto LABEL_441;
  }

  if (a1 > 244)
  {
    switch(a1)
    {
      case 245:
        v35 = location;
        location = @"Scale";

        MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      case 250:
        v24 = location;
        location = @"Bias";

        MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
      case 280:
        MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
    }

    goto LABEL_441;
  }

  if (a1 != 200)
  {
    if (a1 == 210)
    {
      MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
    }

    if (a1 == 220)
    {
      v17 = location;
      location = @"Unary";

      MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v46);
    }

    goto LABEL_441;
  }

  MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v48, a2);
  v27 = @"INVALID";
  while (1)
  {
    Field = MLAssetIO::ProtoWireFormatParser::nextField(v48);
    if (!Field)
    {
      break;
    }

    if ((Field - 4) >= 0xFFFFFFFD)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:off_1E814D848[Field - 1]];
      v30 = prettyProtoFieldName(v29, &cfstr_Mlpaddinglayer.isa);

      v27 = v30;
      break;
    }
  }

  v31 = [@"Padding" stringByAppendingString:v27];
  v32 = location;
  location = v31;

LABEL_440:
  v37 = MEMORY[0x1E696AD98];
  v38 = [v14 objectForKeyedSubscript:location];
  v39 = [v37 numberWithInteger:{objc_msgSend(v38, "integerValue") + 1}];
  [v14 setObject:v39 forKeyedSubscript:location];

  v40 = v12;
  *a3 = v12;
  v41 = v14;
  *a4 = v14;
  *a5 = &unk_1F41653D0;
  v42 = v15;
  *a6 = v15;

  v43 = *MEMORY[0x1E69E9840];
}

id parseStringVector(google::protobuf::io::CodedInputStream *a1)
{
  parseStream<CoreML::Specification::StringVector>(a1, v8);
  v1 = objc_alloc(MEMORY[0x1E695DF70]);
  v2 = [v1 initWithCapacity:v9];
  if (v10)
  {
    v3 = (v10 + 8);
  }

  else
  {
    v3 = 0;
  }

  if (v9)
  {
    v4 = 8 * v9;
    do
    {
      if (*(*v3 + 23) < 0)
      {
        v5 = **v3;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      [v2 addObject:v6];

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  CoreML::Specification::StringVector::~StringVector(v8);

  return v2;
}

id parseInt64Vector(google::protobuf::io::CodedInputStream *a1)
{
  parseStream<CoreML::Specification::Int64Vector>(a1, v7);
  v1 = objc_alloc(MEMORY[0x1E695DF70]);
  v2 = [v1 initWithCapacity:v8];
  if (v8)
  {
    v3 = v9;
    v4 = 8 * v8;
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*v3];
      [v2 addObject:v5];

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  CoreML::Specification::Int64Vector::~Int64Vector(v7);

  return v2;
}

void sub_1C1BE2658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreML::Specification::Int64Vector::~Int64Vector(va);
  _Unwind_Resume(a1);
}

void ___ZL31parseNeuralNetworkSpecificationRN6google8protobuf2io16CodedInputStreamER20MIOModelSpecificInfoR20ModelParserWorkspace_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v5, "integerValue") + objc_msgSend(v7, "integerValue")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C1BE27CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415D0E8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"learningRate" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE2A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415D090;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"momentum" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE2D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415D038;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::Int64Parameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"miniBatchSize" int64Parameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::Int64Parameter::~Int64Parameter(v6);
}

void sub_1C1BE2F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::Int64Parameter::~Int64Parameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CFE0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"learningRate" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE3214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CF88;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::Int64Parameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"miniBatchSize" int64Parameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::Int64Parameter::~Int64Parameter(v6);
}

void sub_1C1BE3474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::Int64Parameter::~Int64Parameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_4>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CF30;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"beta1" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE36D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_5>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CED8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"beta2" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE3934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_6>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CE80;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::DoubleParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"eps" doubleParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::DoubleParameter::~DoubleParameter(v6);
}

void sub_1C1BE3B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::DoubleParameter::~DoubleParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_7>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CE28;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::Int64Parameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"epochs" int64Parameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::Int64Parameter::~Int64Parameter(v6);
}

void sub_1C1BE3DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::Int64Parameter::~Int64Parameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_8>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CDD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::BoolParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"shuffle" BOOLParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::BoolParameter::~BoolParameter(v6);
}

void sub_1C1BE4054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::BoolParameter::~BoolParameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_9>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415CD78;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::Int64Parameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"seed" int64Parameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::Int64Parameter::~Int64Parameter(v6);
}

void sub_1C1BE4308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::Int64Parameter::~Int64Parameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10,std::allocator<parseNetworkUpdateParameters(google::protobuf::io::CodedInputStream &)::$_10>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v9 = MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 24);
  v11 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x1E69E5560] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_1C1BE46AC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1C6908AC0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C6908A70](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C1BE47CC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0>,BOOL ()(MIL::IROperation const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0>,BOOL ()(MIL::IROperation const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415EA68;
  result = *(a1 + 8);
  v5 = *(a1 + 16);
  a2[1] = result;
  a2[2] = v5;
  return result;
}

void std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0>,BOOL ()(MIL::IROperation const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0>,BOOL ()(MIL::IROperation const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(*a2 + 56))(a2);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (*(v5 + 8) != 8)
    {
      goto LABEL_23;
    }

    v5 = *v5;
  }

  else if (v6 != 8)
  {
    goto LABEL_23;
  }

  if (*v5 == 0x7966697373616C63)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "classes");
    ParameterValue = MIL::IROperation::GetParameterValue();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = [MEMORY[0x1E695DFA0] orderedSet];
    v9 = (*(*ParameterValue + 32))(ParameterValue);
    v10 = MIL::IRValueType::AsListType(v9);
    v11 = (*(*v10 + 64))(v10);
    v12 = MIL::IRValueType::AsTensorType(v11);
    if ((*(*v12 + 88))(v12) == 3)
    {
      v13 = MIL::IRValue::AsList(ParameterValue);
      Values = MIL::IRListValue::GetValues(v13);
      if (v15)
      {
        v16 = Values;
        v17 = 16 * v15;
        do
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = *v16;
          MIL::IRValue::GetScalar<std::string>();
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v21 = [v18 stringWithUTF8String:p_p];
          [v8 addObject:v21];

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v16 += 2;
          v17 -= 16;
        }

        while (v17);
      }
    }

    else
    {
      v22 = MIL::IRValue::AsList(ParameterValue);
      v23 = MIL::IRListValue::GetValues(v22);
      if (v24)
      {
        v25 = v23;
        v26 = 16 * v24;
        do
        {
          v27 = *v25;
          v28 = [MEMORY[0x1E696AD98] numberWithLongLong:MIL::IRValue::GetScalar<long long>()];
          [v8 addObject:v28];

          v25 += 2;
          v26 -= 16;
        }

        while (v26);
      }
    }

    v29 = [v8 array];

    v30 = *(a1 + 16);
    v31 = *v30;
    *v30 = v29;
  }

LABEL_23:
  v32 = *(a1 + 8);
  v33 = (*(*a2 + 56))(a2);
  if (std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(&addOperationToHistogram(MIL::IROperation const&,NSMutableDictionary<NSString *,NSNumber *> *)::ignoredOps, &__block_descriptor_40_ea8_32s_e38_B32__0__MIOFeatureDescription_8Q16_B24ls32l8, v33) == &__block_descriptor_40_ea8_32s_e38_B32__0__MIOFeatureDescription_8Q16_B24ls32l8)
  {
    v34 = MEMORY[0x1E696AEC0];
    if (*(v33 + 23) >= 0)
    {
      v35 = v33;
    }

    else
    {
      v35 = *v33;
    }

    std::string::basic_string[abi:ne200100]<0>(&v51, v35);
    memset(&__p, 0, sizeof(__p));
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v37 = 0;
      v38 = 0;
      v39 = 1;
      do
      {
        v40 = *std::string::at(&v51, v37);
        v41 = v40 == 95;
        if (v40 != 95)
        {
          if (((v39 != 1) & ~v38) == 0)
          {
            LOBYTE(v40) = __toupper(v40);
          }

          std::string::push_back(&__p, v40);
        }

        v37 = v39;
        v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v51.__r_.__value_.__l.__size_;
        }

        v43 = v42 > v39++;
        v38 = v41;
      }

      while (v43);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v44 = &__p;
    }

    v45 = [v34 stringWithUTF8String:v44];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    v46 = [v32 objectForKeyedSubscript:v45];

    if (v46)
    {
      v47 = MEMORY[0x1E696AD98];
      v48 = [v32 objectForKeyedSubscript:v45];
      v49 = [v47 numberWithInt:{objc_msgSend(v48, "intValue") + 1}];
      [v32 setObject:v49 forKeyedSubscript:v45];
    }

    else
    {
      [v32 setObject:&unk_1F41653B8 forKeyedSubscript:v45];
    }
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_0>,BOOL ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E814D1F0, MEMORY[0x1E69E5280]);
}

uint64_t std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      if (*(v3 + 8) == v6 && !memcmp(*v3, v7, v6))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415EAE8;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[2] = result;
  a2[3] = v5;
  return result;
}

void std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(*a2 + 56))(a2);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v61.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v61.__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a1 + 24);
  __p[0] = &v61;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, &v61.__r_.__value_.__l.__data_);
  if (*(v8 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, v8[5], v8[6]);
  }

  else
  {
    __s1 = *(v8 + 5);
  }

  v9 = *(a1 + 16);
  v10 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0 && __s1.__r_.__value_.__l.__size_ == 25)
  {
    v11 = *__s1.__r_.__value_.__l.__data_ == 0x70786574736E6F63 && *(__s1.__r_.__value_.__r.__words[0] + 8) == 0x6573726170735F72;
    if (!v11 || *(__s1.__r_.__value_.__r.__words[0] + 16) != 0x736E65645F6F745FLL || *(__s1.__r_.__value_.__r.__words[0] + 24) != 101)
    {
      goto LABEL_65;
    }

LABEL_35:
    [v9 addObject:{@"Sparse", __s1.__r_.__value_.__r.__words[0]}];
    goto LABEL_102;
  }

  if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0 && __s1.__r_.__value_.__l.__size_ == 38)
  {
    if (memcmp(__s1.__r_.__value_.__l.__data_, "constexpr_sparse_blockwise_shift_scale", 0x26uLL))
    {
      goto LABEL_65;
    }

    goto LABEL_35;
  }

  if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) == 0 || __s1.__r_.__value_.__l.__size_ != 23)
  {
    if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (__s1.__r_.__value_.__l.__size_ != 22)
      {
        goto LABEL_65;
      }

      v16 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(__s1.__r_.__value_.__r.__words[2]) != 22)
      {
LABEL_49:
        if (v10 != 22)
        {
          goto LABEL_102;
        }

        p_s1 = &__s1;
LABEL_58:
        v26 = p_s1->__r_.__value_.__r.__words[0];
        size = p_s1->__r_.__value_.__l.__size_;
        v28 = *(&p_s1->__r_.__value_.__r.__words[1] + 6);
        if (v26 == 0x70786574736E6F63 && size == 0x6F745F74756C5F72 && v28 == 0x65736E65645F6F74)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "lut");
          ParameterType = MIL::IROperation::TryGetParameterType();
          if (v63 < 0)
          {
            operator delete(__p[0]);
          }

          if (ParameterType)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "lut");
            v59 = MIL::IROperation::GetParameterType();
            insertAdditionalStoragePrecisionForPaletizedWeights(v59, v9);
LABEL_100:
            if (v63 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_102;
          }

          LOBYTE(v10) = *(&__s1.__r_.__value_.__s + 23);
        }

        goto LABEL_65;
      }

      v16 = &__s1;
    }

    v17 = v16->__r_.__value_.__r.__words[0];
    v18 = v16->__r_.__value_.__l.__size_;
    v19 = *(&v16->__r_.__value_.__r.__words[1] + 6);
    if (v17 == 0x70786574736E6F63 && v18 == 0x6F745F74756C5F72 && v19 == 0x65736E65645F6F74)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "lut");
      Attribute = MIL::IRObject::TryGetAttribute();
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }

      if (Attribute)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "lut");
        v24 = MIL::IRObject::GetAttribute();
        v25 = (*(*v24 + 32))(v24);
        insertAdditionalStoragePrecisionForPaletizedWeights(v25, v9);
        goto LABEL_100;
      }

      v10 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
      if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_49;
      }
    }

    else if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_49;
    }

    if (__s1.__r_.__value_.__l.__size_ != 22)
    {
      goto LABEL_65;
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
    goto LABEL_58;
  }

  if (*__s1.__r_.__value_.__l.__data_ == 0x70786574736E6F63 && *(__s1.__r_.__value_.__r.__words[0] + 8) == 0x6F745F74756C5F72 && *(__s1.__r_.__value_.__r.__words[0] + 15) == 0x6573726170735F6FLL)
  {
    goto LABEL_35;
  }

LABEL_65:
  v31 = __s1.__r_.__value_.__l.__size_;
  if ((v10 & 0x80) != 0 && __s1.__r_.__value_.__l.__size_ == 27)
  {
    if (*__s1.__r_.__value_.__l.__data_ != 0x70786574736E6F63 || *(__s1.__r_.__value_.__r.__words[0] + 8) != 0x656E696666615F72 || *(__s1.__r_.__value_.__r.__words[0] + 16) != 0x746E61757165645FLL || *(__s1.__r_.__value_.__r.__words[0] + 19) != 0x657A69746E617571)
    {
      goto LABEL_102;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "quantized_data");
    v35 = MIL::IRObject::TryGetAttribute();
    if (v63 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "quantized_data");
      v36 = MIL::IRObject::GetAttribute();
      v37 = (*(*v36 + 32))(v36);
      insertAdditionalStoragePrecisionForQuantizedWeights(v37, v9);
      goto LABEL_100;
    }

    LOBYTE(v10) = *(&__s1.__r_.__value_.__s + 23);
    v31 = __s1.__r_.__value_.__l.__size_;
  }

  if ((v10 & 0x80) != 0 && v31 == 31)
  {
    v38 = *__s1.__r_.__value_.__l.__data_ == 0x70786574736E6F63 && *(__s1.__r_.__value_.__r.__words[0] + 8) == 0x776B636F6C625F72;
    v39 = v38 && *(__s1.__r_.__value_.__r.__words[0] + 16) == 0x666968735F657369;
    if (v39 && *(__s1.__r_.__value_.__r.__words[0] + 23) == 0x656C6163735F7466)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "data");
      v41 = MIL::IROperation::TryGetParameterType();
      if (v63 < 0)
      {
        operator delete(__p[0]);
      }

      if (v41)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "data");
        v42 = MIL::IROperation::GetParameterType();
        insertAdditionalStoragePrecisionForQuantizedWeights(v42, v9);
        goto LABEL_100;
      }
    }
  }

LABEL_102:

  v43 = (*(*a2 + 160))(a2);
  v44 = v43 + 1;
  v45 = *v43;
  if (*v43 != v43 + 1)
  {
    do
    {
      if (v45[8] != v45[7])
      {
        v46 = 0;
        do
        {
          ParameterValue = MIL::IROperation::TryGetParameterValue();
          if (ParameterValue)
          {
            v48 = (*(*ParameterValue + 40))(ParameterValue);
            v49 = v48;
            if (v48)
            {
              if ((*(*v48 + 80))(v48))
              {
                v50 = (*(*v49 + 32))(v49);
                insertTensorDataTypeToPrecisionSet(v50, *(a1 + 16));
              }
            }
          }

          ++v46;
        }

        while (v46 < (v45[8] - v45[7]) >> 4);
      }

      v51 = v45[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v45[2];
          v11 = *v52 == v45;
          v45 = v52;
        }

        while (!v11);
      }

      v45 = v52;
    }

    while (v52 != v44);
  }

  v53 = (*(*a2 + 176))(a2);
  v54 = *v53;
  v55 = *(v53 + 8);
  while (v54 != v55)
  {
    Type = MIL::IRNamedValueType::GetType(*v54);
    insertTensorDataTypeToPrecisionSet(Type, *(a1 + 8));
    v54 += 2;
  }

  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_1C1BE59CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseMILProgram(google::protobuf::io::CodedInputStream &,MIOParserContext *,MIOModelSpecificInfo &,ModelParserWorkspace &)::$_1>,BOOL ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void insertTensorDataTypeToPrecisionSet(MIL::IRValueType *a1, void *a2)
{
  v12 = a2;
  if ((*(*a1 + 24))(a1))
  {
    v3 = MIL::IRValueType::AsTensorType(a1);
    v4 = (*(*v3 + 88))(v3);
    v5 = NSStringFromIRDataType(v4);
    if (v5)
    {
      [v12 addObject:v5];
    }
  }

  else if ((*(*a1 + 40))(a1))
  {
    v6 = MIL::IRValueType::AsTupleType(a1);
    v7 = (*(*v6 + 64))(v6);
    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      insertTensorDataTypeToPrecisionSet(*v8++, v12);
    }
  }

  else
  {
    if ((*(*a1 + 32))(a1))
    {
      v10 = (*MIL::IRValueType::AsListType(a1) + 64);
    }

    else
    {
      if (!(*(*a1 + 48))(a1))
      {
        goto LABEL_5;
      }

      v10 = (*MIL::IRValueType::AsDictionaryType(a1) + 72);
    }

    v11 = (*v10)();
    insertTensorDataTypeToPrecisionSet(v11, v12);
  }

LABEL_5:
}

void sub_1C1BE5CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
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

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1C1BE6004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void insertAdditionalStoragePrecisionForPaletizedWeights(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((*(*a1 + 16))(a1))
  {
    v3 = (*(*a1 + 16))(a1);
    LODWORD(v4) = vcvtpd_s64_f64(log2(v3));
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Palettized (%d bits)", v4];
  }

  else
  {
    v5 = @"Palettized (unknown bits)";
  }

  [v6 addObject:v5];
}

void insertAdditionalStoragePrecisionForQuantizedWeights(MIL::IRValueType *a1, void *a2)
{
  v6 = a2;
  if ((*(*a1 + 24))(a1))
  {
    v3 = MIL::IRValueType::AsTensorType(a1);
    v4 = (*(*v3 + 88))(v3);
    v5 = NSStringFromIRDataType(v4);
    [v6 addObject:v5];
  }
}

void sub_1C1BE647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromIRDataType(int a1)
{
  if ((a1 - 4) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_1E814D860[a1 - 4];
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1C1BE6758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MIOFunctionInfo>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C1BE682C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MIOFunctionInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MIOFunctionInfo>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::pair<std::string const,MIOFunctionInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415EB68;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::Int64Parameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"numberOfNeighbors" int64Parameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::Int64Parameter::~Int64Parameter(v6);
}

void sub_1C1BE6E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CoreML::Specification::Int64Parameter::~Int64Parameter(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EBE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = parseStringVector(a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EC68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = parseInt64Vector(a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2,std::allocator<parseKNearestNeighborsClassifier(google::protobuf::io::CodedInputStream &,MIOModelInfo &,ModelParserWorkspace &)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415ECE8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::StringParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"linkedModelFileName" stringParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::StringParameter::~StringParameter(v6);
}

uint64_t std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1C6908B60);
}

id std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F415ED68;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = *(a1 + 8);
  v4 = [MIOParameterDescription alloc];
  parseStream<CoreML::Specification::StringParameter>(a2, v6);
  v5 = [(MIOParameterDescription *)v4 initWithKey:@"linkedModelSearchPath" stringParameter:v6];
  [v3 addObject:v5];

  CoreML::Specification::StringParameter::~StringParameter(v6);
}

uint64_t std::__function::__func<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1,std::allocator<parseLinkedModel(google::protobuf::io::CodedInputStream &,MIOModelInfo &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EDE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = parseStringVector(a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EE68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t a1, google::protobuf::io::CodedInputStream *a2)
{
  v3 = parseInt64Vector(a2);
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t std::__function::__func<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1,std::allocator<parseClassLabels(google::protobuf::io::CodedInputStream &,int,int,ModelParserWorkspace &)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZL26populatePipelineInfomationRK12MIOModelInfoR20ModelParserWorkspace_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v5, "integerValue") + objc_msgSend(v7, "integerValue")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

void ___ZL26populatePipelineInfomationRK12MIOModelInfoR20ModelParserWorkspace_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v5, "integerValue") + objc_msgSend(v7, "integerValue")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

uint64_t ___ZL22classLabelsForPipelineP7NSArrayIP8MIOModelEP8NSString_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 name];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

uint64_t std::vector<MIOFunctionInfo>::push_back[abi:ne200100](uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<MIOFunctionInfo>::__emplace_back_slow_path<MIOFunctionInfo const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v4[1] = a2[1];
    v4[2] = a2[2];
    v4[3] = a2[3];
    v4[4] = a2[4];
    result = (v4 + 5);
  }

  *(a1 + 8) = result;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::vector<MIOFunctionInfo>::__emplace_back_slow_path<MIOFunctionInfo const&>(uint64_t a1, id *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIOFunctionInfo>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = a2[1];
  *(v7 + 16) = a2[2];
  *(v7 + 24) = a2[3];
  *(v7 + 32) = a2[4];
  *&v16 = v7 + 40;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<MIOFunctionInfo>::~__split_buffer(&v14);
  return v13;
}

void sub_1C1BE7D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MIOFunctionInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIOFunctionInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
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
      v8 = *v7;
      *v7 = 0uLL;
      *a4 = v8;
      v9 = *(v7 + 1);
      *(v7 + 1) = 0uLL;
      *(a4 + 16) = v9;
      v10 = v7[4];
      v7[4] = 0;
      *(a4 + 32) = v10;
      v7 += 5;
      a4 += 40;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MIOFunctionInfo>>::destroy[abi:ne200100]<MIOFunctionInfo,0>(a1, v5);
      v5 += 5;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<MIOFunctionInfo>>::destroy[abi:ne200100]<MIOFunctionInfo,0>(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MIOFunctionInfo>,MIOFunctionInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 5;
      std::allocator_traits<std::allocator<MIOFunctionInfo>>::destroy[abi:ne200100]<MIOFunctionInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MIOFunctionInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MIOFunctionInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MIOFunctionInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 40;
    std::allocator_traits<std::allocator<MIOFunctionInfo>>::destroy[abi:ne200100]<MIOFunctionInfo,0>(v5, (v4 - 40));
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::string const,MIOFunctionInfo>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void parseNeuralNetworkWeightParams(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v5 = 5;
  v4 = 0;
  MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v3);
}

void sub_1C1BE843C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void parseNeuralNetworkLSTMWeightParams(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = a2;
  MLAssetIO::ProtoWireFormatCallbackParser::ProtoWireFormatCallbackParser(v3);
}

void sub_1C1BE8D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

__CFString *prettyProtoFieldName(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(NSString *)v3 length])
  {
    v5 = v3;
    if ([(NSString *)v4 length]&& [(__CFString *)v5 hasPrefix:v4])
    {
      v6 = [(__CFString *)v5 substringFromIndex:[(NSString *)v4 length]];

      v5 = v6;
    }

    if ([(__CFString *)v5 length])
    {
      v7 = [(__CFString *)v5 substringToIndex:1];
      v8 = [v7 uppercaseString];

      v9 = [(__CFString *)v5 substringFromIndex:1];
      v10 = [v8 stringByAppendingString:v9];

      v5 = v10;
      v11 = v5;
    }

    else
    {
      v11 = &stru_1F4162270;
    }
  }

  else
  {
    v11 = &stru_1F4162270;
  }

  return v11;
}

void sub_1C1BE8F78(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void parseNeuralNetworkAndUpdateLayerHistogram(CodedInputStream *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  parseNeuralNetworkSpecification(a1, v22, v17);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v22[1];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) layerHistogram];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = ___ZL41parseNeuralNetworkAndUpdateLayerHistogramRN6google8protobuf2io16CodedInputStreamEP19NSMutableDictionaryIP8NSStringP8NSNumberE_block_invoke;
        v11[3] = &unk_1E814D7E0;
        v12 = v3;
        [v8 enumerateKeysAndObjectsUsingBlock:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v24 count:16];
    }

    while (v5);
  }

  std::__hash_table<std::__hash_value_type<std::string,MIOFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIOFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIOFunctionInfo>>>::~__hash_table(v17);
  v9 = v23;
  v23 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *&v17[0] = &v22[3];
  std::vector<MIOFunctionInfo>::__destroy_vector::operator()[abi:ne200100](v17);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1C1BE9210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ModelParserWorkspace::~ModelParserWorkspace(&a23);
  MIOModelSpecificInfo::~MIOModelSpecificInfo(&a33);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_0,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EEE8;
  a2[1] = v2;
  return result;
}

void sub_1C1BE93EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_0,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_0>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZL30parseNeuralNetworkWeightParamsRN6google8protobuf2io16CodedInputStreamEP14NSMutableArrayIP8NSStringEENK3__0clIS5_EEDaRT_EUlxE_NS_9allocatorISH_EEFvxEE7__cloneEPNS0_6__baseISK_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EF58;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZL30parseNeuralNetworkWeightParamsRN6google8protobuf2io16CodedInputStreamEP14NSMutableArrayIP8NSStringEENK3__0clIS5_EEDaRT_EUlxE_NS_9allocatorISH_EEFvxEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZL30parseNeuralNetworkWeightParamsRN6google8protobuf2io16CodedInputStreamEP14NSMutableArrayIP8NSStringEENK3__0clIS2_EEDaRT_EUlxE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_1,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415EFE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_1,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_1>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415F068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  *v1 = v2;
  return result;
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_2>,void ()(google::protobuf::io::CodedInputStream &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_3,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F415F0E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_3,std::allocator<parseNeuralNetworkWeightParams(google::protobuf::io::CodedInputStream &,NSMutableArray<NSString *> *)::$_3>,void ()(google::protobuf::io::CodedInputStream &)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1 == 5)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  *v1 = v2;
  return result;
}