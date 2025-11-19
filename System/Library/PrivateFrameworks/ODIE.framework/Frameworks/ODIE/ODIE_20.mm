void std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::pop_front(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](*(*(a1 + 8) + 8 * (*(a1 + 32) / 0x66uLL)) + 40 * (*(a1 + 32) % 0x66uLL));
  v2 = vaddq_s64(*(a1 + 32), xmmword_25D0A06C0);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0xCCuLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }
}

BOOL llvm::StdThreadPool::workCompletedUnlocked(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (!*(a1 + 256))
    {
      return *(a1 + 88) == 0;
    }

    return 0;
  }

  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::doFind<llvm::ThreadPoolTaskGroup const*>(*(a1 + 264), *(a1 + 280), a2))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  if (*(a1 + 64) == v4)
  {
    return 1;
  }

  v5 = *(a1 + 80);
  v6 = (v4 + 8 * (v5 / 0x66));
  v7 = *v6;
  v8 = *v6 + 40 * (v5 % 0x66);
  v9 = *(v4 + 8 * ((*(a1 + 88) + v5) / 0x66)) + 40 * ((*(a1 + 88) + v5) % 0x66);
  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    v10 = *(v8 + 32);
    result = v10 != a2;
    if (v10 == a2)
    {
      break;
    }

    v8 += 40;
    if (v8 - v7 == 4080)
    {
      v12 = v6[1];
      ++v6;
      v7 = v12;
      v8 = v12;
    }
  }

  while (v8 != v9);
  return result;
}

void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock(*(a1 + 32));
  v4 = pthread_self();
  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    if (v4 == *i)
    {
      pthread_rwlock_unlock(*(a1 + 32));

      llvm::StdThreadPool::processTasks(a1, a2);
      return;
    }
  }

  pthread_rwlock_unlock(*(a1 + 32));
  v6.__m_ = (a1 + 96);
  v6.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  if (llvm::StdThreadPool::workCompletedUnlocked(a1, a2))
  {
    goto LABEL_8;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &v6);
  }

  while (!llvm::StdThreadPool::workCompletedUnlocked(a1, a2));
  if (v6.__owns_)
  {
LABEL_8:
    std::mutex::unlock(v6.__m_);
  }
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &unk_286E799A8;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  pthread_rwlock_rdlock(*(this + 4));
  v3 = *(this + 1);
  v4 = *(this + 2);
  while (v3 != v4)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3++ = 0;
  }

  pthread_rwlock_unlock(*(this + 4));
  MEMORY[0x25F891030](*(this + 33), 8);
  std::condition_variable::~condition_variable((this + 208));
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](this + 48);
  v5 = *(this + 4);
  pthread_rwlock_destroy(v5);
  free(v5);
  v6 = *(this + 1);
  if (v6)
  {
    for (i = *(this + 2); i != v6; i -= 8)
    {
      if (*(i - 1))
      {
        std::terminate();
      }
    }

    *(this + 2) = v6;
    operator delete(v6);
  }
}

{
  llvm::StdThreadPool::~StdThreadPool(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::StdThreadPool::asyncEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 96));
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](&v19, a2);
  v21 = a3;
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>((a1 + 48), &v19);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v19);
  v6 = *(a1 + 256);
  v7 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  pthread_rwlock_wrlock(*(a1 + 32));
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = (v9 - v8) >> 3;
  v11 = *(a1 + 300);
  if (v10 < v11)
  {
    v12 = v11 >= v6 + v7 ? v6 + v7 : *(a1 + 300);
    if (v12 > ((v9 - v8) >> 3))
    {
      v19 = a1;
      v20 = (v9 - v8) >> 3;
      v13 = *(a1 + 24);
      if (v9 < v13)
      {
        std::allocator_traits<std::allocator<llvm::thread>>::construct[abi:nn200100]<llvm::thread,llvm::StdThreadPool::grow(int)::$_0,0>();
      }

      if (!((v10 + 1) >> 61))
      {
        v14 = v13 - v8;
        v15 = v14 >> 2;
        if (v14 >> 2 <= v10 + 1)
        {
          v15 = v10 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (!(v16 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        std::allocator_traits<std::allocator<llvm::thread>>::construct[abi:nn200100]<llvm::thread,llvm::StdThreadPool::grow(int)::$_0,0>();
      }

      std::vector<llvm::thread>::__throw_length_error[abi:nn200100]();
    }
  }

  result = pthread_rwlock_unlock(*(a1 + 32));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x66;
    v9 = v7 - 102;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>(v13);
    }

    a1[4] = v9;
    v17 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *,std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *&>(a1, &v17);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = *&v4[8 * (v14 / 0x66)] + 40 * (v14 % 0x66);
  }

  result = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v15, a2);
  *(result + 32) = *(a2 + 32);
  ++a1[5];
  return result;
}

void *std::__split_buffer<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *,std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x66];
    v7 = *v6 + 40 * (v5 % 0x66);
    v8 = v3[(*(a1 + 40) + v5) / 0x66] + 40 * ((*(a1 + 40) + v5) % 0x66);
    if (v7 != v8)
    {
      do
      {
        v7 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7) + 40;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 51;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 102;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>(uint64_t *a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v5[0] = "llvm-worker-{0}";
  v5[1] = 15;
  v5[2] = &v8;
  v5[3] = 1;
  v6 = 1;
  v7[0] = &unk_286E799E8;
  v7[1] = a1 + 1;
  v8 = v7;
  v10 = 263;
  v9 = v5;
  llvm::set_thread_name(&v9, a2);
  llvm::StdThreadPool::processTasks(v3, 0);
  MEMORY[0x25F891040](a1, 0x1020C403A5D3213);
  return 0;
}

llvm::raw_ostream *llvm::support::detail::provider_format_adapter<int const&>::format(uint64_t a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v16 = a3;
  v17 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v16, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v17)
    {
      v8 = 0;
      v9 = *v16;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v8 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v9 == 100)
      {
        goto LABEL_17;
      }

      if (v9 == 110)
      {
LABEL_16:
        ++v16;
        v8 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v7))
    {
      v15 = 0;
    }

    else
    {
      v15 = v18;
    }

    return llvm::write_integer(a2, *v5, v15, v8);
  }

  v10 = v6;
  v18 = 0;
  v11 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v7);
  v12 = v18;
  if (v11)
  {
    v12 = 0;
  }

  if ((v10 & 0xFFFFFFFE) == 2)
  {
    v13 = v12 + 2;
  }

  else
  {
    v13 = v12;
  }

  return llvm::write_hex(a2, *v5, v10, v13, 1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::LookupBucketFor<llvm::ThreadPoolTaskGroup *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::LookupBucketFor<llvm::ThreadPoolTaskGroup *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>,llvm::ThreadPoolTaskGroup *,unsigned int,llvm::DenseMapInfo<llvm::ThreadPoolTaskGroup *,void>,llvm::detail::DenseMapPair<llvm::ThreadPoolTaskGroup *,unsigned int>>::doFind<llvm::ThreadPoolTaskGroup const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v4 = *(a1 + 16 * v3);
    if (v4 == a3)
    {
      return a1 + 16 * v3;
    }

    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 16 * v3);
      if (v4 == a3)
      {
        return a1 + 16 * v3;
      }
    }
  }

  return 0;
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t llvm::timeTraceProfilerBegin(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (*TimeTraceProfilerInstance())
  {
    if (a2 < 0x7FFFFFFFFFFFFFF8)
    {
      if (a2 < 0x17)
      {
        v9 = a2;
        if (a2)
        {
          memmove(&__dst, a1, a2);
        }

        *(&__dst + a2) = 0;
        v7 = v10;
        std::chrono::steady_clock::now();
        llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>(&v7, &v11);
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t *llvm::TimeTraceProfiler::end(uint64_t a1, uint64_t a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(a2 + 8) = v4;
  v6 = v4.__d_.__rep_ - *a2;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = &v7[v8];
    while (*v7 != a2)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        v7 = v10;
        break;
      }
    }
  }

  if (v6 / 1000 >= *(a1 + 13576))
  {
    llvm::SmallVectorImpl<llvm::TimeTraceProfilerEntry>::emplace_back<llvm::TimeTraceProfilerEntry&>(a1 + 144, a2);
    v19 = *(*v7 + 104);
    v20 = *(*v7 + 112);
    while (v19 != v20)
    {
      llvm::SmallVectorImpl<llvm::TimeTraceProfilerEntry>::emplace_back<llvm::TimeTraceProfilerEntry&>(a1 + 144, v19);
      v19 += 104;
    }
  }

  v53 = v6;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a1 + 8 * v12 - 8;
  v14 = (a2 + 16);
  if (v13 == *a1)
  {
    v15 = *(a2 + 39);
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = *(a2 + 39);
LABEL_27:
    if (v18 >= 0)
    {
      v32 = v14;
    }

    else
    {
      v32 = v17;
    }

    if (v18 >= 0)
    {
      v33 = v15;
    }

    else
    {
      v33 = v16;
    }

    v34 = llvm::xxh3_64bits(v32, v33, v5.__d_.__rep_);
    v35 = llvm::StringMapImpl::LookupBucketFor((a1 + 13472), v32, v33, v34);
    v36 = *(a1 + 13472);
    v37 = v35;
    v38 = *(v36 + 8 * v35);
    if (v38 == -8)
    {
      --*(a1 + 13488);
      v39 = v53;
    }

    else
    {
      v39 = v53;
      if (v38)
      {
LABEL_46:
        v45.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v45.i64[1] = v39;
        *(v38 + 8) = vaddq_s64(*(v38 + 8), v45);
        v11 = *a1;
        v12 = *(a1 + 8);
        goto LABEL_47;
      }
    }

    buffer = llvm::allocate_buffer((v33 + 25), 8uLL);
    v41 = buffer;
    v42 = (buffer + 3);
    if (v33)
    {
      memcpy(buffer + 3, v32, v33);
    }

    v42[v33] = 0;
    v41[1] = 0;
    v41[2] = 0;
    *v41 = v33;
    *(v36 + 8 * v37) = v41;
    ++*(a1 + 13484);
    for (i = (*(a1 + 13472) + 8 * llvm::StringMapImpl::RehashTable((a1 + 13472), v37)); ; ++i)
    {
      v38 = *i;
      if (*i && v38 != -8)
      {
        break;
      }
    }

    goto LABEL_46;
  }

  v15 = *(a2 + 39);
  v18 = v15;
  v17 = *(a2 + 16);
  v51 = *(a2 + 24);
  v52 = a2 + 16;
  if ((v15 & 0x80u) == 0)
  {
    v21 = *(a2 + 39);
  }

  else
  {
    v21 = *(a2 + 24);
  }

  if ((v15 & 0x80u) == 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v17;
  }

  while (1)
  {
    v24 = *(v13 - 8);
    v13 -= 8;
    v23 = v24;
    v25 = *(v24 + 39);
    v26 = v25;
    v27 = *(v24 + 24);
    if ((v25 & 0x80u) != 0)
    {
      v25 = v27;
    }

    if (v25 == v21)
    {
      v30 = *(v23 + 16);
      v28 = v23 + 16;
      v29 = v30;
      v31 = (v26 >= 0 ? v28 : v29);
      if (!memcmp(v31, v22, v21))
      {
        break;
      }
    }

    if (v13 == v11)
    {
      v16 = v51;
      v14 = v52;
      goto LABEL_27;
    }
  }

LABEL_47:
  v46 = v7 + 1;
  v47 = &v11[v12];
  if (v7 + 1 != v47)
  {
    do
    {
      v48 = v46 - 1;
      v49 = *v46;
      *v46++ = 0;
      std::unique_ptr<InProgressEntry>::reset[abi:nn200100](v48, v49);
    }

    while (v46 != v47);
    LODWORD(v12) = *(a1 + 8);
    v11 = *a1;
  }

  *(a1 + 8) = v12 - 1;

  return std::unique_ptr<InProgressEntry>::reset[abi:nn200100](&v11[(v12 - 1)], 0);
}

uint64_t *std::unique_ptr<InProgressEntry>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = *(v2 + 112);
      v5 = *(v2 + 104);
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 17) < 0)
          {
            operator delete(*(v4 - 40));
          }

          if (*(v4 - 41) < 0)
          {
            operator delete(*(v4 - 64));
          }

          if (*(v4 - 65) < 0)
          {
            operator delete(*(v4 - 88));
          }

          v4 -= 104;
        }

        while (v4 != v3);
        v5 = *(v2 + 104);
      }

      *(v2 + 112) = v3;
      operator delete(v5);
    }

    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<InProgressEntry>,false>::growAndEmplaceBack<std::unique_ptr<InProgressEntry>>(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v16);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  v8 = *a1;
  if (v6)
  {
    v9 = 8 * v6;
    v10 = v5;
    v11 = *a1;
    do
    {
      v12 = *v11;
      *v11++ = 0;
      *v10++ = v12;
      v9 -= 8;
    }

    while (v9);
    v13 = -8 * v6;
    v14 = &v8[v6 - 1];
    do
    {
      std::unique_ptr<InProgressEntry>::reset[abi:nn200100](v14--, 0);
      v13 += 8;
    }

    while (v13);
    v8 = *a1;
  }

  v15 = v16;
  if (v8 != v4)
  {
    free(v8);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v15;
}

void llvm::SmallVectorImpl<llvm::TimeTraceProfilerEntry>::emplace_back<llvm::TimeTraceProfilerEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<llvm::TimeTraceProfilerEntry,false>::growAndEmplaceBack<llvm::TimeTraceProfilerEntry&>(a1, a2);
  }

  else
  {
    v5 = *a1 + 104 * v4;
    *v5 = *a2;
    if (*(a2 + 39) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 16), *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v6 = *(a2 + 16);
      *(v5 + 32) = *(a2 + 32);
      *(v5 + 16) = v6;
    }

    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 40), *(a2 + 40), *(a2 + 48));
    }

    else
    {
      v7 = *(a2 + 40);
      *(v5 + 56) = *(a2 + 56);
      *(v5 + 40) = v7;
    }

    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 64), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v8 = *(a2 + 64);
      *(v5 + 80) = *(a2 + 80);
      *(v5 + 64) = v8;
    }

    *(v5 + 88) = *(a2 + 88);
    *(v5 + 96) = *(a2 + 96);
    ++*(a1 + 8);
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::TimeTraceProfilerEntry,false>::growAndEmplaceBack<llvm::TimeTraceProfilerEntry&>(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v25);
  v6 = &v5[104 * *(a1 + 8)];
  *v6 = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v7 = *(a2 + 16);
    *(v6 + 4) = *(a2 + 32);
    *(v6 + 1) = v7;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v8 = *(a2 + 40);
    *(v6 + 7) = *(a2 + 56);
    *(v6 + 40) = v8;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v9 = *(a2 + 64);
    *(v6 + 10) = *(a2 + 80);
    *(v6 + 4) = v9;
  }

  *(v6 + 22) = *(a2 + 88);
  *(v6 + 24) = *(a2 + 96);
  v10 = *a1;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = &v10[104 * v11];
    v13 = v5 + 16;
    v14 = v10 + 16;
    do
    {
      *(v13 - 1) = *(v14 - 1);
      if (v14[23] < 0)
      {
        std::string::__init_copy_ctor_external(v13, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        *(v13 + 2) = *(v14 + 2);
        *v13 = v15;
      }

      v16 = v14 - 16;
      v17 = *(v14 + 24);
      *(v13 + 5) = *(v14 + 5);
      *(v13 + 24) = v17;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
      *(v14 + 3) = 0;
      v18 = *(v14 + 3);
      *(v13 + 8) = *(v14 + 8);
      *(v13 + 3) = v18;
      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 6) = 0;
      *(v13 + 18) = *(v14 + 18);
      *(v13 + 20) = *(v14 + 20);
      v13 += 104;
      v14 += 104;
    }

    while (v16 + 104 != v12);
    v10 = *a1;
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = -104 * v19;
      v21 = &v10[104 * v19 - 41];
      do
      {
        if (v21[24] < 0)
        {
          operator delete(*(v21 + 1));
        }

        if (*v21 < 0)
        {
          operator delete(*(v21 - 23));
        }

        if (*(v21 - 24) < 0)
        {
          operator delete(*(v21 - 47));
        }

        v21 -= 104;
        v20 += 104;
      }

      while (v20);
      v10 = *a1;
    }
  }

  v22 = v25;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v23 = *(a1 + 8) + 1;
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return &v5[104 * v23 - 104];
}

const void ***llvm::function_ref<std::string ()(void)>::callback_fn<llvm::timeTraceProfilerBegin(llvm::StringRef,llvm::StringRef)::$_0>@<X0>(const void ***result@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*result)[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = **result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
  }

  a2[v3] = 0;
  return result;
}

void llvm::CreateInfoOutputFile()
{
  if (!atomic_load_explicit(qword_27FC1DA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1DA98, llvm::object_creator<llvm::TimerGlobals>::call, llvm::object_deleter<llvm::TimerGlobals>::call);
  }

  if (*(qword_27FC1DA98[0] + 23) < 0)
  {
    v2 = *(qword_27FC1DA98[0] + 8);
    if (!v2)
    {
      goto LABEL_10;
    }

    if (v2 != 1)
    {
      goto LABEL_14;
    }

    v3 = *qword_27FC1DA98[0];
  }

  else
  {
    if (*(qword_27FC1DA98[0] + 23) != 1)
    {
      if (*(qword_27FC1DA98[0] + 23))
      {
        goto LABEL_14;
      }

LABEL_10:
      operator new();
    }

    v3 = qword_27FC1DA98[0];
  }

  if (*v3 == 45)
  {
    operator new();
  }

LABEL_14:
  operator new();
}

