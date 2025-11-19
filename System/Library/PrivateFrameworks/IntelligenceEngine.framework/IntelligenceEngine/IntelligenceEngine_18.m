void sub_254D89600(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  if (*(*a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *(v6 + 56), *(v6 + 64));
  }

  else
  {
    v26 = *(v6 + 56);
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v9 = 0;
    if ((*(&v26.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    operator delete(v26.__r_.__value_.__l.__data_);
    if (v9)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v8 = *a3;
  if (*(*a3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v8 + 56), *(v8 + 64));
  }

  else
  {
    v25 = *(v8 + 56);
  }

  v10 = v25.__r_.__value_.__l.__size_;
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  v9 = v10 == 0;
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if ((*(&v26.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v9)
  {
    return 1;
  }

LABEL_20:
  v12 = *a2;
  if (*(*a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *(v12 + 56), *(v12 + 64));
  }

  else
  {
    v26 = *(v12 + 56);
  }

  v13 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v26.__r_.__value_.__l.__size_;
  }

  if (v13)
  {
    v14 = 0;
    if ((*(&v26.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_27;
    }

LABEL_37:
    operator delete(v26.__r_.__value_.__l.__data_);
    if (v14)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v15 = *a3;
  if (*(*a3 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v15 + 56), *(v15 + 64));
  }

  else
  {
    v25 = *(v15 + 56);
  }

  v16 = v25.__r_.__value_.__l.__size_;
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  v14 = v16 != 0;
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if ((*(&v26.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v14)
  {
    return 0;
  }

LABEL_38:
  v17 = *a2;
  v18 = a2[1];
  v24[0] = v17;
  v24[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ResponseLastTimestamp = siri::intelligence::FlowGraph::GetResponseLastTimestamp(a1, v24);
  v20 = *a3;
  v21 = a3[1];
  v23[0] = v20;
  v23[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = ResponseLastTimestamp > siri::intelligence::FlowGraph::GetResponseLastTimestamp(a1, v23);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v11;
}

void sub_254D89924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v9 = (a2 + 1);
  v8 = a2[1];
  v42[0] = *a2;
  v42[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (a1 + 1);
  v10 = a1[1];
  v41[0] = *a1;
  v41[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a4, v42, v41);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v14 = (a3 + 1);
  v13 = *a3;
  if (v12)
  {
    v15 = *v14;
    v36[0] = *a3;
    v36[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = a2[1];
    v35[0] = *a2;
    v35[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a4, v36, v35);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v18 = *a1;
    if (v17)
    {
      *a1 = *a3;
      *a3 = v18;
LABEL_49:
      v9 = (a3 + 1);
      goto LABEL_50;
    }

    *a1 = *a2;
    *a2 = v18;
    v28 = a1[1];
    a1[1] = a2[1];
    a2[1] = v28;
    v29 = a3[1];
    v34[0] = *a3;
    v34[1] = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v9;
    }

    v33[0] = *a2;
    v33[1] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a4, v34, v33);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v30)
    {
      v31 = *a2;
      *a2 = *a3;
      *a3 = v31;
      v11 = v9;
      goto LABEL_49;
    }
  }

  else
  {
    v19 = *v14;
    v40[0] = *a3;
    v40[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a2[1];
    v39[0] = *a2;
    v39[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a4, v40, v39);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v21)
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = a2[1];
      a2[1] = a3[1];
      a3[1] = v23;
      v24 = a2[1];
      v38[0] = *a2;
      v38[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = a1[1];
      v37[0] = *a1;
      v37[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a4, v38, v37);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        v27 = *a1;
        *a1 = *a2;
        *a2 = v27;
LABEL_50:
        v32 = *v11;
        *v11 = *v9;
        *v9 = v32;
      }
    }
  }
}

void sub_254D89C48(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a2, a3, a5);
  v10 = a4[1];
  v30[0] = *a4;
  v30[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  v29[0] = *a3;
  v29[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a5, v30, v29);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v12)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = a3[1];
    a3[1] = a4[1];
    a4[1] = v14;
    v15 = a3[1];
    v28[0] = *a3;
    v28[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = a2[1];
    v27[0] = *a2;
    v27[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a5, v28, v27);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      v20 = a2[1];
      v26[0] = *a2;
      v26[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = a1[1];
      v25[0] = *a1;
      v25[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a5, v26, v25);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v22)
      {
        v23 = *a1;
        *a1 = *a2;
        *a2 = v23;
        v24 = a1[1];
        a1[1] = a2[1];
        a2[1] = v24;
      }
    }
  }
}

void sub_254D89E60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a2, a3, a4, a6);
  v12 = a5[1];
  v39[0] = *a5;
  v39[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  v38[0] = *a4;
  v38[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a6, v39, v38);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = a4[1];
    a4[1] = a5[1];
    a5[1] = v16;
    v17 = a4[1];
    v37[0] = *a4;
    v37[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a3[1];
    v36[0] = *a3;
    v36[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a6, v37, v36);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v19)
    {
      v20 = *a3;
      *a3 = *a4;
      *a4 = v20;
      v21 = a3[1];
      a3[1] = a4[1];
      a4[1] = v21;
      v22 = a3[1];
      v35[0] = *a3;
      v35[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = a2[1];
      v34[0] = *a2;
      v34[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a6, v35, v34);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v24)
      {
        v25 = *a2;
        *a2 = *a3;
        *a3 = v25;
        v26 = a2[1];
        a2[1] = a3[1];
        a3[1] = v26;
        v27 = a2[1];
        v33[0] = *a2;
        v33[1] = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = a1[1];
        v32[0] = *a1;
        v32[1] = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a6, v33, v32);
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        if (v29)
        {
          v30 = *a1;
          *a1 = *a2;
          *a2 = v30;
          v31 = a1[1];
          a1[1] = a2[1];
          a2[1] = v31;
        }
      }
    }
  }
}

void sub_254D8A108(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v38[0] = *(a2 - 2);
      v38[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = a1[1];
      v37[0] = *a1;
      v37[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v38, v37);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9)
      {
        v10 = *a1;
        *a1 = *(v4 - 2);
        *(v4 - 2) = v10;
        v11 = a1[1];
        a1[1] = *(v4 - 1);
        *(v4 - 1) = v11;
      }

      return 1;
    }
  }

  v12 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1 &,std::shared_ptr<siri::intelligence::ResponseBase> *,0>(a1, a1 + 2, a1 + 4, a3);
  v13 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v31 = v4;
  while (2)
  {
    v16 = v13[1];
    v36[0] = *v13;
    v36[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = *v12;
    v18 = v12[1];
    v35[0] = v17;
    v35[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v36, v35);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (!v19)
    {
      goto LABEL_50;
    }

    v32 = v15;
    v20 = *v13;
    v21 = v13[1];
    v22 = v14;
    *v13 = 0;
    v13[1] = 0;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 32);
      *(v23 + 4) = 0;
      *(v23 + 5) = 0;
      v25 = *(a1 + v22 + 56);
      *(v23 + 3) = v24;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v22 == -32)
      {
        v28 = a1;
        goto LABEL_47;
      }

      v34[0] = v20;
      v34[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(a1 + v22 + 24);
      v33[0] = *(a1 + v22 + 16);
      v33[1] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = siri::intelligence::FlowGraph::Save(protobuf::Intelligence_State *,unsigned long,unsigned long)::$_1::operator()(*a3, v34, v33);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (!v21)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      if ((v27 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_44:
      v22 -= 16;
    }

    if (v27)
    {
      goto LABEL_44;
    }

LABEL_46:
    v28 = (a1 + v22 + 32);
LABEL_47:
    v29 = v28[1];
    *v28 = v20;
    v28[1] = v21;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v15 = v32 + 1;
    v4 = v31;
    if (v32 != 7)
    {
LABEL_50:
      v12 = v13;
      v14 += 16;
      v13 += 2;
      if (v13 == v4)
      {
        return 1;
      }

      continue;
    }

    return v13 + 2 == v31;
  }
}

void sub_254D8A440(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *YAML::Parser::Parser(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void YAML::Parser::Parser(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  YAML::Parser::Load();
}

{
  *a1 = 0;
  a1[1] = 0;
  YAML::Parser::Load();
}

void YAML::Parser::~Parser(YAML::Parser *this)
{
  std::unique_ptr<YAML::Directives>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<YAML::Scanner>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<YAML::Directives>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<YAML::Scanner>::reset[abi:ne200100](this, 0);
}

BOOL YAML::Parser::operator BOOL(int64x2_t **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  YAML::Scanner::EnsureTokensInQueue(*a1);
  return v1[8].i64[1] != 0;
}

YAML::Scanner *std::unique_ptr<YAML::Scanner>::reset[abi:ne200100](YAML::Scanner **a1, YAML::Scanner *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    YAML::Scanner::~Scanner(result);

    JUMPOUT(0x259C29D90);
  }

  return result;
}

uint64_t *std::unique_ptr<YAML::Directives>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 16, *(v2 + 24));

    JUMPOUT(0x259C29D90);
  }

  return result;
}

uint64_t YAML::Parser::HandleNextDocument(int64x2_t **a1)
{
  if (*a1)
  {
    YAML::Parser::ParseDirectives(a1);
    v2 = *a1;
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (v2[8].i64[1])
    {
      v4 = *a1;
      operator new();
    }
  }

  return 0;
}

void YAML::Parser::ParseDirectives(int64x2_t **this)
{
  v2 = *this;
  YAML::Scanner::EnsureTokensInQueue(*this);
  if (v2[8].i64[1])
  {
    v3 = 0;
    do
    {
      v4 = YAML::Scanner::peek(*this);
      if (*(v4 + 1))
      {
        break;
      }

      if ((v3 & 1) == 0)
      {
        operator new();
      }

      YAML::Parser::HandleDirective(this, v4);
      YAML::Scanner::pop(*this);
      v5 = *this;
      YAML::Scanner::EnsureTokensInQueue(*this);
      v3 = 1;
    }

    while (v5[8].i64[1]);
  }
}

std::string *YAML::Parser::HandleDirective(std::string *this, const YAML::Token *a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 47) < 0)
  {
    v4 = *(a2 + 4);
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return this;
      }

      v2 = *v2;
      goto LABEL_8;
    }

    v2 = *v2;
  }

  else
  {
    v3 = *(a2 + 47);
    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return this;
      }

LABEL_8:
      if (*v2 == 1280131417)
      {
        return YAML::Parser::HandleYamlDirective(this, a2);
      }

      return this;
    }
  }

  v5 = *v2;
  v6 = *(v2 + 2);
  if (v5 == 16724 && v6 == 71)
  {
    return YAML::Parser::HandleTagDirective(this, a2);
  }

  return this;
}

uint64_t YAML::Parser::HandleYamlDirective(YAML::Parser *this, const YAML::Token *a2)
{
  v4 = a2 + 48;
  v3 = *(a2 + 6);
  if (*(v4 + 1) - v3 != 24)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, "YAML directives must have exactly one argument");
    YAML::Exception::Exception(exception, a2 + 2, v22);
    *exception = &unk_28671C278;
  }

  if ((**(this + 1) & 1) == 0)
  {
    v17 = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, "repeated YAML directive");
    YAML::Exception::Exception(v17, a2 + 2, v22);
    *v17 = &unk_28671C278;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22, v3, 24);
  MEMORY[0x259C29B20](v22, *(this + 1) + 4);
  std::istream::get();
  MEMORY[0x259C29B20](v22, *(this + 1) + 8);
  if ((*(&v24[0].__locale_ + *(v22[0] - 24)) & 5) != 0 || std::istream::peek() != -1)
  {
    v9 = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "bad YAML version: ");
    v10 = *(a2 + 6);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 6);
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = std::string::append(&v19, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21 = v14->__r_.__value_.__r.__words[2];
    v20 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    YAML::Exception::Exception(v9, a2 + 2, &v20);
    *v9 = &unk_28671C278;
  }

  v6 = *(this + 1);
  if (*(v6 + 4) >= 2)
  {
    v18 = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, "YAML major version too large");
    YAML::Exception::Exception(v18, a2 + 2, &v20);
    *v18 = &unk_28671C278;
  }

  *v6 = 0;
  v22[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22[2] = v7;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v26);
}

void sub_254D8ADBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

std::string *YAML::Parser::HandleTagDirective(YAML::Parser *this, const YAML::Token *a2)
{
  v3 = *(a2 + 6);
  if (*(a2 + 7) - v3 != 48)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v11, "TAG directives must have exactly two arguments");
    YAML::Exception::Exception(exception, a2 + 2, v11);
    *exception = &unk_28671C278;
  }

  v5 = std::__tree<std::string>::find<std::string>(*(this + 1) + 16, *(a2 + 6));
  v6 = *(this + 1);
  if (v6 + 24 != v5)
  {
    v10 = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(v11, "repeated TAG directive");
    YAML::Exception::Exception(v10, a2 + 2, v11);
    *v10 = &unk_28671C278;
  }

  v11[0] = v3;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 16, &v3->__r_.__value_.__l.__data_);
  return std::string::operator=((v7 + 56), v3 + 1);
}

void sub_254D8AFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Parser::PrintTokens(int64x2_t **a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    YAML::Scanner::EnsureTokensInQueue(*a1);
    if (v2[8].i64[1])
    {
      do
      {
        v5 = YAML::Scanner::peek(*a1);
        v6 = v5;
        v7 = &YAML::TokenNames[24 * *(v5 + 4)];
        v8 = v7[23];
        if (v8 >= 0)
        {
          v9 = &YAML::TokenNames[24 * *(v5 + 4)];
        }

        else
        {
          v9 = *v7;
        }

        if (v8 >= 0)
        {
          v10 = v7[23];
        }

        else
        {
          v10 = *(v7 + 1);
        }

        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v9, v10);
        std::string::basic_string[abi:ne200100]<0>(&__p, ": ");
        if ((v30 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v30 & 0x80u) == 0)
        {
          v13 = v30;
        }

        else
        {
          v13 = v29;
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, v13);
        v15 = *(v6 + 47);
        if (v15 >= 0)
        {
          v16 = v6 + 24;
        }

        else
        {
          v16 = *(v6 + 24);
        }

        if (v15 >= 0)
        {
          v17 = *(v6 + 47);
        }

        else
        {
          v17 = *(v6 + 32);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (*(v6 + 56) != *(v6 + 48))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, " ");
            if ((v30 & 0x80u) == 0)
            {
              v20 = &__p;
            }

            else
            {
              v20 = __p;
            }

            if ((v30 & 0x80u) == 0)
            {
              v21 = v30;
            }

            else
            {
              v21 = v29;
            }

            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v20, v21);
            v23 = *(v6 + 48) + v18;
            v24 = *(v23 + 23);
            if (v24 >= 0)
            {
              v25 = *(v6 + 48) + v18;
            }

            else
            {
              v25 = *v23;
            }

            if (v24 >= 0)
            {
              v26 = *(v23 + 23);
            }

            else
            {
              v26 = *(v23 + 8);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v25, v26);
            if (v30 < 0)
            {
              operator delete(__p);
            }

            ++v19;
            v18 += 24;
          }

          while (v19 < 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        YAML::Scanner::pop(*a1);
        v27 = *a1;
        YAML::Scanner::EnsureTokensInQueue(*a1);
      }

      while (v27[8].i64[1]);
    }
  }
}

