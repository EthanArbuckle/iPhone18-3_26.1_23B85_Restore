void llvm::TimerGroup::addTimer(llvm::TimerGroup *this, llvm::Timer *a2)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v4 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v7 = *(this + 6);
  v6 = (this + 48);
  v5 = v7;
  if (v7)
  {
    *(v5 + 144) = a2 + 152;
  }

  *(a2 + 18) = v6;
  *(a2 + 19) = v5;
  *v6 = a2;

  std::recursive_mutex::unlock(v4);
}

void llvm::Timer::~Timer(llvm::Timer *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    llvm::TimerGroup::removeTimer(v2, this);
  }

  if ((*(this + 127) & 0x80000000) == 0)
  {
    if ((*(this + 103) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 10));
    return;
  }

  operator delete(*(this + 13));
  if (*(this + 103) < 0)
  {
    goto LABEL_7;
  }
}

{
  v2 = *(this + 17);
  if (v2)
  {
    llvm::TimerGroup::removeTimer(v2, this);
  }

  if ((*(this + 127) & 0x80000000) == 0)
  {
    if ((*(this + 103) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 10));
    return;
  }

  operator delete(*(this + 13));
  if (*(this + 103) < 0)
  {
    goto LABEL_7;
  }
}

void llvm::TimerGroup::removeTimer(llvm::TimerGroup *this, llvm::Timer *a2)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v4 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  if (*(a2 + 129) == 1)
  {
    v6 = *(this + 8);
    if (v6 >= *(this + 9))
    {
      v5 = std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord const&,std::string,std::string>(this + 7, a2, a2 + 80, a2 + 104);
LABEL_12:
      *(this + 8) = v5;
      goto LABEL_13;
    }

    v7 = *a2;
    v8 = *(a2 + 1);
    *(v6 + 32) = *(a2 + 4);
    *v6 = v7;
    *(v6 + 16) = v8;
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 10), *(a2 + 11));
      if ((*(a2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *(a2 + 5);
      *(v6 + 56) = *(a2 + 12);
      *(v6 + 40) = v9;
      if ((*(a2 + 127) & 0x80000000) == 0)
      {
LABEL_7:
        v10 = *(a2 + 104);
        *(v6 + 80) = *(a2 + 15);
        *(v6 + 64) = v10;
LABEL_11:
        v5 = (v6 + 88);
        goto LABEL_12;
      }
    }

    std::string::__init_copy_ctor_external((v6 + 64), *(a2 + 13), *(a2 + 14));
    goto LABEL_11;
  }

LABEL_13:
  *(a2 + 17) = 0;
  v12 = *(a2 + 18);
  v11 = *(a2 + 19);
  *v12 = v11;
  if (v11)
  {
    *(v11 + 144) = v12;
  }

  if (!*(this + 6) && *(this + 7) != *(this + 8))
  {
    llvm::CreateInfoOutputFile(v5);
  }

  std::recursive_mutex::unlock(v4);
}

double llvm::TimeRecord::getCurrentTime@<D0>(llvm::TimeRecord *this@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v15 = 0;
  if (!this)
  {
    llvm::sys::Process::GetTimeUsage(&v15, &v14, &v13);
    v4 = getpid();
    v5 = proc_pid_rusage(v4, 4, buffer);
    v6 = v17;
    if (v5)
    {
      v6 = 0;
    }

    *(a2 + 32) = v6;
    if (atomic_load_explicit(qword_27F875518, memory_order_acquire))
    {
      if (*(qword_27F875518[0] + 128) == 1)
      {
LABEL_9:
        MallocUsage = llvm::sys::Process::GetMallocUsage(v5);
LABEL_17:
        *(a2 + 24) = MallocUsage;
        goto LABEL_18;
      }
    }

    else
    {
      if (*(qword_27F875518[0] + 128) == 1)
      {
        goto LABEL_9;
      }
    }

    MallocUsage = 0;
    goto LABEL_17;
  }

  if (!atomic_load_explicit(qword_27F875518, memory_order_acquire))
  {
    if (*(qword_27F875518[0] + 128) == 1)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  if (*(qword_27F875518[0] + 128) != 1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = llvm::sys::Process::GetMallocUsage(this);
LABEL_12:
  *(a2 + 24) = v3;
  v8 = getpid();
  v9 = proc_pid_rusage(v8, 4, buffer);
  v10 = v17;
  if (v9)
  {
    v10 = 0;
  }

  *(a2 + 32) = v10;
  llvm::sys::Process::GetTimeUsage(&v15, &v14, &v13);
LABEL_18:
  v11 = v14 / 1000000000.0;
  *a2 = v15 / 1000000000.0;
  *(a2 + 8) = v11;
  result = v13 / 1000000000.0;
  *(a2 + 16) = result;
  return result;
}

double llvm::Timer::startTimer(llvm::Timer *this)
{
  *(this + 64) = 257;
  if (!atomic_load_explicit(qword_27F875578, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875578, llvm::object_creator<llvm::SignpostEmitter>::call, llvm::object_deleter<llvm::SignpostEmitter>::call);
  }

  v2 = *(this + 103);
  if (v2 >= 0)
  {
    v3 = this + 80;
  }

  else
  {
    v3 = *(this + 10);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 103);
  }

  else
  {
    v4 = *(this + 11);
  }

  llvm::SignpostEmitter::startInterval(qword_27F875578[0], this, v3, v4);
  llvm::TimeRecord::getCurrentTime(1, v7);
  result = *v7;
  v6 = v7[1];
  *(this + 40) = v7[0];
  *(this + 56) = v6;
  *(this + 9) = v8;
  return result;
}

uint64_t llvm::Timer::stopTimer(llvm::Timer *this)
{
  *(this + 128) = 0;
  llvm::TimeRecord::getCurrentTime(0, &v9);
  v2 = v10 + *(this + 2);
  v3 = vaddq_s64(*(this + 24), v11);
  *this = vsubq_f64(vaddq_f64(v9, *this), *(this + 40));
  *(this + 2) = v2 - *(this + 7);
  *(this + 24) = vsubq_s64(v3, *(this + 4));
  if (!atomic_load_explicit(qword_27F875578, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875578, llvm::object_creator<llvm::SignpostEmitter>::call, llvm::object_deleter<llvm::SignpostEmitter>::call);
  }

  v4 = qword_27F875578[0];
  v5 = *(this + 103);
  if (v5 >= 0)
  {
    v6 = this + 80;
  }

  else
  {
    v6 = *(this + 10);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 103);
  }

  else
  {
    v7 = *(this + 11);
  }

  return llvm::SignpostEmitter::endInterval(v4, this, v6, v7);
}

double llvm::Timer::clear(llvm::Timer *this)
{
  *(this + 64) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return result;
}

