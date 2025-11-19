void re::RenderThread::join(re::RenderThread *this)
{
  if (*(this + 16) == 1)
  {
    v5 = v1;
    v6 = v2;
    if ((*(this + 18) & 1) == 0)
    {
      *(this + 18) = 1;
      v4 = 1;
      re::EventQueue::postEvent(this + 6, &v4, 4uLL);
      re::internal::AutoResetEvent::set((this + 320));
      std::thread::join(this);
    }
  }
}

void re::RenderThread::deinit(re::RenderThread *this)
{
  if (*(this + 16) == 1)
  {
    re::internal::AutoResetEvent::set((this + 320));
    re::RenderThread::waitForIdleInternal(this);
    re::RenderThread::waitForCallbacksCompletion(this);
    re::RenderThread::join(this);
    *(this + 1) = 0;
    *(this + 16) = 0;
  }
}

void re::RenderThread::waitForCallbacksCompletion(re::RenderThread *this)
{
  v3.__m_ = (this + 208);
  v3.__owns_ = 1;
  std::mutex::lock((this + 208));
  v2 = *(this + 22);
  while (*(this + 24) < v2 || *(this + 25) < v2)
  {
    std::condition_variable::wait((this + 272), &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void re::RenderThread::commitFrame(uint64_t a1, int a2, re::RenderFrameWorkload *a3)
{
  if (*(a1 + 16) == 1)
  {
    v33 = v3;
    v34 = v4;
    v28 = 0;
    v8 = *(a1 + 8);
    v9 = *(v8 + 144);
    v10 = *(v9 + 3) & 0xFFFFFFFFFFFFFFFLL;
    v29 = v10 | (*(v9 + 2) << 60);
    v11 = *(v8 + 112);
    if (v11)
    {
      v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
      v9 = *(*(a1 + 8) + 144);
    }

    else
    {
      v12 = 0;
    }

    v30 = v12;
    v31 = a2;
    v32 = a3;
    FrameRefCount = re::FrameManager::getFrameRefCount(v9, v10);
    if (FrameRefCount)
    {
      atomic_fetch_add(FrameRefCount + 32, 1u);
      v12 = v30;
      v10 = v29 & 0xFFFFFFFFFFFFFFFLL;
    }

    v14 = v12[52];
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if (v10 != (v14 & 0xFFFFFFFFFFFFFFFLL))
    {
      v16 = re::FrameManager::getFrameRefCount(v9, v14 & 0xFFFFFFFFFFFFFFFLL);
      if (v16)
      {
        atomic_fetch_add(v16 + 32, 1u);
        v12 = v30;
      }
    }

    if (v12[539])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if ([*(v12[541] + v17) commandBuffer])
        {
          v19 = v29 & 0xFFFFFFFFFFFFFFFLL;
          v20 = re::FrameManager::getFrameRefCount(v9, v29 & 0xFFFFFFFFFFFFFFFLL);
          if (v20)
          {
            atomic_fetch_add(v20 + 32, 1u);
            v19 = v29 & 0xFFFFFFFFFFFFFFFLL;
          }

          if (v19 != v15)
          {
            v21 = re::FrameManager::getFrameRefCount(*(*(a1 + 8) + 144), v15);
            if (v21)
            {
              atomic_fetch_add(v21 + 32, 1u);
            }
          }
        }

        ++v18;
        v12 = v30;
        v17 += 24;
      }

      while (v30[539] > v18);
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v27, 1506, *(a1 + 8));
    re::internal::AutoResetEvent::set((a1 + 320));
    re::RenderThread::waitForIdleInternal(a1);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v27);
    re::EventQueue::postEvent((a1 + 24), &v28, 0x28uLL);
    atomic_fetch_add((a1 + 176), 1uLL);
    if (*(a3 + 296))
    {
      v22 = *(a1 + 168);
      v23 = atomic_load((a1 + 176));
      *(a1 + 160) = v22;
      *(a1 + 168) = v23;
    }

    re::internal::AutoResetEvent::set((a1 + 320));
    if (a2 == 2)
    {
      re::RenderThread::waitForIdleInternal(a1);
      v24 = *(*(a1 + 8) + 112);
      if (v24)
      {
        v25 = *(v24 + 1792);
      }

      else
      {
        v25 = 0.0;
      }

      re::RenderFrameWorkload::immediatePresentDrawables(a3, 1.0 / v25);
    }

    v26 = *(*(a1 + 8) + 112);
    if (!v26 || (*(*(v26 + 256) + 315) & 1) == 0)
    {
      re::RenderThread::waitForFramePacing(a1);
    }

    if (a2 == 1 || (*(a1 + 17) & 1) != 0)
    {
      re::RenderThread::waitForIdleInternal(a1);
    }
  }
}

void re::RenderThread::waitForIdleInternal(re::RenderThread *this)
{
  m = (this + 208);
  v3.__m_ = (this + 208);
  v3.__owns_ = 1;
  std::mutex::lock((this + 208));
  if (*(this + 23) >= *(this + 22))
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((this + 272), &v3);
  }

  while (*(this + 23) < *(this + 22));
  if (v3.__owns_)
  {
    m = v3.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }
}

void re::RenderThread::waitForFramePacing(re::RenderThread *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v28, 1508, *(this + 1));
  v2 = *(*(this + 1) + 112);
  if (v2)
  {
    v3 = *(v2 + 1648);
  }

  else
  {
    v3 = 0;
  }

  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  *(v3 + 272) = std::chrono::steady_clock::now();
  *(v3 + 288) = 1;
  v4 = mach_absolute_time();
  __lk.__m_ = (this + 208);
  __lk.__owns_ = 1;
  std::mutex::lock((this + 208));
  v5 = 0.0;
  while (1)
  {
    v6 = *(this + 24);
    v7 = *(this + 20);
    if (v6 >= v7)
    {
      break;
    }

    std::chrono::steady_clock::now();
    v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v9.__d_.__rep_ = 8000000;
    if (v8.__d_.__rep_)
    {
      if (v8.__d_.__rep_ < 1)
      {
        if (v8.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          v9.__d_.__rep_ = 1000 * v8.__d_.__rep_ + 8000000;
        }

        else
        {
          v9.__d_.__rep_ = 0x80000000007A1200;
        }
      }

      else if (v8.__d_.__rep_ < 0x20C49BA5E334B8)
      {
        v9.__d_.__rep_ = 1000 * v8.__d_.__rep_ + 8000000;
      }

      else
      {
        v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    std::condition_variable::__do_timed_wait((this + 272), &__lk, v9);
    std::chrono::steady_clock::now();
    v10 = mach_absolute_time();
    v11 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale >= 0.0)
    {
      goto LABEL_18;
    }

    if (!mach_timebase_info(&info))
    {
      LODWORD(v12) = info.numer;
      LODWORD(v13) = info.denom;
      v11 = v12 / v13;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v11;
LABEL_18:
      v14 = v11 * (v10 - v4);
      goto LABEL_19;
    }

    v14 = NAN;
LABEL_19:
    v15 = v14 / 1000000.0;
    v5 = v5 + v15;
    v4 = v10;
    if (v5 > 100.0)
    {
      goto LABEL_22;
    }
  }

  v10 = v4;
LABEL_22:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v6 >= v7)
  {
    __lk.__m_ = (this + 208);
    __lk.__owns_ = 1;
    std::mutex::lock((this + 208));
    while (1)
    {
      if (*(this + 25) >= *(this + 20))
      {
LABEL_41:
        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        goto LABEL_43;
      }

      std::chrono::steady_clock::now();
      v16.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v17.__d_.__rep_ = 8000000;
      if (v16.__d_.__rep_)
      {
        if (v16.__d_.__rep_ < 1)
        {
          if (v16.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            v17.__d_.__rep_ = 1000 * v16.__d_.__rep_ + 8000000;
          }

          else
          {
            v17.__d_.__rep_ = 0x80000000007A1200;
          }
        }

        else if (v16.__d_.__rep_ < 0x20C49BA5E334B8)
        {
          v17.__d_.__rep_ = 1000 * v16.__d_.__rep_ + 8000000;
        }

        else
        {
          v17.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      std::condition_variable::__do_timed_wait((this + 272), &__lk, v17);
      std::chrono::steady_clock::now();
      v18 = mach_absolute_time();
      v19 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale >= 0.0)
      {
        goto LABEL_39;
      }

      if (!mach_timebase_info(&info))
      {
        break;
      }

      v22 = NAN;
LABEL_40:
      v23 = v22 / 1000000.0;
      v5 = v5 + v23;
      v10 = v18;
      if (v5 > 100.0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v20) = info.numer;
    LODWORD(v21) = info.denom;
    v19 = v20 / v21;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v19;
LABEL_39:
    v22 = v19 * (v18 - v10);
    goto LABEL_40;
  }

LABEL_43:
  v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v25 = 0x41CDCD6500000000;
  LOBYTE(v25) = *(v3 + 288);
  v26 = (*(v3 + 280) + (v24.__d_.__rep_ - *(v3 + 272)) / 1000000000.0 * v25) * 1000.0;
  *(v3 + 240) = v26;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v28);
}

void re::RenderThread::workloadGPUCompleted(re::RenderThread *this)
{
  std::mutex::lock((this + 208));
  atomic_fetch_add(this + 24, 1uLL);
  std::condition_variable::notify_one((this + 272));

  std::mutex::unlock((this + 208));
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),re::RenderThread *>>(uint64_t a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),re::RenderThread *>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),re::RenderThread *>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1E6906520](v3, 0xA0C40A8488062);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E69061A0]();
    MEMORY[0x1E6906520](v3, 0x20C4093837F09);
  }

  return a1;
}

__n128 std::__function::__func<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0,std::allocator<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0A240;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0,std::allocator<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(v3 + 8) + 112);
  *(v2 + 8) = *(v2 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v2) / 1000000000.0;
  *(v2 + 16) = 0;
  re::DrawingManager::waitForGPUInternal(v4);
  v5 = *(a1 + 40);
  *v5 = std::chrono::steady_clock::now();
  *(v5 + 16) = 1;
  v6 = re::RenderFrameBox::get((v4 + 328), *(a1 + 32));
  FrameRefCount = re::FrameManager::getFrameRefCount(*(*(v3 + 8) + 144), *(a1 + 32) & 0xFFFFFFFFFFFFFFFLL);
  if (FrameRefCount)
  {
    atomic_fetch_add(FrameRefCount + 32, 1u);
  }

  v8 = *(v6 + 416) & 0xFFFFFFFFFFFFFFFLL;
  if ((*(a1 + 32) & 0xFFFFFFFFFFFFFFFLL) != v8)
  {
    v9 = re::FrameManager::getFrameRefCount(*(*(v3 + 8) + 144), v8);
    if (v9)
    {
      atomic_fetch_add(v9 + 32, 1u);
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v10 = *(a1 + 40);
  *(v10 + 8) = *(v10 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v10) / 1000000000.0;
  *(v10 + 16) = 0;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v30);
  re::RenderFrame::acquireDrawables(v6, &v21);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)11>::end(v30);
  v11 = *(a1 + 40);
  *v11 = std::chrono::steady_clock::now();
  *(v11 + 16) = 1;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v20, 5004, *(v3 + 8));
  re::DrawingManager::executeFrameInternal(v4, *(a1 + 24));
  v12 = re::globalAllocators((*(a1 + 24) + 8))[2];
  v31 = v12;
  v32 = v30;
  v30[0] = &unk_1F5D0A2B0;
  v30[1] = v3;
  v13 = v22;
  if (v22)
  {
    v14 = v23;
    while (!*v14)
    {
      ++v14;
      if (!--v13)
      {
        goto LABEL_12;
      }
    }

    v28 = v12;
    v29 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(v27, v30);
    re::mtl::Drawable::addPresentedHandler(v14, v27);
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(v27);
    **(a1 + 8) = 0;
  }

LABEL_12:
  v15 = *(a1 + 24);
  if (**(a1 + 8) == 1 && v15[40])
  {
    v16 = v15[42];
    v25 = v31;
    v26 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::operator=<24ul>(v24, v30);
    re::mtl::Drawable::addPresentedHandler(v16, v24);
    re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(v24);
    **(a1 + 8) = 0;
    v15 = *(a1 + 24);
  }

  re::DrawingManager::presentDrawablesAndCommit(v4, &v21, *(a1 + 16), v15);

  if (*(a1 + 16) == 1)
  {
    re::RenderFrame::onFrameComplete(v6);
  }

  v17 = re::FrameManager::getFrameRefCount(*(*(v3 + 8) + 144), *(a1 + 32) & 0xFFFFFFFFFFFFFFFLL);
  if (v17)
  {
    atomic_fetch_add(v17 + 32, 0xFFFFFFFF);
  }

  if ((*(a1 + 32) & 0xFFFFFFFFFFFFFFFLL) != v8)
  {
    v18 = re::FrameManager::getFrameRefCount(*(*(v3 + 8) + 144), v8);
    if (v18)
    {
      atomic_fetch_add(v18 + 32, 0xFFFFFFFF);
    }
  }

  re::FunctionBase<24ul,void ()(re::mtl::Drawable const&)>::destroyCallable(v30);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v20);
  return re::FixedArray<re::mtl::Drawable>::deinit(&v21);
}

uint64_t std::__function::__func<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0,std::allocator<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::internal::Callable<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0::operator() const(void)::{lambda(re::mtl::Drawable)#1},void ()(re::mtl::Drawable const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 208));
  atomic_fetch_add((v3 + 200), 1uLL);
  std::condition_variable::notify_one((v3 + 272));
  std::mutex::unlock((v3 + 208));
}

void *re::internal::Callable<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0::operator() const(void)::{lambda(re::mtl::Drawable)#1},void ()(re::mtl::Drawable const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0A2B0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderThread::doRender(re::WorkloadCommitMode,re::RenderFrameWorkload *,re::FrameCount)::$_0::operator() const(void)::{lambda(re::mtl::Drawable)#1},void ()(re::mtl::Drawable const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0A2B0;
  a2[1] = v2;
  return a2;
}

void re::APIFunctionCache::init(uint64_t a1, id *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = mach_absolute_time();
  for (i = 0; i != 12; ++i)
  {
    v6 = realitykit_shader_api::textureFunctions[i];
    v7 = *a2;
    v51 = v7;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v6, &v51);
  }

  for (j = 0; j != 9; ++j)
  {
    v9 = realitykit_shader_api::materialFunctions[j];
    v10 = *a2;
    v50 = v10;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v9, &v50);
  }

  for (k = 0; k != 48; ++k)
  {
    v12 = realitykit_shader_api::geometry_modifierFunctions[k];
    v13 = *a2;
    v49 = v13;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v12, &v49);
  }

  for (m = 0; m != 55; ++m)
  {
    v15 = realitykit_shader_api::surfaceFunctions[m];
    v16 = *a2;
    v48 = v16;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v15, &v48);
  }

  for (n = 0; n != 57; ++n)
  {
    v18 = realitykit_shader_api::geometry_modifier_privateFunctions[n];
    v19 = *a2;
    v47 = v19;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v18, &v47);
  }

  for (ii = 0; ii != 74; ++ii)
  {
    v21 = realitykit_shader_api::surface_privateFunctions[ii];
    v22 = *a2;
    v46 = v22;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v21, &v46);
  }

  for (jj = 0; jj != 13; ++jj)
  {
    v24 = realitykit_shader_api::ui_geometry_modifier_privateFunctions[jj];
    v25 = *a2;
    v45 = v25;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v24, &v45);
  }

  for (kk = 0; kk != 22; ++kk)
  {
    v27 = realitykit_shader_api::uisurface_privateFunctions[kk];
    v28 = *a2;
    v44 = v28;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v27, &v44);
  }

  for (mm = 0; mm != 2; ++mm)
  {
    v30 = realitykit_shader_api::texture_privateFunctions[mm];
    v31 = *a2;
    v43 = v31;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v30, &v43);
  }

  for (nn = 0; nn != 2; ++nn)
  {
    v33 = realitykit_shader_api::material_privateFunctions[nn];
    v34 = *a2;
    v42 = v34;
    re::APIFunctionCache::gatherFunctionConstantReflectionData(a1, v33, &v42);
  }

  v35 = mach_absolute_time();
  v36 = v35;
  v37 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v35 = mach_timebase_info(&info);
    if (v35)
    {
      v40 = NAN;
      goto LABEL_26;
    }

    LODWORD(v38) = info.numer;
    LODWORD(v39) = info.denom;
    v37 = v38 / v39;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v37;
  }

  v40 = v37 * (v36 - v4);
LABEL_26:
  v41 = *re::graphicsLogObjects(v35);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    info.numer = 67109120;
    info.denom = (v40 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "API function cache initialized in %d", &info, 8u);
  }
}

void re::APIFunctionCache::gatherFunctionConstantReflectionData(uint64_t a1, re::mtl *a2, void **a3)
{
  v41 = *MEMORY[0x1E69E9840];
  re::mtl::Library::makeFunction(a3, a2, &v34);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v33 = 0x7FFFFFFFLL;
  v5 = strlen(a2);
  if (v5)
  {
    MurmurHash3_x64_128(a2, v5, 0, &v37);
    v6 = (*(&v37 + 1) + (v37 << 6) + (v37 >> 2) - 0x61C8864680B583E9) ^ v37;
  }

  else
  {
    v6 = 0;
  }

  v29 = v6;
  v7 = v34;
  if ([objc_msgSend(v34 functionConstantsDictionary)])
  {
    v8 = [v7 functionConstantsDictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v40 = 0x7FFFFFFFLL;
    v9 = [v8 keyEnumerator];
    v10 = [v9 nextObject];
    if (v10)
    {
      v11 = v10;
      do
      {
        v36 = [v11 UTF8String];
        v35 = [v8 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v37, &v36, &v35);
        if (v35)
        {
        }

        v11 = [v9 nextObject];
      }

      while (v11);
      v12 = v39;
      if (v39)
      {
        v13 = 0;
        v14 = v38;
        v15 = v38;
        while (1)
        {
          v16 = *v15;
          v15 += 8;
          if (v16 < 0)
          {
            break;
          }

          if (v39 == ++v13)
          {
            LODWORD(v13) = v39;
            break;
          }
        }

        if (v39 != v13)
        {
          do
          {
            v17 = [*(v14 + 32 * v13 + 16) index];
            LOWORD(v36) = v17;
            v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v17) ^ ((0xBF58476D1CE4E5B9 * v17) >> 27));
            v19 = v18 ^ (v18 >> 31);
            if (DWORD2(v31))
            {
              v20 = v19 % DWORD2(v31);
              v21 = *(*(&v30 + 1) + 4 * v20);
              if (v21 != 0x7FFFFFFF)
              {
                while (*(v31 + 16 * v21 + 12) != v17)
                {
                  v21 = *(v31 + 16 * v21 + 8) & 0x7FFFFFFF;
                  if (v21 == 0x7FFFFFFF)
                  {
                    goto LABEL_22;
                  }
                }

                goto LABEL_23;
              }
            }

            else
            {
              LODWORD(v20) = 0;
            }

LABEL_22:
            re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(&v30, v20, v19, &v36, &v36);
            ++HIDWORD(v33);
LABEL_23:
            if (v39 <= v13 + 1)
            {
              v22 = v13 + 1;
            }

            else
            {
              v22 = v39;
            }

            v14 = v38;
            while (v22 - 1 != v13)
            {
              LODWORD(v13) = v13 + 1;
              if ((*(v38 + 32 * v13) & 0x80000000) != 0)
              {
                goto LABEL_31;
              }
            }

            LODWORD(v13) = v22;
LABEL_31:
            ;
          }

          while (v13 != v12);
        }
      }
    }

    re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v37);
  }

  else
  {
    v23 = re::globalAllocators(0);
    v24 = (*(*v23[2] + 32))(v23[2], 16, 8);
    *v24 = 0;
    *(v24 + 8) = 0;
    *&v37 = v24;
    NS::SharedPtr<MTL::Buffer>::operator=((v24 + 8), &v34);
    atomic_store(2u, v24);
    re::HashTable<unsigned long,re::CachedAPIFunction *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a1, &v29, &v37);
  }

  if (*(a1 + 48))
  {
    v25 = v6 % *(a1 + 72);
    v26 = *(*(a1 + 56) + 4 * v25);
    if (v26 != 0x7FFFFFFF)
    {
      v27 = *(a1 + 64);
      if (*(v27 + (v26 << 6) + 8) == v6)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v26 = *(v27 + (v26 << 6)) & 0x7FFFFFFF;
        if (v26 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v27 + (v26 << 6) + 8) == v6)
        {
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v28 = re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1 + 48, v25, v6);
  *(v28 + 8) = v6;
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::HashSetBase(v28 + 16, &v30);
  ++*(a1 + 88);
LABEL_42:
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&v30);
  if (v34)
  {
  }
}

re *re::APIFunctionCache::deinit(re *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 2);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v6 = *(v1 + 2) + 24 * v3;
    v9 = *(v6 + 16);
    v7 = (v6 + 16);
    v8 = v9;
    do
    {
      __ulock_wait();
      v10 = atomic_load(v8);
    }

    while (v10 == 1);
    this = re::internal::destroyPersistent<re::CachedAPIFunction>("deinit", 60, *v7);
    v11 = *(v1 + 8);
    if (v11 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    while (v11 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(v1 + 2) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v3) = v11;
LABEL_16:
    ;
  }

  return this;
}

re *re::internal::destroyPersistent<re::CachedAPIFunction>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    v5 = *(a3 + 8);
    if (v5)
    {

      *(a3 + 8) = 0;
    }

    v6 = *(*v4 + 40);

    return v6(v4, a3);
  }

  return result;
}

