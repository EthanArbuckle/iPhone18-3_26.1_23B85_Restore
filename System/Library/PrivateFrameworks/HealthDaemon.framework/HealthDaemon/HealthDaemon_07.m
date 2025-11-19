void sub_228A92174()
{
  std::mutex::unlock((v0 + 416));
  __cxa_end_catch();
  JUMPOUT(0x228A9218CLL);
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::TransactionalCache<unsigned long long,health::FilePage>::discardEntriesForTransaction(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v5 = v2[11];
      if (v2[1] == a2)
      {
        v6 = v2[3];
        a1[1] -= v2[2];
        v9[0] = v6;
        v7 = v2[10];
        if (v7)
        {
          *(v7 + 88) = v5;
        }

        if (v5)
        {
          v5[10] = v7;
        }

        if (a1[8] == v2)
        {
          a1[8] = v5;
        }

        if (a1[7] == v2)
        {
          a1[7] = v2[10];
        }

        v9[1] = v9;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 2, v6);
        health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine::removeEntry(v8 + 3, v2);
        if (v8[4] == v8[3])
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(a1 + 2, v9[0]);
        }
      }

      v2 = v5;
    }

    while (v5);
  }
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  std::unique_lock<std::mutex>::lock[abi:ne200100](*(a1 + 8));
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v1 + 328), v1 + 352);
  v2 = *(**(v1 + 328) + 16);

  return v2();
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#2}>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE6D70;
  a2[1] = v2;
  return result;
}

void std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = v5[41];
  v7 = *a3;
  v8 = *(a3 + 16);
  if (!v8)
  {
    v8 = (*(**(a3 + 32) + 16))(*(a3 + 32));
  }

  (*(*v6 + 24))(v6, v7, v8, *(a3 + 8));
  v9 = *a3;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::find<unsigned long long>(v5 + 62, *a3);
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v11 != v12)
    {
      v13 = v5[61];
      v14 = v5[68];
      v15 = v5[67];
      do
      {
        v16 = *v11;
        v17 = *(*v11 + 16);
        v19 = *(*v11 + 80);
        v18 = *(*v11 + 88);
        if (v19)
        {
          *(v19 + 88) = v18;
        }

        if (v18)
        {
          *(v18 + 80) = v19;
        }

        if (v14 == v16)
        {
          v5[68] = v18;
          v14 = v18;
        }

        if (v15 == v16)
        {
          v15 = *(v16 + 80);
          v5[67] = v15;
        }

        v13 -= v17;
        ++v11;
      }

      while (v11 != v12);
      v5[61] = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,health::TransactionalCache<unsigned long long,health::FilePage>::CacheLine>>>::__erase_unique<unsigned long long>(v5 + 62, v9);
    v9 = *a3;
  }

  v29 = v9;
  v24 = *a3;
  v20 = *(a3 + 24);
  v25 = *(a3 + 16);
  v26 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a3 + 32);
  v22 = *(a3 + 40);
  v27 = v21;
  v28 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = *(a3 + 32);
  }

  if (v21)
  {
    v23 = 48;
  }

  else
  {
    v23 = *(a3 + 8);
  }

  health::TransactionalCache<unsigned long long,health::FilePage>::setValueForKey(v5 + 60, v4, &v29, &v24, v23, 0);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long,health::FilePage const&)#1}>,void ()(unsigned long long,health::FilePage const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE6DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  health::VirtualFile::write<health::TransactionalFile::FileHeader>(*(v2 + 328), v2 + 352);
  (*(**(v2 + 328) + 16))(*(v2 + 328));
  v3 = *(a1 + 16);

  std::unique_lock<std::mutex>::unlock[abi:ne200100](v3);
}

uint64_t std::__function::__func<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3},std::allocator<health::TransactionalFile::writeTransactionWithLambda(std::function<BOOL ()(health::TransactionalFile::WriteTransaction &)>)::$_0::operator() const(void)::{lambda(unsigned long long)#3}>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v11);
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

void sub_228A956C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, _Unwind_Exception *exception_objecta, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  _Block_object_dispose(&STACK[0x228], 8);
  v48 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v48;
    operator delete(v48);
  }

  _Block_object_dispose(&a41, 8);
  std::__tree<long>::destroy(a48);

  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__24(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

__n128 __Block_byref_object_copy__319(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__320(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::__tree<long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<long>::destroy(*a1);
    std::__tree<long>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__tree<long>::__emplace_unique_key_args<long,long const&>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

__n128 *HKIntervalMask<double>::_insertInterval(__n128 *result, double a2, double a3)
{
  v3 = result;
  v4 = 0;
  v13.n128_f64[0] = a2;
  v13.n128_f64[1] = a3;
  v5 = result->n128_u64[0];
  v6 = result->n128_u64[1];
  do
  {
    if ((v6 + v4) == v5)
    {
      v11 = std::vector<HKRawInterval<double>>::insert(result, v5, &v13);
      return HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(v3, v11);
    }

    v7 = *(v6 + v4 - 16);
    v4 -= 16;
  }

  while (v7 > a2);
  v8 = (v6 + v4);
  v9 = *(v6 + v4 + 8);
  if (v9 >= a2)
  {
    if (a3 <= v9)
    {
      return result;
    }

    v8->n128_f64[1] = a3;
    if (v4 == -16)
    {
      return result;
    }

    v12 = v6 + v4;
    goto LABEL_15;
  }

  if (v4 == -16)
  {
    return std::vector<HKRawInterval<double>>::insert(result, v8 + 1, &v13);
  }

  v10 = v6 + v4;
  if (a3 < *(v10 + 16))
  {
    return std::vector<HKRawInterval<double>>::insert(result, v8 + 1, &v13);
  }

  *(v10 + 16) = a2;
  if (a3 > *(v10 + 24))
  {
    *(v10 + 24) = a3;
    v12 = &v8[1];
LABEL_15:

    return HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(result, v12);
  }

  return result;
}

uint64_t *HKIntervalMask<double>::_compactIntervalsForwardFrom<std::__wrap_iter<HKRawInterval<double> *>>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2 - *result;
  v5 = (v4 >> 4) + 1;
  if (v5 < &v3[-*result] >> 4)
  {
    v6 = result;
    v7 = v4 + 16;
    v8 = v3 - 16;
    v9 = v2 - a2;
    do
    {
      v10 = (v2 + v4);
      v11 = *(v2 + v4 + 8);
      v12 = (v2 + 16 * v5);
      if (v11 < *v12)
      {
        break;
      }

      v13 = *v10;
      if (v11 < v12[1])
      {
        v11 = v12[1];
      }

      if (v11 >= v13)
      {
        v14 = *v10;
      }

      else
      {
        v14 = v11;
      }

      if (v13 >= v11)
      {
        v11 = *v10;
      }

      *v10 = v14;
      v10[1] = v11;
      result = (v2 + v7);
      v15 = (v2 + v7 + 16);
      if (v3 != v15)
      {
        result = memmove(result, v15, &v8[v9 - v2 - 16]);
        v2 = *v6;
      }

      v3 = v8;
      v6[1] = v8;
      v16 = &v8[-v2];
      v8 -= 16;
    }

    while (v5 < v16 >> 4);
  }

  return result;
}

__n128 *std::vector<HKRawInterval<double>>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<HKRawInterval<double>>::emplace_back<HKRawInterval<double> const&>(&v26, a3);
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
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_228A96764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__split_buffer<HKRawInterval<double>>::emplace_back<HKRawInterval<double> const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _HDMakeSleepIntervalAverageInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  *(a1 + 16) = 0;
  *a1 = vrndmq_f64(vdivq_f64(*(a2 + 16), vdupq_lane_s64(COERCE__INT64(v3), 0)));
  *(a1 + 16) = [*(a2 + 32) copy];
  v4 = *(a2 + 32);
}

void sub_228A994C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose((v70 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9DEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228A9EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AA0AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableSharingAuthorizationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278616E68[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNotificationInstructionRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableNotificationInstructionMessage);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableNotificationInstructionMessageReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_196;
  v7 = _MergedGlobals_196;
  if (!_MergedGlobals_196)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_278616E90;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228AA6A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!qword_280D67B20)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SOSLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278616EB0;
    v9 = 0;
    qword_280D67B20 = _sl_dlopen();
  }

  if (!qword_280D67B20)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SOSLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"HDMedicalIDDataManager.m" lineNumber:42 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"HDMedicalIDDataManager.m" lineNumber:43 description:{@"Unable to find class %s", "SOSUtilities"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_196 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_280D67B20 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228AA8D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AAA4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::tuple<long long,HKSample * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>(a1, a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<long long,HKSample * {__strong}>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 2;

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::tuple<long long,HKSample * {__strong}>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

uint64_t HDCloudSyncCodableSharedSummaryParticipantRecordReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 144;
          goto LABEL_86;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_86;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_86;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_86;
        case 5u:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_86;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 104;
          goto LABEL_86;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 120;
          goto LABEL_86;
        case 0xCu:
          v33 = PBReaderReadString();
          if (v33)
          {
            [a1 addAllContactIdentifiers:v33];
          }

          goto LABEL_115;
        case 0x14u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          a1[152] |= 0x40u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v62 & 0x7F) << v42;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v44;
          }

LABEL_102:
          v55 = 56;
          goto LABEL_107;
        case 0x15u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          a1[152] |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v62 & 0x7F) << v36;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v38;
          }

LABEL_98:
          v55 = 8;
          goto LABEL_107;
        case 0x16u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          a1[152] |= 0x20u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v62 & 0x7F) << v17;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_90:
          v55 = 48;
          goto LABEL_107;
        case 0x17u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          a1[152] |= 0x10u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v62 & 0x7F) << v26;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v28;
          }

LABEL_94:
          v55 = 40;
          goto LABEL_107;
        case 0x1Eu:
          a1[152] |= 8u;
          v62 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 32;
          goto LABEL_114;
        case 0x1Fu:
          a1[152] |= 4u;
          v62 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 24;
          goto LABEL_114;
        case 0x20u:
          a1[152] |= 2u;
          v62 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v57 = v62;
          v58 = 16;
LABEL_114:
          *&a1[v58] = v57;
          goto LABEL_115;
        case 0x21u:
          v13 = PBReaderReadData();
          v14 = 128;
          goto LABEL_86;
        case 0x28u:
          v13 = PBReaderReadData();
          v14 = 136;
LABEL_86:
          v54 = *&a1[v14];
          *&a1[v14] = v13;

          goto LABEL_115;
        case 0x29u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          a1[152] |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_115;
      }

      while (1)
      {
        LOBYTE(v62) = 0;
        v51 = [a2 position] + 1;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v50 |= (v62 & 0x7F) << v48;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v11 = v49++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_106;
        }
      }

      v23 = [a2 hasError] ? 0 : v50;
LABEL_106:
      v55 = 64;
LABEL_107:
      *&a1[v55] = v23;