double *llvm::TimeRecord::print(double *this, const llvm::TimeRecord *a2, llvm::raw_ostream *a3)
{
  v5 = this;
  v6 = *(a2 + 1);
  if (v6 == 0.0)
  {
LABEL_7:
    v8 = *(a2 + 2);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v6 >= 0.0000001)
  {
    v9 = this[1];
    v22 = &unk_28689D9A0;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v9;
    v25 = v9 * 100.0 / v6;
    this = llvm::raw_ostream::operator<<(a3, &v22);
    goto LABEL_7;
  }

  v7 = *(a3 + 4);
  if ((*(a3 + 3) - v7) > 0x11)
  {
    *(v7 + 16) = 8224;
    *v7 = *"        -----     ";
    *(a3 + 4) += 18;
    v8 = *(a2 + 2);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v8 = *(a2 + 2);
    if (v8 == 0.0)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (v8 >= 0.0000001)
  {
    v11 = *(v5 + 16);
    v22 = &unk_28689D9A0;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v11;
    v25 = v11 * 100.0 / v8;
    this = llvm::raw_ostream::operator<<(a3, &v22);
  }

  else
  {
    v10 = *(a3 + 4);
    if ((*(a3 + 3) - v10) > 0x11)
    {
      *(v10 + 16) = 8224;
      *v10 = *"        -----     ";
      *(a3 + 4) += 18;
    }

    else
    {
      this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    }
  }

LABEL_15:
  v12 = *(a2 + 1) + *(a2 + 2);
  if (v12 == 0.0)
  {
    goto LABEL_21;
  }

  if (v12 >= 0.0000001)
  {
    v15 = *(v5 + 8) + *(v5 + 16);
    v22 = &unk_28689D9A0;
    v23 = "  %7.4f (%5.1f%%)";
    v24 = v15;
    v25 = v15 * 100.0 / v12;
    this = llvm::raw_ostream::operator<<(a3, &v22);
LABEL_21:
    v14 = *a2;
    if (*a2 >= 0.0000001)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v13 = *(a3 + 4);
  if ((*(a3 + 3) - v13) > 0x11)
  {
    *(v13 + 16) = 8224;
    *v13 = *"        -----     ";
    *(a3 + 4) += 18;
    v14 = *a2;
    if (*a2 >= 0.0000001)
    {
      goto LABEL_29;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v14 = *a2;
    if (*a2 >= 0.0000001)
    {
LABEL_29:
      v18 = *v5;
      v19 = *v5 * 100.0;
      v22 = &unk_28689D9A0;
      v23 = "  %7.4f (%5.1f%%)";
      v24 = v18;
      v25 = v19 / v14;
      this = llvm::raw_ostream::operator<<(a3, &v22);
      v17 = *(a3 + 4);
      if (*(a3 + 3) - v17 <= 1uLL)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

LABEL_22:
  v16 = *(a3 + 4);
  if ((*(a3 + 3) - v16) > 0x11)
  {
    *(v16 + 16) = 8224;
    *v16 = *"        -----     ";
    *(a3 + 4) += 18;
    v17 = *(a3 + 4);
    if (*(a3 + 3) - v17 <= 1uLL)
    {
      goto LABEL_30;
    }
  }

  else
  {
    this = llvm::raw_ostream::write(a3, "        -----     ", 0x12uLL);
    v17 = *(a3 + 4);
    if (*(a3 + 3) - v17 <= 1uLL)
    {
LABEL_30:
      this = llvm::raw_ostream::write(a3, "  ", 2uLL);
      if (!*(a2 + 3))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

LABEL_26:
  *v17 = 8224;
  *(a3 + 4) += 2;
  if (*(a2 + 3))
  {
LABEL_31:
    v20 = *(v5 + 24);
    v22 = &unk_2868A1DE0;
    v23 = "%9lld  ";
    v24 = v20;
    this = llvm::raw_ostream::operator<<(a3, &v22);
  }

LABEL_32:
  if (*(a2 + 4))
  {
    v21 = *(v5 + 32);
    v22 = &unk_2868A1DE0;
    v23 = "%9lld  ";
    v24 = v21;
    return llvm::raw_ostream::operator<<(a3, &v22);
  }

  return this;
}

uint64_t *llvm::NamedRegionTimer::NamedRegionTimer(uint64_t *a1, unsigned int *a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned int *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a11 & 1) == 0)
  {
    *a1 = 0;
    return a1;
  }

  if (!atomic_load_explicit(qword_27F875590, memory_order_acquire))
  {
    v17 = qword_27F875590[0];
    if (atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
    {
      goto LABEL_4;
    }

LABEL_20:
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
    goto LABEL_4;
  }

  v17 = qword_27F875590[0];
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    goto LABEL_20;
  }

LABEL_4:
  v18 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v20 = llvm::StringMapImpl::hash(a6, a7, v19);
  v21 = llvm::StringMap<std::pair<llvm::TimerGroup *,llvm::StringMap<llvm::Timer,llvm::MallocAllocator>>,llvm::MallocAllocator>::try_emplace_with_hash<>(v17, a6, a7, v20);
  v23 = *v21;
  if (!*(*v21 + 8))
  {
    operator new();
  }

  v24 = llvm::StringMapImpl::hash(a2, a3, v22);
  v25 = llvm::StringMap<llvm::Timer,llvm::MallocAllocator>::try_emplace_with_hash<>((v23 + 16), a2, a3, v24);
  v26 = *v25;
  v27 = *v25 + 8;
  if (!*(*v25 + 144))
  {
    llvm::Timer::init(*v25 + 8, a2, a3, a4, a5, *(v23 + 8));
  }

  std::recursive_mutex::unlock(v18);
  *a1 = v27;
  *(v26 + 136) = 257;
  if (!atomic_load_explicit(qword_27F875578, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875578, llvm::object_creator<llvm::SignpostEmitter>::call, llvm::object_deleter<llvm::SignpostEmitter>::call);
  }

  v30 = *(v26 + 88);
  v29 = v26 + 88;
  v28 = v30;
  v31 = *(v29 + 23);
  if (v31 >= 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = v28;
  }

  if (v31 >= 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = *(v29 + 8);
  }

  llvm::SignpostEmitter::startInterval(qword_27F875578[0], v27, v32, v33);
  llvm::TimeRecord::getCurrentTime(1, v37);
  v34 = v37[1];
  *(v29 - 40) = v37[0];
  *(v29 - 24) = v34;
  *(v29 - 8) = v38;
  return a1;
}

{
  return llvm::NamedRegionTimer::NamedRegionTimer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t llvm::TimerGroup::TimerGroup(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_18;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(a1 + 23) = a3;
  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *(a1 + a3) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_18:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 > 0x16)
  {
    operator new();
  }

  v10 = (a1 + 24);
  *(a1 + 47) = a5;
  if (a5)
  {
    memmove(v10, a4, a5);
  }

  *(v10 + a5) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v11 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v12 = _MergedGlobals_15;
  if (_MergedGlobals_15)
  {
    *(_MergedGlobals_15 + 80) = a1 + 88;
  }

  *(a1 + 80) = &_MergedGlobals_15;
  *(a1 + 88) = v12;
  _MergedGlobals_15 = a1;
  std::recursive_mutex::unlock(v11);
  return a1;
}

uint64_t llvm::TimerGroup::TimerGroup(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v8 = llvm::TimerGroup::TimerGroup(a1, a2, a3, a4, a5);
  v9 = (v8 + 56);
  if (0x2E8BA2E8BA2E8BA3 * ((*(v8 + 72) - *(v8 + 56)) >> 3) < *(a6 + 12))
  {
    operator new();
  }

  v10 = *a6;
  v11 = *(a6 + 8);
  if (!v11)
  {
    v12 = *a6;
    v17 = &v10[v11];
    if (v10 == v17)
    {
      return a1;
    }

    goto LABEL_16;
  }

  v12 = *a6;
  if (*v10)
  {
    v13 = *v10 == -8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    do
    {
      v15 = v12[1];
      ++v12;
      v14 = v15;
      if (v15)
      {
        v16 = v14 == -8;
      }

      else
      {
        v16 = 1;
      }
    }

    while (v16);
  }

  v17 = &v10[v11];
  if (v12 != v17)
  {
LABEL_16:
    v18 = *v12;
    do
    {
      v19 = *v18;
      if (*v18 > 0x7FFFFFFFFFFFFFF7uLL)
      {
        goto LABEL_47;
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v30) = *v18;
      if (v19)
      {
        memmove(&__dst, (v18 + 48), v19);
      }

      *(&__dst + v19) = 0;
      v20 = *v18;
      if (*v18 > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_47:
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v28) = *v18;
      if (v20)
      {
        memmove(__p, (v18 + 48), v20);
        *(__p + v20) = 0;
        v21 = *(a1 + 64);
        if (v21 >= *(a1 + 72))
        {
LABEL_33:
          *(a1 + 64) = std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord const&,std::string,std::string>(v9, v18 + 8, &__dst, __p);
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(__p[0]) = 0;
        v21 = *(a1 + 64);
        if (v21 >= *(a1 + 72))
        {
          goto LABEL_33;
        }
      }

      v22 = *(v18 + 24);
      v23 = *(v18 + 8);
      *(v21 + 32) = *(v18 + 40);
      *v21 = v23;
      *(v21 + 16) = v22;
      if (SHIBYTE(v30) < 0)
      {
        std::string::__init_copy_ctor_external((v21 + 40), __dst, *(&__dst + 1));
        if (SHIBYTE(v28) < 0)
        {
LABEL_44:
          std::string::__init_copy_ctor_external((v21 + 64), __p[0], __p[1]);
          *(a1 + 64) = v21 + 88;
          if ((SHIBYTE(v28) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

LABEL_34:
          operator delete(__p[0]);
          goto LABEL_35;
        }
      }

      else
      {
        *(v21 + 40) = __dst;
        *(v21 + 56) = v30;
        if (SHIBYTE(v28) < 0)
        {
          goto LABEL_44;
        }
      }

      *(v21 + 64) = *__p;
      *(v21 + 80) = v28;
      *(a1 + 64) = v21 + 88;
      if (SHIBYTE(v28) < 0)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__dst);
      }

      do
      {
        v24 = v12[1];
        ++v12;
        v18 = v24;
        if (v24)
        {
          v25 = v18 == -8;
        }

        else
        {
          v25 = 1;
        }
      }

      while (v25);
    }

    while (v12 != v17);
  }

  return a1;
}

{
  v8 = llvm::TimerGroup::TimerGroup(a1, a2, a3, a4, a5);
  v9 = (v8 + 56);
  if (0x2E8BA2E8BA2E8BA3 * ((*(v8 + 72) - *(v8 + 56)) >> 3) < *(a6 + 12))
  {
    operator new();
  }

  v10 = *a6;
  v11 = *(a6 + 8);
  if (!v11)
  {
    v12 = *a6;
    v17 = &v10[v11];
    if (v10 == v17)
    {
      return a1;
    }

    goto LABEL_16;
  }

  v12 = *a6;
  if (*v10)
  {
    v13 = *v10 == -8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    do
    {
      v15 = v12[1];
      ++v12;
      v14 = v15;
      if (v15)
      {
        v16 = v14 == -8;
      }

      else
      {
        v16 = 1;
      }
    }

    while (v16);
  }

  v17 = &v10[v11];
  if (v12 != v17)
  {
LABEL_16:
    v18 = *v12;
    do
    {
      v19 = *v18;
      if (*v18 > 0x7FFFFFFFFFFFFFF7uLL)
      {
        goto LABEL_47;
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v30) = *v18;
      if (v19)
      {
        memmove(&__dst, (v18 + 48), v19);
      }

      *(&__dst + v19) = 0;
      v20 = *v18;
      if (*v18 > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_47:
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v28) = *v18;
      if (v20)
      {
        memmove(__p, (v18 + 48), v20);
        *(__p + v20) = 0;
        v21 = *(a1 + 64);
        if (v21 >= *(a1 + 72))
        {
LABEL_33:
          *(a1 + 64) = std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord const&,std::string,std::string>(v9, v18 + 8, &__dst, __p);
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(__p[0]) = 0;
        v21 = *(a1 + 64);
        if (v21 >= *(a1 + 72))
        {
          goto LABEL_33;
        }
      }

      v22 = *(v18 + 24);
      v23 = *(v18 + 8);
      *(v21 + 32) = *(v18 + 40);
      *v21 = v23;
      *(v21 + 16) = v22;
      if (SHIBYTE(v30) < 0)
      {
        std::string::__init_copy_ctor_external((v21 + 40), __dst, *(&__dst + 1));
        if (SHIBYTE(v28) < 0)
        {
LABEL_44:
          std::string::__init_copy_ctor_external((v21 + 64), __p[0], __p[1]);
          *(a1 + 64) = v21 + 88;
          if ((SHIBYTE(v28) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

LABEL_34:
          operator delete(__p[0]);
          goto LABEL_35;
        }
      }

      else
      {
        *(v21 + 40) = __dst;
        *(v21 + 56) = v30;
        if (SHIBYTE(v28) < 0)
        {
          goto LABEL_44;
        }
      }

      *(v21 + 64) = *__p;
      *(v21 + 80) = v28;
      *(a1 + 64) = v21 + 88;
      if (SHIBYTE(v28) < 0)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__dst);
      }

      do
      {
        v24 = v12[1];
        ++v12;
        v18 = v24;
        if (v24)
        {
          v25 = v18 == -8;
        }

        else
        {
          v25 = 1;
        }
      }

      while (v25);
    }

    while (v12 != v17);
  }

  return a1;
}

void llvm::TimerGroup::~TimerGroup(llvm::TimerGroup *this)
{
  for (i = *(this + 6); i; i = *(this + 6))
  {
    llvm::TimerGroup::removeTimer(this, i);
  }

  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v3 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v5 = *(this + 10);
  v4 = *(this + 11);
  *v5 = v4;
  if (v4)
  {
    *(v4 + 80) = v5;
  }

  std::recursive_mutex::unlock(v3);
  v6 = *(this + 7);
  if (v6)
  {
    v7 = *(this + 8);
    v8 = *(this + 7);
    if (v7 == v6)
    {
LABEL_17:
      *(this + 8) = v6;
      operator delete(v8);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 24));
        if (*(v7 - 25) < 0)
        {
LABEL_15:
          operator delete(*(v7 - 48));
        }
      }

      else if (*(v7 - 25) < 0)
      {
        goto LABEL_15;
      }

      v7 -= 88;
      if (v7 == v6)
      {
        v8 = *(this + 7);
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_22;
  }
}

void llvm::TimerGroup::PrintQueuedTimers(llvm::TimerGroup *this, llvm::raw_ostream *a2)
{
  if (!atomic_load_explicit(&qword_27F875548, memory_order_acquire))
  {
  }

  if (*(qword_27F875548 + 128) == 1)
  {
    v4 = *(this + 7);
    v5 = *(this + 8);
    v6 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3));
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(v4, v5, &v20, v7, 1);
  }

  v8 = 0uLL;
  v21 = 0u;
  v22 = 0u;
  v10 = *(this + 7);
  v9 = *(this + 8);
  if (v10 == v9)
  {
    v20 = 0.0;
    v15 = *(a2 + 4);
    if ((*(a2 + 3) - v15) <= 2)
    {
LABEL_18:
      llvm::raw_ostream::write(a2, "===", 3uLL);
LABEL_19:
      operator new();
    }

LABEL_12:
    *(v15 + 2) = 61;
    *v15 = 15677;
    *(a2 + 4) += 3;
    goto LABEL_19;
  }

  v11 = v9 - v10 - 88;
  if (v11 > 0x57)
  {
    v16 = v11 / 0x58 + 1;
    v14 = v10 + 88 * (v16 & 0x7FFFFFFFFFFFFFELL);
    v17 = v10 + 88;
    v12 = 0uLL;
    v13 = 0.0;
    v18 = v16 & 0x7FFFFFFFFFFFFFELL;
    v19 = 0uLL;
    do
    {
      v19 = vaddq_s64(v19, *(v17 - 64));
      v8 = vaddq_s64(v8, *(v17 + 24));
      v12 = vaddq_f64(vaddq_f64(v12, *(v17 - 80)), *(v17 + 8));
      v13 = v13 + *(v17 - 88) + *v17;
      v17 += 176;
      v18 -= 2;
    }

    while (v18);
    v8 = vaddq_s64(v8, v19);
    if (v16 == (v16 & 0x7FFFFFFFFFFFFFELL))
    {
LABEL_17:
      v21 = v12;
      v22 = v8;
      v20 = v13;
      v15 = *(a2 + 4);
      if ((*(a2 + 3) - v15) <= 2)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0uLL;
    v13 = 0.0;
    v14 = *(this + 7);
  }

  do
  {
    v13 = *v14 + v13;
    v12 = vaddq_f64(*(v14 + 8), v12);
    v8 = vaddq_s64(v8, *(v14 + 24));
    v14 += 88;
  }

  while (v14 != v9);
  goto LABEL_17;
}

void llvm::TimerGroup::prepareToPrintList(llvm::TimerGroup *this, int a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    while (*(v2 + 129) != 1)
    {
LABEL_10:
      v2 = *(v2 + 152);
      if (!v2)
      {
        return;
      }
    }

    v9 = *(v2 + 128);
    if (v9 == 1)
    {
      llvm::Timer::stopTimer(v2);
    }

    v10 = *(this + 8);
    if (v10 >= *(this + 9))
    {
      *(this + 8) = std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord const&,std::string,std::string>(this + 7, v2, v2 + 80, v2 + 104);
      if (!a2)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v11 = *v2;
    v12 = *(v2 + 16);
    *(v10 + 32) = *(v2 + 32);
    *v10 = v11;
    *(v10 + 16) = v12;
    if (*(v2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external((v10 + 40), *(v2 + 80), *(v2 + 88));
      if ((*(v2 + 127) & 0x80000000) == 0)
      {
LABEL_17:
        v14 = *(v2 + 104);
        *(v10 + 80) = *(v2 + 120);
        *(v10 + 64) = v14;
        *(this + 8) = v10 + 88;
        if (!a2)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = *(v2 + 80);
      *(v10 + 56) = *(v2 + 96);
      *(v10 + 40) = v13;
      if ((*(v2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    std::string::__init_copy_ctor_external((v10 + 64), *(v2 + 104), *(v2 + 112));
    *(this + 8) = v10 + 88;
    if (!a2)
    {
LABEL_21:
      if (v9)
      {
        *(v2 + 128) = 257;
        if (!atomic_load_explicit(qword_27F875578, memory_order_acquire))
        {
          llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875578, llvm::object_creator<llvm::SignpostEmitter>::call, llvm::object_deleter<llvm::SignpostEmitter>::call);
        }

        v5 = *(v2 + 103);
        if (v5 >= 0)
        {
          v6 = v2 + 80;
        }

        else
        {
          v6 = *(v2 + 80);
        }

        if (v5 >= 0)
        {
          v7 = *(v2 + 103);
        }

        else
        {
          v7 = *(v2 + 88);
        }

        llvm::SignpostEmitter::startInterval(qword_27F875578[0], v2, v6, v7);
        llvm::TimeRecord::getCurrentTime(1, v15);
        v8 = v15[1];
        *(v2 + 40) = v15[0];
        *(v2 + 56) = v8;
        *(v2 + 72) = v16;
      }

      goto LABEL_10;
    }

LABEL_20:
    *(v2 + 128) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    goto LABEL_21;
  }
}

void llvm::TimerGroup::print(llvm::TimerGroup *this, llvm::raw_ostream *a2, int a3)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v6 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  llvm::TimerGroup::prepareToPrintList(this, a3);
  std::recursive_mutex::unlock(v6);
  if (*(this + 7) != *(this + 8))
  {

    llvm::TimerGroup::PrintQueuedTimers(this, a2);
  }
}

void llvm::TimerGroup::clear(llvm::TimerGroup *this)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  for (i = *(this + 6); i; i = *(i + 152))
  {
    *(i + 128) = 0;
    *i = 0uLL;
    *(i + 16) = 0uLL;
    *(i + 32) = 0uLL;
    *(i + 48) = 0uLL;
    *(i + 64) = 0uLL;
  }

  std::recursive_mutex::unlock(v2);
}

void llvm::TimerGroup::printAll(llvm::TimerGroup *this, llvm::raw_ostream *a2)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v3 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v4 = _MergedGlobals_15;
  if (_MergedGlobals_15)
  {
    do
    {
      if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
      }

      v5 = qword_27F8755A8;
      std::recursive_mutex::lock(qword_27F8755A8);
      llvm::TimerGroup::prepareToPrintList(v4, 0);
      std::recursive_mutex::unlock(v5);
      if (*(v4 + 7) != *(v4 + 8))
      {
        llvm::TimerGroup::PrintQueuedTimers(v4, this);
      }

      v4 = *(v4 + 11);
    }

    while (v4);
  }

  std::recursive_mutex::unlock(v3);
}

void llvm::TimerGroup::clearAll(llvm::TimerGroup *this)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v1 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  for (i = _MergedGlobals_15; i; i = *(i + 88))
  {
    if (atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
    {
      v3 = qword_27F8755A8;
      std::recursive_mutex::lock(qword_27F8755A8);
      v4 = *(i + 48);
      j = 0uLL;
      if (v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
      v3 = qword_27F8755A8;
      std::recursive_mutex::lock(qword_27F8755A8);
      v4 = *(i + 48);
      for (j = 0uLL; v4; v4 = *(v4 + 152))
      {
LABEL_10:
        *(v4 + 128) = 0;
        *v4 = j;
        *(v4 + 16) = j;
        *(v4 + 32) = j;
        *(v4 + 48) = j;
        *(v4 + 64) = j;
      }
    }

    std::recursive_mutex::unlock(v3);
  }

  std::recursive_mutex::unlock(v1);
}

void *llvm::TimerGroup::printJSONValue(uint64_t a1, llvm::raw_ostream *this, uint64_t a3, const char *a4, double a5)
{
  v9 = this;
  v10 = *(this + 4);
  if (*(this + 3) - v10 > 6uLL)
  {
    *(v10 + 3) = 778399081;
    *v10 = 1769218569;
    *(this + 4) += 7;
  }

  else
  {
    v9 = llvm::raw_ostream::write(this, "\ttime.", 7uLL);
  }

  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  v14 = llvm::raw_ostream::write(v9, v12, v13);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    v14 = llvm::raw_ostream::write(v14, 46);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 46;
  }

  v18 = *(a3 + 40);
  v17 = a3 + 40;
  v16 = v18;
  v19 = *(v17 + 23);
  if (v19 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  if (v19 >= 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = *(v17 + 8);
  }

  v22 = llvm::raw_ostream::write(v14, v20, v21);
  if (a4)
  {
    v23 = v22;
    v24 = strlen(a4);
    v22 = v23;
    if (v24 <= v23[3] - v23[4])
    {
      if (v24)
      {
        memcpy(v23[4], a4, v24);
        v22 = v23;
        v23[4] += v24;
      }
    }

    else
    {
      v22 = llvm::raw_ostream::write(v23, a4, v24);
    }
  }

  v25 = v22[4];
  if ((v22[3] - v25) > 2)
  {
    *(v25 + 2) = 32;
    *v25 = 14882;
    v22[4] += 3;
  }

  else
  {
    v22 = llvm::raw_ostream::write(v22, ": ", 3uLL);
  }

  v27[0] = &unk_2868A0DE8;
  v27[1] = "%.*e";
  v28 = 16;
  v29 = a5;
  return llvm::raw_ostream::operator<<(v22, v27);
}

const char *llvm::TimerGroup::printJSONValues(llvm::TimerGroup *this, llvm::raw_ostream *a2, const char *a3)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v6 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  llvm::TimerGroup::prepareToPrintList(this, 0);
  v8 = *(this + 7);
  v7 = *(this + 8);
  if (v8 != v7)
  {
    v22 = v6;
    if (a3)
    {
      v9 = strlen(a3);
      v10 = *(a2 + 4);
      if (v9 <= *(a2 + 3) - v10)
      {
        if (v9)
        {
          memcpy(v10, a3, v9);
          *(a2 + 4) += v9;
        }
      }

      else
      {
        llvm::raw_ostream::write(a2, a3, v9);
      }
    }

    llvm::TimerGroup::printJSONValue(this, a2, v8, ".wall", *v8);
    v11 = *(a2 + 4);
    if (*(a2 + 3) - v11 >= 2uLL)
    {
      *v11 = 2604;
      *(a2 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a2, ",\n", 2uLL);
    }

    llvm::TimerGroup::printJSONValue(this, a2, v8, ".user", *(v8 + 8));
    v12 = *(a2 + 4);
    if (*(a2 + 3) - v12 >= 2uLL)
    {
      *v12 = 2604;
      *(a2 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(a2, ",\n", 2uLL);
    }

    llvm::TimerGroup::printJSONValue(this, a2, v8, ".sys", *(v8 + 16));
    if (*(v8 + 24))
    {
      v13 = *(a2 + 4);
      if (*(a2 + 3) - v13 >= 2uLL)
      {
        *v13 = 2604;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, ",\n", 2uLL);
      }

      llvm::TimerGroup::printJSONValue(this, a2, v8, ".mem", *(v8 + 24));
    }

    if (*(v8 + 32))
    {
      v14 = *(a2 + 4);
      if (*(a2 + 3) - v14 >= 2uLL)
      {
        *v14 = 2604;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, ",\n", 2uLL);
      }

      llvm::TimerGroup::printJSONValue(this, a2, v8, ".instr", *(v8 + 32));
    }

    for (i = v8 + 88; i != v7; i += 88)
    {
      v16 = *(a2 + 4);
      if (*(a2 + 3) - v16 > 1uLL)
      {
        *v16 = 2604;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, ",\n", 2uLL);
      }

      llvm::TimerGroup::printJSONValue(this, a2, i, ".wall", *i);
      v17 = *(a2 + 4);
      if (*(a2 + 3) - v17 > 1uLL)
      {
        *v17 = 2604;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, ",\n", 2uLL);
      }

      llvm::TimerGroup::printJSONValue(this, a2, i, ".user", *(i + 8));
      v18 = *(a2 + 4);
      if (*(a2 + 3) - v18 > 1uLL)
      {
        *v18 = 2604;
        *(a2 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a2, ",\n", 2uLL);
      }

      llvm::TimerGroup::printJSONValue(this, a2, i, ".sys", *(i + 16));
      if (*(i + 24))
      {
        v19 = *(a2 + 4);
        if (*(a2 + 3) - v19 > 1uLL)
        {
          *v19 = 2604;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ",\n", 2uLL);
        }

        llvm::TimerGroup::printJSONValue(this, a2, i, ".mem", *(i + 24));
      }

      if (*(i + 32))
      {
        v20 = *(a2 + 4);
        if (*(a2 + 3) - v20 > 1uLL)
        {
          *v20 = 2604;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ",\n", 2uLL);
        }

        llvm::TimerGroup::printJSONValue(this, a2, i, ".instr", *(i + 32));
      }
    }

    v8 = *(this + 7);
    v7 = *(this + 8);
    a3 = ",\n";
    v6 = v22;
  }

  while (v7 != v8)
  {
    if (*(v7 - 1) < 0)
    {
      operator delete(*(v7 - 24));
      if ((*(v7 - 25) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    else if ((*(v7 - 25) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    operator delete(*(v7 - 48));
LABEL_48:
    v7 -= 88;
  }

  *(this + 8) = v8;
  std::recursive_mutex::unlock(v6);
  return a3;
}

llvm::raw_ostream *llvm::TimerGroup::printAllJSONValues(llvm::TimerGroup *this, llvm::raw_ostream *a2, const char *a3)
{
  if (!atomic_load_explicit(&qword_27F8755A8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27F8755A8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v5 = qword_27F8755A8;
  std::recursive_mutex::lock(qword_27F8755A8);
  v6 = _MergedGlobals_15;
  if (_MergedGlobals_15)
  {
    do
    {
      a2 = llvm::TimerGroup::printJSONValues(v6, this, a2);
      v6 = *(v6 + 11);
    }

    while (v6);
  }

  std::recursive_mutex::unlock(v5);
  return a2;
}

void llvm::TimerGroup::constructForStatistics(llvm::TimerGroup *this)
{
  if (atomic_load_explicit(qword_27F875560, memory_order_acquire))
  {
    if (atomic_load_explicit(qword_27F875590, memory_order_acquire))
    {
      return;
    }

LABEL_5:
    return;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875560, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
  if (!atomic_load_explicit(qword_27F875590, memory_order_acquire))
  {
    goto LABEL_5;
  }
}

uint64_t llvm::object_deleter<std::string>::call(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

llvm::TimerGroup *llvm::object_deleter<llvm::TimerGroup>::call(llvm::TimerGroup *result)
{
  if (result)
  {
    llvm::TimerGroup::~TimerGroup(result);

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t *llvm::StringMap<std::pair<llvm::TimerGroup *,llvm::StringMap<llvm::Timer,llvm::MallocAllocator>>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0;
  buffer[4] = 0xA800000000;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t *llvm::StringMap<llvm::Timer,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 169, 8uLL);
    v11 = buffer + 168;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 169, 8uLL);
    v11 = buffer + 168;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *(buffer + 8) = 0u;
  *(buffer + 24) = 0u;
  *(buffer + 40) = 0u;
  *(buffer + 56) = 0u;
  *(buffer + 72) = 0u;
  *(buffer + 88) = 0u;
  *(buffer + 104) = 0u;
  *(buffer + 120) = 0u;
  *(buffer + 136) = 0u;
  *(buffer + 152) = 0u;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [13],llvm::cl::desc,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _WORD *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  *(a1 + 10) = (32 * (*a4 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::object_deleter<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(uint64_t a1, char *a2, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28689F108;
  *a1 = &unk_2868A1CB0;
  *(a1 + 176) = &unk_28689F5B8;
  *(a1 + 184) = &unk_2868A1D60;
  *(a1 + 208) = a1 + 184;
  llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(a1, a2, a3, a4, a5, a6);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

std::string *llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [17],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::OptionHidden,llvm::cl::LocationClass<std::string>>(uint64_t a1, char *__s, _OWORD *a3, _OWORD *a4, _WORD *a5, const std::string **a6)
{
  v12 = strlen(__s);
  v13 = llvm::cl::Option::setArgStr(a1, __s, v12);
  *(a1 + 48) = *a3;
  *(a1 + 32) = *a4;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  if (*(a1 + 128))
  {
    v17 = "cl::location(x) specified more than once!";
    v18 = 259;
    v14 = llvm::errs(v13);
    return llvm::cl::Option::error(a1, &v17, 0, 0, v14);
  }

  else
  {
    v16 = *a6;
    *(a1 + 128) = *a6;
    *(a1 + 168) = 1;

    return std::string::operator=((a1 + 144), v16);
  }
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_11;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_16;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    __dst.__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  __p = __dst;
  std::string::operator=(*(a1 + 128), &__p);
  *(a1 + 12) = a2;
  v9 = *(a1 + 208);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_16:
    std::string::__throw_length_error[abi:nn200100]();
  }

  (*(*v9 + 48))(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_2868A1CB0;
  v2 = a1 + 184;
  v3 = *(a1 + 208);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 136) = &unk_28685B750;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 136) = &unk_28685B750;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
LABEL_5:
      *a1 = &unk_28689F010;
      v4 = *(a1 + 96);
      if (v4 == *(a1 + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  operator delete(*(a1 + 144));
  *a1 = &unk_28689F010;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
LABEL_6:
    free(v4);
  }

LABEL_7:
  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::~opt(uint64_t a1)
{
  *a1 = &unk_2868A1CB0;
  v2 = a1 + 184;
  v3 = *(a1 + 208);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 136) = &unk_28685B750;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 136) = &unk_28685B750;
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
LABEL_5:
      *a1 = &unk_28689F010;
      v4 = *(a1 + 96);
      if (v4 == *(a1 + 88))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  operator delete(*(a1 + 144));
  *a1 = &unk_28689F010;
  v4 = *(a1 + 96);
  if (v4 == *(a1 + 88))
  {
LABEL_7:
    v5 = *(a1 + 64);
    if (v5 != (a1 + 80))
    {
      free(v5);
    }

    JUMPOUT(0x259C63180);
  }

LABEL_6:
  free(v4);
  goto LABEL_7;
}

void *llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::printOptionValue(uint64_t a1, int a2, char a3)
{
  v5 = *(a1 + 128);
  if ((a3 & 1) != 0 || *(a1 + 168) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 167);
  if (v6 >= 0)
  {
    v7 = *(a1 + 167);
  }

  else
  {
    v7 = *(a1 + 152);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if (v8 < 0)
  {
    v8 = v5[1];
  }

  if (v7 != v8 || (v6 >= 0 ? (v10 = (a1 + 144)) : (v10 = *(a1 + 144)), v9 >= 0 ? (v11 = v5) : (v11 = *v5), result = memcmp(v10, v11, v7), result))
  {
LABEL_16:
    v13 = *(v5 + 23);
    if (v13 >= 0)
    {
      v14 = v5;
    }

    else
    {
      v14 = *v5;
    }

    if (v13 >= 0)
    {
      v15 = *(v5 + 23);
    }

    else
    {
      v15 = v5[1];
    }

    return llvm::cl::parser<std::string>::printOptionDiff((a1 + 176), a1, v14, v15, a1 + 136, a2);
  }

  return result;
}

void llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v3 = (a1 + 144);
    v4 = *(a1 + 128);

    std::string::operator=(v4, v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=(*(a1 + 128), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t std::__function::__func<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573A04DELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573A04DELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573A04DELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573A04DELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [12],llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4, _WORD *a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = *a4;
  *(a1 + 128) = **a4;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v13;
  *(a1 + 10) = (32 * (*a5 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

llvm::SignpostEmitter *llvm::object_deleter<llvm::SignpostEmitter>::call(llvm::SignpostEmitter *result)
{
  if (result)
  {
    llvm::SignpostEmitter::~SignpostEmitter(result);

    JUMPOUT(0x259C63180);
  }

  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::TimerGroup::PrintRecord>,llvm::TimerGroup::PrintRecord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 64);
    v7 = (a2 + 40);
    while (1)
    {
      v9 = *(v7 - 40);
      v10 = *(v7 - 24);
      v6[-2].__r_.__value_.__r.__words[2] = *(v7 - 1);
      *&v6[-3].__r_.__value_.__r.__words[1] = v9;
      *&v6[-2].__r_.__value_.__l.__data_ = v10;
      v11 = v6 - 1;
      if ((*(v7 + 23) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external(v11, *v7, *(v7 + 1));
      if (*(v7 + 47) < 0)
      {
LABEL_3:
        std::string::__init_copy_ctor_external(v6, *(v7 + 3), *(v7 + 4));
        v8 = v7 - 40;
        v6 = (v6 + 88);
        v7 = (v7 + 88);
        if (v8 + 88 == a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
LABEL_8:
        v13 = *(v7 + 24);
        v6->__r_.__value_.__r.__words[2] = *(v7 + 5);
        *&v6->__r_.__value_.__l.__data_ = v13;
        v6 = (v6 + 88);
        v14 = v7 - 40;
        v7 = (v7 + 88);
        if (v14 + 88 == a3)
        {
          while (1)
          {
LABEL_11:
            if (v5 == a3)
            {
              return;
            }

            if (*(v5 + 87) < 0)
            {
              operator delete(*(v5 + 64));
              if ((*(v5 + 63) & 0x80000000) == 0)
              {
                goto LABEL_10;
              }
            }

            else if ((*(v5 + 63) & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            operator delete(*(v5 + 40));
LABEL_10:
            v5 += 88;
          }
        }
      }
    }

    v12 = *v7;
    v6[-1].__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&v11->__r_.__value_.__l.__data_ = v12;
    if (*(v7 + 47) < 0)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }
}

uint64_t std::vector<llvm::TimerGroup::PrintRecord>::__emplace_back_slow_path<llvm::TimeRecord const&,std::string,std::string>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 > 0x2E8BA2E8BA2E8BALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v7 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = 8 * ((a1[1] - *a1) >> 3);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 40), *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v8 + 40) = *a3;
    *(v8 + 56) = *(a3 + 16);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      *(v8 + 64) = *a4;
      *(v8 + 80) = *(a4 + 16);
      goto LABEL_15;
    }
  }

  std::string::__init_copy_ctor_external((v8 + 64), *a4, *(a4 + 8));
LABEL_15:
  v10 = a1[1];
  v11 = v8 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::TimerGroup::PrintRecord>,llvm::TimerGroup::PrintRecord*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v8 + 88;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 88;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 11;
  v58 = (a2 - 264);
  v59 = a2 - 11;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v52 = *(a2 - 11);
      v45 = (a2 - 88);
      if (v52 < *a1)
      {
LABEL_80:
        v48 = a1;
LABEL_81:
        v51 = v45;
LABEL_82:

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v48, v51);
      }

      return;
    }

LABEL_10:
    if (v12 <= 2111)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v53 = (v13 - 2) >> 1;
        v54 = v53 + 1;
        v55 = a1 + 11 * v53;
        do
        {
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, a3, 0x2E8BA2E8BA2E8BA3 * (v12 >> 3), v55);
          v55 -= 11;
          --v54;
        }

        while (v54);
        v56 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
        do
        {
          std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,llvm::TimerGroup::PrintRecord *>(a1, a2, a3, v56);
          a2 = (a2 - 88);
        }

        while (v56-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = (a1 + 88 * (v13 >> 1));
    v16 = *v8;
    if (v12 < 0x2C01)
    {
      v20 = *a1;
      if (*a1 >= *v15)
      {
        if (v16 < v20)
        {
          std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, (a2 - 88));
          if (*a1 < *v15)
          {
            v21 = v15;
            v22 = a1;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = v15;
        if (v16 < v20)
        {
          goto LABEL_22;
        }

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v15, a1);
        if (*v8 < *a1)
        {
          v21 = a1;
LABEL_22:
          v22 = (a2 - 88);
LABEL_35:
          std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v17 = *v15;
    if (*v15 < *a1)
    {
      v18 = a1;
      if (v16 >= v17)
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, v15);
        if (*v8 >= *v15)
        {
          goto LABEL_27;
        }

        v18 = v15;
      }

      v19 = (a2 - 88);
      goto LABEL_26;
    }

    if (v16 < v17)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v15, (a2 - 88));
      if (*v15 < *a1)
      {
        v18 = a1;
        v19 = v15;
LABEL_26:
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v18, v19);
      }
    }

LABEL_27:
    v23 = a1 + 11 * v14;
    v25 = *(v23 - 11);
    v24 = (v23 - 11);
    v26 = v25;
    v27 = *v59;
    if (v25 < *(a1 + 11))
    {
      v28 = (a1 + 88);
      if (v27 >= v26)
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v28, v24);
        if (*v59 >= *v24)
        {
          goto LABEL_42;
        }

        v28 = v24;
      }

      v29 = a2 - 11;
      goto LABEL_41;
    }

    if (v27 < v26)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v24, v59);
      if (*v24 < *(a1 + 11))
      {
        v28 = (a1 + 88);
        v29 = v24;
LABEL_41:
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v28, v29);
      }
    }

LABEL_42:
    v30 = a1 + 11 * v14;
    v32 = v30[11];
    v31 = (v30 + 11);
    v33 = v32;
    v34 = *v58;
    if (v32 < *(a1 + 22))
    {
      v35 = a1 + 11;
      if (v34 >= v33)
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v35, v31);
        if (*v58 >= *v31)
        {
          goto LABEL_51;
        }

        v35 = v31;
      }

      v36 = (a2 - 264);
      goto LABEL_50;
    }

    if (v34 < v33)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v31, v58);
      if (*v31 < *(a1 + 22))
      {
        v35 = a1 + 11;
        v36 = v31;
LABEL_50:
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v35, v36);
      }
    }

LABEL_51:
    v37 = *v15;
    v38 = *v31;
    if (*v15 < *v24)
    {
      v39 = v24;
      if (v38 >= v37)
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v24, v15);
        if (*v31 >= *v15)
        {
          goto LABEL_60;
        }

        v39 = v15;
      }

      v40 = v31;
      goto LABEL_59;
    }

    if (v38 < v37)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v15, v31);
      if (*v15 < *v24)
      {
        v39 = v24;
        v40 = v15;
LABEL_59:
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v39, v40);
      }
    }