double re::APIFunctionCache::getOrCreateAPIFunction(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, dispatch_group_t *a7, int a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v78 = *MEMORY[0x1E69E9840];
  v17 = strlen(__s);
  if (v17)
  {
    MurmurHash3_x64_128(__s, v17, 0, &v73);
    v18 = (*(&v73 + 1) - 0x61C8864680B583E9 + (v73 << 6) + (v73 >> 2)) ^ v73;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0x7FFFFFFFLL;
  if (*(a1 + 48))
  {
    v20 = *(*(a1 + 56) + 4 * (v18 % *(a1 + 72)));
    if (v20 != 0x7FFFFFFF)
    {
      v21 = *(a1 + 64);
      v19 = 0x7FFFFFFFLL;
      while (*(v21 + (v20 << 6) + 8) != v18)
      {
        v20 = *(v21 + (v20 << 6)) & 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

      v19 = v20;
    }
  }

LABEL_11:
  v22 = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::HashSetBase(v60, *(a1 + 64) + (v19 << 6) + 16);
  if (!v61)
  {
    v41 = 0x7FFFFFFFLL;
    if (*a1)
    {
      v42 = *(*(a1 + 8) + 4 * (v18 % *(a1 + 24)));
      if (v42 != 0x7FFFFFFF)
      {
        v43 = *(a1 + 16);
        v41 = 0x7FFFFFFFLL;
        while (*(v43 + 24 * v42 + 8) != v18)
        {
          v42 = *(v43 + 24 * v42) & 0x7FFFFFFF;
          if (v42 == 0x7FFFFFFF)
          {
            goto LABEL_44;
          }
        }

        v41 = v42;
      }
    }

LABEL_44:
    v50 = *(a10 + 8);
    if (v50 > a11)
    {
      v51 = *(*(a1 + 16) + 24 * v41 + 16);
      v52 = (*(a10 + 16) + 8 * a11);
      goto LABEL_46;
    }

    v62 = 0;
    v49 = v66;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v66 = 136315906;
    *&v66[4] = "operator[]";
    v67 = 1024;
    v68 = 468;
    v69 = 2048;
    v70 = a11;
    v71 = 2048;
    v72 = v50;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v62 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v66 = 136315906;
    *&v66[4] = "operator[]";
    v67 = 1024;
    v68 = 468;
    v69 = 2048;
    v70 = v49;
    v71 = 2048;
    v72 = v50;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v55 = a8;
  v23 = 0;
  if (a5)
  {
    v24 = (a4 + 34);
    v25 = 104 * a5;
    do
    {
      v22 = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(v60, v24);
      if (v22)
      {
        v26 = 0xBF58476D1CE4E5B9 * (*(v24 + 1) ^ (*(v24 + 1) >> 30));
        v27 = (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31);
        v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v24) ^ ((0xBF58476D1CE4E5B9 * *v24) >> 27));
        v23 ^= v27 ^ ((v28 ^ (v28 >> 31)) - 0x61C8864680B583E9 + (v27 << 6) + (v27 >> 2));
      }

      v24 += 52;
      v25 -= 104;
    }

    while (v25);
  }

  v29 = ((v18 << 6) - 0x61C8864680B583E9 + (v18 >> 2) + v23) ^ v18;
  v59 = v29;
  if (!*a1 || (v30 = *(*(a1 + 8) + 4 * (v29 % *(a1 + 24))), v30 == 0x7FFFFFFF))
  {
LABEL_22:
    v32 = re::globalAllocators(v22);
    v33 = (*(*v32[2] + 32))(v32[2], 16, 8);
    *v33 = 0;
    *(v33 + 8) = 0;
    *&v73 = v33;
    atomic_store(1u, v33);
    re::HashTable<unsigned long,re::CachedAPIFunction *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(a1, &v59, &v73);
    v54 = 0;
  }

  else
  {
    v31 = *(a1 + 16);
    while (*(v31 + 24 * v30 + 8) != v29)
    {
      v30 = *(v31 + 24 * v30) & 0x7FFFFFFF;
      if (v30 == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }
    }

    v45 = v31 + 24 * v30;
    v47 = *(v45 + 16);
    v46 = (v45 + 16);
    v48 = atomic_load(v47);
    if (v48 == 2)
    {
      v49 = a11;
      v50 = *(a10 + 8);
      if (v50 > a11)
      {
        v51 = *v46;
        v52 = (*(a10 + 16) + 8 * a11);
LABEL_46:
        NS::SharedPtr<MTL::Buffer>::operator=(v52, (v51 + 8));
        return re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v60);
      }

      goto LABEL_50;
    }

    v33 = *v46;
    v54 = 1;
  }

  v34 = mach_absolute_time();
  *&v73 = *(a3 + 360);
  re::ShaderManager::makeFunctionDescriptor(a3, __s, a6, &v73, *(a3 + 368), v66);
  dispatch_group_enter(*a7);
  *&v58.var0 = 0;
  v58.var1 = &str_67;
  v36 = v73;
  v37 = *v66;
  v38 = *a7;
  v39 = re::globalAllocators(v38)[2];
  v64 = v39;
  if (v39)
  {
    v40 = (*(*v39 + 32))(v39, 104, 0);
  }

  else
  {
    v40 = 0;
  }

  *v40 = &unk_1F5D0A328;
  *(v40 + 8) = v36;
  *(v40 + 16) = v37;
  *(v40 + 24) = a10;
  *(v40 + 32) = a11;
  *(v40 + 40) = v34;
  *(v40 + 48) = __s;
  *(v40 + 56) = a9;
  *(v40 + 64) = v55;
  *(v40 + 72) = v38;
  *(v40 + 80) = v33;
  *(v40 + 88) = v54;
  *(v40 + 96) = v23;
  v65 = v40;
  re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(a3, v55, a9, 5, &v58, v63);
  v44 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v63);
  if (v37)
  {
  }

  if (*&v58.var0)
  {
    if (*&v58.var0)
    {
    }
  }

  *&v58.var0 = 0;
  v58.var1 = &str_67;
  if (*v66)
  {
  }

  return re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v60);
}

uint64_t re::HashTable<unsigned long,re::CachedAPIFunction *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  if (*result)
  {
    v7 = v6 % *(result + 24);
    v8 = *(*(result + 8) + 4 * v7);
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(result + 16);
      if (*(v9 + 24 * v8 + 8) == v6)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v8) = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 24 * v8 + 8) == v6)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  result = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(result, v7, v6);
  v10 = *a3;
  *(result + 8) = *a2;
  *(result + 16) = v10;
  ++*(v5 + 40);
  return result;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(a1, v4, v5);
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::internal::Callable<re::APIFunctionCache::getOrCreateAPIFunction(char const*,re::ShaderManager const*,re::Slice<re::TechniqueFunctionConstant>,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D0A328;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  return a1;
}

void re::internal::Callable<re::APIFunctionCache::getOrCreateAPIFunction(char const*,re::ShaderManager const*,re::Slice<re::TechniqueFunctionConstant>,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D0A328;

  v2 = *(a1 + 16);
  if (v2)
  {

    *(a1 + 16) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::APIFunctionCache::getOrCreateAPIFunction(char const*,re::ShaderManager const*,re::Slice<re::TechniqueFunctionConstant>,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v2 = mach_absolute_time();
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 80);
    do
    {
      __ulock_wait();
      v4 = atomic_load(v3);
    }

    while (v4 == 1);
  }

  else
  {
    re::mtl::Library::makeFunctionWithDescriptor((a1 + 8), *(a1 + 16), v20);
    NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 80) + 8), v20);
    atomic_store(2u, *(a1 + 80));
    __ulock_wake();
    if (v20[0])
    {
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (*(v5 + 8) <= v6)
  {
    v21 = 0u;
    v22 = 0u;
    memset(v20, 0, sizeof(v20));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  NS::SharedPtr<MTL::Buffer>::operator=((*(v5 + 16) + 8 * v6), (*(a1 + 80) + 8));
  dispatch_group_leave(*(a1 + 72));
  v7 = mach_absolute_time();
  v8 = re::internal::enableSignposts(0, 0);
  if (v8)
  {
    v8 = kdebug_trace();
  }

  v9 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v8 = mach_timebase_info(v20);
    if (v8)
    {
      v9 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
      v12 = NAN;
      goto LABEL_17;
    }

    LODWORD(v11) = HIDWORD(v20[0]);
    LODWORD(v10) = v20[0];
    v9 = v10 / v11;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v9;
  }

  v12 = v9 * (v7 - v2);
LABEL_17:
  v13 = *(a1 + 40);
  if (v9 < 0.0)
  {
    v8 = mach_timebase_info(v20);
    if (v8)
    {
      v16 = NAN;
      goto LABEL_22;
    }

    LODWORD(v15) = HIDWORD(v20[0]);
    LODWORD(v14) = v20[0];
    v9 = v14 / v15;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v9;
  }

  v16 = v9 * (v7 - v13);
LABEL_22:
  v17 = *re::graphicsLogObjects(v8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 96);
    LODWORD(v20[0]) = 136446978;
    *(v20 + 4) = v18;
    WORD2(v20[1]) = 2048;
    *(&v20[1] + 6) = v19;
    HIWORD(v20[2]) = 1024;
    LODWORD(v20[3]) = (v12 / 1000000.0);
    WORD2(v20[3]) = 1024;
    *(&v20[3] + 6) = (v16 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "API function compilation completed for %{public}s %zu in %d (elapsed %d)", v20, 0x22u);
  }
}

uint64_t re::internal::Callable<re::APIFunctionCache::getOrCreateAPIFunction(char const*,re::ShaderManager const*,re::Slice<re::TechniqueFunctionConstant>,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0A328;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 49);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 49) = v5;
  *(a2 + 40) = v4;
  *(a2 + 72) = *(a1 + 72);
  v6 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v6;
  return a2;
}

uint64_t re::internal::Callable<re::APIFunctionCache::getOrCreateAPIFunction(char const*,re::ShaderManager const*,re::Slice<re::TechniqueFunctionConstant>,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D0A328;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  v6 = *(a1 + 49);
  v7 = *(a1 + 40);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v7;
  *(a2 + 49) = v6;
  v8 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a2 + 72) = v8;
  v9 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v9;
  return a2;
}

uint64_t re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 1) % *(a1 + 24));
                v20 = *(v18 - 1);
                *(v19 + 16) = 0u;
                v19 += 16;
                *(v19 - 8) = v20;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v19, v18);
              }

              ++v17;
              v18 += 8;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + (v4 << 6));
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + (v4 << 6));
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v4 << 6;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + (v4 << 6);
}

uint64_t re::packingCompressionIndex(char a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _DWORD *a7, int *a8)
{
  v14 = 0;
  *a7 = 0;
  *a8 = 0;
  if (a1)
  {
    v15 = a2;
    re::sizeFromVertexFormat(a2, a2);
    result = 0;
    if (v15 > 25)
    {
      if (v15 == 26)
      {
        v17 = 1;
      }

      else
      {
        if (v15 != 30)
        {
          return result;
        }

        v17 = 0;
      }
    }

    else if (v15 == 8)
    {
      v17 = 2;
    }

    else
    {
      if (v15 != 11)
      {
        return result;
      }

      v17 = 3;
    }

    *a7 |= v17;
    v14 = *a8 | 1;
    *a8 = v14;
  }

  if (*a3 == 1)
  {
    v18 = a3[1];
    re::sizeFromVertexFormat(v18, a2);
    result = 0;
    if (v18 > 25)
    {
      if (v18 == 26)
      {
        v19 = 4;
      }

      else
      {
        if (v18 != 30)
        {
          return result;
        }

        v19 = 0;
      }
    }

    else if (v18 == 8)
    {
      v19 = 8;
    }

    else
    {
      if (v18 != 11)
      {
        return result;
      }

      v19 = 12;
    }

    *a7 |= v19;
    v14 = *a8 | 2;
    *a8 = v14;
  }

  if (*a4 == 1)
  {
    v20 = a4[1];
    re::sizeFromVertexFormat(v20, a2);
    result = 0;
    if (v20 > 25)
    {
      if (v20 == 26)
      {
        v21 = 16;
      }

      else
      {
        if (v20 != 30)
        {
          return result;
        }

        v21 = 0;
      }
    }

    else if (v20 == 8)
    {
      v21 = 32;
    }

    else
    {
      if (v20 != 11)
      {
        return result;
      }

      v21 = 48;
    }

    *a7 |= v21;
    v14 = *a8 | 4;
    *a8 = v14;
  }

  if (*a5 == 1)
  {
    v22 = a5[1];
    re::sizeFromVertexFormat(v22, a2);
    result = 0;
    if (v22 > 25)
    {
      if (v22 == 26)
      {
        v23 = 64;
      }

      else
      {
        if (v22 != 30)
        {
          return result;
        }

        v23 = 0;
      }
    }

    else if (v22 == 8)
    {
      v23 = 128;
    }

    else
    {
      if (v22 != 11)
      {
        return result;
      }

      v23 = 192;
    }

    *a7 |= v23;
    v14 = *a8 | 8;
    *a8 = v14;
  }

  if (*a6 != 1)
  {
    return 1;
  }

  if (a6[1] == 29)
  {
    *a8 = v14 | 0x10;
    return 1;
  }

  return 0;
}

uint64_t re::StitchedDeformer::StitchedDeformer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = &unk_1F5D0A380;
  *(a1 + 8) = v4;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  v5 = (a1 + 88);
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 140) = 0x1FFFFFFFFLL;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 244) = 0x7FFFFFFFLL;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 296) = 0;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v5, 0);
  ++*(a1 + 112);
  *(a1 + 132) = 32;
  re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(v5);
  return a1;
}

uint64_t re::StitchedDeformer::vertexUnpackFunction(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (!re::packingCompressionIndex(a2, a3, a4, a5, a6, a7, &v29 + 1, &v29))
  {
    return 0;
  }

  v19[0] = 0;
  v9 = v29;
  v8 = HIDWORD(v29);
  v10 = re::DynamicString::format("unpackVertexData_%u_%u", &v39, HIDWORD(v29), v29);
  v22 = 1;
  v23[0] = v39;
  *&v23[1] = v40;
  v23[3] = v41;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v40 = 0uLL;
  v41 = 0;
  re::DynamicString::setCapacity(&v39, 0);
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v42 = 33;
  v43 = v9;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v24, &v39);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  re::DynamicString::setCapacity(&v30, 0);
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  v36 = 0u;
  v34 = 131105;
  v35 = v8;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v24, &v30);
  v12 = *(a1 + 8);
  MetalFunction = re::getOrCreateMetalFunction(v12, &v17, v19, v14);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  if (v30 && (v31 & 1) != 0)
  {
    (*(*v30 + 40))();
  }

  if (v39 && (v40 & 1) != 0)
  {
    (*(*v39 + 40))(v39, *(&v40 + 1));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v24);
  if (v22 == 1 && v23[0])
  {
    if (v23[1])
    {
      (*(*v23[0] + 40))();
    }

    memset(v23, 0, sizeof(v23));
  }

  if (v19[0] == 1 && v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return MetalFunction;
}

uint64_t re::StitchedDeformer::vertexPackFunction(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (!re::packingCompressionIndex(a2, a3, a4, a5, a6, a7, &v29 + 1, &v29))
  {
    return 0;
  }

  v19[0] = 0;
  v9 = v29;
  v8 = HIDWORD(v29);
  v10 = re::DynamicString::format("packVertexData_%u_%u", &v39, HIDWORD(v29), v29);
  v22 = 1;
  v23[0] = v39;
  *&v23[1] = v40;
  v23[3] = v41;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v40 = 0uLL;
  v41 = 0;
  re::DynamicString::setCapacity(&v39, 0);
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v42 = 65569;
  v43 = v9;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v24, &v39);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  re::DynamicString::setCapacity(&v30, 0);
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  v36 = 0u;
  v34 = 131105;
  v35 = v8;
  re::DynamicArray<re::TechniqueFunctionConstant>::add(v24, &v30);
  v12 = *(a1 + 8);
  MetalFunction = re::getOrCreateMetalFunction(v12, &v17, v19, v14);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  if (v30 && (v31 & 1) != 0)
  {
    (*(*v30 + 40))();
  }

  if (v39 && (v40 & 1) != 0)
  {
    (*(*v39 + 40))(v39, *(&v40 + 1));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v24);
  if (v22 == 1 && v23[0])
  {
    if (v23[1])
    {
      (*(*v23[0] + 40))();
    }

    memset(v23, 0, sizeof(v23));
  }

  if (v19[0] == 1 && v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return MetalFunction;
}

uint64_t re::StitchedDeformer::lookupDeviceBufferFunction(re::StitchedDeformer *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 > 9)
  {
    return 0;
  }

  if (*(this + 25) - 1 < 3)
  {
    v4 = a2;
    v5 = off_1E8721388[(*(this + 25) - 1)];
    v13[0] = 0;
    v6 = re::DynamicString::format("%s_%u", &v23, v5, a2);
    v16 = 1;
    v17[0] = v23;
    *&v17[1] = v24;
    v17[3] = v25;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v24 = 0uLL;
    v25 = 0;
    re::DynamicString::setCapacity(&v23, 0);
    memset(v30, 0, sizeof(v30));
    v29 = 0u;
    v28 = 0u;
    v26 = 33;
    v27 = v4;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v18, &v23);
    v7 = *(this + 1);
    MetalFunction = re::getOrCreateMetalFunction(v7, &v11, v13, v9);
    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
    }

    if (v23 && (v24 & 1) != 0)
    {
      (*(*v23 + 40))(v23, *(&v24 + 1));
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
    if (v16 == 1 && v17[0])
    {
      if (v17[1])
      {
        (*(*v17[0] + 40))();
      }

      memset(v17, 0, sizeof(v17));
    }

    if (v13[0] == 1 && v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    return MetalFunction;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown Argument Buffer Mode.", "!Unreachable code", "lookupDeviceBufferFunction", 877);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::StitchedDeformer::lookupConstantBufferFunction(re::StitchedDeformer *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 > 9)
  {
    return 0;
  }

  if (*(this + 25) - 1 < 3)
  {
    v4 = a2;
    v5 = off_1E87213A0[(*(this + 25) - 1)];
    v13[0] = 0;
    v6 = re::DynamicString::format("%s_%u", &v23, v5, a2);
    v16 = 1;
    v17[0] = v23;
    *&v17[1] = v24;
    v17[3] = v25;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v24 = 0uLL;
    v25 = 0;
    re::DynamicString::setCapacity(&v23, 0);
    memset(v30, 0, sizeof(v30));
    v29 = 0u;
    v28 = 0u;
    v26 = 33;
    v27 = v4;
    re::DynamicArray<re::TechniqueFunctionConstant>::add(v18, &v23);
    v7 = *(this + 1);
    MetalFunction = re::getOrCreateMetalFunction(v7, &v11, v13, v9);
    if (v11 && (v12 & 1) != 0)
    {
      (*(*v11 + 40))();
    }

    if (v23 && (v24 & 1) != 0)
    {
      (*(*v23 + 40))(v23, *(&v24 + 1));
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
    if (v16 == 1 && v17[0])
    {
      if (v17[1])
      {
        (*(*v17[0] + 40))();
      }

      memset(v17, 0, sizeof(v17));
    }

    if (v13[0] == 1 && v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    return MetalFunction;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown Argument Buffer Mode.", "!Unreachable code", "lookupConstantBufferFunction", 909);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::StitchedDeformer::addDeformationInstance(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &v47;
  v60 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 192);
  if (v9)
  {
    v10 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1 + 152, v9 - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1 + 152, *(a1 + 192) - 1);
    --*(a1 + 192);
    ++*(a1 + 200);
  }

  else
  {
    v10 = *(a1 + 72);
    v4 = *(a1 + 40);
    if (v10 + 1 > 32 * v4)
    {
      re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::setBucketsCapacity((a1 + 32), (v10 + 32) >> 5);
      v4 = *(a1 + 40);
    }

    v3 = v10 >> 5;
    if (v4 <= v10 >> 5)
    {
      goto LABEL_60;
    }

    if (*(a1 + 48))
    {
      v11 = a1 + 56;
    }

    else
    {
      v11 = *(a1 + 64);
    }

    v12 = *(v11 + 8 * v3);
    ++*(a1 + 72);
    ++*(a1 + 80);
    v13 = (v12 + 48 * (v10 & 0x1F));
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
  }

  v45[0] = v10;
  v14 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1 + 32, v10);
  v16 = v14;
  if (!*v14)
  {
    v8 = *(a2 + 8);
    if (!v8)
    {
      goto LABEL_20;
    }

    *(v16 + 1) = v8;
    if (v8 >> 61)
    {
      goto LABEL_61;
    }

    v4 = 8 * v8;
    *(v16 + 2) = v14;
    if (!v14)
    {
LABEL_62:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_63:
      re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, v3);
      _os_crash();
      __break(1u);
LABEL_64:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v3 = v14;
    if (v8 != 1)
    {
      v4 -= 8;
      bzero(v14, v4);
      v3 += v4;
    }

    *v3 = 0;
  }

  v18 = *(a2 + 8);
  if (*(v16 + 1) != v18)
  {
    goto LABEL_58;
  }

  if (v18)
  {
    v14 = memmove(*(v16 + 2), *a2, 8 * v18);
  }

LABEL_20:
  if (*(v16 + 3))
  {
    goto LABEL_27;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_38;
  }

  *(v16 + 4) = v3;
  if (v3 >> 58)
  {
    goto LABEL_63;
  }

  *(v16 + 5) = v20;
  if (!v20)
  {
    goto LABEL_64;
  }

  v21 = (v3 - 1);
  if (v3 != 1)
  {
    do
    {
      *v20 = -1;
      *(v20 + 12) = 0;
      *(v20 + 4) = 0;
      *(v20 + 20) = 0;
      *(v20 + 24) = -1;
      *(v20 + 32) = -1;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      v20 += 64;
      --v21;
    }

    while (v21);
  }

  *v20 = -1;
  *(v20 + 12) = 0;
  *(v20 + 4) = 0;
  *(v20 + 20) = 0;
  *(v20 + 24) = -1;
  *(v20 + 32) = -1;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
LABEL_27:
  v22 = *(a2 + 24);
  if (*(v16 + 4) != v22)
  {
    goto LABEL_59;
  }

  if (v22)
  {
    v23 = 0;
    v24 = *(a2 + 16);
    v25 = *(v16 + 5);
    v26 = v22 << 6;
    do
    {
      v27 = v25 + v23;
      v28 = v24 + v23;
      v29 = *(v24 + v23);
      v30 = *(v24 + v23 + 16);
      *(v27 + 32) = *(v24 + v23 + 32);
      *v27 = v29;
      *(v27 + 16) = v30;
      if (v24 != v25)
      {
        v31 = *(v28 + 40);
        if (*(v27 + 40))
        {
          if (!v31)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        if (v31)
        {
          re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::init<>((v27 + 40), v31, *(v24 + v23 + 48));
LABEL_36:
          re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::copy((v27 + 40), v28 + 40);
        }
      }

LABEL_37:
      v23 += 64;
    }

    while (v26 != v23);
  }

LABEL_38:
  v32 = re::DataArray<unsigned long>::create<unsigned long &>(a1 + 88, v45);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v32;
  *(a3 + 24) = 1;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  re::StackScratchAllocator::StackScratchAllocator(v46);
  v44 = 0;
  v41[1] = 0;
  v42 = 0;
  v43 = 0;
  v41[0] = v46;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v41, 0);
  ++v43;
  v34 = *(a2 + 24);
  if (v34)
  {
    v3 = 0;
    v4 = 0;
    v35 = v34 << 6;
    v36 = *(a2 + 16) + 48;
    do
    {
      v4 |= *(v36 - 40);
      *(a3 + 8) = v4;
      v3 |= *(v36 - 32);
      *(a3 + 16) = v3;
      v37 = *v36;
      if (*v36)
      {
        v8 = v42;
        if (v42 == -1)
        {
          v45[1] = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "copy";
          v49 = 1024;
          v50 = 643;
          v51 = 2048;
          v52 = -1;
          v53 = 2048;
          v54 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_57:
          re::internal::assertLog(7, v33, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v8, v8, v37);
          _os_crash();
          __break(1u);
LABEL_58:
          re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash();
          __break(1u);
LABEL_59:
          re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash();
          __break(1u);
LABEL_60:
          v41[0] = 0;
          memset(v46, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v55) = 136315906;
          *(v8 + 13) = "operator[]";
          WORD6(v55) = 1024;
          *(v8 + 62) = 858;
          WORD1(v56) = 2048;
          *(v8 + 17) = v3;
          WORD6(v56) = 2048;
          *(v8 + 78) = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_61:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v8);
          _os_crash();
          __break(1u);
          goto LABEL_62;
        }

        v38 = (v42 + v37);
        if (__CFADD__(v42, v37))
        {
          goto LABEL_57;
        }

        v39 = *(v36 + 8);
        if (v42 >= v38)
        {
          memmove((v44 + 16 * v42), *(v36 + 8), 16 * v37);
        }

        else
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity(v41, v42 + v37);
          v40 = v42 - v8;
          if (v42 != v8)
          {
            memmove((v44 + 16 * v8), v39, 16 * v40);
            v8 = v42;
          }

          memcpy((v44 + 16 * v8), &v39[16 * v40], 16 * (v37 - v40));
          v42 = v38;
        }

        ++v43;
      }

      v36 += 64;
      v35 -= 64;
    }

    while (v35);
  }

  if (!v42)
  {
    v55 = v44;
    re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::operator=((a3 + 40), &v55);
  }

  if (v41[0] && v44)
  {
    (*(*v41[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v46);
}

uint64_t re::StitchedDeformer::allocateBuffers(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v437;
  v467[2] = *MEMORY[0x1E69E9840];
  v387 = *a5;
  v7 = *(*a5 + 48);
  re::StackScratchAllocator::StackScratchAllocator(v415);
  v413 = 0;
  v411 = 0u;
  v412 = 0u;
  v414 = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(&v411, v415, 3);
  v395 = a1;
  v388 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = 1;
    v10 = 0x7FFFFFFFLL;
    while (1)
    {
      v11 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v387 + 8, v8);
      v12 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], *(v11 + 8));
      v14 = *(v11 + 16);
      v15 = *(v12 + 336);
      if (v15 <= v14)
      {
        goto LABEL_477;
      }

      v16 = re::DataArray<unsigned long>::get(a1 + 88, *(*(v12 + 328) + (v14 << 6)));
      v17 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1 + 32, *v16);
      v18 = *(v17 + 8);
      if (v18)
      {
        break;
      }