LABEL_115:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228AB204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableVisionSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v94) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v94 & 0x7F) << v6;
      if ((v94 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 208), v14);
        v94 = 0;
        v95 = 0;
        if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v14, a2))
        {
          goto LABEL_102;
        }

        goto LABEL_156;
      case 2u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 224) |= 0x800u;
        while (1)
        {
          LOBYTE(v94) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v94 & 0x7F) << v41;
          if ((v94 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v47 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v47 = 0;
        }

        else
        {
          v47 = v43;
        }

LABEL_108:
        *(a1 + 96) = v47;
        goto LABEL_154;
      case 3u:
        *(a1 + 224) |= 0x200u;
        v94 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v79 = [a2 data];
          [v79 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 80;
        goto LABEL_153;
      case 4u:
        *(a1 + 224) |= 0x200000u;
        v94 = 0;
        v56 = [a2 position] + 8;
        if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 8, v57 <= objc_msgSend(a2, "length")))
        {
          v87 = [a2 data];
          [v87 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 176;
        goto LABEL_153;
      case 5u:
        *(a1 + 224) |= 0x10u;
        v94 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v88 = [a2 data];
          [v88 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 40;
        goto LABEL_153;
      case 6u:
        *(a1 + 224) |= 0x10000u;
        v94 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 136;
        goto LABEL_153;
      case 7u:
        *(a1 + 224) |= 2u;
        v94 = 0;
        v48 = [a2 position] + 8;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
        {
          v83 = [a2 data];
          [v83 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 16;
        goto LABEL_153;
      case 8u:
        *(a1 + 224) |= 0x2000u;
        v94 = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v84 = [a2 data];
          [v84 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 112;
        goto LABEL_153;
      case 9u:
        *(a1 + 224) |= 1u;
        v94 = 0;
        v62 = [a2 position] + 8;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 8;
        goto LABEL_153;
      case 0xAu:
        *(a1 + 224) |= 0x1000u;
        v94 = 0;
        v60 = [a2 position] + 8;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 104;
        goto LABEL_153;
      case 0x1Eu:
        *(a1 + 224) |= 0x400u;
        v94 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v75 = [a2 data];
          [v75 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 88;
        goto LABEL_153;
      case 0x1Fu:
        *(a1 + 224) |= 0x400000u;
        v94 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v81 = [a2 data];
          [v81 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 184;
        goto LABEL_153;
      case 0x20u:
        *(a1 + 224) |= 0x80u;
        v94 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v77 = [a2 data];
          [v77 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 64;
        goto LABEL_153;
      case 0x21u:
        *(a1 + 224) |= 0x80000u;
        v94 = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v73 = [a2 data];
          [v73 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 160;
        goto LABEL_153;
      case 0x22u:
        *(a1 + 224) |= 0x100u;
        v94 = 0;
        v52 = [a2 position] + 8;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 8, v53 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 72;
        goto LABEL_153;
      case 0x23u:
        *(a1 + 224) |= 0x100000u;
        v94 = 0;
        v54 = [a2 position] + 8;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 168;
        goto LABEL_153;
      case 0x24u:
        *(a1 + 224) |= 0x20u;
        v94 = 0;
        v66 = [a2 position] + 8;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 8, v67 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 48;
        goto LABEL_153;
      case 0x25u:
        *(a1 + 224) |= 0x20000u;
        v94 = 0;
        v64 = [a2 position] + 8;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 144;
        goto LABEL_153;
      case 0x26u:
        *(a1 + 224) |= 0x40u;
        v94 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v69 = [a2 data];
          [v69 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 56;
        goto LABEL_153;
      case 0x27u:
        *(a1 + 224) |= 0x40000u;
        v94 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v78 = [a2 data];
          [v78 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 152;
        goto LABEL_153;
      case 0x29u:
        v21 = PBReaderReadString();
        v22 = 200;
        goto LABEL_99;
      case 0x32u:
        *(a1 + 224) |= 4u;
        v94 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v72 = [a2 data];
          [v72 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 24;
        goto LABEL_153;
      case 0x33u:
        *(a1 + 224) |= 0x4000u;
        v94 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 120;
        goto LABEL_153;
      case 0x34u:
        *(a1 + 224) |= 8u;
        v94 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v74 = [a2 data];
          [v74 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 32;
        goto LABEL_153;
      case 0x35u:
        *(a1 + 224) |= 0x8000u;
        v94 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:&v94 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v70 = v94;
        v71 = 128;
LABEL_153:
        *(a1 + v71) = v70;
        goto LABEL_154;
      case 0x36u:
        v21 = PBReaderReadString();
        v22 = 192;
LABEL_99:
        v68 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_154;
      case 0x37u:
        v14 = objc_alloc_init(HDCodableVerifiableData);
        objc_storeStrong((a1 + 216), v14);
        v94 = 0;
        v95 = 0;
        if (PBReaderPlaceMark() && HDCodableVerifiableDataReadFrom(v14, a2))
        {
LABEL_102:
          PBReaderRecallMark();

LABEL_154:
          v4 = a2;
          continue;
        }

LABEL_156:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_154;
    }
  }
}

void sub_228AB7AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AB86C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_228AB94F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableAuthorizationResponseMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 9)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xA:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_42;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v22;
            goto LABEL_37;
          case 0xB:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 0xC:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228ABE2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228AC2624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AC346C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AC6F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228AC82D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_228ACA25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 136));
  objc_destroyWeak((v1 - 184));
  _Unwind_Resume(a1);
}

id _StringFromSyncOptions(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"pull request"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"last chance"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"active only"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"requested by remote"];
  }

LABEL_6:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_228ACAB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228ACD028(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t HDAddStateHandler(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v9 = a3;
  v4 = v8;
  v5 = v9;
  v6 = os_state_add_handler();

  return v6;
}

_DWORD *__HDAddStateHandler_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 length];
    v7 = malloc_type_malloc(v6 + 200, 0xD43F7D88uLL);
    v8 = v7;
    if (v7)
    {
      bzero(v7, v6 + 200);
      *v8 = 1;
      v8[1] = v6;
      [v3 UTF8String];
      __strlcpy_chk();
      [v4 getBytes:v8 + 50 length:v6];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Error serializing dictionary into data for State Data: %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableMedicalIDReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableMedicalIDData);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || ![(HDCodableMedicalIDData *)v13 readFrom:a2])
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HDCloudSyncCodableLog);
    [a1 addMedicalIDLogs:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HDCloudSyncCodableLogReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_228AD6348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AD6EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228AD7C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDWorkoutActivityEntityPredicateForActivityType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 predicateWithProperty:@"activity_type" value:v2 comparisonType:1];

  return v3;
}

id HDWorkoutActivityEntityPredicateForDuration(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = [v2 predicateWithProperty:@"duration" value:v3 comparisonType:a1];

  return v4;
}

id HDWorkoutActivityEntityPredicateForStartDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"start_date" value:v3 comparisonType:a1];

  return v4;
}

id HDWorkoutActivityEntityPredicateForEndDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"end_date" value:v3 comparisonType:a1];

  return v4;
}

void sub_228ADC150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228ADC944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228ADCACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228ADE91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228AE004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AE1AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_HRCStreamingModeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    v2 = off_2786188E8[a1];
  }

  return v2;
}

id QuantityCharacteristicTypes()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDEC8]];
  v1 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:{*MEMORY[0x277CCDEE0], v0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDED8]];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_228AE8088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_228AE8E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AE9FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableStartWorkoutAppRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = objc_alloc_init(HDCodableWorkoutConfiguration);
            objc_storeStrong((a1 + 32), v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !HDCodableWorkoutConfigurationReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_30;
          case 5:
            v14 = PBReaderReadData();
            v15 = 16;
            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HDAlarmEventEntityAllProperties()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"client_identifier";
  v3[1] = @"event_identifier";
  v3[2] = @"due_date";
  v3[3] = @"due_date_components";
  v3[4] = @"event_options";
  v3[5] = @"client_options";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_228AEE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AF38E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AF4E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDAuthorizationIdentifiersFromCodableSharingAuthorizations(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) authorizationIdentifier];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id HDSharingAuthorizationsFromCodableSharingAuthorizations(void *a1)
{
  if (a1)
  {
    a1 = [a1 hk_map:&__block_literal_global_44];
    v1 = vars8;
  }

  return a1;
}

id __HDSharingAuthorizationsFromCodableSharingAuthorizations_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD960];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 authorizationIdentifier];
  v6 = [v3 displayName];
  v7 = [v3 displaySubtitle];

  v8 = [v4 initWithAuthorizationIdentifier:v5 displayName:v6 displaySubtitle:v7];

  return v8;
}