void llvm::TimerGroup::removeTimer(uint64_t a1, uint64_t a2)
{
  if (!atomic_load_explicit(qword_27FC1DA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1DA98, llvm::object_creator<llvm::TimerGlobals>::call, llvm::object_deleter<llvm::TimerGlobals>::call);
  }

  v4 = qword_27FC1DA98[0];
  std::recursive_mutex::lock((qword_27FC1DA98[0] + 600));
  if (*(a2 + 129) == 1)
  {
    v6 = *(a1 + 64);
    if (v6 >= *(a1 + 72))
    {
      v5 = std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord &,std::string &,std::string &>((a1 + 56), a2, (a2 + 80), (a2 + 104));
    }

    else
    {
      v5 = (llvm::TimerGroup::PrintRecord::PrintRecord(v6, a2, (a2 + 80), (a2 + 104)) + 88);
    }

    *(a1 + 64) = v5;
  }

  *(a2 + 136) = 0;
  v7 = *(a2 + 152);
  **(a2 + 144) = v7;
  if (v7)
  {
    *(v7 + 144) = *(a2 + 144);
  }

  if (!*(a1 + 48) && *(a1 + 56) != *(a1 + 64))
  {
    llvm::CreateInfoOutputFile(v19, v5);
    v8 = v19[0];
    if (!atomic_load_explicit(qword_27FC1DA98, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1DA98, llvm::object_creator<llvm::TimerGlobals>::call, llvm::object_deleter<llvm::TimerGlobals>::call);
    }

    if (*(qword_27FC1DA98[0] + 536) == 1)
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3));
      if (v10 == v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(v9, v10, v12, 1);
    }

    v13 = 0uLL;
    v20 = 0u;
    v21 = 0u;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    if (v14 == v15)
    {
      v17 = 0.0;
    }

    else
    {
      v16 = 0uLL;
      v17 = 0.0;
      do
      {
        v17 = v17 + *v14;
        v16 = vaddq_f64(v16, *(v14 + 8));
        v13 = vaddq_s64(*(v14 + 24), v13);
        v14 += 88;
      }

      while (v14 != v15);
      v20 = v16;
      v21 = v13;
    }

    v19[5] = *&v17;
    v18 = *(v8 + 4);
    if ((*(v8 + 3) - v18) > 2)
    {
      *(v18 + 2) = 61;
      *v18 = 15677;
      *(v8 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v8, "===", 3uLL);
    }

    operator new();
  }

  std::recursive_mutex::unlock((v4 + 600));
}

void llvm::TimeRecord::print(llvm::TimeRecord *this, const TimeRecord *a2, llvm::raw_ostream *a3)
{
  v6 = *&a2->scale;
  if (v6 != 0.0)
  {
    printVal(*(this + 1), v6, a3);
  }

  v7 = *(&a2->base + 4);
  if (v7 != 0.0)
  {
    printVal(*(this + 2), v7, a3);
    v7 = *(&a2->base + 4);
  }

  v8 = v7 + *&a2->scale;
  if (v8 != 0.0)
  {
    printVal(*(this + 1) + *(this + 2), v8, a3);
  }

  printVal(*this, *&a2->value, a3);
  v9 = *(a3 + 4);
  if (*(a3 + 3) - v9 > 1uLL)
  {
    *v9 = 8224;
    *(a3 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a3, "  ", 2uLL);
  }

  if (*&a2[1].value.hi)
  {
    v10 = *(this + 3);
    v12 = &unk_286E79A38;
    v13 = "%9lld  ";
    v14 = v10;
    llvm::raw_ostream::operator<<(a3, &v12);
  }

  if (a2[1].base)
  {
    v11 = *(this + 4);
    v12 = &unk_286E79A38;
    v13 = "%9lld  ";
    v14 = v11;
    llvm::raw_ostream::operator<<(a3, &v12);
  }
}

double printVal(double a1, double a2, llvm::raw_ostream *a3)
{
  if (a2 >= 0.0000001)
  {
    v7[4] = v3;
    v7[5] = v4;
    v7[0] = &unk_286E79A18;
    v7[1] = "  %7.4f (%5.1f%%)";
    *&v7[2] = a1;
    *&v7[3] = a1 * 100.0 / a2;
    llvm::raw_ostream::operator<<(a3, v7);
  }

  else
  {
    v5 = *(a3 + 4);
    if ((*(a3 + 3) - v5) > 0x11)
    {
      *(v5 + 16) = 8224;
      result = *"        -----     ";
      *v5 = *"        -----     ";
      *(a3 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    }
  }

  return result;
}

void llvm::TimerGroup::~TimerGroup(llvm::TimerGroup *this)
{
  for (i = *(this + 6); i; i = *(this + 6))
  {
    llvm::TimerGroup::removeTimer(this, i);
  }

  if (!atomic_load_explicit(qword_27FC1DA98, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1DA98, llvm::object_creator<llvm::TimerGlobals>::call, llvm::object_deleter<llvm::TimerGlobals>::call);
  }

  v3 = qword_27FC1DA98[0];
  std::recursive_mutex::lock((qword_27FC1DA98[0] + 600));
  v4 = *(this + 11);
  **(this + 10) = v4;
  if (v4)
  {
    *(v4 + 80) = *(this + 10);
  }

  std::recursive_mutex::unlock((v3 + 600));
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 8);
    v7 = *(this + 7);
    if (v6 != v5)
    {
      do
      {
        v6 -= 88;
        std::allocator<llvm::TimerGroup::PrintRecord>::destroy[abi:nn200100](v6);
      }

      while (v6 != v5);
      v7 = *(this + 7);
    }

    *(this + 8) = v5;
    operator delete(v7);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void anonymous namespace::Name2PairMap::~Name2PairMap(uint64_t **this)
{
  v2 = *(this + 2);
  if (v2)
  {
      ;
    }
  }

  else
  {
    i = *this;
  }

  v5 = &(*this)[v2];
  if (i != v5)
  {
    v6 = *i;
    do
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        llvm::TimerGroup::~TimerGroup(v7);
        MEMORY[0x25F891040]();
      }

      do
      {
        v8 = i[1];
        ++i;
        v6 = v8;
        if (v8)
        {
          v9 = v6 == -8;
        }

        else
        {
          v9 = 1;
        }
      }

      while (v9);
    }

    while (i != v5);
  }

  if (*(this + 3))
  {
    v10 = *(this + 2);
    if (v10)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = (*this)[j];
        if (v12 != -8 && v12 != 0)
        {
          if (*(v12 + 28))
          {
            v14 = *(v12 + 24);
            if (v14)
            {
              v15 = 0;
              v16 = 8 * v14;
              do
              {
                v17 = *(*(v12 + 16) + v15);
                if (v17 != -8 && v17 != 0)
                {
                  v19 = *(v17 + 144);
                  if (v19)
                  {
                    llvm::TimerGroup::removeTimer(v19, v17 + 8);
                  }

                  if (*(v17 + 135) < 0)
                  {
                    operator delete(*(v17 + 112));
                  }

                  if (*(v17 + 111) < 0)
                  {
                    operator delete(*(v17 + 88));
                  }

                  MEMORY[0x25F891030](v17, 8);
                }

                v15 += 8;
              }

              while (v16 != v15);
            }
          }

          free(*(v12 + 16));
          MEMORY[0x25F891030](v12, 8);
        }
      }
    }
  }

  free(*this);
}

uint64_t llvm::TimerGroup::PrintRecord::PrintRecord(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  return a1;
}

void std::allocator<llvm::TimerGroup::PrintRecord>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t llvm::TimerGroup::PrintRecord::PrintRecord(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v6;
  *(a1 + 16) = v7;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v9;
  }

  return a1;
}

uint64_t std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord &,std::string &,std::string &>(__int128 **a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<llvm::TimerGroup::PrintRecord>::__throw_length_error[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  llvm::TimerGroup::PrintRecord::PrintRecord(v7, a2, a3, a4);
  v8 = v7 + 88;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = llvm::TimerGroup::PrintRecord::PrintRecord(v13, v12);
      v12 = (v12 + 88);
      v13 = v14 + 88;
    }

    while (v12 != v10);
    do
    {
      std::allocator<llvm::TimerGroup::PrintRecord>::destroy[abi:nn200100](v9);
      v9 = (v9 + 88);
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(double *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v139 = a1;
LABEL_2:
  v7 = v139;
  while (1)
  {
    v8 = a2 - v7;
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v71 = *(a2 - 11);
      v70 = (a2 - 88);
      if (v71 >= *v7)
      {
        return;
      }

      v72 = v139;
LABEL_199:
      v75 = v70;
      goto LABEL_200;
    }

LABEL_10:
    if (v8 <= 2111)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v79 = (v7 + 88);
          if ((v7 + 88) != a2)
          {
            v80 = 0;
            v81 = v7;
            do
            {
              v82 = v81[11];
              v83 = *v81;
              v81 = v79;
              if (v82 < v83)
              {
                llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v79);
                v84 = v80;
                while (1)
                {
                  v85 = v7 + v84;
                  v86 = *(v7 + v84 + 16);
                  *(v85 + 88) = *(v7 + v84);
                  *(v85 + 104) = v86;
                  *(v85 + 120) = *(v7 + v84 + 32);
                  std::string::operator=((v7 + v84 + 128), (v7 + v84 + 40));
                  std::string::operator=((v85 + 152), (v85 + 64));
                  if (!v84)
                  {
                    break;
                  }

                  v84 -= 88;
                  if (*&v146 >= *(v85 - 88))
                  {
                    v87 = v7 + v84 + 88;
                    goto LABEL_134;
                  }
                }

                v87 = v7;
LABEL_134:
                v88 = v146;
                v89 = v147;
                *(v87 + 32) = v148;
                *v87 = v88;
                *(v87 + 16) = v89;
                std::string::operator=((v85 + 40), &v149);
                std::string::operator=((v85 + 64), &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v149.__r_.__value_.__l.__data_);
                }
              }

              v79 = (v81 + 11);
              v80 += 88;
            }

            while (v81 + 11 != a2);
          }
        }
      }

      else if (v7 != a2)
      {
        v130 = (v7 + 88);
        if ((v7 + 88) != a2)
        {
          v131 = (v7 + 152);
          do
          {
            v132 = *(v7 + 88);
            v133 = *v7;
            v7 = v130;
            if (v132 < v133)
            {
              llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v130);
              v134 = v131;
              do
              {
                v135 = v134;
                v136 = *&v134[-6].__r_.__value_.__r.__words[1];
                *&v134[-3].__r_.__value_.__r.__words[1] = *&v134[-7].__r_.__value_.__r.__words[2];
                *&v134[-2].__r_.__value_.__l.__data_ = v136;
                v134[-2].__r_.__value_.__r.__words[2] = v134[-5].__r_.__value_.__r.__words[0];
                std::string::operator=(v134 - 1, (v134 - 112));
                v134 = (v134 - 88);
                std::string::operator=(v135, v134);
              }

              while (*&v146 < *&v135[-10].__r_.__value_.__l.__data_);
              v137 = v146;
              v138 = v147;
              v134[-2].__r_.__value_.__r.__words[2] = v148;
              *&v134[-3].__r_.__value_.__r.__words[1] = v137;
              *&v134[-2].__r_.__value_.__l.__data_ = v138;
              std::string::operator=(v134 - 1, &v149);
              std::string::operator=(v134, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v149.__r_.__value_.__l.__data_);
              }
            }

            v130 = (v7 + 88);
            v131 = (v131 + 88);
          }

          while ((v7 + 88) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v90 = v10 >> 1;
        v91 = v10 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = v7 + 88 * v93;
            if (2 * v91 + 2 < v9 && *v94 < *(v94 + 88))
            {
              v94 += 88;
              v93 = 2 * v91 + 2;
            }

            v95 = v7 + 88 * v91;
            if (*v94 >= *v95)
            {
              llvm::TimerGroup::PrintRecord::PrintRecord(&v146, (v7 + 88 * v91));
              do
              {
                v96 = v94;
                v97 = *v94;
                v98 = *(v94 + 16);
                *(v95 + 32) = *(v94 + 32);
                *v95 = v97;
                *(v95 + 16) = v98;
                std::string::operator=((v95 + 40), (v94 + 40));
                std::string::operator=((v95 + 64), (v94 + 64));
                if (v90 < v93)
                {
                  break;
                }

                v99 = 2 * v93;
                v93 = (2 * v93) | 1;
                v94 = v7 + 88 * v93;
                v100 = v99 + 2;
                if (v100 < v9 && *v94 < *(v94 + 88))
                {
                  v94 += 88;
                  v93 = v100;
                }

                v95 = v96;
              }

              while (*v94 >= *&v146);
              v101 = v146;
              v102 = v147;
              *(v96 + 32) = v148;
              *v96 = v101;
              *(v96 + 16) = v102;
              std::string::operator=((v96 + 40), &v149);
              std::string::operator=((v96 + 64), &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v149.__r_.__value_.__l.__data_);
              }
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v103 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
        do
        {
          if (v103 >= 2)
          {
            llvm::TimerGroup::PrintRecord::PrintRecord(&v141, v7);
            v104 = 0;
            v105 = v7;
            do
            {
              v106 = v105;
              v107 = v105 + 88 * v104;
              v105 = v107 + 88;
              v108 = 2 * v104;
              v104 = (2 * v104) | 1;
              v109 = v108 + 2;
              if (v109 < v103)
              {
                v111 = *(v107 + 176);
                v110 = v107 + 176;
                if (*(v110 - 88) < v111)
                {
                  v105 = v110;
                  v104 = v109;
                }
              }

              v112 = *v105;
              v113 = *(v105 + 16);
              *(v106 + 32) = *(v105 + 32);
              *v106 = v112;
              *(v106 + 16) = v113;
              std::string::operator=((v106 + 40), (v105 + 40));
              std::string::operator=((v106 + 64), (v105 + 64));
            }

            while (v104 <= ((v103 - 2) >> 1));
            v114 = (a2 - 88);
            if (v105 == (a2 - 88))
            {
              v127 = v141;
              v128 = v142;
              *(v105 + 32) = v143;
              *v105 = v127;
              *(v105 + 16) = v128;
              std::string::operator=((v105 + 40), &v144);
              std::string::operator=((v105 + 64), &v145);
            }

            else
            {
              v115 = *v114;
              v116 = *(a2 - 72);
              *(v105 + 32) = *(a2 - 7);
              *v105 = v115;
              *(v105 + 16) = v116;
              std::string::operator=((v105 + 40), a2 - 2);
              std::string::operator=((v105 + 64), a2 - 1);
              v117 = v143;
              v118 = v142;
              *v114 = v141;
              *(a2 - 72) = v118;
              *(a2 - 7) = v117;
              std::string::operator=(a2 - 2, &v144);
              std::string::operator=(a2 - 1, &v145);
              v119 = v105 - v7 + 88;
              if (v119 >= 89)
              {
                v120 = (0x2E8BA2E8BA2E8BA3 * (v119 >> 3) - 2) >> 1;
                v121 = v7 + 88 * v120;
                if (*v121 < *v105)
                {
                  llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v105);
                  do
                  {
                    v122 = v121;
                    v123 = *v121;
                    v124 = *(v121 + 16);
                    *(v105 + 32) = *(v121 + 32);
                    *v105 = v123;
                    *(v105 + 16) = v124;
                    std::string::operator=((v105 + 40), (v121 + 40));
                    std::string::operator=((v105 + 64), (v121 + 64));
                    if (!v120)
                    {
                      break;
                    }

                    v120 = (v120 - 1) >> 1;
                    v121 = v7 + 88 * v120;
                    v105 = v122;
                  }

                  while (*v121 < *&v146);
                  v125 = v146;
                  v126 = v147;
                  *(v122 + 32) = v148;
                  *v122 = v125;
                  *(v122 + 16) = v126;
                  std::string::operator=((v122 + 40), &v149);
                  std::string::operator=((v122 + 64), &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v149.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v144.__r_.__value_.__l.__data_);
            }
          }

          a2 = (a2 - 88);
        }

        while (v103-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = v7 + 88 * (v9 >> 1);
    v13 = a2 - 11;
    v14 = *(a2 - 11);
    if (v8 >= 0x2C01)
    {
      v15 = *v12;
      if (*v12 >= *v7)
      {
        if (v14 < v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v12, (a2 - 88));
          if (*v12 < *v7)
          {
            v16 = v7;
            v17 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v7;
        if (v14 < v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7, v12);
        if (*v13 < *v12)
        {
          v16 = v12;
LABEL_17:
          v17 = (a2 - 88);
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v16, v17);
        }
      }

      v21 = v7 + 88 * v11;
      v23 = *(v21 - 88);
      v22 = (v21 - 88);
      v24 = v23;
      v25 = *(a2 - 22);
      if (v23 >= *(v7 + 88))
      {
        if (v25 < v24)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v22, a2 - 11);
          if (*v22 < *(v7 + 88))
          {
            v26 = v7 + 88;
            v27 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v26 = v7 + 88;
        if (v25 < v24)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v26, v22);
        if (*(a2 - 22) < *v22)
        {
          v26 = v22;
LABEL_31:
          v27 = a2 - 11;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v26, v27);
        }
      }

      v28 = v7 + 88 * v11;
      v30 = *(v28 + 88);
      v29 = (v28 + 88);
      v31 = v30;
      v32 = *(a2 - 33);
      if (v30 >= *(v7 + 176))
      {
        v13 = a2 - 11;
        if (v32 < v31)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v29, (a2 - 264));
          if (*v29 < *(v7 + 176))
          {
            v34 = v7 + 176;
            v35 = v29;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v33 = v7 + 176;
        if (v32 < v31)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v33, (a2 - 264));
          v13 = a2 - 11;
          goto LABEL_49;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v33, v29);
        v13 = a2 - 11;
        if (*(a2 - 33) < *v29)
        {
          v34 = v29;
          v35 = (a2 - 264);
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v34, v35);
        }
      }

LABEL_49:
      v36 = *v12;
      v37 = *v29;
      if (*v12 >= *v22)
      {
        if (v37 < v36)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v12, v29);
          if (*v12 < *v22)
          {
            v38 = v22;
            v39 = v12;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v38 = v22;
        if (v37 < v36)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v22, v12);
        if (*v29 < *v12)
        {
          v38 = v12;
LABEL_53:
          v39 = v29;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v38, v39);
        }
      }

      llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v7);
      v40 = *v12;
      v41 = *(v12 + 16);
      *(v7 + 32) = *(v12 + 32);
      *v7 = v40;
      *(v7 + 16) = v41;
      std::string::operator=((v7 + 40), (v12 + 40));
      std::string::operator=((v7 + 64), (v12 + 64));
      v42 = v148;
      v43 = v147;
      *v12 = v146;
      *(v12 + 16) = v43;
      *(v12 + 32) = v42;
      std::string::operator=((v12 + 40), &v149);
      std::string::operator=((v12 + 64), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      v7 = v139;
      goto LABEL_63;
    }

    v18 = *v7;
    if (*v7 >= *v12)
    {
      if (v14 < v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7, (a2 - 88));
        if (*v7 < *v12)
        {
          v19 = v12;
          v20 = v7;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v19 = v12;
      if (v14 < v18)
      {
        goto LABEL_22;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v12, v7);
      if (*v13 < *v7)
      {
        v19 = v7;
LABEL_22:
        v20 = (a2 - 88);
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v19, v20);
      }
    }