LABEL_60:
    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, v15);
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(a1 - 11) >= *a1)
    {
      v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimerGroup::PrintRecord *,std::__less<void,void> &>(a1, a2);
      goto LABEL_67;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimerGroup::PrintRecord *,std::__less<void,void> &>(a1, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_65;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, v41);
    v9 = v41 + 88;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>((v41 + 88), a2))
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,false>(a1, v41, a3, -v11, a5 & 1);
      v9 = v41 + 88;
LABEL_67:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), a1 + 11, (a2 - 88));
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), a1 + 11, (a1 + 264));
      v50 = *(a2 - 11);
      v49 = (a2 - 88);
      if (v50 < *(a1 + 33))
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((a1 + 264), v49);
        if (*(a1 + 33) < *(a1 + 22))
        {
          std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1 + 11, (a1 + 264));
          if (*(a1 + 22) < *(a1 + 11))
          {
            std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((a1 + 88), a1 + 11);
            if (*(a1 + 11) < *a1)
            {
              v51 = (a1 + 88);
              v48 = a1;
              goto LABEL_82;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v44 = *(a1 + 11);
  v46 = *(a2 - 11);
  v45 = (a2 - 88);
  v47 = v46;
  if (v44 >= *a1)
  {
    if (v47 < v44)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((a1 + 88), v45);
      if (*(a1 + 11) < *a1)
      {
        v48 = a1;
        v51 = (a1 + 88);
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (v47 < v44)
    {
      goto LABEL_80;
    }

    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, (a1 + 88));
    if (*v45 < *(a1 + 11))
    {
      v48 = (a1 + 88);
      goto LABEL_81;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a2, a3);
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
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a3, a4);
    if (*a3 < *a2)
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a2, a3);
      if (*a2 < *v7)
      {

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v7, a2);
      }
    }
  }
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v19 = v2;
    v20 = v3;
    v6 = a1 + 88;
    if (a1 + 88 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        if (*(v8 + 88) >= *v8)
        {
          goto LABEL_4;
        }

        v14 = *v6;
        v15 = *(v6 + 16);
        v16 = *(v6 + 32);
        if (*(v8 + 151) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, *(v8 + 128), *(v8 + 136));
          if (*(v8 + 175) < 0)
          {
LABEL_10:
            std::string::__init_copy_ctor_external(&__p, *(v8 + 152), *(v8 + 160));
            goto LABEL_11;
          }
        }

        else
        {
          v17 = *(v8 + 128);
          if (*(v8 + 175) < 0)
          {
            goto LABEL_10;
          }
        }

        __p = *(v8 + 152);
LABEL_11:
        v10 = v7;
        while (1)
        {
          v11 = a1 + v10;
          v12 = *(a1 + v10 + 16);
          *(v11 + 88) = *(a1 + v10);
          *(v11 + 104) = v12;
          *(v11 + 120) = *(a1 + v10 + 32);
          std::string::operator=((a1 + v10 + 128), (a1 + v10 + 40));
          std::string::operator=((v11 + 152), (v11 + 64));
          if (!v10)
          {
            break;
          }

          v10 -= 88;
          if (*&v14 >= *(v11 - 88))
          {
            v13 = a1 + v10 + 88;
            goto LABEL_16;
          }
        }

        v13 = a1;
LABEL_16:
        *v13 = v14;
        *(v13 + 16) = v15;
        *(v13 + 32) = v16;
        std::string::operator=((v11 + 40), &v17);
        std::string::operator=((v11 + 64), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_20:
            operator delete(v17.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_20;
        }

LABEL_4:
        v6 = v9 + 88;
        v7 += 88;
        v8 = v9;
      }

      while (v9 + 88 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(__int128 *a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v17 = v2;
    v18 = v3;
    v5 = a1;
    v6 = (a1 + 88);
    if ((a1 + 88) != a2)
    {
      v7 = (a1 + 152);
      do
      {
        v8 = v6;
        if (*(v5 + 11) >= *v5)
        {
          goto LABEL_4;
        }

        v12 = *v6;
        v13 = v6[1];
        v14 = *(v6 + 4);
        if (*(v5 + 151) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, *(v5 + 16), *(v5 + 17));
          if (*(v5 + 175) < 0)
          {
LABEL_10:
            std::string::__init_copy_ctor_external(&__p, *(v5 + 19), *(v5 + 20));
            goto LABEL_11;
          }
        }

        else
        {
          v15 = *(v5 + 8);
          if (*(v5 + 175) < 0)
          {
            goto LABEL_10;
          }
        }

        __p = *(v5 + 152);
LABEL_11:
        v9 = v7;
        do
        {
          v10 = v9;
          v11 = *&v9[-6].__r_.__value_.__r.__words[1];
          *&v9[-3].__r_.__value_.__r.__words[1] = *&v9[-7].__r_.__value_.__r.__words[2];
          *&v9[-2].__r_.__value_.__l.__data_ = v11;
          v9[-2].__r_.__value_.__r.__words[2] = v9[-5].__r_.__value_.__r.__words[0];
          std::string::operator=(v9 - 1, (v9 - 112));
          v9 = (v9 - 88);
          std::string::operator=(v10, v9);
        }

        while (*&v12 < *&v10[-10].__r_.__value_.__l.__data_);
        *&v9[-3].__r_.__value_.__r.__words[1] = v12;
        *&v9[-2].__r_.__value_.__l.__data_ = v13;
        v9[-2].__r_.__value_.__r.__words[2] = v14;
        std::string::operator=(v9 - 1, &v15);
        std::string::operator=(v9, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_17:
            operator delete(v15.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

LABEL_4:
        v6 = (v8 + 88);
        v7 = (v7 + 88);
        v5 = v8;
      }

      while ((v8 + 88) != a2);
    }
  }
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimerGroup::PrintRecord *,std::__less<void,void> &>(unint64_t a1, __int128 *a2)
{
  v15 = *a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a1 + 40), *(a1 + 48));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 64);
      v4 = *&v15;
      if (*&v15 < *(a2 - 11))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
  v4 = *&v15;
  if (*&v15 < *(a2 - 11))
  {
LABEL_4:
    v5 = a1;
    do
    {
      v6 = *(v5 + 88);
      v5 += 88;
    }

    while (v4 >= v6);
    goto LABEL_12;
  }

LABEL_9:
  v7 = a1 + 88;
  do
  {
    v5 = v7;
    if (v7 >= a2)
    {
      break;
    }

    v7 += 88;
  }

  while (v4 >= *v5);
LABEL_12:
  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v4 < v8);
  }

  while (v5 < a2)
  {
    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v5, a2);
    do
    {
      v9 = *(v5 + 88);
      v5 += 88;
    }

    while (*&v15 >= v9);
    do
    {
      v10 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (*&v15 < v10);
  }

  v11 = (v5 - 88);
  if (v5 - 88 != a1)
  {
    v12 = *v11;
    v13 = *(v5 - 72);
    *(a1 + 32) = *(v5 - 56);
    *a1 = v12;
    *(a1 + 16) = v13;
    std::string::operator=((a1 + 40), (v5 - 48));
    std::string::operator=((a1 + 64), (v5 - 24));
  }

  *(v5 - 56) = v17;
  *v11 = v15;
  *(v5 - 72) = v16;
  std::string::operator=((v5 - 48), &v18);
  std::string::operator=((v5 - 24), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v5;
    }

LABEL_25:
    operator delete(v18.__r_.__value_.__l.__data_);
    return v5;
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

  return v5;
}

unint64_t std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,llvm::TimerGroup::PrintRecord *,std::__less<void,void> &>(__int128 *a1, __int128 *a2)
{
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 4);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a1 + 5), *(a1 + 6));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 9));
    goto LABEL_6;
  }

  v20 = *(a1 + 40);
  if (*(a1 + 87) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = *(a1 + 4);
LABEL_6:
  v4 = 0;
  do
  {
    v5 = *(a1 + v4 + 88);
    v4 += 88;
  }

  while (v5 < *&v17);
  v6 = a1 + v4;
  if (v4 == 88)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v8 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v8 >= *&v17);
  }

  else
  {
    do
    {
      v7 = *(a2 - 11);
      a2 = (a2 - 88);
    }

    while (v7 >= *&v17);
  }

  v9 = a1 + v4;
  if (v6 < a2)
  {
    v10 = a2;
    do
    {
      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v9, v10);
      do
      {
        v11 = *(v9 + 88);
        v9 += 88;
      }

      while (v11 < *&v17);
      do
      {
        v12 = *(v10 - 11);
        v10 = (v10 - 88);
      }

      while (v12 >= *&v17);
    }

    while (v9 < v10);
  }

  v13 = (v9 - 88);
  if ((v9 - 88) != a1)
  {
    v14 = *v13;
    v15 = *(v9 - 72);
    *(a1 + 4) = *(v9 - 56);
    *a1 = v14;
    a1[1] = v15;
    std::string::operator=((a1 + 40), (v9 - 48));
    std::string::operator=((a1 + 4), (v9 - 24));
  }

  *(v9 - 56) = v19;
  *v13 = v17;
  *(v9 - 72) = v18;
  std::string::operator=((v9 - 48), &v20);
  std::string::operator=((v9 - 24), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v9 - 88;
    }

LABEL_25:
    operator delete(v20.__r_.__value_.__l.__data_);
    return v9 - 88;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

  return v9 - 88;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = *(a1 + 11);
        v5 = (a2 - 88);
        v10 = *(a2 - 11);
        if (v9 >= *a1)
        {
          if (v10 >= v9)
          {
            return 1;
          }

          std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((a1 + 88), v5);
          if (*(v3 + 11) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v8 = (v3 + 88);
          goto LABEL_17;
        }

        if (v10 >= v9)
        {
          std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, (a1 + 88));
          if (*v5 >= *(v3 + 11))
          {
            return 1;
          }

          a1 = (v3 + 88);
        }

LABEL_16:
        v8 = v5;
LABEL_17:
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, v8);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), a1 + 11, (a2 - 88));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *,0>(a1, (a1 + 88), a1 + 11, (a1 + 264));
        v7 = *(a2 - 11);
        v6 = (a2 - 88);
        if (v7 >= *(v3 + 33))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((v3 + 264), v6);
        if (*(v3 + 33) >= *(v3 + 22))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(v3 + 11, (v3 + 264));
        if (*(v3 + 22) >= *(v3 + 11))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((v3 + 88), v3 + 11);
        if (*(v3 + 11) >= *v3)
        {
          return 1;
        }

        v8 = (v3 + 88);
        a1 = v3;
        goto LABEL_17;
    }

LABEL_18:
    v11 = (a1 + 11);
    v12 = *(a1 + 22);
    v13 = *(a1 + 11);
    if (v13 >= *a1)
    {
      if (v12 >= v13)
      {
        goto LABEL_31;
      }

      std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>((a1 + 88), a1 + 11);
      if (*(v3 + 11) >= *v3)
      {
        goto LABEL_31;
      }

      a1 = v3;
      v14 = (v3 + 88);
    }

    else
    {
      if (v12 >= v13)
      {
        std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, (a1 + 88));
        if (*(v3 + 22) >= *(v3 + 11))
        {
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
            if (*v15 >= *v11)
            {
              goto LABEL_35;
            }

            v24 = *v15;
            v25 = v15[1];
            v26 = *(v15 + 4);
            if (*(v15 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v27, *(v15 + 5), *(v15 + 6));
              if (*(v15 + 87) < 0)
              {
LABEL_41:
                std::string::__init_copy_ctor_external(&__p, *(v15 + 8), *(v15 + 9));
                goto LABEL_42;
              }
            }

            else
            {
              v27 = *(v15 + 40);
              if (*(v15 + 87) < 0)
              {
                goto LABEL_41;
              }
            }

            __p = *(v15 + 4);
LABEL_42:
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
              std::string::operator=((v19 + 328), v19 + 10);
              if (v18 == -176)
              {
                break;
              }

              v18 -= 88;
              if (*&v24 >= *(v19 + 11))
              {
                v22 = v3 + v18 + 264;
                goto LABEL_47;
              }
            }

            v22 = v3;
LABEL_47:
            *v22 = v24;
            *(v22 + 16) = v25;
            *(v22 + 32) = v26;
            std::string::operator=(v19 + 9, &v27);
            std::string::operator=(v19 + 10, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_34:
              if (++v17 == 8)
              {
                return (v15 + 88) == a2;
              }

              goto LABEL_35;
            }

            operator delete(v27.__r_.__value_.__l.__data_);
            if (++v17 == 8)
            {
              return (v15 + 88) == a2;
            }

LABEL_35:
            v11 = v15;
            v16 += 88;
            v15 = (v15 + 88);
            if (v15 == a2)
            {
              return 1;
            }
          }
        }

        a1 = (v3 + 88);
      }

      v14 = v3 + 11;
    }

    std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(a1, v14);
    goto LABEL_31;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = (a2 - 88);
      if (*(a2 - 11) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

  return 1;
}