id HDCodableSharingAuthorizationsFromSharingAuthorizations(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [HDCodableSharingAuthorization alloc];
          v10 = [(HDCodableSharingAuthorization *)v9 initWithSharingAuthorization:v8, v13];
          [v2 addObject:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id HDCodableSharingAuthorizationsFromAuthorizationIdentifiers(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = objc_alloc_init(HDCodableSharingAuthorization);
          [(HDCodableSharingAuthorization *)v9 setAuthorizationIdentifier:v8, v12];
          [v2 addObject:v9];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

id HDHealthDaemonFrameworkBundle()
{
  v0 = HDHealthDaemonFrameworkBundle___ClassBundle;
  if (!HDHealthDaemonFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = HDHealthDaemonFrameworkBundle___ClassBundle;
    HDHealthDaemonFrameworkBundle___ClassBundle = v1;

    v0 = HDHealthDaemonFrameworkBundle___ClassBundle;
  }

  return v0;
}

__CFString *HDStringFromDatabaseJournalType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_278619158[a1];
  }

  return v2;
}

void sub_228AF6F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AF86D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228AF987C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AF9E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228AFAFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableSourceAuthorizationReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadData();
          v16 = 2;
          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(HDCodableSource);
          objc_storeStrong(a1 + 3, v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableSourceReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_27:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadData();
          v16 = 4;
LABEL_32:
          v14 = a1[v16];
          a1[v16] = v15;
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HDCodableAuthorization);
          [a1 addAuthorizations:v14];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableAuthorizationReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDSharingTypeFromCodableType(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1 == 1)
    {
      result = 1;
    }

    else
    {
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v5 = 134217984;
        v6 = a1;
        _os_log_fault_impl(&dword_228986000, v3, OS_LOG_TYPE_FAULT, "Unexpected codable type %ld", &v5, 0xCu);
      }

      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HDSharingMessageDirectionFromCodableDirection(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    result = 1;
  }

  else if (a1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v5 = 134217984;
      v6 = a1;
      _os_log_fault_impl(&dword_228986000, v3, OS_LOG_TYPE_FAULT, "Unexpected codable direction %ld", &v5, 0xCu);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HDSharingStatusFromCodableStatus(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x277D85DE8];
  if (result >= 5)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_fault_impl(&dword_228986000, v2, OS_LOG_TYPE_FAULT, "Unexpected codable status %ld", &v4, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = result;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t HDCodableSharingStatusFromStatus(unint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 5)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v5 = 134217984;
      v6 = v1;
      _os_log_fault_impl(&dword_228986000, v2, OS_LOG_TYPE_FAULT, "Unexpected status %ld", &v5, 0xCu);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t HDSharingNotificationStatusFromCodableStatus(uint64_t result)
{
  v1 = result;
  v6 = *MEMORY[0x277D85DE8];
  if (result >= 3)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_fault_impl(&dword_228986000, v2, OS_LOG_TYPE_FAULT, "Unexpected codable notification status %ld", &v4, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = result;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t HDCodableSharingNotificationStatusFromStatus(unint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 3)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v5 = 134217984;
      v6 = v1;
      _os_log_fault_impl(&dword_228986000, v2, OS_LOG_TYPE_FAULT, "Unexpected notification status %ld", &v5, 0xCu);
    }

    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t HDCloudSyncCodableStateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228B017D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228B01DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B04E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose((v44 - 176), 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_228B052A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_228B06434(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

double std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, unsigned int *a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(a2) * 2.0 + -1.0;
        v8 = std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(a2) * 2.0 + -1.0;
        v9 = v8 * v8 + v7 * v7;
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrt(log(v8 * v8 + v7 * v7) * -2.0 / v9);
    *(a1 + 16) = v8 * v10;
    *(a1 + 24) = 1;
    v5 = v7 * v10;
  }

  return *a3 + v5 * a3[1];
}

double std::generate_canonical[abi:ne200100]<double,53ul,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(unsigned int *a1)
{
  v1 = 48271 * (*a1 % 0xADC8);
  v2 = 3399 * (*a1 / 0xADC8);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  v6 = v5 + v4;
  v7 = v6 - 1;
  v8 = v6 / 0xADC8;
  v9 = 48271 * (v6 % 0xADC8);
  v8 *= 3399;
  v3 = v9 >= v8;
  v10 = v9 - v8;
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = v11 + v10;
  *a1 = v12;
  return (v7 + (v12 - 1) * 2147483650.0) / 4.61168601e18;
}

void sub_228B079BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B07CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B07E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _HDSourceEntityPredicateForNotDeletedWithPredicate(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = a1;
  v3 = [v1 predicateWithProperty:@"deleted" notEqualToValue:MEMORY[0x277CBEC38]];
  v4 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v2 otherPredicate:v3];

  return v4;
}

void sub_228B085C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_228B088CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B08E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B091E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B0953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228B0A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B0AF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSourceEntityPredicateForLocalSourcesWithBundleIdentifier(uint64_t a1)
{
  v1 = MEMORY[0x277D10B70];
  v2 = HDSourceEntityPredicateForSourceWithBundleIdentifier(a1);
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"provenance" equalToValue:&unk_283CB0960];
  v4 = [v1 compoundPredicateWithPredicate:v2 otherPredicate:v3];

  return v4;
}

id HDSourceEntityPredicateForSourceWithBundleIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277D10B18] predicateWithProperty:@"logical_sources.bundle_id" equalToValue:a1];
  v2 = _HDSourceEntityPredicateForNotDeletedWithPredicate(v1);

  return v2;
}

id HDSourceEntityPredicateForSourcesWithUUIDs(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_600];
  v2 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"uuid" values:v1];

  return v2;
}

id HDSourceEntityPredicateForLocalSourcesWithLogicalSourceIDs(uint64_t a1)
{
  v1 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"logical_source_id" values:a1];
  v2 = MEMORY[0x277D10B70];
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:@"provenance" equalToValue:&unk_283CB0960];
  v4 = [v2 compoundPredicateWithPredicate:v1 otherPredicate:v3];

  return v4;
}

uint64_t HDCodableBloodPressureJournalReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            *(a1 + 64) |= 1u;
            v50[0] = 0;
            v39 = [a2 position] + 8;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v44 = v50[0];
            v45 = 8;
            goto LABEL_89;
          }

          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v50[0] & 0x7F) << v23;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_81:
            v42 = 36;
LABEL_82:
            *(a1 + v42) = v22;
            goto LABEL_90;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v31 = PBReaderReadData();
            v32 = *(a1 + 56);
            *(a1 + 56) = v31;

            goto LABEL_90;
          }

          if (v13 == 2)
          {
            *(a1 + 64) |= 2u;
            v50[0] = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v44 = v50[0];
            v45 = 16;
LABEL_89:
            *(a1 + v45) = v44;
            goto LABEL_90;
          }
        }

        goto LABEL_68;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 != 7)
      {
        if (v13 == 8)
        {
          *(a1 + 64) |= 4u;
          v50[0] = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v50[0];
          v45 = 24;
          goto LABEL_89;
        }

LABEL_68:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_90;
      }

      v41 = objc_alloc_init(HDCodableBloodPressureJournalScheduleTimeInterval);
      [a1 addTimeInterval:v41];
      v50[0] = 0;
      v50[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableBloodPressureJournalScheduleTimeIntervalReadFrom(v41, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_90:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 64) |= 0x20u;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v36 = [a2 position] + 1;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v35 |= (v50[0] & 0x7F) << v33;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v11 = v34++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_73;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v35;
      }

LABEL_73:
      v42 = 40;
      goto LABEL_82;
    }

    if (v13 == 6)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 64) |= 8u;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v50[0] & 0x7F) << v16;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_77:
      v42 = 32;
      goto LABEL_82;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

void sub_228B10788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B120CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_228B14188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B14F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B15C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B15FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDAssociationEntityPredicateForAssociationEntityWithType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 predicateWithProperty:@"type" equalToValue:v2];

  return v3;
}

id HDAssociationEntityPredicateForAssociationEntityForNotType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 predicateWithProperty:@"type" notEqualToValue:v2];

  return v3;
}

id HDAssociationEntityPredicateForAssociationEntityWithBehavior(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 predicateWithProperty:@"behavior" equalToValue:v2];

  return v3;
}

__n128 *HDStatisticsTimeInterval::addSample(__n128 *this, const HDRawQuantitySample *a2, int a3)
{
  if (a2->var4 && !a2->var5)
  {
    if (a3)
    {
      ++this->n128_u64[0];
    }

    var1 = a2->var1;
    var2 = a2->var2;
    if (var2 >= var1)
    {
      v5 = a2->var1;
    }

    else
    {
      v5 = a2->var2;
    }

    if (var1 < var2)
    {
      var1 = a2->var2;
    }

    return HKIntervalMask<double>::_insertInterval(&this->n128_i8[8], v5, var1);
  }

  return this;
}

double HDStatisticsTimeInterval::totalDuration(HDStatisticsTimeInterval *this)
{
  v1 = *(this + 1);
  v2 = 0.0;
  while (v1 != *(this + 2))
  {
    v4 = *v1;
    v3 = v1[1];
    v1 += 2;
    v2 = v2 + v3 - v4;
  }

  return v2 + *(this + 4);
}

double HDStatisticsTimeInterval::didMergeTo(double **this, double a2)
{
  result = HKIntervalMask<double>::removeIntervalsBefore(this + 1, a2) + *(this + 4);
  *(this + 4) = result;
  return result;
}

double HKIntervalMask<double>::removeIntervalsBefore(double **a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0.0;
  }

  v5 = 0.0;
  v6 = *a1;
  while (1)
  {
    v7 = *v6;
    if (*v6 >= a2)
    {
      break;
    }

    v8 = v6[1];
    if (v8 >= a2)
    {
      v5 = v5 + a2 - v7;
      *v6 = a2;
      break;
    }

    v5 = v5 + v8 - v7;
    v6 += 2;
    if (v6 == v2)
    {
      v6 = a1[1];
      break;
    }
  }

  if (v3 != v6)
  {
    v9 = v2 - v6;
    if (v2 != v6)
    {
      memmove(v3, v6, v2 - v6);
    }

    a1[1] = (v3 + v9);
  }

  return v5;
}

double HDStatisticsTimeInterval::unarchive@<D0>(HDStatisticsTimeInterval *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  v5 = (a2 + 8);
  *(a2 + 24) = 0u;
  *a2 = *(this + 3);
  v6 = *(this + 8);
  v7 = *(this + 9);
  while (v6 != v7)
  {
    v9 = *(*v6 + 8);
    v8 = *(*v6 + 16);
    if (v9 >= v8)
    {
      v10 = *(*v6 + 16);
    }

    else
    {
      v10 = *(*v6 + 8);
    }

    if (v8 < v9)
    {
      v8 = *(*v6 + 8);
    }

    HKIntervalMask<double>::_insertInterval(v5, v10, v8);
    v6 += 8;
  }

  result = *(this + 7);
  *(a2 + 32) = result;
  return result;
}

void sub_228B17360(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double HDStatisticsTimeInterval::archive@<D0>(HDStatisticsTimeInterval *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *(this + 1);
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 204) = 17;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(this + 4);
  *(a2 + 56) = result;
  if (v4 != *(this + 2))
  {
    v6 = &unk_283BF1F08;
    v8 = 3;
    v7 = vextq_s8(*v4, *v4, 8uLL);
    PB::PtrVector<statistics::Interval>::emplace_back<statistics::Interval&>();
  }

  return result;
}

void sub_228B17464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PB::Base::~Base(&a9);
  statistics::Statistics::~Statistics(v9);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B193B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c92_ZTSKZ79__HDQuantitySeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error__E3__1(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void sub_228B19C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_end_catch();
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&a27);
  std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c112_ZTSKZ99__HDQuantitySeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error__E3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_228B19F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7690;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[16], 0, 32);
  memset(&v5[56], 0, 32);
  v6 = a2;
  result = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8));
  if (result)
  {
    v4 = *(*(a1 + 16) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v4 + 48))(v4, v5);
    **(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(uint64_t a1, ObjectIdentifier *a2)
{
  health::DataStore::ReadTransaction::_pointerForObject(*(a1 + 88), a2, v8);
  v4 = v9;
  if (v9 == 1)
  {
    v5 = *(*(a1 + 88) + 24);
    v6 = health::Optional<health::BlockPointer>::get(v8);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v5, *v6, *(v6 + 8), a1);
    *(a1 + 72) = *a2;
    *(a1 + 56) = *health::Optional<health::BlockPointer>::get(v8);
  }

  return v4;
}