void sub_254D8B21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __cxx_global_array_dtor_4()
{
  v0 = &byte_280AF5917;
  v1 = -480;
  v2 = &byte_280AF5917;
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

void *siri::intelligence::ArgParser::ArgParser(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

siri::intelligence::ArgParser *siri::intelligence::ArgParser::ArgParser(siri::intelligence::ArgParser *this, int a2, char **a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<char **,char **>(this, a3, &a3[a2], a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<char **,char **>(this, a3, &a3[a2], a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

uint64_t siri::intelligence::ArgParser::GetArgs@<X0>(siri::intelligence::ArgParser *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *this, *(this + 1), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
}

BOOL siri::intelligence::ArgParser::HasParseErrors(siri::intelligence::ArgParser *this)
{
  siri::intelligence::ArgParser::GetParseErrors(this, v3);
  v1 = v3[1] != v3[0];
  v4 = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  return v1;
}

void siri::intelligence::ArgParser::GetParseErrors(siri::intelligence::ArgParser *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 3));
  siri::intelligence::ArgParser::GetUnusedOptions(this, &v8);
  v4 = v8;
  for (i = v9; v4 != i; v4 += 24)
  {
    std::operator+<char>();
    std::vector<std::string>::push_back[abi:ne200100](a2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void siri::intelligence::ArgParser::GetUnusedOptions(std::string **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "-");
      v5 = siri::intelligence::StringStartsWith(v2, __p);
      v6 = v5;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (++v2 == v3)
      {
        return;
      }
    }

    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::vector<std::string>::push_back[abi:ne200100](a2, v2);
    goto LABEL_7;
  }
}

void siri::intelligence::ArgParser::GetCommandName(siri::intelligence::ArgParser *this@<X0>, std::string *a2@<X8>)
{
  v3 = *this;
  if (v3 == *(this + 1))
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else
  {
    siri::intelligence::BaseName(v3, a2);
  }
}

void siri::intelligence::ArgParser::GetPositionalArg(siri::intelligence::ArgParser *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v16, "");
  v6 = *this;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) >= 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "-");
      v10 = siri::intelligence::StringStartsWith((v6 + v7 + 24), __p);
      v11 = v10;
      if (v15 < 0)
      {
        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else if (v10)
      {
        goto LABEL_9;
      }

      if (v8 == a2)
      {
        v12 = *this + v7;
        if (*(v12 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(a3, *(v12 + 24), *(v12 + 32));
        }

        else
        {
          v13 = *(v12 + 24);
          a3->__r_.__value_.__r.__words[2] = *(v12 + 40);
          *&a3->__r_.__value_.__l.__data_ = v13;
        }

        goto LABEL_11;
      }

      ++v8;
LABEL_9:
      ++v9;
      v6 = *this;
      v7 += 24;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
LABEL_11:
  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_254D8B7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::ArgParser::HasOption(uint64_t *a1, uint64_t a2)
{
  siri::intelligence::StringToLower(a2, &v14);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      siri::intelligence::StringToLower(v3, &__p);
      v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v7 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v14.__r_.__value_.__l.__size_;
      }

      if (size == v7)
      {
        break;
      }

      v10 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      v3 += 24;
      v11 = v3 == v4 || v10;
      if (v11)
      {
        goto LABEL_24;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    v10 = memcmp(p_p, v9, size) == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

  v10 = 0;
LABEL_24:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_254D8B8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL siri::intelligence::ArgParser::ExtractBool(uint64_t *a1, uint64_t a2, int a3)
{
  siri::intelligence::StringToLower(a2, &v21);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    goto LABEL_22;
  }

  do
  {
    siri::intelligence::StringToLower(v5, &__p);
    v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v21.__r_.__value_.__l.__size_;
    }

    if (size != v9)
    {
      v12 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21.__r_.__value_.__r.__words[0];
    }

    v12 = memcmp(p_p, v11, size) == 0;
    if (v7 < 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v12)
    {
      goto LABEL_21;
    }

    v5 += 24;
  }

  while (v5 != v6);
  v5 = v6;
LABEL_21:
  v6 = a1[1];
LABEL_22:
  if (v5 == v6)
  {
    if (a3 == 1)
    {
      std::operator+<char>();
      v17 = std::string::append(&v20, " not provided");
      v18 = *&v17->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100]((a1 + 3), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&__p, (v5 + 24), v6, v5);
    v14 = v13;
    v15 = a1[1];
    while (v15 != v14)
    {
      v16 = *(v15 - 1);
      v15 -= 3;
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    a1[1] = v14;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v5 != v6;
}

void sub_254D8BAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void siri::intelligence::ArgParser::ExtractString(std::vector<std::string> *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  siri::intelligence::StringToLower(a2, &v27);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  begin = a1->__begin_;
  v8 = a1->__end_ - a1->__begin_;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_26;
  }

  v21 = a3;
  v9 = 0;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  do
  {
    v11 = v9 + 1;
    if (v9 + 1 >= v10)
    {
      goto LABEL_22;
    }

    siri::intelligence::StringToLower(&begin[v9], &__p);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (size != v13)
    {
      v17 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_20;
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v27;
    }

    else
    {
      v15 = v27.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = memcmp(v15, p_p, size) == 0;
    if (v14 < 0)
    {
      goto LABEL_19;
    }

LABEL_20:
    begin = a1->__begin_;
    if (v17)
    {
      std::string::operator=(a4, &begin[v11]);
      v11 = v9 + 2;
      goto LABEL_23;
    }

LABEL_22:
    std::vector<std::string>::push_back[abi:ne200100](&v24, &begin[v9]);
LABEL_23:
    begin = a1->__begin_;
    v8 = a1->__end_ - a1->__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v9 = v11;
  }

  while (v11 < v10);
  v18 = v25 - v24;
  a3 = v21;
LABEL_26:
  if (a3 == 1 && v8 == v18)
  {
    std::operator+<char>();
    v19 = std::string::append(&v22, " not provided");
    v20 = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&a1[1], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  if (&v24 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
  }

  __p.__r_.__value_.__r.__words[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_254D8BD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  __p = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::ArgParser::ExtractMultipleStrings(std::vector<std::string> *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  siri::intelligence::StringToLower(a2, &v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  begin = a1->__begin_;
  v8 = a1->__end_ - a1->__begin_;
  if (!v8)
  {
    v20 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  do
  {
    v11 = v9 + 1;
    if (v9 + 1 >= v10)
    {
LABEL_28:
      std::vector<std::string>::push_back[abi:ne200100](&v25, &begin[v9]);
      goto LABEL_29;
    }

    siri::intelligence::StringToLower(&begin[v9], &__p);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (size != v13)
    {
      v17 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_20;
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v28;
    }

    else
    {
      v15 = v28.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v17 = memcmp(v15, p_p, size) == 0;
    if (v14 < 0)
    {
      goto LABEL_19;
    }

LABEL_20:
    begin = a1->__begin_;
    if (!v17)
    {
      goto LABEL_28;
    }

    if (v11 < 0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - begin) >> 3))
    {
      v18 = 24 * v9 + 24;
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "-");
        v19 = siri::intelligence::StringStartsWith((begin + v18), &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v19)
        {
          break;
        }

        std::vector<std::string>::push_back[abi:ne200100](a4, (a1->__begin_ + v18));
        ++v11;
        begin = a1->__begin_;
        v18 += 24;
      }

      while (v11 < 0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - a1->__begin_) >> 3));
    }

LABEL_29:
    begin = a1->__begin_;
    v20 = a1->__end_ - a1->__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
    v9 = v11;
  }

  while (v11 < v10);
  v8 = v26 - v25;
LABEL_32:
  if (a3 == 1 && v20 == v8)
  {
    std::operator+<char>();
    v21 = std::string::append(&v23, " not provided");
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&a1[1], &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (&v25 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3));
  }

  __p.__r_.__value_.__r.__words[0] = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_254D8C0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  __p = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<char **,char **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

double siri::intelligence::InputGroup::InputGroup(siri::intelligence::InputGroup *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(this, &str_16);
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 12) = 0;
  *(v1 + 5) = 0;
  *(v1 + 26) = 1;
  v1[54] = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 11) = 0;
  return result;
}

{
  v1 = std::string::basic_string[abi:ne200100]<0>(this, &str_16);
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 12) = 0;
  *(v1 + 5) = 0;
  *(v1 + 26) = 1;
  v1[54] = 0;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 11) = 0;
  return result;
}

void **siri::intelligence::InputGroup::AddIntentReference(void **result, __int128 *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2)
  {
    v4 = result;
    if ((*(v2 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v2 + 8))
      {
LABEL_6:
        if (*(result + 23) >= 0)
        {
          v5 = *(result + 23);
        }

        else
        {
          v5 = result[1];
        }

        v6 = &v17;
        std::string::basic_string[abi:ne200100](&v17, v5 + 8);
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = v17.__r_.__value_.__r.__words[0];
        }

        if (v5)
        {
          if (*(v4 + 23) >= 0)
          {
            v7 = v4;
          }

          else
          {
            v7 = *v4;
          }

          memmove(v6, v7, v5);
        }

        strcpy(v6 + v5, "_intent_");
        std::to_string(&v16, ((v4[10] - v4[9]) >> 4) + 1);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v16;
        }

        else
        {
          v8 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        v10 = std::string::append(&v17, v8, size);
        v11 = v10->__r_.__value_.__r.__words[0];
        v18[0] = v10->__r_.__value_.__l.__size_;
        *(v18 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
        v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v13 = *a2;
        if (*(*a2 + 23) < 0)
        {
          operator delete(*v13);
        }

        v14 = v18[0];
        *v13 = v11;
        *(v13 + 8) = v14;
        *(v13 + 15) = *(v18 + 7);
        *(v13 + 23) = v12;
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (!*(v2 + 23))
    {
      goto LABEL_6;
    }

    result = std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::push_back[abi:ne200100](v4 + 9, a2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254D8C458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

std::string *siri::intelligence::InputGroup::GetDebugString@<X0>(siri::intelligence::InputGroup *this@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v41, "' {\n");
  v5 = *&v4->__r_.__value_.__l.__data_;
  a2->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 9);
  for (i = *(this + 10); v6 != i; v6 += 2)
  {
    v8 = *v6;
    std::operator+<char>();
    v9 = std::string::append(&v38, " -> ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *v6;
    std::string::basic_string[abi:ne200100]<0>(v34, ", ");
    siri::intelligence::StringJoin((v11 + 48), v34, __p);
    if ((v37 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v13 = v37;
    }

    else
    {
      v13 = __p[1];
    }

    v14 = std::string::append(&v39, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v40, "\n");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v41;
    }

    else
    {
      v18 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v18, size);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 3) != *(this + 4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v38, ", ");
    siri::intelligence::StringJoin(this + 3, &v38, &v39);
    v20 = std::string::insert(&v39, 0, "  fallbacks: ");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v40, "\n");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v41;
    }

    else
    {
      v24 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v41.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v24, v25);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  v26 = *(this + 7);
  if (v26 && ((*(*v26 + 40))(v26) & 1) == 0)
  {
    (*(**(this + 7) + 56))(&v39);
    v27 = std::string::insert(&v39, 0, "  nlParameters: ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v40, "\n");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v41;
    }

    else
    {
      v31 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v41.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v31, v32);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "}");
}

void sub_254D8C8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v40 + 23) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *YAML::detail::node_data::empty_scalar(YAML::detail::node_data *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_21, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_21))
  {
    qword_280AF4910 = 0;
    unk_280AF4918 = 0;
    qword_280AF4908 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &qword_280AF4908, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_21);
  }

  return &qword_280AF4908;
}

double YAML::detail::node_data::node_data(YAML::detail::node_data *this)
{
  *this = 0;
  *(this + 4) = -1;
  *(this + 12) = 0x1FFFFFFFFLL;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  return result;
}

{
  *this = 0;
  *(this + 4) = -1;
  *(this + 12) = 0x1FFFFFFFFLL;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = this + 136;
  *(this + 18) = this + 136;
  *(this + 19) = 0;
  return result;
}

uint64_t YAML::detail::node_data::mark_defined(uint64_t this)
{
  if (!*(this + 16))
  {
    *(this + 16) = 1;
  }

  *this = 1;
  return this;
}

uint64_t YAML::detail::node_data::set_mark(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 12) = *(a2 + 2);
  *(result + 4) = v2;
  return result;
}

void *YAML::detail::node_data::set_type(void *result, int a2)
{
  if (a2)
  {
    *result = 1;
    if (*(result + 4) != a2)
    {
      *(result + 4) = a2;
      switch(a2)
      {
        case 4:
          result[15] = result[14];
          return std::__list_imp<std::pair<YAML::detail::node *,YAML::detail::node *>>::clear(result + 17);
        case 3:
          result[11] = result[10];
          result[13] = 0;
          break;
        case 2:
          if (*(result + 79) < 0)
          {
            *result[7] = 0;
            result[8] = 0;
          }

          else
          {
            *(result + 56) = 0;
            *(result + 79) = 0;
          }

          break;
      }
    }
  }

  else
  {
    *(result + 4) = 0;
    *result = 0;
  }

  return result;
}

void *YAML::detail::node_data::reset_sequence(void *this)
{
  this[11] = this[10];
  this[13] = 0;
  return this;
}

uint64_t YAML::detail::node_data::set_null(uint64_t this)
{
  *this = 1;
  *(this + 16) = 1;
  return this;
}

std::string *YAML::detail::node_data::set_scalar(uint64_t a1, const std::string *a2)
{
  *a1 = 1;
  *(a1 + 16) = 2;
  return std::string::operator=((a1 + 56), a2);
}