void std::swap[abi:nn200100]<llvm::TimerGroup::PrintRecord>(__int128 *a1, __int128 *a2)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 5), *(a1 + 6));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 4);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 9));
LABEL_6:
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  a1[1] = v5;
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 4), (a2 + 4));
  *a2 = v6;
  a2[1] = v7;
  *(a2 + 4) = v8;
  std::string::operator=((a2 + 40), &v9);
  std::string::operator=((a2 + 4), &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v9.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x2E8BA2E8BA2E8BA3 * ((a4 - a1) >> 3))
    {
      v11 = (0x5D1745D1745D1746 * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 88 * v11);
      if (0x5D1745D1745D1746 * ((a4 - a1) >> 3) + 2 < a3 && *v12 < *(v12 + 11))
      {
        v12 = (v12 + 88);
        v11 = 0x5D1745D1745D1746 * ((a4 - a1) >> 3) + 2;
      }

      if (*v12 >= *a4)
      {
        v18 = *a4;
        v19 = *(a4 + 1);
        v20 = *(a4 + 4);
        if (*(a4 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v21, *(a4 + 5), *(a4 + 6));
          if ((*(v7 + 87) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v21 = *(a4 + 5);
          if ((*(a4 + 87) & 0x80000000) == 0)
          {
LABEL_9:
            __p = *(v7 + 8);
            goto LABEL_14;
          }
        }

        std::string::__init_copy_ctor_external(&__p, *(v7 + 8), *(v7 + 9));
        do
        {
LABEL_14:
          v13 = v12;
          v14 = *v12;
          v15 = v12[1];
          v7[4] = *(v12 + 4);
          *v7 = v14;
          *(v7 + 1) = v15;
          std::string::operator=((v7 + 5), (v12 + 40));
          std::string::operator=((v7 + 8), (v12 + 4));
          if (v9 < v11)
          {
            break;
          }

          v16 = 2 * v11;
          v11 = (2 * v11) | 1;
          v12 = (a1 + 88 * v11);
          v17 = v16 + 2;
          if (v17 < a3 && *v12 < *(v12 + 11))
          {
            v12 = (v12 + 88);
            v11 = v17;
          }

          v7 = v13;
        }

        while (*v12 >= *&v18);
        *(v13 + 4) = v20;
        *v13 = v18;
        v13[1] = v19;
        std::string::operator=((v13 + 40), &v21);
        std::string::operator=((v13 + 4), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,llvm::TimerGroup::PrintRecord *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = *a1;
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *(a1 + 40), *(a1 + 48));
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = *(a1 + 40);
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
LABEL_4:
        __p = *(a1 + 64);
LABEL_7:
        v9 = 0;
        v10 = v4 >> 1;
        v11 = a1;
        do
        {
          v14 = v11;
          v15 = v11 + 88 * v9;
          v11 = v15 + 88;
          v16 = 2 * v9;
          v9 = (2 * v9) | 1;
          v17 = v16 + 2;
          if (v17 < a4)
          {
            v19 = *(v15 + 176);
            v18 = v15 + 176;
            if (*(v18 - 88) < v19)
            {
              v11 = v18;
              v9 = v17;
            }
          }

          v12 = *v11;
          v13 = *(v11 + 16);
          *(v14 + 32) = *(v11 + 32);
          *v14 = v12;
          *(v14 + 16) = v13;
          std::string::operator=((v14 + 40), (v11 + 40));
          std::string::operator=((v14 + 64), (v11 + 64));
        }

        while (v9 <= v10);
        v20 = (a2 - 88);
        if (v11 == a2 - 88)
        {
          *(v11 + 32) = v27;
          *v11 = v25;
          *(v11 + 16) = v26;
          std::string::operator=((v11 + 40), &v28);
          std::string::operator=((v11 + 64), &__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_15:
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            return;
          }
        }

        else
        {
          v21 = *v20;
          v22 = *(a2 - 72);
          *(v11 + 32) = *(a2 - 56);
          *v11 = v21;
          *(v11 + 16) = v22;
          v23 = (a2 - 48);
          std::string::operator=((v11 + 40), (a2 - 48));
          v24 = (a2 - 24);
          std::string::operator=((v11 + 64), v24);
          *v20 = v25;
          v20[1] = v26;
          *(v20 + 4) = v27;
          std::string::operator=(v23, &v28);
          std::string::operator=(v24, &__p);
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(a1, v11 + 88, a3, 0x2E8BA2E8BA2E8BA3 * ((v11 + 88 - a1) >> 3));
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_15;
      }
    }

    std::string::__init_copy_ctor_external(&__p, *(a1 + 64), *(a1 + 72));
    goto LABEL_7;
  }
}

void std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,llvm::TimerGroup::PrintRecord *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v19 = v4;
  v20 = v5;
  v7 = (a4 - 2) >> 1;
  v8 = (a1 + 88 * v7);
  v9 = (a2 - 88);
  if (*v8 >= *(a2 - 88))
  {
    return;
  }

  v14 = *v9;
  v15 = *(a2 - 72);
  v16 = *(a2 - 56);
  if (*(a2 - 25) < 0)
  {
    v10 = a2;
    std::string::__init_copy_ctor_external(&v17, *(a2 - 48), *(a2 - 40));
    a2 = v10;
    if ((*(v10 - 1) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = *(a2 - 48);
    if ((*(a2 - 1) & 0x80000000) == 0)
    {
LABEL_5:
      __p = *(a2 - 24);
      goto LABEL_8;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a2 - 24), *(a2 - 16));
  do
  {
LABEL_8:
    v11 = v8;
    v12 = *v8;
    v13 = v8[1];
    *(v9 + 4) = *(v8 + 4);
    *v9 = v12;
    v9[1] = v13;
    std::string::operator=((v9 + 40), (v8 + 40));
    std::string::operator=((v9 + 4), (v8 + 4));
    if (!v7)
    {
      break;
    }

    v7 = (v7 - 1) >> 1;
    v8 = (a1 + 88 * v7);
    v9 = v11;
  }

  while (*v8 < *&v14);
  *v11 = v14;
  v11[1] = v15;
  *(v11 + 4) = v16;
  std::string::operator=((v11 + 40), &v17);
  std::string::operator=((v11 + 4), &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }
}

uint64_t llvm::object_deleter<anonymous namespace::Name2PairMap>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = *(result + 8);
    if (v3)
    {
      v4 = *result;
      if (*v2)
      {
        v5 = *v2 == -8;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        do
        {
          v7 = v4[1];
          ++v4;
          v6 = v7;
          if (v7)
          {
            v8 = v6 == -8;
          }

          else
          {
            v8 = 1;
          }
        }

        while (v8);
      }

      v9 = &v2[v3];
      if (v4 == v9)
      {
LABEL_24:
        if (*(v1 + 12))
        {
          v14 = *(v1 + 8);
          if (v14)
          {
            v15 = 0;
            do
            {
              v16 = *(*v1 + v15);
              if (v16 != -8 && v16 != 0)
              {
                v18 = *v16;
                llvm::StringMap<llvm::Timer,llvm::MallocAllocator>::~StringMap(v16 + 16);
                llvm::deallocate_buffer(v16, (v18 + 41));
              }

              v15 += 8;
            }

            while (8 * v14 != v15);
          }
        }

        free(*v1);

        JUMPOUT(0x259C63180);
      }
    }

    else
    {
      v4 = *result;
      v9 = &v2[v3];
      if (v2 == v9)
      {
        goto LABEL_24;
      }
    }

    v10 = *v4;
    do
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        llvm::TimerGroup::~TimerGroup(v11);
        MEMORY[0x259C63180]();
      }

      do
      {
        v12 = v4[1];
        ++v4;
        v10 = v12;
        if (v12)
        {
          v13 = v10 == -8;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (v4 != v9);
    goto LABEL_24;
  }

  return result;
}

uint64_t llvm::StringMap<llvm::Timer,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          break;
        }

        v3 += 8;
        if (8 * v2 == v3)
        {
          goto LABEL_17;
        }
      }

      v6 = *v4;
      v7 = v4[18];
      if (v7)
      {
        llvm::TimerGroup::removeTimer(v7, (v4 + 1));
      }

      if (*(v4 + 135) < 0)
      {
        operator delete(v4[14]);
        if ((*(v4 + 111) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((*(v4 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      operator delete(v4[11]);
LABEL_4:
      llvm::deallocate_buffer(v4, (v6 + 169));
    }
  }

LABEL_17:
  free(*a1);
  return a1;
}

_BYTE *llvm::CleanupInstaller::CleanupInstaller(_BYTE *a1, _BYTE *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  a1[23] = a3;
  if (!a3)
  {
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_9;
  }

  memmove(a1, a2, a3);
  a1[a3] = 0;
  a1[24] = 0;
  if (a3 != 1 || *a2 != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(a2, a3);
  }

  return a1;
}

{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  a1[23] = a3;
  if (!a3)
  {
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_9;
  }

  memmove(a1, a2, a3);
  a1[a3] = 0;
  a1[24] = 0;
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
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5 == 1)
  {
    v6 = *this;
    if ((v2 & 0x80u) == 0)
    {
      v6 = this;
    }

    if (*v6 == 45)
    {
      if ((v2 & 0x80) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(*this);
      return;
    }
  }

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
  if ((*(this + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

{
  v2 = *(this + 23);
  v3 = v2;
  v4 = *(this + 1);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(this + 23);
  }

  else
  {
    v5 = *(this + 1);
  }

  if (v5 == 1)
  {
    v6 = *this;
    if ((v2 & 0x80u) == 0)
    {
      v6 = this;
    }

    if (*v6 == 45)
    {
      if ((v2 & 0x80) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(*this);
      return;
    }
  }

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
  if ((*(this + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

_BYTE *llvm::ToolOutputFile::ToolOutputFile(_BYTE *__dst, _BYTE *__src, size_t __len, uint64_t a4, int a5)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (!__len)
  {
    *__dst = 0;
    __dst[24] = 0;
    goto LABEL_9;
  }

  memmove(__dst, __src, __len);
  __dst[__len] = 0;
  __dst[24] = 0;
  if (__len != 1 || *__src != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(__src, __len);
  }

  __dst[32] = 0;
  v10 = (__dst + 32);
  __dst[128] = 0;
  if (*__src == 45)
  {
    *(__dst + 17) = llvm::outs(v10);
    v11 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v11;
  }

  else
  {
    v12 = llvm::raw_fd_ostream::raw_fd_ostream(v10, __src, 1, a4, a5);
    __dst[128] = 1;
    *(__dst + 17) = v12;
    if (*a4)
    {
      __dst[24] = 1;
    }
  }

  return __dst;
}

_BYTE *llvm::ToolOutputFile::ToolOutputFile(_BYTE *a1, _BYTE *a2, size_t a3, uint64_t a4)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  a1[23] = a3;
  if (!a3)
  {
    *a1 = 0;
    a1[24] = 0;
    goto LABEL_9;
  }

  memmove(a1, a2, a3);
  a1[a3] = 0;
  a1[24] = 0;
  if (a3 != 1 || *a2 != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(a2, a3);
  }

  a1[32] = 0;
  a1[128] = 0;
  v8 = llvm::raw_fd_ostream::raw_fd_ostream(a1 + 32, a4, 1, 0, 0);
  a1[128] = 1;
  *(a1 + 17) = v8;
  return a1;
}

void llvm::Twine::str(llvm::formatv_object_base **this@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      LODWORD(v14) = 0;
      v17 = 0;
      v18 = 1;
      v15 = 0;
      v16 = 0;
      *(&v14 + 1) = 0;
      v13 = &unk_2868A3EF8;
      v19 = a2;
      llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
      llvm::raw_ostream::operator<<(&v13, v6);
      if (v16 != *(&v14 + 1))
      {
        llvm::raw_ostream::flush_nonempty(&v13);
      }

      llvm::raw_ostream::~raw_ostream(&v13);
      return;
    }
  }

  else if (v3 == 4 && *(this + 33) == 1)
  {
    v4 = *this;
    if (*(*this + 23) < 0)
    {
      v11 = *v4;
      v12 = *(v4 + 1);

      std::string::__init_copy_ctor_external(a2, v11, v12);
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 2);
      *a2 = v5;
    }

    return;
  }

  v13 = &v15;
  v14 = xmmword_25736B790;
  v7 = llvm::Twine::toStringRef(this, &v13);
  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v10 = v13;
    if (v13 == &v15)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, v7, v8);
  }

  *(a2 + v9) = 0;
  v10 = v13;
  if (v13 != &v15)
  {
LABEL_20:
    free(v10);
  }
}

const char *llvm::Twine::toStringRef(unsigned __int8 *a1, uint64_t a2)
{
  if (a1[33] != 1)
  {
    goto LABEL_12;
  }

  v3 = a1[32];
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      return *a1;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v8 = *a1;
    if (*a1)
    {
      strlen(v8);
      return v8;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_12:
    v10 = 2;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2868A3F88;
    v16 = a2;
    v6 = llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    v7 = llvm::Twine::printOneChild(v6, &v9, *a1, *(a1 + 1), a1[32]);
    llvm::Twine::printOneChild(v7, &v9, *(a1 + 2), *(a1 + 3), a1[33]);
    llvm::raw_ostream::~raw_ostream(&v9);
    return *a2;
  }

  if (*(*a1 + 23) >= 0)
  {
    return *a1;
  }

  else
  {
    return **a1;
  }
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v6 = 2;
  v10 = 0;
  v11 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2868A3F88;
  v12 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v5, 0, 0, 0);
  v4 = llvm::Twine::printOneChild(v3, &v5, *a1, *(a1 + 8), *(a1 + 32));
  llvm::Twine::printOneChild(v4, &v5, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  llvm::raw_ostream::~raw_ostream(&v5);
}

llvm::raw_ostream *llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream *a2)
{
  v4 = llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  return llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

uint64_t llvm::Twine::toNullTerminatedStringRef(uint64_t a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v11 = 2;
    v15 = 0;
    v16 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v10 = &unk_2868A3F88;
    v17 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
    v8 = llvm::Twine::printOneChild(v7, &v10, *a1, *(a1 + 8), *(a1 + 32));
    llvm::Twine::printOneChild(v8, &v10, *(a1 + 16), *(a1 + 24), *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v10);
    v9 = a2[1];
    if ((v9 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v9) = 0;
    return *a2;
  }

  if (v4 == 6)
  {
    return *a1;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream *a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = llvm::Twine::printOneChild(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 9)
  {
    if (v7 > 12)
    {
      switch(v7)
      {
        case 13:
          v19 = *a3;

          return llvm::raw_ostream::operator<<(a2, v19);
        case 14:
          v20 = *a3;

          return llvm::raw_ostream::operator<<(a2, v20);
        case 15:
          v16 = *a3;

          return llvm::raw_ostream::write_hex(a2, v16);
      }

      return result;
    }

    if (v7 == 10)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      if (v7 == 11)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      v14 = *a3;
      v15 = a2;
    }

    return llvm::raw_ostream::operator<<(v15, v14);
  }

  if (v7 > 6)
  {
    if (v7 == 7)
    {

      return llvm::raw_ostream::operator<<(a2, a3);
    }

    if (v7 == 8)
    {
      v22 = *(a2 + 4);
      if (v22 >= *(a2 + 3))
      {

        return llvm::raw_ostream::write(a2, a3);
      }

      else
      {
        *(a2 + 4) = v22 + 1;
        *v22 = a3;
      }

      return result;
    }

    v17 = a3;
    v18 = a2;

    return llvm::raw_ostream::operator<<(v18, v17);
  }

  if ((v7 - 5) < 2)
  {
    result = *(a2 + 4);
    if (a4 > *(a2 + 3) - result)
    {
      v13 = a2;
      v11 = a3;
      v12 = a4;

      return llvm::raw_ostream::write(v13, v11, v12);
    }

    if (a4)
    {
      v23 = a3;
      v24 = a4;
      result = memcpy(result, v23, a4);
      *(a2 + 4) += v24;
    }
  }

  else if (v7 == 3)
  {
    if (a3)
    {
      v21 = strlen(a3);
      result = *(a2 + 4);
      if (v21 > *(a2 + 3) - result)
      {
        v13 = a2;
        v11 = a3;
        v12 = v21;

        return llvm::raw_ostream::write(v13, v11, v12);
      }

      if (v21)
      {
        result = memcpy(result, a3, v21);
        *(a2 + 4) += v21;
      }
    }
  }

  else if (v7 == 4)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = a2;

    return llvm::raw_ostream::write(v13, v11, v12);
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChildRepr(uint64_t a1, llvm::raw_ostream *a2, char *a3, size_t a4, int a5)
{
  result = a2;
  switch(a5)
  {
    case 0:
      v7 = *(a2 + 4);
      if (*(a2 + 3) - v7 <= 3uLL)
      {
        v8 = "null";
        v9 = 4;

        return llvm::raw_ostream::write(result, v8, v9);
      }

      *v7 = 1819047278;
      *(a2 + 4) += 4;
      return result;
    case 1:
      v21 = *(a2 + 4);
      if ((*(a2 + 3) - v21) <= 4)
      {
        v8 = "empty";
        v9 = 5;

        return llvm::raw_ostream::write(result, v8, v9);
      }

      *(v21 + 4) = 121;
      *v21 = 1953525093;
      *(a2 + 4) += 5;
      return result;
    case 2:
      v15 = *(a2 + 4);
      if ((*(a2 + 3) - v15) > 4)
      {
        *(v15 + 4) = 58;
        *v15 = 1701867378;
        v33 = *(a2 + 3);
        v17 = (*(a2 + 4) + 5);
        *(a2 + 4) = v17;
        if ((v33 - v17) > 6)
        {
          goto LABEL_18;
        }
      }

      else
      {
        llvm::raw_ostream::write(a2, "rope:", 5uLL);
        result = a2;
        v17 = *(a2 + 4);
        if (*(a2 + 3) - v17 > 6uLL)
        {
LABEL_18:
          *(v17 + 3) = 543518313;
          *v17 = 1769428008;
          *(result + 4) += 7;
          goto LABEL_54;
        }
      }

      llvm::raw_ostream::write(a2, "(Twine ", 7uLL);
      result = a2;
LABEL_54:
      v34 = llvm::Twine::printOneChildRepr(result, result, *a3, *(a3 + 1), a3[32]);
      v35 = *(a2 + 4);
      if (*(a2 + 3) == v35)
      {
        v45 = llvm::raw_ostream::write(a2, " ", 1uLL);
        result = llvm::Twine::printOneChildRepr(v45, a2, *(a3 + 2), *(a3 + 3), a3[33]);
        v36 = *(a2 + 4);
        if (*(a2 + 3) != v36)
        {
          goto LABEL_56;
        }
      }

      else
      {
        *v35 = 32;
        ++*(a2 + 4);
        result = llvm::Twine::printOneChildRepr(v34, a2, *(a3 + 2), *(a3 + 3), a3[33]);
        v36 = *(a2 + 4);
        if (*(a2 + 3) != v36)
        {
LABEL_56:
          *v36 = 41;
          ++*(a2 + 4);
          return result;
        }
      }

      v8 = ")";
      result = a2;
      v9 = 1;

      return llvm::raw_ostream::write(result, v8, v9);
    case 3:
      v19 = *(a2 + 4);
      if ((*(a2 + 3) - v19) > 8)
      {
        *(v19 + 8) = 34;
        *v19 = *"cstring:";
        *(a2 + 4) += 9;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "cstring:", 9uLL);
      }

      if (a3)
      {
        v37 = result;
        v38 = strlen(a3);
        result = v37;
        if (v38 <= *(v37 + 3) - *(v37 + 4))
        {
          if (v38)
          {
            memcpy(*(v37 + 4), a3, v38);
            result = v37;
            *(v37 + 4) += v38;
          }
        }

        else
        {
          result = llvm::raw_ostream::write(v37, a3, v38);
        }
      }

      goto LABEL_89;
    case 4:
      v12 = *(a2 + 4);
      if (*(a2 + 3) - v12 <= 0xCuLL)
      {
        result = llvm::raw_ostream::write(a2, "std::string:", 0xDuLL);
        goto LABEL_59;
      }

      qmemcpy(v12, "std::string:", 13);
      v32 = *(a2 + 4) + 13;
      goto LABEL_58;
    case 5:
      v22 = *(a2 + 4);
      if (*(a2 + 3) - v22 <= 0xDuLL)
      {
        v23 = "ptrAndLength:";
        v24 = 14;
        goto LABEL_35;
      }

      qmemcpy(v22, "ptrAndLength:", 14);
      v39 = *(a2 + 3);
      v28 = (*(a2 + 4) + 14);
      *(a2 + 4) = v28;
      if (a4 <= v39 - v28)
      {
        goto LABEL_69;
      }

      goto LABEL_36;
    case 6:
      v26 = *(a2 + 4);
      if (*(a2 + 3) - v26 > 0x16uLL)
      {
        qmemcpy(v26, "constexprPtrAndLength:", 23);
        v43 = *(a2 + 3);
        v28 = (*(a2 + 4) + 23);
        *(a2 + 4) = v28;
        if (a4 > v43 - v28)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v23 = "constexprPtrAndLength:";
        v24 = 23;
LABEL_35:
        v27 = a4;
        result = llvm::raw_ostream::write(result, v23, v24);
        a4 = v27;
        v28 = *(result + 4);
        if (v27 > *(result + 3) - v28)
        {
LABEL_36:
          result = llvm::raw_ostream::write(result, a3, a4);
          v28 = *(result + 4);
          if (*(result + 3) != v28)
          {
            goto LABEL_90;
          }

          goto LABEL_72;
        }
      }

LABEL_69:
      if (a4)
      {
        v40 = result;
        v41 = a3;
        v42 = a4;
        memcpy(v28, v41, a4);
        result = v40;
        v28 = (*(v40 + 4) + v42);
        *(v40 + 4) = v28;
      }

      if (*(result + 3) != v28)
      {
        goto LABEL_90;
      }

      goto LABEL_72;
    case 7:
      v20 = *(a2 + 4);
      if ((*(a2 + 3) - v20) > 8)
      {
        *(v20 + 8) = 34;
        *v20 = *"formatv:";
        *(a2 + 4) += 9;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "formatv:", 9uLL);
      }

      result = llvm::raw_ostream::operator<<(result, a3);
      goto LABEL_89;
    case 8:
      v30 = *(a2 + 4);
      if ((*(a2 + 3) - v30) > 5)
      {
        *(v30 + 4) = 8762;
        *v30 = 1918986339;
        v44 = *(a2 + 3);
        v31 = (*(a2 + 4) + 6);
        *(a2 + 4) = v31;
        if (v31 >= v44)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "char:", 6uLL);
        v31 = *(result + 4);
        if (v31 >= *(result + 3))
        {
LABEL_42:
          result = llvm::raw_ostream::write(result, a3);
          goto LABEL_89;
        }
      }

      *(result + 4) = v31 + 1;
      *v31 = a3;
LABEL_89:
      v28 = *(result + 4);
      if (*(result + 3) == v28)
      {
LABEL_72:
        v8 = "";
        v9 = 1;

        return llvm::raw_ostream::write(result, v8, v9);
      }

      else
      {
LABEL_90:
        *v28 = 34;
        ++*(result + 4);
      }

      return result;
    case 9:
      v14 = *(a2 + 4);
      if (*(a2 + 3) - v14 > 6uLL)
      {
        *(v14 + 3) = 574245205;
        *v14 = 1432577380;
        *(a2 + 4) += 7;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decUI:", 7uLL);
      }

      result = llvm::raw_ostream::operator<<(result, a3);
      goto LABEL_89;
    case 10:
      v29 = *(a2 + 4);
      if ((*(a2 + 3) - v29) > 5)
      {
        *(v29 + 4) = 8762;
        *v29 = 1231250788;
        *(a2 + 4) += 6;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decI:", 6uLL);
      }

      result = llvm::raw_ostream::operator<<(result, a3);
      goto LABEL_89;
    case 11:
      v11 = *(a2 + 4);
      if (*(a2 + 3) - v11 > 6uLL)
      {
        *(v11 + 3) = 574245973;
        *v11 = 1432577380;
        *(a2 + 4) += 7;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decUL:", 7uLL);
      }

      result = llvm::raw_ostream::operator<<(result, *a3);
      goto LABEL_89;
    case 12:
      v13 = *(a2 + 4);
      if ((*(a2 + 3) - v13) > 5)
      {
        *(v13 + 4) = 8762;
        *v13 = 1281582436;
        *(a2 + 4) += 6;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decL:", 6uLL);
      }

      result = llvm::raw_ostream::operator<<(result, *a3);
      goto LABEL_89;
    case 13:
      v25 = *(a2 + 4);
      if (*(a2 + 3) - v25 > 7uLL)
      {
        *v25 = 0x223A4C4C55636564;
        *(a2 + 4) += 8;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decULL:", 8uLL);
      }

      result = llvm::raw_ostream::operator<<(result, *a3);
      goto LABEL_89;
    case 14:
      v10 = *(a2 + 4);
      if (*(a2 + 3) - v10 > 6uLL)
      {
        *(v10 + 3) = 574245964;
        *v10 = 1281582436;
        *(a2 + 4) += 7;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "decLL:", 7uLL);
      }

      result = llvm::raw_ostream::operator<<(result, *a3);
      goto LABEL_89;
    case 15:
      v18 = *(a2 + 4);
      if ((*(a2 + 3) - v18) > 5)
      {
        *(v18 + 4) = 8762;
        *v18 = 2019911797;
        v32 = *(a2 + 4) + 6;
LABEL_58:
        *(a2 + 4) = v32;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, "uhex:", 6uLL);
      }

LABEL_59:
      result = llvm::raw_ostream::operator<<(result, a3);
      goto LABEL_89;
    default:
      return result;
  }
}