LABEL_18:
      ++v8;
      a1 = v395;
      if (v8 == v388)
      {
        goto LABEL_19;
      }
    }

    v19 = *(v17 + 16);
    v20 = &v19[v18];
    while (1)
    {
      v21 = *v19;
      v437[1] = 0;
      v437[0] = 0;
      LODWORD(v437[2]) = 1;
      memset(v438, 0, 20);
      v437[3] = 0;
      re::BucketArray<unsigned long,64ul>::init(v437, v415, 1uLL);
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) >> 27));
      v23 = v22 ^ (v22 >> 31);
      if (v411)
      {
        v24 = v23 % DWORD2(v412);
        v25 = *(*(&v411 + 1) + 4 * v24);
        if (v25 != 0x7FFFFFFF)
        {
          while (*(v412 + 80 * v25 + 8) != v21)
          {
            LODWORD(v25) = *(v412 + 80 * v25) & 0x7FFFFFFF;
            if (v25 == 0x7FFFFFFF)
            {
              goto LABEL_12;
            }
          }

          v27 = v412 + 80 * v25 + 16;
          goto LABEL_14;
        }
      }

      else
      {
        LODWORD(v24) = 0;
      }

LABEL_12:
      v26 = re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::allocEntry(&v411, v24, v23);
      *(v26 + 16) = 0;
      v27 = v26 + 16;
      *(v26 + 8) = v21;
      *(v26 + 24) = 0;
      *(v26 + 32) = 1;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 40) = 0;
      *(v26 + 64) = 0;
      re::BucketArray<RESubscriptionHandle,8ul>::swap(v26 + 16, v437);
      ++HIDWORD(v414);
LABEL_14:
      re::BucketArray<unsigned long,64ul>::deinit(v437);
      if (v437[0] && (v437[2] & 1) == 0)
      {
        (*(*v437[0] + 40))();
      }

      *re::BucketArray<unsigned long,64ul>::addUninitialized(v27) = v8;
      if (++v19 == v20)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v28 = HIDWORD(v412);
  v410 = 0;
  v407 = 0;
  v408 = 0;
  v409 = 0;
  v406 = v415;
  re::DynamicArray<re::FixedArray<re::StitchFunctionParameters>>::setCapacity(&v406, HIDWORD(v412));
  v29 = ++v409;
  v404 = 0;
  v402 = 0u;
  v403 = 0u;
  v405 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v402, v415, 2 * v28);
  v9 = v413;
  if (v413)
  {
    v10 = 0;
    v31 = v412;
    while (1)
    {
      v32 = *v31;
      v31 += 20;
      if (v32 < 0)
      {
        break;
      }

      if (v413 == ++v10)
      {
        v10 = v413;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v6 = a5;
  if (v10 != v413)
  {
    v33 = v412;
    v34 = v408;
    while (1)
    {
      v35 = *(v33 + 80 * v10 + 8);
      v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
      v37 = v36 ^ (v36 >> 31);
      if (!v402)
      {
        break;
      }

      v38 = v37 % DWORD2(v403);
      v39 = *(*(&v402 + 1) + 4 * v38);
      if (v39 == 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      while (*(v403 + 32 * v39 + 8) != v35)
      {
        v39 = *(v403 + 32 * v39) & 0x7FFFFFFF;
        if (v39 == 0x7FFFFFFF)
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      a1 = *(v33 + 80 * v10 + 56);
      if (a1)
      {
        if (a1 >= 0x555555555555556)
        {
          goto LABEL_480;
        }

        v30 = (*(v415[0] + 32))(v415, 48 * a1, 8);
        if (!v30)
        {
          goto LABEL_481;
        }

        v41 = v30;
        v42 = v30;
        v43 = a1 - 1;
        if (a1 != 1)
        {
          v42 = v30;
          do
          {
            *(v42 + 5) = 0;
            *v42 = 0uLL;
            *(v42 + 1) = 0uLL;
            *(v42 + 8) = 0;
            v42 = (v42 + 48);
            --v43;
          }

          while (v43);
        }

        *(v42 + 5) = 0;
        *v42 = 0uLL;
        *(v42 + 1) = 0uLL;
        *(v42 + 8) = 0;
      }

      else
      {
        v41 = 0;
      }

      if (v34 >= v407)
      {
        v44 = v34 + 1;
        if (v407 < v44)
        {
          if (v406)
          {
            v45 = 8;
            if (v407)
            {
              v45 = 2 * v407;
            }

            if (v45 <= v44)
            {
              v46 = v44;
            }

            else
            {
              v46 = v45;
            }

            re::DynamicArray<re::FixedArray<re::StitchFunctionParameters>>::setCapacity(&v406, v46);
            v29 = v409;
          }

          else
          {
            re::DynamicArray<re::FixedArray<re::StitchFunctionParameters>>::setCapacity(&v406, v44);
            v29 = v409 + 1;
          }
        }

        v34 = v408;
      }

      v47 = &v410[3 * v34];
      *v47 = v415;
      v437[0] = 0;
      v47[1] = a1;
      v437[2] = 0;
      v437[1] = 0;
      v47[2] = v41;
      v408 = ++v34;
      v409 = ++v29;
      re::FixedArray<re::StitchFunctionParameters>::deinit(v437);
      v437[1] = 0;
      v437[0] = 0;
      v48 = v47[1];
      v437[0] = v47[2];
      v437[1] = v48;
      v6 = a5;
      v30 = (*(*v35 + 48))(v35, a2, a3, a5, v437);
      if (v9 <= v10 + 1)
      {
        v49 = (v10 + 1);
      }

      else
      {
        v49 = v9;
      }

      while (v49 - 1 != v10)
      {
        v10 = (v10 + 1);
        if ((*(v33 + 80 * v10) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }
      }

      v10 = v49;
LABEL_60:
      if (v10 == v9)
      {
        goto LABEL_61;
      }
    }

    LODWORD(v38) = 0;
LABEL_33:
    v30 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v402, v38, v37);
    *(v30 + 1) = v35;
    *(v30 + 2) = v34;
    ++HIDWORD(v405);
    goto LABEL_34;
  }

LABEL_61:
  v50 = (*(*a2 + 32))(a2, 40, 8);
  *(v50 + 32) = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *v50 = a2;
  v378 = v50;
  ++*(v50 + 24);
  if (v388)
  {
    v51 = 0;
    while (1)
    {
      v393 = v51;
      v52 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v387 + 8, v51);
      a1 = *(v52 + 8);
      v53 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](*(v6 + 8), a1);
      v381 = v52;
      v55 = *(v52 + 16);
      v56 = *(v53 + 336);
      if (v56 <= v55)
      {
        goto LABEL_482;
      }

      v389 = a1;
      v379 = v53;
      v384 = (*(v53 + 328) + (v55 << 6));
      v57 = re::DataArray<unsigned long>::get(v395 + 88, *v384);
      v58 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](v395 + 32, *v57);
      v59 = *(v58 + 8);
      v398 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0;
      v397 = v415;
      v60 = re::DynamicArray<float *>::setCapacity(&v397, v59);
      v62 = ++v400;
      v396 = v58;
      v63 = *(v58 + 8);
      v64 = v393;
      if (v63)
      {
        v65 = *(v58 + 16);
        v66 = (v65 + 8 * v63);
        v9 = *(&v402 + 1);
        v67 = v403;
        v6 = DWORD2(v403);
        v68 = v402;
        v10 = v408;
        a1 = v410;
        while (1)
        {
          if (v68 && (v69 = 0xBF58476D1CE4E5B9 * (*v65 ^ (*v65 >> 30)), v70 = *(v9 + 4 * (((0x94D049BB133111EBLL * (v69 ^ (v69 >> 27))) ^ ((0x94D049BB133111EBLL * (v69 ^ (v69 >> 27))) >> 31)) % v6)), v70 != 0x7FFFFFFF))
          {
            v78 = *(v67 + 32 * v70 + 8);
            for (i = v70; v78 != *v65; v70 = i)
            {
              i = *(v67 + 32 * i) & 0x7FFFFFFF;
              v70 = 0x7FFFFFFFLL;
              if (i == 0x7FFFFFFF)
              {
                break;
              }

              v78 = *(v67 + 32 * i + 8);
            }
          }

          else
          {
            v70 = 0x7FFFFFFFLL;
          }

          v71 = *(v67 + 32 * v70 + 16);
          if (v10 <= v71)
          {
            break;
          }

          v72 = a1 + 24 * v71;
          v71 = *(v72 + 8);
          if (v71 <= v64)
          {
            goto LABEL_473;
          }

          v73 = *(v72 + 16);
          v74 = v399;
          if (v399 >= v398)
          {
            v75 = v399 + 1;
            if (v398 < v399 + 1)
            {
              if (v397)
              {
                v76 = 2 * v398;
                if (!v398)
                {
                  v76 = 8;
                }

                if (v76 <= v75)
                {
                  v77 = v399 + 1;
                }

                else
                {
                  v77 = v76;
                }

                v60 = re::DynamicArray<float *>::setCapacity(&v397, v77);
                v62 = v400;
              }

              else
              {
                v60 = re::DynamicArray<float *>::setCapacity(&v397, v75);
                v62 = v400 + 1;
              }

              v64 = v393;
            }

            v74 = v399;
          }

          *(v401 + 8 * v74) = v73 + 48 * v64;
          v399 = v74 + 1;
          v400 = ++v62;
          v65 += 8;
          if (v65 == v66)
          {
            goto LABEL_88;
          }
        }

        v433 = 0;
        memset(v438, 0, 48);
        memset(v437, 0, sizeof(v437));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v458 = 136315906;
        *&v458[4] = "operator[]";
        *&v458[12] = 1024;
        *&v458[14] = 789;
        *&v458[18] = 2048;
        *&v458[20] = v71;
        *&v458[28] = 2048;
        *&v458[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_473:
        v433 = 0;
        memset(v438, 0, 48);
        memset(v437, 0, sizeof(v437));
        a1 = v64;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v458 = 136315906;
        *&v458[4] = "operator[]";
        *&v458[12] = 1024;
        *&v458[14] = 468;
        *&v458[18] = 2048;
        *&v458[20] = a1;
        *&v458[28] = 2048;
        *&v458[30] = v71;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_474:
        re::internal::assertLog(6, v88, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v104, v104);
        _os_crash();
        __break(1u);
LABEL_475:
        re::internal::assertLog(6, v348, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v71, v396);
        _os_crash();
        __break(1u);
LABEL_476:
        re::internal::assertLog(6, v353, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v65, v68);
        _os_crash();
        __break(1u);
LABEL_477:
        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v15);
        _os_crash();
        __break(1u);
LABEL_478:
        *v451 = 0;
        memset(v438, 0, 48);
        memset(v437, 0, sizeof(v437));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v458 = 136315906;
        *&v458[4] = "operator[]";
        *&v458[12] = 1024;
        *&v458[14] = 797;
        *&v458[18] = 2048;
        *&v458[20] = v6;
        *&v458[28] = 2048;
        *&v458[30] = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_479:
        *v451 = 0;
        memset(v438, 0, 48);
        memset(v437, 0, sizeof(v437));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v458 = 136315906;
        *&v458[4] = "operator[]";
        *&v458[12] = 1024;
        *&v458[14] = 468;
        *&v458[18] = 2048;
        *&v458[20] = v9;
        *&v458[28] = 2048;
        *&v458[30] = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_480:
        re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a1);
        _os_crash();
        __break(1u);
LABEL_481:
        re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_482:
        re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v55, v56);
        _os_crash();
        __break(1u);
LABEL_483:
        re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v81, v80);
        _os_crash();
        __break(1u);
LABEL_484:
        re::internal::assertLog(6, v133, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v135, v135);
        _os_crash();
        __break(1u);
        goto LABEL_485;
      }

LABEL_88:
      v80 = a5[6];
      v81 = v389;
      if (v80 <= v389)
      {
        goto LABEL_483;
      }

      v82 = (a5[5] + 312 * v389);
      v71 = v384[1] & *v82;
      v83 = v384[2] & *v82;
      v10 = v401;
      v375 = v399;
      LOBYTE(v437[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
      v84 = *(v82[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437) + 16);
      LOBYTE(v437[0]) = 2;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
      v65 = *(v82[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437) + 16);
      LOBYTE(v437[0]) = 3;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
      v85 = *(v82[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437) + 16);
      LOBYTE(v437[0]) = 4;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
      v86 = *(v82[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437) + 16);
      LOBYTE(v437[0]) = 20;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
      v87 = *(v82[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437) + 16);
      re::StackScratchAllocator::StackScratchAllocator(&v433);
      v68 = *(v396 + 8);
      v89 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v71 ^ (v71 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v71 ^ (v71 >> 30))) >> 27));
      v90 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v83 ^ (v83 >> 30))) >> 27));
      v91 = ((v90 ^ (v90 >> 31)) + 0x3C6EF372FE94F82ELL + (((v89 ^ (v89 >> 31)) + 0x3C6EF372FE94F82ELL) << 6) + (((v89 ^ (v89 >> 31)) + 0x3C6EF372FE94F82ELL) >> 2)) ^ ((v89 ^ (v89 >> 31)) + 0x3C6EF372FE94F82ELL);
      v396 = v83;
      v373 = v65;
      v374 = v84;
      v92 = (0xBF58476D1CE4E5B9 * v84) & (((v83 | v71) << 62) >> 63);
      v93 = ((v91 << 6) - 0x61C8864680B583E9 + (v91 >> 2) + ((0x94D049BB133111EBLL * (v92 ^ (v92 >> 27))) ^ ((0x94D049BB133111EBLL * (v92 ^ (v92 >> 27))) >> 31))) ^ v91;
      v94 = (0xBF58476D1CE4E5B9 * v65) & (((v83 | v71) << 61) >> 63);
      v95 = ((v93 << 6) - 0x61C8864680B583E9 + (v93 >> 2) + ((0x94D049BB133111EBLL * (v94 ^ (v94 >> 27))) ^ ((0x94D049BB133111EBLL * (v94 ^ (v94 >> 27))) >> 31))) ^ v93;
      v371 = v86;
      v372 = v85;
      v96 = (0xBF58476D1CE4E5B9 * v85) & (((v83 | v71) << 60) >> 63);
      v97 = ((v95 << 6) - 0x61C8864680B583E9 + (v95 >> 2) + ((0x94D049BB133111EBLL * (v96 ^ (v96 >> 27))) ^ ((0x94D049BB133111EBLL * (v96 ^ (v96 >> 27))) >> 31))) ^ v95;
      v98 = (0xBF58476D1CE4E5B9 * v86) & (((v83 | v71) << 59) >> 63);
      v99 = ((v97 << 6) - 0x61C8864680B583E9 + (v97 >> 2) + ((0x94D049BB133111EBLL * (v98 ^ (v98 >> 27))) ^ ((0x94D049BB133111EBLL * (v98 ^ (v98 >> 27))) >> 31))) ^ v97;
      v370 = v87;
      v100 = (0xBF58476D1CE4E5B9 * v87) & (((v83 | v71) << 43) >> 63);
      v101 = ((v99 << 6) - 0x61C8864680B583E9 + (v99 >> 2) + ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) ^ ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) >> 31))) ^ v99;
      v432 = v101;
      v102 = 0;
      if (v68)
      {
        v103 = 0;
        v9 = v437;
        a1 = v458;
        v104 = v375;
        v6 = a5;
        while (v375 != v103)
        {
          v105 = *(v10 + 8 * v103);
          if (*v105)
          {
            v106 = 0xBF58476D1CE4E5B9 * (**v105 ^ (**v105 >> 30));
            v101 ^= (v101 << 6) - 0x61C8864680B583E9 + (v101 >> 2) + ((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) ^ ((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) >> 31));
            v432 = v101;
            v102 += *(v105 + 24);
          }

          if (v68 == ++v103)
          {
            goto LABEL_97;
          }
        }

        goto LABEL_474;
      }

      v9 = v437;
      a1 = v458;
      v6 = a5;
LABEL_97:
      v377 = v71;
      v107 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v395 + 208, &v432);
      v385 = v82;
      if (v107)
      {
        v108 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](v395 + 256, *v107);
        re::StackScratchAllocator::~StackScratchAllocator(&v433);
        v10 = a3;
        goto LABEL_341;
      }

      v109 = MEMORY[0x1E695DEC8];
      v390 = [MEMORY[0x1E695DEC8] array];
      v110 = v68 + v102;
      v428[1] = 0;
      v429 = 0;
      v430 = 0;
      v431 = 0;
      v428[0] = &v433;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v428, v110 + 2);
      ++v430;
      v424[1] = 0;
      v425 = 0;
      v426 = 0;
      v427 = 0;
      v424[0] = &v433;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v424, v110 + 2);
      ++v426;
      v111 = MEMORY[0x1E69740D0];
      v367 = [objc_msgSend(MEMORY[0x1E69740D0] alloc)];
      v423 = 0;
      v422 = 0;
      v421 = 0;
      v420 = 0;
      if (*(v395 + 25) != 1)
      {
        break;
      }

      v112 = [objc_msgSend(v111 alloc)];
      *v458 = "extractInputVertexDataTier0";
      *&v458[8] = &v423;
      *&v458[16] = "extractOutputVertexDataTier0";
      *&v458[24] = &v422;
      *&v458[32] = "extractDeviceArgumentsTier0";
      v459 = &v421;
      v460[0] = "extractConstantArgumentsTier0";
      v460[1] = &v420;
      v113 = [v109 arrayWithObject_];
      v114 = v113;
      v115 = 0;
      LOBYTE(v437[0]) = 0;
      v438[8] = 0;
      memset(&v438[48], 0, 28);
      v439[0] = 0;
      v439[1] = 0;
      v440 = 1;
      while (1)
      {
        v116 = *(v395 + 1);
        v117 = *&v458[v115];
        MetalFunction = re::getOrCreateMetalFunction(v116, &v455, v437, v118);
        if (v455 && (BYTE8(v455) & 1) != 0)
        {
          (*(*v455 + 40))();
        }

        if (!MetalFunction)
        {
          break;
        }

        v120 = [objc_msgSend(MEMORY[0x1E69740A0] alloc)];
        *&v455 = v120;
        NS::SharedPtr<MTL::Buffer>::operator=(*&v458[v115 + 8], &v455);
        *v451 = v120;
        re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v424, v451);
        if (*v451)
        {
        }

        v113 = re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, MetalFunction);
        if (v120)
        {
        }

        v115 += 16;
        if (v115 == 64)
        {
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v438[48]);
          a1 = v458;
          v121 = v377;
          if (v438[8] == 1 && *&v438[16])
          {
            if (v438[24])
            {
              (*(**&v438[16] + 40))();
            }

            memset(&v438[16], 0, 32);
          }

          if (LOBYTE(v437[0]) == 1 && v437[1] && (v437[2] & 1) != 0)
          {
            (*(*v437[1] + 40))();
          }

          if (v112)
          {
            v122 = v112;
            goto LABEL_128;
          }

          goto LABEL_129;
        }
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v438[48]);
      v10 = a3;
      v154 = v367;
      v9 = v437;
      if (v438[8] == 1 && *&v438[16])
      {
        if (v438[24])
        {
          (*(**&v438[16] + 40))();
        }

        memset(&v438[16], 0, 32);
      }

      if (LOBYTE(v437[0]) == 1 && v437[1] && (v437[2] & 1) != 0)
      {
        (*(*v437[1] + 40))();
      }

      if (v112)
      {
      }

      v108 = 0;
LABEL_322:
      if (v420)
      {
      }

      if (v421)
      {
      }

      if (v422)
      {
      }

      if (v423)
      {
      }

      if (v154)
      {
      }

      v211 = v424[0];
      if (v424[0])
      {
        v212 = v427;
        if (v427)
        {
          if (v425)
          {
            v213 = 8 * v425;
            v214 = v427;
            do
            {
              if (*v214)
              {

                *v214 = 0;
              }

              ++v214;
              v213 -= 8;
            }

            while (v213);
          }

          (*(*v211 + 40))(v211, v212);
        }
      }

      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v428);
      re::StackScratchAllocator::~StackScratchAllocator(&v433);
      if (!v108)
      {
        if (v397 && v401)
        {
          (*(*v397 + 40))();
        }

        v378 = 0;
        goto LABEL_465;
      }

LABEL_341:
      if (*(v395 + 25) != 1)
      {
        memset(v458, 0, 32);
        *&v438[8] = 0;
        v437[2] = 0;
        v437[3] = 0;
        *v438 = 0;
        v437[0] = v108;
        v437[1] = a2;
        re::DynamicArray<re::EvaluationRegister>::setCapacity(&v437[1], 4uLL);
        ++*v438;
        memset(&v438[16], 0, 36);
        *&v438[52] = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v438[16], a2, 3);
        *&v438[64] = re::DeformationVertexBufferState::inputVertexCount(v82, 1u);
        v215.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v438[16]);
        if (v437[1] && *&v438[8])
        {
          (*(*v437[1] + 40))(v215.n128_f64[0]);
        }

        v252 = 0;
        v253 = *(v378 + 32) + 104 * *(v378 + 16) - 96;
        do
        {
          v254 = [*v108[1] newArgumentEncoderWithBufferIndex_];
          v255 = *&v458[8 * v252];
          if (v255 == v254)
          {

            v254 = *&v458[8 * v252];
          }

          else
          {
            if (v255)
            {
            }

            *&v458[8 * v252] = v254;
          }

          *&v256 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v10, [v254 encodedLength], objc_msgSend(*&v458[8 * v252], sel_alignment), &v433);
          v257 = v436;
          v258 = v434;
          [*&v458[8 * v252] setArgumentBuffer:v436 offset:{v434, v256}];
          LODWORD(v437[0]) = v252;
          v437[1] = v257;
          LODWORD(v437[2]) = 0;
          v437[3] = __PAIR64__(v435, v258);
          ++v252;
        }

        while (v252 != 4);
        v9 = *(v378 + 32) + 104 * *(v378 + 16) - 56;
        if ((v377 & 2) == 0)
        {
          if ((v377 & 4) == 0)
          {
            goto LABEL_388;
          }

LABEL_425:
          v321 = *v458;
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v322 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          [v321 setBuffer:v322 offset:*(v82[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 7, v437) + 16), 1}];
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v437[0] = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          v433 = 0;
          v323 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v323 |= 1uLL;
          if ((v377 & 8) != 0)
          {
            goto LABEL_426;
          }

LABEL_389:
          if ((v377 & 0x10) == 0)
          {
            goto LABEL_390;
          }