unint64_t YAML::detail::node_data::size(YAML::detail::node_data *this)
{
  if (*this != 1)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (v2 == 4)
  {
    YAML::detail::node_data::compute_map_size(this);
    return ((*(this + 15) - *(this + 14)) >> 4) - *(this + 19);
  }

  else if (v2 == 3)
  {
    v3 = *(this + 10);
    v4 = *(this + 11) - v3;
    result = *(this + 13);
    if (result < v4 >> 3)
    {
      v6 = v4 >> 3;
      while (****(v3 + 8 * result) == 1)
      {
        *(this + 13) = ++result;
        if (v6 == result)
        {
          return v6;
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void *YAML::detail::node_data::compute_seq_size(void *this)
{
  v1 = this[10];
  v2 = (this[11] - v1) >> 3;
  v3 = this[13];
  v4 = v2 > v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = v3 + 1;
    v7 = (v1 + 8 * v3);
    do
    {
      if (****v7 != 1)
      {
        break;
      }

      this[13] = v6++;
      ++v7;
      --v5;
    }

    while (v5);
  }

  return this;
}

void YAML::detail::node_data::compute_map_size(YAML::detail::node_data *this)
{
  v1 = this + 136;
  v2 = *(this + 18);
  if (v2 != this + 136)
  {
    do
    {
      v4 = v2;
      v2 = *(v2 + 1);
      if (***v4[2] == 1 && ***v4[3] == 1)
      {
        v5 = *v4;
        *(v5 + 8) = v2;
        *v2 = v5;
        --*(this + 19);
        operator delete(v4);
      }
    }

    while (v2 != v1);
  }
}

uint64_t YAML::detail::node_data::begin@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 80);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return YAML::detail::node_iterator_base<YAML::detail::node const>::node_iterator_base(a2, *(this + 112), *(this + 120));
}

{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 80);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return YAML::detail::node_iterator_base<YAML::detail::node const>::node_iterator_base(a2, *(this + 112), *(this + 120));
}

uint64_t YAML::detail::node_data::end@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 88);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return YAML::detail::node_iterator_base<YAML::detail::node const>::node_iterator_base(a2, *(this + 120), *(this + 120));
}

{
  if ((*this & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    return this;
  }

  v2 = *(this + 16);
  if (v2 != 4)
  {
    if (v2 == 3)
    {
      v3 = *(this + 88);
      *a2 = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = v3;
      return this;
    }

    goto LABEL_5;
  }

  return YAML::detail::node_iterator_base<YAML::detail::node const>::node_iterator_base(a2, *(this + 120), *(this + 120));
}

void YAML::detail::node_data::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    if (v4 != 3)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      YAML::BadPushback::BadPushback(exception);
    }

    v5 = *(a1 + 88);
  }

  else
  {
    *(a1 + 16) = 3;
    v5 = *(a1 + 80);
    *(a1 + 88) = v5;
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 96);
  if (v5 >= v6)
  {
    v8 = *(a1 + 80);
    v9 = (v5 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1 + 80, v12);
    }

    v13 = (8 * v9);
    *v13 = a2;
    v7 = 8 * v9 + 8;
    v14 = *(a1 + 80);
    v15 = *(a1 + 88) - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = *(a1 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = v7;
    *(a1 + 96) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v7 = (v5 + 1);
  }

  *(a1 + 88) = v7;
}

YAML::BadPushback *YAML::BadPushback::BadPushback(YAML::BadPushback *this)
{
  v5 = -1;
  v6 = -1;
  std::string::basic_string[abi:ne200100]<0>(__p, "appending to a non-sequence");
  YAML::Exception::Exception(this, &v5, __p);
  *this = &unk_28671C2B8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_28671C3F8;
  return this;
}

void sub_254D8D0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::detail::node_data::insert(YAML::detail::node_data *a1, YAML::detail::node *a2, YAML::detail::node *a3, void *a4)
{
  v7 = *(a1 + 4);
  if (v7 < 2 || v7 == 3)
  {
    v9 = a4[1];
    v11[0] = *a4;
    v11[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    YAML::detail::node_data::convert_to_map(a1, v11);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else if (v7 == 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    YAML::BadSubscript::BadSubscript<YAML::detail::node>(exception);
  }

  YAML::detail::node_data::insert_map_pair(a1, a2, a3);
}

void YAML::detail::node_data::convert_to_map(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 < 2)
  {
    *(a1 + 120) = *(a1 + 112);
    std::__list_imp<std::pair<YAML::detail::node *,YAML::detail::node *>>::clear((a1 + 136));
    *(a1 + 16) = 4;
  }

  else if (v3 == 3)
  {
    v4 = *(a2 + 8);
    v5[0] = *a2;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    YAML::detail::node_data::convert_sequence_to_map(a1, v5);
    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else if (v3 == 2)
  {
    __assert_rtn("convert_to_map", "node_data.cpp", 294, "false");
  }
}

void sub_254D8D2C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *YAML::BadSubscript::BadSubscript<YAML::detail::node>(void *a1)
{
  v5 = -1;
  v6 = -1;
  std::string::basic_string[abi:ne200100]<0>(__p, "operator[] call on a scalar");
  YAML::Exception::Exception(a1, &v5, __p);
  *a1 = &unk_28671C2B8;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_28671C538;
  return a1;
}

void sub_254D8D384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::detail::node_data::insert_map_pair(YAML::detail::node_data *this, YAML::detail::node *a2, YAML::detail::node *a3)
{
  v7 = *(this + 15);
  v6 = *(this + 16);
  if (v7 >= v6)
  {
    v9 = *(this + 14);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (16 * v11);
    *v15 = a2;
    v15[1] = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *(this + 14) = 0;
    *(this + 15) = v8;
    *(this + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 1) = a3;
    v8 = (v7 + 16);
  }

  *(this + 15) = v8;
  if (***a2 != 1 || (***a3 & 1) == 0)
  {
    operator new();
  }
}

uint64_t YAML::detail::node_data::get(uint64_t a1, void *a2)
{
  if (*(a1 + 16) != 4)
  {
    return 0;
  }

  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  if (v2 == v3)
  {
    return 0;
  }

  while (**v2 != *a2)
  {
    v2 += 16;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return *(v2 + 8);
}

uint64_t YAML::detail::node_data::get(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 < 2 || v6 == 3)
  {
    v8 = *(a3 + 8);
    v13[0] = *a3;
    v13[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    YAML::detail::node_data::convert_to_map(a1, v13);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else if (v6 == 2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    YAML::BadSubscript::BadSubscript<YAML::detail::node>(exception);
  }

  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  if (v9 == v10)
  {
LABEL_14:
    YAML::detail::memory::create_node(**a3);
  }

  while (**v9 != *a2)
  {
    v9 += 16;
    if (v9 == v10)
    {
      goto LABEL_14;
    }
  }

  return *(v9 + 8);
}

uint64_t YAML::detail::node_data::remove(uint64_t a1, void *a2)
{
  if (*(a1 + 16) != 4)
  {
    return 0;
  }

  v4 = (a1 + 136);
  v5 = *(a1 + 144);
  if (v5 != v4)
  {
    do
    {
      v6 = v5[1];
      if (*v5[2] == *a2)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        --*(a1 + 152);
        operator delete(v5);
      }

      v5 = v6;
    }

    while (v6 != v4);
  }

  v9 = *(a1 + 112);
  v8 = *(a1 + 120);
  if (v9 == v8)
  {
    return 0;
  }

  while (**v9 != *a2)
  {
    v9 += 2;
    if (v9 == v8)
    {
      return 0;
    }
  }

  v11 = v9 + 2;
  if (v9 + 2 != v8)
  {
    do
    {
      v12 = v11[1];
      *(v11 - 2) = *v11;
      *(v11 - 1) = v12;
      v11 += 2;
    }

    while (v11 != v8);
    v9 = (v11 - 2);
  }

  *(a1 + 120) = v9;
  return 1;
}

void *YAML::detail::node_data::convert_sequence_to_map(uint64_t a1, YAML::detail::memory ***a2)
{
  if (*(a1 + 16) != 3)
  {
    __assert_rtn("convert_sequence_to_map", "node_data.cpp", 300, "m_type == NodeType::Sequence");
  }

  *(a1 + 120) = *(a1 + 112);
  result = std::__list_imp<std::pair<YAML::detail::node *,YAML::detail::node *>>::clear((a1 + 136));
  v4 = *(a1 + 80);
  if (*(a1 + 88) != v4)
  {
    v7 = *MEMORY[0x277D82818];
    v5 = *(MEMORY[0x277D82818] + 64);
    v6 = *(MEMORY[0x277D82818] + 72);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v9);
    MEMORY[0x259C29BE0](&v10, 0);
    YAML::detail::memory::create_node(**a2);
  }

  *(a1 + 88) = v4;
  *(a1 + 104) = 0;
  *(a1 + 16) = 4;
  return result;
}

uint64_t YAML::detail::node_iterator_base<YAML::detail::node const>::node_iterator_base(uint64_t result, _BYTE ****a2, _BYTE ****a3)
{
  *result = 2;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (a3 != a2)
  {
    while (****a2 != 1 || (***a2[1] & 1) == 0)
    {
      a2 += 2;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  *(result + 16) = a2;
  return result;
}

void siri::intelligence::Start::SetResponseIds(std::vector<std::string> *a1, std::string **a2)
{
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t siri::intelligence::Start::GetResponseIds@<X0>(siri::intelligence::Start *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *this, *(this + 1), 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
}

void siri::intelligence::Start::GetActivityId(siri::intelligence::Start *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

siri::intelligence::ExecutionState *siri::intelligence::ExecutionState::ExecutionState(siri::intelligence::ExecutionState *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  siri::intelligence::ExecutionState::Clear(this);
  return this;
}

void sub_254D8DB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 71) < 0)
  {
    operator delete(*v11);
  }

  v13 = *(v10 + 32);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  a10 = v10;
  std::vector<std::vector<siri::intelligence::ResponseState>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

std::string *siri::intelligence::ExecutionState::Clear(siri::intelligence::ExecutionState *this)
{
  *(this + 12) = 0;
  v2 = *this;
  v3 = *(this + 1);
  while (v3 != v2)
  {
    v3 -= 3;
    v6 = v3;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  *(this + 1) = v2;
  *(this + 40) = 0;
  v4 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::vector<std::string>::clear[abi:ne200100](this + 9);
  return std::string::operator=(this + 2, siri::intelligence::IE_GLOBAL_SCOPE);
}

void siri::intelligence::ExecutionState::ClearLastResponse(void ***this)
{
  v2 = *this;
  v3 = this[1];
  while (v3 != v2)
  {
    v3 -= 3;
    v4 = v3;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  this[1] = v2;
}

void *siri::intelligence::ExecutionState::GetLastResponse@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  if (*this == v2 || (v4 = *(v2 - 24), v3 = *(v2 - 16), v4 == v3))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v6 = *(v3 - 56);
    v5 = *(v3 - 48);
    *a2 = v6;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t siri::intelligence::ExecutionState::GetLastResponseState(siri::intelligence::ExecutionState *this)
{
  v1 = *(this + 1);
  if (*this == v1)
  {
    return 0;
  }

  v3 = *(v1 - 24);
  v2 = *(v1 - 16);
  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v2 - 56;
  }
}

void siri::intelligence::ExecutionState::GetInterjectionInputGroup(siri::intelligence::ExecutionState *this@<X0>, std::string *a2@<X8>)
{
  v2 = *(this + 1);
  if (*this == v2 || (v4 = *(v2 - 24), v3 = *(v2 - 16), v4 == v3))
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else if (*(v3 - 9) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v3 - 32), *(v3 - 24));
  }

  else
  {
    v5 = *(v3 - 32);
    a2->__r_.__value_.__r.__words[2] = *(v3 - 16);
    *&a2->__r_.__value_.__l.__data_ = v5;
  }
}

std::string *siri::intelligence::ExecutionState::SetInterjectionInputGroup(std::string *result, const std::string *a2)
{
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    v4 = *(size - 24);
    v3 = *(size - 16);
    if (v4 != v3)
    {
      return std::string::operator=((v3 - 32), a2);
    }
  }

  return result;
}

uint64_t siri::intelligence::ExecutionState::GetUberOnly(siri::intelligence::ExecutionState *this)
{
  v1 = *(this + 1);
  if (*this == v1 || (v3 = *(v1 - 24), v2 = *(v1 - 16), v3 == v2))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 - 8);
  }

  return v4 & 1;
}

void *siri::intelligence::ExecutionState::SetUberOnly(void *this, char a2)
{
  v2 = this[1];
  if (*this != v2)
  {
    v4 = *(v2 - 24);
    v3 = *(v2 - 16);
    if (v4 != v3)
    {
      *(v3 - 8) = a2;
    }
  }

  return this;
}

void siri::intelligence::ExecutionState::GetStackTrace(siri::intelligence::ExecutionState *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *this;
  if (*(this + 1) != *this)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = *(*(v3 + v6) - 56);
      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v8 = *(v7 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      if (v10 >= v9)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v25.__end_cap_.__value_ = a2;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v15);
        }

        v16 = 24 * v12;
        v17 = *&__p.__r_.__value_.__l.__data_;
        *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v16 = v17;
        memset(&__p, 0, sizeof(__p));
        v18 = 24 * v12 + 24;
        v19 = *(a2 + 8) - *a2;
        v20 = 24 * v12 - v19;
        memcpy((v16 - v19), *a2, v19);
        v21 = *a2;
        *a2 = v20;
        *(a2 + 8) = v18;
        v22 = *(a2 + 16);
        *(a2 + 16) = 0;
        v25.__end_ = v21;
        v25.__end_cap_.__value_ = v22;
        v25.__first_ = v21;
        v25.__begin_ = v21;
        std::__split_buffer<std::string>::~__split_buffer(&v25);
        v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a2 + 8) = v18;
        if (v23 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v11 = *&__p.__r_.__value_.__l.__data_;
        *(v10 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v10 = v11;
        *(a2 + 8) = v10 + 24;
      }

      ++v5;
      v3 = *this;
      v6 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  }
}