llvm::raw_ostream *llvm::Twine::printRepr(llvm::Twine *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 6uLL)
  {
    *(v4 + 3) = 543518313;
    *v4 = 1769428008;
    *(a2 + 4) += 7;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "(Twine ", 7uLL);
  }

  v5 = llvm::Twine::printOneChildRepr(this, a2, *v3, *(v3 + 1), *(v3 + 32));
  v6 = *(a2 + 4);
  if (*(a2 + 3) == v6)
  {
    v5 = llvm::raw_ostream::write(a2, " ", 1uLL);
  }

  else
  {
    *v6 = 32;
    ++*(a2 + 4);
  }

  result = llvm::Twine::printOneChildRepr(v5, a2, *(v3 + 2), *(v3 + 3), *(v3 + 33));
  v8 = *(a2 + 4);
  if (*(a2 + 3) == v8)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v8 = 41;
    ++*(a2 + 4);
  }

  return result;
}

void llvm::initTypeSizeOptions(llvm *this)
{
  if (!atomic_load_explicit(ScalableErrorAsWarning, memory_order_acquire))
  {
  }
}

void *llvm::reportInvalidSizeRequest(llvm *this, const char *a2)
{
  if (!atomic_load_explicit(ScalableErrorAsWarning, memory_order_acquire))
  {
  }

  if (*(ScalableErrorAsWarning[0] + 128) != 1)
  {
    llvm::report_fatal_error("Invalid size request on a scalable vector.", 1);
  }

  result = llvm::WithColor::warning(this);
  v4 = result[4];
  if (result[3] - v4 > 0x2AuLL)
  {
    qmemcpy(v4, "Invalid size request on a scalable vector; ", 43);
    result[4] += 43;
    if (!this)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, "Invalid size request on a scalable vector; ", 0x2BuLL);
    if (!this)
    {
      goto LABEL_12;
    }
  }

  v5 = result;
  v6 = strlen(this);
  result = v5;
  if (v6 <= v5[3] - v5[4])
  {
    if (v6)
    {
      memcpy(v5[4], this, v6);
      result = v5;
      v5[4] += v6;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(v5, this, v6);
  }

LABEL_12:
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v7 = 10;
    ++result[4];
  }

  return result;
}