__n128 _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7710;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEEclESX_(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke;
  v5[3] = &__block_descriptor_72_ea8_32c280_ZTSKZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E__e9_B16__0__8l;
  v2 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = a2;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  if (v3)
  {
    obj = *v3;
    hfd_catchExceptionsAsErrors(v5, &obj, 0);
    objc_storeStrong(v3, obj);
  }

  else
  {
    hfd_catchExceptionsAsErrors(v5, 0, 0);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v7 = 0;
  operator new();
}

__n128 __copy_helper_block_ea8_32c280_ZTSKZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE77C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  HistoryRoot = health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v6, *(a1 + 8), **(a1 + 16));
  v4 = *(*(a1 + 24) + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v6, HistoryRoot);
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(uint64_t a1, ObjectIdentifier *a2, int a3)
{
  *(a1 + 72) = *a2;
  v5 = *(a1 + 96);
  health::DataStore::ReadTransaction::_pointerForObject(v5, a2, v10);
  if (v10[16] == 1)
  {
    v6 = *(v5 + 3);
    v7 = health::Optional<health::BlockPointer>::get(v10);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v6, *v7, *(v7 + 8), a1);
  }

  else
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _ZN6health15not_found_errorCI1St13runtime_errorEPKc(exception, "The requested sample history does not exist.");
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;

    *&result = health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::_updateHistoryRoot(a1).n128_u64[0];
  }

  return result;
}

__n128 health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::_updateHistoryRoot(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (*(a1 + 64) != 56)
  {
    v16 = *(v2 + 32);
    v17 = v2 + 48;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v16, (a1 + 72), 0, v14);
    if (v15)
    {
      v5 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14) + 24);
      v6 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v5 == 56)
      {
        health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::SampleHistoryRoot>(v2 + 80, v7, v8, a1);
LABEL_10:
        health::DataStore::ReadTransaction::_pointerForObject(*(a1 + 96), (a1 + 72), v14);
        v12 = health::Optional<health::BlockPointer>::get(v14);
        result = *v12;
        *(a1 + 56) = *v12;
        return result;
      }

      health::BlockAccessFile::WriteTransaction::freeBlock(v2 + 80, v7, v8);
    }

    v9 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((v2 + 80), 56);
    v11 = v10;
    health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::SampleHistoryRoot>(v2 + 80, v9, v10, a1);
    v13.n128_u64[0] = v9;
    v13.n128_u64[1] = v11;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v16, (a1 + 72), &v13);
    goto LABEL_10;
  }

  v3 = *(a1 + 56);

  health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::SampleHistoryRoot>(v2 + 80, v3, 0x38uLL, a1);
  return result;
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::SampleHistoryRoot>(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 56;
  v12[0] = v13;
  v12[1] = v13;
  v12[2] = 56;
  v11[0] = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[2];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[3];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[4];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[5];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[6];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  if (v15 <= 0x3FF)
  {
    v8 = v13;
  }

  else
  {
    v8 = v14;
  }

  health::RawBuffer::RawBuffer(v11, v8, v15);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v11);
  result = v14;
  v14 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1AA88(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7840;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEEclES13_(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  operator new();
}

void sub_228B1AC34(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(bufa, a4);
  buf = va_arg(va1, _OWORD);
  v15 = va_arg(va1, void);
  if (a2)
  {
    std::__function::__value_func<BOOL ()(double const&,double const&)>::~__value_func[abi:ne200100](va1);
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*v7 + 16);
        v10 = v8;
        v11 = v9(v7);
        LODWORD(buf) = 136315138;
        *(bufa + 4) = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Caught std::exception during ignore block; ignoring: %s", bufa, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Caught unknown during ignore block; ignoring.", bufa, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x228B1AC00);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_EUlRSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v2 = *(*(result + 88) + 24);
    v6[0] = 0;
    v6[1] = 0;
    v6[2] = v2;
    v4 = *(result + 16);
    v5 = v6;
    std::__function::__value_func<BOOL ()(double const&,double const&)>::__value_func[abi:ne200100](v7, a2);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(&v4, v7, 0);
    result = std::__function::__value_func<BOOL ()(double const&,double const&)>::~__value_func[abi:ne200100](v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1AE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(double const&,double const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v8, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 16), *a1, *(a1 + 8), v8);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(a1, 0, v8, a2, a3);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 408))
  {
    v7 = result;
    if (a5)
    {
      v8 = *(a3 + 408) - 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(a3 + 410) == 1)
    {
      v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v8);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v7 + 16);
      memset(v14, 0, sizeof(v14));
      v15 = 0;
      v16 = 0u;
      v17 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v12 + 16), v10, v11, v14);
      v18 = a4;
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(int,health::bplustree::LeafNode<double,double,health::BlockPointer,17> const&,health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,double const&)#1}>(v7, v14, &v18, a5);
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(result, a2, a3, v8, v14);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(v7, (a2 + 1), v14, a4, a5);
    }
  }

  return result;
}

double *health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  if (*(a3 + 408) <= a4)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a2 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a1 + 16);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 288) = 0u;
  *(a5 + 304) = 0u;
  *(a5 + 320) = 0u;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  *(a5 + 368) = 0u;
  *(a5 + 384) = 0u;
  *(a5 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 16), v12, v13, a5);
  if (*(a5 + 408))
  {
    v16 = *a5;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a3 + 408) - 1 > a4)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a5, *(a5 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, a4 + 1);
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228B1B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 306;
  health::RawBuffer::RawBuffer(v13, v15, 306);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v13);
  v8 = 0;
  v9 = v15;
  if (v17 > 0x3FF)
  {
    v9 = v16;
  }

  v13[0] = v9;
  v13[1] = v9;
  v13[2] = 306;
  do
  {
    v10 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v8);
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *v10 = v14;
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    v10[1] = v14;
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v14) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(v13, &v14);
  *(a4 + 272) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 280) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 288) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 296) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 304) = v14;
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1B720(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 50, &__p);
  }

  return a1 + 16 * a2;
}

{
  if (a2 >= 0x11)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v7, "index < Length");
    std::string::basic_string[abi:ne200100]<0>(v6, "operator[]");
    std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
    health::FormatString<>("Index out of bounds.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v2, v7, v6, v5, 43, &__p);
  }

  return a1 + 16 * a2;
}

void sub_228B1B83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_228B1B988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1}>(int,health::bplustree::LeafNode<double,double,health::BlockPointer,17> const&,health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::enumerateSamples(std::function<BOOL ()(double const&,double const&)>)::{lambda(double const&,double const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,double const&)#1}>(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v43 = result;
  if (a4 == 1)
  {
    if (*(a2 + 272))
    {
      v14 = *(a2 + 272) - 1;
      v15 = 1;
      v16 = 0.0;
      while (1)
      {
        v17 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        v18 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v14);
        if (v15 >= 2)
        {
          v19.n128_u64[0] = *v17;
          if (*v17 >= v16)
          {
            v20 = *MEMORY[0x277CCC2A0];
            std::string::basic_string[abi:ne200100]<0>(v55, "key < lastKey");
            std::string::basic_string[abi:ne200100]<0>(v54, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v53, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &__p);
            health::_HDAssertImplementation<health::btree_access_error>(v20, v55, v54, v53, 412, &__p);
          }
        }

        v21 = *(*a3 + 24);
        if (!v21)
        {
          break;
        }

        v16 = *v17;
        result = (*(*v21 + 48))(v21, v17, v18 + 8, v19);
        if ((result & 1) == 0)
        {
          return result;
        }

        ++v15;
        if (--v14 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_48:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v16 = 0.0;
LABEL_35:
    v32 = MEMORY[0x277CCC2A0];
    v33 = *(a2 + 280);
    v34 = *(a2 + 288);
    while (1)
    {
      v35 = *(v43 + 16);
      if (v33 == *v35 && v34 == *(v35 + 8))
      {
        break;
      }

      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v82 = 0u;
      v83 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v35 + 16), v33, v34, &v64);
      if (!v81)
      {
        v36 = *v32;
        std::string::basic_string[abi:ne200100]<0>(v51, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v50, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v49, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v48);
        health::_HDAssertImplementation<health::btree_access_error>(v36, v51, v50, v49, 422, &v48);
      }

      v37 = v81 - 1;
      do
      {
        v38 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](&v64, v37);
        v39 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](&v64, v37);
        if (*v38 >= v16)
        {
          v41 = *v32;
          std::string::basic_string[abi:ne200100]<0>(v47, "key < lastKey");
          std::string::basic_string[abi:ne200100]<0>(v46, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v44);
          health::_HDAssertImplementation<health::btree_access_error>(v41, v47, v46, v45, 427, &v44);
        }

        v42 = *(*a3 + 24);
        if (!v42)
        {
          goto LABEL_48;
        }

        v16 = *v38;
        v40.n128_f64[0] = *v38;
        result = (*(*v42 + 48))(v42, v38, v39 + 8, v40);
        if ((result & 1) == 0)
        {
          return result;
        }

        --v37;
      }

      while (v37 != -1);
      v34 = *(&v82 + 1);
      v33 = v82;
    }
  }

  else if (!a4)
  {
    v6 = MEMORY[0x277CCC2A0];
    if (*(a2 + 272))
    {
      v7 = 0;
      v8 = 0.0;
      while (1)
      {
        v9 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        v10 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a2, v7);
        if (v7)
        {
          v11.n128_u64[0] = *v9;
          if (*v9 <= v8)
          {
            v12 = *v6;
            std::string::basic_string[abi:ne200100]<0>(v87, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v86, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v85, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v84);
            health::_HDAssertImplementation<health::btree_access_error>(v12, v87, v86, v85, 382, &v84);
          }
        }

        v13 = *(*a3 + 24);
        if (!v13)
        {
          goto LABEL_48;
        }

        v8 = *v9;
        result = (*(*v13 + 48))(v13, v9, v10 + 8, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        if (++v7 >= *(a2 + 272))
        {
          goto LABEL_22;
        }
      }
    }

    v8 = 0.0;
LABEL_22:
    v22 = *(a2 + 296);
    v23 = *(a2 + 304);
    while (1)
    {
      v24 = *(v43 + 16);
      if (v22 == *v24 && v23 == *(v24 + 8))
      {
        break;
      }

      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v82 = 0u;
      v83 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v24 + 16), v22, v23, &v64);
      if (!v81)
      {
        v25 = *v6;
        std::string::basic_string[abi:ne200100]<0>(v63, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v62, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v60);
        health::_HDAssertImplementation<health::btree_access_error>(v25, v63, v62, v61, 392, &v60);
      }

      for (i = 0; i < v81; ++i)
      {
        v27 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](&v64, i);
        v28 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](&v64, i);
        if (*v27 <= v8)
        {
          v30 = *v6;
          std::string::basic_string[abi:ne200100]<0>(v59, "key > lastKey");
          std::string::basic_string[abi:ne200100]<0>(v58, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v57, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v56);
          health::_HDAssertImplementation<health::btree_access_error>(v30, v59, v58, v57, 396, &v56);
        }

        v31 = *(*a3 + 24);
        if (!v31)
        {
          goto LABEL_48;
        }

        v8 = *v27;
        v29.n128_f64[0] = *v27;
        result = (*(*v31 + 48))(v31, v27, v28 + 8, v29);
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      v23 = *(&v83 + 1);
      v22 = v83;
    }
  }

  return result;
}