void sub_254D8DF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::ExecutionState::RewindToLastCharacterResponse(siri::intelligence::ExecutionState *this)
{
  v1 = *(this + 1);
  if (*this != v1)
  {
    v3 = *(v1 - 24);
    v2 = *(v1 - 16);
    if (v3 != v2)
    {
      v6 = *(v2 - 56);
      v5 = *(v2 - 48);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        v7 = **v6;
        {
          if (!v5)
          {
            return;
          }

          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_24:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          return;
        }

        siri::intelligence::ExecutionState::GetInterjectionInputGroup(this, &__str);
        v8 = *(this + 1);
        if (*this == v8 || (v9 = *(v8 - 16), *(v8 - 24) == v9))
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v9 - 8);
        }

        v11 = v8 - 24;
        v14 = (v8 - 24);
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v14);
        *(this + 1) = v11;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        v18 = 0;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v15;
        v14 = v6;
        v15 = v5;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        std::string::operator=(&__p, &__str);
        v18 = v10 & 1;
        v16 = 0;
        memset(v13, 0, sizeof(v13));
        std::vector<siri::intelligence::ResponseState>::push_back[abi:ne200100](v13, &v14);
        std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](this, v13);
        v20 = v13;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (!v5)
      {
        return;
      }

      goto LABEL_24;
    }
  }
}

void sub_254D8E188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  siri::intelligence::ResponseState::~ResponseState(&a12);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::ResponseState>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<siri::intelligence::ResponseState>::__emplace_back_slow_path<siri::intelligence::ResponseState const&>(a1, a2);
  }

  else
  {
    std::vector<siri::intelligence::ResponseState>::__construct_one_at_end[abi:ne200100]<siri::intelligence::ResponseState const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<siri::intelligence::ResponseState>>::__emplace_back_slow_path<std::vector<siri::intelligence::ResponseState> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<siri::intelligence::ResponseState>>::__construct_one_at_end[abi:ne200100]<std::vector<siri::intelligence::ResponseState> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void siri::intelligence::ResponseState::~ResponseState(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t siri::intelligence::ExecutionState::RewindToResponse(void *a1, const void **a2)
{
  v2 = a1[1];
  if (*a1 != v2)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<siri::intelligence::ResponseState>::__init_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(&v30, *(v2 - 24), *(v2 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v2 - 16) - *(v2 - 24)) >> 3));
    v25 = (a1[1] - 24);
    v5 = v25;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v25);
    v6 = 0;
    a1[1] = v5;
    while (1)
    {
      v7 = v31;
      if (v31 == v30)
      {
LABEL_46:
        v25 = &v30;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v25);
        return v6 & 1;
      }

      v8 = *(v31 - 56);
      v25 = v8;
      v9 = *(v31 - 48);
      v26 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(v7 - 40);
      if (*(v7 - 9) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *(v7 - 32), *(v7 - 24));
        v8 = v25;
      }

      else
      {
        v10 = *(v7 - 32);
        v28.__r_.__value_.__r.__words[2] = *(v7 - 16);
        *&v28.__r_.__value_.__l.__data_ = v10;
      }

      v29 = *(v7 - 8);
      if (*(v8 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v8[1], v8[2]);
      }

      else
      {
        v11 = *(v8 + 1);
        __p.__r_.__value_.__r.__words[2] = v8[3];
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v14 = *(a2 + 23);
      v15 = v14;
      if (v14 < 0)
      {
        v14 = a2[1];
      }

      if (size == v14)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v15 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v18 = memcmp(p_p, v17, size) == 0;
        if ((v12 & 0x80000000) == 0)
        {
LABEL_27:
          if (v18)
          {
            goto LABEL_28;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v18 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v18)
      {
LABEL_28:
        v19 = 0;
        v6 = 1;
        goto LABEL_36;
      }

LABEL_30:
      v20 = v31 - 56;
      std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](&v30, v31 - 56);
      v31 = v20;
      if (v30 == v20)
      {
        v21 = a1[1];
        if (*a1 == v21)
        {
          v19 = 0;
          goto LABEL_36;
        }

        if (&v30 != (v21 - 24))
        {
          std::vector<siri::intelligence::ResponseState>::__assign_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(&v30, *(v21 - 24), *(v21 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v21 - 16) - *(v21 - 24)) >> 3));
          v21 = a1[1];
        }

        v22 = v21 - 24;
        __p.__r_.__value_.__r.__words[0] = v21 - 24;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&__p);
        a1[1] = v22;
      }

      v19 = 1;
LABEL_36:
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if ((v19 & 1) == 0)
      {
        if (v30 != v31)
        {
          std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](a1, &v30);
        }

        goto LABEL_46;
      }
    }
  }

  v6 = 1;
  return v6 & 1;
}

void sub_254D8E53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a13 = &a20;
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ExecutionState::RewindToLastInputGroup(siri::intelligence::ExecutionState *this)
{
  v1 = *(this + 1);
  if (*this != v1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<siri::intelligence::ResponseState>::__init_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(&v21, *(v1 - 24), *(v1 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v1 - 16) - *(v1 - 24)) >> 3));
    v16 = (*(this + 1) - 24);
    v3 = v16;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v16);
    v4 = 0;
    *(this + 1) = v3;
    while (1)
    {
      v5 = v22;
      if (v22 == v21)
      {
LABEL_32:
        v16 = &v21;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v16);
        return v4 & 1;
      }

      v6 = *(v22 - 56);
      v16 = v6;
      v7 = *(v22 - 48);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(v5 - 40);
      if (*(v5 - 9) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v5 - 32), *(v5 - 24));
        v6 = v16;
      }

      else
      {
        v8 = *(v5 - 32);
        __p.__r_.__value_.__r.__words[2] = *(v5 - 16);
        *&__p.__r_.__value_.__l.__data_ = v8;
      }

      v20 = *(v5 - 8);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v6[4], v6[5]);
      }

      else
      {
        v15 = *(v6 + 4);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v15.__r_.__value_.__l.__size_;
        operator delete(v15.__r_.__value_.__l.__data_);
        if (size)
        {
LABEL_14:
          v9 = 0;
          v4 = 1;
          goto LABEL_22;
        }
      }

      else if (*(&v15.__r_.__value_.__s + 23))
      {
        goto LABEL_14;
      }

      v11 = v22 - 56;
      std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](&v21, v22 - 56);
      v22 = v11;
      if (v21 == v11)
      {
        v12 = *(this + 1);
        if (*this == v12)
        {
          v9 = 0;
          goto LABEL_22;
        }

        if (&v21 != (v12 - 24))
        {
          std::vector<siri::intelligence::ResponseState>::__assign_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(&v21, *(v12 - 24), *(v12 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v12 - 16) - *(v12 - 24)) >> 3));
          v12 = *(this + 1);
        }

        v13 = v12 - 24;
        v15.__r_.__value_.__r.__words[0] = v12 - 24;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v15);
        *(this + 1) = v13;
      }

      v9 = 1;
LABEL_22:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if ((v9 & 1) == 0)
      {
        if (v21 != v22)
        {
          std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](this, &v21);
        }

        goto LABEL_32;
      }
    }
  }

  v4 = 1;
  return v4 & 1;
}

void sub_254D8E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a13 = &a20;
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void siri::intelligence::ExecutionState::SetLastResponse(siri::intelligence::ExecutionState *a1, uint64_t a2)
{
  if (*a2)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    if (*a1 == v4)
    {
      memset(&v21, 0, sizeof(v21));
      v6 = *(a1 + 2);
      if (v5 >= v6)
      {
        __p.__r_.__value_.__l.__size_ = a1;
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
        v8 = 0x5555555555555556 * ((v6 - v5) >> 3);
        if (v8 <= 1)
        {
          v8 = 1;
        }

        if (v7 >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<siri::intelligence::ResponseState>>>(a1, v9);
      }

      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      *(a1 + 1) = v4 + 3;
      v16 = &v21;
      std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v16);
    }

    v16 = 0;
    v17 = 0;
    LOWORD(v18) = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v20 = 0;
    v11 = *a2;
    v10 = *(a2 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v17;
    v16 = v11;
    v17 = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    siri::intelligence::ExecutionState::GetInterjectionInputGroup(a1, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v21;
    v13 = *(a1 + 1);
    if (*a1 == v13 || (v14 = *(v13 - 16), *(v13 - 24) == v14))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 - 8);
    }

    v20 = v15 & 1;
    std::vector<siri::intelligence::ResponseState>::push_back[abi:ne200100]((v13 - 24), &v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

void sub_254D8E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 56) = &a17;
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100]((v17 - 56));
  _Unwind_Resume(a1);
}

void siri::intelligence::ExecutionState::PushLastResponse(siri::intelligence::ExecutionState *a1, uint64_t a2)
{
  if (*a2)
  {
    memset(v16, 0, sizeof(v16));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v15 = 0;
    v5 = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v5;
    v12 = v4;
    siri::intelligence::ExecutionState::GetInterjectionInputGroup(a1, &v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v10;
    v6 = *(a1 + 1);
    if (*a1 == v6 || (v8 = *(v6 - 24), v7 = *(v6 - 16), v8 == v7))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v7 - 8);
    }

    v15 = v9 & 1;
    std::vector<siri::intelligence::ResponseState>::push_back[abi:ne200100](v16, &v11);
    std::vector<std::vector<siri::intelligence::ResponseState>>::push_back[abi:ne200100](a1, v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v11 = v16;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v11);
  }
}

void sub_254D8EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  siri::intelligence::ResponseState::~ResponseState(&a13);
  a13 = (v13 - 56);
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::ExecutionState::PopLastResponseIfDone(siri::intelligence::ExecutionState *this)
{
  v3 = *(this + 1);
  if (v3 == *this || 0xAAAAAAAAAAAAAAABLL * ((v3 - *this) >> 3) < 2)
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v7 = *(v3 - 24);
  v6 = *(v3 - 16);
  if (v7 == v6)
  {
    return 0;
  }

  if (*(v6 - 40) != 1)
  {
    return 0;
  }

  if (*(v6 - 39) != 1)
  {
    return 0;
  }

  v8 = *(v6 - 56);
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v8 + 32), *(v8 + 40));
  }

  else
  {
    __p = *(v8 + 32);
  }

  v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    return 0;
  }

  __p.__r_.__value_.__r.__words[0] = *(this + 1) - 24;
  v11 = __p.__r_.__value_.__r.__words[0];
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(this + 1) = v11;
  return 1;
}

BOOL siri::intelligence::ExecutionState::IsDeadEnd(uint64_t **this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    if (v2 - v1 != 24)
    {
      return 0;
    }

    v4 = *v1;
    v3 = v1[1];
    if (v4 != v3)
    {
      v6 = *(v3 - 56);
      v5 = *(v3 - 48);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v6)
      {
        v7 = 1;
        goto LABEL_16;
      }

      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v6 + 32), *(v6 + 40));
      }

      else
      {
        __p = *(v6 + 32);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v7 = 1;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = *(v6 + 96) != *(v6 + 104);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_16:
          if (v5)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          }

          return !v7;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_16;
    }
  }

  return 1;
}

void sub_254D8ED4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ExecutionState::PopToResponseWithInputGroup(siri::intelligence::ExecutionState *this)
{
  v1 = *(this + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((v1 - *this) >> 3) >= 2)
  {
    while (1)
    {
      v3 = *(v1 - 16);
      if (*(v1 - 24) == v3)
      {
        v4 = 0;
      }

      else
      {
        v4 = (v3 - 56);
      }

      v5 = *v4;
      if (!*v4)
      {
        return;
      }

      if (*(v5 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v5 + 32), *(v5 + 40));
      }

      else
      {
        __p = *(v5 + 32);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        break;
      }

      v7 = *(v4 + 16) ^ 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if ((v7 & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = *(this + 1) - 24;
        v1 = __p.__r_.__value_.__r.__words[0];
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&__p);
        *(this + 1) = v1;
        if (0xAAAAAAAAAAAAAAABLL * ((v1 - *this) >> 3) > 1)
        {
          continue;
        }
      }

      return;
    }

    v7 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }
}

uint64_t siri::intelligence::ExecutionState::Print(siri::intelligence::ExecutionState *this)
{
  puts("--- EXEC STATE ---");
  v2 = *this;
  if (*(this + 1) != *this)
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 24 * v3++);
      printf("%zu: ", v3);
      v5 = *v4;
      if (v4[1] != *v4)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(v5 + v6);
          if (v8)
          {
            if (*(v8 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&v12, *(v8 + 8), *(v8 + 16));
            }

            else
            {
              v9 = *(v8 + 8);
              v12.__r_.__value_.__r.__words[2] = *(v8 + 24);
              *&v12.__r_.__value_.__l.__data_ = v9;
            }

            if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v10 = &v12;
            }

            else
            {
              v10 = v12.__r_.__value_.__r.__words[0];
            }

            printf(" %s", v10);
            if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v12.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            printf(" NULL");
          }

          ++v7;
          v5 = *v4;
          v6 += 56;
        }

        while (v7 < 0x6DB6DB6DB6DB6DB7 * ((v4[1] - *v4) >> 3));
      }

      putchar(10);
      v2 = *this;
    }

    while (v3 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3));
  }

  return puts("------------------");
}

void std::vector<std::vector<siri::intelligence::ResponseState>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *(a2 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::vector<siri::intelligence::ResponseState>::__construct_one_at_end[abi:ne200100]<siri::intelligence::ResponseState const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 40);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = *(a2 + 48);
  *(a1 + 8) = v4 + 56;
}

void sub_254D8F1B4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<siri::intelligence::ResponseState>::__emplace_back_slow_path<siri::intelligence::ResponseState const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>>(a1, v6);
  }

  v7 = 56 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(v7 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 24), *(a2 + 32));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
    *(v7 + 24) = v9;
    v10 = v7;
    v11 = v7;
  }

  *(v7 + 48) = *(a2 + 48);
  *&v20 = v11 + 56;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<siri::intelligence::ResponseState>::~__split_buffer(&v18);
  return v17;
}

void sub_254D8F350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__split_buffer<siri::intelligence::ResponseState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
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
    v7 = a2;
    do
    {
      *a4 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(a4 + 16) = *(v7 + 16);
      v8 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v8;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<siri::intelligence::ResponseState>::~__split_buffer(void **a1)
{
  std::__split_buffer<siri::intelligence::ResponseState>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<siri::intelligence::ResponseState>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](v4, i - 56);
  }
}

uint64_t std::vector<std::vector<siri::intelligence::ResponseState>>::__construct_one_at_end[abi:ne200100]<std::vector<siri::intelligence::ResponseState> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<siri::intelligence::ResponseState>::__init_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<siri::intelligence::ResponseState>>::__emplace_back_slow_path<std::vector<siri::intelligence::ResponseState> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<siri::intelligence::ResponseState>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<siri::intelligence::ResponseState>::__init_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(24 * v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<siri::intelligence::ResponseState>>::~__split_buffer(&v14);
  return v8;
}