LABEL_63:
    --a3;
    if ((a4 & 1) == 0 && *(v7 - 88) >= *v7)
    {
      llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v7);
      if (*&v146 >= *v13)
      {
        v60 = (v7 + 88);
        do
        {
          a1 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v60 += 11;
        }

        while (*&v146 >= *a1);
      }

      else
      {
        a1 = v7;
        do
        {
          v59 = a1[11];
          a1 += 11;
        }

        while (*&v146 >= v59);
      }

      v61 = a2;
      if (a1 < a2)
      {
        v61 = a2;
        do
        {
          v62 = *(v61 - 11);
          v61 = (v61 - 88);
        }

        while (*&v146 < v62);
      }

      while (a1 < v61)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, v61);
        do
        {
          v63 = a1[11];
          a1 += 11;
        }

        while (*&v146 >= v63);
        do
        {
          v64 = *(v61 - 11);
          v61 = (v61 - 88);
        }

        while (*&v146 < v64);
      }

      v65 = a1 - 11;
      if (a1 - 11 != v7)
      {
        v66 = *v65;
        v67 = *(a1 - 9);
        *(v7 + 32) = *(a1 - 7);
        *v7 = v66;
        *(v7 + 16) = v67;
        std::string::operator=((v7 + 40), a1 - 2);
        std::string::operator=((v7 + 64), a1 - 1);
      }

      v68 = v146;
      v69 = v147;
      *(a1 - 7) = v148;
      *v65 = v68;
      *(a1 - 9) = v69;
      std::string::operator=(a1 - 2, &v149);
      std::string::operator=(a1 - 1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      goto LABEL_112;
    }

    llvm::TimerGroup::PrintRecord::PrintRecord(&v146, v7);
    v44 = 0;
    do
    {
      v45 = *(v7 + v44 + 88);
      v44 += 88;
    }

    while (v45 < *&v146);
    v46 = v7 + v44;
    v47 = a2;
    if (v44 == 88)
    {
      v47 = a2;
      do
      {
        if (v46 >= v47)
        {
          break;
        }

        v49 = *(v47 - 11);
        v47 = (v47 - 88);
      }

      while (v49 >= *&v146);
    }

    else
    {
      do
      {
        v48 = *(v47 - 11);
        v47 = (v47 - 88);
      }

      while (v48 >= *&v146);
    }

    a1 = (v7 + v44);
    if (v46 < v47)
    {
      v50 = v47;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, v50);
        do
        {
          v51 = a1[11];
          a1 += 11;
        }

        while (v51 < *&v146);
        do
        {
          v52 = *(v50 - 11);
          v50 = (v50 - 88);
        }

        while (v52 >= *&v146);
      }

      while (a1 < v50);
    }

    v53 = a1 - 11;
    if (a1 - 11 != v7)
    {
      v54 = *v53;
      v55 = *(a1 - 9);
      *(v7 + 32) = *(a1 - 7);
      *v7 = v54;
      *(v7 + 16) = v55;
      std::string::operator=((v7 + 40), a1 - 2);
      std::string::operator=((v7 + 64), a1 - 1);
    }

    v56 = v146;
    v57 = v147;
    *(a1 - 7) = v148;
    *v53 = v56;
    *(a1 - 9) = v57;
    std::string::operator=(a1 - 2, &v149);
    std::string::operator=(a1 - 1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }

    if (v46 < v47)
    {
      goto LABEL_90;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(v7, (a1 - 11));
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, a2))
    {
      v139 = a1;
      if (v58)
      {
        goto LABEL_2;
      }

LABEL_90:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(v7, a1 - 11, a3, a4 & 1);
LABEL_112:
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 11);
    if (v58)
    {
      return;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(v7, (v7 + 88), (v7 + 176), (a2 - 88));
      return;
    }

    if (v9 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(v7, (v7 + 88), (v7 + 176), (v7 + 264));
      v74 = *(a2 - 11);
      v73 = (a2 - 88);
      if (v74 < *(v7 + 264))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7 + 264, v73);
        if (*(v7 + 264) < *(v7 + 176))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7 + 176, (v7 + 264));
          if (*(v7 + 176) < *(v7 + 88))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7 + 88, (v7 + 176));
            if (*(v7 + 88) < *v7)
            {
              v75 = (v7 + 88);
              v72 = v7;
LABEL_200:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v72, v75);
              return;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v76 = *(v7 + 88);
  v77 = *(a2 - 11);
  v70 = (a2 - 88);
  v78 = v77;
  if (v76 < *v7)
  {
    if (v78 >= v76)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7, (v7 + 88));
      if (*v70 >= *(v7 + 88))
      {
        return;
      }

      v72 = v7 + 88;
    }

    else
    {
      v72 = v7;
    }

    goto LABEL_199;
  }

  if (v78 < v76)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7 + 88, v70);
    if (*(v7 + 88) < *v7)
    {
      v72 = v7;
      v75 = (v7 + 88);
      goto LABEL_200;
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(uint64_t a1, __int128 *a2)
{
  llvm::TimerGroup::PrintRecord::PrintRecord(v7, a1);
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 4));
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  *(a2 + 4) = v8;
  std::string::operator=((a2 + 40), &v9);
  std::string::operator=((a2 + 4), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(double *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a3, a4);
    if (*a3 < *a2)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a2, a3);
      if (*a2 < *v7)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(uint64_t a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 88);
        v5 = (a2 - 88);
        v10 = *(a2 - 11);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1 + 88, v5);
          if (*(v3 + 88) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 88);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, (a1 + 88));
          if (*v5 >= *(v3 + 88))
          {
            return 1;
          }

          a1 = v3 + 88;
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), (a1 + 176), (a2 - 88));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), (a1 + 176), (a1 + 264));
        v7 = *(a2 - 11);
        v6 = (a2 - 88);
        if (v7 >= *(v3 + 264))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v3 + 264, v6);
        if (*(v3 + 264) >= *(v3 + 176))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v3 + 176, (v3 + 264));
        if (*(v3 + 176) >= *(v3 + 88))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(v3 + 88, (v3 + 176));
        if (*(v3 + 88) >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 88);
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 88);
      if (*(a2 - 11) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v11 = (a1 + 176);
  v12 = *(a1 + 176);
  v13 = *(a1 + 88);
  if (v13 < *a1)
  {
    if (v12 >= v13)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, (a1 + 88));
      if (*(v3 + 176) >= *(v3 + 88))
      {
        goto LABEL_31;
      }

      a1 = v3 + 88;
    }

    v14 = (v3 + 176);
    goto LABEL_30;
  }

  if (v12 < v13)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1 + 88, (a1 + 176));
    if (*(v3 + 88) < *v3)
    {
      a1 = v3;
      v14 = (v3 + 88);
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::TimerGroup::PrintRecord *&,llvm::TimerGroup::PrintRecord *&>(a1, v14);
    }
  }

LABEL_31:
  v15 = (v3 + 264);
  if ((v3 + 264) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    if (*v15 < *v11)
    {
      llvm::TimerGroup::PrintRecord::PrintRecord(v25, v15);
      v18 = v16;
      while (1)
      {
        v19 = v3 + v18;
        v20 = (v3 + v18 + 264);
        v21 = *(v3 + v18 + 192);
        *v20 = *(v3 + v18 + 176);
        v20[1] = v21;
        *(v3 + v18 + 296) = *(v3 + v18 + 208);
        std::string::operator=((v3 + v18 + 304), (v3 + v18 + 216));
        std::string::operator=((v19 + 328), (v19 + 240));
        if (v18 == -176)
        {
          break;
        }

        v18 -= 88;
        if (*v25 >= *(v19 + 88))
        {
          v22 = v3 + v18 + 264;
          goto LABEL_39;
        }
      }

      v22 = v3;
LABEL_39:
      v23 = v25[1];
      *v22 = v25[0];
      *(v22 + 16) = v23;
      *(v22 + 32) = v26;
      std::string::operator=((v19 + 216), &v27);
      std::string::operator=((v19 + 240), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (++v17 == 8)
      {
        return (v15 + 88) == a2;
      }
    }

    v11 = v15;
    v16 += 88;
    v15 = (v15 + 88);
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::object_deleter<llvm::TimerGlobals>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 808) == 1)
    {
    }

    v2 = *(v1 + 768);
    *(v1 + 768) = 0;
    if (v2)
    {
      MEMORY[0x25F891040](v2, 0xC400A2AC0F1);
    }

    llvm::TimerGroup::~TimerGroup((v1 + 672));
    std::recursive_mutex::~recursive_mutex((v1 + 600));
    *(v1 + 416) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 568);
    llvm::cl::Option::~Option((v1 + 416));
    *(v1 + 232) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 384);
    llvm::cl::Option::~Option((v1 + 232));
    *(v1 + 24) = &unk_286E79A58;
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 200);
    *(v1 + 152) = &unk_286E75E90;
    if (*(v1 + 183) < 0)
    {
      operator delete(*(v1 + 160));
    }

    llvm::cl::Option::~Option((v1 + 24));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *a5, size_t a6)
{
  memset(&__str, 0, sizeof(__str));
  v8 = llvm::cl::parser<std::string>::parse(a1 + 168, a1, a3, a4, a5, a6, &__str);
  if ((v8 & 1) == 0)
  {
    std::string::operator=(*(a1 + 120), &__str);
    *(a1 + 12) = a2;
    v9 = *(a1 + 200);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::getValueExpectedFlagDefault();
    }

    (*(*v9 + 48))(v9, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E79A58;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 176);
  *(a1 + 128) = &unk_286E75E90;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79A58;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 176);
  *(a1 + 128) = &unk_286E75E90;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::printOptionValue(void *a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || (result = llvm::cl::OptionValueCopy<std::string>::compare((a1 + 16), a1[15]), (result & 1) == 0))
  {
    v6 = a1[15];
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = a1[15];
    }

    else
    {
      v8 = *v6;
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    return llvm::cl::parser<std::string>::printOptionDiff((a1 + 21), a1, v8, v9, (a1 + 16), a2);
  }

  return result;
}

uint64_t llvm::cl::opt_storage<std::string,true,true>::setLocation(uint64_t a1, uint64_t a2, std::string *__str)
{
  if (*a1)
  {
    v6 = "cl::location(x) specified more than once!";
    v7 = 259;
    v4 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, &v6, 0, 0, v4);
  }

  else
  {
    *a1 = __str;
    *(a1 + 40) = 1;
    std::string::operator=((a1 + 16), __str);
    return 0;
  }
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::setDefaultImpl<std::string,void>(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    v4 = *(a1 + 120);

    std::string::operator=(v4, v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=(*(a1 + 120), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

_BYTE *llvm::CleanupInstaller::CleanupInstaller(void *a1, _BYTE *a2, _BYTE *a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  if (!a3)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_9;
  }

  memmove(a1, a2, a3);
  a3[a1] = 0;
  *(a1 + 24) = 0;
  if (a3 != 1 || *a2 != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(a2, a3);
  }

  return a1;
}

void llvm::CleanupInstaller::~CleanupInstaller(llvm::CleanupInstaller *this)
{
  v2 = *(this + 23);
  v3 = v2;
  v4 = *(this + 1);
  if (v2 >= 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v6 = *this;
  if (v2 >= 0)
  {
    v6 = this;
  }

  if (*v6 != 45)
  {
LABEL_8:
    if ((*(this + 24) & 1) == 0)
    {
      v10 = 260;
      v9 = this;
      llvm::sys::fs::remove(&v9, 1);
      v2 = *(this + 23);
      v4 = *(this + 1);
      v3 = *(this + 23);
    }

    if (v3 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = *this;
    }

    if (v3 >= 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = v4;
    }

    llvm::sys::DontRemoveFileOnSignal(v7, v8);
    v3 = *(this + 23);
  }

  if (v3 < 0)
  {
    operator delete(*this);
  }
}

uint64_t llvm::ToolOutputFile::ToolOutputFile(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v13 = a5;
  v9 = llvm::CleanupInstaller::CleanupInstaller(a1, a2, a3);
  v9[32] = 0;
  v10 = v9 + 32;
  v9[128] = 0;
  if (a3 == 1 && *a2 == 45)
  {
    *(a1 + 136) = llvm::outs(v9);
    v11 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v11;
  }

  else
  {
    std::optional<llvm::raw_fd_ostream>::emplace[abi:nn200100]<llvm::StringRef &,std::error_code &,llvm::sys::fs::OpenFlags &,void>((v9 + 32), v14, a4, &v13);
    *(a1 + 136) = v10;
    if (*a4)
    {
      *(a1 + 24) = 1;
    }
  }

  return a1;
}

uint64_t std::optional<llvm::raw_fd_ostream>::emplace[abi:nn200100]<llvm::StringRef &,std::error_code &,llvm::sys::fs::OpenFlags &,void>(llvm::raw_fd_ostream *a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a1 + 96) == 1)
  {
    llvm::raw_fd_ostream::~raw_fd_ostream(a1);
    *(a1 + 96) = 0;
  }

  FD = getFD(*a2, *(a2 + 8), a3, 0, 2, *a4);
  result = llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
  *(a1 + 96) = 1;
  return result;
}

void llvm::Twine::str(llvm::formatv_object_base **this@<X0>, uint64_t a2@<X8>)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      v7 = *MEMORY[0x277D85DE8];

      llvm::formatv_object_base::str(v6, a2);
      return;
    }

LABEL_10:
    v15 = v17;
    v16 = xmmword_25D0A0670;
    v8 = llvm::Twine::toStringRef(this, &v15);
    if (v8)
    {
      v10 = v9;
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v9;
      if (v9)
      {
        memmove(a2, v8, v9);
      }

      *(a2 + v10) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    if (v15 != v17)
    {
      free(v15);
    }

    goto LABEL_21;
  }

  if (v3 != 4 || *(this + 33) != 1)
  {
    goto LABEL_10;
  }

  v4 = *this;
  if ((*(*this + 23) & 0x80000000) == 0)
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 2);
    *a2 = v5;
LABEL_21:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *v4;
  v13 = *(v4 + 1);
  v14 = *MEMORY[0x277D85DE8];

  std::string::__init_copy_ctor_external(a2, v12, v13);
}

void llvm::formatv_object_base::str(llvm::formatv_object_base *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_286E79D28;
  v10 = a2;
  llvm::raw_ostream::SetUnbuffered(&v3);
  llvm::formatv_object_base::format(this, &v3);
  if (v7 != v5)
  {
    v7 = v5;
    v3[9](&v3);
  }

  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::Twine::toVector(llvm::Twine *a1, uint64_t a2)
{
  v4 = 2;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_286E79DA0;
  v10 = a2;
  llvm::raw_ostream::SetUnbuffered(&v3);
  llvm::Twine::print(a1, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

void llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream *a2)
{
  llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

const char *llvm::Twine::toNullTerminatedStringRef(uint64_t a1, const char **a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  if (v3 < 2)
  {
    goto LABEL_8;
  }

  if (v3 == 6)
  {
    v4 = *a1;
    v8 = *(a1 + 8);
    return v4;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = strlen(*a1);
      }

      return v4;
    }

LABEL_8:
    llvm::Twine::toVector(a1, a2);
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 0);
    v4 = *a2;
    --a2[1];
    return v4;
  }

  v4 = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    v4 = *v4;
    v7 = *(*a1 + 8);
  }

  return v4;
}

void llvm::Twine::printOneChild(int a1, llvm::raw_ostream *a2, size_t *this, size_t __n, int a5)
{
  switch(a5)
  {
    case 2:
      llvm::Twine::print(this, a2);
      return;
    case 3:
      llvm::raw_ostream::operator<<(a2, this);
      return;
    case 4:
      v8 = *(this + 23);
      if (v8 >= 0)
      {
        v9 = this;
      }

      else
      {
        v9 = *this;
      }

      if (v8 >= 0)
      {
        v10 = *(this + 23);
      }

      else
      {
        v10 = this[1];
      }

      llvm::raw_ostream::write(a2, v9, v10);
      return;
    case 5:
    case 6:
      llvm::raw_ostream::operator<<(a2, this, __n);
      return;
    case 7:
      llvm::formatv_object_base::format(this, a2);
      return;
    case 8:
      v11 = *(a2 + 4);
      if (v11 >= *(a2 + 3))
      {
        llvm::raw_ostream::write(a2, this);
      }

      else
      {
        *(a2 + 4) = v11 + 1;
        *v11 = this;
      }

      return;
    case 9:
      v7 = this;
      goto LABEL_15;
    case 10:
      v6 = this;
      goto LABEL_20;
    case 11:
    case 13:
      v7 = *this;
LABEL_15:
      write_unsigned<unsigned long long>(a2, v7, 0, 0, 0);
      return;
    case 12:
    case 14:
      v6 = *this;
LABEL_20:
      llvm::write_integer(a2, v6, 0, 0);
      break;
    case 15:
      llvm::write_hex(a2, *this, 1, 0, 0);
      break;
    default:
      return;
  }
}

llvm::raw_ostream *llvm::reportInvalidSizeRequest(llvm *this, const char *a2)
{
  if (!atomic_load_explicit(ScalableErrorAsWarning, memory_order_acquire))
  {
  }

  if (*(ScalableErrorAsWarning[0] + 120) != 1)
  {
    llvm::report_fatal_error("Invalid size request on a scalable vector.", 1);
  }

  v3 = llvm::errs(this);
  v4 = llvm::WithColor::warning(v3, &str_1_14, 0, 0);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x2AuLL)
  {
    qmemcpy(v5, "Invalid size request on a scalable vector; ", 43);
    *(v4 + 4) += 43;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "Invalid size request on a scalable vector; ", 0x2BuLL);
  }

  result = llvm::raw_ostream::operator<<(v4, this);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v7 = 10;
    ++*(result + 4);
  }

  return result;
}

void *std::vector<llvm::StringRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(result, a2);
    }

    std::vector<llvm::StringRef>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v10 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a5, *a5 + *(a5 + 8), a3, a4);
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, a3, a4, v10);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef>(a1, v13, v11, a4, a6);
}

void llvm::FileError::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = 0;
  *a4 = 0;
  v4 = &v6;
  llvm::handleAllErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v5, &v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator new();
}

uint64_t llvm::handleAllErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t llvm::handleErrors<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
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
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v12, a2, &v13);
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
      llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>(&v11, a2, a3);
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