LABEL_427:
          v327 = *v458;
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v328 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          [v327 setBuffer:v328 offset:*(v82[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 7, v437) + 16), 3}];
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v437[0] = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          v433 = 0;
          v329 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v329 |= 1uLL;
          if ((v377 & 0x100000) == 0)
          {
            goto LABEL_392;
          }

LABEL_391:
          v260 = *v458;
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v261 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          [v260 setBuffer:v261 offset:*(v82[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 7, v437) + 16), 4}];
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v437[0] = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
          v433 = 0;
          v262 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v262 |= 1uLL;
          goto LABEL_392;
        }

        v318 = *v458;
        LOBYTE(v437[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
        v319 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
        LOBYTE(v437[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
        [v318 setBuffer:v319 offset:*(v82[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 7, v437) + 16), 0}];
        LOBYTE(v437[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
        v437[0] = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
        v433 = 0;
        v320 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
        *v320 |= 1uLL;
        if ((v377 & 4) != 0)
        {
          goto LABEL_425;
        }

LABEL_388:
        if ((v377 & 8) == 0)
        {
          goto LABEL_389;
        }

LABEL_426:
        v324 = *v458;
        LOBYTE(v437[0]) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
        v325 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
        LOBYTE(v437[0]) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
        [v324 setBuffer:v325 offset:*(v82[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 7, v437) + 16), 2}];
        LOBYTE(v437[0]) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
        v437[0] = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 24);
        v433 = 0;
        v326 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
        *v326 |= 1uLL;
        if ((v377 & 0x10) != 0)
        {
          goto LABEL_427;
        }

LABEL_390:
        if ((v377 & 0x100000) != 0)
        {
          goto LABEL_391;
        }

LABEL_392:
        if ((v396 & 2) != 0)
        {
          v263 = *(v379 + 360);
          v264 = *(v6 + 16);
          v265 = *(v381 + 16);
          LOBYTE(v437[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
          v266 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 20);
          LOBYTE(v437[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
          v267 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437);
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v82, v263, v264, v265, v266, 1, 1, (v82[16] + 20 * v267 + 4));
          v268 = *&v458[8];
          LOBYTE(v437[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
          v269 = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          LOBYTE(v437[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
          [v268 setBuffer:v269 offset:*(v82[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 23, v437) + 16), 0}];
          LOBYTE(v437[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 1u);
          v437[0] = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          v433 = 0;
          v270 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v270 |= 2uLL;
        }

        if ((v396 & 4) != 0)
        {
          v271 = *(v379 + 360);
          v272 = *(v6 + 16);
          v273 = *(v381 + 16);
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v274 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 20);
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v275 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437);
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v82, v271, v272, v273, v274, 2, 1, (v82[16] + 20 * v275 + 4));
          v276 = *&v458[8];
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v277 = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          [v276 setBuffer:v277 offset:*(v82[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 23, v437) + 16), 1}];
          LOBYTE(v437[0]) = 2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 2u);
          v437[0] = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          v433 = 0;
          v278 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v278 |= 2uLL;
        }

        if ((v396 & 8) != 0)
        {
          v279 = *(v379 + 360);
          v280 = *(v6 + 16);
          v281 = *(v381 + 16);
          LOBYTE(v437[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
          v282 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 20);
          LOBYTE(v437[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
          v283 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437);
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v82, v279, v280, v281, v282, 3, 1, (v82[16] + 20 * v283 + 4));
          v284 = *&v458[8];
          LOBYTE(v437[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
          v285 = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          LOBYTE(v437[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
          [v284 setBuffer:v285 offset:*(v82[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 23, v437) + 16), 2}];
          LOBYTE(v437[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 3u);
          v437[0] = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          v433 = 0;
          v286 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v286 |= 2uLL;
        }

        if ((v396 & 0x10) != 0)
        {
          v287 = *(v379 + 360);
          v288 = *(v6 + 16);
          v289 = *(v381 + 16);
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v290 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 20);
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v291 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437);
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v82, v287, v288, v289, v290, 4, 1, (v82[16] + 20 * v291 + 4));
          v292 = *&v458[8];
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v293 = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          [v292 setBuffer:v293 offset:*(v82[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 23, v437) + 16), 3}];
          LOBYTE(v437[0]) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 4u);
          v437[0] = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          v433 = 0;
          v294 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v294 |= 2uLL;
        }

        if ((v396 & 0x100000) != 0)
        {
          v295 = *(v379 + 360);
          v296 = *(v6 + 16);
          v297 = *(v381 + 16);
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v298 = *(v82[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 7, v437) + 20);
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v299 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 15, v437);
          re::DeformationVertexBufferState::allocAndSetOutputBuffer(v82, v295, v296, v297, v298, 20, 1, (v82[16] + 20 * v299 + 4));
          v300 = *&v458[8];
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v301 = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          [v300 setBuffer:v301 offset:*(v82[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v82 + 23, v437) + 16), 4}];
          LOBYTE(v437[0]) = 20;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v82, 0x14u);
          v437[0] = *(v82[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v82 + 23, v437) + 24);
          v433 = 0;
          v302 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v302 |= 2uLL;
        }

        v303 = *(v395 + 25);
        if (v303 == 3)
        {
          *&v330 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v10, 0x50uLL, 8uLL, v437);
          v331 = v437[0];
          v332 = LODWORD(v437[1]);
          v333 = v10;
          v10 = HIDWORD(v437[1]);
          v334 = v437[2];
          v335 = v9;
          [*&v458[16] setBuffer:v437[2] offset:LODWORD(v437[1]) atIndex:{0, v330}];
          v437[0] = v334;
          v433 = 0;
          v336 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v336 |= 1uLL;
          *&v337 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v333, 0x50uLL, 8uLL, v437);
          v338 = v437[0];
          v339 = LODWORD(v437[1]);
          v340 = HIDWORD(v437[1]);
          v341 = v437[2];
          [*&v458[24] &selRef_prepareStates + 3];
          v437[0] = v341;
          v433 = 0;
          v342 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
          *v342 |= 1uLL;
          v243 = v401;
          if (v399)
          {
            v71 = 0;
            v65 = 0;
            v343 = &v331[v332];
            v396 = v10 >> 3;
            v344 = &v338[v339];
            v68 = v340 >> 3;
            a1 = v401;
            v386 = v401;
            v392 = (v401 + 8 * v399);
            do
            {
              v345 = *(*a1 + 24);
              if (v345)
              {
                v10 = 40 * v345;
                v6 = *(*a1 + 40) + 24;
                do
                {
                  v346 = *(v6 - 24);
                  if (v346 == 3)
                  {
                    if (*(v6 + 4))
                    {
                      v352 = [*(v6 - 16) gpuAddress];
                      if (v65 >= v68)
                      {
                        goto LABEL_476;
                      }

                      *&v344[8 * v65] = &v352[*v6];
                      v437[0] = *(v6 - 16);
                      v433 = 0;
                      v354 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
                      *v354 |= 1uLL;
                    }

                    ++v65;
                  }

                  else if (v346 == 2)
                  {
                    if (*(v6 + 4))
                    {
                      v347 = [*(v6 - 16) gpuAddress];
                      if (v71 >= v396)
                      {
                        goto LABEL_475;
                      }

                      *&v343[8 * v71] = &v347[*v6];
                      v349 = *(v6 + 8);
                      v437[0] = *(v6 - 16);
                      v433 = 0;
                      v350 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v335, v437, &v433);
                      v351 = *v350 | v349;
                      v9 = v335;
                      *v350 = v351;
                    }

                    ++v71;
                  }

                  v6 += 40;
                  v10 -= 40;
                }

                while (v10);
              }

              a1 += 8;
            }

            while (a1 != v392);
            v6 = a5;
LABEL_446:
            v243 = v386;
          }

          else
          {
            v6 = a5;
          }
        }

        else
        {
          if (v303 != 2)
          {
            goto LABEL_489;
          }

          v243 = v401;
          if (v399)
          {
            v304 = 0;
            v305 = 0;
            v306 = v401;
            v386 = v401;
            v307 = v401 + 8 * v399;
            do
            {
              v308 = *(*v306 + 24);
              if (v308)
              {
                v10 = 40 * v308;
                v309 = (*(*v306 + 40) + 24);
                do
                {
                  v310 = *(v309 - 6);
                  if (v310 == 3)
                  {
                    if (v309[1])
                    {
                      [*&v458[24] setBuffer:*(v309 - 2) offset:*v309 atIndex:{v305, v215.n128_f64[0]}];
                      v437[0] = *(v309 - 2);
                      v433 = 0;
                      v313 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
                      *v313 |= 1uLL;
                    }

                    ++v305;
                  }

                  else if (v310 == 2)
                  {
                    if (v309[1])
                    {
                      [*&v458[16] setBuffer:*(v309 - 2) offset:*v309 atIndex:{v304, v215.n128_f64[0]}];
                      v311 = *(v309 + 1);
                      v437[0] = *(v309 - 2);
                      v433 = 0;
                      v312 = re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(v9, v437, &v433);
                      *v312 |= v311;
                    }

                    ++v304;
                  }

                  v309 += 10;
                  v10 -= 40;
                }

                while (v10);
              }

              v306 += 8;
            }

            while (v306 != v307);
            goto LABEL_446;
          }
        }

        for (j = 24; j != -8; j -= 8)
        {
          v356 = *&v458[j];
          if (v356)
          {

            *&v458[j] = 0;
          }
        }

        goto LABEL_452;
      }

      *&v438[8] = 0;
      v437[2] = 0;
      v437[3] = 0;
      *v438 = 0;
      v437[0] = v108;
      v437[1] = a2;
      re::DynamicArray<re::EvaluationRegister>::setCapacity(&v437[1], 0x1EuLL);
      memset(&v438[16], 0, 48);
      ++*v438;
      *&v438[52] = 0x7FFFFFFF;
      *&v438[64] = re::DeformationVertexBufferState::inputVertexCount(v82, 1u);
      v215.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v438[16]);
      if (v437[1] && *&v438[8])
      {
        (*(*v437[1] + 40))(v215.n128_f64[0]);
      }

      v10 = v379;
      v216 = *(v378 + 32) + 104 * *(v378 + 16) - 96;
      if ((v377 & 2) != 0)
      {
        LODWORD(v437[0]) = 0;
        v458[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 1u);
        v314 = v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v458);
        v437[1] = *(v314 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v314 + 16);
        if ((v377 & 4) == 0)
        {
LABEL_347:
          if ((v377 & 8) == 0)
          {
            goto LABEL_348;
          }

          goto LABEL_421;
        }
      }

      else if ((v377 & 4) == 0)
      {
        goto LABEL_347;
      }

      LODWORD(v437[0]) = 1;
      v458[0] = 2;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 2u);
      v315 = v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v458);
      v437[1] = *(v315 + 24);
      LODWORD(v437[2]) = 0;
      v437[3] = *(v315 + 16);
      if ((v377 & 8) == 0)
      {
LABEL_348:
        if ((v377 & 0x10) != 0)
        {
          goto LABEL_422;
        }

        goto LABEL_349;
      }

LABEL_421:
      LODWORD(v437[0]) = 2;
      v458[0] = 3;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 3u);
      v316 = v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v458);
      v437[1] = *(v316 + 24);
      LODWORD(v437[2]) = 0;
      v437[3] = *(v316 + 16);
      if ((v377 & 0x10) != 0)
      {
LABEL_422:
        LODWORD(v437[0]) = 3;
        v458[0] = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 4u);
        v317 = v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v458);
        v437[1] = *(v317 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v317 + 16);
        if ((v377 & 0x100000) == 0)
        {
          goto LABEL_351;
        }

LABEL_350:
        LODWORD(v437[0]) = 4;
        v458[0] = 20;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 0x14u);
        v217 = v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v458);
        v437[1] = *(v217 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v217 + 16);
        goto LABEL_351;
      }

LABEL_349:
      if ((v377 & 0x100000) != 0)
      {
        goto LABEL_350;
      }

LABEL_351:
      if ((v396 & 2) != 0)
      {
        v218 = *(v379 + 360);
        v219 = *(v6 + 16);
        v9 = *(v381 + 16);
        LOBYTE(v437[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 1u);
        v220 = *(v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v437) + 20);
        LOBYTE(v437[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 1u);
        v221 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 15, v437);
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v385, v218, v219, v9, v220, 1, 1, (v385[16] + 20 * v221 + 4));
        LODWORD(v437[0]) = 5;
        v458[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 1u);
        v222 = v385[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 23, v458);
        v437[1] = *(v222 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v222 + 16);
      }

      if ((v396 & 4) != 0)
      {
        v223 = *(v379 + 360);
        v224 = *(v6 + 16);
        v9 = *(v381 + 16);
        LOBYTE(v437[0]) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 2u);
        v225 = *(v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v437) + 20);
        LOBYTE(v437[0]) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 2u);
        v226 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 15, v437);
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v385, v223, v224, v9, v225, 2, 1, (v385[16] + 20 * v226 + 4));
        LODWORD(v437[0]) = 6;
        v458[0] = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 2u);
        v227 = v385[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 23, v458);
        v437[1] = *(v227 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v227 + 16);
      }

      if ((v396 & 8) != 0)
      {
        v228 = *(v379 + 360);
        v229 = *(v6 + 16);
        v9 = *(v381 + 16);
        LOBYTE(v437[0]) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 3u);
        v230 = *(v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v437) + 20);
        LOBYTE(v437[0]) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 3u);
        v231 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 15, v437);
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v385, v228, v229, v9, v230, 3, 1, (v385[16] + 20 * v231 + 4));
        LODWORD(v437[0]) = 7;
        v458[0] = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 2u);
        v232 = v385[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 23, v458);
        v437[1] = *(v232 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v232 + 16);
      }

      if ((v396 & 0x10) != 0)
      {
        v233 = *(v379 + 360);
        v234 = *(v6 + 16);
        v9 = *(v381 + 16);
        LOBYTE(v437[0]) = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 4u);
        v235 = *(v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v437) + 20);
        LOBYTE(v437[0]) = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 4u);
        v236 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 15, v437);
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v385, v233, v234, v9, v235, 4, 1, (v385[16] + 20 * v236 + 4));
        LODWORD(v437[0]) = 8;
        v458[0] = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 3u);
        v237 = v385[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 23, v458);
        v437[1] = *(v237 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v237 + 16);
      }

      if ((v396 & 0x100000) != 0)
      {
        v238 = *(v379 + 360);
        v239 = *(v6 + 16);
        v9 = *(v381 + 16);
        LOBYTE(v437[0]) = 20;
        v10 = v385;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 0x14u);
        v240 = *(v385[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 7, v437) + 20);
        LOBYTE(v437[0]) = 20;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 0x14u);
        v241 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 15, v437);
        re::DeformationVertexBufferState::allocAndSetOutputBuffer(v10, v238, v239, v9, v240, 20, 1, (*(v10 + 128) + 20 * v241 + 4));
        LODWORD(v437[0]) = 9;
        v458[0] = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v385, 4u);
        v242 = v385[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v385 + 23, v458);
        v437[1] = *(v242 + 24);
        LODWORD(v437[2]) = 0;
        v437[3] = *(v242 + 16);
      }

      v243 = v401;
      if (v399)
      {
        v244 = v6;
        v245 = 0;
        v246 = 0;
        v247 = v401;
        v248 = v401;
        v9 = v401 + 8 * v399;
        do
        {
          v249 = *(*v247 + 24);
          if (v249)
          {
            v10 = 40 * v249;
            v250 = (*(*v247 + 40) + 28);
            do
            {
              v251 = *(v250 - 7);
              if (v251 == 3)
              {
                if (*v250)
                {
                  LODWORD(v437[0]) = v245 + 20;
                  *&v437[1] = *(v250 - 5);
                  v437[3] = *(v250 - 1);
                }

                ++v245;
              }

              else if (v251 == 2)
              {
                if (*v250)
                {
                  LODWORD(v437[0]) = v246 + 10;
                  *&v437[1] = *(v250 - 5);
                  v437[3] = *(v250 - 1);
                }

                ++v246;
              }

              v250 += 10;
              v10 -= 40;
            }

            while (v10);
          }

          v247 += 8;
        }

        while (v247 != v9);
        v243 = v248;
        v6 = v244;
      }