void sub_254D8F748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<siri::intelligence::ResponseState>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<siri::intelligence::ResponseState>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<siri::intelligence::ResponseState>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<siri::intelligence::ResponseState>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<siri::intelligence::ResponseState>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::vector<siri::intelligence::ResponseState>::__init_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<siri::intelligence::ResponseState>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254D8F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<siri::intelligence::ResponseState>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ResponseState>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>>(a1, a2);
  }

  std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*,siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      v7 = *(v6 - 2);
      v8 = v6 - 24;
      *v4 = *(v6 - 3);
      *(v4 + 8) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 16) = *(v6 - 4);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 24), *v6, *(v6 + 1));
        v10 = v15;
      }

      else
      {
        v9 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v9;
        v10 = v4;
      }

      *(v4 + 48) = *(v6 + 24);
      v4 = v10 + 56;
      v15 = v10 + 56;
      v6 = (v6 + 56);
    }

    while (v8 + 56 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

void sub_254D8F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::ResponseState>::__assign_with_size[abi:ne200100]<siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 56;
          std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](a1, v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x249249249249249)
      {
        v14 = 0x492492492492492;
      }

      else
      {
        v14 = v13;
      }

      std::vector<siri::intelligence::ResponseState>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v15 = a1[1] - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v15 >> 3) >= a4)
  {
    v16 = std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ResponseState *,siri::intelligence::ResponseState *,siri::intelligence::ResponseState *>(a2, a3, v9);
    for (i = a1[1]; i != v16; std::allocator<siri::intelligence::ResponseState>::destroy[abi:ne200100](a1, i))
    {
      i -= 56;
    }

    a1[1] = v16;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ResponseState *,siri::intelligence::ResponseState *,siri::intelligence::ResponseState *>(a2, (a2 + v15), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<siri::intelligence::ResponseState>,siri::intelligence::ResponseState*,siri::intelligence::ResponseState*,siri::intelligence::ResponseState*>(a1, a2 + v15, a3, a1[1]);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<siri::intelligence::ResponseState *,siri::intelligence::ResponseState *,siri::intelligence::ResponseState *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(a3 + 16) = *(v5 + 8);
      std::string::operator=((a3 + 24), v5 + 1);
      *(a3 + 48) = *(v5 + 48);
      a3 += 56;
      v5 += 7;
    }

    while (v5 != a2);
  }

  return a3;
}

siri::intelligence::VariableDictionary *siri::intelligence::VariableDictionary::VariableDictionary(siri::intelligence::VariableDictionary *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, &str_17);
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
  siri::intelligence::Variable::Variable(this, &v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  *this = &unk_28671C738;
  *(this + 11) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  return this;
}

void sub_254D8FD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::VariableDictionary::VariableDictionary(void *a1, const std::string *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C738;
  a1[11] = 0;
  a1[10] = 0;
  a1[9] = a1 + 10;
  return a1;
}

void sub_254D8FDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::VariableDictionary::VariableDictionary(void *a1, const std::string *a2, uint64_t **a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C738;
  a1[10] = 0;
  a1[9] = a1 + 10;
  a1[11] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      v8 = v6[1];
      v10[0] = *v6;
      v10[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::VariableDictionary::AddProperty(a1, v10);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 2;
    }

    while (v6 != v7);
  }

  return a1;
}

void sub_254D8FEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableDictionary::AddProperty(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*(v2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(v2 + 8), *(v2 + 16));
      v2 = *a2;
    }

    else
    {
      v5 = *(v2 + 8);
      v8.__r_.__value_.__r.__words[2] = *(v2 + 24);
      *&v8.__r_.__value_.__l.__data_ = v5;
    }

    v6 = a2[1];
    v7[0] = v2;
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::intelligence::VariableDictionary::AddProperty(a1, &v8, v7);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254D8FFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *siri::intelligence::VariableDictionary::VariableDictionary(void *a1, const std::string *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, siri::intelligence::TYPE_DICTIONARY[0]);
  siri::intelligence::Variable::Variable(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C738;
  a1[10] = 0;
  a1[9] = a1 + 10;
  a1[11] = 0;
  v6 = *a3;
  if (a3[1] != *a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6 + v7;
      if (*(v6 + v7 + 16))
      {
        v10 = 120;
      }

      else
      {
        v10 = 144;
      }

      v11 = *(v9 + v10);
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      siri::intelligence::Variable::FromProtobuf(&v14, &__p, v9);
      siri::intelligence::VariableDictionary::AddProperty(a1, &__p, &v14);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v8;
      v6 = *a3;
      v7 += 192;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6) > v8);
  }

  return a1;
}

void sub_254D90168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableDictionary::AddProperty(uint64_t a1, std::string *a2, void *a3)
{
  if (*a3)
  {
    v13.__r_.__value_.__r.__words[0] = a2;
    v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 72, &a2->__r_.__value_.__l.__data_);
    v8 = *a3;
    v7 = a3[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v6 + 64);
    *(v6 + 56) = v8;
    *(v6 + 64) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v10 = *a3;
    if (*(*a3 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(v10 + 8), *(v10 + 16));
    }

    else
    {
      v11 = *(v10 + 8);
      v13.__r_.__value_.__r.__words[2] = *(v10 + 24);
      *&v13.__r_.__value_.__l.__data_ = v11;
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v13.__r_.__value_.__l.__size_;
      operator delete(v13.__r_.__value_.__l.__data_);
      if (size)
      {
        goto LABEL_12;
      }
    }

    else if (*(&v13.__r_.__value_.__s + 23))
    {
LABEL_12:
      *(*a3 + 56) = a1;
      *(a1 + 64) = 1;
      return;
    }

    std::string::operator=((*a3 + 8), a2);
    goto LABEL_12;
  }
}

uint64_t siri::intelligence::VariableDictionary::SetValueFromString(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    (*(*a1 + 24))(a1);
    return 1;
  }

  siri::intelligence::ParseJsonToVariable(a2, &lpsrc);
  if (!lpsrc)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = **lpsrc;
  if (!v6)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_11:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v8 = v6 != 0;
  if (v6)
  {
    std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&lpsrc, v6 + 9);
    v9 = a1 + 80;
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(a1 + 72, *(a1 + 80));
    v10 = v16;
    *(a1 + 72) = lpsrc;
    *(a1 + 80) = v10;
    v11 = v17;
    *(a1 + 88) = v17;
    if (v11)
    {
      v10->__shared_weak_owners_ = v9;
      lpsrc = &v16;
      v16 = 0;
      v17 = 0;
      v10 = 0;
    }

    else
    {
      *(a1 + 72) = v9;
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&lpsrc, v10);
    *(a1 + 64) = 1;
    if (!v7)
    {
      return v8;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    return v8;
  }

  (*(*a1 + 24))(a1);
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  siri::intelligence::Log::Error("Illegal dictionary variable string: %s", v12, v13);
  if (v7)
  {
    goto LABEL_20;
  }

  return v8;
}

void sub_254D9049C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableDictionary::RemoveProperty(uint64_t a1, const void **a2)
{
  v2 = a1 + 80;
  v3 = *(a1 + 80);
  if (v3)
  {
    v6 = (a1 + 72);
    v7 = a1 + 80;
    do
    {
      v8 = std::less<std::string>::operator()[abi:ne200100](v2 - 8, (v3 + 32), a2);
      if (v8)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v3;
      }

      v3 = *(v3 + v9);
    }

    while (v3);
    if (v7 != v2 && !std::less<std::string>::operator()[abi:ne200100](v2 - 8, a2, (v7 + 32)))
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v7;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*v6 == v7)
      {
        *v6 = v11;
      }

      v14 = *(a1 + 80);
      --*(a1 + 88);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v14, v7);
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>,0>(v7 + 32);

      operator delete(v7);
    }
  }
}