uint64_t llvm::handleErrorImpl<llvm::FileError::build(llvm::Twine const&,std::optional<unsigned long>,llvm::Error)::{lambda(std::unique_ptr<llvm::ErrorInfoBase>)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    result = **a2;
    **a2 = v7;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t llvm::FileError::FileError(uint64_t a1, llvm::formatv_object_base **this, uint64_t a3, char a4, uint64_t *a5)
{
  *(a1 + 8) = 0;
  v9 = a1 + 8;
  *a1 = &unk_286E795B8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  llvm::Twine::str(this, &v13);
  if (*(a1 + 31) < 0)
  {
    operator delete(*v9);
  }

  *v9 = v13;
  *(v9 + 16) = v14;
  v10 = *a5;
  *a5 = 0;
  v11 = *(a1 + 48);
  *(a1 + 48) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  return a1;
}

size_t **llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
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

  buffer = llvm::allocate_buffer((a3 + 9), 8uLL);
  v12 = buffer;
  v13 = (buffer + 1);
  if (a3)
  {
    memcpy(buffer + 1, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t DefaultAutoDetectFunction(const llvm::raw_ostream *a1)
{
  if (!atomic_load_explicit(&UseColor, memory_order_acquire))
  {
  }

  if (*(UseColor + 120))
  {
    if (!atomic_load_explicit(&UseColor, memory_order_acquire))
    {
    }

    return *(UseColor + 120) == 1;
  }

  else
  {
    v3 = *(*a1 + 56);

    return v3(a1);
  }
}

llvm::raw_ostream *llvm::WithColor::error(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  v5 = a1;
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 24))(v5, 1, 1, 0);
    }

    v10 = *(v5 + 4);
    if (*(v5 + 3) - v10 > 6uLL)
    {
      *(v10 + 3) = 540701295;
      *v10 = 1869771365;
      *(v5 + 4) += 7;
      v11 = v5;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v5, "error: ", 7uLL);
    }

    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 32))(v5);
    }

    return v11;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(v5 + 4);
  if (*(v5 + 3) - v8 > 6uLL)
  {
    *(v8 + 3) = 540701295;
    *v8 = 1869771365;
    *(v5 + 4) += 7;
    return v5;
  }

  return llvm::raw_ostream::write(v5, "error: ", 7uLL);
}

llvm::raw_ostream *llvm::WithColor::warning(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  v5 = a1;
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 24))(v5, 5, 1, 0);
    }

    v10 = *(v5 + 4);
    if ((*(v5 + 3) - v10) > 8)
    {
      *(v10 + 8) = 32;
      *v10 = *"warning: ";
      *(v5 + 4) += 9;
      v11 = v5;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v5, "warning: ", 9uLL);
    }

    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 32))(v5);
    }

    return v11;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(v5 + 4);
  if ((*(v5 + 3) - v8) > 8)
  {
    *(v8 + 8) = 32;
    *v8 = *"warning: ";
    *(v5 + 4) += 9;
    return v5;
  }

  return llvm::raw_ostream::write(v5, "warning: ", 9uLL);
}

llvm::raw_ostream *llvm::WithColor::note(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  v5 = a1;
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 24))(v5, 0, 1, 0);
    }

    v10 = *(v5 + 4);
    if ((*(v5 + 3) - v10) > 5)
    {
      *(v10 + 4) = 8250;
      *v10 = 1702129518;
      *(v5 + 4) += 6;
      v11 = v5;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v5, "note: ", 6uLL);
    }

    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 32))(v5);
    }

    return v11;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(v5 + 4);
  if ((*(v5 + 3) - v8) > 5)
  {
    *(v8 + 4) = 8250;
    *v8 = 1702129518;
    *(v5 + 4) += 6;
    return v5;
  }

  return llvm::raw_ostream::write(v5, "note: ", 6uLL);
}

llvm::raw_ostream *llvm::WithColor::remark(llvm::raw_ostream *a1, const void *a2, size_t a3, int a4)
{
  v5 = a1;
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 24))(v5, 4, 1, 0);
    }

    v10 = *(v5 + 4);
    if (*(v5 + 3) - v10 > 7uLL)
    {
      *v10 = 0x203A6B72616D6572;
      *(v5 + 4) += 8;
      v11 = v5;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v5, "remark: ", 8uLL);
    }

    if (llvm::WithColor::AutoDetectFunction(v5))
    {
      (*(*v5 + 32))(v5);
    }

    return v11;
  }

  v6 = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 1uLL)
  {
    llvm::raw_ostream::write(v6, ": ", 2uLL);
    goto LABEL_4;
  }

  *v7 = 8250;
  *(v6 + 4) += 2;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = *(v5 + 4);
  if (*(v5 + 3) - v8 > 7uLL)
  {
    *v8 = 0x203A6B72616D6572;
    *(v5 + 4) += 8;
    return v5;
  }

  return llvm::raw_ostream::write(v5, "remark: ", 8uLL);
}

uint64_t llvm::object_deleter<llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v11 = 0;
  v8 = llvm::cl::parser<llvm::cl::BOOLOrDefault>::parse((a1 + 144), a1, a3, a4, a5, a6, &v11);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v11;
  *(a1 + 12) = a2;
  v9 = *(a1 + 176);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v11);
    return v8;
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::getValueExpectedFlagDefault();
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::~opt(void **a1)
{
  *a1 = &unk_286E79B08;
  std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79B08;
  std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(a1 + 140) != 1 || *(a1 + 136) != *(a1 + 120))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(a1 + 120);
    v7 = *(a1 + 136);
    v8 = *(a1 + 140);
    v6 = &unk_286E79050;
    llvm::cl::parser<llvm::cl::BOOLOrDefault>::printOptionDiff((a1 + 144), a1, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<llvm::cl::BOOLOrDefault,false,llvm::cl::parser<llvm::cl::BOOLOrDefault>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::cl::BOOLOrDefault const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::BitVector::resize(llvm::BitVector *this, int a2, uint64_t a3)
{
  if ((*(this + 16) & 0x3F) != 0)
  {
    v4 = -1 << (*(this + 16) & 0x3F);
    v5 = *(this + 2);
    v6 = *this + 8 * v5;
    if (a3)
    {
      v7 = *(v6 - 8) | v4;
    }

    else
    {
      v7 = *(v6 - 8) & ~v4;
    }

    *(v6 - 8) = v7;
  }

  else
  {
    v5 = *(this + 2);
  }

  *(this + 16) = a2;
  if (v5 != (a2 + 63) >> 6)
  {
    v8 = (a2 + 63) >> 6;
    if (v5 <= v8)
    {
      llvm::SmallVectorImpl<unsigned long>::append(this, v8 - v5, a3 << 63 >> 63);
      a2 = *(this + 16);
    }

    else
    {
      *(this + 2) = v8;
    }
  }

  if ((a2 & 0x3F) != 0)
  {
    v9 = *this + 8 * *(this + 2);
    *(v9 - 8) &= ~(-1 << (a2 & 0x3F));
  }
}

void llvm::SmallVectorImpl<unsigned long>::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 + a2 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + a2, 8);
    v6 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*a1 + 8 * v6 + 8);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
    if (v10.i8[0])
    {
      *(v9 - 1) = a3;
    }

    if (v10.i8[4])
    {
      *v9 = a3;
    }

    v7 += 2;
    v9 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
LABEL_9:
  *(a1 + 8) = v6 + a2;
}

void llvm::raw_os_ostream::~raw_os_ostream(llvm::raw_os_ostream *this)
{
  *this = &unk_286E79BB8;
  v2 = *(this + 2);
  if (*(this + 4) != v2)
  {
    *(this + 4) = v2;
    v3 = *(this + 6);
    std::ostream::write();
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  llvm::raw_os_ostream::~raw_os_ostream(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::raw_os_ostream::current_pos(llvm::raw_os_ostream *this)
{
  v4[17] = *MEMORY[0x277D85DE8];
  v1 = *(this + 6) + *(**(this + 6) - 24);
  if ((*(v1 + 32) & 5) != 0)
  {
    result = -1;
  }

  else
  {
    (*(**(v1 + 40) + 32))(v4);
    result = v4[16];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = &unk_286E79C30;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x25F891010](v1, 0x1000C8077774924);
    }
  }
}

void *llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  if ((*(*this + 88))(this))
  {

    llvm::raw_ostream::SetBufferSize(this);
  }

  return llvm::raw_ostream::SetUnbuffered(this);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 3) - *(a1 + 4);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 4) += v7;
      goto LABEL_21;
    }
  }

  v13 = v15;
  v14 = xmmword_25D0A05A0;
  do
  {
    v8 = v7;
    llvm::SmallVectorImpl<char>::resizeImpl<false>(&v13, v7);
    v9 = (*(*a2 + 8))(a2, v13, v8);
    if (v9 < v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v9 >= 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = (2 * v8);
    }
  }

  while (v8 < v7);
  llvm::raw_ostream::write(a1, v13, v7);
  if (v13 != v15)
  {
    free(v13);
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v5 = *(this + 3);
  for (i = *(this + 4); ; i = *(this + 4))
  {
    if (i < v5)
    {
      goto LABEL_7;
    }

    v6 = *(this + 2);
    if (v6)
    {
      *(this + 4) = v6;
      (*(*this + 72))(this);
      i = *(this + 4);
LABEL_7:
      *(this + 4) = i + 1;
      *i = a2;
      return this;
    }

    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v5 = *(this + 3);
  }

  v8 = a2;
  (*(*this + 72))(this, &v8, 1);
  return this;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, const char *a2, size_t __n)
{
  v3 = __n;
  v6 = *(this + 4);
  v7 = *(this + 3) - v6;
  if (v7 < __n)
  {
    while (1)
    {
      while (1)
      {
        v12 = *(this + 2);
        if (!v12)
        {
          break;
        }

        if (v6 == v12)
        {
          v7 *= v3 / v7;
          v3 -= v7;
          (*(*this + 72))(this, a2, v7);
          v6 = *(this + 4);
          v11 = *(this + 3) - v6;
          if (v3 <= v11)
          {
            v9 = &a2[v7];
            v8 = this;
            goto LABEL_3;
          }
        }

        else
        {
          llvm::raw_ostream::copy_to_buffer(this, a2, v7);
          v13 = *(this + 2);
          v14 = *(this + 4) - v13;
          *(this + 4) = v13;
          (*(*this + 72))(this);
          v3 -= v7;
          v6 = *(this + 4);
          v11 = *(this + 3) - v6;
        }

        a2 += v7;
        v7 = v11;
        if (v11 >= v3)
        {
          goto LABEL_2;
        }
      }

      if (!*(this + 11))
      {
        break;
      }

      llvm::raw_ostream::SetBuffered(this);
      v6 = *(this + 4);
      v7 = *(this + 3) - v6;
      if (v7 >= v3)
      {
        goto LABEL_2;
      }
    }

    (*(*this + 72))(this, a2, v3);
  }

  else
  {
LABEL_2:
    v8 = this;
    v9 = a2;
LABEL_3:
    llvm::raw_ostream::copy_to_buffer(v8, v9, v3);
  }

  return this;
}

void **llvm::raw_ostream::copy_to_buffer(void **this, const char *a2, int64_t __n)
{
  v4 = this;
  if (__n > 1)
  {
    switch(__n)
    {
      case 2:
LABEL_7:
        *(this[4] + 1) = a2[1];
LABEL_10:
        *this[4] = *a2;
        goto LABEL_11;
      case 3:
LABEL_6:
        *(this[4] + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(this[4] + 3) = a2[3];
        goto LABEL_6;
    }

LABEL_12:
    this = memcpy(this[4], a2, __n);
    goto LABEL_11;
  }

  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4[4] = v4[4] + __n;
  return this;
}

void llvm::formatv_object_base::format(llvm::formatv_object_base *this, llvm::raw_ostream *a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  v5 = *(this + 32);
  llvm::formatv_object_base::parseFormatString(*this, *(this + 1), &v34);
  v6 = v34;
  if (v35)
  {
    v7 = (v34 + 24);
    v8 = 56 * v35;
    while (1)
    {
      if (*(v7 - 6) == 1 || (v9 = *v7, *(this + 3) <= v9))
      {
        llvm::raw_ostream::operator<<(a2, *(v7 - 2), *(v7 - 1));
      }

      else
      {
        v10 = *(*(this + 2) + 8 * v9);
        v12 = *(v7 + 1);
        v11 = *(v7 + 2);
        v13 = *(v7 + 12);
        v22 = v10;
        v23 = v11;
        v24 = v12;
        v25 = v13;
        v15 = v7[2];
        v14 = v7[3];
        if (v12)
        {
          v37 = v39;
          v38 = xmmword_25D0A05D0;
          v27 = 2;
          v31 = 0;
          v32 = 1;
          v29 = 0;
          v30 = 0;
          v28 = 0;
          v26 = &unk_286E79DA0;
          v33 = &v37;
          llvm::raw_ostream::SetUnbuffered(&v26);
          (*(*v10 + 24))(v10, &v26, v15, v14);
          v16 = v38;
          if (v38 < v12)
          {
            v17 = v12 - v38;
            if (v11 == 1)
            {
              llvm::FmtAlign::fill(&v22, a2, v17 >> 1);
              llvm::raw_ostream::write(a2, v37, v38);
              v19 = v17 - (v17 >> 1);
              v18 = a2;
LABEL_16:
              llvm::FmtAlign::fill(&v22, v18, v19);
            }

            else
            {
              if (!v11)
              {
                llvm::raw_ostream::write(a2, v37, v38);
                v18 = a2;
                v19 = v17;
                goto LABEL_16;
              }

              llvm::FmtAlign::fill(&v22, a2, v12 - v38);
              v20 = v37;
              v16 = v38;
LABEL_18:
              llvm::raw_ostream::write(a2, v20, v16);
            }

            llvm::raw_ostream::~raw_ostream(&v26);
            if (v37 != v39)
            {
              free(v37);
            }

            goto LABEL_11;
          }

          v20 = v37;
          goto LABEL_18;
        }

        (*(*v10 + 24))(v10, a2, v15, v14);
      }

LABEL_11:
      v7 += 7;
      v8 -= 56;
      if (!v8)
      {
        v6 = v34;
        break;
      }
    }
  }

  if (v6 != &v36)
  {
    free(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v5 = *(a2 + 20);
    v6 = v4 >> 1;
    v7 = v4 - (v4 >> 1);
    if (v5 == 1)
    {
      v8 = *(a2 + 16) - *(a2 + 8);
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 2)
    {
      v8 = 0;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (v5 == 3)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 3)
    {
      v10 = v6;
    }

    else
    {
      v10 = v4;
    }
  }

  v11 = llvm::raw_ostream::indent(this, v10);
  llvm::raw_ostream::operator<<(v11, *a2, *(a2 + 8));

  return llvm::raw_ostream::indent(this, v9);
}

llvm::raw_ostream *llvm::raw_ostream::indent(llvm::raw_ostream *this, size_t __n)
{
  v2 = __n;
  if (__n < 0x50)
  {
    return llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, __n);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

llvm::raw_ostream *llvm::raw_ostream::changeColor(llvm::raw_ostream *a1, int a2, int a3, int a4)
{
  if (*(a1 + 40) == 1)
  {
    if (a2 == 16)
    {
      v5 = "\x1B[1m";
    }

    else
    {
      v5 = &colorcodes[352 * a4 + 176 * a3 + 11 * (a2 & 0xF)];
    }

    v6 = strlen(v5);
    llvm::raw_ostream::write(a1, v5, v6);
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    return llvm::raw_ostream::write(this, "\x1B[0m", 4uLL);
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    return llvm::raw_ostream::write(this, "\x1B[7m", 4uLL);
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  FD = getFD(a2, a3, a4, 0, 2, a5);

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, FD, 1, 0, 0);
}

uint64_t getFD(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6)
{
  if (a2 == 1 && *a1 == 45)
  {
    v7 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = v7;
    return 1;
  }

  else
  {
    v15 = 0;
    v14 = 261;
    v13[0] = a1;
    v13[1] = a2;
    if (a5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = llvm::sys::fs::openFile(v13, &v15, a4, v10, a6, 438);
    *a3 = v11;
    *(a3 + 8) = v12;
    if (v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_286E79CA8;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v13, 0, 44);
    v9 = fstat(*(a1 + 48), &v14);
    v10 = llvm::sys::fs::fillStatus(v9, &v14.st_dev, v13);
    *(a1 + 54) = DWORD2(v13[2]) == 2;
    *(a1 + 53) = v10 == 0 && v8 != -1;
    if (v10 == 0 && v8 != -1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 88) = v11;
  }

  return a1;
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = &unk_286E79CA8;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v10 = "IO failure on output stream: ";
    v11 = 259;
    v6 = *(this + 72);
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    llvm::operator+(&v10, &v8, v12);
    llvm::report_fatal_error(v12, 0);
  }

  llvm::raw_ostream::~raw_ostream(this);
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_13:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_13;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_13;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_13;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

off_t llvm::raw_fd_ostream::seek(llvm::raw_fd_ostream *this, off_t a2)
{
  v4 = *(this + 2);
  if (*(this + 4) != v4)
  {
    *(this + 4) = v4;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), a2, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v6 = *__error();
    v7 = std::generic_category();
    *(this + 9) = v6;
    *(this + 10) = v7;
    return *(this + 11);
  }

  return result;
}

off_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this) + *(this + 4) - *(this + 2);
  llvm::raw_fd_ostream::seek(this, a4);
  v9 = llvm::raw_ostream::write(this, a2, a3);

  return llvm::raw_fd_ostream::seek(v9, v8);
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3) || (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return v3.st_blksize;
  }
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  v1 = this;
  if (*(this + 56) == 1)
  {
    LOBYTE(this) = *(this + 55);
  }

  else
  {
    LOWORD(this) = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
    *(v1 + 55) = this | 0x100;
  }

  return this & 1;
}

void *llvm::outs(llvm *this)
{
  v2 = 0;
  v3 = std::system_category();
  if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_15))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_27FC1DB50, "-", 1, &v2, 0);
    __cxa_atexit(llvm::raw_fd_ostream::~raw_fd_ostream, &unk_27FC1DB50, &dword_25C85D000);
    __cxa_guard_release(&_MergedGlobals_15);
  }

  return &unk_27FC1DB50;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(qword_27FC1DB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27FC1DB10))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_27FC1DBB0, 2u, 0, 1, 0);
    __cxa_atexit(llvm::raw_fd_ostream::~raw_fd_ostream, &unk_27FC1DBB0, &dword_25C85D000);
    __cxa_guard_release(qword_27FC1DB10);
  }

  return &unk_27FC1DBB0;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x25F891040);
}