void sub_228B1C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdS19_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE78C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdS19_EEclES19_S19_(void *a1, void *a2, void **a3)
{
  v4 = *a3;
  v5 = *(a1[1] + 24);
  v12[0] = *a2;
  v13 = v4;
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v5 + 48))(v5, v12, &v13);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clIddEEbSO_S12__block_invoke;
  v12[3] = &__block_descriptor_56_e9_B16__0__8l;
  v8 = a1[3];
  v12[4] = a1[2];
  v12[5] = a2;
  *&v12[6] = v7;
  if (v8)
  {
    v9 = &v13;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v13 = *v8;
  }

  v10 = hfd_catchExceptionsAsErrors(v12, v9, 0);
  if (v8)
  {
    objc_storeStrong(v8, v13);
  }

  return v10;
}

void sub_228B1C634(void *a1)
{
  __cxa_begin_catch(a1);
  **(v1 + 32) = 1;
  __cxa_end_catch();
  JUMPOUT(0x228B1C614);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdS19_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvEUlSO_RKS9_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV0S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clIddEEbSO_S12__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = (v2[6].i64[0] + 80);
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = v4;
  v36[3] = v4;
  v6 = v2[1].i64[0];
  v5 = v2[1].u64[1];
  if (!v6)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v34 = 0u;
      memset(v35, 0, sizeof(v35));
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v6 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v4, 411);
      v5 = v7;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v4, v6, v7, &v11);
      v2[1].i64[0] = v6;
      v2[1].i64[1] = v5;
    }
  }

  *&v11 = v6;
  *(&v11 + 1) = v5;
  *&v12 = v36;
  v8 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::setValueForKey(&v11, v3, a1 + 6);
  v9 = v2[3].i64[0];
  if (v9)
  {
    if (!v8)
    {
      v2[3].i64[0] = v9 + 1;
    }
  }

  else
  {
    v2[3].i64[0] = 1;
    *v2 = vdupq_n_s64(8uLL);
  }

  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::_updateHistoryRoot(v2);
  return 1;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::setValueForKey(uint64_t a1, double *a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  memset(v15, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 24), *a1, *(a1 + 8), v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = *(a1 + 16);
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), __src);
    memcpy(v13, __src, sizeof(v13));
    v9 = *(*(a1 + 16) + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 411);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v9, v10, v11, v13);
    WORD4(__src[25]) = 1;
    *(&__src[0] + 1) = v10;
    *&__src[1] = v12;
    BYTE10(__src[25]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a1, *(a1 + 8), __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, uint64_t *a6)
{
  if (!*(a4 + 408))
  {
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v19 = *(a1 + 16);
    v123 = *v19;
    v124 = *v19;
    v122 = 1;
    v20 = *a6;
    *&v105 = *a5;
    *(&v105 + 1) = v20;
    v21 = *(v19 + 3);
    v22 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v21, 306);
    v24 = v23;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v21, v22, v23, &v105);
    *a4 = *a5;
    *(a4 + 8) = v22;
    *(a4 + 16) = v24;
    *(a4 + 408) = 1;
    *(a4 + 410) = 1;
LABEL_8:
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 0;
  }

  if (*(a4 + 410) == 1)
  {
    v11 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
    v83 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) + 8);
    v12 = *(a1 + 16);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
    v123 = 0u;
    v124 = 0u;
    v13 = v83;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v12 + 24), v83, *(&v83 + 1), &v105);
    v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(a1, &v83, &v105, a5, a6);
    v15 = v14;
    if (v14 <= 1)
    {
      v16 = *a5;
      if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11))
      {
        v17 = *a5;
        *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) = v17;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      }

      return v15;
    }

    v31 = *(a4 + 408);
    if (v31 == 17)
    {
      v18 = 2;
      if (v11 == 16)
      {
        if (v14 == 4)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      else if (!v11)
      {
        if (v14 == 3)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return v18;
    }

    if (v14 == 4 && v31 - 1 == v11)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      LOWORD(v104[0]) = 1;
      v32 = *a6;
      *&v87 = *a5;
      *(&v87 + 1) = v32;
      *(v104 + 8) = v83;
      *(&v104[1] + 8) = v124;
      v33 = *(*(a1 + 16) + 24);
      v34 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v33, 306);
      v36 = v35;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v33, v34, v35, &v87);
      *&v124 = v34;
      *(&v124 + 1) = v36;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v13, *(&v13 + 1), &v105);
      v37 = *(a1 + 16);
      if (*(&v104[1] + 8) != *v37)
      {
        v80 = 0;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        *v63 = 0u;
        v81 = 0u;
        v82 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v37 + 24), *(&v104[1] + 1), *&v104[2], v63);
        *&v81 = v34;
        *(&v81 + 1) = v36;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *(&v104[1] + 1), *&v104[2], v63);
      }

      v38 = *(a4 + 408);
      v39 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v38);
      *(v39 + 8) = v34;
      *(v39 + 16) = v36;
      v40 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v38) = v40;
      ++*(a4 + 408);
      goto LABEL_8;
    }

    v62 = v83;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    *(v104 + 8) = v83;
    *(&v104[1] + 8) = v124;
    if (v122 >= 0x12uLL)
    {
      v47 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v63, "sourceIndex + elementCount <= Length");
      std::string::basic_string[abi:ne200100]<0>(v86, "copyElementsFromArrayToIndex");
      std::string::basic_string[abi:ne200100]<0>(v85, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Copy would overflow source.", &__p);
      health::_HDAssertImplementation<std::out_of_range>(v47, v63, v86, v85, 80, &__p);
    }

    v48 = &v105 + v122;
    v49 = *(v48 - 3);
    v91 = *(v48 - 4);
    v92 = v49;
    v50 = *(v48 - 1);
    v93 = *(v48 - 2);
    v94 = v50;
    v51 = *(v48 - 7);
    v87 = *(v48 - 8);
    v88 = v51;
    v52 = *(v48 - 5);
    v89 = *(v48 - 6);
    v90 = v52;
    v122 -= 8;
    strcpy(v104, "\b");
    v53 = *(*(a1 + 16) + 24);
    v54 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v53, 306);
    v56 = v55;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v53, v54, v55, &v87);
    v86[0] = v54;
    v86[1] = v56;
    v124 = *v86;
    v57 = *(a1 + 16);
    if (*(&v104[1] + 8) != *v57)
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      *v63 = 0u;
      v81 = 0u;
      v82 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v57 + 24), *(&v104[1] + 1), *&v104[2], v63);
      v81 = *v86;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *(&v104[1] + 1), *&v104[2], v63);
    }

    v63[0] = v87;
    v63[1] = v54;
    *&v64 = v56;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, v63, v11 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v62, *(&v62 + 1), &v105);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *&v87)
    {
      v58 = &v62;
      v59 = &v105;
    }

    else
    {
      v58 = v86;
      v59 = &v87;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(a1, v58, v59, a5, a6);
  }

  v26 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v27 = v26;
  *v86 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v26) + 8);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(&v105, a1, a2 + 1, a4, v26);
  v28 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(a1, (a2 + 2), v86, &v105, a5, a6);
  if (v28 > 1)
  {
    if (*(a4 + 408) == 17)
    {
      return 2;
    }

    *v85 = *v86;
    memset(v104, 0, 139);
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    BYTE10(v104[8]) = v126;
    v87 = 0u;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(&v87, 0, &v105, v125 - 8, 8);
    v125 -= 8;
    WORD4(v104[8]) = 8;
    v41 = *(*(a1 + 16) + 24);
    v42 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v41, 411);
    v44 = v43;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v41, v42, v43, &v87);
    __p.__r_.__value_.__r.__words[0] = v42;
    __p.__r_.__value_.__l.__size_ = v44;
    v63[0] = v87;
    v63[1] = v42;
    *&v64 = v44;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, v63, v27 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v85[0], v85[1], &v105);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *&v87)
    {
      p_p = v85;
      v46 = &v105;
    }

    else
    {
      p_p = &__p;
      v46 = &v87;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(a1, (a2 + 2), p_p, v46, a5, a6);
  }

  v18 = v28;
  v29 = *a5;
  if (v29 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v27))
  {
    v30 = *a5;
    *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v27) = v30;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
  }

  return v18;
}

void sub_228B1D1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 306;
  v14[0] = v15;
  v14[1] = v15;
  v14[2] = 306;
  do
  {
    v9 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v8);
    v13[0] = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = v9[1];
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v13[0]) = *(a4 + 272);
  health::SerializationBuffer::appendRaw<unsigned short>(v14, v13);
  v13[0] = *(a4 + 280);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 288);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 296);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 304);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  if (v17 <= 0x3FF)
  {
    v10 = v15;
  }

  else
  {
    v10 = v16;
  }

  health::RawBuffer::RawBuffer(v13, v10, v17);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1D3CC(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t *a5)
{
  if (!*(a3 + 272))
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v28, "valueCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v27, "indexForKey");
    std::string::basic_string[abi:ne200100]<0>(v26, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for index for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v28, v27, v26, 72, &__p);
  }

  v11 = *(a3 + 272) - 1;
  while (1)
  {
    v12 = *a4;
    if (v12 > *health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11))
    {
      break;
    }

    v13 = *a4;
    v14 = health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11);
    v15 = v11;
    if (v13 == *v14)
    {
      v19 = *a5;
      *(health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11) + 8) = v19;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
      return 1;
    }

    --v11;
    if (!v15)
    {
      LOWORD(v11) = 0;
      v16 = 0x100000000;
      goto LABEL_9;
    }
  }

  v16 = 0x200000000;
LABEL_9:
  if (*(a3 + 272) == 17)
  {
    if (*a4 >= *a3)
    {
      if (*a4 <= *(a3 + 256))
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v18 = v16 | v11;
    if ((v18 & 0x300000000) == 0x200000000)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v18;
    }

    v21 = *a4;
    v22 = *a5;
    if (v20 >= 0x11)
    {
      v23 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v28, "index < Length");
      std::string::basic_string[abi:ne200100]<0>(v27, "insertElementAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v26, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Index out of bounds.", &__p);
      health::_HDAssertImplementation<std::out_of_range>(v23, v28, v27, v26, 57, &__p);
    }

    v24 = (a3 + 16 * v20);
    memmove(v24 + 2, v24, 256 - 16 * v20);
    *v24 = v21;
    *(v24 + 1) = v22;
    ++*(a3 + 272);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
    return 0;
  }
}

void sub_228B1D6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  _Unwind_Resume(exception_object);
}