uint64_t siri::intelligence::VariableDictionary::GetValue@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__tree<std::string>::find<std::string>(a1 + 72, a2);
  if (a1 + 80 == result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(result + 64);
    *a3 = *(result + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void **siri::intelligence::VariableDictionary::GetValues@<X0>(void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = this[9];
  v3 = this + 10;
  if (v2 != this + 10)
  {
    do
    {
      this = std::vector<std::shared_ptr<siri::intelligence::Variable>>::push_back[abi:ne200100](a2, (v2 + 7));
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void sub_254D906C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void siri::intelligence::VariableDictionary::SetValues(uint64_t a1, uint64_t **a2)
{
  v4 = (a1 + 80);
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(a1 + 72, *(a1 + 80));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v7 = *v5;
      v8 = v5[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9[0] = v7;
      v9[1] = v8;
      siri::intelligence::VariableDictionary::AddProperty(a1, v9);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  *(a1 + 64) = 1;
}

void sub_254D9078C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableDictionary::SetUndefined(siri::intelligence::VariableDictionary *this)
{
  v1 = (this + 80);
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(this + 72, *(this + 10));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  *(v1 - 16) = 0;
}

void siri::intelligence::VariableDictionary::SetEmpty(siri::intelligence::VariableDictionary *this)
{
  v1 = (this + 80);
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(this + 72, *(this + 10));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  *(v1 - 16) = 1;
}

uint64_t siri::intelligence::VariableDictionary::IsEmpty(siri::intelligence::VariableDictionary *this)
{
  if (*(this + 11))
  {
    v1 = *(this + 64) ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void siri::intelligence::VariableDictionary::AsString(siri::intelligence::VariableDictionary *this@<X0>, uint64_t a2@<X8>)
{
  memset(v20, 0, sizeof(v20));
  v3 = *(this + 9);
  v4 = this + 80;
  if (v3 != this + 80)
  {
    do
    {
      if (v3[55] >= 0)
      {
        v5 = v3[55];
      }

      else
      {
        v5 = *(v3 + 5);
      }

      std::string::basic_string[abi:ne200100](&v17, v5 + 2);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v17;
      }

      else
      {
        v6 = v17.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if (v3[55] >= 0)
        {
          v7 = v3 + 32;
        }

        else
        {
          v7 = *(v3 + 4);
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, ": ");
      (*(**(v3 + 7) + 56))(v15);
      if ((v16 & 0x80u) == 0)
      {
        v8 = v15;
      }

      else
      {
        v8 = v15[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15[1];
      }

      v10 = std::string::append(&v17, v8, v9);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v19 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](v20, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      v12 = *(v3 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v3 + 2);
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v4);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  siri::intelligence::StringJoin(v20, __p, a2);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254D90A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __p = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void siri::intelligence::VariableDictionary::AsQuotedString(siri::intelligence::VariableDictionary *this@<X0>, std::string *a2@<X8>)
{
  memset(v22, 0, sizeof(v22));
  v3 = *(this + 9);
  v4 = this + 80;
  if (v3 != this + 80)
  {
    do
    {
      std::operator+<char>();
      v5 = std::string::append(&v19, ": ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      (*(**(v3 + 7) + 64))(v17);
      if ((v18 & 0x80u) == 0)
      {
        v7 = v17;
      }

      else
      {
        v7 = v17[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v8 = v18;
      }

      else
      {
        v8 = v17[1];
      }

      v9 = std::string::append(&v20, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::vector<std::string>::push_back[abi:ne200100](v22, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v11 = *(v3 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v3 + 2);
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  std::string::basic_string[abi:ne200100]<0>(&v19, ", ");
  siri::intelligence::StringJoin(v22, &v19, &v20);
  v14 = std::string::insert(&v20, 0, "{");
  v15 = *&v14->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&__p, "}");
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_254D90CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  __p = (v33 - 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_254D90F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::VariableDictionary::~VariableDictionary(siri::intelligence::VariableDictionary *this)
{
  *this = &unk_28671C738;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(this + 72, *(this + 10));

  siri::intelligence::Variable::~Variable(this);
}

{
  *this = &unk_28671C738;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(this + 72, *(this + 10));
  siri::intelligence::Variable::~Variable(this);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>> const&>();
  }

  return v3;
}

uint64_t YAML::Tag::Tag(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (v4 <= 1)
  {
    if (v4 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
LABEL_7:
    v5 = (a2 + 24);
LABEL_9:
    std::string::operator=((a1 + 32), v5);
    return a1;
  }

  if (v4 == 3)
  {
    std::string::operator=((a1 + 8), (a2 + 24));
    v5 = *(a2 + 48);
    goto LABEL_9;
  }

  if (v4 != 4)
  {
LABEL_11:
    __assert_rtn("Tag", "tag.cpp", 28, "false");
  }

  return a1;
}

void sub_254D914C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Tag::Translate(YAML::Tag *this@<X0>, const YAML::Directives *a2@<X1>, std::string *a3@<X8>)
{
  v6 = *this;
  if (*this <= 1)
  {
    if (!v6)
    {
      if (*(this + 55) < 0)
      {
        v10 = *(this + 4);
        v11 = *(this + 5);

        std::string::__init_copy_ctor_external(a3, v10, v11);
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = *(this + 2);
        a3->__r_.__value_.__r.__words[2] = *(this + 6);
      }

      return;
    }

    if (v6 != 1)
    {
      goto LABEL_29;
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "!");
    YAML::Directives::TranslateTagHandle(a2, v13, __p);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 4, a3);
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {

          std::string::basic_string[abi:ne200100]<0>(a3, "!");
          return;
        }

LABEL_29:
        __assert_rtn("Translate", "tag.cpp", 46, "false");
      }

      std::operator+<char>();
      v8 = std::string::append(&v12, "!");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v14 = v8->__r_.__value_.__r.__words[2];
      *v13 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      YAML::Directives::TranslateTagHandle(a2, v13, __p);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 4, a3);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v12.__r_.__value_.__r.__words[0];
        goto LABEL_22;
      }

      return;
    }

    std::string::basic_string[abi:ne200100]<0>(v13, "!!");
    YAML::Directives::TranslateTagHandle(a2, v13, __p);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 4, a3);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    v7 = v13[0];
LABEL_22:
    operator delete(v7);
  }
}

void sub_254D91708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
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
  }

  _Unwind_Resume(exception_object);
}

void __cxx_global_array_dtor_5()
{
  v0 = &byte_280AF5AF7;
  v1 = -480;
  v2 = &byte_280AF5AF7;
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

void sub_254D91874(_Unwind_Exception *a1)
{
  if (*(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  v5 = *(v1 + 256);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 240);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 224);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v1 + 208);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  siri::intelligence::ExecutionState::~ExecutionState((v3 + 48));
  siri::intelligence::Memory::~Memory(v2);
  v9 = *(v1 + 16);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::Clear(siri::intelligence::Intelligence::Impl *this)
{
  siri::intelligence::ExecutionState::Clear((this + 96));
  siri::intelligence::FlowGraph::Clear((this + 8));
  (*(**(this + 3) + 24))(*(this + 3));
  std::__tree<std::string>::destroy(this + 72, *(this + 10));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = this + 80;
  v2 = *(this + 28);
  *(this + 27) = 0;
  *(this + 28) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  *(this + 31) = 0;
  *(this + 32) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(this + 304) = 0;
  *(this + 39) = 0;
  *(*(this + 25) + 40) = 0;
}

void sub_254D91A14(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Intelligence::Impl::SetLastInteractionTime(uint64_t this, double a2)
{
  *(this + 312) = a2;
  *(*(this + 200) + 40) = a2;
  return this;
}

void *siri::intelligence::Intelligence::GetGlobalVariables@<X0>(void *a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_22))
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string const&,char const*&,0>(v6, siri::intelligence::IE_GLOBAL_CURRENT_ACTIVITY, siri::intelligence::TYPE_STRING);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string const&,char const*&,0>(v7, siri::intelligence::IE_GLOBAL_PREVIOUS_ACTIVITY, siri::intelligence::TYPE_STRING);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string const&,char const*&,0>(v8, siri::intelligence::IE_GLOBAL_ACTIVE_INTENTS, siri::intelligence::TYPE_ARRAY);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string const&,char const*&,0>(v9, siri::intelligence::IE_GLOBAL_ACTIVE_LOCAL_INTENTS, siri::intelligence::TYPE_ARRAY);
    std::map<std::string,std::string>::map[abi:ne200100](&unk_280AF4960, &v6[0].__r_.__value_.__l.__data_, 4);
    for (i = 144; i != -48; i -= 48)
    {
      siri::intelligence::TestParseError::~TestParseError(&v6[i / 0x18].__r_.__value_.__l.__data_);
    }

    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &unk_280AF4960, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_22);
  }

  result = std::map<std::string,std::string>::map[abi:ne200100](a1, &unk_280AF4960);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254D91BAC(_Unwind_Exception *a1)
{
  v3 = (v1 + 144);
  v4 = -192;
  do
  {
    siri::intelligence::TestParseError::~TestParseError(v3);
    v3 = (v5 - 48);
    v4 += 48;
  }

  while (v4);
  __cxa_guard_abort(&_MergedGlobals_22);
  _Unwind_Resume(a1);
}

void *siri::intelligence::Intelligence::GetBuiltinIntents@<X0>(void *a1@<X8>)
{
  v2 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF4928, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_280AF4928);
    v2 = a1;
    if (v6)
    {
      if (siri::intelligence::IE_RECOVER_FROM_DEAD_END[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v7, *siri::intelligence::IE_RECOVER_FROM_DEAD_END, *&siri::intelligence::IE_RECOVER_FROM_DEAD_END[8]);
      }

      else
      {
        v7 = *siri::intelligence::IE_RECOVER_FROM_DEAD_END;
      }

      std::set<std::string>::set[abi:ne200100](&unk_280AF4978, &v7.__r_.__value_.__l.__data_, 1);
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &unk_280AF4978, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4928);
      v2 = a1;
    }
  }

  result = std::set<std::string>::set[abi:ne200100](v2, &unk_280AF4978);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void siri::intelligence::Intelligence::SetCallbacks(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 240);
  *(v2 + 232) = v4;
  *(v2 + 240) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t siri::intelligence::Intelligence::GetCallbacks@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*this + 240);
  *a2 = *(*this + 232);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_254D9203C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  v29 = *(v27 - 64);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::GetActiveIntents(siri::intelligence::Intelligence::Impl **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  siri::intelligence::Intelligence::Impl::GetContext(*a1, &v17);
  for (i = v17; i != v18; i += 24)
  {
    if (!a2 || !*(i + 16))
    {
      v8 = *i;
      v7 = *(i + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (v8)
        {
          v8 = *i;
          v9 = *(i + 8);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

LABEL_9:
          v10 = *(v8 + 72);
          v11 = *(v8 + 80);
          while (v10 != v11)
          {
            v12 = *a1;
            v13 = std::__tree<std::string>::find<std::string>(*(*a1 + 1) + 88, (*v10 + 24));
            if (*(v12 + 1) + 96 == v13)
            {
              v16 = 0uLL;
            }

            else
            {
              v14 = *(v13 + 56);
              v15 = *(v13 + 64);
              *&v16 = v14;
              *(&v16 + 1) = v15;
              if (v15)
              {
                atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
              }

              if (v14 && v20 == std::__tree<std::string>::find<std::string>(&v19, (*v10 + 24)))
              {
                std::vector<std::shared_ptr<siri::intelligence::Intent>>::push_back[abi:ne200100](a3, &v16);
                std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v19, (*v10 + 24));
              }
            }

            if (*(&v16 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
            }

            v10 += 16;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_9;
      }
    }
  }

  *&v16 = &v17;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v16);
  std::__tree<std::string>::destroy(&v19, v20[0]);
}

void sub_254D922C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char *a15)
{
  std::__tree<std::string>::destroy(&a14, a15);
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::Intelligence::Impl::Load(uint64_t a1, const char *a2, uint64_t *a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  siri::intelligence::Log::Debug("Loading intelligence from %s", a2, v5);
  siri::intelligence::Intelligence::GetGlobalVariables(&v8);
  siri::intelligence::Memory::SetGlobalVariables(a1 + 24, &v8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v8, v8.__r_.__value_.__l.__size_);
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "2.0.8");
    siri::intelligence::Updater::UpdateToVersion(a2);
  }

  siri::intelligence::Log::Error("NULL intelligence", v6);
  return 0;
}

void siri::intelligence::Intelligence::Load(siri::intelligence::Intelligence::Impl **this, protobuf::Intelligence *a2)
{
  siri::intelligence::Log::Debug("Loading an intelligence protobuf.", a2);
  siri::intelligence::Intelligence::Impl::Clear(*this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "load");
  siri::intelligence::Timer::Timer(&v4);
}

void sub_254D95870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = a17;
  a17 = 0;
  if (v18)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a17, v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Load(siri::intelligence::Intelligence::Impl **a1, const char *a2)
{
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  siri::intelligence::Log::Info("Loading flow file: %s", a2, v3);
  siri::intelligence::Intelligence::Impl::Clear(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "load");
  siri::intelligence::Timer::Timer(&v5);
}

void sub_254D95A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 - 40);
  *(v16 - 48) = &unk_28671C180;
  *(v16 - 40) = 0;
  if (v18)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v16 - 40, v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::GetLastResponseBeforeInputGroup(siri::intelligence::Intelligence::Impl *this@<X0>, char ***a2@<X8>)
{
  v4 = *(this + 13);
  if (*(this + 12) == v4 || (v6 = *(v4 - 24), v5 = *(v4 - 16), v6 == v5))
  {
    v7 = 0;
    v36 = 0;
    v37 = 0;
LABEL_8:
    v9 = *(this + 21);
    if (v9 == *(this + 22))
    {
      v8 = 0;
    }

    else
    {
      siri::intelligence::FlowGraph::GetResponse(this + 1, v9, &v34);
      v8 = v34;
      v10 = v35[0];
      v36 = v34;
      v37 = v35[0];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v7 = v10;
    }

    goto LABEL_13;
  }

  v8 = *(v5 - 56);
  v7 = *(v5 - 48);
  v36 = v8;
  v37 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_13:
  v28 = a2;
  v29 = v7;
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
LABEL_14:
  while (2)
  {
    if (!v8)
    {
      v24 = v29;
      goto LABEL_62;
    }

    v12 = v8[12];
    v11 = v8[13];
    if (v12 == v11)
    {
      v20 = 3;
      break;
    }

    v13 = 0;
    while (1)
    {
      if (v12[23] < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *v12, *(v12 + 1));
      }

      else
      {
        v14 = *v12;
        v33.__r_.__value_.__r.__words[2] = *(v12 + 2);
        *&v33.__r_.__value_.__l.__data_ = v14;
      }

      siri::intelligence::FlowGraph::GetResponse(this + 1, &v33, &v31);
      v15 = v31;
      v16 = v32;
      v17 = v31 == 0;
      if (!v31)
      {
        v20 = 5;
        goto LABEL_30;
      }

      v30[0] = v31;
      v30[1] = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = siri::intelligence::Intelligence::Impl::CheckCondition(this, v30);
      v19 = v18;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        if ((v19 & 1) == 0)
        {
          LODWORD(v15) = 0;
          v17 = 1;
          v20 = 5;
LABEL_32:
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          goto LABEL_33;
        }

LABEL_28:
        if (v35 == std::__tree<std::string>::find<std::string>(&v34, &v33.__r_.__value_.__l.__data_))
        {
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v34, &v33.__r_.__value_.__l.__data_);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            v20 = 4;
            v13 = 1;
            v22 = v32;
          }

          else
          {
            v20 = 4;
            v13 = 1;
            v22 = v16;
          }

          v29 = v16;
          v8 = v15;
          LODWORD(v15) = 1;
LABEL_31:
          v16 = v22;
          if (!v22)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        siri::intelligence::Log::Warning("Detected infinite loop in GetLastResponseBeforeInputGroup()", v21);
        LODWORD(v15) = 0;
        *v28 = 0;
        v28[1] = 0;
        v20 = 1;
LABEL_30:
        v22 = v16;
        goto LABEL_31;
      }

      if (v18)
      {
        goto LABEL_28;
      }

      LODWORD(v15) = 0;
      v17 = 1;
      v20 = 5;
LABEL_33:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (!v17)
      {
        break;
      }

      v12 += 24;
      if (v12 == v11)
      {
        v36 = v8;
        v37 = v29;
        if (v13)
        {
          v20 = 0;
        }

        else
        {
          v20 = 3;
        }

        if (!v20)
        {
          goto LABEL_14;
        }

        goto LABEL_57;
      }
    }

    v36 = v8;
    v37 = v29;
    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = 3;
    }

    if (v15)
    {
      v20 = v23;
    }

    if (!v20)
    {
      continue;
    }

    break;
  }

LABEL_57:
  if (v20 != 3)
  {
    v26 = v29;
    goto LABEL_73;
  }

  v24 = v29;
  if (!v8)
  {
LABEL_62:
    v25 = v28;
    goto LABEL_71;
  }

  v25 = v28;
  if (*(v8 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v8[4], v8[5]);
  }

  else
  {
    v33 = *(v8 + 4);
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (size)
  {
LABEL_71:
    *v25 = v8;
    v25[1] = v24;
    v25 = &v36;
  }

  *v25 = 0;
  v25[1] = 0;
  v26 = v37;
LABEL_73:
  std::__tree<std::string>::destroy(&v34, v35[0]);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_254D95DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::string>::destroy(&a21, a22);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::Intelligence::Impl::CheckCondition(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (*(v2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(v2 + 56), *(v2 + 64));
  }

  else
  {
    v15 = *(v2 + 56);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v15.__r_.__value_.__l.__size_;
    operator delete(v15.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_8;
    }

    return 1;
  }

  if (!*(&v15.__r_.__value_.__s + 23))
  {
    return 1;
  }

LABEL_8:
  v6 = *a2;
  if (*(*a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(v6 + 56), *(v6 + 64));
  }

  else
  {
    v14 = *(v6 + 56);
  }

  siri::intelligence::Intelligence::Impl::Evaluate(a1, &v14, &v15);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v5 = siri::intelligence::StringToBool(&v15, 0);
  if (v5)
  {
    v9 = *a2;
    if (*(*a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *(v9 + 56), *(v9 + 64));
    }

    else
    {
      v14 = *(v9 + 56);
    }

    v11 = &v14;
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Debug("Condition '%s' => true", v8, v11);
  }

  else
  {
    v10 = *a2;
    if (*(*a2 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *(v10 + 56), *(v10 + 64));
    }

    else
    {
      v14 = *(v10 + 56);
    }

    v12 = &v14;
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v14.__r_.__value_.__r.__words[0];
    }

    siri::intelligence::Log::Debug("Condition '%s' => FALSE", v8, v12);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_254D96028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::GetContext(siri::intelligence::Intelligence::Impl *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  siri::intelligence::Intelligence::Impl::GetLastResponseBeforeInputGroup(this, &v19);
  if (v19)
  {
    if (*(v19 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v19[4], v19[5]);
    }

    else
    {
      v16 = *(v19 + 4);
    }

    siri::intelligence::FlowGraph::GetInputGroup(this + 1, &v16, &v17);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v4 = v17;
    if (v17)
    {
      v5 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v16.__r_.__value_.__r.__words[0] = v4;
      v16.__r_.__value_.__l.__size_ = v5;
      LODWORD(v16.__r_.__value_.__r.__words[2]) = 0;
      std::vector<siri::intelligence::Context>::push_back[abi:ne200100](a2, &v16);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v21, v4);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }

    else
    {
      v5 = v18;
      if (v18)
      {
        goto LABEL_12;
      }
    }
  }

  siri::intelligence::ExecutionState::GetInterjectionInputGroup((this + 96), &v16);
  siri::intelligence::FlowGraph::GetInputGroup(this + 1, &v16, &v17);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v6 = v17;
  if (v17 && v22 == std::__tree<std::string>::find<std::string>(&v21, v17))
  {
    v7 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v16.__r_.__value_.__r.__words[0] = v6;
    v16.__r_.__value_.__l.__size_ = v7;
    LODWORD(v16.__r_.__value_.__r.__words[2]) = 1;
    std::vector<siri::intelligence::Context>::push_back[abi:ne200100](a2, &v16);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v21, v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  siri::intelligence::Intelligence::GetActivity(*this, **this + 144, &v14);
  if (v14)
  {
    if (*(v14 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(v14 + 48), *(v14 + 56));
    }

    else
    {
      v16 = *(v14 + 48);
    }

    siri::intelligence::FlowGraph::GetInputGroup(this + 1, &v16, &v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v8 = v12;
    if (v12 && v22 == std::__tree<std::string>::find<std::string>(&v21, v12))
    {
      v9 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v16.__r_.__value_.__r.__words[0] = v8;
      v16.__r_.__value_.__l.__size_ = v9;
      LODWORD(v16.__r_.__value_.__r.__words[2]) = 2;
      std::vector<siri::intelligence::Context>::push_back[abi:ne200100](a2, &v16);
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v21, v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  siri::intelligence::FlowGraph::GetTopLevelInputGroup(this + 1, &qword_280AF4930, &v12);
  v10 = v12;
  if (v12 && v22 == std::__tree<std::string>::find<std::string>(&v21, v12))
  {
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v16.__r_.__value_.__r.__words[0] = v10;
    v16.__r_.__value_.__l.__size_ = v11;
    LODWORD(v16.__r_.__value_.__r.__words[2]) = 3;
    std::vector<siri::intelligence::Context>::push_back[abi:ne200100](a2, &v16);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v21, v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__tree<std::string>::destroy(&v21, v22[0]);
}

void sub_254D963D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__tree<std::string>::destroy(v23 - 72, *(v23 - 64));
  *(v23 - 72) = v22;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100]((v23 - 72));
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::Context>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = *(a2 + 8);
    v12 = 24 * v7;
    *v12 = *a2;
    *(v12 + 8) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(24 * v7 + 0x10) = *(a2 + 16);
    v6 = v12 + 24;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v12 + *a1 - v14;
      v17 = *a1;
      do
      {
        *v16 = *v17;
        *v17 = 0;
        v17[1] = 0;
        *(v16 + 16) = *(v17 + 4);
        v17 += 3;
        v16 += 24;
      }

      while (v17 != v14);
      do
      {
        v18 = v13[1];
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(v3 + 16) = *(a2 + 16);
    v6 = v3 + 24;
  }

  a1[1] = v6;
}

void siri::intelligence::Intelligence::Impl::Evaluate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  v6 = std::__tree<std::string>::find<std::string>(*(a1 + 8) + 112, a2);
  if (*(a1 + 8) + 120 == v6)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v7 = *(v6 + 56);
  v8 = *(v6 + 64);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    siri::intelligence::Memory::ExpandVariables(a1 + 24, &v14, __p);
    v10 = siri::intelligence::Expression::Evaluate((a1 + 200), __p, a3);
    v11 = v10;
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    else if (v10)
    {
      goto LABEL_18;
    }

    MEMORY[0x259C299D0](a3, &str_13_2);
    goto LABEL_18;
  }

  if (siri::intelligence::ConditionEntry::Evaluate((v7 + 3), (a1 + 24), v7))
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(a3, v9);
LABEL_18:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_254D967B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::GetFallbackResponses(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(*a2 + 24); i != *(*a2 + 32); i += 24)
  {
    siri::intelligence::FlowGraph::GetResponse((a1 + 8), i, &v18);
    v8 = v18;
    v7 = v19;
    if (v18)
    {
      v17[0] = v18;
      v17[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = siri::intelligence::Intelligence::Impl::CheckCondition(a1, v17);
      v10 = v9;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if ((v10 & 1) == 0)
        {
          goto LABEL_17;
        }

        v15 = 0;
        v16 = 0;
        v14 = 0;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        if (!v9)
        {
          continue;
        }

        v15 = 0;
        v16 = 0;
        v14 = 0;
      }

      v13[0] = v8;
      v13[1] = v7;
      v11 = *a2;
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13[2] = v11;
      v13[3] = v12;
      std::vector<siri::intelligence::RuleMatch>::push_back[abi:ne200100](a3, v13);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    if (v7)
    {
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_254D9694C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  siri::intelligence::RuleMatch::~RuleMatch(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<siri::intelligence::RuleMatch>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if ((v6 + 1) > 0x492492492492492)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::RuleMatch>>(v9);
    }

    v10 = 56 * v6;
    std::allocator<siri::intelligence::RuleMatch>::construct[abi:ne200100]<siri::intelligence::RuleMatch,siri::intelligence::RuleMatch const&>(v10, a2);
    v5 = v10 + 56;
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = v13;
      v15 = *a1;
      do
      {
        *v14 = *v15;
        *v15 = 0;
        v15[1] = 0;
        *(v14 + 16) = *(v15 + 1);
        v15[2] = 0;
        v15[3] = 0;
        *(v14 + 32) = *(v15 + 8);
        *(v14 + 40) = *(v15 + 5);
        v15[5] = 0;
        v15[6] = 0;
        v15 += 7;
        v14 += 56;
      }

      while (v15 != v12);
      do
      {
        std::allocator_traits<std::allocator<siri::intelligence::RuleMatch>>::destroy[abi:ne200100]<siri::intelligence::RuleMatch,0>(v11);
        v11 += 7;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    std::allocator<siri::intelligence::RuleMatch>::construct[abi:ne200100]<siri::intelligence::RuleMatch,siri::intelligence::RuleMatch const&>(a1[1], a2);
    v5 = v4 + 56;
  }

  a1[1] = v5;
}

void siri::intelligence::RuleMatch::~RuleMatch(siri::intelligence::RuleMatch *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void siri::intelligence::Intelligence::Impl::PickResponseFirst(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_8:
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }

  else
  {
    while (1)
    {
      v7 = *(v4 + 8);
      v12[0] = *v4;
      v12[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = siri::intelligence::Intelligence::Impl::CheckCondition(a1, v12);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v8)
      {
        break;
      }

      v4 += 56;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v9 = *(v4 + 8);
    *a3 = *v4;
    *(a3 + 8) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v4 + 24);
    *(a3 + 16) = *(v4 + 16);
    *(a3 + 24) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 32) = *(v4 + 32);
    v11 = *(v4 + 48);
    *(a3 + 40) = *(v4 + 40);
    *(a3 + 48) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_254D96C4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::PickResponseRandom(void *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a1) >> 3);
    if (v3 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<siri::intelligence::RuleMatch>>(v3);
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
}

void sub_254D9773C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  siri::intelligence::RuleMatch::~RuleMatch(&a29);
  a29 = (v35 - 128);
  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::FindResponse(siri::intelligence::Intelligence::Impl *this@<X0>, const siri::intelligence::Intent *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a3;
  a3[5] = 0;
  a3[6] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 8) = 0;
  siri::intelligence::Intelligence::Impl::GetContext(this, &v78);
  v8 = v78;
  v7 = v79;
  if (v78 == v79)
  {
LABEL_129:
    v62.__r_.__value_.__r.__words[0] = &v78;
    std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v62);
    return;
  }

  v58 = v5;
  if (!a2)
  {
    v57 = 0;
    v42 = 0;
LABEL_106:
    if (v8 != v7)
    {
      do
      {
        v43 = *v8;
        v44 = v8[1];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v43;
        if (*(v43 + 23) < 0)
        {
          v45 = *v43;
        }

        siri::intelligence::Log::Debug("Find fallback in context: %s", v6, v45);
        v61[0] = v43;
        v61[1] = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::intelligence::Intelligence::Impl::GetFallbackResponses(this, v61, &v73);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        siri::intelligence::Intelligence::Impl::PickResponseRandom(&v73, &v62);
        v46 = *&v62.__r_.__value_.__l.__data_;
        *&v62.__r_.__value_.__l.__data_ = 0uLL;
        *v5 = v46;
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          v57 = v5[3];
        }

        v47 = v62.__r_.__value_.__r.__words[2];
        v48 = v63;
        v62.__r_.__value_.__r.__words[2] = 0;
        v63 = 0;
        v5[2] = v47;
        v5[3] = v48;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }

        *(v5 + 8) = v64;
        v49 = v5[6];
        *(v5 + 5) = v65;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (v62.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62.__r_.__value_.__l.__size_);
        }

        v50 = *v5;
        v62.__r_.__value_.__r.__words[0] = &v73;
        std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&v62);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (v50)
        {
          break;
        }

        v8 += 3;
        v57 = v48;
        v42 = *(&v46 + 1);
        v5 = v58;
      }

      while (v8 != v79);
    }

    goto LABEL_129;
  }

  siri::intelligence::Intelligence::Impl::GetCurrentInputGroup(this, &v76);
  v9 = v78;
  if (v78 == v79)
  {
    v42 = 0;
    v57 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 1;
    goto LABEL_102;
  }

  v53 = 0;
  v54 = 0;
  v57 = 0;
  v55 = 0;
  while (2)
  {
    v10 = v9[1];
    v59 = *v9;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    std::vector<std::shared_ptr<siri::intelligence::IntentReference>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::IntentReference>*,std::shared_ptr<siri::intelligence::IntentReference>*>(&v73, *(v59 + 72), *(v59 + 80), (*(v59 + 80) - *(v59 + 72)) >> 4);
    v11 = v73;
    if (v74 == v73)
    {
      v27 = 5;
      goto LABEL_94;
    }

    v56 = v9;
    v12 = 0;
    do
    {
      v13 = *(v11 + 16 * v12);
      v60 = v13;
      v14 = *(v11 + 16 * v12 + 8);
      if (*(&v13 + 1))
      {
        atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v15 = v76;
      v16 = v77;
      if (v77)
      {
        atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(&v13 + 1))
      {
        atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 13);
      if (*(this + 12) == v17 || (v19 = *(v17 - 24), v18 = *(v17 - 16), v19 == v18))
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v18 - 8);
      }

      if (!v13 || (v21 = 1, v15) && v59 != v15 && ((*(v15 + 48) != 1) & ~v20) == 0 && ((v22 = *(v13 + 80)) == 0 || *v22 != 1))
      {
        v21 = 0;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (!v21 || (v23 = std::__tree<std::string>::find<std::string>(*(this + 1) + 88, (v60 + 24)), *(this + 1) + 96 == v23))
      {
        v27 = 7;
        goto LABEL_45;
      }

      v24 = *(v23 + 56);
      v25 = *(v23 + 64);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v24 || !siri::intelligence::Intent::IsEqual(a2, v24))
      {
        v27 = 7;
        if (!v25)
        {
          goto LABEL_45;
        }

LABEL_44:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        goto LABEL_45;
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(a2 + 3), *(a2 + 4));
      }

      else
      {
        v62 = *(a2 + 1);
      }

      v28 = &v62;
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v62.__r_.__value_.__r.__words[0];
      }

      siri::intelligence::Log::Debug("Matched an Intent: %s", v26, v28);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      std::map<std::string,std::string>::map[abi:ne200100](&v71, a2 + 21);
      v29 = v71;
      if (v71 != v72)
      {
        do
        {
          siri::intelligence::Intent::GetEntityName(v29 + 4, &v62);
          if (*(v29 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v70, v29[7], v29[8]);
          }

          else
          {
            v70 = *(v29 + 7);
          }

          siri::intelligence::Memory::GetVariable(this + 24, &v62, &v68);
          if (v68)
          {
            (*v68)[2](v68, &v70);
          }

          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          v30 = v29[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v29[2];
              v32 = *v31 == v29;
              v29 = v31;
            }

            while (!v32);
          }

          v29 = v31;
        }

        while (v31 != v72);
      }

      memset(&v70, 0, sizeof(v70));
      v67[0] = v59;
      v67[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v66 = v60;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::Intelligence::Impl::AppendResponses(this, &v70, (v60 + 48), v67, &v66, *(v56 + 4));
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      siri::intelligence::Intelligence::Impl::PickResponseRandom(&v70, &v62);
      v33 = *&v62.__r_.__value_.__l.__data_;
      *&v62.__r_.__value_.__l.__data_ = 0uLL;
      v34 = v5[1];
      *v5 = v33;
      v54 = *(&v33 + 1);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      v35 = v63;
      v36 = v5[3];
      v5[2] = v62.__r_.__value_.__r.__words[2];
      v5[3] = v35;
      v57 = v35;
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      *(v5 + 8) = v64;
      v37 = *(&v65 + 1);
      v38 = v5[6];
      v5[5] = v65;
      v5[6] = v37;
      v53 = v37;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (v33)
      {
        v27 = 1;
      }

      else
      {
        v27 = 7;
      }

      v55 |= v33 != 0;
      v62.__r_.__value_.__r.__words[0] = &v70;
      std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&v62);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v71, v72[0]);
      if (v25)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (v27 != 7)
      {
        goto LABEL_93;
      }

      ++v12;
      v11 = v73;
    }

    while (v12 < (v74 - v73) >> 4);
    v27 = 5;