void llvm::writeToOutput(void (**a1)(void **)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a2 == 9)
  {
    if (*a1 == 0x6C756E2F7665642FLL && *(a1 + 8) == 108)
    {
      LODWORD(v25) = 0;
      v29 = 0;
      v30 = 1;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v24 = &unk_286E79E20;
      v17 = *(a3 + 24);
      if (!v17)
      {
        goto LABEL_33;
      }

      (*(*v17 + 48))(v17, &v24);
      llvm::raw_ostream::~raw_ostream(&v24);
LABEL_32:
      v18 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_12:
    LOWORD(v28) = 773;
    v24 = a1;
    v25 = a2;
    v26 = ".temp-stream-%%%%%%";
    llvm::sys::fs::TempFile::create(&v24, 0x1B6u, 0, v32);
    if (v34)
    {
      LOWORD(v28) = 261;
      v24 = a1;
      v25 = a2;
      v12 = v32[0];
      v32[0] = 0;
      v20[0] = v12;
      llvm::FileError::build(&v24, 0, 0, v20);
    }

    llvm::raw_fd_ostream::raw_fd_ostream(&v24, v33, 0, 0, 0);
    v13 = *(a3 + 24);
    if (!v13)
    {
      goto LABEL_33;
    }

    (*(*v13 + 48))(&v23);
    if (v23)
    {
      llvm::sys::fs::TempFile::discard(v32, &v22);
      v14 = v22;
      if (v22)
      {
        v15 = v23;
        v22 = 0;
        v23 = 0;
        v20[0] = v15;
        v31 = v14;
        llvm::ErrorList::join(v20, &v31, a4);
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        if (v20[0])
        {
          (*(*v20[0] + 8))(v20[0]);
        }

        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        if (v23)
        {
          (*(*v23 + 8))(v23);
        }
      }

      else
      {
        *a4 = v23;
      }
    }

    else
    {
      v16 = (v28 - v26);
      if (v28 != v26)
      {
        v28 = v26;
        v24[9](&v24);
      }

      v21 = 261;
      v20[0] = a1;
      v20[1] = a2;
      llvm::sys::fs::TempFile::keep(v32, v20, v16, a4);
    }

    llvm::raw_fd_ostream::~raw_fd_ostream(&v24);
    llvm::Expected<llvm::sys::fs::TempFile>::~Expected(v32);
    goto LABEL_32;
  }

  if (a2 != 1 || *a1 != 45)
  {
    goto LABEL_12;
  }

  llvm::outs(a1);
  v8 = *(a3 + 24);
  if (!v8)
  {
LABEL_33:
    v19 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::raw_string_ostream::~raw_string_ostream(v19);
    return;
  }

  v9 = *(*v8 + 48);
  v10 = *MEMORY[0x277D85DE8];

  v9();
}

void llvm::raw_string_ostream::~raw_string_ostream(llvm::raw_string_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x25F891040);
}

void llvm::raw_string_ostream::reserveExtraSpace(llvm::raw_string_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);

  std::string::reserve(v2, v3);
}

uint64_t llvm::raw_string_ostream::current_pos(llvm::raw_string_ostream *this)
{
  v1 = *(this + 6);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void llvm::raw_svector_ostream::~raw_svector_ostream(llvm::raw_svector_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x25F891040);
}

void llvm::raw_svector_ostream::reserveExtraSpace(llvm::raw_svector_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

llvm::raw_ostream *llvm::FmtAlign::fill(llvm::raw_ostream *this, llvm::raw_ostream *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = this;
    do
    {
      v6 = *(v5 + 16);
      v7 = *(a2 + 4);
      if (v7 >= *(a2 + 3))
      {
        this = llvm::raw_ostream::write(a2, v6);
      }

      else
      {
        *(a2 + 4) = v7 + 1;
        *v7 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v64 = v3;
  v65 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }
  }

  else
  {
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v52 = 0;
  ptr[0] = 0;
  v51 = 3 * (v9 >> 1) + 1;
  ptr[1] = malloc_type_calloc(v51, 8uLL, 0x100004000313F17uLL);
  if (!ptr[1])
  {
    free(v12);
    return 12;
  }

  v53 = v12;
  v49.n128_u64[0] = __s;
  v49.n128_u64[1] = &__s[v9];
  LODWORD(ptr[0]) = 0;
  LODWORD(v52) = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v13 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = a3 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  doemit(&v49, 0x8000000, 0);
  *(v12 + 7) = *(&v51 + 1) - 1;
  if (a3)
  {
    p_ere(&v49, 128);
  }

  else if ((a3 & 0x10) != 0)
  {
    v15 = v49.n128_u64[1];
    v14 = v49.n128_u64[0];
    if ((v49.n128_u64[1] - v49.n128_u64[0]) <= 0)
    {
      if (!LODWORD(ptr[0]))
      {
        LODWORD(ptr[0]) = 14;
      }

      v14 = &nuls;
      v49.n128_u64[0] = &nuls;
      v49.n128_u64[1] = &nuls;
      v15 = &nuls;
    }

    if (v15 - v14 >= 1)
    {
      do
      {
        v49.n128_u64[0] = (v14 + 1);
        ordinary(&v49, *v14);
        v14 = v49.n128_u64[0];
      }

      while ((v49.n128_u64[1] - v49.n128_u64[0]) > 0);
    }
  }

  else
  {
    p_bre(&v49, 128, 128);
  }

  doemit(&v49, 0x8000000, 0);
  v16 = *(&v51 + 1);
  *(v12 + 8) = *(&v51 + 1) - 1;
  if (!LODWORD(ptr[0]))
  {
    v17 = *(v12 + 11);
    for (i = -128; i != 128; ++i)
    {
      if (!*(v17 + i) && *v13 >= 1)
      {
        v19 = (*v13 + 7) >> 3;
        v20 = *(v12 + 4);
        while (!*(v20 + i))
        {
          v20 += v12[4];
          if (!--v19)
          {
            goto LABEL_24;
          }
        }

        v21 = v12[21];
        v12[21] = v21 + 1;
        *(v17 + i) = v21;
        if (i <= 126)
        {
          v22 = i;
          do
          {
            ++v22;
            if (!*(v17 + v22))
            {
              if (*v13 < 1)
              {
LABEL_38:
                *(v17 + v22) = v21;
              }

              else
              {
                v23 = (*v13 + 7) >> 3;
                v24 = *(v12 + 4);
                while (*(v24 + i) == *(v24 + v22))
                {
                  v24 += v12[4];
                  if (!--v23)
                  {
                    goto LABEL_38;
                  }
                }
              }
            }
          }

          while (v22 != 127);
        }
      }

LABEL_24:
      ;
    }

    v16 = *(&v51 + 1);
  }

  *(v12 + 6) = v16;
  if (v16 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v25) = ptr[0];
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v25) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v26 = 0;
    v27 = 0;
    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
    goto LABEL_77;
  }

  v28 = malloc_type_realloc(ptr[1], 8 * v16, 0x100004000313F17uLL);
  *(v12 + 1) = v28;
  LODWORD(v25) = ptr[0];
  if (!v28)
  {
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v25) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v26 = 0;
    v27 = 0;
    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
    *(v12 + 1) = ptr[1];
    goto LABEL_77;
  }

  if (LODWORD(ptr[0]))
  {
    goto LABEL_76;
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = (v28 + 8);
  v33 = (v28 + 8);
  do
  {
    v35 = *v33++;
    LODWORD(v34) = v35;
    v36 = ((v35 & 0xF8000000) - 0x10000000) >> 27;
    if (v36 > 0xD)
    {
      goto LABEL_60;
    }

    if (((1 << v36) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v36) & 0x2200) != 0)
    {
      v33 = v32;
      while (1)
      {
        v33 += v34 & 0x7FFFFFF;
        v34 = *v33;
        v37 = *v33 & 0xF8000000;
        if (v37 == 1610612736)
        {
          break;
        }

        if (v37 != -2013265920)
        {
          if (v37 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_75;
        }
      }

LABEL_60:
      if (v31 > v12[26])
      {
        v12[26] = v31;
        v29 = v30;
      }

      v31 = 0;
      goto LABEL_63;
    }

    if (v36)
    {
      goto LABEL_60;
    }

    if (!v31)
    {
      v30 = v32;
    }

    ++v31;
LABEL_63:
    v32 = v33;
  }

  while ((v34 & 0xF8000000) != 0x8000000);
  v38 = v12[26];
  if (v38)
  {
    v39 = malloc_type_malloc(v38 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v39;
    if (v39)
    {
      v40 = v12[26];
      if (v40 >= 1)
      {
        do
        {
          do
          {
            v42 = *v29++;
            v41 = v42;
          }

          while ((v42 & 0xF8000000) != 0x10000000);
          *v39++ = v41;
        }

        while (v40-- > 1);
      }

      *v39 = 0;
    }

    else
    {
      v12[26] = 0;
    }
  }

LABEL_75:
  LODWORD(v25) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_76:
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v44 = (*(v12 + 1) + 8);
    do
    {
      v45 = *v44++;
      v46 = v45 & 0xF8000000;
      if (v25 <= v27)
      {
        v47 = v27;
      }

      else
      {
        v47 = v25;
      }

      v48 = v25 - 1;
      if (v46 == 1207959552)
      {
        ++v25;
      }

      if (v46 == 1342177280)
      {
        v25 = v48;
        v27 = v47;
      }
    }

    while (v46 != 0x8000000);
    if (v25)
    {
      LODWORD(v25) = 0;
      v12[18] |= 4u;
    }

    v26 = 1;
  }

LABEL_77:
  *(v12 + 16) = v27;
  *v12 = 53829;
  *(a1 + 8) = *(v12 + 14);
  *(a1 + 24) = v12;
  *a1 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v26)
    {
      LODWORD(v25) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v49.n128_u64[0] = &nuls;
    v49.n128_u64[1] = &nuls;
  }

  if (!v25)
  {
    return 0;
  }

  llvm_regfree(a1);
  return LODWORD(ptr[0]);
}

void **doemit(void **result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 4))
  {
    v5 = result;
    v7 = result[4];
    v6 = result[5];
    if (v6 >= v7)
    {
      result = enlarge(result, (&v7[((v7 + 1) >> 63) + 1] & 0xFFFFFFFFFFFFFFFELL) + (v7 + 1) / 2);
      v6 = v5[5];
    }

    v8 = v5[3];
    v5[5] = v6 + 1;
    v8[v6] = a3 | a2;
  }

  return result;
}