double *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (*(a4 + 408) <= a5)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a3 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a2 + 16);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a1);
  if (*(a1 + 408))
  {
    v16 = *a1;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a4 + 408) - 1 > a5)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, *(a1 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5 + 1);
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228B1DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,double const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE7960;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, health::DataStore::WriteTransaction *a2)
{
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8), 0);
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12 + 80;
  v15[3] = v12 + 80;
  if (v6 != 0)
  {
    v13 = v6;
    v14 = v15;
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v12 + 10, v6, *(&v6 + 1), __src);
    memcpy(__dst, __src, sizeof(__dst));
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::deleteAllSamples(void)::{lambda(double const&,double const&)#1}>(&v13, 0, &v13, __dst);
  }

  v8 = 0;
  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::_updateHistoryRoot(v5);
  health::DataStore::WriteTransaction::removeObjectWithIdentifier(a2, *(a1 + 8));
  return 1;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV0>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::deleteAllSamples(void)::{lambda(double const&,double const&)#1}>(uint64_t a1, int a2, unint64_t *a3, uint64_t a4)
{
  if (*(a4 + 408))
  {
    v7 = 0;
    do
    {
      if (*(a4 + 410) == 1)
      {
        v8 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v7);
        v9 = *(a1 + 16);
        memset(__dst, 0, 274);
        *(&__dst[17] + 8) = 0u;
        *(&__dst[18] + 8) = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(v9 + 24), *(v8 + 8), *(v8 + 16), __dst);
        if (LOWORD(__dst[17]))
        {
          v10 = 0;
          do
          {
            health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__dst, v10);
            health::StaticArray<health::bplustree::LeafNode<double,double,health::BlockPointer,17>::ValueEntry,17ul>::operator[](__dst, v10++);
          }

          while (v10 < LOWORD(__dst[17]));
        }

        v11 = *(a1 + 16);
        v12 = *(&__dst[18] + 1);
        if (*(&__dst[18] + 8) != *v11)
        {
          memset(__src, 0, 274);
          *(&__src[17] + 8) = 0u;
          *(&__src[18] + 8) = 0u;
          health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v11[3], *(&__dst[18] + 1), *&__dst[19], __src);
          *(&__src[17] + 8) = *(&__dst[17] + 8);
          health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *(&__dst[18] + 1), *&__dst[19], __src);
          v11 = *(a1 + 16);
          v12 = *v11;
        }

        if (*(&__dst[17] + 8) != __PAIR128__(v11[1], v12))
        {
          memset(__src, 0, 274);
          *(&__src[17] + 8) = 0u;
          *(&__src[18] + 8) = 0u;
          health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(v11[3], *(&__dst[17] + 1), *&__dst[18], __src);
          *(&__src[18] + 8) = *(&__dst[18] + 8);
          health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *(&__dst[17] + 1), *&__dst[18], __src);
          v11 = *(a1 + 16);
        }

        health::BlockAccessFile::WriteTransaction::freeBlock(v11[3], *(v8 + 8), *(v8 + 16));
      }

      else
      {
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(__src, a1, a2, a4, v7);
        v13 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v7);
        memcpy(__dst, __src, sizeof(__dst));
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,double>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV0>::deleteAllSamples(void)::{lambda(double const&,double const&)#1}>(a1, (a2 + 1), v13 + 8, __dst);
      }

      ++v7;
    }

    while (v7 < *(a4 + 408));
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(*(a1 + 16) + 24), *a3, a3[1]);
}

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<double ()(double,double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_228B1E870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(health::DataStore::ReadTransaction const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7B10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(&v5[16], 0, 32);
  memset(&v5[56], 0, 32);
  v6 = a2;
  result = health::DataStore::SampleHistory<QuantitySampleValueBehaviorV0>::loadHistoryRoot(v5, *(a1 + 8));
  if (result)
  {
    v4 = *(*(a1 + 16) + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v4 + 48))(v4, v5);
    **(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForReading<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,std::function<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>)::{lambda(health::DataStore::ReadTransaction const&)#1}>,void ()(health::DataStore::ReadTransaction const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7B90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEEclESX_(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke;
  v5[3] = &__block_descriptor_72_ea8_32c280_ZTSKZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E__e9_B16__0__8l;
  v2 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = a2;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  if (v3)
  {
    obj = *v3;
    hfd_catchExceptionsAsErrors(v5, &obj, 0);
    objc_storeStrong(v3, obj);
  }

  else
  {
    hfd_catchExceptionsAsErrors(v5, 0, 0);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v7 = 0;
  operator new();
}

__n128 __copy_helper_block_ea8_32c280_ZTSKZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7C40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  HistoryRoot = health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::loadHistoryRoot(v6, *(a1 + 8), **(a1 + 16));
  v4 = *(*(a1 + 24) + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v6, HistoryRoot);
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::loadHistoryRoot(uint64_t a1, ObjectIdentifier *a2, int a3)
{
  *(a1 + 72) = *a2;
  v5 = *(a1 + 96);
  health::DataStore::ReadTransaction::_pointerForObject(v5, a2, v10);
  if (v10[16] == 1)
  {
    v6 = *(v5 + 3);
    v7 = health::Optional<health::BlockPointer>::get(v10);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v6, *v7, *(v7 + 8), a1);
  }

  else
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _ZN6health15not_found_errorCI1St13runtime_errorEPKc(exception, "The requested sample history does not exist.");
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;

    *&result = health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::_updateHistoryRoot(a1).n128_u64[0];
  }

  return result;
}

__n128 health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::_updateHistoryRoot(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (*(a1 + 64) != 56)
  {
    v16 = *(v2 + 32);
    v17 = v2 + 48;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v16, (a1 + 72), 0, v14);
    if (v15)
    {
      v5 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14) + 24);
      v6 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v5 == 56)
      {
        health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::SampleHistoryRoot>(v2 + 80, v7, v8, a1);
LABEL_10:
        health::DataStore::ReadTransaction::_pointerForObject(*(a1 + 96), (a1 + 72), v14);
        v12 = health::Optional<health::BlockPointer>::get(v14);
        result = *v12;
        *(a1 + 56) = *v12;
        return result;
      }

      health::BlockAccessFile::WriteTransaction::freeBlock(v2 + 80, v7, v8);
    }

    v9 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((v2 + 80), 56);
    v11 = v10;
    health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::SampleHistoryRoot>(v2 + 80, v9, v10, a1);
    v13.n128_u64[0] = v9;
    v13.n128_u64[1] = v11;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v16, (a1 + 72), &v13);
    goto LABEL_10;
  }

  v3 = *(a1 + 56);

  health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::SampleHistoryRoot>(v2 + 80, v3, 0x38uLL, a1);
  return result;
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::SampleHistoryRoot>(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 56;
  v12[0] = v13;
  v12[1] = v13;
  v12[2] = 56;
  v11[0] = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[2];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[3];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[4];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[5];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[6];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  if (v15 <= 0x3FF)
  {
    v8 = v13;
  }

  else
  {
    v8 = v14;
  }

  health::RawBuffer::RawBuffer(v11, v8, v15);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v11);
  result = v14;
  v14 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1F34C(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEEclES13_(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  operator new();
}

void sub_228B1F4F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(bufa, a4);
  buf = va_arg(va1, _OWORD);
  v15 = va_arg(va1, void);
  if (a2)
  {
    std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::~__value_func[abi:ne200100](va1);
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*v7 + 16);
        v10 = v8;
        v11 = v9(v7);
        LODWORD(buf) = 136315138;
        *(bufa + 4) = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Caught std::exception during ignore block; ignoring: %s", bufa, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Caught unknown during ignore block; ignoring.", bufa, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x228B1F4C4);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_EUlRSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
    v2 = *(*(result + 88) + 24);
    v6[0] = 0;
    v6[1] = 0;
    v6[2] = v2;
    v4 = *(result + 16);
    v5 = v6;
    std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::__value_func[abi:ne200100](v7, a2);
    health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(&v4, v7, 0);
    result = std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::~__value_func[abi:ne200100](v7);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  memset(v8, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 16), *a1, *(a1 + 8), v8);
  return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(a1, 0, v8, a2, a3);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 408))
  {
    v7 = result;
    if (a5)
    {
      v8 = *(a3 + 408) - 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(a3 + 410) == 1)
    {
      v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v8);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v7 + 16);
      memset(v14, 0, 410);
      memset(&v14[26], 0, 32);
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v12 + 16), v10, v11, v14);
      v15 = a4;
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17> const&,health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(v7, v14, &v15, a5);
    }

    else
    {
      health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,double>>::_interiorChildAtIndex(result, a2, a3, v8, v14);
      return health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(v7, (a2 + 1), v14, a4, a5);
    }
  }

  return result;
}

uint64_t health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 374;
  health::RawBuffer::RawBuffer(v13, v15, 374);
  health::BlockAccessFile::ReadTransaction::retrieveBlock(a1, a2, a3, v13);
  v8 = 0;
  v9 = v15;
  if (v17 > 0x3FF)
  {
    v9 = v16;
  }

  v13[0] = v9;
  v13[1] = v9;
  v13[2] = 374;
  do
  {
    v10 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *v10 = v14;
    v14 = 0;
    health::DeserializationBuffer::extractRaw<long long>(v13, &v14);
    *(v10 + 8) = v14;
    LODWORD(v14) = 0;
    health::DeserializationBuffer::extractRaw<int>(v13, &v14);
    *(v10 + 16) = v14;
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v14) = 0;
  health::DeserializationBuffer::extractRaw<unsigned short>(v13, &v14);
  *(a4 + 408) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 416) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 424) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 432) = v14;
  v14 = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, &v14);
  *(a4 + 440) = v14;
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B1FAC0(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateLeaves<void health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_enumerateAllValues<health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(int,health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17> const&,health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1>::enumerateSamples(std::function<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1} const&,health::bplustree::EnumerationDirection)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v43 = result;
  if (a4 == 1)
  {
    if (*(a2 + 408))
    {
      v14 = *(a2 + 408) - 1;
      v15 = 1;
      v16 = 0.0;
      while (1)
      {
        v17 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v14);
        v18 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v14);
        if (v15 >= 2)
        {
          v19.n128_u64[0] = *v17;
          if (*v17 >= v16)
          {
            v20 = *MEMORY[0x277CCC2A0];
            std::string::basic_string[abi:ne200100]<0>(v55, "key < lastKey");
            std::string::basic_string[abi:ne200100]<0>(v54, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v53, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &__p);
            health::_HDAssertImplementation<health::btree_access_error>(v20, v55, v54, v53, 412, &__p);
          }
        }

        v21 = *(*a3 + 24);
        if (!v21)
        {
          break;
        }

        v16 = *v17;
        result = (*(*v21 + 48))(v21, v17, v18 + 8, v19);
        if ((result & 1) == 0)
        {
          return result;
        }

        ++v15;
        if (--v14 == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_48:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v16 = 0.0;
LABEL_35:
    v32 = MEMORY[0x277CCC2A0];
    v33 = *(a2 + 416);
    v34 = *(a2 + 424);
    while (1)
    {
      v35 = *(v43 + 16);
      if (v33 == *v35 && v34 == *(v35 + 8))
      {
        break;
      }

      v87 = 0u;
      memset(v88, 0, 26);
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v89 = 0u;
      v90 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v35 + 16), v33, v34, &v64);
      if (!WORD4(v88[1]))
      {
        v36 = *v32;
        std::string::basic_string[abi:ne200100]<0>(v51, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v50, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v49, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v48);
        health::_HDAssertImplementation<health::btree_access_error>(v36, v51, v50, v49, 422, &v48);
      }

      v37 = WORD4(v88[1]) - 1;
      do
      {
        v38 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](&v64, v37);
        v39 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](&v64, v37);
        if (*v38 >= v16)
        {
          v41 = *v32;
          std::string::basic_string[abi:ne200100]<0>(v47, "key < lastKey");
          std::string::basic_string[abi:ne200100]<0>(v46, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v44);
          health::_HDAssertImplementation<health::btree_access_error>(v41, v47, v46, v45, 427, &v44);
        }

        v42 = *(*a3 + 24);
        if (!v42)
        {
          goto LABEL_48;
        }

        v16 = *v38;
        v40.n128_f64[0] = *v38;
        result = (*(*v42 + 48))(v42, v38, v39 + 8, v40);
        if ((result & 1) == 0)
        {
          return result;
        }

        --v37;
      }

      while (v37 != -1);
      v34 = *(&v89 + 1);
      v33 = v89;
    }
  }

  else if (!a4)
  {
    v6 = MEMORY[0x277CCC2A0];
    if (*(a2 + 408))
    {
      v7 = 0;
      v8 = 0.0;
      while (1)
      {
        v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v7);
        v10 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a2, v7);
        if (v7)
        {
          v11.n128_u64[0] = *v9;
          if (*v9 <= v8)
          {
            v12 = *v6;
            std::string::basic_string[abi:ne200100]<0>(v94, "key > lastKey");
            std::string::basic_string[abi:ne200100]<0>(v93, "_enumerateLeaves");
            std::string::basic_string[abi:ne200100]<0>(v92, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
            health::FormatString<>("Out of order keys during btree enumeration.", &v91);
            health::_HDAssertImplementation<health::btree_access_error>(v12, v94, v93, v92, 382, &v91);
          }
        }

        v13 = *(*a3 + 24);
        if (!v13)
        {
          goto LABEL_48;
        }

        v8 = *v9;
        result = (*(*v13 + 48))(v13, v9, v10 + 8, v11);
        if ((result & 1) == 0)
        {
          return result;
        }

        if (++v7 >= *(a2 + 408))
        {
          goto LABEL_22;
        }
      }
    }

    v8 = 0.0;