LABEL_452:
      if (v397)
      {
        v357 = v243 == 0;
      }

      else
      {
        v357 = 1;
      }

      if (!v357)
      {
        (*(*v397 + 40))(v215);
      }

      v51 = v393 + 1;
      if (v393 + 1 == v388)
      {
        goto LABEL_465;
      }
    }

    v437[0] = [objc_msgSend(v111 alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(&v423, v437);
    if (v437[0])
    {
    }

    v437[0] = [objc_msgSend(MEMORY[0x1E69740D0] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(&v422, v437);
    v121 = v71;
    if (v437[0])
    {
    }

    v437[0] = [objc_msgSend(MEMORY[0x1E69740D0] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(&v421, v437);
    if (v437[0])
    {
    }

    v437[0] = [objc_msgSend(MEMORY[0x1E69740D0] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(&v420, v437);
    v122 = v437[0];
    if (v437[0])
    {
LABEL_128:
    }

LABEL_129:
    v123 = MEMORY[0x1E695DEC8];
    v369 = [MEMORY[0x1E695DEC8] arrayWithObject_];
    v368 = [v123 arrayWithObject_];
    if ((v121 & 4) != 0)
    {
      BYTE1(v437[0]) = v373;
      v124 = 1;
    }

    else
    {
      v124 = 0;
    }

    LOBYTE(v437[0]) = v124;
    if ((v121 & 8) != 0)
    {
      v458[1] = v85;
      v125 = 1;
    }

    else
    {
      v125 = 0;
    }

    v458[0] = v125;
    if ((v121 & 0x10) != 0)
    {
      BYTE1(v455) = v371;
      v126 = 1;
    }

    else
    {
      v126 = 0;
    }

    LOBYTE(v455) = v126;
    if ((v121 & 0x100000) != 0)
    {
      v451[1] = v370;
      v127 = 1;
    }

    else
    {
      v127 = 0;
    }

    v451[0] = v127;
    v128 = re::StitchedDeformer::vertexUnpackFunction(v395, (v121 & 2) != 0, v374, v437, v458, &v455, v451);
    if (!v128)
    {
      v108 = 0;
      v10 = a3;
      v154 = v367;
      v9 = v437;
      goto LABEL_322;
    }

    v129 = v128;
    re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, v128);
    v467[0] = v423;
    v467[1] = v367;
    v130 = [MEMORY[0x1E69740A0] alloc];
    v131 = [*v129 name];
    v132 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    v9 = [v130 initWithName:v131 arguments:v132 controlDependencies:v390];
    v419 = v9;
    if (v132)
    {
    }

    v437[0] = v9;
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v424, v437);
    if (v437[0])
    {
    }

    if (v68)
    {
      *v380 = 0;
      v134 = 0;
      v135 = v375;
      while (1)
      {
        if (v134 == v135)
        {
          goto LABEL_484;
        }

        v136 = *(v10 + 8 * v134);
        v133 = *v136;
        if (*v136 && *v133)
        {
          v365 = v9;
          v366 = v134;
          v9 = *(v136 + 24);
          *&v456 = 0;
          *&v455 = &v433;
          *(&v455 + 1) = v9;
          if (v9)
          {
            if (!(v9 >> 61))
            {
              v137 = (*(v433 + 32))(&v433, 8 * v9, 8);
              *&v456 = v137;
              if (!v137)
              {
LABEL_486:
                re::internal::assertLog(4, v138, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash();
                __break(1u);
LABEL_487:
                v445[0] = 0;
                v456 = 0u;
                memset(v457, 0, 48);
                v455 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v451 = 136315906;
                *&v451[4] = "operator[]";
                *&v451[12] = 1024;
                *&v451[14] = 858;
                *&v451[18] = 2048;
                *&v451[20] = v10;
                *&v451[28] = 2048;
                *&v451[30] = a1;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_488:
                re::internal::assertLog(4, v197, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                _os_crash();
                __break(1u);
LABEL_489:
                re::internal::assertLog(5, v259, "assertion failure: '%s' (%s:line %i) Unexpected argument buffer tier: %u", "!Unreachable code", "allocateBuffers", 594, v303);
                _os_crash();
                __break(1u);
              }

              v139 = v137;
              v140 = v137;
              if (v9 != 1)
              {
                bzero(v137, 8 * v9 - 8);
                v140 = &v139[v9 - 1];
              }

              v141 = 0;
              v6 = 0;
              *v140 = 0;
              v364 = v139;
              v142 = v139;
              while (2)
              {
                a1 = *(v136 + 24);
                if (a1 <= v6)
                {
                  goto LABEL_478;
                }

                if (v9 == v6)
                {
                  goto LABEL_479;
                }

                v143 = *(*(v136 + 40) + v141);
                if (v143 == 3)
                {
                  if (v380[1] > 9 || (v146 = re::StitchedDeformer::lookupConstantBufferFunction(v395, v380[1])) == 0)
                  {
LABEL_203:
                    re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v455);
                    v108 = 0;
                    v9 = v437;
                    v6 = a5;
                    v10 = a3;
                    v82 = v385;
                    goto LABEL_315;
                  }

                  v147 = v146;
                  re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, v146);
                  v437[0] = [objc_msgSend(MEMORY[0x1E69740A0] alloc)];
                  NS::SharedPtr<MTL::Texture>::operator=(v142, v437);
                  if (v437[0])
                  {
                  }

                  ++v380[1];
                }

                else
                {
                  if (v143 != 2)
                  {
                    if (v143 == 1)
                    {
                      NS::SharedPtr<MTL::Buffer>::operator=(v142, &v419);
                    }

LABEL_174:
                    ++v6;
                    ++v142;
                    v141 += 40;
                    if (v9 == v6)
                    {
                      v133 = *v136;
                      v6 = a5;
                      v82 = v385;
                      v148 = v364;
                      goto LABEL_178;
                    }

                    continue;
                  }

                  if (v380[0] > 9)
                  {
                    goto LABEL_203;
                  }

                  v144 = re::StitchedDeformer::lookupDeviceBufferFunction(v395, v380[0]);
                  if (!v144)
                  {
                    goto LABEL_203;
                  }

                  v145 = v144;
                  re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, v144);
                  v437[0] = [objc_msgSend(MEMORY[0x1E69740A0] alloc)];
                  NS::SharedPtr<MTL::Texture>::operator=(v142, v437);
                  if (v437[0])
                  {
                  }

                  ++v380[0];
                }

                break;
              }

              re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(v424, v142);
              goto LABEL_174;
            }

LABEL_485:
            re::internal::assertLog(6, v133, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v9);
            _os_crash();
            __break(1u);
            goto LABEL_486;
          }

          v148 = 0;
LABEL_178:
          re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, v133);
          v150 = [MEMORY[0x1E69740A0] alloc];
          v151 = [**v136 name];
          v152 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
          v153 = [v150 initWithName:v151 arguments:v152 controlDependencies:v390];
          v149 = v153;
          if (v365 == v153)
          {

            v149 = v365;
          }

          else
          {
            if (v365)
            {
            }

            v419 = v149;
          }

          a1 = v458;
          if (v152)
          {
          }

          v437[0] = v149;
          re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v424, v437);
          if (v437[0])
          {
          }

          re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(&v455);
          v135 = v375;
          v134 = v366;
        }

        else
        {
          v149 = v9;
        }

        ++v134;
        v9 = v149;
        if (v134 == v68)
        {
          goto LABEL_205;
        }
      }
    }

    *v380 = 0;
LABEL_205:
    if ((v396 & 4) != 0)
    {
      BYTE1(v437[0]) = v373;
      v155 = 1;
    }

    else
    {
      v155 = 0;
    }

    v10 = a3;
    LOBYTE(v437[0]) = v155;
    if ((v396 & 8) != 0)
    {
      v458[1] = v372;
      v156 = 1;
    }

    else
    {
      v156 = 0;
    }

    v458[0] = v156;
    if ((v396 & 0x10) != 0)
    {
      BYTE1(v455) = v371;
      v157 = 1;
    }

    else
    {
      v157 = 0;
    }

    LOBYTE(v455) = v157;
    if ((v396 & 0x100000) != 0)
    {
      v451[1] = v370;
      v158 = 1;
    }

    else
    {
      v158 = 0;
    }

    v451[0] = v158;
    v159 = re::StitchedDeformer::vertexPackFunction(v395, (v396 & 2) != 0, v374, v437, v458, &v455, v451);
    if (!v159)
    {
      v108 = 0;
      v9 = v437;
LABEL_315:
      if (v419)
      {
      }

      for (k = 1; k != -1; --k)
      {
        v210 = v467[k];
        if (v210)
        {

          v467[k] = 0;
        }
      }

      v154 = v367;
      goto LABEL_322;
    }

    v160 = v159;
    re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(v428, v159);
    v466[0] = v422;
    v466[1] = v419;
    v161 = [MEMORY[0x1E69740A0] alloc];
    v162 = [*v160 name];
    v163 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    v164 = [v161 initWithName:v162 arguments:v163 controlDependencies:v390];
    if (v163)
    {
    }

    v437[0] = v164;
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(v424, v437);
    if (v437[0])
    {
    }

    if (*(v395 + 25) - 1 > 2)
    {
      v108 = 0;
LABEL_309:
      v9 = v437;
      if (v164)
      {
      }

      for (m = 1; m != -1; --m)
      {
        v208 = v466[m];
        if (v208)
        {

          v466[m] = 0;
        }
      }

      goto LABEL_315;
    }

    v165 = [MEMORY[0x1E696AEC0] stringWithCString:off_1E87213B8[(*(v395 + 25) - 1)] encoding:4];
    v418 = [objc_msgSend(MEMORY[0x1E69740B0] alloc)];
    [v418 setFunctionName_];
    v166 = v418;
    v167 = [MEMORY[0x1E695DEC8] alloc];
    v168 = [v167 initWithObjects:v427 count:v425];
    [v166 setNodes_];
    if (v168)
    {
    }

    v169 = [objc_msgSend(MEMORY[0x1E6974198] alloc)];
    v170 = [MEMORY[0x1E695DEC8] alloc];
    v171 = [v170 initWithObjects:v431 count:v429];
    [v169 setFunctions_];
    if (v171)
    {
    }

    v172 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [v169 setFunctionGraphs_];
    if (v172)
    {
    }

    v173 = *(v395 + 1);
    v417 = 0;
    v174 = [*(v173 + 208) newLibraryWithStitchedDescriptor:v169 error:&v417];
    if (v174)
    {
      v175 = v174;
      v416 = [v174 newFunctionWithName_];
      if (v416)
      {
        v176 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
        v177 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
        v391 = v176;
        v178 = [v176 setPrivateFunctions_];
        if (v177)
        {
        }

        v179 = *(v395 + 25);
        if ((v179 - 1) > 2)
        {
          v108 = 0;
        }

        else
        {
          v376 = v175;
          v180 = off_1E87213D0[(v179 - 1)];
          v458[0] = 0;
          LOBYTE(v459) = 0;
          memset(v461, 0, sizeof(v461));
          v462 = 0;
          v463 = 0;
          v464 = 0;
          v465 = 1;
          if (v179 == 1)
          {
            memset(v437, 0, sizeof(v437));
            re::DynamicString::setCapacity(v437, 0);
            memset(&v438[8], 0, 60);
            *&v438[4] = BYTE2(v377) & 0x10 | (v377 >> 1) & 0xF;
            *v438 = 33;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v461, v437);
            v455 = 0u;
            v456 = 0u;
            re::DynamicString::setCapacity(&v455, 0);
            memset(&v457[2], 0, 60);
            v457[1] = BYTE2(v396) & 0x10 | (v396 >> 1) & 0xF;
            v457[0] = 65569;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v461, &v455);
            memset(v451, 0, 32);
            re::DynamicString::setCapacity(v451, 0);
            memset(v454, 0, sizeof(v454));
            v453 = 0u;
            v452 = 0u;
            *&v451[36] = v380[0];
            *&v451[32] = 131105;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v461, v451);
            memset(v445, 0, sizeof(v445));
            re::DynamicString::setCapacity(v445, 0);
            memset(v450, 0, sizeof(v450));
            v449 = 0u;
            v448 = 0u;
            v447 = v380[1];
            v446 = 196641;
            v184 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v461, v445);
            if (v445[0] && (v445[1] & 1) != 0)
            {
              (*(*v445[0] + 40))(v184);
            }

            if (*v451 && (v451[8] & 1) != 0)
            {
              (*(**v451 + 40))(v184);
            }

            if (v455 && (BYTE8(v455) & 1) != 0)
            {
              (*(*v455 + 40))(v184);
            }

            v178 = v437[0];
            if (v437[0] && (v437[1] & 1) != 0)
            {
              v178 = (*(*v437[0] + 40))(v184);
            }
          }

          v185 = *(v395 + 1);
          v187 = re::getOrCreateMetalFunction(v185, v437, v458, v186);
          v188 = v437[0];
          if (v437[0] && (v437[1] & 1) != 0)
          {
            v188 = (*(*v437[0] + 40))();
          }

          if (v187)
          {
            v438[0] = v458[0];
            if (v458[0] == 1)
            {
              re::DynamicString::DynamicString(&v438[8], &v458[8]);
            }

            v438[40] = v459;
            if (v459 == 1)
            {
              re::DynamicString::DynamicString(&v438[48], v460);
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v439, v461);
            v441 = v464;
            v442 = v465;
            v443 = v176;
            v444 = 0;
            ComputePipelineState = re::getOrCreateComputePipelineState(*(v395 + 1), v437);
            if (ComputePipelineState)
            {
              v190 = *ComputePipelineState;
              v191 = *(v395 + 37);
              a1 = *(v395 + 33);
              if (v191 + 1 > a1 << 6)
              {
                re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::setBucketsCapacity(v395 + 32, (v191 + 64) >> 6);
                a1 = *(v395 + 33);
              }

              v10 = v191 >> 6;
              if (a1 <= v191 >> 6)
              {
                goto LABEL_487;
              }

              v192 = v395 + 280;
              if ((*(v395 + 272) & 1) == 0)
              {
                v192 = *(v395 + 36);
              }

              v193 = *&v192[8 * v10];
              v194 = *(v395 + 37);
              *(v395 + 37) = v194 + 1;
              ++*(v395 + 76);
              v195 = (v193 + 16 * (v191 & 0x3F));
              *v195 = v190;
              v195[1] = v187;
              v455 = 0uLL;
              *&v456 = 0;
              v196 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v432 ^ (v432 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v432 ^ (v432 >> 30))) >> 27));
              re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v395 + 208, &v432, v196 ^ (v196 >> 31), &v455);
              if (HIDWORD(v455) == 0x7FFFFFFF)
              {
                v198 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v395 + 208, DWORD2(v455), v455);
                *(v198 + 8) = v432;
                *(v198 + 16) = v194;
                ++*(v395 + 62);
              }

              v199 = *(v395 + 37);
              v10 = a3;
              v175 = v376;
              if (!v199)
              {
                goto LABEL_488;
              }

              v108 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](v395 + 256, v199 - 1);
            }

            else
            {
              v108 = 0;
              v175 = v376;
            }

            if (v443)
            {

              v443 = 0;
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v439);
            if (v438[40] == 1 && *&v438[48])
            {
              if (v438[56])
              {
                (*(**&v438[48] + 40))();
              }

              memset(&v438[48], 0, 32);
            }

            if (v438[0] == 1 && *&v438[8])
            {
              if (v438[16])
              {
                (*(**&v438[8] + 40))();
              }

              memset(&v438[8], 0, 32);
            }

            if (v437[0] && (v437[1] & 1) != 0)
            {
              (*(*v437[0] + 40))();
            }
          }

          else
          {
            v108 = 0;
            v175 = v376;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v461);
          if (v459 == 1 && v460[0])
          {
            if (v460[1])
            {
              (*(*v460[0] + 40))();
            }

            memset(v460, 0, sizeof(v460));
          }

          if (v458[0] == 1 && *&v458[8] && (v458[16] & 1) != 0)
          {
            (*(**&v458[8] + 40))();
          }
        }

        if (v391)
        {
        }

        if (v416)
        {
        }
      }

      else
      {
        v108 = 0;
      }

      if (!v169)
      {
        goto LABEL_307;
      }

      goto LABEL_306;
    }

    v200 = v417;
    v201 = *re::graphicsLogObjects(0);
    v202 = os_log_type_enabled(v201, OS_LOG_TYPE_ERROR);
    if (v200)
    {
      if (!v202)
      {
        goto LABEL_273;
      }

      v203 = [objc_msgSend(v417 localizedDescription)];
      LODWORD(v437[0]) = 136315138;
      *(v437 + 4) = v203;
      v204 = v201;
      v205 = "stitchedDeformerPipeline failed [%s].";
      v206 = 12;
    }

    else
    {
      if (!v202)
      {
        goto LABEL_273;
      }

      LOWORD(v437[0]) = 0;
      v204 = v201;
      v205 = "stitchedDeformerPipeline failed.";
      v206 = 2;
    }

    _os_log_error_impl(&dword_1E1C61000, v204, OS_LOG_TYPE_ERROR, v205, v437, v206);
LABEL_273:
    v108 = 0;
    if (!v169)
    {
LABEL_307:
      if (v418)
      {
      }

      goto LABEL_309;
    }

LABEL_306:

    goto LABEL_307;
  }

LABEL_465:
  v358.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v402);
  v359 = v406;
  if (v406)
  {
    v360 = v410;
    if (v410)
    {
      if (v408)
      {
        v361 = 24 * v408;
        v362 = v410;
        do
        {
          re::FixedArray<re::StitchFunctionParameters>::deinit(v362);
          v362 += 3;
          v361 -= 24;
        }

        while (v361);
      }

      (*(*v359 + 40))(v359, v360, v358);
    }
  }

  re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::deinit(&v411);
  re::StackScratchAllocator::~StackScratchAllocator(v415);
  return v378;
}

uint64_t *re::DynamicArray<re::anonymous namespace::StitchedDeformerPayload::DeformationUnit>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v14 = 2 * v4;
      v15 = v4 == 0;
      v16 = 8;
      if (!v15)
      {
        v16 = v14;
      }

      if (v16 <= v6)
      {
        v17 = v6;
      }

      else
      {
        v17 = v16;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 104 * *(a1 + 16);
  v9 = *a2;
  *(v8 + 40) = 0;
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v10 = a2[2];
  *(v8 + 8) = a2[1];
  *(v8 + 16) = v10;
  a2[1] = 0;
  a2[2] = 0;
  v11 = *(v8 + 24);
  *(v8 + 24) = a2[3];
  a2[3] = v11;
  v12 = *(v8 + 40);
  *(v8 + 40) = a2[5];
  a2[5] = v12;
  ++*(a2 + 8);
  ++*(v8 + 32);
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  v8 += 48;
  *(v8 + 32) = 0;
  *(v8 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, a2 + 6);
  *(v8 + 48) = *(a2 + 24);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 re::DynamicArray<re::anonymous namespace::StitchedDeformerPayload::ParameterBuffer>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v11 = 2 * v4;
      v12 = v4 == 0;
      v13 = 8;
      if (!v12)
      {
        v13 = v11;
      }

      if (v13 <= v6)
      {
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }

      re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v14);
    }

    else
    {
      re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  v8 = (*(a1 + 32) + 32 * *(a1 + 16));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashTable<MTL::Buffer const*,unsigned long,re::Hash<MTL::Buffer const*>,re::EqualTo<MTL::Buffer const*>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
  if (*a1)
  {
    v9 = v8 % *(a1 + 24);
    v10 = *(*(a1 + 8) + 4 * v9);
    if (v10 != 0x7FFFFFFF)
    {
      v11 = *(a1 + 16);
      if (*(v11 + 32 * v10 + 8) == v6)
      {
        return v11 + 32 * v10 + 16;
      }

      while (1)
      {
        v10 = *(v11 + 32 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v11 + 32 * v10 + 8) == v6)
        {
          return v11 + 32 * v10 + 16;
        }
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v13 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
  v14 = *a2;
  *(v13 + 16) = *a3;
  result = v13 + 16;
  *(result - 8) = v14;
  ++*(a1 + 40);
  return result;
}

void re::StitchedDeformer::deformGPU(int a1, uint64_t a2, void **this)
{
  if (a2)
  {
    re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Stitched Deformers");
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 32);
      v7 = v6 + 104 * v5;
      v22 = vdupq_n_s64(1uLL);
      do
      {
        v8 = *(v6 + 80);
        if (v8)
        {
          v9 = 0;
          v10 = *(v6 + 64);
          while (1)
          {
            v11 = *v10;
            v10 += 8;
            if (v11 < 0)
            {
              break;
            }

            if (v8 == ++v9)
            {
              LODWORD(v9) = *(v6 + 80);
              break;
            }
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

LABEL_17:
        while (v9 != v8)
        {
          v12 = *(v6 + 64) + 32 * v9;
          [*this useResource:*(v12 + 8) usage:*(v12 + 16)];
          v13 = *(v6 + 80);
          if (v13 <= v9 + 1)
          {
            v13 = v9 + 1;
          }

          while (v13 - 1 != v9)
          {
            LODWORD(v9) = v9 + 1;
            if ((*(*(v6 + 64) + 32 * v9) & 0x80000000) != 0)
            {
              goto LABEL_17;
            }
          }

          LODWORD(v9) = v13;
        }

        [*this setComputePipelineState:**v6];
        v14 = *(v6 + 24);
        if (v14)
        {
          v15 = *(v6 + 40);
          v16 = 32 * v14;
          do
          {
            v17 = *(v15 + 1);
            v18 = v15[6];
            v19 = *v15;
            v15 += 8;
            [*this setBuffer:v17 offset:v18 atIndex:{v19, *&v22}];
            v16 -= 32;
          }

          while (v16);
        }

        v20 = [**v6 threadExecutionWidth];
        v21 = *this;
        v25 = *(v6 + 96);
        v26 = v22;
        v23 = v20;
        v24 = v22;
        [v21 dispatchThreads:&v25 threadsPerThreadgroup:&v23];
        v6 += 104;
      }

      while (v6 != v7);
    }

    [*this popDebugGroup];
  }
}

id re::DynamicArray<NS::SharedPtr<MTL::Function>>::add(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v6)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32);
  result = *a2;
  *(v11 + 8 * v5) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::StitchedDeformer::init(uint64_t result, uint64_t a2)
{
  if ((*(result + 24) & 1) == 0)
  {
    v2 = result;
    v3 = *(a2 + 16);
    *(result + 24) = 1;
    if (re::mtl::Device::supportsArgumentBuffers((v3 + 208), a2))
    {
      if ([*(v3 + 208) argumentBuffersSupport])
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      *(v2 + 25) = v5;
    }

    else
    {
      *(v2 + 25) = 1;
    }

    LOBYTE(v11) = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexUnpackFunction(v2, 0, v4, &v11, &v10, &v9, v8);
    LOBYTE(v11) = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexPackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    LOBYTE(v11) = 0;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexUnpackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexPackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexUnpackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    v10 = 7681;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexPackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    v10 = 7681;
    LOBYTE(v9) = 0;
    v8[0] = 0;
    re::StitchedDeformer::vertexUnpackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    v10 = 7681;
    v9 = 7681;
    v8[0] = 0;
    re::StitchedDeformer::vertexPackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v11 = 7681;
    v10 = 7681;
    v9 = 7681;
    v8[0] = 0;
    re::StitchedDeformer::vertexUnpackFunction(v2, 1, 30, &v11, &v10, &v9, v8);
    v6 = 0;
    do
    {
      re::StitchedDeformer::lookupDeviceBufferFunction(v2, v6);
      v6 = (v6 + 1);
    }

    while (v6 != 10);
    v7 = 0;
    do
    {
      result = re::StitchedDeformer::lookupConstantBufferFunction(v2, v7);
      v7 = (v7 + 1);
    }

    while (v7 != 10);
  }

  return result;
}

double re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v8 = v6 + v4 + 16;
          re::BucketArray<unsigned long,64ul>::deinit(v8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
          v3 = *(a1 + 8);
        }

        v4 += 80;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<RESubscriptionHandle,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Deformer *,re::BucketArray<unsigned long,64ul>,re::Hash<re::Deformer *>,re::EqualTo<re::Deformer *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

void *re::DynamicArray<re::FixedArray<re::StitchFunctionParameters>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::FixedArray<re::StitchFunctionParameters>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<re::StitchFunctionParameters>::deinit(v8);
          v8 += 3;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::FixedArray<re::StitchFunctionParameters>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = (result[2] + 40);
      v5 = 48 * v2;
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          if (*v4)
          {
            (*(*v6 + 40))(v6);
          }

          *v4 = 0;
          *(v4 - 3) = 0;
          *(v4 - 2) = 0;
          *(v4 - 4) = 0;
          ++*(v4 - 2);
        }

        v4 += 6;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::StitchedDeformerPayload::DeformationUnit>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 104 * v9;
        v11 = v8 + 48;
        v12 = v7;
        do
        {
          v13 = *(v11 - 48);
          v12[5] = 0;
          *v12 = v13;
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          *(v12 + 8) = 0;
          v14 = *(v11 - 32);
          v12[1] = *(v11 - 40);
          *(v11 - 40) = 0;
          v12[2] = v14;
          *(v11 - 32) = 0;
          v15 = v12[3];
          v12[3] = *(v11 - 24);
          *(v11 - 24) = v15;
          v16 = v12[5];
          v12[5] = *(v11 - 8);
          *(v11 - 8) = v16;
          ++*(v11 - 16);
          ++*(v12 + 8);
          *(v12 + 3) = 0u;
          *(v12 + 4) = 0u;
          v17 = v12 + 6;
          *(v17 + 8) = 0;
          *(v17 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, v11);
          *(v17 + 12) = *(v11 + 48);
          v18 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v11);
          if (*(v11 - 40))
          {
            if (*(v11 - 8))
            {
              (*(**(v11 - 40) + 40))(*(v11 - 40), v18);
            }

            *(v11 - 8) = 0;
            *(v11 - 32) = 0;
            *(v11 - 24) = 0;
            *(v11 - 40) = 0;
            ++*(v11 - 16);
          }

          v11 += 104;
          v12 = v17 + 7;
          v10 -= 104;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 1024, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

re::FileStreamReader *re::FileStreamReader::FileStreamReader(re::FileStreamReader *this, __sFILE *a2, char a3)
{
  *this = &unk_1F5D0A3F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 24) = a3;
  v5 = MEMORY[0x1E6906FC0](a2);
  fseek(a2, 0, 2);
  *(this + 2) = MEMORY[0x1E6906FC0](a2);
  fseek(a2, v5, 0);
  return this;
}

uint64_t re::FileStreamReader::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 && *(a1 + 24) == 1)
    {
      fclose(v4);
    }

    *(a1 + 24) = *(a2 + 24);
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
  }

  return a1;
}

void re::FileStreamReader::~FileStreamReader(re::FileStreamReader *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 24) == 1)
    {
      fclose(v2);
      *(this + 1) = 0;
      *(this + 24) = 0;
    }
  }
}

{
  v2 = *(this + 1);
  if (v2 && *(this + 24) == 1)
  {
    fclose(v2);
    *(this + 1) = 0;
    *(this + 24) = 0;
  }

  JUMPOUT(0x1E6906520);
}

__n128 re::FileStreamReader::open@<Q0>(re::FileStreamReader *this@<X0>, uint64_t a2@<X8>)
{
  v5 = fopen(this, "rb");
  if (v5)
  {
    re::FileStreamReader::FileStreamReader(&v14, v5, 1);
    v7 = v16;
    v8 = v14.n128_u64[1];
    v9 = v15;
    *a2 = 1;
    *(a2 + 8) = &unk_1F5D0A3F0;
    *(a2 + 16) = v8;
    *(a2 + 32) = v7;
    *(a2 + 24) = v9;
  }

  else
  {
    v10 = __error();
    v11 = strerror(*v10);
    re::DynamicString::format("Failed to open file %s for reading. Details: %s", &v14, this, v11);
    result = v14;
    v12 = v15;
    v13 = v16;
    *a2 = 0;
    *(a2 + 8) = 300;
    *(a2 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
  }

  return result;
}

fpos_t re::FileStreamReader::bytesRead(FILE **this)
{
  v2 = 0;
  fgetpos(this[1], &v2);
  return v2;
}

uint64_t re::FileStreamReader::bytesRemaining(re::FileStreamReader *this)
{
  v3 = 0;
  v1 = *(this + 2);
  fgetpos(*(this + 1), &v3);
  return v1 - v3;
}

unint64_t re::FileStreamReader::skipBytes(re::FileStreamReader *this, unint64_t a2)
{
  v6 = 0;
  v4 = *(this + 2);
  fgetpos(*(this + 1), &v6);
  if (v4 - v6 < a2)
  {
    a2 = v4 - v6;
  }

  if (fseek(*(this + 1), a2, 1))
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

BOOL re::FileStreamReader::seek(re::FileStreamReader *this, unint64_t a2)
{
  v6 = 0;
  v4 = *(this + 2);
  fgetpos(*(this + 1), &v6);
  return v4 - v6 >= a2 && fseek(*(this + 1), a2, 0) == 0;
}

uint64_t re::ExternalMemorySeekableInputStream::ExternalMemorySeekableInputStream(uint64_t a1, re::FixedArrayInputStream *a2)
{
  *a1 = &unk_1F5D0A468;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  re::FixedArrayInputStream::FixedArrayInputStream((a1 + 32), v4, v5, -1);
  v6 = (*(*a2 + 40))(a2);
  if (v6)
  {
    (*(*a1 + 32))(a1, v6);
  }

  re::ExternalMemorySeekableInputStream::postDetachCleanup(a2);
  return a1;
}

re::FixedArrayInputStream *re::ExternalMemorySeekableInputStream::postDetachCleanup(re::FixedArrayInputStream *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = (this + 32);
    (**(this + 4))(this + 32);
    this = re::FixedArrayInputStream::FixedArrayInputStream(v1, 0, 0, -1);
    *(v1 - 24) = 1;
    *(v1 - 2) = 0;
    *(v1 - 1) = 0;
  }

  return this;
}

re::FixedArrayInputStream *re::ExternalMemorySeekableInputStream::operator=(re::FixedArrayInputStream *a1, re::FixedArrayInputStream *a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v4;
    *(a1 + 8) = *(a2 + 8);
    v5 = (*(*a2 + 40))(a2);
    (**(a1 + 4))(a1 + 32);
    re::FixedArrayInputStream::FixedArrayInputStream((a1 + 32), *(a1 + 2), *(a1 + 6), -1);
    if (v5)
    {
      (*(*a1 + 32))(a1, v5);
    }

    re::ExternalMemorySeekableInputStream::postDetachCleanup(a2);
  }

  return a1;
}

BOOL re::ExternalMemorySeekableInputStream::Seek(re::ExternalMemorySeekableInputStream *this, unint64_t a2)
{
  v3 = *(this + 3);
  if (v3 >= a2)
  {
    google::protobuf::io::ArrayInputStream::Seek((this + 56), a2);
  }

  return v3 >= a2;
}