void p_ere(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a1 + 144;
  v49 = a1 + 64;
  v50 = 0;
  while (2)
  {
    v7 = *(a1 + 40);
    v8 = *a1;
    v9 = *(a1 + 8);
    if (&v9[-*a1] < 1)
    {
      goto LABEL_123;
    }

    while (1)
    {
      v10 = *v8;
      v11 = *(a1 + 40);
      if (v10 == 124 || v10 == a2)
      {
        break;
      }

      v13 = v8 + 1;
      *a1 = v8 + 1;
      v14 = *v8;
      if (v14 <= 62)
      {
        if (v14 > 41)
        {
          if ((v14 - 42) < 2)
          {
LABEL_25:
            if (!*(a1 + 16))
            {
              v18 = 13;
              goto LABEL_52;
            }

            goto LABEL_53;
          }

          if (v14 == 46)
          {
            if ((*(*(a1 + 56) + 40) & 8) != 0)
            {
              *a1 = &nonnewline_bracket;
              *(a1 + 8) = &unk_25D09F0E8;
              p_bracket(a1);
              *a1 = v13;
              *(a1 + 8) = v9;
            }

            else
            {
              doemit(a1, 671088640, 0);
            }

            goto LABEL_62;
          }

          goto LABEL_60;
        }

        switch(v14)
        {
          case '$':
            doemit(a1, 0x20000000, 0);
            v19 = *(a1 + 56);
            *(v19 + 72) |= 2u;
            ++*(v19 + 80);
            goto LABEL_62;
          case '(':
            if (v9 - v13 <= 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 8;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            v23 = *(a1 + 56);
            v24 = *(v23 + 112);
            v25 = v24 + 1;
            *(v23 + 112) = v24 + 1;
            if (v24 + 1 <= 9)
            {
              *(v49 + 8 * v25) = v11;
            }

            doemit(a1, 1744830464, v24 + 1);
            if ((*(a1 + 8) - *a1) < 1 || **a1 != 41)
            {
              p_ere(a1, 41);
            }

            if (v25 <= 9)
            {
              *(v6 + 8 * v25) = *(a1 + 40);
            }

            doemit(a1, 1879048192, v25);
            v26 = *a1;
            if ((*(a1 + 8) - *a1) >= 1)
            {
              *a1 = v26 + 1;
              if (*v26 == 41)
              {
                goto LABEL_62;
              }
            }

            break;
          case ')':
            break;
          default:
LABEL_60:
            v15 = v14;
LABEL_61:
            ordinary(a1, v15);
            goto LABEL_62;
        }

        if (!*(a1 + 16))
        {
          v18 = 8;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      if (v14 > 93)
      {
        if (v14 != 94)
        {
          if (v14 == 123)
          {
            if (v9 - v13 >= 1 && *v13 - 48 <= 9)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 13;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }

          else if (v14 == 124)
          {
            if (!*(a1 + 16))
            {
              v18 = 14;
              goto LABEL_52;
            }

            goto LABEL_53;
          }

          goto LABEL_60;
        }

        doemit(a1, 402653184, 0);
        v17 = 0;
        v20 = *(a1 + 56);
        v21 = v20[9];
        v22 = vadd_s32(v21, 0x100000001);
        v21.i32[0] |= 1u;
        v21.i32[1] = v22.i32[1];
        v20[9] = v21;
      }

      else
      {
        if (v14 == 63)
        {
          goto LABEL_25;
        }

        if (v14 == 91)
        {
          p_bracket(a1);
          goto LABEL_62;
        }

        if (v14 != 92)
        {
          goto LABEL_60;
        }

        if (v9 - v13 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *(a1 + 8) = &nuls;
          v13 = &nuls;
        }

        *a1 = v13 + 1;
        v15 = *v13;
        if ((v15 - 49) > 8)
        {
          goto LABEL_61;
        }

        v16 = (v15 - 48);
        if (!*(v6 + 8 * v16))
        {
          if (!*(a1 + 16))
          {
            v18 = 6;
LABEL_52:
            *(a1 + 16) = v18;
          }

LABEL_53:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
LABEL_62:
          v17 = 1;
          goto LABEL_63;
        }

        doemit(a1, 939524096, v16);
        dupl(a1, *(v49 + 8 * v16) + 1, *(v6 + 8 * v16));
        doemit(a1, 0x40000000, v16);
        v17 = 1;
        *(*(a1 + 56) + 120) = 1;
      }

LABEL_63:
      v8 = *a1;
      v9 = *(a1 + 8);
      v27 = &v9[-*a1];
      if (v27 >= 1)
      {
        v28 = *v8;
        if ((v28 - 42) < 2 || v28 == 63 || v28 == 123 && (v29 = v9 != *a1, v27 != 1) && v8[1] - 48 <= 9)
        {
          *a1 = v8 + 1;
          if ((v17 & 1) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

          if (v28 > 62)
          {
            if (v28 != 63)
            {
              if (v28 == 123)
              {
                v33 = p_count(a1);
                v34 = v33;
                v35 = *a1;
                v36 = v33;
                if ((*(a1 + 8) - *a1) >= 1)
                {
                  v36 = v33;
                  if (*v35 == 44)
                  {
                    *a1 = v35 + 1;
                    if (v35[1] - 48 > 9)
                    {
                      v36 = 256;
                    }

                    else
                    {
                      v36 = p_count(a1);
                      if (v34 > v36)
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 10;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                      }
                    }
                  }
                }

                repeat(a1, v11, v34, v36);
                v42 = *a1;
                v41 = *(a1 + 8);
                if (v41 - *a1 >= 1)
                {
                  if (*v42 == 125)
                  {
                    *a1 = v42 + 1;
                    goto LABEL_93;
                  }

                  v43 = ~v42 + v41;
                  v44 = (v42 + 1);
                  while (1)
                  {
                    *a1 = v44;
                    if (v43 <= 0)
                    {
                      break;
                    }

                    v45 = *v44++;
                    --v43;
                    if (v45 == 125)
                    {
                      if (*(a1 + 16))
                      {
                        goto LABEL_121;
                      }

                      v46 = 10;
                      goto LABEL_120;
                    }
                  }
                }

                if (!*(a1 + 16))
                {
                  v46 = 9;
LABEL_120:
                  *(a1 + 16) = v46;
                }

LABEL_121:
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

LABEL_93:
              v8 = *a1;
              v9 = *(a1 + 8);
              v38 = &v9[-*a1];
              if (v38 >= 1)
              {
                if ((v39 = *v8, (v39 - 42) < 2) || v39 == 63 || (v39 == 123 ? (v29 = v9 != *a1, v40 = v38 == 1) : (v40 = 1), !v40 && v8[1] - 48 <= 9))
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 13;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                  v8 = &nuls;
                  v9 = &nuls;
                }
              }

              goto LABEL_104;
            }

            doinsert(a1, 2013265920, *(a1 + 40) - v11 + 1, v11);
            doemit(a1, 0x80000000, *(a1 + 40) - v11);
            if (!*(a1 + 16))
            {
              *(*(a1 + 24) + 8 * v11) = *(*(a1 + 24) + 8 * v11) & 0xF8000000 | (*(a1 + 40) - v11);
            }

            doemit(a1, 2281701376, 0);
            if (!*(a1 + 16))
            {
              v37 = *(a1 + 24) + 8 * *(a1 + 40);
              *(v37 - 8) = *(v37 - 8) & 0xF8000000 | 1;
            }

            v31 = a1;
            v32 = 2415919104;
            v30 = 2;
          }

          else
          {
            if (v28 != 42)
            {
              if (v28 == 43)
              {
                doinsert(a1, 1207959552, *(a1 + 40) - v11 + 1, v11);
                v30 = *(a1 + 40) - v11;
                v31 = a1;
                v32 = 1342177280;
                goto LABEL_92;
              }

              goto LABEL_93;
            }

            doinsert(a1, 1207959552, *(a1 + 40) - v11 + 1, v11);
            doemit(a1, 1342177280, *(a1 + 40) - v11);
            doinsert(a1, 1476395008, *(a1 + 40) - v11 + 1, v11);
            v30 = *(a1 + 40) - v11;
            v31 = a1;
            v32 = 1610612736;
          }

LABEL_92:
          doemit(v31, v32, v30);
          goto LABEL_93;
        }
      }

LABEL_104:
      if (v9 - v8 <= 0)
      {
        v11 = *(a1 + 40);
        break;
      }
    }

    if (v11 == v7)
    {
LABEL_123:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v11 = v7;
      v8 = &nuls;
      v9 = &nuls;
    }

    if (v9 - v8 >= 1 && *v8 == 124)
    {
      *a1 = v8 + 1;
      if (v5)
      {
        v7 = v50;
      }

      else
      {
        doinsert(a1, 2013265920, v11 - v7 + 1, v7);
        v11 = *(a1 + 40);
        v4 = v7;
      }

      doemit(a1, 0x80000000, v11 - v7);
      v47 = *(a1 + 40);
      v48 = v47;
      if (!*(a1 + 16))
      {
        *(*(a1 + 24) + 8 * v4) = *(*(a1 + 24) + 8 * v4) & 0xF8000000 | (v47 - v4);
        v48 = *(a1 + 40);
      }

      v50 = v47 - 1;
      doemit(a1, 2281701376, 0);
      v5 = 1;
      v4 = v48;
      continue;
    }

    break;
  }

  if (v5)
  {
    if (!*(a1 + 16))
    {
      *(*(a1 + 24) + 8 * v4) = *(*(a1 + 24) + 8 * v4) & 0xF8000000 | (v11 - v4);
      v11 = *(a1 + 40);
    }

    doemit(a1, 2415919104, v11 - v50);
  }
}

void p_bre(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = &v6[-*a1];
  if (v7 < 1)
  {
    goto LABEL_98;
  }

  if (*v5 == 94)
  {
    *a1 = v5 + 1;
    doemit(a1, 402653184, 0);
    v10 = *(a1 + 56);
    v11 = v10[9];
    v12 = vadd_s32(v11, 0x100000001);
    v11.i32[0] |= 1u;
    v11.i32[1] = v12.i32[1];
    v10[9] = v11;
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = &v6[-*a1];
    if (v7 < 1)
    {
LABEL_98:
      v40 = *(a1 + 40);
      goto LABEL_99;
    }
  }

  v42 = v4;
  v13 = 0;
  v14 = 0;
  v15 = a1 + 144;
  v16 = a1 + 64;
  while (v7 == 1 || *v5 != a2 || v5[1] != a3)
  {
    v17 = *(a1 + 40);
    v18 = v5 + 1;
    *a1 = v5 + 1;
    v19 = *v5;
    if (v19 == 92)
    {
      if (v6 - v18 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &nuls;
        v6 = &nuls;
        v18 = &nuls;
      }

      *a1 = v18 + 1;
      v19 = *v18++ | 0x100;
    }

    if (v19 > 304)
    {
      if ((v19 - 305) < 9)
      {
        v20 = (v19 & 0xFFFFFEFF) - 48;
        if (*(v15 + 8 * v20))
        {
          doemit(a1, 939524096, (v19 & 0xFFFFFEFF) - 48);
          dupl(a1, *(v16 + 8 * v20) + 1, *(v15 + 8 * v20));
          doemit(a1, 0x40000000, (v19 & 0xFFFFFEFF) - 48);
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 6;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        *(*(a1 + 56) + 120) = 1;
        goto LABEL_60;
      }

      if (v19 == 379)
      {
        if (!*(a1 + 16))
        {
          v27 = 13;
LABEL_56:
          *(a1 + 16) = v27;
        }

        goto LABEL_57;
      }

      if (v19 == 381)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    if (v19 <= 90)
    {
      if (v19 == 42)
      {
        if (v14)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }
      }

      else if (v19 == 46)
      {
        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = &nonnewline_bracket;
          *(a1 + 8) = &unk_25D09F0E8;
          p_bracket(a1);
          *a1 = v18;
          *(a1 + 8) = v6;
        }

        else
        {
          doemit(a1, 671088640, 0);
        }

        goto LABEL_60;
      }

LABEL_38:
      ordinary(a1, v19);
      goto LABEL_60;
    }

    if (v19 == 91)
    {
      p_bracket(a1);
      goto LABEL_60;
    }

    if (v19 != 296)
    {
      if (v19 == 297)
      {
        goto LABEL_52;
      }

      goto LABEL_38;
    }

    v21 = *(a1 + 56);
    v22 = *(v21 + 112);
    v23 = v22 + 1;
    *(v21 + 112) = v22 + 1;
    if (v22 + 1 <= 9)
    {
      *(v16 + 8 * v23) = v17;
    }

    doemit(a1, 1744830464, v22 + 1);
    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    if (v25 >= 1 && (v25 == 1 || *v24 != 92 || v24[1] != 41))
    {
      p_bre(a1, 92, 41);
    }

    if (v23 <= 9)
    {
      *(v15 + 8 * v23) = *(a1 + 40);
    }

    doemit(a1, 1879048192, v23);
    v26 = *a1;
    if ((*(a1 + 8) - *a1) < 2 || *v26 != 92 || v26[1] != 41)
    {
LABEL_52:
      if (!*(a1 + 16))
      {
        v27 = 8;
        goto LABEL_56;
      }

LABEL_57:
      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      goto LABEL_60;
    }

    *a1 = v26 + 2;
LABEL_60:
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = &v6[-*a1];
    if (v7 >= 1)
    {
      v28 = *v5;
      if (v28 == 42)
      {
        *a1 = v5 + 1;
        doinsert(a1, 1207959552, *(a1 + 40) - v17 + 1, v17);
        doemit(a1, 1342177280, *(a1 + 40) - v17);
        doinsert(a1, 1476395008, *(a1 + 40) - v17 + 1, v17);
        doemit(a1, 1610612736, *(a1 + 40) - v17);
        v5 = *a1;
        v6 = *(a1 + 8);
LABEL_91:
        v13 = 0;
        v7 = v6 - v5;
        goto LABEL_92;
      }

      v29 = v6 != *a1;
      if (v7 != 1 && v28 == 92 && v5[1] == 123)
      {
        *a1 = v5 + 2;
        v30 = p_count(a1);
        v31 = v30;
        v33 = *a1;
        v32 = *(a1 + 8);
        v34 = v30;
        if (v32 - *a1 >= 1)
        {
          v34 = v30;
          if (*v33 == 44)
          {
            v35 = (v33 + 1);
            *a1 = v35;
            if (v32 - v35 < 1 || *v35 - 48 > 9)
            {
              v34 = 256;
            }

            else
            {
              v34 = p_count(a1);
              if (v31 > v34)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 10;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }
        }

        repeat(a1, v17, v31, v34);
        v36 = *a1;
        v6 = *(a1 + 8);
        v37 = &v6[-*a1];
        if (v37 <= 1)
        {
          if (v37 == 1)
          {
            goto LABEL_82;
          }

LABEL_87:
          if (!*(a1 + 16))
          {
            v39 = 9;
            goto LABEL_89;
          }
        }

        else
        {
          if (*v36 == 92 && v36[1] == 125)
          {
            v5 = v36 + 2;
            *a1 = v36 + 2;
            goto LABEL_91;
          }

LABEL_82:
          v38 = v36 + 1;
          while (1)
          {
            if (--v37)
            {
              if (*(v38 - 1) == 92 && *v38 == 125)
              {
                break;
              }
            }

            *a1 = v38++;
            if (v37 <= 0)
            {
              goto LABEL_87;
            }
          }

          if (!*(a1 + 16))
          {
            v39 = 10;
LABEL_89:
            *(a1 + 16) = v39;
          }
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v5 = &nuls;
        v6 = &nuls;
        goto LABEL_91;
      }
    }

    if (v19 != 36)
    {
      goto LABEL_91;
    }

    v13 = 1;
LABEL_92:
    v14 = 1;
    if (v7 <= 0)
    {
      break;
    }
  }

  v40 = *(a1 + 40);
  v4 = v42;
  if (v13)
  {
    *(a1 + 40) = v40 - 1;
    doemit(a1, 0x20000000, 0);
    v41 = *(a1 + 56);
    *(v41 + 72) |= 2u;
    ++*(v41 + 80);
    goto LABEL_98;
  }

LABEL_99:
  if (v40 == v4)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 14;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
  }
}

void *doinsert(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v5 = result;
    v6 = result[5];
    doemit(result, a2, a3);
    v7 = v5[3];
    v8 = *(v7 + 8 * v6);
    v9 = v5 + 19;
    v10 = 9;
    do
    {
      v11 = *(v9 - 10);
      if (v11 >= a4)
      {
        *(v9 - 10) = v11 + 1;
      }

      if (*v9 >= a4)
      {
        ++*v9;
      }

      ++v9;
      --v10;
    }

    while (v10);
    result = memmove((v7 + 8 * a4 + 8), (v7 + 8 * a4), 8 * (v5[5] + ~a4));
    *(v5[3] + 8 * a4) = v8;
  }

  return result;
}

void p_bracket(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (!strncmp(*a1, "[:<:]]", 6uLL))
    {
      v24 = a1;
      v25 = 2550136832;
    }

    else
    {
      if (strncmp(v2, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      v24 = a1;
      v25 = 2684354560;
    }

    doemit(v24, v25, 0);
    *a1 += 6;
    return;
  }

LABEL_4:
  v3 = *(a1 + 56);
  v4 = *(v3 + 20);
  v5 = *(v3 + 16);
  *(v3 + 20) = v4 + 1;
  v6 = *(a1 + 48);
  if (v4 >= v6)
  {
    v17 = (v6 + 8);
    *(a1 + 48) = v17;
    if (v6 < -8)
    {
      goto LABEL_21;
    }

    v18 = malloc_type_realloc(*(v3 + 24), 32 * (v6 + 8), 0x1010040FE74B554uLL);
    v3 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = (v17 >> 3) * v5;
    *(v3 + 24) = v18;
    v20 = malloc_type_realloc(*(v3 + 32), v19, 0x100004077774924uLL);
    v3 = *(a1 + 56);
    if (!v20)
    {
      goto LABEL_21;
    }

    *(v3 + 32) = v20;
    if (v4 >= 1)
    {
      v21 = 0;
      v22 = *(v3 + 24);
      do
      {
        *v22 = &v20[(v21 >> 3) * v5];
        v22 += 4;
        ++v21;
      }

      while (v4 != v21);
    }

    bzero(&v20[v19 - v5], v5);
    v3 = *(a1 + 56);
  }

  v7 = *(v3 + 24);
  if (!v7 || (v8 = *(v3 + 32)) == 0)
  {
LABEL_21:
    free(*(v3 + 24));
    v23 = *(a1 + 56);
    *(v23 + 24) = 0;
    free(*(v23 + 32));
    *(*(a1 + 56) + 32) = 0;
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 12;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    return;
  }

  v9 = (v7 + 32 * v4);
  v10 = v8 + v5 * (v4 / 8);
  *v9 = v10;
  v11 = 1;
  v12 = 1 << (v4 & 7);
  *(v9 + 4) = v12;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v14 = *a1;
  v13 = *(a1 + 8);
  if (&v13[-*a1] < 1)
  {
    goto LABEL_30;
  }

  v15 = *v14;
  v11 = v15 != 94;
  if (v15 == 94)
  {
    *a1 = ++v14;
    if (v13 - v14 < 1)
    {
      v11 = 0;
      goto LABEL_30;
    }

    v15 = *v14;
  }

  if (v15 == 93)
  {
    v16 = 93;
  }

  else
  {
    if (v15 != 45)
    {
      goto LABEL_30;
    }

    v16 = 45;
  }

  *a1 = v14 + 1;
  *(v10 + v16) |= v12;
  v9[9] += v15;
  v14 = *a1;
  v13 = *(a1 + 8);
LABEL_30:
  v26 = v13 - v14;
  if (v13 - v14 >= 1)
  {
    v27 = MEMORY[0x277D85DE0];
    while (1)
    {
      v28 = *v14;
      if (v28 == 93)
      {
        goto LABEL_132;
      }

      if (v26 != 1 && v28 == 45)
      {
        break;
      }

      if (v28 == 45)
      {
        goto LABEL_70;
      }

      if (v28 != 91 || v26 == 1)
      {
LABEL_43:
        v30 = p_b_symbol(a1);
        v31 = v30;
        v32 = *a1;
        v33 = *(a1 + 8);
        if (v33 - *a1 < 2 || *v32 != 45 || (v34 = v32 + 1, v32[1] == 93) || ((*a1 = v34, v33 - v34 < 1) || *v34 != 45 ? (v30 = p_b_symbol(a1)) : (*a1 = v32 + 2, v30 = 45), v31 <= v30))
        {
          do
          {
            *(*v9 + v31) |= v9[8];
            v9[9] += v31++;
          }

          while (v30 + 1 != v31);
          v14 = *a1;
          v13 = *(a1 + 8);
          goto LABEL_75;
        }

        goto LABEL_70;
      }

      v35 = v14[1];
      if (v35 == 61)
      {
        v42 = v14 + 2;
        *a1 = v42;
        if (v13 - v42 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v42 = &nuls;
        }

        v43 = *v42;
        if (v43 == 93 || v43 == 45)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 3;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        v44 = p_b_coll_elem(a1, 61);
        *(*v9 + v44) |= v9[8];
        v9[9] += v44;
        v45 = *a1;
        v13 = *(a1 + 8);
        if (&v13[-*a1] < 1)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v45 = &nuls;
          v13 = &nuls;
        }

        if (v13 - v45 > 1 && *v45 == 61 && v45[1] == 93)
        {
          goto LABEL_111;
        }

        if (!*(a1 + 16))
        {
          *(a1 + 16) = 3;
        }
      }

      else
      {
        if (v35 != 58)
        {
          goto LABEL_43;
        }

        v36 = v14 + 2;
        *a1 = v14 + 2;
        if (v13 - (v14 + 2) <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v13 = &nuls;
          v36 = &nuls;
        }

        v37 = *v36;
        if (v37 == 93 || v37 == 45)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 4;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v13 = &nuls;
          v36 = &nuls;
        }

        if (v13 - v36 >= 1)
        {
          v38 = -v36;
          v39 = v36 + 1;
          while (1)
          {
            v40 = *(v39 - 1);
            if (v40 < 0)
            {
              if (!__maskrune(*(v39 - 1), 0x100uLL))
              {
LABEL_96:
                v41 = *a1;
                goto LABEL_97;
              }
            }

            else if ((*(v27 + 4 * v40 + 60) & 0x100) == 0)
            {
              goto LABEL_96;
            }

            *a1 = v39;
            --v38;
            ++v39;
            if (*(a1 + 8) + v38 <= 0)
            {
              v41 = -v38;
              goto LABEL_97;
            }
          }
        }

        v41 = v36;
LABEL_97:
        v46 = v41 - v36;
        v47 = &off_2799BD110;
        v48 = "alnum";
        while (strncmp(v48, v36, v46) || v48[v46])
        {
          v48 = *(v47 + 1);
          v47 += 24;
          if (!v48)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 4;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            goto LABEL_104;
          }
        }

        v49 = *(v47 - 1);
        v50 = *v49;
        if (*v49)
        {
          v51 = v49 + 1;
          do
          {
            *(*v9 + v50) |= v9[8];
            v9[9] += v50;
            v52 = *v51++;
            v50 = v52;
          }

          while (v52);
        }

        v53 = *v47;
        if (**v47)
        {
          do
          {
            v54 = *(v9 + 2);
            v55 = v54 + strlen(v53) + 1;
            *(v9 + 2) = v55;
            v56 = malloc_type_realloc(*(v9 + 3), v55, 0xBC45E43CuLL);
            if (v56)
            {
              *(v9 + 3) = v56;
              v57 = *(v9 + 2);
              if (v57 - v54 != -1)
              {
                v58 = &v56[v54 - 1];
                v59 = v54 - v57;
                v60 = v53;
                while (v59)
                {
                  v61 = *v60++;
                  *v58++ = v61;
                  ++v59;
                  if (!v61)
                  {
                    goto LABEL_130;
                  }
                }

                *v58 = 0;
              }
            }

            else
            {
              v62 = *(v9 + 3);
              if (v62)
              {
                free(v62);
              }

              *(v9 + 3) = 0;
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

LABEL_130:
            v63 = &v53[strlen(v53)];
            v64 = *(v63 + 1);
            v53 = v63 + 1;
          }

          while (v64);
        }

LABEL_104:
        v45 = *a1;
        v13 = *(a1 + 8);
        if (&v13[-*a1] < 1)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v45 = &nuls;
          v13 = &nuls;
        }

        if (v13 - v45 > 1 && *v45 == 58 && v45[1] == 93)
        {
LABEL_111:
          v14 = v45 + 2;
          *a1 = v14;
          goto LABEL_75;
        }

        if (!*(a1 + 16))
        {
          *(a1 + 16) = 4;
        }
      }

LABEL_72:
      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v14 = &nuls;
      v13 = &nuls;
LABEL_75:
      v26 = v13 - v14;
      if (v13 - v14 <= 0)
      {
        goto LABEL_132;
      }
    }

    if (v14[1] == 93)
    {
      *a1 = v14 + 1;
      *(*v9 + 45) |= v9[8];
      v9[9] += 45;
      v14 = *a1;
      v13 = *(a1 + 8);
      goto LABEL_132;
    }

LABEL_70:
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 11;
    }

    goto LABEL_72;
  }

LABEL_132:
  if (v13 - v14 < 1 || (*a1 = v14 + 1, *v14 != 93))
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    goto LABEL_170;
  }

  if (*(a1 + 16))
  {
LABEL_170:

    freeset(a1, v9);
    return;
  }

  v65 = *(a1 + 56);
  if ((*(v65 + 40) & 2) != 0)
  {
    v66 = *(v65 + 16);
    if (v66 >= 1)
    {
      v67 = MEMORY[0x277D85DE0];
      while (1)
      {
        v68 = v66 - 1;
        if ((v9[8] & *(*v9 + (v66 - 1))) != 0)
        {
          if (v66 > 0x80)
          {
            if (__maskrune(v66 - 1, 0x100uLL))
            {
LABEL_143:
              v69 = othercase(v68);
              if (v68 != v69)
              {
                *(*v9 + v69) |= v9[8];
                v9[9] += v69;
              }
            }
          }

          else if ((*(v67 + 4 * v66 + 56) & 0x100) != 0)
          {
            goto LABEL_143;
          }
        }

        v66 = v68;
        if (v68 + 1 <= 1)
        {
          v65 = *(a1 + 56);
          break;
        }
      }
    }
  }

  if (!v11)
  {
    v70 = *(v65 + 16);
    if (v70 >= 1)
    {
      v71 = v70 + 1;
      do
      {
        v72 = v71 - 2;
        v73 = *v9;
        v74 = (v71 - 2);
        v75 = *(*v9 + v74);
        v76 = v9[8];
        if ((v76 & v75) != 0)
        {
          *(v73 + v74) = v75 & ~v76;
          v77 = v9[9] - v72;
        }

        else
        {
          *(v73 + v74) = v76 | v75;
          v77 = v9[9] + v72;
        }

        v9[9] = v77;
        --v71;
      }

      while (v71 > 1);
      v65 = *(a1 + 56);
    }

    if ((*(v65 + 40) & 8) != 0)
    {
      *(*v9 + 10) &= ~v9[8];
      v9[9] -= 10;
      v65 = *(a1 + 56);
    }
  }

  v78 = *(v65 + 16);
  if (v78)
  {
    v79 = 0;
    v80 = 0;
    v81 = *v9;
    do
    {
      if ((*(v81 + v80) & v9[8]) != 0)
      {
        ++v79;
      }

      ++v80;
    }

    while (v78 != v80);
    if (v79 == 1)
    {
      v82 = 0;
      v83 = 0;
      while ((*(v81 + v83) & v9[8]) == 0)
      {
        ++v83;
        v82 += 0x1000000;
        if (v78 == v83)
        {
          v84 = 0;
          goto LABEL_189;
        }
      }

      v84 = v82 >> 24;
LABEL_189:
      ordinary(a1, v84);
      goto LABEL_170;
    }
  }

  v85 = *(v65 + 24);
  v86 = *(v65 + 20);
  if (v86 < 1)
  {
LABEL_183:
    v88 = v9;
  }

  else
  {
    v87 = v85 + 32 * v86;
    v88 = *(v65 + 24);
    while (1)
    {
      if (v88 != v9 && v88[9] == v9[9])
      {
        v89 = 0;
        if (v78)
        {
          while (((*(*v88 + v89) & v88[8]) != 0) != ((*(*v9 + v89) & v9[8]) == 0))
          {
            if (v78 == ++v89)
            {
              goto LABEL_184;
            }
          }
        }

        if (v89 == v78)
        {
          break;
        }
      }

      v88 += 32;
      if (v88 >= v87)
      {
        goto LABEL_183;
      }
    }

LABEL_184:
    freeset(a1, v9);
    v85 = *(*(a1 + 56) + 24);
  }

  doemit(a1, 805306368, (&v88[-v85] >> 5));
}