LABEL_93:
    v9 = v56;
LABEL_94:
    v62.__r_.__value_.__r.__words[0] = &v73;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v62);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v27 == 5)
    {
      v9 += 3;
      if (v9 == v79)
      {
        LOBYTE(v27) = 2;
        break;
      }

      continue;
    }

    break;
  }

  v39 = (v27 & 5) == 0;
  v40 = v55;
  v41 = v53;
  v42 = v54;
LABEL_102:
  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v77);
  }

  if (v39)
  {
    v8 = v78;
    v7 = v79;
    goto LABEL_106;
  }

  v62.__r_.__value_.__r.__words[0] = &v78;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v62);
  if ((v40 & 1) == 0)
  {
    v51 = v57;
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      v51 = v5[3];
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v52 = v5[1];
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }
  }
}

void sub_254D97F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  __p = (v44 - 112);
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&__p);
  siri::intelligence::RuleMatch::~RuleMatch(v43);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::GetCurrentInputGroup(siri::intelligence::Intelligence::Impl *this@<X0>, void *a2@<X8>)
{
  siri::intelligence::Intelligence::Impl::GetContext(this, v4);
  if (0xAAAAAAAAAAAAAAABLL * ((v4[1] - v4[0]) >> 3) > 1)
  {
    v3 = *(v4[0] + 8);
    *a2 = *v4[0];
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v5 = v4;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void siri::intelligence::Intelligence::Impl::AppendResponses(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string::size_type *a4, uint64_t *a5, int a6)
{
  v6 = *a3;
  if (a3[1] != *a3)
  {
    for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3); ++i)
    {
      siri::intelligence::StringTrim(" \t\n\r", (v6 + 24 * i), &__p);
      siri::intelligence::FlowGraph::GetResponse((a1 + 8), &__p, &v32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = v32;
      v12 = v33;
      if (v32)
      {
        v31[0] = v32;
        v31[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        v13 = siri::intelligence::Intelligence::Impl::CheckCondition(a1, v31);
        v14 = v13;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          if ((v14 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (!v13)
        {
          goto LABEL_34;
        }

        v15 = *a2;
        v16 = a2[1] - *a2;
        if (v16)
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 3);
          if (v17 <= 1)
          {
            v17 = 1;
          }

          while (*v15 != v11)
          {
            v15 += 7;
            if (!--v17)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v29 = 0;
          v30 = 0;
          v28 = 0;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          __p.__r_.__value_.__r.__words[0] = v11;
          __p.__r_.__value_.__l.__size_ = v12;
          v19 = *a4;
          v18 = a4[1];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          __p.__r_.__value_.__r.__words[2] = v19;
          v27 = v18;
          v20 = *a5;
          v21 = a5[1];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = v30;
            v29 = v20;
            v30 = v21;
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }
          }

          else
          {
            v29 = *a5;
            v30 = 0;
          }

          v28 = a6;
          std::vector<siri::intelligence::RuleMatch>::push_back[abi:ne200100](a2, &__p);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
          }

          v12 = v33;
        }
      }

      if (v12)
      {
LABEL_33:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

LABEL_34:
      v6 = *a3;
    }
  }
}

void sub_254D98398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  siri::intelligence::RuleMatch::~RuleMatch(&__p);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::AddResponseToConversation(uint64_t a1, uint64_t *a2, int a3)
{
  if (!*a2)
  {
    return;
  }

  if (a3 == 1)
  {
    v5 = a2[1];
    v14 = *a2;
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::intelligence::ExecutionState::PushLastResponse((a1 + 96), &v14);
    v6 = v15;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    siri::intelligence::ExecutionState::SetLastResponse((a1 + 96), &v12);
    v6 = v13;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_11:
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gettimeofday(&v16, 0);
  siri::intelligence::FlowGraph::SetResponseLastTimestamp((a1 + 8), v11, *(a1 + 296) + v16.tv_usec / 1000000.0 + v16.tv_sec);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = a2[1];
  v10[0] = *a2;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  siri::intelligence::FlowGraph::IncrementResponseVisitCount((a1 + 8), v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_254D9851C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::Intelligence::Impl::NewConversationTurn(siri::intelligence::Intelligence::Impl *this)
{
  v1 = this;
  *(this + 304) = 0;
  gettimeofday(&v4, 0);
  v2 = v4.tv_usec / 1000000.0 + v4.tv_sec;
  v3 = *(v1 + 10);
  v1 = (v1 + 80);
  *(v1 + 29) = v2;
  *(*(v1 + 15) + 40) = v2;
  std::__tree<std::string>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void siri::intelligence::Intelligence::Impl::SetupConversation(siri::intelligence::Intelligence::Impl *a1, uint64_t *a2, int a3)
{
  siri::intelligence::Intelligence::Impl::NewConversationTurn(a1);
  v6 = *a2;
  v7 = a2[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  siri::intelligence::Intelligence::Impl::AddResponseToConversation(a1, v8, a3);
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D98660(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::intelligence::Intelligence::WasLastResponseAnInterruption(siri::intelligence::Intelligence *this)
{
  if (*(*this + 96) == *(*this + 104))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*this + 136);
  }

  return v1 & 1;
}

void siri::intelligence::Intelligence::Impl::GetIntentMatch(std::string *a1@<X1>, siri::intelligence::Intent *a2@<X8>)
{
  v3 = a1;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, a1->__r_.__value_.__l.__data_, a1->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *a1;
  }

  size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = 1;
      p_data = &v3->__r_.__value_.__l.__data_;
LABEL_13:
      std::string::__init_copy_ctor_external(&__str, *p_data, v3->__r_.__value_.__r.__words[v6]);
LABEL_14:
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      siri::intelligence::Intent::Intent(a2);
    }
  }

  else
  {
    p_data = &v3[1].__r_.__value_.__l.__data_;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = 4;
      goto LABEL_13;
    }

    ++v3;
  }

  __str = *v3;
  goto LABEL_14;
}

void sub_254D98894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  siri::intelligence::Intent::~Intent(v25);
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_254D98B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  *v31 = v33;
  v31[1] = v32;
  a9 = &a12;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  __p = &a22;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  siri::intelligence::Intent::~Intent(&a31);
  _Unwind_Resume(a1);
}

void siri::intelligence::Intelligence::Impl::SetupInterjection(siri::intelligence::Intelligence::Impl *this, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    *a3 = 0;
    return;
  }

  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v33 = *(a2 + 8);
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v32 = *(a2 + 32);
  }

  if (v6)
  {
    *a3 = 1;
    siri::intelligence::Intelligence::Impl::GetCurrentInputGroup(this, &v30);
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      siri::intelligence::FlowGraph::GetResponse(this + 1, &v33, &v28);
      v10 = v28;
      if (v28)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v11 = *(this + 13);
    if (*(this + 12) == v11 || (v13 = *(v11 - 24), v12 = *(v11 - 16), v13 == v12))
    {
      v10 = 0;
      if (v7)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v10 = 0;
    *(v12 - 40) = 257;
LABEL_20:
    if (v7)
    {
LABEL_21:
      siri::intelligence::ExecutionState::RewindToLastCharacterResponse((this + 96));
      goto LABEL_42;
    }

LABEL_23:
    if (v8 && v30 && *(v30 + 24) != *(v30 + 32))
    {
      v14 = v31;
      v26[0] = v30;
      v26[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::Intelligence::Impl::GetFallbackResponses(this, v26, v27);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      siri::intelligence::Intelligence::Impl::PickResponseRandom(v27, &v22);
      if (v22)
      {
        v15 = v23;
        v21[0] = v22;
        v21[1] = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::intelligence::Intelligence::Impl::AddResponseToConversation(this, v21, 0);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v22 = v27;
      std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&v22);
    }

LABEL_42:
    if (v10)
    {
      v16 = v29;
      v20[0] = v10;
      v20[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::Intelligence::Impl::AddResponseToConversation(this, v20, 1);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }

    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v32.__r_.__value_.__l.__size_;
    }

    if (!v17)
    {
      goto LABEL_57;
    }

    siri::intelligence::FlowGraph::GetResponse(this + 1, &v32, &v22);
    v18 = v23;
    if (v22)
    {
      v19[0] = v22;
      v19[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::intelligence::Intelligence::Impl::AddResponseToConversation(this, v19, 1);
      if (!v18)
      {
        goto LABEL_57;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else if (!v23)
    {
LABEL_57:
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      goto LABEL_61;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    goto LABEL_57;
  }

  *a3 = 0;
LABEL_61:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_254D98F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  siri::intelligence::RuleMatch::~RuleMatch(&a15);
  a15 = &a24;
  std::vector<siri::intelligence::RuleMatch>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v31 = *(v29 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (*(v29 - 105) < 0)
  {
    operator delete(*(v29 - 128));
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(a1);
}

BOOL siri::intelligence::Intelligence::WillHandleIntent(siri::intelligence::Intelligence::Impl **this, const siri::intelligence::Intent *a2)
{
  siri::intelligence::Intelligence::Impl::FindResponse(*this, a2, &v4);
  v2 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2 != 0;
}

uint64_t siri::intelligence::Intelligence::HasActiveFallback(siri::intelligence::Intelligence::Impl **a1, int a2)
{
  siri::intelligence::Intelligence::Impl::GetContext(*a1, &v12);
  v4 = v12;
  v3 = v13;
  if (v12 != v13)
  {
    while (1)
    {
      if (a2 && *(v4 + 16))
      {
        goto LABEL_14;
      }

      v5 = *v4;
      v6 = *(v4 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        break;
      }

      v9 = 0;
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (v9)
      {
        v10 = 1;
        goto LABEL_20;
      }

      v3 = v13;
LABEL_14:
      v4 += 24;
      if (v4 == v3)
      {
        goto LABEL_18;
      }
    }

    v8 = *v4;
    v7 = *(v4 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(v8 + 32) != *(v8 + 24);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *(v8 + 32) != *(v8 + 24);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_12;
  }

LABEL_18:
  v10 = 0;
LABEL_20:
  v14 = &v12;
  std::vector<siri::intelligence::Context>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v10;
}

void siri::intelligence::Intelligence::Impl::FindIntentForDirectInvocation(void **this@<X0>, std::string *a2@<X1>, uint64_t *a3@<X8>)
{
  siri::intelligence::FlowGraph::GetIntents(this + 1, &v72);
  v4 = v72;
  v60 = v73;
  if (v72 == v73)
  {
LABEL_134:
    v69 = &v72;
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v69);
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v62 = a3[1];
  v63 = *a3;
  while (2)
  {
    v5 = *v4;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v69, *(v5 + 120), *(v5 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 128) - *(v5 + 120)) >> 3));
    v6 = v69;
    v7 = v70;
    while (v6 != v7)
    {
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v68, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        v68 = *a2;
      }

      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = *(v6 + 23);
      }

      else
      {
        v9 = v6[1];
      }

      size = HIBYTE(v68.__r_.__value_.__r.__words[2]);
      v11 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v68.__r_.__value_.__l.__size_;
      }

      if (v9 != size)
      {
        v14 = 0;
        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_23:
        operator delete(v68.__r_.__value_.__l.__data_);
        goto LABEL_24;
      }

      if (v8 >= 0)
      {
        v12 = v6;
      }

      else
      {
        v12 = *v6;
      }

      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v68;
      }

      else
      {
        v13 = v68.__r_.__value_.__r.__words[0];
      }

      v14 = memcmp(v12, v13, v9) == 0;
      if (v11 < 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v14)
      {
        v59 = v4[1];
        *a3 = *v4;
        a3[1] = v59;
        if (v59)
        {
          atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
        }

        v68.__r_.__value_.__r.__words[0] = &v69;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
        goto LABEL_138;
      }

      v6 += 3;
    }

    v68.__r_.__value_.__r.__words[0] = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
    v15 = *v4;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    std::vector<siri::intelligence::NLParameters>::__init_with_size[abi:ne200100]<siri::intelligence::NLParameters*,siri::intelligence::NLParameters*>(&v69, *(v15 + 192), *(v15 + 200), 0xCCCCCCCCCCCCCCCDLL * ((*(v15 + 200) - *(v15 + 192)) >> 3));
    v17 = v69;
    v16 = v70;
    v65 = v4;
    if (v69 == v70)
    {
LABEL_133:
      v68.__r_.__value_.__r.__words[0] = &v69;
      std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&v68);
      v4 += 2;
      if (v4 == v60)
      {
        goto LABEL_134;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    if (*(v17 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, *v17, v17[1]);
    }

    else
    {
      v18 = *v17;
      v68.__r_.__value_.__r.__words[2] = v17[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
    }

    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      break;
    }

    if (v68.__r_.__value_.__l.__size_ != 16)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
      goto LABEL_129;
    }

    v21 = *v68.__r_.__value_.__l.__data_ != 0x6E49746365726964 || *(v68.__r_.__value_.__r.__words[0] + 8) != 0x6E6F697461636F76;
    operator delete(v68.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_46;
    }

LABEL_129:
    v17 += 5;
    if (v17 == v16)
    {
      goto LABEL_133;
    }
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) != 16)
  {
    goto LABEL_129;
  }

  if (v68.__r_.__value_.__r.__words[0] != 0x6E49746365726964 || v68.__r_.__value_.__l.__size_ != 0x6E6F697461636F76)
  {
    goto LABEL_129;
  }

LABEL_46:
  v22 = v17[3];
  v23 = v17[4];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, "invocations");
  v24 = std::__tree<std::string>::find<std::string>((v22 + 72), &v68.__r_.__value_.__l.__data_);
  v25 = v24;
  if (v22 + 80 == v24)
  {
    v32 = 0;
    v30 = 0;
  }

  else
  {
    v26 = *(v24 + 56);
    v27 = *(v25 + 64);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v30 = v29;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = v27;
        goto LABEL_57;
      }

      v32 = 0;
    }

    else
    {
      v31 = 0;
      v30 = 0;
      v32 = 0;
      if (v27)
      {
LABEL_57:
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        v32 = v31;
      }
    }
  }

  v64 = v32;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
    if (v23)
    {
LABEL_61:
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else if (v23)
  {
    goto LABEL_61;
  }

  if (!v30)
  {
    v58 = 7;
    goto LABEL_125;
  }

  memset(&v68, 0, sizeof(v68));
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&v68, v30[9], v30[10], (v30[10] - v30[9]) >> 4);
  v34 = v68.__r_.__value_.__l.__size_;
  v33 = v68.__r_.__value_.__r.__words[0];
  while (2)
  {
    if (v33 == v34)
    {
      __p.__r_.__value_.__r.__words[0] = &v68;
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v58 = 0;
      goto LABEL_121;
    }

    v35 = *v33;
    if (!*v33)
    {
      goto LABEL_116;
    }

    v36 = **v35;
    if (!v37)
    {
      goto LABEL_116;
    }

    v38 = v37;
    v39 = *(v33 + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "identifier");
    v40 = std::__tree<std::string>::find<std::string>((v38 + 72), &__p.__r_.__value_.__l.__data_);
    v41 = v40;
    if (v38 + 80 == v40)
    {
      v48 = 0;
      v46 = 0;
    }

    else
    {
      v42 = *(v40 + 56);
      v43 = *(v41 + 64);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v46 = v45;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          v47 = v43;
          goto LABEL_77;
        }

        v48 = 0;
      }

      else
      {
        v47 = 0;
        v46 = 0;
        v48 = 0;
        if (v43)
        {
LABEL_77:
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          v48 = v47;
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v46)
      {
        goto LABEL_111;
      }
    }

    else if (!v46)
    {
LABEL_111:
      v57 = 1;
      if (v48)
      {
        goto LABEL_112;
      }

      goto LABEL_113;
    }

    if (v46[95] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v46 + 9), *(v46 + 10));
    }

    else
    {
      __p = *(v46 + 3);
    }

    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v66, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v66 = *a2;
    }

    v49 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    v52 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v66.__r_.__value_.__l.__size_;
    }

    if (v50 == v51)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v66;
      }

      else
      {
        v54 = v66.__r_.__value_.__r.__words[0];
      }

      v55 = memcmp(p_p, v54, v50) == 0;
      if (v52 < 0)
      {
LABEL_109:
        operator delete(v66.__r_.__value_.__l.__data_);
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_110;
        }

LABEL_105:
        if (!v55)
        {
          goto LABEL_111;
        }

        goto LABEL_106;
      }
    }

    else
    {
      v55 = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_109;
      }
    }

    if ((v49 & 0x80) == 0)
    {
      goto LABEL_105;
    }

LABEL_110:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v55)
    {
      goto LABEL_111;
    }

LABEL_106:
    v56 = v65[1];
    v63 = *v65;
    if (v56)
    {
      v57 = 0;
      v62 = v65[1];
      atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
      if (v48)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v62 = 0;
      v57 = 0;
      if (v48)
      {
LABEL_112:
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }
    }

LABEL_113:
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v57)
    {
LABEL_116:
      v33 += 16;
      continue;
    }

    break;
  }

  __p.__r_.__value_.__r.__words[0] = &v68;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v58 = 1;
LABEL_121:
  v4 = v65;
LABEL_125:
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (v58 == 7 || !v58)
  {
    goto LABEL_129;
  }

  *a3 = v63;
  a3[1] = v62;
  v68.__r_.__value_.__r.__words[0] = &v69;
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&v68);
LABEL_138:
  v69 = &v72;
  std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v69);
}