uint64_t re::ExternalMemorySeekableInputStream::CreateDetached(re::ExternalMemorySeekableInputStream *this)
{
  __dst = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v11 = 0;
  re::DynamicArray<char>::resize(&v9, *(this + 3));
  v2 = memcpy(__dst, *(this + 2), *(this + 3));
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 136, 8);
  v5 = __dst;
  v6 = *&v10[2];
  *v4 = &unk_1F5D0A468;
  *(v4 + 8) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  re::FixedArrayInputStream::FixedArrayInputStream((v4 + 32), v5, v6, -1);
  *v4 = &unk_1F5D0A660;
  *(v4 + 96) = v9;
  *(v4 + 104) = *v10;
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  *(v4 + 128) = __dst;
  __dst = 0;
  ++v11;
  *(v4 + 120) = 1;
  v7 = (*(*this + 40))(this);
  (*(*v4 + 56))(v4, v7);
  re::ExternalMemorySeekableInputStream::postDetachCleanup(this);
  if (v9 && __dst)
  {
    (*(*v9 + 40))();
  }

  return v4;
}

uint64_t re::DataSeekableInputStream::DataSeekableInputStream(uint64_t a1, id *a2, char a3, char a4)
{
  if (!*a2)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = [*a2 bytes];
  if (!*a2)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = [*a2 length];
LABEL_6:
  *a1 = &unk_1F5D0A468;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  re::FixedArrayInputStream::FixedArrayInputStream((a1 + 32), v8, v9, -1);
  *a1 = &unk_1F5D0A4F8;
  *(a1 + 96) = *a2;
  *(a1 + 104) = a3;
  *(a1 + 105) = a4;
  return a1;
}

uint64_t re::DataSeekableInputStream::DataSeekableInputStream(uint64_t a1, uint64_t a2)
{
  v4 = re::ExternalMemorySeekableInputStream::ExternalMemorySeekableInputStream(a1, a2);
  *v4 = &unk_1F5D0A4F8;
  v5 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(v4 + 96) = v5;
  *(v4 + 104) = *(a2 + 104);
  *(v4 + 105) = *(a2 + 105);
  re::DataSeekableInputStream::postDetachCleanup(a2);
  return a1;
}

re::FixedArrayInputStream *re::DataSeekableInputStream::postDetachCleanup(re::DataSeekableInputStream *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;

  *(this + 52) = 0;

  return re::ExternalMemorySeekableInputStream::postDetachCleanup(this);
}

uint64_t re::DataSeekableInputStream::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::ObjCObject::operator=((a1 + 96), (a2 + 96));
    *(a1 + 104) = *(a2 + 104);
    v4 = *(a2 + 96);
    *(a2 + 96) = 0;

    *(a2 + 104) = 0;
    re::ExternalMemorySeekableInputStream::operator=(a1, a2);
  }

  return a1;
}

uint64_t re::DataSeekableInputStream::CreateDetached(id *this)
{
  if (*(this + 104) == 1)
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
    re::DataSeekableInputStream::DataSeekableInputStream(v3, this);
  }

  else
  {
    v4 = (*(*this + 5))(this);
    re::Data::makeDataWithBytes([this[12] bytes], objc_msgSend(this[12], "length"), &v10);
    v5 = re::DataSeekableInputStream::postDetachCleanup(this);
    v6 = re::globalAllocators(v5);
    v3 = (*(*v6[2] + 32))(v6[2], 112, 8);
    v7 = v10;
    v9 = v7;
    re::DataSeekableInputStream::DataSeekableInputStream(v3, &v9, 1, 0);

    (*(*v3 + 56))(v3, v4);
  }

  return v3;
}

re::CFDataSeekableInputStream *re::CFDataSeekableInputStream::CFDataSeekableInputStream(re::CFDataSeekableInputStream *this, CFDataRef theData, char a3, char a4)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  *this = &unk_1F5D0A468;
  *(this + 8) = 0;
  *(this + 2) = BytePtr;
  *(this + 3) = Length;
  re::FixedArrayInputStream::FixedArrayInputStream((this + 32), BytePtr, Length, -1);
  *this = &unk_1F5D0A588;
  *(this + 12) = theData;
  *(this + 104) = a3;
  *(this + 105) = a4;
  CFRetain(theData);
  return this;
}

uint64_t re::CFDataSeekableInputStream::CFDataSeekableInputStream(uint64_t a1, uint64_t a2)
{
  v4 = re::ExternalMemorySeekableInputStream::ExternalMemorySeekableInputStream(a1, a2);
  *v4 = &unk_1F5D0A588;
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 104) = *(a2 + 104);
  *(a2 + 96) = 0;
  re::CFDataSeekableInputStream::postDetachCleanup(a2);
  return a1;
}

re::FixedArrayInputStream *re::CFDataSeekableInputStream::postDetachCleanup(re::CFDataSeekableInputStream *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    CFRelease(v2);
    *(this + 12) = 0;
  }

  *(this + 52) = 0;

  return re::ExternalMemorySeekableInputStream::postDetachCleanup(this);
}

void re::CFDataSeekableInputStream::~CFDataSeekableInputStream(re::CFDataSeekableInputStream *this)
{
  *this = &unk_1F5D0A588;
  re::CFDataSeekableInputStream::postDetachCleanup(this);
  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this + 32);
}

{
  *this = &unk_1F5D0A588;
  re::CFDataSeekableInputStream::postDetachCleanup(this);
  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this + 32);

  JUMPOUT(0x1E6906520);
}

re::CFDataSeekableInputStream *re::CFDataSeekableInputStream::CreateDetached(const __CFData **this)
{
  if (*(this + 104) != 1)
  {
    v4 = (*(*this + 5))(this);
    v5 = *MEMORY[0x1E695E480];
    v6 = this[12];
    if (v6)
    {
      BytePtr = CFDataGetBytePtr(v6);
      v8 = this[12];
      if (v8)
      {
        Length = CFDataGetLength(v8);
LABEL_8:
        v10 = CFDataCreate(v5, BytePtr, Length);
        v11 = re::CFDataSeekableInputStream::postDetachCleanup(this);
        v12 = re::globalAllocators(v11);
        v3 = (*(*v12[2] + 32))(v12[2], 112, 8);
        re::CFDataSeekableInputStream::CFDataSeekableInputStream(v3, v10, 1, 0);
        CFRelease(v10);
        (*(*v3 + 56))(v3, v4);
        return v3;
      }
    }

    else
    {
      BytePtr = 0;
    }

    Length = 0;
    goto LABEL_8;
  }

  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
  re::CFDataSeekableInputStream::CFDataSeekableInputStream(v3, this);
  return v3;
}

void re::ExternalMemorySeekableInputStream::~ExternalMemorySeekableInputStream(re::ExternalMemorySeekableInputStream *this)
{
  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this + 32);
}

{
  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this + 32);

  JUMPOUT(0x1E6906520);
}

BOOL re::ExternalMemorySeekableInputStream::Next(re::ExternalMemorySeekableInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 20);
  v4 = *(this + 18);
  if (v3 >= v4)
  {
    *(this + 21) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 19))
    {
      v5 = *(this + 19);
    }

    *(this + 21) = v5;
    *a2 = (*(this + 8) + v3);
    *a3 = v5;
    *(this + 20) += *(this + 21);
  }

  return v3 < v4;
}

void *re::internal::OwnedMemorySeekableInputStream<re::DynamicArray<char>>::~OwnedMemorySeekableInputStream(void *a1)
{
  *a1 = &unk_1F5D0A660;
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  *a1 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((a1 + 4));
  return a1;
}

void re::internal::OwnedMemorySeekableInputStream<re::DynamicArray<char>>::~OwnedMemorySeekableInputStream(void *a1)
{
  *a1 = &unk_1F5D0A660;
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  *a1 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::OwnedMemorySeekableInputStream<re::DynamicArray<char>>::CreateDetached(uint64_t a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 136, 8);
  v4 = re::ExternalMemorySeekableInputStream::ExternalMemorySeekableInputStream(v3, a1);
  *v4 = &unk_1F5D0A660;
  *(v4 + 128) = 0;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 96) = 0;
  v5 = *(a1 + 104);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 104) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v6 = *(v4 + 112);
  *(v4 + 112) = *(a1 + 112);
  *(a1 + 112) = v6;
  v7 = *(v4 + 128);
  *(v4 + 128) = *(a1 + 128);
  *(a1 + 128) = v7;
  ++*(a1 + 120);
  ++*(v4 + 120);
  re::ExternalMemorySeekableInputStream::postDetachCleanup(a1);
  return v3;
}

re::FileSeekableInputStream *re::FileSeekableInputStream::FileSeekableInputStream(re::FileSeekableInputStream *this, const char *a2, uint64_t a3, uint64_t a4)
{
  *this = &unk_1F5D0A708;
  v8 = (this + 8);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  re::DynamicString::setCapacity(this + 5, 0);
  v10 = open(a2, 0);
  *(this + 18) = v10;
  *(this + 10) = a3;
  *(this + 11) = a4;
  *(this + 96) = 0;
  *(this + 13) = &unk_1F5CAC7A8;
  *(this + 14) = &unk_1F5CAC7E8;
  *(this + 30) = v10;
  *(this + 62) = 0;
  *(this + 32) = 0;
  *(this + 132) = 0;
  *(this + 17) = &unk_1F5CAC990;
  *(this + 18) = this + 112;
  *(this + 76) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0x2000;
  *(this + 46) = 0;
  *(this + 24) = this + 200;
  *(this + 25) = &unk_1F5CBC828;
  v11 = *(this + 18);
  if (v11 == -1)
  {
    v13 = __error();
    v14 = strerror(*v13);
    re::DynamicString::operator=((this + 40), &v19);
    if (v19 && (v20 & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    *(this + 11) = 0;
  }

  else
  {
    if (a4 != -1)
    {
      v12 = *(this + 10);
      if (!v12)
      {
        return this;
      }

      goto LABEL_16;
    }

    *(this + 11) = lseek(v11, 0, 2);
    lseek(*(this + 18), 0, 0);
    v12 = *(this + 10);
    v15 = *(this + 11);
    v16 = v15 >= v12;
    v17 = v15 - v12;
    if (v16)
    {
      *(this + 11) = v17;
      if (!v12)
      {
        return this;
      }

      goto LABEL_16;
    }

    re::DynamicString::operator=((this + 40), &v19);
    if (v19 && (v20 & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v12 = *(this + 11);
    *(this + 10) = v12;
    *(this + 11) = 0;
    if (v12)
    {
LABEL_16:
      if (!google::protobuf::io::CopyingInputStreamAdaptor::Skip((this + 136), v12))
      {
        re::DynamicString::operator=((this + 40), &v19);
        if (v19)
        {
          if (v20)
          {
            (*(*v19 + 40))();
          }
        }
      }
    }
  }

  return this;
}

uint64_t re::FileSeekableInputStream::FileSeekableInputStream(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D0A708;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a2 + 24);
  *(a2 + 32) = 0;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  re::DynamicString::setCapacity(v8, 0);
  v9 = *(a2 + 72);
  *(a1 + 72) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = &unk_1F5CAC7A8;
  *(a1 + 112) = &unk_1F5CAC7E8;
  *(a1 + 120) = v9;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = &unk_1F5CAC990;
  *(a1 + 144) = a1 + 112;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x2000;
  *(a1 + 184) = 0;
  *(a1 + 192) = a1 + 200;
  v10 = (a2 + 160);
  v11 = *(a2 + 160);
  v12 = *(a2 + 208);
  *(a1 + 200) = &unk_1F5CBC828;
  *(a1 + 208) = v12;
  v13 = *(a2 + 184);
  if (v11 != v13)
  {
    lseek(v9, 0, 0);
    google::protobuf::io::CopyingInputStreamAdaptor::Skip((a1 + 136), v11 - v13);
  }

  v15 = *(a2 + 104);
  v14 = a2 + 104;
  *(v14 - 32) = -1;
  *(v14 - 8) = 1;
  (*v15)(v14);
  v16 = *(v14 - 32);
  *v14 = &unk_1F5CAC7A8;
  *(v14 + 8) = &unk_1F5CAC7E8;
  *(v14 + 16) = v16;
  *(v14 + 20) = 0;
  *(v14 + 24) = 0;
  *(v14 + 28) = 0;
  *(v14 + 32) = &unk_1F5CAC990;
  *(v14 + 40) = v14 + 8;
  *(v14 + 48) = 0;
  *v10 = 0;
  v10[1] = 0;
  *(v14 + 72) = 0x2000;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  return a1;
}

void re::FileSeekableInputStream::~FileSeekableInputStream(re::FileSeekableInputStream *this)
{
  v2 = *(this + 18);
  if (v2 != -1)
  {
    close(v2);
  }

  *(this + 13) = &unk_1F5CAC7A8;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 136));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream((this + 112));
  re::DynamicString::deinit((this + 40));
  re::DynamicString::deinit((this + 8));
}

{
  re::FileSeekableInputStream::~FileSeekableInputStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FileSeekableInputStream::Next(re::FileSeekableInputStream *this, const void **a2, int *a3)
{
  v4 = *(this + 20) - *(this + 46);
  v5 = *(this + 10);
  v6 = *(this + 11);
  v7 = v6 + v5;
  v8 = v4 - v5;
  if (v4 >= v7)
  {
    v9 = *(this + 11);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= v6)
  {
    v13 = 0;
    result = 0;
    goto LABEL_9;
  }

  result = google::protobuf::io::CopyingInputStreamAdaptor::Next((this + 136), a2, a3);
  v12 = *(this + 11);
  if (v12 != -1 && *a3 + v9 > v12)
  {
    v13 = v12 - v9;
LABEL_9:
    *a3 = v13;
  }

  return result;
}

uint64_t re::FileSeekableInputStream::ByteCount(re::FileSeekableInputStream *this)
{
  v1 = *(this + 20) - *(this + 46);
  v2 = *(this + 10);
  v3 = *(this + 11) + v2;
  v4 = v1 - v2;
  if (v1 >= v3)
  {
    return *(this + 11);
  }

  else
  {
    return v4;
  }
}

void re::FileSeekableInputStream::BackUp(re::FileSeekableInputStream *this, int a2)
{
  v2 = *(this + 20) - *(this + 46);
  v3 = *(this + 10);
  v4 = *(this + 11) + v3;
  if (v2 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 - v4;
  }

  v6 = v5 + a2;
  v7 = v2 - v6;
  v8 = v2 - v3;
  if (v7 >= v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::BackUp((this + 136), v9);
}

BOOL re::FileSeekableInputStream::Seek(re::FileSeekableInputStream *this, unint64_t a2)
{
  if (*(this + 18) == -1)
  {
    return 0;
  }

  v5 = (this + 160);
  v6 = *(this + 20) - *(this + 46);
  v7 = *(this + 10);
  v8 = *(this + 11) + v7;
  v9 = v6 - v7;
  if (v6 >= v8)
  {
    v10 = *(this + 11);
  }

  else
  {
    v10 = v9;
  }

  v11 = a2 >= v10;
  v12 = a2 - v10;
  if (!v11)
  {
    v13 = (this + 104);
    (**(this + 13))(this + 104, v12);
    lseek(*(this + 18), 0, 0);
    v14 = *(this + 18);
    *v13 = &unk_1F5CAC7A8;
    *(this + 14) = &unk_1F5CAC7E8;
    *(this + 30) = v14;
    *(this + 62) = 0;
    *(this + 32) = 0;
    *(this + 132) = 0;
    *(this + 17) = &unk_1F5CAC990;
    *(this + 18) = this + 112;
    *(this + 76) = 0;
    *v5 = 0;
    v5[1] = 0;
    *(this + 22) = 0x2000;
    *(this + 46) = 0;
    *(this + 24) = this + 200;
    v12 = *(this + 10) + a2;
  }

  return google::protobuf::io::CopyingInputStreamAdaptor::Skip((this + 136), v12);
}

uint64_t re::FileSeekableInputStream::CreateDetached(re::FileSeekableInputStream *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 216, 8);

  return re::FileSeekableInputStream::FileSeekableInputStream(v3, this);
}

uint64_t re::FileSeekableInputStream::FilePathAndOffset@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 16))
  {
    v2 = *(this + 24);
  }

  else
  {
    v2 = this + 17;
  }

  v3 = *(this + 80);
  *a2 = 1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return this;
}

uint64_t re::FileSeekableInputStream::GetSource@<X0>(re::FileSeekableInputStream *this@<X0>, void *a2@<X8>)
{
  re::DynamicString::DynamicString(&v9, (this + 8));
  re::FileInputStreamSource::create(&v9, *(this + 10), *(this + 11), v7);
  if (v7[0] == 1)
  {
    v4 = v8;
    *a2 = v8;
    if (v4)
    {
      v5 = (v4 + 8);
    }
  }

  else
  {
    *a2 = 0;
  }

  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v7);
  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArrayStreamWriter::startChunk(_anonymous_namespace_ *a1, char a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = *(*(a1 + 1) + 16);
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (v7 >= v6)
  {
    v8 = v7 + 1;
    if (v6 < v7 + 1)
    {
      if (*v2)
      {
        v9 = 2 * v6;
        v10 = v6 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(*(a1 + 2), v12);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v2, v8);
        ++*(v2 + 24);
      }
    }

    v7 = *(v2 + 16);
  }

  v14 = *(v2 + 32) + 16 * v7;
  *v14 = v5;
  *(v14 + 8) = a2;
  ++*(v2 + 16);
  ++*(v2 + 24);
  return *(*(a1 + 2) + 16) - 1;
}

uint64_t *re::foundationIOLogObjects(re *this)
{
  {
    re::foundationIOLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.IO");
  }

  return &re::foundationIOLogObjects(void)::logObjects;
}

uint64_t re::DynamicArrayBufferedOutputStream::DynamicArrayBufferedOutputStream(uint64_t result, uint64_t a2, int a3)
{
  *(result + 8) = 0;
  *result = &unk_1F5D0A850;
  *(result + 16) = a2;
  *(result + 24) = &unk_1F5D0A8A8;
  *(result + 32) = 0;
  *(result + 40) = &unk_1F5CAC9D0;
  *(result + 48) = result + 24;
  *(result + 56) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = v3;
  *(result + 84) = 0;
  *(result + 88) = 0;
  return result;
}

void re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(re::DynamicArrayBufferedOutputStream *this)
{
  *this = &unk_1F5D0A850;
  *(this + 3) = &unk_1F5D0A8A8;
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
    google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 40));
  }

  *(this + 4) = 0;
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor((this + 40));

  re::internal::MemoryOutputStream<re::DynamicArray<char>>::~MemoryOutputStream(this);
}

{
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::MemoryOutputStream<re::DynamicArray<char>>::~MemoryOutputStream(uint64_t a1)
{
  *a1 = &unk_1F5D0ABE8;
  if (*(a1 + 9) == 1)
  {
    if (*(a1 + 16))
    {
      re::DynamicArray<unsigned long>::deinit(*(a1 + 16));
    }

    *(a1 + 16) = 0;
    *(a1 + 9) = 0;
  }

  return a1;
}

void non-virtual thunk tore::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(re::DynamicArrayBufferedOutputStream *this)
{
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream((this - 24));
}

{
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream((this - 24));

  JUMPOUT(0x1E6906520);
}

void re::DynamicArrayBufferedOutputStream::WriteAliasedRaw(re::DynamicArrayBufferedOutputStream *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "WriteAliasedRaw", 98);
  _os_crash();
  __break(1u);
}

uint64_t re::DynamicArrayBufferedOutputStream::Write(re::DynamicArrayBufferedOutputStream *this, const void *a2, int a3)
{
  v5 = *(this + 2);
  v6 = a3;
  v7 = v5[2];
  v8 = v7 + a3;
  v9 = (v8 - 1) | ((v8 - 1) >> 1) | (((v8 - 1) | ((v8 - 1) >> 1)) >> 2);
  v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
  v11 = (v10 | (v10 >> 16) | ((v10 | (v10 >> 16)) >> 32)) + 1;
  if (v5[1] < v11)
  {
    re::DynamicArray<char>::setCapacity(v5, v11);
    v5 = *(this + 2);
  }

  re::DynamicArray<char>::resizeUninitialized(v5, v8);
  memcpy((*(*(this + 2) + 32) + v7), a2, v6);
  *(this + 4) += v6;
  return 1;
}

void *re::DynamicArray<char>::resizeUninitialized(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else if (result[1] < a2)
  {
    result = re::DynamicArray<char>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

re::CFDataBufferedOutputStream *re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(re::CFDataBufferedOutputStream *this, int a2)
{
  *v4 = 0;
  *(this + 4) = 256;
  *this = &unk_1F5D0A8D0;
  *(this + 2) = v4;
  *(this + 3) = &unk_1F5D0A928;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F5CAC9D0;
  *(this + 6) = this + 24;
  *(this + 28) = 0;
  if (a2 <= 0)
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = a2;
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = v5;
  *(this + 21) = 0;
  *(this + 11) = 0;
  **(this + 2) = CFDataCreateMutable(0, 0);
  return this;
}

re::CFDataBufferedOutputStream *re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(re::CFDataBufferedOutputStream *this, CFTypeRef *a2, int a3)
{
  *(this + 4) = 0;
  *this = &unk_1F5D0A8D0;
  *(this + 2) = a2;
  *(this + 3) = &unk_1F5D0A928;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F5CAC9D0;
  *(this + 6) = this + 24;
  *(this + 28) = 0;
  if (a3 <= 0)
  {
    v4 = 0x2000;
  }

  else
  {
    v4 = a3;
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = v4;
  *(this + 21) = 0;
  *(this + 11) = 0;
  CFRetain(*a2);
  return this;
}

void re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(re::CFDataBufferedOutputStream *this)
{
  *this = &unk_1F5D0A8D0;
  *(this + 3) = &unk_1F5D0A928;
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
    google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 40));
  }

  *(this + 4) = 0;
  CFRelease(**(this + 2));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor((this + 40));

  re::internal::MemoryOutputStream<__CFData *>::~MemoryOutputStream(this);
}

{
  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::MemoryOutputStream<__CFData *>::~MemoryOutputStream(uint64_t a1)
{
  *a1 = &unk_1F5D0AC38;
  if (*(a1 + 9) == 1)
  {
    if (*(a1 + 16))
    {
    }

    *(a1 + 16) = 0;
    *(a1 + 9) = 0;
  }

  return a1;
}

void non-virtual thunk tore::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(re::CFDataBufferedOutputStream *this)
{
  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream((this - 24));
}

{
  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream((this - 24));

  JUMPOUT(0x1E6906520);
}

void re::CFDataBufferedOutputStream::WriteAliasedRaw(re::CFDataBufferedOutputStream *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "WriteAliasedRaw", 173);
  _os_crash();
  __break(1u);
}

uint64_t re::CFDataBufferedOutputStream::Write(CFMutableDataRef **this, const UInt8 *a2, int a3)
{
  CFDataAppendBytes(*this[2], a2, a3);
  this[4] = (this[4] + a3);
  return 1;
}

uint64_t non-virtual thunk tore::CFDataBufferedOutputStream::Write(CFMutableDataRef **this, const UInt8 *a2, int a3)
{
  CFDataAppendBytes(**(this - 1), a2, a3);
  this[1] = (this[1] + a3);
  return 1;
}

void re::CFDataOutputStream::~CFDataOutputStream(re::CFDataOutputStream *this)
{
  re::internal::MemoryOutputStream<__CFData *>::~MemoryOutputStream(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::CFDataOutputStream::Next(re::CFDataOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 12);
  v4 = *(this + 10);
  if (v3 >= v4)
  {
    *(this + 13) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 11))
    {
      v5 = *(this + 11);
    }

    *(this + 13) = v5;
    *a2 = (*(this + 4) + v3);
    *a3 = v5;
    *(this + 12) += *(this + 13);
  }

  return v3 < v4;
}