uint64_t dupl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = a3 - a2;
  if (a3 != a2)
  {
    enlarge(a1, *(a1 + 32) + v4);
    memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * a2), 8 * v4);
    *(a1 + 40) += v4;
  }

  return v3;
}

__n128 ordinary(__n128 *a1, int a2)
{
  v4 = a1[3].n128_u64[1];
  v5 = *(v4 + 88);
  v6 = a2;
  if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_7;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_7;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * a2 + 60) & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if (othercase(a2) != a2)
  {
    v11 = a2;
    v12 = 93;
    v10 = *a1;
    a1->n128_u64[0] = &v11;
    a1->n128_u64[1] = &v12 + 1;
    p_bracket(a1);
    result = v10;
    *a1 = v10;
    return result;
  }

LABEL_7:
  doemit(a1, 0x10000000, v6);
  if (!*(v5 + a2))
  {
    v8 = a1[3].n128_u64[1];
    v9 = *(v8 + 84);
    *(v8 + 84) = v9 + 1;
    *(v5 + a2) = v9;
  }

  return result;
}

uint64_t p_count(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (v2 < 1)
  {
    v4 = 0;
LABEL_12:
    if (!*(a1 + 4))
    {
      *(a1 + 4) = 10;
    }

    *a1 = &nuls;
    a1[1] = &nuls;
    return v4;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = (v1 + v3);
    if (*(v1 + v3) - 48 > 9 || v4 > 255)
    {
      break;
    }

    *a1 = (v5 + 1);
    v4 = (*v5 + 10 * v4 - 48);
    ++v3;
    if (v2-- <= 1)
    {
      LODWORD(v3) = 1;
      break;
    }
  }

  if (!v3 || v4 >= 256)
  {
    goto LABEL_12;
  }

  return v4;
}

void **repeat(void **result, uint64_t a2, int a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v7 = result;
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      while (1)
      {
        v10 = *(v7 + 40);
        if (a3 == 256)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        if (a3 < 2)
        {
          v11 = a3;
        }

        v12 = v9 + 8 * v11;
        if (v12 != 19)
        {
          break;
        }

        result = dupl(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
        if (*(v7 + 16))
        {
          return result;
        }
      }

      if (v12 <= 8)
      {
        break;
      }

      if (v12 > 10)
      {
        if (v12 == 11)
        {
          doinsert(v7, 1207959552, v10 - a2 + 1, a2);
          v17 = *(v7 + 40) - a2;
          v15 = v7;
          v16 = 1342177280;
          goto LABEL_40;
        }

        if (v12 != 18)
        {
          goto LABEL_43;
        }

        result = dupl(v7, a2, *(v7 + 40));
        a2 = result;
        --a3;
      }

      else
      {
        if (v12 == 9)
        {
          return result;
        }

        doinsert(v7, 2013265920, v10 - a2 + 1, a2);
        doemit(v7, 0x80000000, *(v7 + 40) - a2);
        if (!*(v7 + 16))
        {
          *(*(v7 + 24) + 8 * a2) = *(*(v7 + 24) + 8 * a2) & 0xF8000000 | (*(v7 + 40) - a2);
        }

        doemit(v7, 2281701376, 0);
        if (!*(v7 + 16))
        {
          v13 = *(v7 + 24) + 8 * *(v7 + 40);
          *(v13 - 8) = *(v13 - 8) & 0xF8000000 | 1;
        }

        doemit(v7, 2415919104, 2);
        result = dupl(v7, a2 + 1, v10 + 1);
        a2 = result;
        a3 = 1;
      }

      a4 = (a4 - 1);
      if (*(v7 + 16))
      {
        return result;
      }
    }

    if ((v12 - 1) >= 3)
    {
      if (!v12)
      {
        *(v7 + 40) = a2;
        return result;
      }

LABEL_43:
      *(v7 + 16) = 15;
      *v7 = &nuls;
      *(v7 + 8) = &nuls;
      return result;
    }

    doinsert(v7, 2013265920, v10 - a2 + 1, a2);
    repeat(v7, a2 + 1, 1, a4);
    doemit(v7, 0x80000000, *(v7 + 40) - a2);
    if (!*(v7 + 16))
    {
      *(*(v7 + 24) + 8 * a2) = *(*(v7 + 24) + 8 * a2) & 0xF8000000 | (*(v7 + 40) - a2);
    }

    doemit(v7, 2281701376, 0);
    if (!*(v7 + 16))
    {
      v14 = *(v7 + 24) + 8 * *(v7 + 40);
      *(v14 - 8) = *(v14 - 8) & 0xF8000000 | 1;
    }

    v15 = v7;
    v16 = 2415919104;
    v17 = 2;
LABEL_40:

    return doemit(v15, v16, v17);
  }

  return result;
}

uint64_t freeset(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) + 32 * *(v2 + 20);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      *(*a2 + i) &= ~*(a2 + 8);
      *(a2 + 9) -= i;
    }
  }

  if (v4 - 32 == a2)
  {
    --*(*(result + 56) + 20);
  }

  return result;
}

uint64_t othercase(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1;
  if (a1 <= 0x7Fu)
  {
    v3 = *(MEMORY[0x277D85DE0] + 4 * a1 + 60);
    if ((v3 & 0x8000) == 0)
    {
      if ((v3 & 0x1000) == 0)
      {
        return v1;
      }

      goto LABEL_8;
    }

LABEL_6:
    v4 = __tolower(v2);
LABEL_9:
    v1 = v4;
    return v1;
  }

  if (__maskrune(a1, 0x8000uLL))
  {
    goto LABEL_6;
  }

  if (__maskrune(v2, 0x1000uLL))
  {
LABEL_8:
    v4 = __toupper(v2);
    goto LABEL_9;
  }

  return v1;
}

uint64_t p_b_symbol(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (&v3[-*a1] < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v2 = &nuls;
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    v3 = &nuls;
  }

  if (v3 - v2 > 1 && *v2 == 91 && v2[1] == 46)
  {
    *a1 = v2 + 2;
    v4 = p_b_coll_elem(a1, 46);
    v5 = *a1;
    if ((*(a1 + 8) - *a1) > 1 && *v5 == 46 && v5[1] == 93)
    {
      *a1 = v5 + 2;
    }

    else
    {
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 3;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
    }
  }

  else
  {
    *a1 = v2 + 1;
    return *v2;
  }

  return v4;
}

uint64_t p_b_coll_elem(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4 < 1)
  {
LABEL_7:
    if (!*(a1 + 16))
    {
      v7 = 7;
LABEL_9:
      *(a1 + 16) = v7;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (v4 - 1 == v6 || v3[v6] != a2 || v3[v6 + 1] != 93)
    {
      *a1 = &v3[++v6];
      --v5;
      if (v4 + v5 <= 0)
      {
        goto LABEL_7;
      }
    }

    v10 = "NUL";
    v11 = &off_2799BD248;
    do
    {
      if (!strncmp(v10, v3, v6) && strlen(v10) == v6)
      {
        return *(v11 - 8);
      }

      v12 = *v11;
      v11 += 2;
      v10 = v12;
    }

    while (v12);
    if (v6 == 1)
    {
      return *v3;
    }

    if (!*(a1 + 16))
    {
      v7 = 3;
      goto LABEL_9;
    }
  }

  v8 = 0;
  *a1 = &nuls;
  *(a1 + 8) = &nuls;
  return v8;
}