uint64_t llvm::TypeSize::operator unsigned long long(_BYTE *a1, const char *a2)
{
  if (a1[8] == 1)
  {
  }

  return *a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [38],llvm::cl::OptionHidden,llvm::cl::desc>(uint64_t a1, const char *a2, _WORD *a3, _OWORD *a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 10) = (32 * (*a3 & 3)) | *(a1 + 10) & 0xFF9F;
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

BOOL llvm::sys::unicode::isPrintable(llvm::sys::unicode *this)
{
  if (this == 173)
  {
    return 1;
  }

  v2 = " ";
  v3 = 711;
  do
  {
    v4 = v3 >> 1;
    v5 = &v2[8 * (v3 >> 1)];
    v6 = *(v5 + 1);
    v7 = v5 + 8;
    v3 += ~(v3 >> 1);
    if (v6 < this)
    {
      v2 = v7;
    }

    else
    {
      v3 = v4;
    }
  }

  while (v3);
  return v2 != &llvm::sys::unicode::isFormatting(int)::Cf && *v2 <= this;
}

BOOL llvm::sys::unicode::isFormatting(llvm::sys::unicode *this)
{
  v1 = &llvm::sys::unicode::isFormatting(int)::Cf;
  v2 = 21;
  do
  {
    v3 = v2 >> 1;
    v4 = &v1[8 * (v2 >> 1)];
    v5 = *(v4 + 1);
    v6 = v4 + 8;
    v2 += ~(v2 >> 1);
    if (v5 < this)
    {
      v1 = v6;
    }

    else
    {
      v2 = v3;
    }
  }

  while (v2);
  return v1 != &llvm::sys::unicode::charWidth(int)::CombiningCharacterRanges && *v1 <= this;
}

uint64_t llvm::sys::unicode::columnWidthUTF8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    while (1)
    {
      v6 = (a1 + v5);
      NumBytesForUTF8 = llvm::getNumBytesForUTF8(*(a1 + v5));
      if (NumBytesForUTF8 == 1)
      {
        if (*v6 - 32 > 0x5E)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = (v4 + 1);
        ++v5;
      }

      else
      {
        if (!NumBytesForUTF8)
        {
          return 4294967294;
        }

        v5 += NumBytesForUTF8;
        if (v5 > a2)
        {
          return 4294967294;
        }

        v28 = &v30;
        v29 = v6;
        if (llvm::ConvertUTF8toUTF32(&v29, &v6[NumBytesForUTF8], &v28, &v31, 0))
        {
          return 4294967294;
        }

        if (v30 != 173)
        {
          v8 = " ";
          v9 = 711;
          do
          {
            v10 = v9 >> 1;
            v11 = &v8[8 * (v9 >> 1)];
            v12 = *(v11 + 1);
            v13 = v11 + 8;
            v9 += ~(v9 >> 1);
            if (v30 > v12)
            {
              v8 = v13;
            }

            else
            {
              v9 = v10;
            }
          }

          while (v9);
          if (v8 == &llvm::sys::unicode::isFormatting(int)::Cf || v30 < *v8)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v14 = &llvm::sys::unicode::charWidth(int)::CombiningCharacterRanges;
        v15 = 343;
        do
        {
          v16 = v15 >> 1;
          v17 = &v14[8 * (v15 >> 1)];
          v18 = *(v17 + 1);
          v19 = v17 + 8;
          v15 += ~(v15 >> 1);
          if (v30 > v18)
          {
            v14 = v19;
          }

          else
          {
            v15 = v16;
          }
        }

        while (v15);
        if (v14 == &llvm::sys::unicode::charWidth(int)::DoubleWidthCharacterRanges || v30 < *v14)
        {
          v20 = &llvm::sys::unicode::charWidth(int)::DoubleWidthCharacterRanges;
          v21 = 100;
          do
          {
            v22 = v21 >> 1;
            v23 = &v20[2 * (v21 >> 1)];
            v24 = v23[1];
            v25 = v23 + 2;
            v21 += ~(v21 >> 1);
            if (v30 > v24)
            {
              v20 = v25;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
          if (v20 == dword_2573A2A24)
          {
            v4 = (v4 + 1);
          }

          else
          {
            if (v30 < *v20)
            {
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            v4 = (v26 + v4);
          }
        }

        else
        {
          v4 = v4;
        }
      }

      if (v5 >= a2)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t llvm::sys::unicode::foldCharSimple(uint64_t this)
{
  if (this >= 65)
  {
    if (this <= 0x5A)
    {
      return (this + 32);
    }

    if (this == 181)
    {
      return 956;
    }

    if (this >= 0xC0)
    {
      if (this <= 0xD6)
      {
        return (this + 32);
      }

      if (this == 215)
      {
        return 215;
      }

      if (this <= 0xDE)
      {
        return (this + 32);
      }

      if (this >= 0x100)
      {
        if (this <= 0x12E)
        {
          return this | 1;
        }

        if (this >= 0x132)
        {
          if (this <= 0x136)
          {
            return this | 1;
          }

          if (this >= 0x139)
          {
            if (this <= 0x147 && (this & 1) != 0)
            {
              return (this + 1);
            }

            if (this >= 0x14A)
            {
              if (this <= 0x176)
              {
                return this | 1;
              }

              if (this == 376)
              {
                return 255;
              }

              if (this >= 0x179)
              {
                if (this <= 0x17D && (this & 1) != 0)
                {
                  return (this + 1);
                }

                if (this == 383)
                {
                  return 115;
                }

                if (this == 385)
                {
                  return 595;
                }

                if (this >= 0x182)
                {
                  if (this <= 0x184)
                  {
                    return this | 1;
                  }

                  if (this == 390)
                  {
                    return 596;
                  }

                  if (this == 391)
                  {
                    return 392;
                  }

                  if (this >= 0x189)
                  {
                    if (this <= 0x18A)
                    {
                      return (this + 205);
                    }

                    if (this - 395) < 0x15 && ((0x163B79u >> (this + 117)))
                    {
                      return dword_2573A2A24[(this - 395)];
                    }

                    if (this >= 0x1A0)
                    {
                      if (this <= 0x1A4)
                      {
                        return this | 1;
                      }

                      if (this - 422) < 0xA && ((0x34Bu >> (this + 90)))
                      {
                        return dword_2573A2A78[(this - 422)];
                      }

                      if (this >= 0x1B1)
                      {
                        if (this <= 0x1B2)
                        {
                          return (this + 217);
                        }

                        if (this <= 0x1B5 && (this & 1) != 0)
                        {
                          return (this + 1);
                        }

                        if (this == 439)
                        {
                          return 658;
                        }

                        if (this >= 0x1B8)
                        {
                          if (this <= 0x1BC && (this & 3) == 0)
                          {
                            return this | 1;
                          }

                          if (this - 452) < 7 && ((0x5Bu >> (this + 60)))
                          {
                            return dword_2573A2AA0[(this - 452)];
                          }

                          if (this >= 0x1CB)
                          {
                            if (this <= 0x1DB && (this & 1) != 0)
                            {
                              return (this + 1);
                            }

                            if (this >= 0x1DE)
                            {
                              if (this <= 0x1EE)
                              {
                                return this | 1;
                              }

                              if (this == 497)
                              {
                                return 499;
                              }

                              if (this >= 0x1F2)
                              {
                                if (this <= 0x1F4)
                                {
                                  return this | 1;
                                }

                                if (this == 502)
                                {
                                  return 405;
                                }

                                if (this == 503)
                                {
                                  return 447;
                                }

                                if (this >= 0x1F8)
                                {
                                  if (this <= 0x21E)
                                  {
                                    return this | 1;
                                  }

                                  if (this == 544)
                                  {
                                    return 414;
                                  }

                                  if (this >= 0x222)
                                  {
                                    if (this <= 0x232)
                                    {
                                      return this | 1;
                                    }

                                    v1 = this - 570;
                                    if (this - 570) < 0xC && ((0xE9Bu >> v1))
                                    {
                                      return dword_2573A2ABC[v1];
                                    }

                                    if (this >= 0x246)
                                    {
                                      if (this <= 0x24E)
                                      {
                                        return this | 1;
                                      }

                                      if (this == 837)
                                      {
                                        return 953;
                                      }

                                      if (this >= 0x370)
                                      {
                                        if (this <= 0x372)
                                        {
                                          return this | 1;
                                        }

                                        switch(this)
                                        {
                                          case 0x376:
                                            return 887;
                                          case 0x386:
                                            return 940;
                                          case 0x37F:
                                            return 1011;
                                        }

                                        if (this >= 0x388)
                                        {
                                          if (this <= 0x38A)
                                          {
                                            return (this + 37);
                                          }

                                          if (this == 908)
                                          {
                                            return 972;
                                          }

                                          if (this >= 0x38E)
                                          {
                                            if (this <= 0x38F)
                                            {
                                              return (this + 63);
                                            }

                                            if (this == 912)
                                            {
                                              return 912;
                                            }

                                            if (this <= 0x3A1)
                                            {
                                              return (this + 32);
                                            }

                                            if (this == 930)
                                            {
                                              return 930;
                                            }

                                            if (this <= 0x3AB)
                                            {
                                              return (this + 32);
                                            }

                                            if (this > 976)
                                            {
                                              switch(this)
                                              {
                                                case 0x3D1:
                                                  return 952;
                                                case 0x3D5:
                                                  return 966;
                                                case 0x3D6:
                                                  return 960;
                                              }
                                            }

                                            else
                                            {
                                              switch(this)
                                              {
                                                case 0x3C2:
                                                  return 963;
                                                case 0x3CF:
                                                  return 983;
                                                case 0x3D0:
                                                  return 946;
                                              }
                                            }

                                            if (this >= 0x3D8)
                                            {
                                              if (this <= 0x3EE)
                                              {
                                                return this | 1;
                                              }

                                              if (this - 1008) < 0xB && ((0x6B3u >> (this + 16)))
                                              {
                                                return dword_2573A2AEC[(this - 1008)];
                                              }

                                              if (this >= 0x3FD)
                                              {
                                                if (this <= 0x3FF)
                                                {
                                                  return (this - 130);
                                                }

                                                if (this <= 0x40F)
                                                {
                                                  return (this + 80);
                                                }

                                                if (this <= 0x42F)
                                                {
                                                  return (this + 32);
                                                }

                                                if (this >= 0x460)
                                                {
                                                  if (this <= 0x480)
                                                  {
                                                    return this | 1;
                                                  }

                                                  if (this >= 0x48A)
                                                  {
                                                    if (this <= 0x4BE)
                                                    {
                                                      return this | 1;
                                                    }

                                                    if (this == 1216)
                                                    {
                                                      return 1231;
                                                    }

                                                    if (this >= 0x4C1)
                                                    {
                                                      if (this <= 0x4CD && (this & 1) != 0)
                                                      {
                                                        return (this + 1);
                                                      }

                                                      if (this >= 0x4D0)
                                                      {
                                                        if (this <= 0x52E)
                                                        {
                                                          return this | 1;
                                                        }

                                                        if (this >= 0x531)
                                                        {
                                                          if (this <= 0x556)
                                                          {
                                                            return (this + 48);
                                                          }

                                                          v2 = this >> 5;
                                                          if (this >> 5 >= 0x85)
                                                          {
                                                            v3 = this >> 1;
                                                            if (this >> 1 <= 0x862)
                                                            {
                                                              return (this + 7264);
                                                            }

                                                            v4 = 4294;
                                                            if (this == 4294)
                                                            {
                                                              return v4;
                                                            }

                                                            v5 = this % 6;
                                                            if (v3 <= 0x866 && v5 == 5)
                                                            {
                                                              return (this + 7264);
                                                            }

                                                            v6 = this >> 3;
                                                            if (this >> 3 >= 0x27F)
                                                            {
                                                              if (v3 <= 0x9FE)
                                                              {
                                                                return (this - 8);
                                                              }

                                                              if ((this - 7296) < 3)
                                                              {
                                                                return dword_2573A2B18[(this - 7296)];
                                                              }

                                                              if (this >= 0x1C83)
                                                              {
                                                                if (this <= 0x1C84)
                                                                {
                                                                  return (this - 6210);
                                                                }

                                                                if ((this - 7301) < 4)
                                                                {
                                                                  return dword_2573A2B70[(this - 7301)];
                                                                }

                                                                v7 = this >> 4;
                                                                if (this >> 4 >= 0x1C9)
                                                                {
                                                                  if (this <= 0x1CBA)
                                                                  {
                                                                    return (this - 3008);
                                                                  }

                                                                  if (this >= 0x1CBD)
                                                                  {
                                                                    v8 = this >> 6;
                                                                    if (this >> 6 <= 0x72)
                                                                    {
                                                                      return (this - 3008);
                                                                    }

                                                                    if (this >> 9 >= 0xF)
                                                                    {
                                                                      if (this <= 0x1E94)
                                                                      {
                                                                        return this | 1;
                                                                      }

                                                                      if (this == 7835)
                                                                      {
                                                                        return 7777;
                                                                      }

                                                                      if (this == 7838)
                                                                      {
                                                                        return 223;
                                                                      }

                                                                      if (v2 >= 0xF5)
                                                                      {
                                                                        if (this <= 0x1EFE)
                                                                        {
                                                                          return this | 1;
                                                                        }

                                                                        if (v6 >= 0x3E1)
                                                                        {
                                                                          if (v7 <= 0x1F0)
                                                                          {
                                                                            return (this - 8);
                                                                          }

                                                                          if (v6 >= 0x3E3)
                                                                          {
                                                                            if (v3 <= 0xF8E)
                                                                            {
                                                                              return (this - 8);
                                                                            }

                                                                            if (v6 >= 0x3E5)
                                                                            {
                                                                              if (v7 <= 0x1F2)
                                                                              {
                                                                                return (this - 8);
                                                                              }

                                                                              if (v6 >= 0x3E7)
                                                                              {
                                                                                if (v8 <= 0x7C)
                                                                                {
                                                                                  return (this - 8);
                                                                                }

                                                                                if (v6 >= 0x3E9)
                                                                                {
                                                                                  if (v3 <= 0xFA6)
                                                                                  {
                                                                                    return (this - 8);
                                                                                  }

                                                                                  if (this >= 0x1F59)
                                                                                  {
                                                                                    if (v2 <= 0xFA && (this & 1) != 0)
                                                                                    {
                                                                                      return (this - 8);
                                                                                    }

                                                                                    if (v6 >= 0x3ED)
                                                                                    {
                                                                                      if (v7 <= 0x1F6)
                                                                                      {
                                                                                        return (this - 8);
                                                                                      }

                                                                                      if (v6 >= 0x3F1)
                                                                                      {
                                                                                        if (v7 <= 0x1F8)
                                                                                        {
                                                                                          return (this - 8);
                                                                                        }

                                                                                        if (v6 >= 0x3F3)
                                                                                        {
                                                                                          if (v2 <= 0xFC)
                                                                                          {
                                                                                            return (this - 8);
                                                                                          }

                                                                                          if (v6 >= 0x3F5)
                                                                                          {
                                                                                            if (v7 <= 0x1FA)
                                                                                            {
                                                                                              return (this - 8);
                                                                                            }

                                                                                            if (v6 >= 0x3F7)
                                                                                            {
                                                                                              if (v3 <= 0xFDC)
                                                                                              {
                                                                                                return (this - 8);
                                                                                              }

                                                                                              v9 = this >> 2;
                                                                                              if (this >> 2 <= 0x7EE)
                                                                                              {
                                                                                                return (this - 74);
                                                                                              }

                                                                                              if (this == 8124)
                                                                                              {
                                                                                                return 8115;
                                                                                              }

                                                                                              if (this == 8126)
                                                                                              {
                                                                                                return 953;
                                                                                              }

                                                                                              if (v6 >= 0x3F9)
                                                                                              {
                                                                                                if (v9 <= 0x7F2)
                                                                                                {
                                                                                                  return (this - 86);
                                                                                                }

                                                                                                if (this == 8140)
                                                                                                {
                                                                                                  return 8131;
                                                                                                }

                                                                                                if (this == 8147)
                                                                                                {
                                                                                                  return 912;
                                                                                                }

                                                                                                if (v6 >= 0x3FB)
                                                                                                {
                                                                                                  if (v3 <= 0xFEC)
                                                                                                  {
                                                                                                    return (this - 8);
                                                                                                  }

                                                                                                  if (v9 <= 0x7F6)
                                                                                                  {
                                                                                                    return (this - 100);
                                                                                                  }

                                                                                                  if (this == 8163)
                                                                                                  {
                                                                                                    return 944;
                                                                                                  }

                                                                                                  if (v6 >= 0x3FD)
                                                                                                  {
                                                                                                    if (v3 <= 0xFF4)
                                                                                                    {
                                                                                                      return (this - 8);
                                                                                                    }

                                                                                                    if (v9 <= 0x7FA)
                                                                                                    {
                                                                                                      return (this - 112);
                                                                                                    }

                                                                                                    if (this == 8172)
                                                                                                    {
                                                                                                      return 8165;
                                                                                                    }

                                                                                                    if (v6 >= 0x3FF)
                                                                                                    {
                                                                                                      if (v3 <= 0xFFC)
                                                                                                      {
                                                                                                        return (this - 128);
                                                                                                      }

                                                                                                      if (v9 <= 0x7FE)
                                                                                                      {
                                                                                                        return (this - 126);
                                                                                                      }

                                                                                                      if (this <= 8489)
                                                                                                      {
                                                                                                        if (this == 8188)
                                                                                                        {
                                                                                                          return 8179;
                                                                                                        }

                                                                                                        if (this == 8486)
                                                                                                        {
                                                                                                          return 969;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        switch(this)
                                                                                                        {
                                                                                                          case 0x212A:
                                                                                                            return 107;
                                                                                                          case 0x212B:
                                                                                                            return 229;
                                                                                                          case 0x2132:
                                                                                                            return 8526;
                                                                                                        }
                                                                                                      }

                                                                                                      if (v2 >= 0x10B)
                                                                                                      {
                                                                                                        if (v7 <= 0x216)
                                                                                                        {
                                                                                                          return (this + 16);
                                                                                                        }

                                                                                                        if (this == 8579)
                                                                                                        {
                                                                                                          return 8580;
                                                                                                        }

                                                                                                        if (this >= 0x24B6)
                                                                                                        {
                                                                                                          if (v7 <= 0x24C)
                                                                                                          {
                                                                                                            return (this + 26);
                                                                                                          }

                                                                                                          if (this >> 10 >= 0xB)
                                                                                                          {
                                                                                                            if (v7 <= 0x2C2)
                                                                                                            {
                                                                                                              return (this + 48);
                                                                                                            }

                                                                                                            v10 = this - 11360;
                                                                                                            if (this - 11360) < 5 && ((0x1Du >> v10))
                                                                                                            {
                                                                                                              return dword_2573A2B24[v10];
                                                                                                            }

                                                                                                            if (this >= 0x2C67)
                                                                                                            {
                                                                                                              if (v9 <= 0xB1A && (this & 1) != 0)
                                                                                                              {
                                                                                                                return (this + 1);
                                                                                                              }

                                                                                                              if ((this - 11373) < 4)
                                                                                                              {
                                                                                                                return dword_2573A2B80[(this - 11373)];
                                                                                                              }

                                                                                                              if (this >= 0x2C72)
                                                                                                              {
                                                                                                                if (this <= 0x2C75 && this % 3 == 2)
                                                                                                                {
                                                                                                                  return (this + 1);
                                                                                                                }

                                                                                                                if (this >= 0x2C7E)
                                                                                                                {
                                                                                                                  if (this >> 7 <= 0x58)
                                                                                                                  {
                                                                                                                    return (this - 10815);
                                                                                                                  }

                                                                                                                  if (this <= 0x2CE2)
                                                                                                                  {
                                                                                                                    return this | 1;
                                                                                                                  }

                                                                                                                  if (this >= 0x2CEB)
                                                                                                                  {
                                                                                                                    if (this <= 0x2CED && (this & 1) != 0)
                                                                                                                    {
                                                                                                                      return (this + 1);
                                                                                                                    }

                                                                                                                    if (this >= 0x2CF2)
                                                                                                                    {
                                                                                                                      if (this <= 0xA640 && this % 0x794E == 11506)
                                                                                                                      {
                                                                                                                        return (this + 1);
                                                                                                                      }

                                                                                                                      if (this >= 0xA642)
                                                                                                                      {
                                                                                                                        if (this <= 0xA66C)
                                                                                                                        {
                                                                                                                          return this | 1;
                                                                                                                        }

                                                                                                                        if (this >> 7 >= 0x14D)
                                                                                                                        {
                                                                                                                          if (this <= 0xA69A)
                                                                                                                          {
                                                                                                                            return this | 1;
                                                                                                                          }

                                                                                                                          if (this >= 0xA722)
                                                                                                                          {
                                                                                                                            if (this <= 0xA72E)
                                                                                                                            {
                                                                                                                              return this | 1;
                                                                                                                            }

                                                                                                                            if (this >= 0xA732)
                                                                                                                            {
                                                                                                                              if (this <= 0xA76E)
                                                                                                                              {
                                                                                                                                return this | 1;
                                                                                                                              }

                                                                                                                              if (this >= 0xA779)
                                                                                                                              {
                                                                                                                                if (this <= 0xA77B && (this & 1) != 0)
                                                                                                                                {
                                                                                                                                  return (this + 1);
                                                                                                                                }

                                                                                                                                if (this == 42877)
                                                                                                                                {
                                                                                                                                  return 7545;
                                                                                                                                }

                                                                                                                                if (this >= 0xA77E)
                                                                                                                                {
                                                                                                                                  if (this <= 0xA786)
                                                                                                                                  {
                                                                                                                                    return this | 1;
                                                                                                                                  }

                                                                                                                                  if (this == 42891)
                                                                                                                                  {
                                                                                                                                    return 42892;
                                                                                                                                  }

                                                                                                                                  if (this == 42893)
                                                                                                                                  {
                                                                                                                                    return 613;
                                                                                                                                  }

                                                                                                                                  if (v7 >= 0xA79)
                                                                                                                                  {
                                                                                                                                    if (this <= 0xA792)
                                                                                                                                    {
                                                                                                                                      return this | 1;
                                                                                                                                    }

                                                                                                                                    if (this >= 0xA796)
                                                                                                                                    {
                                                                                                                                      if (this <= 0xA7A8)
                                                                                                                                      {
                                                                                                                                        return this | 1;
                                                                                                                                      }

                                                                                                                                      if (this - 42922) < 0xA && ((0x3DFu >> (this + 86)))
                                                                                                                                      {
                                                                                                                                        return dword_2573A2B38[(this - 42922)];
                                                                                                                                      }

                                                                                                                                      if (this >= 0xA7B4)
                                                                                                                                      {
                                                                                                                                        if (this <= 0xA7C2)
                                                                                                                                        {
                                                                                                                                          return this | 1;
                                                                                                                                        }

                                                                                                                                        if ((this - 42948) < 3)
                                                                                                                                        {
                                                                                                                                          return dword_2573A2B60[(this - 42948)];
                                                                                                                                        }

                                                                                                                                        if (this >= 0xA7C7)
                                                                                                                                        {
                                                                                                                                          if (this <= 0xA7C9 && (this & 1) != 0)
                                                                                                                                          {
                                                                                                                                            return (this + 1);
                                                                                                                                          }

                                                                                                                                          if (v7 >= 0xA7D)
                                                                                                                                          {
                                                                                                                                            if (this <= 0xA7D6 && !v5)
                                                                                                                                            {
                                                                                                                                              return (this + 1);
                                                                                                                                            }

                                                                                                                                            if (this >= 0xA7D8)
                                                                                                                                            {
                                                                                                                                              if (this <= 0xA7F5 && this % 0x1D == 19)
                                                                                                                                              {
                                                                                                                                                return (this + 1);
                                                                                                                                              }

                                                                                                                                              if (v7 >= 0xAB7)
                                                                                                                                              {
                                                                                                                                                if (v8 <= 0x2AE)
                                                                                                                                                {
                                                                                                                                                  return (this - 38864);
                                                                                                                                                }

                                                                                                                                                if (this == 64261)
                                                                                                                                                {
                                                                                                                                                  return 64262;
                                                                                                                                                }

                                                                                                                                                if (this >= 0xFF21)
                                                                                                                                                {
                                                                                                                                                  if (this <= 0xFF3A)
                                                                                                                                                  {
                                                                                                                                                    return (this + 32);
                                                                                                                                                  }

                                                                                                                                                  if (this >= 0x10400)
                                                                                                                                                  {
                                                                                                                                                    if (this < 0x10428)
                                                                                                                                                    {
                                                                                                                                                      return (this + 40);
                                                                                                                                                    }

                                                                                                                                                    if (this >= 0x104B0)
                                                                                                                                                    {
                                                                                                                                                      if (this < 0x104D4)
                                                                                                                                                      {
                                                                                                                                                        return (this + 40);
                                                                                                                                                      }

                                                                                                                                                      if (this >= 0x10570)
                                                                                                                                                      {
                                                                                                                                                        if (this < 0x1057B)
                                                                                                                                                        {
                                                                                                                                                          return (this + 39);
                                                                                                                                                        }

                                                                                                                                                        v4 = 66939;
                                                                                                                                                        if (this == 66939)
                                                                                                                                                        {
                                                                                                                                                          return v4;
                                                                                                                                                        }

                                                                                                                                                        v4 = 66955;
                                                                                                                                                        if (this < 0x1058B)
                                                                                                                                                        {
                                                                                                                                                          return (this + 39);
                                                                                                                                                        }

                                                                                                                                                        if (this == 66955)
                                                                                                                                                        {
                                                                                                                                                          return v4;
                                                                                                                                                        }

                                                                                                                                                        v4 = 66963;
                                                                                                                                                        if (this < 0x10593)
                                                                                                                                                        {
                                                                                                                                                          return (this + 39);
                                                                                                                                                        }

                                                                                                                                                        if (this == 66963)
                                                                                                                                                        {
                                                                                                                                                          return v4;
                                                                                                                                                        }

                                                                                                                                                        if (this >= 0x10596)
                                                                                                                                                        {
                                                                                                                                                          if (this >= 0x10C80)
                                                                                                                                                          {
                                                                                                                                                            if (this >= 0x10CB3)
                                                                                                                                                            {
                                                                                                                                                              if (v2 >= 0x8C5)
                                                                                                                                                              {
                                                                                                                                                                if (this >= 0x118C0)
                                                                                                                                                                {
                                                                                                                                                                  if (v8 >= 0x5B9)
                                                                                                                                                                  {
                                                                                                                                                                    if (this >= 0x16E60)
                                                                                                                                                                    {
                                                                                                                                                                      if ((this - 125184) >= 0x22)
                                                                                                                                                                      {
                                                                                                                                                                        return this;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        return (this + 34);
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      return (this + 32);
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  return (this + 32);
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              return (this + 64);
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          return (this + 39);
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t llvm::sys::unicode::nameToCodepointStrict(char *a1, size_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = xmmword_257370CF0;
  v2 = llvm::sys::unicode::nameToCodepoint(a1, a2, 1u, &v4);
  if (v4 != v6)
  {
    free(v4);
  }

  return v2 & 0xFFFFFFFFFFLL;
}

uint64_t llvm::sys::unicode::nameToCodepoint(char *a1, size_t a2, unsigned int a3, uint64_t *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  v87[0] = a1;
  v87[1] = a2;
  if (a2)
  {
    v4 = a4;
    v5 = a2;
    v6 = a1;
    a4[1] = 0;
    v91[0] = 0;
    LOBYTE(v88) = 0;
    if (llvm::sys::unicode::startsWith(a1, a2, "HANGUL SYLLABLE ", 0x10uLL, a3, v91, &v88, 0))
    {
      v7 = 0;
      v8 = v91[0];
      if (v5 < v91[0])
      {
        v8 = v5;
      }

      v78 = v6;
      v79 = v5;
      v9 = v6 + v8;
      v10 = v5 - v8;
      v11 = v88;
      v81 = -1;
      v12 = llvm::sys::unicode::HangulSyllables;
      v13 = -1;
      v14 = v88;
      do
      {
        v15 = *v12;
        v16 = strlen(*v12);
        if (v13 < v16)
        {
          __dst[0] = 0;
          LOBYTE(v90) = v11;
          v17 = llvm::sys::unicode::startsWith(v9, v10, v15, v16, a3, __dst, &v90, 0);
          v18 = v81;
          if (v17)
          {
            v18 = v7;
          }

          v81 = v18;
          if (v17)
          {
            v14 = v90;
            v13 = __dst[0];
          }
        }

        ++v7;
        v12 += 3;
      }

      while (v7 != 19);
      v19 = 0;
      if (v13 == -1)
      {
        v20 = v11;
      }

      else
      {
        v20 = v14;
      }

      if (v13 == -1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        LODWORD(v21) = v13;
      }

      v21 = v21;
      if (v10 < v21)
      {
        v21 = v10;
      }

      v22 = &v9[v21];
      v23 = v10 - v21;
      v24 = -1;
      v25 = &off_27983C9C8;
      v26 = -1;
      v27 = v20;
      do
      {
        v28 = *v25;
        v29 = strlen(*v25);
        if (v26 < v29)
        {
          __dst[0] = 0;
          LOBYTE(v90) = v20;
          if (llvm::sys::unicode::startsWith(v22, v23, v28, v29, a3, __dst, &v90, 0))
          {
            v24 = v19;
            v27 = v90;
            v26 = __dst[0];
          }
        }

        ++v19;
        v25 += 3;
      }

      while (v19 != 21);
      v80 = v4;
      v30 = 0;
      v31 = v26 == -1 ? v20 : v27;
      LODWORD(v32) = v26 == -1 ? 0 : v26;
      v32 = v32;
      v33 = v23 >= v32 ? v32 : v23;
      v34 = v23 - v33;
      v35 = -1;
      v36 = &off_27983C9D0;
      v37 = -1;
      do
      {
        v38 = *v36;
        v39 = strlen(*v36);
        if (v37 < v39)
        {
          __dst[0] = 0;
          LOBYTE(v90) = v31;
          if (llvm::sys::unicode::startsWith(&v22[v33], v34, v38, v39, a3, __dst, &v90, 0))
          {
            v35 = v30;
            v37 = __dst[0];
          }
        }

        ++v30;
        v36 += 3;
      }

      while (v30 != 28);
      v40 = v37 == -1 ? 0 : v37;
      v5 = v79;
      v4 = v80;
      v6 = v78;
      if (v81 != -1 && v24 != -1 && v35 != -1 && v34 <= v40)
      {
        if ((a3 & 1) == 0)
        {
          if (v80[2] <= 0xF)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          **v80 = *"HANGUL SYLLABLE ";
          v56 = v80[1] + 16;
          v80[1] = v56;
          v57 = llvm::sys::unicode::HangulSyllables[3 * v81];
          if (v57)
          {
            v58 = strlen(llvm::sys::unicode::HangulSyllables[3 * v81]);
            if (v80[2] < v58 + v56)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v58 = 0;
            if (v80[2] < v56)
            {
LABEL_86:
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }
          }

          if (v58)
          {
            memcpy((*v80 + v56), v57, v58);
            v56 = v80[1];
          }

          v59 = v56 + v58;
          v80[1] = v59;
          if ((v24 - 21) >= 7)
          {
            v60 = strlen(llvm::sys::unicode::HangulSyllables[3 * v24 + 1]);
          }

          else
          {
            v60 = 0;
          }

          if (v80[2] < v60 + v59)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v60)
          {
            memcpy((*v80 + v59), llvm::sys::unicode::HangulSyllables[3 * v24 + 1], v60);
            v59 = v80[1];
          }

          v61 = v59 + v60;
          v80[1] = v61;
          v62 = strlen(llvm::sys::unicode::HangulSyllables[3 * v35 + 2]);
          if (v80[2] < v62 + v61)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v62)
          {
            memcpy((*v80 + v61), llvm::sys::unicode::HangulSyllables[3 * v35 + 2], v62);
            v61 = v80[1];
          }

          v80[1] = v61 + v62;
        }

        LODWORD(v63) = v35 + 28 * (v24 + 21 * v81) + 44032;
        goto LABEL_140;
      }
    }

    if (a3)
    {
      v41 = 0;
      while (1)
      {
        v42 = &(&llvm::sys::unicode::GeneratedNamesDataTable)[v41];
        v4[1] = 0;
        v43 = (&llvm::sys::unicode::GeneratedNamesDataTable)[v41 + 1];
        if (v5 >= v43)
        {
          v44 = *v42;
          if (!v43 || !memcmp(v6, *v42, (&llvm::sys::unicode::GeneratedNamesDataTable)[v41 + 1]))
          {
            v88 = 0;
            if (v5 > v43)
            {
              v45 = v5 - v43;
              v46 = &v43[v6];
              while (*v46 - 97 >= 6)
              {
                ++v46;
                if (!--v45)
                {
                  goto LABEL_62;
                }
              }

              goto LABEL_102;
            }

LABEL_62:
            if ((llvm::getAsUnsignedInteger(&v43[v6], v5 - v43, 0x10, &v88) & 1) == 0)
            {
              v47 = v88;
              if (v88 >= *(v42 + 4) && v88 <= *(v42 + 5))
              {
                goto LABEL_74;
              }
            }
          }
        }

        v41 += 3;
        if (v41 == 51)
        {
          goto LABEL_102;
        }
      }
    }

    v48 = &dword_27983CC70;
    v49 = 408;
    while (1)
    {
      v4[1] = 0;
      v90 = 0;
      v89 = 0;
      v44 = *(v48 - 2);
      v43 = *(v48 - 1);
      if (llvm::sys::unicode::startsWith(v6, v5, v44, v43, 0, &v90, &v89, 1))
      {
        v50 = v90;
        if (v5 < v90)
        {
          v50 = v5;
        }

        v88 = 0;
        if ((llvm::getAsUnsignedInteger(v6 + v50, v5 - v50, 0x10, &v88) & 1) == 0)
        {
          v47 = v88;
          if (v88 >= *v48 && v88 <= v48[1])
          {
            break;
          }
        }
      }

      v48 += 6;
      v49 -= 24;
      if (!v49)
      {
        goto LABEL_102;
      }
    }

LABEL_74:
    if ((a3 & 1) == 0)
    {
      v51 = v4[1];
      if (v4[2] < &v43[v51])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v43)
      {
        memcpy((*v4 + v51), v44, v43);
        v51 = v4[1];
      }

      v4[1] = &v43[v51];
      v52 = v88;
      if (v88)
      {
        v53 = 16;
        do
        {
          *(v91 + v53--) = llvm::hexdigit(unsigned int,BOOL)::LUT[v52 & 0xF] | 0x20;
          v54 = v52 > 0xF;
          v52 >>= 4;
        }

        while (v54);
        v55 = v53 + 1;
      }

      else
      {
        v92 = 48;
        v55 = 16;
      }

      v72 = 17 - v55;
      if ((17 - v55) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v72 > 0x16)
      {
        operator new();
      }

      v84 = 17 - v55;
      if (v55 != 17)
      {
        memcpy(__dst, v91 + v55, 17 - v55);
      }

      *(__dst + v72) = 0;
      v73 = v84;
      v74 = __dst[0];
      if (v84 >= 0)
      {
        v75 = __dst;
      }

      else
      {
        v75 = __dst[0];
      }

      if (v84 >= 0)
      {
        v76 = v84;
      }

      else
      {
        v76 = __dst[1];
      }

      v77 = v4[1];
      if (v4[2] < v77 + v76)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v76)
      {
        memcpy((*v4 + v77), v75, v76);
        v77 = v4[1];
      }

      v4[1] = v77 + v76;
      if (v73 < 0)
      {
        operator delete(v74);
      }

      v47 = v88;
    }

    v63 = v47 | 0x100000000;
    if ((v63 & 0x100000000) != 0)
    {
LABEL_140:
      v70 = v63 & 0xFFFFFF00;
      v69 = 0x100000000;
      return v69 | v70 | v63;
    }

LABEL_102:
    v4[1] = 0;
    llvm::sys::unicode::compareNode(__dst, 0, v6, v5, a3, 0, v4, 0);
    if (v85 == 1)
    {
      LODWORD(v63) = v86;
      v64 = v4[1];
      if (v64)
      {
        v65 = (*v4 + v64 - 1);
        if (v65 > *v4)
        {
          v66 = *v4 + 1;
          do
          {
            v67 = *(v66 - 1);
            *(v66 - 1) = *v65;
            *v65-- = v67;
          }

          while (v66++ < v65);
        }
      }

      if ((a3 & 1) == 0 && v63 == 4460)
      {
        if (llvm::StringRef::find_insensitive(v87, "O-E", 3uLL, 0) == -1)
        {
          LODWORD(v63) = 4460;
        }

        else
        {
          v4[1] = 0;
          if (v4[2] <= 0x13)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v63 = *v4;
          *v63 = *"HANGUL JUNGSEONG O-E";
          *(v63 + 16) = 1160597280;
          v4[1] += 20;
          LODWORD(v63) = 4480;
        }
      }

      goto LABEL_140;
    }
  }

  v69 = 0;
  LOBYTE(v63) = 0;
  v70 = 0;
  return v69 | v70 | v63;
}

void llvm::sys::unicode::nameToCodepointLooseMatching(char *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[8] = *MEMORY[0x277D85DE8];
  __src = v14;
  *__n = xmmword_257370CF0;
  v4 = llvm::sys::unicode::nameToCodepoint(a1, a2, 0, &__src);
  if ((v4 & 0x100000000) == 0)
  {
    *a3 = 0;
    *(a3 + 96) = 0;
    goto LABEL_17;
  }

  v8 = v4;
  v9 = v11;
  v5 = xmmword_257370CF0;
  v10 = xmmword_257370CF0;
  v6 = __n[0];
  if (__n[0])
  {
    if (__n[0] >= 0x41)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(v11, __src, __n[0]);
    *&v10 = v6;
    LODWORD(v4) = v8;
    v7 = v9;
    v5 = xmmword_257370CF0;
  }

  else
  {
    v7 = v11;
  }

  *a3 = v4;
  *(a3 + 8) = a3 + 32;
  *(a3 + 16) = v5;
  if (&v8 != a3 && v6)
  {
    if (v7 != v11)
    {
      *(a3 + 8) = v7;
      *(a3 + 16) = v6;
      *(a3 + 24) = *(&v10 + 1);
      *(a3 + 96) = 1;
      goto LABEL_17;
    }

    if (v6 >= 0x41)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(*(a3 + 8), v7, v6);
    v7 = v9;
    *(a3 + 16) = v6;
    *&v10 = 0;
  }

  *(a3 + 96) = 1;
  if (v7 != v11)
  {
    free(v7);
  }

LABEL_17:
  if (__src != v14)
  {
    free(__src);
  }
}

void llvm::sys::unicode::nearestMatchesForCodepointName(unsigned __int8 *a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v26 = 0;
  v27 = a3;
  *a4 = a4 + 2;
  a4[1] = 0x100000000;
  if ((a3 + 1) >= 2)
  {
    *v12 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v25[0] = &v26;
  v25[1] = a4;
  v25[2] = &v27;
  memset(&v24, 0, sizeof(v24));
  std::string::reserve(&v24, a2);
  for (; v4; --v4)
  {
    v10 = *a1;
    if ((v10 - 48) < 0xA || ((v10 & 0xDF) - 65) <= 0x19u)
    {
      if ((v10 - 97) < 0x1A)
      {
        LOBYTE(v10) = v10 - 32;
      }

      std::string::push_back(&v24, v10);
    }

    ++a1;
  }

  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  if (size > 0x4A)
  {
    size = 74;
  }

  v23 = size + 1;
  {
    v7 = v23;
    v21 = 0;
    v22 = 0;
    v8 = 75 * v23;
    __p = 0;
    if (75 * v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    llvm::sys::unicode::nearestMatchesForCodepointName();
    v7 = v23;
    v21 = 0;
    v22 = 0;
    v8 = 75 * v23;
    __p = 0;
    if (75 * v23)
    {
LABEL_10:
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  v19[0] = &__p;
  v19[1] = v7;
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      *(__p + i) = i;
    }
  }

  v18[0] = v19;
  v18[1] = &v23;
  v18[2] = &v24;
  v18[3] = v25;
  *&v12[4] = 0x1FFFFFFFFLL;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v12[0] = 1;
  v14 = 1;
  llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_1::operator()<$_1>(v18, v12, 1, v18);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_1::operator()<$_1>(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a2 + 32);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(*(a2 + 24) + i);
      if ((v9 - 48) < 0xA || (v9 & 0xFFFFFFDF) - 65 <= 0x19)
      {
        *(***a1 + (*a1)[1] * a3) = a3;
        if (*a1[1] >= 2)
        {
          v11 = 0;
          do
          {
            v20 = a1[2];
            if (*(v20 + 23) < 0)
            {
              v20 = *v20;
            }

            v12 = (*a1)[1];
            v13 = ***a1;
            v14 = v13 + v12 * a3;
            v15 = (v13 + v12 * (a3 - 1) + v11);
            v16 = v15[1] + 1;
            v17 = *v15;
            if (*(v20 + v11) == *(*(a2 + 24) + i))
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 + 1;
            }

            if (v18 >= *(v14 + v11) + 1)
            {
              v18 = *(v14 + v11) + 1;
            }

            if (v18 >= v16)
            {
              LOBYTE(v18) = v16;
            }

            *(v14 + v11 + 1) = v18;
            v19 = v11 + 2;
            ++v11;
          }

          while (v19 < *a1[1]);
        }

        ++a3;
        v7 = *(a2 + 32);
      }
    }
  }

  v21 = *(a2 + 4);
  if (v21 == -1)
  {
    goto LABEL_63;
  }

  v22 = *(*a1[1] + ***a1 + (*a1)[1] * (a3 - 1) - 1);
  v23 = a1[3];
  v24 = v23[1];
  v25 = *(v24 + 2);
  if (**v23 < v22)
  {
    if (*v23[2] == v25)
    {
      goto LABEL_63;
    }

    **v23 = v22;
  }

  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  v72[0] = v73;
  v72[1] = a2;
  v26 = *v24;
  if (!v25)
  {
    v44 = 0;
    v27 = v26;
    goto LABEL_58;
  }

  v64 = v23;
  v65 = v21;
  v27 = v26;
  do
  {
    v28 = v25 >> 1;
    v29 = (v27 + 32 * (v25 >> 1));
    v30 = *(v29 + 6);
    if (v30 == v22)
    {
      v67 = v27;
      v31 = v22;
      llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_0::operator() const(llvm::sys::unicode::Node const&,unsigned int,char32_t)::{lambda(void)#1}::operator()(&__p, v72);
      v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v33 = __p.__r_.__value_.__r.__words[0];
      v34 = *(v29 + 23);
      if (v34 >= 0)
      {
        v35 = *(v29 + 23);
      }

      else
      {
        v35 = v29[1];
      }

      if (v34 >= 0)
      {
        v36 = v29;
      }

      else
      {
        v36 = *v29;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (size >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = size;
      }

      v40 = memcmp(v36, p_p, v39);
      if (v40)
      {
        v41 = v40 < 0;
      }

      else
      {
        v41 = v35 < size;
      }

      if (v32 < 0)
      {
        operator delete(v33);
        v22 = v31;
        v27 = v67;
        if (v41)
        {
LABEL_27:
          v27 = (v29 + 4);
          v28 = v25 + ~v28;
        }
      }

      else
      {
        v22 = v31;
        v27 = v67;
        if (v41)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v30 < v22)
    {
      goto LABEL_27;
    }

    v25 = v28;
  }

  while (v28);
  v23 = v64;
  v42 = v64[1];
  v43 = *v42;
  v44 = *(v42 + 2);
  v4 = a4;
  v21 = v65;
  if (v27 != v43 + 32 * v44)
  {
LABEL_59:
    llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_0::operator() const(llvm::sys::unicode::Node const&,unsigned int,char32_t)::{lambda(void)#1}::operator()(&__p, v72);
    v69 = __PAIR64__(v21, v22);
    llvm::SmallVectorImpl<llvm::sys::unicode::MatchForCodepointName>::insert_one_impl<llvm::sys::unicode::MatchForCodepointName>(v23[1], v27, &__p);
    v45 = v23[1];
    v46 = *(v45 + 2);
    if (*v23[2] < v46 && (v47 = (v46 - 1), *(v45 + 2) = v47, v48 = *v45 + 32 * v47, *(v48 + 23) < 0))
    {
      operator delete(*v48);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_68;
    }

LABEL_63:
    v49 = *(a2 + 8);
    if (!v49)
    {
      goto LABEL_64;
    }

LABEL_69:
    if (!v49)
    {
      goto LABEL_73;
    }

LABEL_70:
    v50 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    *(__p.__r_.__value_.__r.__words + 4) = 0xFFFFFFFFLL;
    __p.__r_.__value_.__s.__data_[12] = 0;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
    v69 = 0;
    v70 = 0;
    v71 = a2;
    if (v49 + 7 >= 0x3B252uLL)
    {
      while (1)
      {
        v55 = v50 + v49;
LABEL_75:
        llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_1::operator()<$_1>(v4, &__p, a3, v4);
        if ((__p.__r_.__value_.__s.__data_[12] & 1) == 0)
        {
          return;
        }

        v49 = v55;
        if (v55)
        {
          goto LABEL_70;
        }

LABEL_73:
        *(__p.__r_.__value_.__r.__words + 4) = 0x1FFFFFFFFLL;
        __p.__r_.__value_.__s.__data_[12] = 0;
        v70 = 0;
        v71 = 0;
        v69 = 0;
        v50 = 1;
        __p.__r_.__value_.__s.__data_[0] = 1;
        LODWORD(__p.__r_.__value_.__r.__words[2]) = 1;
      }
    }

    v51 = v49 + 1;
    v52 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v49);
    v53 = v52 & 0x3F;
    if ((v52 & 0x40) != 0)
    {
      v56 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v51);
      v51 = v49 + 3;
      v54 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v49 + 2) | (v56 << 8);
    }

    else
    {
      v54 = v52 & 0x3F;
      v53 = 1;
    }

    v69 = &llvm::sys::unicode::UnicodeNameToCodepointDict[v54];
    v70 = v53;
    v55 = v51 + 1;
    v57 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v51);
    if (v52 < 0)
    {
      v58 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v55);
      v55 = v51 + 3;
      v59 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v51 + 2);
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = ((v57 << 16) | (v58 << 8) | v59) >> 3;
      __p.__r_.__value_.__s.__data_[12] = v59 & 1;
      if ((v59 & 2) == 0)
      {
LABEL_86:
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v55 - v49;
        if (v53 || (v52 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        return;
      }

      v60 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v55);
      v55 = v51 + 4;
      v61 = 6;
      v62 = 5;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[12] = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v51) >> 7;
      if ((v57 & 0x40) == 0)
      {
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v55 - v49;
        goto LABEL_75;
      }

      v60 = v57 & 0x3F;
      v61 = 3;
      v62 = 2;
    }

    v63 = (v60 << 16) | (*(llvm::sys::unicode::UnicodeNameToCodepointIndex + v55) << 8);
    v55 = v61 + v51;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = v63 | *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v62 + v51);
    goto LABEL_86;
  }

LABEL_58:
  if (*v23[2] != v44)
  {
    goto LABEL_59;
  }

LABEL_62:
  if ((SHIBYTE(v74) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_68:
  operator delete(v73[0]);
  v49 = *(a2 + 8);
  if (v49)
  {
    goto LABEL_69;
  }

LABEL_64:
  if (*a2 == 1)
  {
    goto LABEL_69;
  }
}

uint64_t llvm::sys::unicode::startsWith(char *a1, size_t a2, unsigned __int8 *a3, size_t a4, int a5, size_t *a6, unsigned __int8 *a7, char a8)
{
  *a6 = 0;
  if (a5)
  {
    if (a2 < a4)
    {
      return 0;
    }

    if (a4)
    {
      v43 = a6;
      v44 = a4;
      v45 = memcmp(a1, a3, a4);
      a4 = v44;
      a6 = v43;
      if (v45)
      {
        return 0;
      }
    }

    *a6 = a4;
    return 1;
  }

  if (!a4)
  {
    return 1;
  }

  v9 = *a7;
  v10 = *a3;
  v11 = &a1[a2];
  v12 = &a3[a4];
  v13 = *a7;
  v14 = a1;
  if (a8)
  {
    if (a1 == v11)
    {
      goto LABEL_23;
    }

LABEL_7:
    v15 = v14 + 1;
    do
    {
      v16 = v13;
      v13 = *(v15 - 1);
      if (v13 != 32 && v13 != 95)
      {
        if (v13 != 45 || ((v17 = (v16 & 0xDF) - 91, v18 = v16 - 58, v17 < 0xFFFFFFE6) ? (v19 = v18 >= 0xFFFFFFF6) : (v19 = 1), v19 ? (v20 = v15 == v11) : (v20 = 1), v20 || (v21 = *v15, (v21 - 48) >= 0xA) && (v21 & 0xFFFFFFDF) - 65 > 0x19))
        {
          *a7 = v13;
          v22 = v15 - 1;
          if (a3 != v12)
          {
            goto LABEL_24;
          }

          goto LABEL_89;
        }
      }

      *a7 = v13;
      v20 = v15++ == v11;
    }

    while (!v20);
LABEL_23:
    while (1)
    {
      v22 = &a1[a2];
      if (a3 == v12)
      {
        break;
      }

LABEL_24:
      v23 = a3 + 1;
      do
      {
        v24 = v10;
        v10 = *(v23 - 1);
        if (v10 != 32 && v10 != 95)
        {
          if (v10 != 45 || (v24 - 48) >= 0xA && (v24 & 0xDFu) - 65 > 0x19)
          {
            goto LABEL_36;
          }

          if (v23 != v12)
          {
            v25 = *v23;
            if ((v25 - 48) >= 0xA && (v25 & 0xFFFFFFDF) - 65 > 0x19)
            {
              a3 = v23 - 1;
              goto LABEL_36;
            }
          }
        }

        ++a3;
        v20 = v23++ == v12;
      }

      while (!v20);
      a3 = v12;
LABEL_36:
      if (a3 == v12)
      {
        break;
      }

      if (v22 == v11)
      {
        goto LABEL_93;
      }

      v26 = *a3;
      if ((v26 - 97) < 0x1A)
      {
        LOBYTE(v26) = v26 - 32;
      }

      v27 = *v22;
      if ((v27 - 97) < 0x1A)
      {
        LOBYTE(v27) = v27 - 32;
      }

      if (v26 != v27)
      {
        goto LABEL_92;
      }

      ++a3;
      v14 = v22 + 1;
      if (v14 != v11)
      {
        goto LABEL_7;
      }
    }

LABEL_89:
    *a6 = v22 - a1;
    return 1;
  }

  while (1)
  {
    if (v14 == v11)
    {
LABEL_62:
      v22 = &a1[a2];
      if (a3 == v12)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v28 = v14 + 1;
      while (1)
      {
        v29 = v13;
        v13 = *(v28 - 1);
        if (v13 != 32 && v13 != 95)
        {
          if (v13 != 45)
          {
            break;
          }

          v30 = (v29 & 0xDF) - 91;
          v31 = v29 - 58;
          v32 = v30 >= 0xFFFFFFE6 || v31 >= 0xFFFFFFF6;
          if (!v32 || v28 == v11)
          {
            break;
          }

          v34 = *v28;
          if ((v34 - 48) >= 0xA && (v34 & 0xFFFFFFDF) - 65 > 0x19)
          {
            break;
          }
        }

        *a7 = v13;
        v20 = v28++ == v11;
        if (v20)
        {
          goto LABEL_62;
        }
      }

      *a7 = v13;
      v22 = v28 - 1;
      if (a3 == v12)
      {
        goto LABEL_89;
      }
    }

    v35 = a3 + 1;
    do
    {
      v36 = v10;
      v10 = *(v35 - 1);
      if (v10 != 32 && v10 != 95)
      {
        if (v10 != 45)
        {
          goto LABEL_78;
        }

        v37 = (v36 & 0xDF) - 91;
        v38 = v36 - 58;
        v39 = v37 >= 0xFFFFFFE6 || v38 >= 0xFFFFFFF6;
        if (!v39 || v35 == v12)
        {
          goto LABEL_78;
        }

        v40 = *v35;
        if ((v40 - 48) >= 0xA && (v40 & 0xFFFFFFDF) - 65 > 0x19)
        {
          a3 = v35 - 1;
          goto LABEL_78;
        }
      }

      ++a3;
      v20 = v35++ == v12;
    }

    while (!v20);
    a3 = v12;
LABEL_78:
    if (a3 == v12)
    {
      goto LABEL_89;
    }

    if (v22 == v11)
    {
      break;
    }

    v41 = *a3;
    if ((v41 - 97) < 0x1A)
    {
      LOBYTE(v41) = v41 - 32;
    }

    v42 = *v22;
    if ((v42 - 97) < 0x1A)
    {
      LOBYTE(v42) = v42 - 32;
    }

    if (v41 != v42)
    {
LABEL_92:
      v11 = v22;
      break;
    }

    ++a3;
    v14 = v22 + 1;
  }

LABEL_93:
  v46 = v11 - a1;
  result = 0;
  *a6 = v46;
  *a7 = v9;
  return result;
}

double llvm::sys::unicode::compareNode(uint64_t a1, unsigned int a2, char *a3, size_t a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v54 = a6;
  if (!a2)
  {
    v18 = 0;
    *(&v51 + 4) = 0x1FFFFFFFFLL;
    BYTE12(v51) = 0;
    v53 = 0uLL;
    *(&v52 + 1) = 0;
    v19 = 1;
    LOBYTE(v51) = 1;
    LODWORD(v52) = 1;
    v50 = 0;
    goto LABEL_21;
  }

  LOBYTE(v51) = 0;
  *(&v51 + 4) = 0xFFFFFFFFLL;
  BYTE12(v51) = 0;
  LODWORD(v52) = 0;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  *(&v53 + 1) = a8;
  if (a2 + 7 < 0x3B252uLL)
  {
    v13 = a2 + 1;
    v14 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + a2);
    v15 = v14;
    v16 = v14 & 0x3F;
    if ((v14 & 0x40) != 0)
    {
      v22 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v13);
      v13 = a2 + 3;
      v17 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + a2 + 2) | (v22 << 8);
    }

    else
    {
      v17 = v14 & 0x3F;
      v16 = 1;
    }

    v20 = &llvm::sys::unicode::UnicodeNameToCodepointDict[v17];
    *(&v52 + 1) = &llvm::sys::unicode::UnicodeNameToCodepointDict[v17];
    *&v53 = v16;
    v23 = v13 + 1;
    v24 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v13);
    if (v15 < 0)
    {
      v25 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v23);
      v23 = v13 + 3;
      v26 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v13 + 2);
      v21 = ((v24 << 16) | (v25 << 8) | v26) >> 3;
      DWORD1(v51) = v21;
      BYTE12(v51) = v26 & 1;
      if ((v26 & 2) == 0)
      {
        v19 = 0;
        goto LABEL_16;
      }

      v27 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v23);
      v23 = v13 + 4;
      v28 = 6;
      v29 = 5;
    }

    else
    {
      BYTE12(v51) = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v13) >> 7;
      if ((v24 & 0x40) == 0)
      {
        v19 = 0;
        v21 = -1;
LABEL_16:
        LODWORD(v52) = v23 - a2;
        goto LABEL_17;
      }

      v27 = v24 & 0x3F;
      v28 = 3;
      v29 = 2;
      v21 = -1;
    }

    v30 = (v27 << 16) | (*(llvm::sys::unicode::UnicodeNameToCodepointIndex + v23) << 8);
    v23 = v28 + v13;
    v31 = *(llvm::sys::unicode::UnicodeNameToCodepointIndex + v29 + v13);
    v19 = v30 | v31;
    DWORD2(v51) = v30 | v31;
    goto LABEL_16;
  }

  v19 = 0;
  v16 = 0;
  v20 = 0;
  v21 = -1;
LABEL_17:
  v50 = 0;
  if (!llvm::sys::unicode::startsWith(a3, a4, v20, v16, a5, &v50, &v54, 0))
  {
    goto LABEL_35;
  }

  v18 = v50;
  if (a4 == v50 && v21 != -1)
  {
    goto LABEL_34;
  }

  if (!v19)
  {
LABEL_35:
    v40 = 0;
    v21 = 0;
    goto LABEL_36;
  }

LABEL_21:
  if (a4 >= v18)
  {
    v32 = v18;
  }

  else
  {
    v32 = a4;
  }

  v33 = a4 - v32;
  v34 = v54;
  llvm::sys::unicode::compareNode(v43, v19, &a3[v32], v33, a5, v34, a7, &v51);
  if ((v48 & 1) == 0)
  {
    v35 = v44;
    v36 = v45;
    while ((v35 & 1) != 0)
    {
      v19 = (v36 + v19);
      llvm::sys::unicode::compareNode(v43, v19, &a3[v32], v33, a5, v34, a7, &v51);
      v36 = v45;
      v35 = v44;
      if (v48 == 1)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_35;
  }

LABEL_28:
  v37 = v47;
  v21 = v49;
  if (v47)
  {
    v38 = a7[1];
    v39 = v46 - 1;
    do
    {
      if ((v38 + 1) > a7[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a7 + v38) = *(v39 + v37);
      v38 = a7[1] + 1;
      a7[1] = v38;
      --v37;
    }

    while (v37);
  }

LABEL_34:
  v40 = 1;
LABEL_36:
  v41 = v52;
  *a1 = v51;
  *(a1 + 16) = v41;
  result = *&v53;
  *(a1 + 32) = v53;
  *(a1 + 48) = v40;
  *(a1 + 52) = v21;
  return result;
}

void llvm::sys::unicode::nearestMatchesForCodepointName(llvm::StringRef,unsigned long)::$_0::operator() const(llvm::sys::unicode::Node const&,unsigned int,char32_t)::{lambda(void)#1}::operator()(std::string *a1, void *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = a1;
    v7 = a2[1];
    memset(&v19, 0, sizeof(v19));
    std::string::reserve(&v19, 0x2EuLL);
    for (; v7; v7 = v7[5])
    {
      v17 = v7[4];
      if (v17)
      {
        v18 = v7[3] - 1;
        do
        {
          std::string::push_back(&v19, *(v18 + v17--));
        }

        while (v17);
      }
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v19;
    }

    else
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v10 = (v8 + size - 1);
    if (size)
    {
      v11 = v10 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = &v8->__r_.__value_.__s.__data_[1];
      do
      {
        v13 = *(v12 - 1);
        *(v12 - 1) = v10->__r_.__value_.__s.__data_[0];
        v10->__r_.__value_.__s.__data_[0] = v13;
        v10 = (v10 - 1);
      }

      while (v12++ < v10);
    }

    v15 = *a2;
    a1 = v6;
    if (*(*a2 + 23) < 0)
    {
      operator delete(*v15);
      a1 = v6;
    }

    v16 = *&v19.__r_.__value_.__l.__data_;
    *(v15 + 16) = *(&v19.__r_.__value_.__l + 2);
    *v15 = v16;
    v3 = *a2;
    if ((*(*a2 + 23) & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  if (!*(v3 + 1))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    v5 = *v3;
    a1->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a1->__r_.__value_.__l.__data_ = v5;
    return;
  }

LABEL_24:
  std::string::__init_copy_ctor_external(a1, *v3, *(v3 + 1));
}

uint64_t llvm::SmallVectorImpl<llvm::sys::unicode::MatchForCodepointName>::insert_one_impl<llvm::sys::unicode::MatchForCodepointName>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a1 + 32 * v6;
  if (v7 == a2)
  {
    if (v6 >= *(a1 + 12))
    {
      if (v5 > a3 || a2 <= a3)
      {
        llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
    }

    v23 = v5 + 32 * *(a1 + 8);
    v24 = *a3;
    *(v23 + 16) = *(a3 + 16);
    *v23 = v24;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(v23 + 24) = *(a3 + 24);
    v25 = (*(a1 + 8) + 1);
    *(a1 + 8) = v25;
    return *a1 + 32 * v25 - 32;
  }

  else
  {
    if (v6 >= *(a1 + 12))
    {
      if (v5 > a3 || v7 <= a3)
      {
        llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::cl::ExpansionContext::expandResponseFiles(llvm::SmallVectorImpl<char const*> &)::ResponseFileRecord,false>::grow();
    }

    v9 = v5 + 32 * *(a1 + 8);
    *v9 = *(v9 - 32);
    v10 = *(v9 - 16);
    v11 = *(v9 - 8);
    *(v9 - 24) = 0;
    *(v9 - 16) = 0;
    *(v9 - 32) = 0;
    *(v9 + 16) = v10;
    *(v9 + 24) = v11;
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *a1 + 32 * v13 - 32;
    if (v14 != a2)
    {
      do
      {
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        *v14 = *(v14 - 32);
        v15 = *(v14 - 16);
        *(v14 - 9) = 0;
        *(v14 - 32) = 0;
        v16 = *(v14 - 8);
        *(v14 + 16) = v15;
        *(v14 + 24) = v16;
        v14 -= 32;
      }

      while (v14 != a2);
      LODWORD(v13) = *(a1 + 8);
      v12 = *a1;
    }

    v17 = (v13 + 1);
    *(a1 + 8) = v17;
    v18 = a3 < v12 + 32 * v17 && a3 >= a2;
    v19 = 32;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = a3 + v19;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v21 = *v20;
    *(a2 + 16) = *(v20 + 16);
    *a2 = v21;
    *(v20 + 23) = 0;
    *v20 = 0;
    *(a2 + 24) = *(v20 + 24);
    return a2;
  }
}

void llvm::VersionTuple::getAsString(llvm::VersionTuple *this@<X0>, void *a2@<X8>)
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
  v3 = &unk_2868A3EF8;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  llvm::operator<<(&v3, this);
  llvm::raw_ostream::~raw_ostream(&v3);
}

llvm::raw_ostream *llvm::operator<<(llvm::raw_ostream *a1, void *a2)
{
  llvm::raw_ostream::operator<<(a1, *a2);
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v4 = a2[1];
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = *(a1 + 4);
    if (v9 >= *(a1 + 3))
    {
      v10 = llvm::raw_ostream::write(a1, 46);
      llvm::raw_ostream::operator<<(v10, v4 & 0x7FFFFFFF);
      v4 = a2[1];
      if ((v4 & 0x8000000000000000) == 0)
      {
        return a1;
      }
    }

    else
    {
      *(a1 + 4) = v9 + 1;
      *v9 = 46;
      llvm::raw_ostream::operator<<(a1, v4 & 0x7FFFFFFF);
      v4 = a2[1];
      if ((v4 & 0x8000000000000000) == 0)
      {
        return a1;
      }
    }

    goto LABEL_13;
  }

  v6 = HIDWORD(*a2) & 0x7FFFFFFFLL;
  v7 = *(a1 + 4);
  if (v7 >= *(a1 + 3))
  {
    v8 = llvm::raw_ostream::write(a1, 46);
    llvm::raw_ostream::operator<<(v8, v6);
    v4 = a2[1];
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 4) = v7 + 1;
    *v7 = 46;
    llvm::raw_ostream::operator<<(a1, v6);
    v4 = a2[1];
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_3:
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1;
  }

LABEL_13:
  v11 = *(a1 + 4);
  if (v11 >= *(a1 + 3))
  {
    v12 = llvm::raw_ostream::write(a1, 46);
  }

  else
  {
    *(a1 + 4) = v11 + 1;
    *v11 = 46;
    v12 = a1;
  }

  llvm::raw_ostream::operator<<(v12, HIDWORD(v4) & 0x7FFFFFFF);
  return a1;
}

uint64_t llvm::VersionTuple::tryParse(unint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  *v23 = 0;
  if (!a3)
  {
    return 1;
  }

  v5 = *a2;
  v3 = a2 + 1;
  v4 = v5;
  if ((v5 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v4 - 48;
  v8 = a3 - 1;
  if (a3 == 1)
  {
    goto LABEL_15;
  }

  v9 = *v3;
  if ((v9 - 58) >= 0xFFFFFFF6)
  {
    while (1)
    {
      v7 = v9 + 10 * v7 - 48;
      if (!--v8)
      {
        break;
      }

      v10 = *++v3;
      v9 = v10;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        goto LABEL_9;
      }
    }

LABEL_15:
    v13 = 0;
    v14 = v7;
LABEL_16:
    *a1 = v14;
    a1[1] = v13;
    return 0;
  }

LABEL_9:
  if (*v3 != 46 || v8 == 1)
  {
    return 1;
  }

  v12 = v3[1];
  if ((v12 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v15 = (v12 - 48);
  v16 = v8 - 2;
  if (v8 == 2)
  {
LABEL_30:
    v13 = 0;
    v14 = v7 | (v15 << 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  v17 = v3 + 2;
  v18 = v3[2];
  if ((v18 - 58) >= 0xFFFFFFF6)
  {
    v19 = 2 - v8;
    while (1)
    {
      v15 = (v18 + 10 * v15 - 48);
      if (v19 == -1)
      {
        goto LABEL_30;
      }

      v20 = *++v17;
      v18 = v20;
      ++v19;
      if ((v20 - 58) < 0xFFFFFFF6)
      {
        v16 = -v19;
        break;
      }
    }
  }

  if (*v17 != 46)
  {
    return 1;
  }

  v21 = a1;
  v24 = v17 + 1;
  v25 = v16 - 1;
  if (parseInt(&v24, &v23[1]))
  {
    return 1;
  }

  if (!v25)
  {
    v14 = v7 | (v15 << 32) | 0x8000000000000000;
    v13 = v23[1] | 0x80000000;
    goto LABEL_32;
  }

  if (*v24 != 46)
  {
    return 1;
  }

  ++v24;
  --v25;
  v22 = parseInt(&v24, v23);
  result = 1;
  if ((v22 & 1) == 0 && !v25)
  {
    v14 = v7 | (v15 << 32) | 0x8000000000000000;
    v13 = v23[1] | (v23[0] << 32) | 0x8000000080000000;
LABEL_32:
    a1 = v21;
    goto LABEL_16;
  }

  return result;
}

uint64_t parseInt(llvm::StringRef *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  if (!v2)
  {
    return 1;
  }

  v3 = *a1;
  v4 = (*a1 + 1);
  v5 = **a1;
  *a1 = v4;
  *(a1 + 1) = v2 - 1;
  if ((v5 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v5 - 48;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = v3 + 2;
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      ++v4;
      *a1 = v8;
      *(a1 + 1) = v9;
      v7 = v10 + 10 * v7 - 48;
      *a2 = v7;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 0;
}

llvm::vfs::Status *llvm::vfs::Status::Status(llvm::vfs::Status *this, const llvm::sys::fs::file_status *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = llvm::sys::fs::file_status::getUniqueID(a2);
  *(this + 4) = v4;
  *(this + 5) = llvm::sys::fs::basic_file_status::getLastModificationTime(a2);
  *(this + 6) = *(a2 + 3);
  *(this + 7) = *(a2 + 4);
  *(this + 8) = *(a2 + 5);
  *(this + 72) = 0;
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = llvm::sys::fs::file_status::getUniqueID(a2);
  *(this + 4) = v4;
  *(this + 5) = llvm::sys::fs::basic_file_status::getLastModificationTime(a2);
  *(this + 6) = *(a2 + 3);
  *(this + 7) = *(a2 + 4);
  *(this + 8) = *(a2 + 5);
  *(this + 72) = 0;
  return this;
}

uint64_t llvm::vfs::Status::Status(uint64_t a1, llvm::formatv_object_base **this, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, int a10)
{
  llvm::Twine::str(this, a1);
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = a9;
  *(a1 + 68) = a10;
  *(a1 + 72) = 0;
  return a1;
}

{
  llvm::Twine::str(this, a1);
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 56) = a8;
  *(a1 + 64) = a9;
  *(a1 + 68) = a10;
  *(a1 + 72) = 0;
  return a1;
}

__n128 llvm::vfs::Status::copyWithNewSize@<Q0>(llvm::vfs::Status *this@<X0>, const llvm::vfs::Status *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 23);
  v6 = *this;
  if (v5 >= 0)
  {
    v6 = this;
  }

  if (v5 < 0)
  {
    v5 = *(this + 1);
  }

  v13 = 261;
  v12[0] = v6;
  v12[1] = v5;
  v11 = *(this + 24);
  v7 = *(this + 5);
  v8 = *(this + 6);
  v9 = *(this + 8);
  llvm::Twine::str(v12, a3);
  result = v11;
  *(a3 + 24) = v11;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = a2;
  *(a3 + 64) = v9;
  *(a3 + 72) = 0;
  return result;
}

__n128 llvm::vfs::Status::copyWithNewName@<Q0>(llvm::vfs::Status *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(this + 24);
  v5 = *(this + 5);
  v6 = *(this + 7);
  v7 = *(this + 8);
  v8 = *(this + 6);
  llvm::Twine::str(a2, a3);
  result = v10;
  *(a3 + 24) = v10;
  *(a3 + 40) = v5;
  *(a3 + 48) = v8;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  return result;
}

void llvm::vfs::Status::copyWithNewName(llvm::vfs::Status *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  UniqueID = llvm::sys::fs::file_status::getUniqueID(this);
  v9 = v8;
  LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(this);
  v11 = *(this + 4);
  v12 = *(this + 5);
  v13 = *(this + 3);
  llvm::Twine::str(a2, a3);
  *(a3 + 24) = UniqueID;
  *(a3 + 32) = v9;
  *(a3 + 40) = LastModificationTime;
  *(a3 + 48) = v13;
  *(a3 + 56) = v11;
  *(a3 + 64) = v12;
  *(a3 + 72) = 0;
}

void llvm::vfs::File::getObjectRefForContent(_BYTE *a1@<X8>)
{
  a1[16] &= ~1u;
  *a1 = 0;
  a1[8] = 0;
}

void *llvm::vfs::FileSystem::getBufferForFile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 48))(v19);
  if (v20)
  {
    v14 = v19[0];
    v15 = v19[1];
    goto LABEL_6;
  }

  if (a6)
  {
    result = (*(*v19[0] + 40))(&v16);
    if (v18)
    {
      v14 = v16;
      v15 = v17;
LABEL_6:
      *(a7 + 16) |= 1u;
      *a7 = v14;
      *(a7 + 8) = v15;
      if (v20)
      {
        return result;
      }

      goto LABEL_10;
    }

    *a6 = v16;
    *(a6 + 8) = v17;
  }

  result = (*(*v19[0] + 32))(v19[0], a2, a3, a4, a5);
  if (v20)
  {
    return result;
  }

LABEL_10:
  result = v19[0];
  v19[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *llvm::vfs::FileSystem::getObjectRefForFileContent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 48))(v6);
  if (v7)
  {
    v4 = v6[0];
    v5 = v6[1];
    *(a2 + 16) |= 1u;
    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    result = (*(*v6[0] + 40))(v6[0]);
    if ((v7 & 1) == 0)
    {
      result = v6[0];
      v6[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unint64_t llvm::vfs::FileSystem::makeAbsolute(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 261;
  v4 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = v4;
  if (llvm::sys::path::is_absolute(v8, 0))
  {
    std::system_category();
    return 0;
  }

  else
  {
    (*(*a1 + 72))(&__p, a1);
    if (v12)
    {
      v6 = __p & 0xFFFFFFFF00000000;
      v7 = __p;
    }

    else
    {
      v9 = 260;
      v8[0] = &__p;
      llvm::sys::fs::make_absolute(v8, a2);
      std::system_category();
      v6 = 0;
      v7 = 0;
      if ((v12 & 1) == 0 && v11 < 0)
      {
        operator delete(__p);
      }
    }

    return v7 | v6;
  }
}

uint64_t llvm::vfs::FileSystem::exists(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(&__p);
  v1 = v7;
  v2 = v6;
  if ((v7 & 1) == 0 && v5 < 0)
  {
    operator delete(__p);
  }

  return (v2 > 1) & ~v1;
}

void llvm::vfs::FileSystem::equivalent(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v17);
  if (v21)
  {
    v6 = v17[0];
    v7 = v17[1];
    *(a3 + 16) |= 1u;
    *a3 = v6;
    *(a3 + 8) = v7;
  }

  else
  {
    (*(*a1 + 40))(__p, a1, a2);
    if (v16)
    {
      v8 = __p[0];
      v9 = __p[1];
      *(a3 + 16) |= 1u;
      *a3 = v8;
      *(a3 + 8) = v9;
    }

    else
    {
      v11 = v19 == v14 && v20 == v15;
      *(a3 + 16) &= ~1u;
      *a3 = v11;
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((v21 & 1) == 0 && v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

uint64_t llvm::vfs::getRealFileSystem@<X0>(void *a1@<X8>)
{
  if (atomic_load_explicit(&qword_27F875608, memory_order_acquire))
  {
    v2 = _MergedGlobals_16;
    *a1 = _MergedGlobals_16;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    result = llvm::vfs::getRealFileSystem();
    v2 = _MergedGlobals_16;
    *a1 = _MergedGlobals_16;
    if (!v2)
    {
      return result;
    }
  }

  atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  return result;
}

atomic_uint **llvm::IntrusiveRefCntPtr<llvm::vfs::FileSystem>::~IntrusiveRefCntPtr(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      return v2;
    }
  }

  return result;
}

double llvm::vfs::OverlayFileSystem::OverlayFileSystem(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = *a2;
  *a1 = &unk_2868A1E18;
  *(a1 + 16) = a1 + 32;
  *a2 = 0;
  *&result = 0x100000001;
  *(a1 + 24) = 0x100000001;
  return result;
}

{
  *(a1 + 8) = 0;
  *(a1 + 32) = *a2;
  *a1 = &unk_2868A1E18;
  *(a1 + 16) = a1 + 32;
  *a2 = 0;
  *&result = 0x100000001;
  *(a1 + 24) = 0x100000001;
  return result;
}

void llvm::vfs::OverlayFileSystem::pushOverlay(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 28))
  {
    if (v2 > a2 || v2 + 8 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::IntrusiveRefCntPtr<llvm::vfs::FileSystem>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::IntrusiveRefCntPtr<llvm::vfs::FileSystem>,false>::grow();
  }

  v4 = *(a1 + 24);
  v5 = *a2;
  *(v2 + 8 * v4) = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    LODWORD(v4) = *(a1 + 24);
  }

  *(a1 + 24) = v4 + 1;
  v6 = *a2;
  (*(*a1 + 72))(__p);
  v9 = 260;
  v8 = __p;
  (*(*v6 + 64))(v6, &v8);
  if ((v12 & 1) == 0 && v11 < 0)
  {
    operator delete(__p[0]);
  }
}

const std::error_category *llvm::vfs::OverlayFileSystem::status@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(a1 + 16) - 8;
  v6 = 8 * *(a1 + 24);
  while (v6)
  {
    result = (*(**(v5 + v6) + 40))(*(v5 + v6), a2);
    if (a3[20])
    {
      v8 = *a3;
      v9 = *(a3 + 1);
      result = std::generic_category();
      v6 -= 8;
      if (v9 == result && v8 == 2)
      {
        continue;
      }
    }

    return result;
  }

  result = std::generic_category();
  *(a3 + 80) |= 1u;
  *a3 = 2;
  *(a3 + 1) = result;
  return result;
}

BOOL llvm::vfs::OverlayFileSystem::exists(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) - 8;
  v4 = 8 * *(a1 + 24);
  do
  {
    v5 = v4;
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v3 + v4) + 96))(*(v3 + v4), a2);
    v4 = v5 - 8;
  }

  while (!v6);
  return v5 != 0;
}

const std::error_category *llvm::vfs::OverlayFileSystem::openFileForRead@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(a1 + 16) - 8;
  v6 = 8 * *(a1 + 24);
  while (v6)
  {
    result = (*(**(v5 + v6) + 48))(*(v5 + v6), a2);
    if (a3[4])
    {
      v8 = *a3;
      v9 = *(a3 + 1);
      result = std::generic_category();
      v6 -= 8;
      if (v9 == result && v8 == 2)
      {
        continue;
      }
    }

    return result;
  }

  result = std::generic_category();
  *(a3 + 16) |= 1u;
  *a3 = 2;
  *(a3 + 1) = result;
  return result;
}

uint64_t llvm::vfs::OverlayFileSystem::setCurrentWorkingDirectory(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 16);
    v5 = 8 * v2;
    while (1)
    {
      result = (*(**v4 + 64))(*v4, a2);
      if (result)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        v7 = result;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_7:
    std::system_category();
    return v7;
  }

  return result;
}

uint64_t llvm::vfs::OverlayFileSystem::isLocal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *(a1 + 16);
    v7 = 8 * v3;
    while (((*(**v6 + 96))(*v6, a2) & 1) == 0)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return (*(**v6 + 104))(*v6, a2, a3);
  }

  else
  {
LABEL_5:
    std::generic_category();
    return 2;
  }
}

uint64_t llvm::vfs::OverlayFileSystem::getRealPath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *(a1 + 16);
    v7 = 8 * v3;
    while (((*(**v6 + 96))(*v6, a2) & 1) == 0)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return (*(**v6 + 80))(*v6, a2, a3);
  }

  else
  {
LABEL_5:
    std::generic_category();
    return 2;
  }
}

uint64_t llvm::vfs::OverlayFileSystem::visitChildFileSystems(uint64_t result, void (*a2)(uint64_t, atomic_uint *), uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    v6 = 8 * v3;
    v7 = *(result + 16) - 8;
    do
    {
      v8 = *(v7 + v6);
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
      }

      a2(a3, v8);
      result = (*(*v8 + 128))(v8, a2, a3);
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        result = (*(*v8 + 8))(v8);
      }

      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void *llvm::vfs::OverlayFileSystem::printImpl(void *result, llvm::raw_ostream *this, int a3, int a4)
{
  LODWORD(v5) = a3;
  v7 = result;
  if (a4)
  {
    v8 = a4;
    do
    {
      while (1)
      {
        v9 = *(this + 4);
        if (*(this + 3) - v9 > 1uLL)
        {
          break;
        }

        result = llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v8)
        {
          goto LABEL_6;
        }
      }

      *v9 = 8224;
      *(this + 4) += 2;
      --v8;
    }

    while (v8);
  }

LABEL_6:
  v10 = *(this + 4);
  if ((*(this + 3) - v10) > 0x11)
  {
    *(v10 + 16) = 2669;
    *v10 = *"OverlayFileSystem\n";
    *(this + 4) += 18;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "OverlayFileSystem\n", 0x12uLL);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  v11 = *(v7 + 24);
  if (v11)
  {
    v12 = *(v7 + 16);
    v13 = 8 * v11;
    v14 = v12 - 8;
    do
    {
      result = (*(**(v14 + v13) + 136))(*(v14 + v13), this, v5, (a4 + 1));
      v13 -= 8;
    }

    while (v13);
  }

  return result;
}

void llvm::vfs::detail::DirIterImpl::~DirIterImpl(void **this)
{
  *this = &unk_2868A1EB8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *llvm::vfs::directory_iterator::directory_iterator(void *result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(*result + 16);
  if (*(*result + 31) >= 0)
  {
    v2 = *(*result + 31);
  }

  if (!v2)
  {
    v3 = result[1];
    *result = 0;
    result[1] = 0;
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t std::shared_ptr<llvm::vfs::detail::DirIterImpl>::~shared_ptr[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void llvm::vfs::detail::NewInMemoryNodeInfo::makeStatus(llvm::vfs::detail::NewInMemoryNodeInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(this + 18);
  v7 = *(this + 1);
  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v6 == 3)
  {
    v10 = llvm::hash_value(v8, v9);
    v11 = __ROR8__(v10 + 16, 16);
    v12 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v11)))) >> 47))) ^ v10;
  }

  else
  {
    v13 = *(this + 7);
    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 16) - v14;
    }

    else
    {
      v15 = 0;
      v14 = "";
    }

    memset(v23, 0, sizeof(v23));
    v24 = 0xFF51AFD7ED558CCDLL;
    v20 = v7;
    v21 = llvm::hash_value(v8, v9);
    v22 = llvm::hash_value(v14, v15);
    v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v20, 0, v23, &v23[2] + 8);
  }

  WORD4(v23[0]) = 261;
  v16 = *(this + 3);
  v20 = *(this + 2);
  v21 = v16;
  v17 = 1000000000 * (std::chrono::system_clock::from_time_t(*(this + 6)).__d_.__rep_ / 1000000);
  v18 = *(this + 8);
  v19 = *(this + 9);
  llvm::Twine::str(&v20, a3);
  *(a3 + 24) = -1;
  *(a3 + 32) = v12;
  *(a3 + 40) = v17;
  *(a3 + 48) = v18;
  *(a3 + 56) = a2;
  *(a3 + 64) = v19;
  *(a3 + 72) = 0;
}