LABEL_22:
    v22 = *(a2 + 432);
    v23 = *(a2 + 440);
    while (1)
    {
      v24 = *(v43 + 16);
      if (v22 == *v24 && v23 == *(v24 + 8))
      {
        break;
      }

      v87 = 0u;
      memset(v88, 0, 26);
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v89 = 0u;
      v90 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v24 + 16), v22, v23, &v64);
      if (!WORD4(v88[1]))
      {
        v25 = *v6;
        std::string::basic_string[abi:ne200100]<0>(v63, "leaf.valueCount > 0");
        std::string::basic_string[abi:ne200100]<0>(v62, "_enumerateLeaves");
        std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Empty leaf encountered during enumeration.", &v60);
        health::_HDAssertImplementation<health::btree_access_error>(v25, v63, v62, v61, 392, &v60);
      }

      v26 = 0;
      do
      {
        v27 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](&v64, v26);
        v28 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](&v64, v26);
        if (*v27 <= v8)
        {
          v30 = *v6;
          std::string::basic_string[abi:ne200100]<0>(v59, "key > lastKey");
          std::string::basic_string[abi:ne200100]<0>(v58, "_enumerateLeaves");
          std::string::basic_string[abi:ne200100]<0>(v57, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
          health::FormatString<>("Out of order keys during btree enumeration.", &v56);
          health::_HDAssertImplementation<health::btree_access_error>(v30, v59, v58, v57, 396, &v56);
        }

        v31 = *(*a3 + 24);
        if (!v31)
        {
          goto LABEL_48;
        }

        v8 = *v27;
        v29.n128_f64[0] = *v27;
        result = (*(*v31 + 48))(v31, v27, v28 + 8, v29);
        if ((result & 1) == 0)
        {
          return result;
        }

        ++v26;
      }

      while (v26 < WORD4(v88[1]));
      v23 = *(&v90 + 1);
      v22 = v90;
    }
  }

  return result;
}

void sub_228B202BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

__n128 _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK27_HDRawQuantitySampleValueV1EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE7D40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK27_HDRawQuantitySampleValueV1EEclES19_S1C_(void *a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a1[1] + 24);
  v13 = *a3;
  v20 = v4;
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v7 = (*(*v5 + 48))(v5, &v20, &v13);
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 3221225472;
  v14 = ___ZZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clId27_HDRawQuantitySampleValueV1EEbSO_S12__block_invoke;
  v15 = &__block_descriptor_64_e9_B16__0__8l;
  v8 = a1[3];
  v16 = a1[2];
  v17 = a2;
  v18 = v7;
  v19 = v9;
  if (v8)
  {
    v10 = &v20;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v20 = *v8;
  }

  v11 = hfd_catchExceptionsAsErrors(&v13, v10, 0);
  if (v8)
  {
    objc_storeStrong(v8, v20);
  }

  return v11;
}

void sub_228B2074C(void *a1)
{
  __cxa_begin_catch(a1);
  **(v1 + 32) = 1;
  __cxa_end_catch();
  JUMPOUT(0x228B2072CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK27_HDRawQuantitySampleValueV1EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvEUlSO_RKS9_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZZZZZL15HDMigrateDatumsI29QuantitySampleValueBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clId27_HDRawQuantitySampleValueV1EEbSO_S12__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (*(v2 + 96) + 80);
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = v4;
  v36[3] = v4;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (!v6)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v34 = 0u;
      memset(v35, 0, sizeof(v35));
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v6 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v4, 411);
      v5 = v7;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v4, v6, v7, &v11);
      *(v2 + 16) = v6;
      *(v2 + 24) = v5;
    }
  }

  *&v11 = v6;
  *(&v11 + 1) = v5;
  *&v12 = v36;
  v8 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::setValueForKey(&v11, v3, (a1 + 48));
  v9 = *(v2 + 48);
  if (v9)
  {
    if (!v8)
    {
      *(v2 + 48) = v9 + 1;
    }
  }

  else
  {
    *(v2 + 48) = 1;
    *v2 = xmmword_2291676B0;
  }

  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::_updateHistoryRoot(v2);
  return 1;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::setValueForKey(uint64_t a1, double *a2, _OWORD *a3)
{
  v6 = *(a1 + 16);
  memset(v15, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 24), *a1, *(a1 + 8), v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = *(a1 + 16);
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), __src);
    memcpy(v13, __src, sizeof(v13));
    v9 = *(*(a1 + 16) + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 411);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v9, v10, v11, v13);
    WORD4(__src[25]) = 1;
    *(&__src[0] + 1) = v10;
    *&__src[1] = v12;
    BYTE10(__src[25]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a1, *(a1 + 8), __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, _OWORD *a6)
{
  if (!*(a4 + 408))
  {
    memset(&v93[24], 0, 384);
    v19 = *(a1 + 16);
    v95 = *v19;
    v96 = *v19;
    *&v93[408] = 1;
    *v93 = *a5;
    *&v93[8] = *a6;
    v20 = *(v19 + 3);
    v21 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v20, 374);
    v23 = v22;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v20, v21, v22, v93);
    *a4 = *a5;
    *(a4 + 8) = v21;
    *(a4 + 16) = v23;
    *(a4 + 408) = 1;
    *(a4 + 410) = 1;
LABEL_8:
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 0;
  }

  if (*(a4 + 410) == 1)
  {
    v11 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
    v97 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) + 8);
    v12 = *(a1 + 16);
    memset(v93, 0, sizeof(v93));
    v96 = 0u;
    v95 = 0u;
    v13 = v97;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v12 + 24), v97, *(&v97 + 1), v93);
    v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(a1, &v97, v93, a5, a6);
    v15 = v14;
    if (v14 <= 1)
    {
      v16 = *a5;
      if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11))
      {
        v17 = *a5;
        *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) = v17;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      }

      return v15;
    }

    v30 = *(a4 + 408);
    if (v30 == 17)
    {
      v18 = 2;
      if (v11 == 16)
      {
        if (v14 == 4)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      else if (!v11)
      {
        if (v14 == 3)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return v18;
    }

    if (v14 == 4 && v30 - 1 == v11)
    {
      memset(&v90[1] + 8, 0, 384);
      WORD4(v90[25]) = 1;
      *v90 = *a5;
      *(v90 + 8) = *a6;
      v91 = v97;
      v92 = v96;
      v31 = *(*(a1 + 16) + 24);
      v32 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v31, 374);
      v34 = v33;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v31, v32, v33, v90);
      *&v96 = v32;
      *(&v96 + 1) = v34;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v13, *(&v13 + 1), v93);
      v35 = *(a1 + 16);
      if (v92 != *v35)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        *__p = 0u;
        v64 = 0u;
        v88 = 0u;
        v89 = 0u;
        memset(v87, 0, sizeof(v87));
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v35 + 24), v92, *(&v92 + 1), __p);
        *&v88 = v32;
        *(&v88 + 1) = v34;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v92, *(&v92 + 1), __p);
      }

      v36 = *(a4 + 408);
      v37 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v36);
      *(v37 + 8) = v32;
      *(v37 + 16) = v34;
      v38 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v36) = v38;
      ++*(a4 + 408);
      goto LABEL_8;
    }

    v62 = v97;
    memset(&v90[12], 0, 216);
    v91 = v97;
    v92 = v96;
    if (*&v93[408] >= 0x12uLL)
    {
      v45 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(__p, "sourceIndex + elementCount <= Length");
      std::string::basic_string[abi:ne200100]<0>(&v100, "copyElementsFromArrayToIndex");
      std::string::basic_string[abi:ne200100]<0>(&v99, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Copy would overflow source.", &v98);
      health::_HDAssertImplementation<std::out_of_range>(v45, __p, &v100, &v99, 80, &v98);
    }

    v46 = &v93[24 * *&v93[408]];
    v47 = *(v46 - 3);
    v90[8] = *(v46 - 4);
    v90[9] = v47;
    v48 = *(v46 - 1);
    v90[10] = *(v46 - 2);
    v90[11] = v48;
    v49 = *(v46 - 7);
    v90[4] = *(v46 - 8);
    v90[5] = v49;
    v50 = *(v46 - 5);
    v90[6] = *(v46 - 6);
    v90[7] = v50;
    v51 = *(v46 - 11);
    v90[0] = *(v46 - 12);
    v90[1] = v51;
    v52 = *(v46 - 9);
    v90[2] = *(v46 - 10);
    v90[3] = v52;
    *&v93[408] -= 8;
    WORD4(v90[25]) = 8;
    v53 = *(*(a1 + 16) + 24);
    v54 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v53, 374);
    v56 = v55;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v53, v54, v55, v90);
    *&v100 = v54;
    *(&v100 + 1) = v56;
    v96 = v100;
    v57 = *(a1 + 16);
    if (v92 != *v57)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      *__p = 0u;
      v64 = 0u;
      v88 = 0u;
      v89 = 0u;
      memset(v87, 0, sizeof(v87));
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v57 + 24), v92, *(&v92 + 1), __p);
      v88 = v100;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v92, *(&v92 + 1), __p);
    }

    __p[0] = *&v90[0];
    __p[1] = v54;
    *&v64 = v56;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, __p, v11 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v62, *(&v62 + 1), v93);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *v90)
    {
      v58 = &v62;
      v59 = v93;
    }

    else
    {
      v58 = &v100;
      v59 = v90;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(a1, v58, v59, a5, a6);
  }

  v25 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v26 = v25;
  v100 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v25) + 8);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_interiorChildAtIndex(v93, a1, a2 + 1, a4, v25);
  v27 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(a1, (a2 + 2), &v100, v93, a5, a6);
  if (v27 > 1)
  {
    if (*(a4 + 408) == 17)
    {
      return 2;
    }

    v99 = v100;
    memset(&v90[1], 0, 395);
    BYTE10(v90[25]) = v94;
    v90[0] = 0u;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(v90, 0, v93, *&v93[408] - 8, 8);
    *&v93[408] -= 8;
    WORD4(v90[25]) = 8;
    v39 = *(*(a1 + 16) + 24);
    v40 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v39, 411);
    v42 = v41;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v39, v40, v41, v90);
    v98.__r_.__value_.__r.__words[0] = v40;
    v98.__r_.__value_.__l.__size_ = v42;
    __p[0] = *&v90[0];
    __p[1] = v40;
    *&v64 = v42;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, __p, v26 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v99, *(&v99 + 1), v93);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *v90)
    {
      v43 = &v99;
      v44 = v93;
    }

    else
    {
      v43 = &v98;
      v44 = v90;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(a1, (a2 + 2), v43, v44, a5, a6);
  }

  v18 = v27;
  v28 = *a5;
  if (v28 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v26))
  {
    v29 = *a5;
    *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v26) = v29;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
  }

  return v18;
}