void **enlarge(void **result, uint64_t a2)
{
  if (result[4] < a2)
  {
    v3 = result;
    if (a2 >> 61 || (result = malloc_type_realloc(result[3], 8 * a2, 0x100004000313F17uLL)) == 0)
    {
      if (!*(v3 + 4))
      {
        *(v3 + 4) = 12;
      }

      *v3 = &nuls;
      v3[1] = &nuls;
    }

    else
    {
      v3[3] = result;
      v3[4] = a2;
    }
  }

  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (strcmp("REG_NOMATCH", v6))
    {
      v7 = off_2799BD858;
      v8 = "0";
      while (1)
      {
        v9 = *(v7 - 2);
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = *v7;
        v7 += 3;
        if (!strcmp(v10, v6))
        {
          goto LABEL_21;
        }
      }
    }

    v9 = 1;
LABEL_21:
    v24 = v9;
    v18 = "%d";
LABEL_23:
    v8 = __str;
    snprintf(__str, 0x32uLL, v18, v24);
    goto LABEL_24;
  }

  v11 = &rerrs;
  do
  {
    v13 = *v11;
    v11 += 6;
    v12 = v13;
    if (v13)
    {
      v14 = v12 == (a1 & 0xFFFFFEFF);
    }

    else
    {
      v14 = 1;
    }
  }

  while (!v14);
  if ((a1 & 0x100) == 0)
  {
    v8 = *(v11 - 1);
    goto LABEL_24;
  }

  if (!v12)
  {
    v24 = a1 & 0xFFFFFEFF;
    v18 = "REG_0x%x";
    goto LABEL_23;
  }

  v15 = 0;
  v16 = *(v11 - 2);
  while (v15 != 49)
  {
    v17 = *(v16 + v15);
    v8 = __str;
    __str[v15++] = v17;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v8 = __str;
  __str[49] = 0;
LABEL_24:
  v19 = strlen(v8);
  if (a4)
  {
    v20 = a4 - 1;
    while (v20)
    {
      v21 = *v8++;
      *a3++ = v21;
      --v20;
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    *a3 = 0;
  }

LABEL_30:
  v22 = *MEMORY[0x277D85DE8];
  return v19 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v5 = *(a1 + 24);
  if (*v5 != 53829 || (*(v5 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v5 + 48);
  if (v9 > 64)
  {
    v18 = *(v5 + 56);
    v17 = *(v5 + 64);
    if ((*(v5 + 40) & 4) != 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = a3;
    }

    if ((a5 & 4) != 0)
    {
      v20 = a4[1];
      v21 = &__s[*a4];
    }

    else
    {
      v20 = strlen(__s);
      v21 = __s;
    }

    v62 = &__s[v20];
    if (&__s[v20] < v21)
    {
      return 16;
    }

    v109 = a4;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v63 = *(v5 + 96);
    v112 = v19;
    v117 = &__s[v20];
    if (v63)
    {
      v64 = v21;
      if (v21 < v62)
      {
        __dsta = v18;
        v105 = v8;
        v65 = v5;
        v66 = *v63;
        v67 = (__s - v21 + v20);
        v107 = &__s[v20];
        v68 = (&__s[v20] - v21);
        v64 = v21;
        do
        {
          if (*v64 == v66)
          {
            v69 = *(v65 + 104);
            if (v68 >= v69 && !memcmp(v64, v63, v69))
            {
              goto LABEL_147;
            }
          }

          ++v64;
          --v68;
          --v67;
        }

        while (v67);
        v64 = v107;
LABEL_147:
        v5 = v65;
        v18 = __dsta;
        v62 = v117;
        v8 = v105;
      }

      if (v64 == v62)
      {
        return 1;
      }
    }

    v118 = v5;
    LODWORD(v119) = v8;
    *&v120 = __s;
    *(&v120 + 1) = v21;
    *&v122 = 0;
    *&v121 = v62;
    v70 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v123[0] = v70;
    if (!v70)
    {
      return 12;
    }

    v71 = v18 + 1;
    v123[1] = v70;
    v72 = *(v5 + 48);
    *&v124 = &v70[v72];
    *(&v124 + 1) = &v70[2 * v72];
    *(&v122 + 1) = 4;
    v125 = &v70[3 * v72];
    bzero(v125, v72);
    v111 = v5;
LABEL_151:
    if (*(&v120 + 1) == v21)
    {
      v73 = 128;
    }

    else
    {
      v73 = *(v21 - 1);
    }

    v74 = v124;
    v75 = v123[1];
    bzero(v123[1], *(v118 + 48));
    v75[v71] = 1;
    lstep(v118, v71, v17, v75, 132, v75);
    memmove(v74, v75, *(v118 + 48));
    v76 = 0;
    while (1)
    {
      if (v21 == v121)
      {
        v77 = 128;
      }

      else
      {
        v77 = *v21;
      }

      v78 = v118;
      if (!memcmp(v75, v74, *(v118 + 48)))
      {
        v76 = v21;
      }

      if (v73 == 128)
      {
        if (v119)
        {
          goto LABEL_163;
        }
      }

      else if (v73 != 10 || (*(v78 + 40) & 8) == 0)
      {
LABEL_163:
        v79 = 0;
        v80 = 0;
        v81 = 130;
        goto LABEL_166;
      }

      v80 = *(v78 + 76);
      v79 = 129;
      v81 = 131;
LABEL_166:
      if (v77 == 128)
      {
        if ((v119 & 2) != 0)
        {
          goto LABEL_169;
        }
      }

      else if (v77 != 10 || (*(v78 + 40) & 8) == 0)
      {
LABEL_169:
        v81 = v79;
        goto LABEL_172;
      }

      v80 += *(v78 + 80);
LABEL_172:
      if (v80 >= 1)
      {
        v82 = v80 + 1;
        do
        {
          lstep(v118, v71, v17, v75, v81, v75);
          --v82;
        }

        while (v82 > 1);
      }

      if (v81 == 129)
      {
        if (v77 == 128)
        {
          v81 = 129;
        }

        else
        {
LABEL_185:
          if (v77 > 0x7Fu)
          {
            v84 = __maskrune(v77, 0x500uLL);
          }

          else
          {
            v84 = *(MEMORY[0x277D85DE0] + 4 * v77 + 60) & 0x500;
          }

          if (v77 == 95 || v84 != 0)
          {
            v81 = 133;
          }
        }

        if (v73 == 128)
        {
          goto LABEL_200;
        }

        v83 = v73;
        goto LABEL_195;
      }

      if (v73 == 128)
      {
        goto LABEL_200;
      }

      v83 = v73;
      if (v73 > 0x7Fu)
      {
        if (__maskrune(v73, 0x500uLL))
        {
          goto LABEL_195;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v73 + 60) & 0x500) != 0)
      {
        goto LABEL_195;
      }

      if (v73 != 95 && v77 != 128)
      {
        goto LABEL_185;
      }

LABEL_195:
      if (v83 > 0x7F)
      {
        if (__maskrune(v83, 0x500uLL))
        {
          goto LABEL_202;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x500) != 0)
      {
        goto LABEL_202;
      }

      if (v73 != 95)
      {
        goto LABEL_200;
      }

LABEL_202:
      if (v81 != 130)
      {
        if (v77 == 128 || (v77 > 0x7Fu ? (v86 = __maskrune(v77, 0x500uLL)) : (v86 = *(MEMORY[0x277D85DE0] + 4 * v77 + 60) & 0x500), v86 || v77 == 95))
        {
LABEL_200:
          if ((v81 - 133) > 1)
          {
            goto LABEL_205;
          }

          goto LABEL_204;
        }
      }

      v81 = 134;
LABEL_204:
      lstep(v118, v71, v17, v75, v81, v75);
LABEL_205:
      if (v21 == v117 || v75[v17])
      {
        *(&v121 + 1) = v76;
        if (!v75[v17])
        {
          free(*(&v119 + 1));
          free(v122);
          v15 = 1;
          goto LABEL_258;
        }

        if (!v112 && !*(v111 + 120))
        {
          goto LABEL_253;
        }

        v87 = lslow(&v118, v76, v117, v71, v17);
        if (v87)
        {
          v88 = v87;
          v89 = v111;
        }

        else
        {
          v89 = v111;
          do
          {
            ++*(&v121 + 1);
            v90 = lslow(&v118, *(&v121 + 1), v117, v71, v17);
          }

          while (!v90);
          v88 = v90;
        }

        if (v112 == 1 && !*(v89 + 120))
        {
          goto LABEL_247;
        }

        v91 = *(&v119 + 1);
        if (!*(&v119 + 1))
        {
          v91 = malloc_type_malloc(16 * *(v118 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v119 + 1) = v91;
          if (!v91)
          {
            goto LABEL_265;
          }
        }

        v92 = *(v118 + 112);
        if (v92)
        {
          if ((v92 + 1) > 2)
          {
            v93 = v92 + 1;
          }

          else
          {
            v93 = 2;
          }

          memset(v91 + 16, 255, 16 * v93 - 16);
        }

        if (!*(v89 + 120) && (BYTE1(v119) & 4) == 0)
        {
          v94 = ldissect(&v118, *(&v121 + 1), v88, v71, v17);
          goto LABEL_241;
        }

        v95 = *(v89 + 128);
        v96 = v122;
        if (v95 >= 1 && !v122)
        {
          v96 = malloc_type_malloc(8 * v95 + 8, 0x10040436913F5uLL);
          *&v122 = v96;
          v95 = *(v89 + 128);
        }

        if (v95 >= 1 && !v96)
        {
          free(*(&v119 + 1));
LABEL_265:
          v15 = 12;
          goto LABEL_258;
        }

        v97 = *(&v121 + 1);
        do
        {
          v94 = lbackref(&v118, v97, v88, v71, v17, 0, 0);
LABEL_241:
          if (v94)
          {
            goto LABEL_246;
          }

          v97 = *(&v121 + 1);
          if (v88 <= *(&v121 + 1))
          {
            break;
          }

          v88 = lslow(&v118, *(&v121 + 1), v88 - 1, v71, v17);
          v97 = *(&v121 + 1);
        }

        while (v88);
        v21 = v97 + 1;
        if (v97 == v117)
        {
LABEL_246:
          if (v112)
          {
LABEL_247:
            v98 = &v88[-v120];
            *v109 = *(&v121 + 1) - v120;
            v109[1] = v98;
            if (v112 >= 2)
            {
              v99 = v118;
              v100 = (*(&v119 + 1) + 16);
              v101 = v109 + 2;
              for (i = 1; i != v112; ++i)
              {
                if (i <= *(v99 + 112))
                {
                  *v101 = *v100;
                }

                else
                {
                  *v101 = -1;
                  v101[1] = -1;
                }

                ++v100;
                v101 += 2;
              }
            }
          }

LABEL_253:
          if (*(&v119 + 1))
          {
            free(*(&v119 + 1));
          }

          if (v122)
          {
            free(v122);
          }

          v15 = 0;
LABEL_258:
          free(v123[0]);
          return v15;
        }

        goto LABEL_151;
      }

      memmove(*(&v74 + 1), v75, *(v118 + 48));
      memmove(v75, v74, *(v118 + 48));
      lstep(v118, v71, v17, *(&v74 + 1), v77, v75);
      ++v21;
      v73 = v77;
    }
  }

  v11 = *(v5 + 56);
  v10 = *(v5 + 64);
  if ((*(v5 + 40) & 4) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if ((a5 & 4) != 0)
  {
    v13 = a4[1];
    v14 = &__s[*a4];
  }

  else
  {
    v13 = strlen(__s);
    v14 = __s;
  }

  v22 = &__s[v13];
  if (&__s[v13] < v14)
  {
    return 16;
  }

  v106 = v12;
  v108 = a4;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v23 = *(v5 + 96);
  __dst = &__s[v13];
  if (v23)
  {
    v24 = v14;
    if (v14 < v22)
    {
      v25 = v11;
      v103 = v8;
      v26 = v5;
      v27 = *v23;
      v28 = (__s - v14 + v13);
      v115 = &__s[v13];
      v29 = (&__s[v13] - v14);
      v24 = v14;
      while (1)
      {
        if (*v24 == v27)
        {
          v30 = *(v26 + 104);
          if (v29 >= v30 && !memcmp(v24, v23, v30))
          {
            break;
          }
        }

        ++v24;
        --v29;
        if (!--v28)
        {
          v24 = v115;
          break;
        }
      }

      v5 = v26;
      v22 = __dst;
      v8 = v103;
      v11 = v25;
    }

    if (v24 == v22)
    {
      return 1;
    }
  }

  v31 = v11 + 1;
  v118 = v5;
  LODWORD(v119) = v8;
  *&v120 = __s;
  *(&v120 + 1) = v14;
  v104 = 1 << (v11 + 1);
  *&v121 = v22;
  v110 = v5;
  *v123 = 0u;
  v124 = 0u;
LABEL_30:
  if (*(&v120 + 1) == v14)
  {
    v32 = 128;
  }

  else
  {
    v32 = *(v14 - 1);
  }

  v33 = v118;
  v34 = sstep(v118, v31, v10, v104, 132, v104);
  v35 = 0;
  v116 = v34;
  while (1)
  {
    v36 = v14 == v121 ? 128 : *v14;
    v37 = v34 == v116 ? v14 : v35;
    if (v32 == 128)
    {
      if (v119)
      {
        goto LABEL_43;
      }
    }

    else if (v32 != 10 || (*(v33 + 40) & 8) == 0)
    {
LABEL_43:
      v38 = 0;
      v39 = 0;
      v40 = 130;
      goto LABEL_46;
    }

    v39 = *(v33 + 76);
    v38 = 129;
    v40 = 131;
LABEL_46:
    if (v36 == 128)
    {
      if ((v119 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v36 != 10 || (*(v33 + 40) & 8) == 0)
    {
LABEL_49:
      v40 = v38;
      goto LABEL_52;
    }

    v39 += *(v33 + 80);
LABEL_52:
    if (v39 >= 1)
    {
      v41 = v39 + 1;
      do
      {
        v34 = sstep(v33, v31, v10, v34, v40, v34);
        --v41;
      }

      while (v41 > 1);
    }

    if (v40 == 129)
    {
      if (v36 == 128)
      {
        v40 = 129;
      }

      else
      {
LABEL_65:
        if (v36 > 0x7Fu)
        {
          v43 = __maskrune(v36, 0x500uLL);
        }

        else
        {
          v43 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500;
        }

        if (v36 == 95 || v43 != 0)
        {
          v40 = 133;
        }
      }

      if (v32 == 128)
      {
        goto LABEL_80;
      }

      v42 = v32;
      goto LABEL_75;
    }

    if (v32 == 128)
    {
      goto LABEL_80;
    }

    v42 = v32;
    if (v32 > 0x7Fu)
    {
      if (__maskrune(v32, 0x500uLL))
      {
        goto LABEL_75;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v32 + 60) & 0x500) != 0)
    {
      goto LABEL_75;
    }

    if (v32 != 95 && v36 != 128)
    {
      goto LABEL_65;
    }

LABEL_75:
    if (v42 > 0x7F)
    {
      if (__maskrune(v42, 0x500uLL))
      {
        goto LABEL_82;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v42 + 60) & 0x500) != 0)
    {
      goto LABEL_82;
    }

    if (v32 != 95)
    {
      goto LABEL_80;
    }

LABEL_82:
    if (v40 != 130)
    {
      if (v36 == 128 || (v36 > 0x7Fu ? (v46 = __maskrune(v36, 0x500uLL)) : (v46 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500), v46 || v36 == 95))
      {
LABEL_80:
        if ((v40 - 133) > 1)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    v40 = 134;
LABEL_84:
    v34 = sstep(v118, v31, v10, v34, v40, v34);
LABEL_85:
    v35 = v37;
    v45 = v34 & (1 << v10);
    if (v14 == __dst || v45)
    {
      break;
    }

    v33 = v118;
    v34 = sstep(v118, v31, v10, v34, v36, v116);
    ++v14;
    v32 = v36;
  }

  *(&v121 + 1) = v37;
  if (!v45)
  {
    free(*(&v119 + 1));
    free(v122);
    return 1;
  }

  if (!v106 && !*(v110 + 120))
  {
    goto LABEL_131;
  }

  for (j = v37; ; j = ++*(&v121 + 1))
  {
    v48 = sslow(&v118, j, __dst, v31, v10);
    if (v48)
    {
      break;
    }
  }

  v49 = v48;
  if (v106 == 1 && !*(v110 + 120))
  {
    goto LABEL_125;
  }

  v50 = *(&v119 + 1);
  if (!*(&v119 + 1))
  {
    v50 = malloc_type_malloc(16 * *(v118 + 112) + 16, 0x1000040451B5BE8uLL);
    *(&v119 + 1) = v50;
    if (!v50)
    {
      return 12;
    }
  }

  v51 = *(v118 + 112);
  if (v51)
  {
    if ((v51 + 1) > 2)
    {
      v52 = v51 + 1;
    }

    else
    {
      v52 = 2;
    }

    memset(v50 + 16, 255, 16 * v52 - 16);
  }

  if (!*(v110 + 120) && (BYTE1(v119) & 4) == 0)
  {
    v53 = sdissect(&v118, *(&v121 + 1), v49, v31, v10);
    goto LABEL_119;
  }

  v54 = *(v110 + 128);
  v55 = v122;
  if (v54 >= 1 && !v122)
  {
    v55 = malloc_type_malloc(8 * v54 + 8, 0x10040436913F5uLL);
    *&v122 = v55;
    v54 = *(v110 + 128);
  }

  if (v54 >= 1 && !v55)
  {
    free(*(&v119 + 1));
    return 12;
  }

  v56 = *(&v121 + 1);
  while (1)
  {
    v53 = sbackref(&v118, v56, v49, v31, v10, 0, 0);
LABEL_119:
    if (v53)
    {
      break;
    }

    v56 = *(&v121 + 1);
    if (v49 > *(&v121 + 1))
    {
      v49 = sslow(&v118, *(&v121 + 1), v49 - 1, v31, v10);
      v56 = *(&v121 + 1);
      if (v49)
      {
        continue;
      }
    }

    v14 = v56 + 1;
    if (v56 != __dst)
    {
      goto LABEL_30;
    }

    break;
  }

  if (v106)
  {
LABEL_125:
    v57 = &v49[-v120];
    *v108 = *(&v121 + 1) - v120;
    v108[1] = v57;
    if (v106 >= 2)
    {
      v58 = v118;
      v59 = (*(&v119 + 1) + 16);
      v60 = v108 + 2;
      for (k = 1; k != v106; ++k)
      {
        if (k <= *(v58 + 112))
        {
          *v60 = *v59;
        }

        else
        {
          *v60 = -1;
          v60[1] = -1;
        }

        ++v59;
        v60 += 2;
      }
    }
  }

LABEL_131:
  if (*(&v119 + 1))
  {
    free(*(&v119 + 1));
  }

  if (v122)
  {
    free(v122);
  }

  return 0;
}

char *sslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
LABEL_12:
    v25 = a1[12];
    if (a2 == a1[4])
    {
      v11 = 128;
    }

    else
    {
      v11 = *(a2 - 1);
    }

    v12 = *a1;
    v13 = sstep(*a1, v6, a5, 1 << v6, 132, 1 << v6);
    v14 = 0;
    v15 = a1;
    while (1)
    {
      if (a2 == v15[5])
      {
        v16 = 128;
      }

      else
      {
        v16 = *a2;
      }

      if (v11 == 128)
      {
        if (v15[1])
        {
          goto LABEL_22;
        }
      }

      else if (v11 != 10 || (*(v12 + 40) & 8) == 0)
      {
LABEL_22:
        v17 = 0;
        v18 = 0;
        v19 = 130;
        goto LABEL_25;
      }

      v18 = *(v12 + 76);
      v17 = 129;
      v19 = 131;
LABEL_25:
      if (v16 == 128)
      {
        if ((v15[1] & 2) != 0)
        {
          goto LABEL_28;
        }
      }

      else if (v16 != 10 || (*(v12 + 40) & 8) == 0)
      {
LABEL_28:
        v19 = v17;
        goto LABEL_31;
      }

      v18 += *(v12 + 80);
LABEL_31:
      if (v18 >= 1)
      {
        v20 = v18 + 1;
        do
        {
          v13 = sstep(v12, v6, a5, v13, v19, v13);
          --v20;
        }

        while (v20 > 1);
      }

      if (v19 == 129)
      {
        v15 = a1;
        if (v16 == 128)
        {
          v19 = 129;
        }

        else
        {
LABEL_44:
          if (v16 > 0x7Fu)
          {
            v22 = __maskrune(v16, 0x500uLL);
          }

          else
          {
            v22 = *(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x500;
          }

          if (v16 == 95 || v22 != 0)
          {
            v19 = 133;
          }
        }

        if (v11 == 128)
        {
          goto LABEL_59;
        }

        v21 = v11;
        goto LABEL_54;
      }

      v15 = a1;
      if (v11 == 128)
      {
        goto LABEL_59;
      }

      v21 = v11;
      if (v11 > 0x7Fu)
      {
        if (__maskrune(v11, 0x500uLL))
        {
          goto LABEL_54;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x500) != 0)
      {
        goto LABEL_54;
      }

      if (v11 != 95 && v16 != 128)
      {
        goto LABEL_44;
      }

LABEL_54:
      if (v21 > 0x7F)
      {
        if (__maskrune(v21, 0x500uLL))
        {
          goto LABEL_61;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x500) != 0)
      {
        goto LABEL_61;
      }

      if (v11 != 95)
      {
        goto LABEL_59;
      }

LABEL_61:
      if (v19 == 130)
      {
        goto LABEL_62;
      }

      if (v16 != 128)
      {
        if (v16 > 0x7Fu)
        {
          if (__maskrune(v16, 0x500uLL))
          {
            goto LABEL_59;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x500) != 0)
        {
          goto LABEL_59;
        }

        if (v16 != 95)
        {
LABEL_62:
          v19 = 134;
LABEL_63:
          v13 = sstep(*v15, v6, a5, v13, v19, v13);
          goto LABEL_64;
        }
      }

LABEL_59:
      if ((v19 - 133) <= 1)
      {
        goto LABEL_63;
      }

LABEL_64:
      if ((v13 & (1 << a5)) != 0)
      {
        v14 = a2;
      }

      if (a2 == a3 || v13 == v25)
      {
        return v14;
      }

      v12 = *v15;
      v13 = sstep(*v15, v6, a5, v13, v16, v25);
      ++a2;
      v11 = v16;
    }
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_10;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_12;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_10:
    if (a5 == ++v6)
    {
      v6 = a5;
      goto LABEL_12;
    }
  }
}

char *sdissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 > 9)
      {
        if (((v12 & 0xF8000000) - 0x8000000) >> 27 <= 0xC)
        {
          if (v18 == 10)
          {
            v34 = a1;
            v35 = v5;
            v36 = a3;
            while (1)
            {
              v22 = sslow(v34, v35, v36, v10, v15 + 1);
              if (sslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v36 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v34 = a1;
              v35 = v5;
            }

            if (!sslow(a1, v5, v22, v10 + 1, v15))
            {
              goto LABEL_55;
            }

            v33 = v10 + 1;
            v30 = a1;
            v31 = v5;
            v32 = v22;
            goto LABEL_43;
          }

          if (v18 == 12)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
          }

          goto LABEL_40;
        }

        if (v18 == 13)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
LABEL_40:
          v22 = v5;
          goto LABEL_55;
        }

        v23 = a3;
        if (v18 == 14)
        {
          do
          {
            v22 = sslow(a1, v5, v23, v10, v15 + 1);
            v24 = sslow(a1, v22, a3, v15 + 1, a5);
            v23 = v22 - 1;
          }

          while (v24 != a3);
          v15 = v10 + (*(*(*a1 + 8) + 8 * v10) & 0x7FFFFFFLL) - 1;
          v25 = v10 + 1;
          while (sslow(a1, v5, v22, v25, v15) != v22)
          {
            v26 = *(*a1 + 8);
            v27 = *(v26 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
            v28 = v27 + v15 + 1;
            v29 = v27 + v15;
            v25 = v15 + 2;
            if ((*(v26 + 8 * v28) & 0xF8000000) == 0x88000000)
            {
              v15 = v29;
            }

            else
            {
              v15 = v28;
            }
          }

          v30 = a1;
          v31 = v5;
          v32 = v22;
          v33 = v25;
LABEL_43:
          sdissect(v30, v31, v32, v33, v15);
          goto LABEL_55;
        }

        v22 = v5;
      }

      else
      {
        if (v18 - 4 >= 2 && v18 != 1)
        {
          if (v18 == 8)
          {
            v19 = a1;
            v20 = v5;
            v21 = a3;
            while (1)
            {
              v22 = sslow(v19, v20, v21, v10, v15 + 1);
              if (sslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v21 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v19 = a1;
              v20 = v5;
            }

            v37 = v5;
            do
            {
              v38 = v37;
              v37 = v5;
              v39 = sslow(a1, v5, v22, v10 + 1, v15);
              v5 = v39;
            }

            while (v39 && v39 != v37);
            if (v39)
            {
              v40 = v37;
            }

            else
            {
              v40 = v38;
            }

            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            sdissect(a1, v40, v41, v10 + 1, v15);
            goto LABEL_55;
          }

          goto LABEL_40;
        }

        v22 = v5 + 1;
      }

LABEL_55:
      v5 = v22;
      if (v7 >= a5)
      {
        return v22;
      }
    }
  }

  return a2;
}

uint64_t sbackref(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_82;
          }

          if (v18 == 14)
          {
            ++v14;
            v32 = *(v16 + 8 * v14);
            do
            {
              v14 += v32 & 0x7FFFFFF;
              v32 = *(v16 + 8 * v14);
            }

            while ((v32 & 0xF8000000) != 0x90000000);
            goto LABEL_82;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_82;
            case 0x11uLL:
              v35 = a1[4];
              if (a2 != v35 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v35)
                {
                  return 0;
                }

                v36 = *(a2 - 1);
                if (v36 < 0)
                {
                  v37 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v37 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500;
                }

                result = 0;
                if (v36 == 95 || v37)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v39 = *a2;
              if ((v39 & 0x8000000000000000) == 0)
              {
LABEL_73:
                v40 = *(MEMORY[0x277D85DE0] + 4 * v39 + 60) & 0x500;
LABEL_80:
                if (v39 != 95 && !v40)
                {
                  return 0;
                }

                goto LABEL_82;
              }

LABEL_79:
              v40 = __maskrune(v39, 0x500uLL);
              goto LABEL_80;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 != v21 || (a1[1] & 2) != 0)
              {
                if (a2 >= v21)
                {
                  return 0;
                }

                v22 = *a2;
                if (v22 == 10)
                {
                  if ((*(v15 + 40) & 8) != 0)
                  {
                    goto LABEL_77;
                  }

LABEL_67:
                  v38 = *(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500;
                }

                else
                {
                  if ((v22 & 0x80) == 0)
                  {
                    goto LABEL_67;
                  }

                  v38 = __maskrune(*a2, 0x500uLL);
                }

                result = 0;
                if (v22 == 95 || v38)
                {
                  return result;
                }
              }

LABEL_77:
              if (a2 <= a1[4])
              {
                return 0;
              }

              v39 = *(a2 - 1);
              if ((v39 & 0x8000000000000000) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_79;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v34 = *a2++;
          if (v34 != v17)
          {
            return 0;
          }

          goto LABEL_82;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5])
            {
              return 0;
            }

            v23 = *(a2 - 1);
LABEL_50:
            if (v23 != 10 || (*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_82:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v33 = a1[5];
            if (a2 != v33 || (a1[1] & 2) != 0)
            {
              if (a2 >= v33)
              {
                return 0;
              }

              v23 = *a2;
              goto LABEL_50;
            }

            goto LABEL_82;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_82;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_82;
        }
      }

      v12 = v14 + 1;
      v24 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v24 == 4)
      {
        result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v24 == 6)
          {
            v48 = 16 * (v17 & 0x7FFFFFF);
            v49 = a1[2];
            v50 = *(v49 + v48);
            *(v49 + v48) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v50;
            }
          }

          else if (v24 == 7)
          {
            v51 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v52 = *(v51 + 8);
            *(v51 + 8) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v52;
            }
          }

          else
          {
            result = 0;
            if (v24 == 8)
            {
              result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v42 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v43 = *(*a1 + 8);
                  if ((*(v43 + 8 * v42) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v44 = *(v43 + 8 * (v42 + 1)) & 0x7FFFFFFLL;
                  v45 = v44 + v42 + 1;
                  v46 = v44 + v42;
                  if ((*(v43 + 8 * v45) & 0xF8000000) == 0x88000000)
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  result = sbackref(a1, a2, a3, v42 + 2, a5, a6, a7);
                  v42 = v47;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v24)
        {
          if (v24 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
          }

          else
          {
            result = 0;
            if (v24 != 3)
            {
              return result;
            }

            v41 = a1[7];
            if (a2 != *(v41 + 8 * a6))
            {
              *(v41 + 8 * a6) = a2;
              result = sbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }
            }

            --a6;
          }

          if (v12 < a5)
          {
            goto LABEL_3;
          }

          break;
        }

        v26 = v17 & 0x7FFFFFF;
        v27 = (a1[2] + 16 * v26);
        v28 = v27[1];
        if (v28 == -1)
        {
          return 0;
        }

        v29 = *v27;
        v30 = v28 - v29;
        if (v28 == v29)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v30] || memcmp(a2, (a1[3] + v29), v30))
        {
          return 0;
        }

        do
        {
          v31 = *(v16 + 8 * v14++);
        }

        while (v31 != (v26 | 0x40000000));
        a2 += v30;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}