void re::CFDataOutputStream::WriteAliasedRaw(re::CFDataOutputStream *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "WriteAliasedRaw", 255);
  _os_crash();
  __break(1u);
}

uint64_t re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(uint64_t a1)
{
  *a1 = &unk_1F5D0AC88;
  if (*(a1 + 9) == 1)
  {
    if (*(a1 + 16))
    {
      re::FixedArray<CoreIKTransform>::deinit(*(a1 + 16));
    }

    *(a1 + 16) = 0;
    *(a1 + 9) = 0;
  }

  return a1;
}

re::FixedArrayInputStream *re::FixedArrayInputStream::FixedArrayInputStream(re::FixedArrayInputStream *this, const char *a2, int a3, int a4)
{
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(this + 4) = 256;
  *this = &unk_1F5D0A9A0;
  *(this + 2) = v8;
  *(this + 3) = &unk_1F5CAC908;
  *(this + 4) = a2;
  if (a4 <= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  *(this + 10) = a3;
  *(this + 11) = v9;
  *(this + 6) = 0;
  *(this + 7) = a3;
  return this;
}

void re::FixedArrayInputStream::~FixedArrayInputStream(re::FixedArrayInputStream *this)
{
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::FixedArrayInputStream::Next(re::FixedArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 12);
  v4 = *(this + 10);
  if (v3 >= v4)
  {
    *(this + 13) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 11))
    {
      v5 = *(this + 11);
    }

    *(this + 13) = v5;
    *a2 = (*(this + 4) + v3);
    *a3 = v5;
    *(this + 12) += *(this + 13);
  }

  return v3 < v4;
}

uint64_t re::internal::MemoryInputStream<__CFData const*>::~MemoryInputStream(uint64_t a1)
{
  *a1 = &unk_1F5D0AD20;
  if (*(a1 + 9) == 1)
  {
    if (*(a1 + 16))
    {
    }

    *(a1 + 16) = 0;
    *(a1 + 9) = 0;
  }

  return a1;
}

void re::CFDataInputStream::~CFDataInputStream(re::CFDataInputStream *this)
{
  re::internal::MemoryInputStream<__CFData const*>::~MemoryInputStream(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::CFDataInputStream::Next(re::CFDataInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 12);
  v4 = *(this + 10);
  if (v3 >= v4)
  {
    *(this + 13) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 11))
    {
      v5 = *(this + 11);
    }

    *(this + 13) = v5;
    *a2 = (*(this + 4) + v3);
    *a3 = v5;
    *(this + 12) += *(this + 13);
  }

  return v3 < v4;
}

void re::FixedArrayInputStream::CreateDetached(re::FixedArrayInputStream *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented.", "!Unreachable code", "CreateDetached", 663);
  _os_crash();
  __break(1u);
}

void re::CFDataInputStream::CreateDetached(re::CFDataInputStream *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented.", "!Unreachable code", "CreateDetached", 729);
  _os_crash();
  __break(1u);
}

unsigned __int8 *re::path::ext(re::path *this, const char *a2)
{
  v3 = strlen(this);
  v4 = v3;
  if (v3 < 2)
  {
    return this + v4;
  }

  v5 = v3 - 1;
  result = this + v3 - 1;
  v7 = 1;
  v8 = 2;
  while (1)
  {
    v9 = *result;
    if (v9 == 46)
    {
      break;
    }

    if (v9 != 47)
    {
      v7 = v8 < v4;
      --result;
      ++v8;
      if (--v5)
      {
        continue;
      }
    }

    return this + v4;
  }

  if (!v7)
  {
    return this + v4;
  }

  return result;
}

void *re::path::dirname(re::path *this, re::PathBuffer *__s, const char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = strlen(__s);
  if (v5 < 2)
  {
    return *(this + 1);
  }

  v6 = 0x100000000 - (v5 << 32);
  v7 = v5 - 1;
  while (*(__s + v7) != 47)
  {
    v6 += 0x100000000;
    if (!--v7)
    {
      return *(this + 1);
    }
  }

  if (!v6)
  {
    return *(this + 1);
  }

  v8 = -v6 >> 32;
  v9 = re::PathBuffer::reserve(this, v8);
  if (v9)
  {
    v10 = *(this + 1);
    memcpy(v10, __s, v8);
    *(v10 + v8) = 0;
  }

  else
  {
    v12 = *re::foundationIOLogObjects(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218242;
      v14 = v8;
      v15 = 2080;
      v16 = __s;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to allocated %lu bytes for calculating dirname(%s)", &v13, 0x16u);
    }

    return &unk_1E30FC775;
  }

  return v10;
}

uint64_t re::PathBuffer::reserve(const char **this, uint64_t a2)
{
  v2 = (a2 + 1);
  if ((a2 + 1) >= 0x1E9 && v2 > this[2])
  {
    result = (*(**this + 32))(*this, a2 + 1, 0);
    if (!result)
    {
      return result;
    }

    v6 = result;
    strcpy(result, this[1]);
    if (this[1] != (this + 3))
    {
      (*(**this + 40))();
    }

    this[1] = v6;
    this[2] = v2;
  }

  return 1;
}

uint64_t re::path::join(const char **this, re::PathBuffer *__s, const char *a3, const char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = strlen(__s);
  v8 = strlen(a3);
  v9 = v8;
  if (v7)
  {
    v7 -= *(__s + v7 - 1) == 47;
    v10 = v7 != 0;
    if (v7)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (*a3 == 47)
      {
        ++a3;
        v9 = v8 - 1;
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = re::PathBuffer::reserve(this, v9 + 1 + v7);
  if (v12)
  {
    v14 = this[1];
    v13 = (this + 1);
    memcpy(v14, __s, v7);
    v15 = &v14[v7];
    v16 = !v10;
    if (!v9)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      *v15++ = 47;
    }

    memcpy(v15, a3, v9 + 1);
  }

  else
  {
    v17 = *re::foundationIOLogObjects(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218498;
      v20 = v9 + 1 + v7;
      v21 = 2080;
      v22 = __s;
      v23 = 2080;
      v24 = a3;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to allocated %lu bytes for calculating join(%s, %s)", &v19, 0x20u);
    }

    v13 = &re::path::kErrorOutOfMemory;
  }

  return *v13;
}

size_t re::MemoryStreamWriter::writeBytes(re::MemoryStreamWriter *this, const void *a2, size_t a3)
{
  v4 = *(this + 3);
  if (*(this + 2) - v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(this + 2) - v4;
  }

  memcpy((*(this + 1) + v4), a2, v5);
  *(this + 3) += v5;
  return v5;
}

unint64_t re::SeekableInputStream::Fetch(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  memset(__n, 0, sizeof(__n));
  v8 = (*(*a1 + 16))(a1, &__n[1], __n);
  result = 0;
  if (v8)
  {
    v10 = __n[0];
    v11 = __n[0] > a2;
    if (__n[0] >= a2)
    {
      *a4 = *&__n[1];
      if (v11)
      {
        (*(*a1 + 24))(a1, (v10 - a2));
      }

      return a2;
    }

    else
    {
      re::DynamicArray<BOOL>::resize(a3, a2);
      v12 = *(a3 + 32);
      v13 = a2;
      while (v13 > __n[0])
      {
        memcpy(v12, *&__n[1], __n[0]);
        v12 += __n[0];
        v14 = v13 - __n[0];
        v13 -= __n[0];
        if (((*(*a1 + 16))(a1, &__n[1], __n) & 1) == 0)
        {
          *a4 = *(a3 + 32);
          return a2 - v14;
        }
      }

      memcpy(v12, *&__n[1], v13);
      (*(*a1 + 24))(a1, (__n[0] - v13));
      *a4 = *(a3 + 32);
      return a2;
    }
  }

  return result;
}

uint64_t re::SeekableInputStream::Copy(re::SeekableInputStream *this, uint64_t a2, char *a3)
{
  if (!a2)
  {
    return 0;
  }

  memset(__n, 0, sizeof(__n));
  v6 = (*(*this + 16))(this, &__n[1], __n);
  result = 0;
  if (v6)
  {
    v8 = a2;
    while (1)
    {
      v9 = __n[0];
      if (v8 <= __n[0])
      {
        break;
      }

      memcpy(a3, *&__n[1], __n[0]);
      a3 += v9;
      v8 -= v9;
      if (((*(*this + 16))(this, &__n[1], __n) & 1) == 0)
      {
        return a2 - v8;
      }
    }

    memcpy(a3, *&__n[1], v8);
    (*(*this + 24))(this, (v9 - v8));
    return a2;
  }

  return result;
}

BOOL re::SeekableInputStreamBufferedReader::readNext(re::SeekableInputStreamBufferedReader *this, unint64_t a2)
{
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 1) += v4;
    *(this + 2) = 0;
    *(this + 6) = 0;
    ++*(this + 14);
  }

  for (i = 0; ; i = *(this + 2))
  {
    if (*(this + 6))
    {
      v6 = 1;
    }

    else if ((*(**this + 16))(*this, this + 8, this + 24))
    {
      v7 = (*(**this + 40))();
      v6 = v7 != (*(**this + 64))();
    }

    else
    {
      v6 = 0;
    }

    v8 = *(this + 6);
    v9 = v8 - a2;
    v10 = v8 >= a2;
    if (v8 >= a2)
    {
      v8 = a2;
    }

    v11 = v8 + *(this + 2);
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    *(this + 2) = v11;
    *(this + 6) = v12;
    v13 = v11 < a2 && v6;
    if (i || v11 < a2 && v6)
    {
      if (!*(this + 6))
      {
        v14 = a2;
        if (a2 != -1 || (v15 = (*(**this + 64))(), v15 != -1) && (v14 = v15 - (*(**this + 40))() + *(this + 6), v14 != -1))
        {
          if (*(this + 5) < v14)
          {
            re::DynamicArray<BOOL>::setCapacity(this + 4, v14);
          }
        }
      }

      re::DynamicArray<BOOL>::resize(this + 32, *(this + 2));
      memcpy((*(this + 8) + i), *(this + 1), *(this + 2) - i);
    }

    if (!v13)
    {
      break;
    }
  }

  if (*(this + 6))
  {
    if (*(this + 6))
    {
      (*(**this + 24))();
      *(this + 6) = 0;
    }

    *(this + 1) = *(this + 8);
  }

  return *(this + 2) != 0;
}

uint64_t re::SeekableInputStreamBufferedReader::detachAndDeallocate(re::SeekableInputStreamBufferedReader *this)
{
  if (*(this + 6))
  {
    (*(**this + 24))();
    *(this + 6) = 0;
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v5 = 0;
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(this + 32, v3);
  result = v3[0];
  if (v3[0])
  {
    if (v5)
    {
      return (*(*v3[0] + 40))();
    }
  }

  return result;
}

uint64_t re::SeekableInputStreamReaderAdaptor::readBytes(re::SeekableInputStreamReaderAdaptor *this, char *__dst, size_t __n)
{
  if (*(this + 48))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v8 = (this + 24);
    v7 = *(this + 6);
    v9 = (this + 16);
    while (1)
    {
      if (!v7)
      {
        *(this + 48) = (*(**(this + 1) + 16))(*(this + 1), this + 16, this + 24) ^ 1;
        v7 = *(this + 6);
      }

      v10 = *v9;
      if (__n <= v7)
      {
        break;
      }

      memcpy(__dst, v10, v7);
      v7 = 0;
      v11 = *(this + 6);
      v4 += v11;
      __n -= v11;
      __dst += v11;
      *(this + 6) = 0;
      if (*(this + 48) == 1)
      {
        goto LABEL_10;
      }
    }

    memcpy(__dst, v10, __n);
    *v8 -= __n;
    *v9 = *v9 + __n;
    v4 += __n;
  }

LABEL_10:
  *(this + 4) += v4;
  return v4;
}

uint64_t re::SeekableInputStreamReaderAdaptor::skipBytes(re::SeekableInputStreamReaderAdaptor *this, unint64_t a2)
{
  if (*(this + 48))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v6 = (this + 24);
    v5 = *(this + 6);
    v7 = (this + 16);
    while (1)
    {
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v9 = (*(**(this + 1) + 16))(*(this + 1), this + 16, this + 24);
        v8 = v9 ^ 1;
        *(this + 48) = v9 ^ 1;
        v5 = *(this + 6);
      }

      v10 = v5;
      if (a2 <= v5)
      {
        break;
      }

      v5 = 0;
      v3 += v10;
      a2 -= v10;
      *v6 = 0;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    *v6 = v5 - a2;
    *v7 += a2;
    v3 += a2;
  }

LABEL_11:
  *(this + 4) += v3;
  return v3;
}

uint64_t re::SeekableInputStreamReaderAdaptor::seek(re::SeekableInputStreamReaderAdaptor *this, unint64_t a2)
{
  if ((*(**(this + 1) + 64))(*(this + 1)) < a2)
  {
    return 0;
  }

  result = (*(**(this + 1) + 56))(*(this + 1), *(this + 5) + a2);
  if (result)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    result = 1;
    *(this + 4) = a2;
  }

  return result;
}

void re::SeekableInputStreamReaderAdaptor::~SeekableInputStreamReaderAdaptor(re::SeekableInputStreamReaderAdaptor *this)
{
  if (*(this + 6))
  {
    (*(**(this + 1) + 24))(*(this + 1));
    *(this + 6) = 0;
    *(this + 2) = 0;
  }
}

{
  if (*(this + 6))
  {
    (*(**(this + 1) + 24))(*(this + 1));
    *(this + 6) = 0;
    *(this + 2) = 0;
  }

  JUMPOUT(0x1E6906520);
}

re::SeekableInputStreamSlice *re::SeekableInputStreamSlice::SeekableInputStreamSlice(re::SeekableInputStreamSlice *this, re::SeekableInputStream *a2, uint64_t a3)
{
  *this = &unk_1F5D0AE80;
  *(this + 1) = a2;
  *(this + 16) = 0;
  *(this + 3) = (*(*a2 + 40))(a2);
  *(this + 4) = a3;
  *(this + 40) = 0;
  if (a3 == -1)
  {
    v6 = (*(*a2 + 64))(a2);
    if (v6 != -1)
    {
      *(this + 4) = v6 - *(this + 3);
    }
  }

  return this;
}

re *re::SeekableInputStreamSlice::detach(re::SeekableInputStreamSlice *this)
{
  result = *(this + 1);
  if (result)
  {
    v3 = *(this + 4) + *(this + 3);
    result = (*(*result + 40))(result);
    if (result > v3)
    {
      v4 = *(this + 1);
      v5 = (*(*v4 + 40))(v4);
      result = (*(*v4 + 24))(v4, (v5 - v3));
    }

    if (*(this + 16) == 1)
    {
      result = re::internal::destroyPersistent<re::SeekableInputStream>("detach", 38, *(this + 1));
      *(this + 16) = 0;
    }

    *(this + 1) = 0;
  }

  return result;
}

void re::SeekableInputStreamSlice::~SeekableInputStreamSlice(re::SeekableInputStreamSlice *this)
{
  re::SeekableInputStreamSlice::detach(this);
}

{
  re::SeekableInputStreamSlice::detach(this);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::SeekableInputStream>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::SeekableInputStreamSlice::BackUp(re::SeekableInputStreamSlice *this)
{
  (*(**(this + 1) + 40))(*(this + 1));
  v2 = *(**(this + 1) + 24);

  return v2();
}

uint64_t re::SeekableInputStreamSlice::ByteCount(re::SeekableInputStreamSlice *this)
{
  v2 = (*(**(this + 1) + 40))(*(this + 1));
  v3 = *(this + 3);
  v4 = *(this + 4) + v3;
  v5 = v2 - v3;
  if (v2 >= v4)
  {
    return *(this + 4);
  }

  else
  {
    return v5;
  }
}

uint64_t re::SeekableInputStreamSlice::Next(re::SeekableInputStreamSlice *this, const void **a2, int *a3)
{
  v6 = (*(**(this + 1) + 40))(*(this + 1));
  v7 = *(this + 3);
  v8 = *(this + 4);
  v9 = v8 + v7;
  v10 = v6 - v7;
  if (v6 >= v9)
  {
    v11 = *(this + 4);
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= v8)
  {
    return 0;
  }

  *a3 = 0;
  result = (*(**(this + 1) + 16))(*(this + 1), a2, a3);
  v13 = *(this + 4);
  if (*a3 + v11 > v13)
  {
    *a3 = v13 - v11;
  }

  return result;
}

uint64_t re::SeekableInputStreamSlice::Skip(re::SeekableInputStreamSlice *this, int a2)
{
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  v5 = *(this + 3);
  v6 = *(this + 4);
  v7 = v6 + v5;
  v8 = v4 - v5;
  if (v4 >= v7)
  {
    v8 = *(this + 4);
  }

  if (v8 + a2 <= v6)
  {
    v15 = *(**(this + 1) + 32);

    return v15();
  }

  else
  {
    if (v8 < v6)
    {
      v9 = *(this + 1);
      v10 = (*(*v9 + 40))(v9);
      v11 = *(this + 3);
      v12 = *(this + 4) + v11;
      v13 = v10 - v11;
      if (v10 >= v12)
      {
        v13 = *(this + 4);
      }

      (*(*v9 + 32))(v9, (v6 - v13));
    }

    return 0;
  }
}

BOOL re::SeekableInputStreamSlice::Seek(re::SeekableInputStreamSlice *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= a2)
  {
    (*(**(this + 1) + 56))(*(this + 1), *(this + 3) + a2);
  }

  return v3 >= a2;
}

uint64_t re::SeekableInputStreamSlice::CreateDetached(re::SeekableInputStreamSlice *this)
{
  v2 = (*(**(this + 1) + 40))(*(this + 1));
  v3 = *(this + 3);
  v4 = *(this + 4) + v3;
  v5 = v2 - v3;
  if (v2 >= v4)
  {
    v6 = *(this + 4);
  }

  else
  {
    v6 = v5;
  }

  v7 = re::SeekableInputStreamSlice::FilePathAndOffset(this, v16);
  v8 = (*(**(this + 1) + 72))(*(this + 1), v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(*v8 + 56))(v8, *(this + 3));
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 64, 8);
  v13 = re::SeekableInputStreamSlice::SeekableInputStreamSlice(v12, v9, *(this + 4));
  v14 = *(this + 3);
  *(v13 + 3) = v14;
  *(v13 + 16) = 1;
  if ((*(v13 + 40) & 1) == 0)
  {
    if ((v16[0] & 1) == 0)
    {
      goto LABEL_12;
    }

    *(v12 + 40) = 1;
LABEL_11:
    *(v12 + 48) = v17;
    goto LABEL_12;
  }

  if (v16[0])
  {
    goto LABEL_11;
  }

  *(v12 + 40) = 0;
LABEL_12:
  *(this + 1) = 0;
  *(this + 16) = 0;
  if (*(this + 40) == 1)
  {
    *(this + 40) = 0;
  }

  if (*(v12 + 32) >= v6)
  {
    (*(**(v12 + 8) + 56))(*(v12 + 8), v14 + v6);
  }

  return v12;
}

__n128 re::SeekableInputStreamSlice::FilePathAndOffset@<Q0>(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this->n128_u64[1];
  if (v4)
  {
    (*(*v4 + 112))(v9);
    v6 = v9[0];
    if (LOBYTE(v9[0]) == 1)
    {
      v7 = this[1].n128_u64[1] + v9[2];
      *(a2 + 8) = v9[1];
      *(a2 + 16) = v7;
      v6 = 1;
    }

    *a2 = v6;
  }

  else
  {
    v8 = this[2].n128_u8[8];
    *a2 = v8;
    if (v8 == 1)
    {
      result = this[3];
      *(a2 + 8) = result;
    }
  }

  return result;
}

uint64_t re::SeekableInputStreamSlice::Fetch(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  v2 = *(**(a1 + 8) + 96);

  return v2();
}

uint64_t re::SeekableInputStreamSlice::Copy(re::SeekableInputStreamSlice *this, unint64_t a2, void *a3)
{
  (*(**(this + 1) + 40))(*(this + 1));
  v4 = *(**(this + 1) + 104);

  return v4();
}

void re::SeekableInputStreamSlice::GetSource(re::SeekableInputStreamSlice *this@<X0>, void *a2@<X8>)
{
  (*(**(this + 1) + 120))(&v4);
  if (v4)
  {
    (*(*v4 + 40))(v4, *(this + 3), *(this + 4));
    if (v4)
    {
    }
  }

  else
  {
    *a2 = 0;
  }
}

double re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 96;
  *(a1 + 24) = &unk_1F5D0AF80;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_1F5CAC9D0;
  *(a1 + 48) = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *&result = 0x2000;
  *(a1 + 80) = 0x2000;
  *(a1 + 88) = 0;
  *a1 = &unk_1F5D0AF28;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  return result;
}

BOOL re::StreamWriterCopyingOutputStream::Flush(re::StreamWriterCopyingOutputStream *this)
{
  if (*(this + 8) != 1)
  {
    return 1;
  }

  *(this + 8) = 0;
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 40));
  return (*(**(this + 17) + 16))(*(this + 17), *(this + 16), *(this + 14)) == *(this + 14);
}

void re::StreamWriterCopyingOutputStream::~StreamWriterCopyingOutputStream(re::StreamWriterCopyingOutputStream *this)
{
  re::StreamWriterCopyingOutputStream::Flush(this);
  re::DynamicArray<unsigned long>::deinit(this + 96);

  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(this);
}

{
  re::StreamWriterCopyingOutputStream::Flush(this);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(this);

  JUMPOUT(0x1E6906520);
}

void non-virtual thunk tore::StreamWriterCopyingOutputStream::~StreamWriterCopyingOutputStream(re::StreamWriterCopyingOutputStream *this)
{
  v2 = (this - 24);
  re::StreamWriterCopyingOutputStream::Flush((this - 24));
  re::DynamicArray<unsigned long>::deinit(this + 72);

  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(v2);
}

{
  re::StreamWriterCopyingOutputStream::~StreamWriterCopyingOutputStream((this - 24));
}

void re::Bundle::application(void *a1@<X8>)
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  *a1 = v3;
}

void re::Bundle::searchForAppOrAppExtension(re::Bundle *this@<X0>, void *a2@<X8>)
{
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:v13];

  if (!v6 || (v7 = v4) == 0)
  {
    v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v13 allowPlaceholder:1 error:0];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E696AAE8];
      v11 = [v8 URL];
      v7 = [v10 bundleWithURL:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = v7;
  *a2 = v12;
}

void re::Bundle::findWithBundleID(re::Bundle *this@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v6 = [v4 bundleWithIdentifier:v5];

  v7 = v6;
  *a2 = v7;
}

void re::Bundle::findWithFilePath(re::Bundle *this@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v6 = [v4 bundleWithPath:v5];

  v7 = v6;
  *a2 = v7;
}

void re::Bundle::ID(id *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = [*this bundleIdentifier];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 cStringUsingEncoding:4];
  }

  else
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    re::DynamicString::setCapacity(a2, 0);
  }
}

void re::Bundle::bundlePath(id *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = [*this bundlePath];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 cStringUsingEncoding:4];
  }

  else
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    re::DynamicString::setCapacity(a2, 0);
  }
}

void re::Bundle::versionString(id *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = [*this infoDictionary];
  v5 = [v3 valueForKey:@"CFBundleVersion"];

  if (v5)
  {
    v4 = [v5 cStringUsingEncoding:4];
  }

  else
  {
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    re::DynamicString::setCapacity(a2, 0);
  }
}