void sub_228B21394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 177) < 0)
  {
    operator delete(*(v16 - 200));
  }

  if (*(v16 - 153) < 0)
  {
    operator delete(*(v16 - 176));
  }

  if (*(v16 - 121) < 0)
  {
    operator delete(*(v16 - 144));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 374;
  v14[0] = v15;
  v14[1] = v15;
  v14[2] = 374;
  do
  {
    v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
    v13[0] = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = *(v9 + 8);
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 16);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v13[0]) = *(a4 + 408);
  health::SerializationBuffer::appendRaw<unsigned short>(v14, v13);
  v13[0] = *(a4 + 416);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 424);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 432);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 440);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  if (v17 <= 0x3FF)
  {
    v10 = v15;
  }

  else
  {
    v10 = v16;
  }

  health::RawBuffer::RawBuffer(v13, v10, v17);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B21598(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, _OWORD *a5)
{
  if (!*(a3 + 408))
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v27, "valueCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v26, "indexForKey");
    std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for index for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v27, v26, v25, 72, &__p);
  }

  v11 = *(a3 + 408) - 1;
  while (1)
  {
    v12 = *a4;
    if (v12 > *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v11))
    {
      break;
    }

    v13 = *a4;
    v14 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v11);
    v15 = v11;
    if (v13 == *v14)
    {
      *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a3, v11) + 8) = *a5;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
      return 1;
    }

    --v11;
    if (!v15)
    {
      LOWORD(v11) = 0;
      v16 = 0x100000000;
      goto LABEL_9;
    }
  }

  v16 = 0x200000000;
LABEL_9:
  if (*(a3 + 408) == 17)
  {
    if (*a4 >= *a3)
    {
      if (*a4 <= *(a3 + 384))
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v18 = v16 | v11;
    if ((v18 & 0x300000000) == 0x200000000)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = *a4;
    v23 = *a5;
    if (v19 >= 0x11)
    {
      v21 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "index < Length");
      std::string::basic_string[abi:ne200100]<0>(v26, "insertElementAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Index out of bounds.", &__p);
      health::_HDAssertImplementation<std::out_of_range>(v21, v27, v26, v25, 57, &__p);
    }

    v22 = (a3 + 24 * v19);
    memmove(v22 + 3, v22, 24 * (16 - v19));
    *v22 = v20;
    *(v22 + 1) = v23;
    ++*(a3 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
    return 0;
  }
}

void sub_228B218D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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

  _Unwind_Resume(exception_object);
}

double *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_interiorChildAtIndex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (*(a4 + 408) <= a5)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a3 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a2 + 16);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a1);
  if (*(a1 + 408))
  {
    v16 = *a1;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a4 + 408) - 1 > a5)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, *(a1 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5 + 1);
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228B21D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE7DE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, health::DataStore::WriteTransaction *a2)
{
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::loadHistoryRoot(v5, *(a1 + 8), 0);
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12 + 80;
  v15[3] = v12 + 80;
  if (v6 != 0)
  {
    v13 = v6;
    v14 = v15;
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v12 + 10, v6, *(&v6 + 1), __src);
    memcpy(__dst, __src, sizeof(__dst));
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(&v13, 0, &v13, __dst);
  }

  v8 = 0;
  health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::_updateHistoryRoot(v5);
  health::DataStore::WriteTransaction::removeObjectWithIdentifier(a2, *(a1 + 8));
  return 1;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<QuantitySampleValueBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(uint64_t a1, int a2, unint64_t *a3, uint64_t a4)
{
  if (*(a4 + 408))
  {
    v8 = 0;
    do
    {
      if (*(a4 + 410) == 1)
      {
        v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_removeLeaf<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(a1, v9 + 8);
      }

      else
      {
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_interiorChildAtIndex(__src, a1, a2, a4, v8);
        v10 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        memcpy(v12, __src, sizeof(v12));
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(a1, (a2 + 1), v10 + 8, v12);
      }

      ++v8;
    }

    while (v8 < *(a4 + 408));
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(*(a1 + 16) + 24), *a3, a3[1]);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawQuantitySampleValueV1>>::_removeLeaf<health::DataStore::MutableSampleHistory<QuantitySampleValueBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawQuantitySampleValueV1 const&)#1}>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  memset(v9, 0, 410);
  v10 = 0u;
  v11 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(v4 + 24), *a2, *(a2 + 8), v9);
  if (WORD4(v9[25]))
  {
    v5 = 0;
    do
    {
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v9, v5);
      health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](v9, v5++);
    }

    while (v5 < WORD4(v9[25]));
  }

  v6 = *(a1 + 16);
  v7 = v11;
  if (v11 != *v6)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(v36, 0, sizeof(v36));
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v6[3], v11, *(&v11 + 1), &v12);
    v37 = v10;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v11, *(&v11 + 1), &v12);
    v6 = *(a1 + 16);
    v7 = *v6;
  }

  if (v10 != __PAIR128__(v6[1], v7))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(v36, 0, sizeof(v36));
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(v6[3], v10, *(&v10 + 1), &v12);
    v38 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawQuantitySampleValueV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v10, *(&v10 + 1), &v12);
    v6 = *(a1 + 16);
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(v6[3], *a2, *(a2 + 8));
}

uint64_t std::__function::__value_func<void ()(health::DataStore::SampleHistory<QuantitySampleValueBehaviorV1> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<_HDRawQuantitySampleValueV1 ()(double,_HDRawQuantitySampleValueV1)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_228B22834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(double const&,_HDRawQuantitySampleValueV1 const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_228B22B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(double const&,double const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMedicalDateIntervalReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HDCodableMedicalDate);
        v14 = 8;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HDCodableMedicalDate);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableMedicalDateReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSemanticDateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableInspectableValueCollectionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(HDCodableInspectableValue);
        [a1 addCollection:v21];
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !HDCodableInspectableValueReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(HDCodableMedicalCodingList);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !HDCodableMedicalCodingListReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCodedValueCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableCodedValue);
        [a1 addCodedValues:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableCodedValueReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableRatioValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HDCodableCodedQuantity);
        v14 = 8;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HDCodableCodedQuantity);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableCodedQuantityReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCodedValueReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(HDCodableReferenceRange);
        [a1 addReferenceRanges:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableReferenceRangeReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HDCodableMedicalCodingList);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicalCodingListReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableInspectableValue);
    objc_storeStrong(a1 + 3, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !HDCodableInspectableValueReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicalDateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = PBReaderReadString();
        v24 = *(a1 + 24);
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        *(a1 + 32) |= 2u;
        v28 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v28;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCodedQuantityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(HDCodableMedicalCoding);
        v16 = 8;
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(HDCodableMedicalCoding);
    v16 = 24;
LABEL_23:
    objc_storeStrong((a1 + v16), v15);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableMedicalCodingReadFrom(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableInspectableValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v23 = PBReaderReadString();
            v24 = *(a1 + 80);
            *(a1 + 80) = v23;

            goto LABEL_73;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(HDCodableRatioValue);
            objc_storeStrong((a1 + 72), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HDCodableRatioValueReadFrom(v14, a2))
            {
LABEL_84:

              return 0;
            }

            goto LABEL_72;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(HDCodableDateComponents);
              objc_storeStrong((a1 + 40), v14);
              v34 = 0;
              v35 = 0;
              if (!PBReaderPlaceMark() || !HDCodableDateComponentsReadFrom(v14, a2))
              {
                goto LABEL_84;
              }

              goto LABEL_72;
            case 4:
              v14 = objc_alloc_init(HDCodableCodedQuantity);
              objc_storeStrong((a1 + 16), v14);
              v34 = 0;
              v35 = 0;
              if (!PBReaderPlaceMark() || !HDCodableCodedQuantityReadFrom(v14, a2))
              {
                goto LABEL_84;
              }

              goto LABEL_72;
            case 5:
              v14 = objc_alloc_init(HDCodableMedicalCodingList);
              v15 = 48;
              goto LABEL_70;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(HDCodableMedicalCodingList);
            v15 = 32;
LABEL_70:
            objc_storeStrong((a1 + v15), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMedicalCodingListReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

LABEL_72:
            PBReaderRecallMark();

            goto LABEL_73;
          case 0xA:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34 & 0x7F) << v25;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_80;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_80:
            *(a1 + 8) = v31;
            goto LABEL_73;
          case 0xB:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v34 & 0x7F) << v16;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_82;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_82:
            *(a1 + 88) = v22;
            goto LABEL_73;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(HDCodableCodedValueCollection);
            objc_storeStrong((a1 + 24), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HDCodableCodedValueCollectionReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_72;
          case 7:
            v14 = objc_alloc_init(HDCodableMedicalDate);
            objc_storeStrong((a1 + 64), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMedicalDateReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_72;
          case 8:
            v14 = objc_alloc_init(HDCodableMedicalDateInterval);
            objc_storeStrong((a1 + 56), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMedicalDateIntervalReadFrom(v14, a2))
            {
              goto LABEL_84;
            }

            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}