BOOL re::Bundle::pathForResource(id *this, const char *a2, re::DynamicString *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = *this;
  v7 = [v5 stringWithUTF8String:a2];
  v8 = [v6 pathForResource:v7 ofType:0];

  if (v8)
  {
    v9 = [v8 cStringUsingEncoding:4];
    re::DynamicString::operator=(a3, &v11);
    if (v11)
    {
      if (v12)
      {
        (*(*v11 + 40))();
      }
    }
  }

  return v8 != 0;
}

void re::Bundle::testData(void *a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  re::Bundle::reResourcesFramework(v15);
  v4 = v15[0];
  v5 = v16;
  if (v15[0])
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v4)
  {
  }

  if (!v7)
  {
    re::Bundle::realityKitFramework(v15);
    v8 = v15[0];
    v5 = v16;
    if (v15[0])
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v8)
    {
    }

    if (!v10)
    {
      re::Bundle::reTestsDataFramework(v15);
      v11 = v15[0];
      v12 = v16;
      v13 = v15[0] ? v16 : 0;
      v5 = v13;
      if (v11)
      {
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  v14 = v5;
  *a1 = v14;
}

void re::Bundle::reResourcesFramework(uint64_t a1@<X8>)
{
  if (qword_1EE1BBEA8 != -1)
  {
    dispatch_once(&qword_1EE1BBEA8, &__block_literal_global_14_2);
  }

  v3 = qword_1EE1BBEB0;
  if (qword_1EE1BBEB0)
  {
    *(a1 + 8) = qword_1EE1BBEB0;
    v3 = 1;
  }

  *a1 = v3;
}

void re::Bundle::realityKitFramework(uint64_t a1@<X8>)
{
  if (qword_1EE1BBE98 != -1)
  {
    dispatch_once(&qword_1EE1BBE98, &__block_literal_global_43);
  }

  v3 = qword_1EE1BBEA0;
  if (qword_1EE1BBEA0)
  {
    *(a1 + 8) = qword_1EE1BBEA0;
    v3 = 1;
  }

  *a1 = v3;
}

void re::Bundle::reTestsDataFramework(uint64_t a1@<X8>)
{
  if (qword_1EE1BBEB8 != -1)
  {
    dispatch_once(&qword_1EE1BBEB8, &__block_literal_global_24_0);
  }

  v3 = qword_1EE1BBEC0;
  if (qword_1EE1BBEC0)
  {
    *(a1 + 8) = qword_1EE1BBEC0;
    v3 = 1;
  }

  *a1 = v3;
}

uint64_t re::Bundle::findFile@<X0>(re::Bundle *this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = re::DynamicString::rfind(&v27, 46, v25);
  if (v25[0])
  {
    v7 = v26;
    re::DynamicString::substr(&v27, 0, v26, buf);
    if (v28)
    {
      v8 = v28 >> 1;
    }

    else
    {
      v8 = v28 >> 1;
    }

    re::DynamicString::substr(&v27, v7 + 1, v8, &v22);
    if (buf[8])
    {
      v9 = v30;
    }

    else
    {
      v9 = &buf[9];
    }

    if (v23)
    {
      v10 = *&v24[7];
    }

    else
    {
      v10 = v24;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v13 = *this;
    v14 = [v13 pathForResource:v11 ofType:v12];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 cStringUsingEncoding:4];
    }

    else
    {
      v19 = *re::foundationIOLogObjects(0);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        *v31 = 136315394;
        v32 = v9;
        v33 = 2080;
        v34 = v10;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Could not locate file '%s.%s' in bundle.", v31, 0x16u);
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      *(a3 + 3) = 0;
      re::DynamicString::setCapacity(a3, 0);
    }

    if (v22 && (v23 & 1) != 0)
    {
      (*(*v22 + 40))();
    }

    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))();
    }
  }

  else
  {
    v17 = *re::foundationIOLogObjects(v6);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Could not locate file '%s' in bundle; extension missing.", buf, 0xCu);
    }
  }

  result = v27;
  if (v27)
  {
    if (v28)
    {
      return (*(*v27 + 40))();
    }
  }

  return result;
}

id re::Bundle::coreREFramework@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE1BBE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBE90))
  {
    _MergedGlobals_481 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    __cxa_guard_release(&qword_1EE1BBE90);
  }

  result = _MergedGlobals_481;
  *a1 = result;
  return result;
}

void ___ZN2re6Bundle19realityKitFrameworkEv_block_invoke()
{
  v0 = NSClassFromString(&cfstr_RealitykitArvi.isa);
  if (v0 || (v0 = NSClassFromString(&cfstr_RealitykitEnti.isa)) != 0)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:v0];
    v2 = qword_1EE1BBEA0;
    qword_1EE1BBEA0 = v1;
  }
}

void ___ZN2re6Bundle20reResourcesFrameworkEv_block_invoke()
{
  v0 = NSClassFromString(&cfstr_Reresourcesobj.isa);
  if (v0)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:v0];
    v2 = qword_1EE1BBEB0;
    qword_1EE1BBEB0 = v1;
  }

  re::Bundle::coreREFramework(&obj);
  if (!qword_1EE1BBEB0)
  {
    re::Bundle::ID(&obj, &v9);
    v3 = v10[0] & 1;
    if (v10[0])
    {
      v4 = v10[1];
    }

    else
    {
      v4 = v10 + 1;
    }

    v5 = strcmp(v4, "com.apple.CoreRE");
    if (v9 && v3)
    {
      (*(*v9 + 40))();
    }

    if (!v5)
    {
      objc_storeStrong(&qword_1EE1BBEB0, obj);
    }

    if (!qword_1EE1BBEB0)
    {
      re::Bundle::realityKitFramework(&v9);
      v6 = v9;
      v7 = v10[0];
      if (v9)
      {
        v8 = v10[0];
      }

      else
      {
        v8 = 0;
      }

      objc_storeStrong(&qword_1EE1BBEB0, v8);
      if (v6)
      {
      }
    }
  }
}

void ___ZN2re6Bundle20reTestsDataFrameworkEv_block_invoke()
{
  if (!qword_1EE1BBEC0)
  {
    v0 = NSClassFromString(&cfstr_Retestsdataobj.isa);
    if (v0)
    {
      v1 = [MEMORY[0x1E696AAE8] bundleForClass:v0];
      v2 = qword_1EE1BBEC0;
      qword_1EE1BBEC0 = v1;
    }
  }
}

const char *re::bundleFrameworkIdentifier(re *this)
{
  v1 = objc_autoreleasePoolPush();
  re::Bundle::reResourcesFramework(v14);
  v2 = v14[0];
  v3 = v15;
  if (v14[0])
  {
    v4 = v15;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v2)
  {
  }

  if (!v5 || ([v5 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = "com.apple.CoreRE", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "com.apple.CoreRE"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v6, (v9 & 1) == 0) && (objc_msgSend(v5, "bundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v7 = "com.apple.REResources", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "com.apple.REResources"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, (v12 & 1) == 0))
  {
    v7 = "com.apple.RealityKit";
  }

  objc_autoreleasePoolPop(v1);
  return v7;
}

_BYTE *re::stringToLowerCase@<X0>(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (v7)
  {
    for (i = 0; i < v12; ++i)
    {
      v9 = re::DynamicString::operator[](a2, i);
      v10 = __tolower(*v9);
      result = re::DynamicString::operator[](a2, i);
      *result = v10;
      v11 = *(a2 + 1);
      if (v11)
      {
        v12 = v11 >> 1;
      }

      else
      {
        v12 = v11 >> 1;
      }
    }
  }

  return result;
}

uint64_t re::ensureFolderExists(re *this, const char *a2)
{
  if (!stat(this, &v10) && (v10.st_mode & 0x4000) != 0)
  {
    return 1;
  }

  std::string::basic_string[abi:nn200100]<0>(&v10, this);
  v4 = std::string::rfind(&v10, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 == -1)
  {
    v3 = 0;
  }

  else
  {
    std::string::basic_string(&__p, &v10, 0, v4, &v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v3 = re::ensureFolderExists(p_p, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v3)
    {
      if ((v10.st_gid & 0x80000000) == 0)
      {
        v7 = &v10;
      }

      else
      {
        v7 = *&v10.st_dev;
      }

      v3 = mkdir(v7, 0x1EDu) == 0;
    }
  }

  if (SHIBYTE(v10.st_gid) < 0)
  {
    operator delete(*&v10.st_dev);
  }

  return v3;
}

uint64_t re::ensureFolderExistsForFile(re *this, const char *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__str, this);
  v2 = std::string::rfind(&__str, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (v2 == -1)
  {
    v5 = 0;
  }

  else
  {
    std::string::basic_string(&v7, &__str, 0, v2, &v9);
    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7.__r_.__value_.__r.__words[0];
    }

    v5 = re::ensureFolderExists(v4, v3);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v5;
}

void re::fileURLWithPath(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v8 = [v4 fileURLWithPath:v5 isDirectory:0];

  v6 = [v8 absoluteString];
  v7 = [v6 UTF8String];
}

void re::filePathWithURL(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v5 = [v4 path];
  v6 = [v5 UTF8String];
}

void re::filePathURLConverted(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 pathComponents];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = &stru_1F5D319D0;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v15 + 1) + 8 * v9) isDirectory:0];
        v12 = [v11 lastPathComponent];
        v8 = [(__CFString *)v10 stringByAppendingPathComponent:v12];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = &stru_1F5D319D0;
  }

  v13 = [(__CFString *)v8 UTF8String];
}

void re::pathsToFilesInDirectory(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:&v41];
  v8 = v41;

  if (v7)
  {
    v27 = v8;
    v28 = a3;
    v40 = 0;
    v38 = 0;
    v37 = 0uLL;
    LODWORD(v39) = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v14 pathExtension];
          v16 = [v15 UTF8String];
          v17 = *(a2 + 24);
          v29 = v16;
          if (!v17)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          v18 = (*(*v17 + 48))(v17, &v29);

          if (v18)
          {
            re::DynamicString::format("%s/%s", &v29, [v5 UTF8String], objc_msgSend(v14, "UTF8String"));
            v19 = re::DynamicArray<re::DynamicString>::add(&v37, &v29);
            if (v29)
            {
              if (v30)
              {
                (*(*v29 + 40))(v19);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v11);
    }

    re::DynamicArray<re::DynamicString>::DynamicArray(&v29, &v37);
    v20 = v29;
    *v28 = 1;
    *(v28 + 8) = v20;
    *(v28 + 16) = v30;
    v29 = 0;
    v30 = 0uLL;
    *(v28 + 40) = v32;
    v32 = 0;
    ++v31;
    *(v28 + 32) = 1;
    re::DynamicArray<re::DynamicString>::deinit(&v29);
    re::DynamicArray<re::DynamicString>::deinit(&v37);
    v7 = v26;
    v8 = v27;
  }

  else
  {
    v21 = [v8 localizedDescription];
    v22 = [v21 UTF8String];
    v23 = v37;
    v37 = 0uLL;
    v24 = v38;
    v25 = v39;
    v38 = 0;
    v39 = 0;
    *a3 = 0;
    *(a3 + 8) = v23;
    *(a3 + 24) = v24;
    *(a3 + 32) = v25;
  }
}

uint64_t std::__function::__func<re::pathsToFilesWithPathExtensionInDirectory(char const*,char const*)::$_0,std::allocator<re::pathsToFilesWithPathExtensionInDirectory(char const*,char const*)::$_0>,BOOL ()(char const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0B020;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::pathsToFilesWithPathExtensionInDirectory(char const*,char const*)::$_0,std::allocator<re::pathsToFilesWithPathExtensionInDirectory(char const*,char const*)::$_0>,BOOL ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::FileStreamWriter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4 && *(a1 + 16) == 1)
    {
      fclose(v4);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return a1;
}

void re::FileStreamWriter::~FileStreamWriter(re::FileStreamWriter *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 16) == 1)
    {
      fclose(v2);
      *(this + 1) = 0;
      *(this + 16) = 0;
    }
  }
}

{
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    fclose(v2);
    *(this + 1) = 0;
    *(this + 16) = 0;
  }

  JUMPOUT(0x1E6906520);
}

FILE *re::FileStreamWriter::open@<X0>(re::FileStreamWriter *this@<X0>, uint64_t a2@<X8>)
{
  result = fopen(this, "wb");
  if (result)
  {
    *a2 = 1;
    *(a2 + 8) = &unk_1F5D0B0A0;
    *(a2 + 24) = 1;
  }

  else
  {
    v6 = __error();
    v7 = strerror(*v6);
    re::DynamicString::format("Failed to open file %s for writing. Details: %s", &v11, this, v7);
    v8 = v11;
    v9 = v12;
    v10 = v13;
    *a2 = 0;
    *(a2 + 8) = 300;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = v10;
    result = re::FoundationErrorCategory(void)::instance;
  }

  *(a2 + 16) = result;
  return result;
}

size_t re::MemoryStreamReader::readBytes(re::MemoryStreamReader *this, void *__dst, size_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = *(this + 3);
  if (*(this + 2) - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(this + 2) - v5;
  }

  memcpy(__dst, (v3 + v5), v6);
  *(this + 3) += v6;
  return v6;
}

size_t re::MemoryStreamReader::seekAndRead(re::MemoryStreamReader *this, void *__dst, unint64_t a3, size_t a4)
{
  v4 = *(this + 1);
  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(this + 2);
  }

  v7 = v5 - v6;
  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, (v4 + v6), v8);
  return v8;
}

unint64_t re::MemoryStreamReader::skipBytes(re::MemoryStreamReader *this, unint64_t a2)
{
  v2 = *(this + 3);
  v3 = *(this + 2) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(this + 3) = v3 + v2;
  return v3;
}

BOOL re::MemoryStreamReader::seek(re::MemoryStreamReader *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (v2 >= a2)
  {
    *(this + 3) = a2;
  }

  return v2 >= a2;
}

void re::FileInputStreamSource::create(re *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a3;
  v16 = a2;
  re::make::shared::object<re::FileInputStreamSource,re::DynamicString const,unsigned long &,unsigned long &>(a1, &v16, &v15, &v14);
  v5 = v14;
  if (*(v14 + 56) == -1)
  {
    if (*(v14 + 32))
    {
      v7 = *(v14 + 40);
    }

    else
    {
      v7 = v14 + 33;
    }

    re::DynamicString::format("Unable to get source file time stamp: '%s'.", &v10, v7);
    if (v11)
    {
      v8 = *&v12[7];
    }

    else
    {
      v8 = v12;
    }

    re::WrappedError::make(@"REPipelineErrorDomain", 8, v8, &v13);
    v9 = v13;
    v13 = 0;
    *a4 = 0;
    *(a4 + 8) = v9;

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    v6 = (v14 + 8);
    *a4 = 1;
    *(a4 + 8) = v5;
  }

  if (v14)
  {
  }
}

uint64_t re::FileInputStreamSource::FileInputStreamSource(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D0B198;
  re::DynamicString::DynamicString((a1 + 24), a2);
  *(a1 + 56) = -1;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  if (*(a2 + 1))
  {
    v8 = *(a2 + 2);
  }

  else
  {
    v8 = a2 + 9;
  }

  if (!stat(v8, &v21) && v21.st_size >= a3)
  {
    v9 = *(a1 + 72);
    if (v9 == -1)
    {
      v10 = -1;
    }

    else
    {
      if (v9 >= v21.st_size - *(a1 + 64))
      {
        v10 = v21.st_size - *(a1 + 64);
      }

      else
      {
        v10 = *(a1 + 72);
      }

      *(a1 + 72) = v10;
    }

    tv_nsec = v21.st_mtimespec.tv_nsec;
    *(a1 + 56) = v21.st_mtimespec.tv_nsec;
    if (*(a1 + 32))
    {
      v12 = *(a1 + 40);
    }

    else
    {
      v12 = (a1 + 33);
    }

    v13 = strlen(v12);
    if (v13)
    {
      MurmurHash3_x64_128(v12, v13, 0, v22);
      v14 = (v22[1] - 0x61C8864680B583E9 + (v22[0] << 6) + (v22[0] >> 2)) ^ v22[0];
      tv_nsec = *(a1 + 56);
      v10 = *(a1 + 72);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (tv_nsec ^ (tv_nsec >> 30))) ^ ((0xBF58476D1CE4E5B9 * (tv_nsec ^ (tv_nsec >> 30))) >> 27));
    v16 = 0xBF58476D1CE4E5B9 * (*(a1 + 64) ^ (*(a1 + 64) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v19 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (v15 ^ (v15 >> 31))) ^ v14;
    *(a1 + 80) = ((v19 << 6) - 0x61C8864680B583E9 + (v19 >> 2) + (((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17)) ^ v19;
  }

  return a1;
}

void *re::FileInputStreamSource::streamName(re::FileInputStreamSource *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_482, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_482))
  {
    re::DynamicString::DynamicString(&unk_1EE1BBED0);
    __cxa_guard_release(&_MergedGlobals_482);
  }

  return &unk_1EE1BBED0;
}

void re::FileInputStreamSource::invokeWithStream(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = (a1 + 33);
  }

  re::FileSeekableInputStream::FileSeekableInputStream(v16, v6, *(a1 + 64), *(a1 + 72));
  if (v18 == -1)
  {
    if (*(a1 + 32))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = a1 + 33;
    }

    if (v16[48])
    {
      v10 = *&v17[7];
    }

    else
    {
      v10 = v17;
    }

    re::DynamicString::format("Source file no longer accessible: '%s': %s.", &v19, v8, v10);
    if (v19.st_ino)
    {
      v11 = *&v19.st_uid;
    }

    else
    {
      v11 = &v19.st_ino + 1;
    }

    v12 = 7;
  }

  else
  {
    if (*(a1 + 32))
    {
      v7 = *(a1 + 40);
    }

    else
    {
      v7 = (a1 + 33);
    }

    if (stat(v7, &v19) || v19.st_mtimespec.tv_nsec == -1)
    {
      if (*(a1 + 32))
      {
        v9 = *(a1 + 40);
      }

      else
      {
        v9 = a1 + 33;
      }

      re::DynamicString::format("Unable to get source file time stamp: '%s'.", &v19, v9);
    }

    else
    {
      if (v19.st_mtimespec.tv_nsec == *(a1 + 56))
      {
        (*(**(a2 + 32) + 16))(*(a2 + 32), v16);
        goto LABEL_37;
      }

      if (*(a1 + 32))
      {
        v13 = *(a1 + 40);
      }

      else
      {
        v13 = a1 + 33;
      }

      re::DynamicString::format("Source file was modified: '%s'.", &v19, v13);
    }

    if (v19.st_ino)
    {
      v11 = *&v19.st_uid;
    }

    else
    {
      v11 = &v19.st_ino + 1;
    }

    v12 = 8;
  }

  re::WrappedError::make(@"REPipelineErrorDomain", v12, v11, &v15);
  v14 = v15;
  v15 = 0;
  *a3 = 0;
  *(a3 + 8) = v14;

  if (*&v19.st_dev && (v19.st_ino & 1) != 0)
  {
    (*(**&v19.st_dev + 40))();
  }

LABEL_37:
  re::FileSeekableInputStream::~FileSeekableInputStream(v16);
}

uint64_t re::FileInputStreamSource::createSlice@<X0>(re::FileInputStreamSource *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(this + 9);
  v8 = v7 - a2;
  if (a3 < v7 - a2)
  {
    v8 = a3;
  }

  if (v7 == -1)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  re::DynamicString::DynamicString(&v13, (this + 24));
  re::FileInputStreamSource::create(&v13, *(this + 8) + a2, v9, v15);
  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  if (v15[0] == 1)
  {
    v10 = v16;
    *a4 = v16;
    if (v10)
    {
      v11 = (v10 + 8);
    }
  }

  else
  {
    *a4 = 0;
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v15);
}

void re::FileInputStreamSource::~FileInputStreamSource(re::FileInputStreamSource *this)
{
  *this = &unk_1F5D0B198;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0B198;
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::object<re::FileInputStreamSource,re::DynamicString const,unsigned long &,unsigned long &>@<X0>(re *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 88, 8);
  result = re::FileInputStreamSource::FileInputStreamSource(v9, a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t re::internal::canAppendGeomMeshToGeomMesh(re::internal *this, const re::GeomMesh *a2, const re::GeomMesh *a3)
{
  v5 = *(this + 160);
  if (v5)
  {
    for (i = 0; v5 != i; ++i)
    {
      v7 = re::internal::GeomAttributeManager::attributeByIndex((this + 64), i);
      v8 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), *(v7 + 8));
      if (v8)
      {
        if (*(v7 + 17) != *(v8 + 17))
        {
          return 0;
        }

        v9 = *(v7 + 16);
        v10 = *(v8 + 16);
        if (v10 == v9)
        {
          if (!*(v7 + 16))
          {
            result = re::GeomAttribute::operator==(v7, v8);
            if (!result)
            {
              return result;
            }
          }
        }

        else
        {
          v12 = v10 & 0xFFFFFFFD;
          if ((v9 & 0xFFFFFFFD) != 1 || v12 != 1)
          {
            return 0;
          }
        }
      }
    }
  }

  v14 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationGeometryBindTransform");
  v15 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationGeometryBindTransform");
  if (!v14)
  {
    return 1;
  }

  if (!v15)
  {
    return 1;
  }

  result = re::GeomAttribute::operator==(v15, v15);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t re::internal::appendGeomMeshToGeomMesh(_DWORD *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationInfluenceEndIndices");
  v5 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), "skinnedAnimationInfluenceEndIndices");
  if (!(v4 | v5))
  {
    goto LABEL_17;
  }

  v7 = v5;
  v8 = a1[4];
  if (v4)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationInfluenceEndIndices");
      v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v10);
      v9 = (v9 - 1);
      if (v9 >= v6)
      {
        goto LABEL_33;
      }

      v9 = *(v11 + 4 * v9);
    }

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
LABEL_7:
      if (!v8)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (v8)
  {
LABEL_11:
    v12 = re::internal::GeomAttributeManager::attributeByName((a1 + 16), "skinnedAnimationInfluenceEndIndices");
    v13 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v12);
    v14 = v6;
    v15 = v6;
    while (v15)
    {
      *v13++ += v9;
      --v15;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 621;
    v35 = 2048;
    v36 = v14;
    v37 = 2048;
    v38 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v26 = 0u;
    v25 = v6;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 621;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_14:
  if (v4 && v7)
  {
    re::internal::GeomAttributeManager::deleteAttribute((a1 + 16), "skinnedAnimationGeometryBindTransform");
  }

LABEL_17:
  if (re::meshHasSubdivCreases(a1, v6))
  {
    v16 = *(a2 + 16);
  }

  v17 = a1[160];
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      v19 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 16), i);
      v20 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), *(v19 + 8));
      if (v20)
      {
        v21 = *(v19 + 16);
        v22 = *(v20 + 16);
        if (v22 != v21)
        {
          if (v22 == 1)
          {
            re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((a2 + 16), *(v20 + 8));
          }

          if (v21 == 1)
          {
            re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((a1 + 4), *(v19 + 8));
          }
        }
      }
    }
  }

  re::GeomMeshBuilder::GeomMeshBuilder(v26, a2);
  re::GeomMeshBuilder::appendMesh(v26, a1);
  v23 = re::GeomMesh::operator=(a2, &v26[1]);
  re::GeomMesh::setName(v23, v26[0]);
  re::GeomMesh::freeName(v26);
  re::GeomMesh::clear(a1);
  re::GeomMesh::freeName(v26);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v29 + 8));
  result = v27;
  if (v27)
  {
    if (v29)
    {
      return (*(*v27 + 40))();
    }
  }

  return result;
}