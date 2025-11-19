re::EventBus::EventInfo *re::Engine::updateRaiseUpdateEventScheduleState(re::Engine *this)
{
  result = *(this + 90);
  if (result)
  {
    v3 = *(this + 24);
    v4 = re::Scheduler::taskScheduleType(result, v3);
    v5 = *(this + 169);
    v6 = *(this + 189);
    updated = re::EventBus::subscriptionCountInternal<re::Engine,REEngineDoUpdateEvent>(v6, this, 0);
    result = re::EventBus::subscriptionCountInternal<re::Engine,REEngineDoUpdateEvent>(v6, 0, 0);
    if ((v4 == 4) == ((result + updated + v5) != 0))
    {
      v8 = -(result + updated);
      v9 = *(this + 90);
      if (v5 == v8)
      {

        return re::Scheduler::updateTaskSchedule(v9, v3, 4);
      }

      else
      {

        return re::Scheduler::setTaskOptions(v9, v3, this + 82);
      }
    }
  }

  return result;
}

uint64_t re::Engine::tick(re::Engine *this, float a2, uint64_t a3)
{
  if (*(this + 332) >= 1)
  {
    re::internal::assertLog(4, a3, "assertion failure: '%s' (%s:line %i) Invalid nested engine tick", "!isInsideTick()", "tick", 1871, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = *(this + 123);

    return re::ManualClock::update(v5, a2, a3);
  }

  return result;
}

uint64_t re::Engine::setPreferredFramesPerSecond(uint64_t this, float a2)
{
  *(this + 1296) = a2;
  if (!*(this + 480))
  {
    v2 = this;
    v3 = *(this + 984);
    if (a2 <= 0.0)
    {
      this = [*(v3 + 144) setPreferredFramesPerSecond:60];
      if ((*(v2 + 432) & 0x10) != 0)
      {
        v4 = *(*(v2 + 880) + 112);
        if (v4)
        {
          v5 = 60.0;
          goto LABEL_9;
        }
      }
    }

    else
    {
      this = [*(v3 + 144) setPreferredFramesPerSecond:llroundf(a2)];
      if ((*(v2 + 432) & 0x10) != 0)
      {
        v4 = *(*(v2 + 880) + 112);
        if (v4)
        {
          v5 = roundf(*(v2 + 1296));
LABEL_9:
          *(v4 + 1792) = v5;
        }
      }
    }
  }

  return this;
}

void re::Engine::doUpdate(re::EventBus **this, float a2)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v6 + 152))
    {
      v2 = mach_absolute_time();
    }
  }

  else
  {
    v6 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v15, 1510, this);
  re::Event<re::Engine>::raise((this + 167), this);
  v7 = this[189];
  v14 = a2;
  Type = re::EventBus::getTypeId<REEngineDoUpdateEvent>();
  re::EventBus::publish(v7, this, Type, &v14, 4uLL, 0);
  re::Engine::updateRaiseUpdateEventScheduleState(this);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v15);
  if (v6)
  {
    if (*(v6 + 152))
    {
      v9 = mach_absolute_time();
      v10 = *(v6 + 152);
      if (v10)
      {
        v11 = v10[152].u64[0];
        if (v11 >= v9 - v2)
        {
          v11 = v9 - v2;
        }

        v10[152].i64[0] = v11;
        v12 = v10[152].u64[1];
        if (v12 <= v9 - v2)
        {
          v12 = v9 - v2;
        }

        v10[152].i64[1] = v12;
        v13 = vdupq_n_s64(1uLL);
        v13.i64[0] = v9 - v2;
        v10[153] = vaddq_s64(v10[153], v13);
        *(v6 + 184) = 0;
      }
    }
  }
}

void re::Event<re::Engine>::raise(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v23, 0, sizeof(v23));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v13[0] = *v10;
        v13[1] = v12;
        v14 = v11;
        if (LOBYTE(v13[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if ((v23[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v13 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v13 + 1);
        }

        v7 += 40;
      }
    }
  }
}

int64x2_t re::Engine::doRender(re::Engine *this)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(this);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v4 + 152))
    {
      v1 = mach_absolute_time();
    }
  }

  else
  {
    v4 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v14, 5000, *(this + 110));
  *(*(this + 126) + 296) = 1;
  re::Event<re::Engine>::raise(this + 1424, this);
  v5 = *(this + 189);
  v13 = (*(**(this + 124) + 56))(*(this + 124));
  if ((atomic_load_explicit(&qword_1EE191788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191788))
  {
    qword_1EE191780 = re::EventBus::typeStringToId(("21REEngineDoRenderEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
    __cxa_guard_release(&qword_1EE191788);
  }

  re::EventBus::publish(v5, this, qword_1EE191780, &v13, 4uLL, 0);
  *(*(this + 126) + 296) = 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v14);
  if (v4)
  {
    if (*(v4 + 152))
    {
      v7 = mach_absolute_time();
      v8 = *(v4 + 152);
      if (v8)
      {
        v9 = v8[80].u64[0];
        if (v9 >= v7 - v1)
        {
          v9 = v7 - v1;
        }

        v8[80].i64[0] = v9;
        v10 = v8[80].u64[1];
        if (v10 <= v7 - v1)
        {
          v10 = v7 - v1;
        }

        v8[80].i64[1] = v10;
        v11 = vdupq_n_s64(1uLL);
        v11.i64[0] = v7 - v1;
        result = vaddq_s64(v8[81], v11);
        v8[81] = result;
        *(v4 + 184) = 0;
      }
    }
  }

  return result;
}

uint64_t re::Scheduler::ScheduleDescriptor::addPhase(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*a1)
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::StringID>::setCapacity(a1, v11);
      }

      else
      {
        re::DynamicArray<re::StringID>::setCapacity(a1, v7);
        ++*(a1 + 24);
      }
    }

    v6 = *(a1 + 16);
  }

  v12 = (*(a1 + 32) + 16 * v6);
  *v12 = v3;
  v12[1] = v4;
  result = *(a1 + 16);
  *(a1 + 16) = result + 1;
  ++*(a1 + 24);
  return result;
}

uint64_t re::Scheduler::ScheduleDescriptor::addTask(uint64_t a1, uint64_t *a2)
{
  if (a2[9])
  {
    re::DynamicArray<re::Scheduler::TaskDescriptor>::add((a1 + 40), a2);
    return *(a1 + 56) - 1;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Task Descriptor does not contain an update function", "taskDescriptor.taskFunction", "addTask", 149);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::Engine::enableHackedAutoDisableOutputSystemsCode(uint64_t this)
{
  *(this + 417) = 1;
  if (*(this + 416))
  {
    *(this + 416) = 0;
    if (*(this + 720))
    {
      return re::Scheduler::setEnabled(*(this + 720), this + 344, 0);
    }
  }

  return this;
}

re::Scheduler *re::Engine::setRaiseUpdateEventFrameTaskOptions(uint64_t a1, float *a2)
{
  result = *(a1 + 720);
  if (result)
  {
    v5 = *(a1 + 192);
    result = re::Scheduler::taskScheduleType(result, v5);
    if (result == *(a1 + 328))
    {
      result = re::Scheduler::setTaskOptions(*(a1 + 720), v5, a2);
    }
  }

  v6 = *a2;
  *(a1 + 336) = *(a2 + 8);
  *(a1 + 328) = v6;
  return result;
}

uint64_t re::Scheduler::taskScheduleType(re::Scheduler *this, unint64_t a2)
{
  if (*(this + 56) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 57) + a2);
}

uint64_t re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 > *(a1 + 64))
  {
    if ((v4 & 0x3F) != 0)
    {
      v5 = (v4 >> 6) + 1;
    }

    else
    {
      v5 = v4 >> 6;
    }

    *(a1 + 64) = v4;
    v11 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize(a1, v5, &v11);
  }

  v6 = *(a2 + 8);
  if (v6 >= *(a1 + 8))
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(a2 + 32);
      if (*(a2 + 16))
      {
        v8 = a2 + 24;
      }

      v9 = a1 + 24;
      if ((*(a1 + 16) & 1) == 0)
      {
        v9 = *(a1 + 32);
      }

      *(v9 + 8 * i) |= *(v8 + 8 * i);
    }
  }

  return a1;
}

uint64_t re::Engine::start(uint64_t this)
{
  v1 = this;
  v2 = *(this + 976);
  if (!v2)
  {
    v3 = re::ServiceLocator::service<re::SimulationClock>(*(this + 688));
    this = (*(*v3 + 64))(v3);
    v2 = *(v1 + 244);
  }

  *(v1 + 244) = v2 + 1;
  if (*(v1 + 120) == 1)
  {

    return re::Engine::tick(v1);
  }

  return this;
}

uint64_t re::ServiceLocator::service<re::SimulationClock>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::SimulationClock>(a1);
  if (!result)
  {
    v2 = re::introspect<re::SimulationClock>();
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::SimulationClock>();
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::Engine::stop(uint64_t this)
{
  v2 = *(this + 976);
  if (!v2 || (v3 = v2 - 1, (*(this + 976) = v3) == 0))
  {
    v4 = *(*re::ServiceLocator::service<re::SimulationClock>(*(this + 688)) + 72);

    return v4();
  }

  return this;
}

_anonymous_namespace_ *re::Engine::isRunning(re::Engine *this)
{
  result = re::ServiceLocator::serviceOrNull<re::SimulationClock>(*(this + 86));
  if (result)
  {
    v2 = *(*result + 16);

    return v2();
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SimulationClock>(uint64_t a1)
{
  {
    re::introspect<re::SimulationClock>(BOOL)::info = re::introspect_SimulationClock(0);
  }

  v2 = re::introspect<re::SimulationClock>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

BOOL re::Engine::createDrawingManager(re::Engine *this)
{
  v1 = *(*(this + 110) + 112);
  if (!v1)
  {
    v3 = *re::appLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Enter CreateDrawingManager", &v21, 2u);
    }

    DrawingManager = re::RenderManager::createDrawingManager(*(this + 110));
    v5 = *(*(this + 110) + 112);
    if (v5)
    {
      v6 = *(v5 + 296);
    }

    else
    {
      v6 = 0;
    }

    v7 = re::globalAllocators(DrawingManager);
    v8 = (*(*v7[2] + 32))(v7[2], 8, 8);
    *v8 = &unk_1F5CB66C0;
    v9 = re::RenderGraphManager::setDataPipeFactory(v6, v8);
    v10 = *(this + 110);
    v11 = *(v10 + 112);
    if (v11)
    {
      v9 = *(this + 128);
      *(v11 + 1664) = v9;
      if (v9)
      {
        v9 = re::ProfilerManager::getProcessor<re::FrameProfiler,void>(v9);
        *(v11 + 1648) = v9;
        v10 = *(this + 110);
      }
    }

    if (*(this + 98) && *(v10 + 112) && !*(this + 101))
    {
      v12 = re::globalAllocators(v9);
      v13 = (*(*v12[2] + 32))(v12[2], 104, 8);
      *v13 = &unk_1F5CBD9C8;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 48) = 0;
      *(v13 + 52) = 0x7FFFFFFFLL;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = 0;
      *(this + 101) = v13;
      v14 = *(this + 110);
      *(v13 + 88) = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(this + 86));
      *(v13 + 8) = v14;
      v15 = *(this + 86);
      v16 = *(this + 101);
      re::StringID::invalid(&v21);
      re::ServiceRegistry::add<re::DrawableQueueService>(v15, v16, &v21);
      if (*&v21.var0)
      {
        if (*&v21.var0)
        {
        }
      }

      v10 = *(this + 110);
    }

    *(this + 108) |= 0x10u;
    *(v10 + 205) = 1;
    v17 = *re::appLogObjects(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "CreateDrawingManager: about to call remove/add scenes", &v21, 2u);
    }

    v18 = *(this + 88);
    if (v18)
    {
      v18 = re::ecs2::ECSManager::removeAndAddRealityRendererScenes(v18);
    }

    *(this + 1544) = 1;
    v19 = *re::appLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *&v21.var0 = 0;
      _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Exit CreateDrawingManager", &v21, 2u);
    }
  }

  return v1 == 0;
}

BOOL re::Engine::hasPendingSystemChanges(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 704);
  if (!v2)
  {
    return 0;
  }

  result = re::ecs2::SceneGroupCollection::hasPendingSystemChanges(v2 + 40, a2);
  if (result)
  {
    re::ecs2::SceneGroupCollection::configureSystemChanges(*(a1 + 704) + 40, a2);
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ColorManager>(uint64_t a1)
{
  {
    re::introspect<re::ColorManager>(BOOL)::info = re::introspect_ColorManager(0);
  }

  v2 = re::introspect<re::ColorManager>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void re::EngineOverlay::init(re::EngineOverlay *this, re::Engine *a2)
{
  *(this + 3) = a2;
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  v5 = re::ManualClock::ManualClock(v4);
  *(this + 4) = v5;
  v6 = re::globalAllocators(v5);
  v7 = (*(*v6[2] + 32))(v6[2], 248, 8);
  v8 = re::VariableStepTimer::VariableStepTimer(v7);
  *(this + 5) = v8;
  re::VariableStepTimer::setClock(v8, *(this + 4));
  v9 = *(this + 4);
  *(*(this + 5) + 24) = 1;
  *(v9 + 8) = 1;
}

void re::EngineOverlay::~EngineOverlay(re::EngineOverlay *this)
{
  *this = &unk_1F5CB58C0;
  v2 = *(this + 5);
  *(*(this + 4) + 8) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = re::globalAllocators(this)[2];
  re::VariableStepTimer::~VariableStepTimer(v2);
  v4 = (*(*v3 + 40))(v3, v2);
  *(this + 5) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    v6 = re::globalAllocators(v4)[2];
    (**v5)(v5);
    (*(*v6 + 40))(v6, v5);
  }

  *(this + 4) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 368);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::EngineOverlay::~EngineOverlay(this);

  JUMPOUT(0x1E6906520);
}

void *re::EngineOverlay::executePhase(uint64_t a1, unsigned int a2)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(*(a1 + 24) + 688));
  if (result)
  {
    v5 = result;
    v6 = (*(*result + 304))(result, *(a1 + 48));
    result = (*(*v5 + 304))(v5, *(a1 + 48));
    v7 = result[9];
    if (v7)
    {
      if (a2 == 1)
      {
        if (*(a1 + 57) == 1)
        {
          *(re::ServiceLocator::serviceOrNull<re::FrameManager>(*(*(a1 + 24) + 688)) + 360) = 1;
          *(a1 + 57) = 0;
        }
      }

      else if (a2 == 4)
      {
        v8 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(*(a1 + 24) + 688));
        v9 = re::RenderFrameBox::get((*(v8 + 14) + 328), 0xFFFFFFFFFFFFFFFuLL);
        v10 = *(v9 + 384);
        if (((*(v9 + 416) ^ v10) & 0xFFFFFFFFFFFFFFFLL) == 0)
        {
          *(a1 + 360) = v10;
        }
      }

      if (*(a1 + 56) >= a2)
      {
        re::EngineOverlay::configureScheduling(a1, v6);
        v11 = *(a1 + 40);
        if (a2 == 1)
        {
          v12 = *(v11 + 40);
        }

        else
        {
          v12 = 0.0;
        }

        v13 = *(v11 + 40) * 0.5;
        re::DynamicOverflowArray<unsigned long long,2ul>::DynamicOverflowArray(v15, (a1 + 368));
        v17 = *(a1 + 408);
        re::Scheduler::beginPhaseExecution(v7, v15, v12, v13);
        if (v15[0])
        {
          v14 = v16;
          if ((v16 & 1) == 0)
          {
            (*(*v15[0] + 40))();
            v14 = v16;
          }

          v15[0] = 0;
          v15[1] = 0;
          v16 = (v14 | 1) + 2;
        }

        *(a1 + 408) = 0;
        v18 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 368), 0, &v18);
      }

      result = re::Scheduler::executePhase(v7, *(a1 + 8 * a2 + 64));
      *(a1 + 56) = a2;
    }
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::FrameManager>(uint64_t a1)
{
  {
    re::introspect<re::FrameManager>(BOOL)::info = re::introspect_FrameManager(0);
  }

  v2 = re::introspect<re::FrameManager>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

uint64_t re::EngineOverlay::configureScheduling(re::EngineOverlay *this, re::ecs2::SceneGroup *a2)
{
  if (re::Engine::hasPendingSystemChanges(*(this + 3), *(this + 6)) || (result = re::ecs2::SceneGroup::hasPendingSystemChanges(a2), result))
  {
    v5 = *(*(this + 3) + 704);
    if (v5)
    {
      re::ecs2::SceneGroupCollection::configureSystemChanges(v5 + 40, *(this + 6));
    }

    re::ecs2::SceneGroup::configureSystemChanges(a2);
    v11 = -60461133;
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    v10 = 0;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    re::Engine::configureSchedulingPhases(*(this + 3), this + 8, v6, &v11, *(this + 6));
    re::Scheduler::configure(*(a2 + 9), v6);
    re::DynamicArray<re::Scheduler::TaskDescriptor>::deinit(v8 + 8);
    return re::DynamicArray<re::StringID>::deinit(v6);
  }

  return result;
}

_anonymous_namespace_ *re::EngineOverlay::skipPhaseForNextUpdate(_anonymous_namespace_ *result, unsigned int a2)
{
  v3 = result;
  v18 = *MEMORY[0x1E69E9840];
  if (*(result + 51))
  {
    v4 = *(result + 47);
  }

  else
  {
    v5 = *(result + 15) + 1;
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    *(result + 51) = v5;
    *&v17[0] = 0;
    result = re::DynamicOverflowArray<unsigned long long,2ul>::resize((result + 368), v6, v17);
    v4 = *(v3 + 47);
    if (!v4)
    {
      while (1)
      {
LABEL_26:
        memset(v17, 0, sizeof(v17));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v7 = *(v3 + 96);
    if (v7)
    {
      v8 = v3 + 392;
    }

    else
    {
      v8 = *(v3 + 50);
    }

    v9 = v3 + 392;
    while (1)
    {
      v10 = v3 + 392;
      if ((v7 & 1) == 0)
      {
        v10 = *(v3 + 50);
      }

      if (v8 == &v10[8 * v4 - 8])
      {
        break;
      }

      *v8 = -1;
      v8 += 8;
      v7 = *(v3 + 96);
    }

    v11 = 63;
    v12 = *(v3 + 51) & 0x3FLL;
    if (v12)
    {
      v13 = v12 == 63;
      v14 = -1 << v12;
      if (!v13)
      {
        v11 = ~v14;
      }
    }

    if ((v7 & 1) == 0)
    {
      v9 = *(v3 + 50);
    }

    *&v9[8 * v4 - 8] = v11;
  }

  v15 = *(v3 + a2 + 8);
  if (v4 <= v15 >> 6)
  {
    goto LABEL_26;
  }

  if (*(v3 + 384))
  {
    v16 = v3 + 392;
  }

  else
  {
    v16 = *(v3 + 50);
  }

  *&v16[8 * (v15 >> 6)] &= ~(1 << v15);
  return result;
}

uint64_t re::EngineOverlay::setSceneGroupHandle(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 52) & 0xFFFFFF) != 0)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) EngineOverlay can only be configured for 1 scene group.", "m_sceneGroupHandle.isNull()", "setSceneGroupHandle", 3472);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  *(a1 + 48) = a2;
  v3 = *re::ServiceLocator::service<re::ecs2::ECSService>(*(*(a1 + 24) + 688));
  v4 = (*(v3 + 304))();
  if (*(v4 + 8) != 2)
  {
LABEL_7:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) EngineOverlay can only be configured scene groups not updated by default.", "!sceneGroup.isUpdateByDefault()", "setSceneGroupHandle", 3477);
    result = _os_crash();
    __break(1u);
    return result;
  }

  return re::EngineOverlay::configureScheduling(a1, v4);
}

uint64_t re::ServiceLocator::service<re::ecs2::ECSService>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ecs2::ECSService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::ecs2::ECSService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::EngineOverlay::canReuseLastFrame(re::EngineOverlay *this)
{
  v2 = re::ServiceLocator::serviceOrNull<re::RenderManager>(*(*(this + 3) + 688));
  v3 = *(v2 + 14);
  if (v3 && (*(v3 + 784) != 1 || (v4 = v2, v5 = *(v3 + 312), std::mutex::lock((v5 + 208)), v6 = *(v5 + 184), v7 = *(v5 + 176), std::mutex::unlock((v5 + 208)), v6 >= v7) && (v3 = *(v4 + 14)) != 0) && (v8 = *(v3 + 296)) != 0 && (*(v8 + 380) & 1) == 0)
  {
    return ((*(this + 45) ^ *(re::ServiceLocator::serviceOrNull<re::FrameManager>(*(*(this + 3) + 688)) + 3)) & 0xFFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_Engine(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_29, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_29))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191790, "Engine");
    __cxa_guard_release(&_MergedGlobals_29);
  }

  return &unk_1EE191790;
}

void re::initInfo_Engine(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 4160343236;
  v6[1] = "Engine";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x61000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::Engine>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::Engine>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_Engine(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::EngineConfiguration *re::EngineConfiguration::EngineConfiguration(re::EngineConfiguration *this)
{
  *this = 0;
  *(this + 4) = -65537;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  *(this + 2) = v2;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v4 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 12) = re::globalAllocators(v4)[2];
  *(this + 13) = 0;
  *(this + 7) = xmmword_1E3054760;
  *(this + 8) = xmmword_1E3054770;
  *(this + 19) = 0x101010101010101;
  *(this + 20) = 0x101010101010101;
  *(this + 18) = 32505856;
  *(this + 42) = 257;
  *(this + 172) = 1;
  *(this + 173) = 0;
  *(this + 177) = 0x100010001000001;
  *(this + 185) = 0;
  *(this + 187) = 0;
  *(this + 47) = 40;
  *(this + 192) = 1;
  *(this + 216) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  re::Defaults::BOOLValue("shareAssetStates", v5, &v14);
  *(this + 217) = v14 & v15;
  re::Defaults::BOOLValue("calculateAssetRuntimeSize", v6, &v14);
  *(this + 218) = v14 & v15;
  re::Defaults::uint64Value("assetRuntimeSizeLimit", v7, &v14);
  if (v14)
  {
    v9 = v16;
  }

  else
  {
    v9 = -1;
  }

  *(this + 28) = v9;
  re::Defaults::uint64Value("assetRuntimeUpdateTimeoutNanoseconds", v8, &v14);
  if (v14)
  {
    v10 = v16;
  }

  else
  {
    v10 = 0;
  }

  *(this + 29) = v10;
  *(this + 240) = 0;
  *(this + 241) = _os_feature_enabled_impl() ^ 1;
  *(this + 242) = _os_feature_enabled_impl();
  *(this + 243) = 257;
  *(this + 245) = 0;
  re::Defaults::BOOLValue("preloadEngineAssets", v11, &v14);
  *(this + 246) = v14 & v15;
  *(this + 247) = 0x10000;
  *(this + 251) = 257;
  re::Defaults::BOOLValue("preloadMXIAssets", v12, &v14);
  *(this + 253) = v14 & v15;
  return this;
}

re::NetworkOPACKSerializer *re::NetworkOPACKSerializer::NetworkOPACKSerializer(re::NetworkOPACKSerializer *this)
{
  *&v4.var0 = 0xD66B7D4190E6B598;
  v4.var1 = "NetworkOPACKSerializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(this, &v4);
  *v2 = &unk_1F5CB59E0;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 200) = v2 + 448;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB5920;
  return this;
}

void re::NetworkOPACKSerializer::~NetworkOPACKSerializer(re::NetworkOPACKSerializer *this)
{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doClose(uint64_t a1)
{
  re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializeSharedObjects(a1);
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 208);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(v19, &v26, &v30);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 208);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v26 = a4;
  if (!*(a1 + 288))
  {
    if (*(a1 + 136) == 2)
    {
      v22 = a4;
      re::TypeInfo::TypeInfo(v23, a5);
      re::TypeInfo::TypeInfo(v24, a6);
      v25 = 0;
      re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v22);
      LODWORD(v22) = 0;
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(a1 + 312, &v26, &v22);
      a3 = 10;
      v10 = v26;
    }

    else
    {
      v22 = 0;
      re::TypeInfo::TypeInfo(v23, a5);
      re::TypeInfo::TypeInfo(v24, a6);
      v25 = 0;
      re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v22);
    }
  }

  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {
    return v14(a1, a2, a3, v10, a5, a6, a7);
  }

  v16 = re::TypeInfo::name(a5);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
  return 0;
}

uint64_t (*re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v4 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializePointer;
  if (*(a2 + 12) != 9)
  {
    if (*a2 == *(a1 + 208))
    {
      v7[1] = v2;
      v7[2] = v3;
      LODWORD(v7[0]) = **(a2 + 16);
      HIDWORD(v7[0]) = -1;
      v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v7);
      v4 = re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
      if (v5)
      {
        return *v5;
      }
    }

    else
    {
      return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
    }
  }

  return v4;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB5AB0;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(a1 + 24, 15);
  *(a1 + 256) = 0x7FFFFFFF00000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 264) = 0;
  *a1 = off_1F5CB5A48;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 420) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 436) = 0x7FFFFFFFLL;
  return a1;
}

uint64_t re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
  result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, "container", 0, 0);
  if ((result & 1) == 0 && (*(a1 + 64) & 1) == 0)
  {

    return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, "container", "Failed to open container.", v11, v12, v13, v14, v15, a9);
  }

  return result;
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &unk_1EE186000;
  {
    v8 = result;
    v2 = &unk_1EE186000;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue("maxSerializationDepth", v5, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &unk_1EE186000;
      result = v8;
    }
  }

  v3 = v2[27];
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CB5AB0;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 224));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(void *a1)
{
  if (a1[26])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
    a1[26] = 0;
  }
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

double re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
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

_BYTE *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(_anonymous_namespace_ *result, int a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (!v4)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 112);
  }

  if (*(*(v3 + 128) + 48 * v4 - 48) != a2)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 112);
  }

  *(v3 + 112) = v4 - 1;
  ++*(v3 + 120);
  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(uint64_t a1, uint64_t a2)
{
  *&v3 = 400;
  *(&v3 + 1) = re::FoundationErrorCategory(void)::instance;
  v4 = *a2;
  v6 = *(a2 + 24);
  v5 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v3);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(uint64_t a1, __int128 *a2)
{
  v4[0] = 1;
  v5 = *a2;
  re::DynamicString::DynamicString(&v6, (a2 + 1));
  result = re::Optional<re::DetailedError>::operator=(a1 + 40, v4);
  if (v4[0] == 1)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::Optional<re::DetailedError>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 8) = *(a2 + 8);
      re::DynamicString::operator=((a1 + 24), (a2 + 24));
    }

    else
    {
      re::DynamicString::deinit((a1 + 24));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 48) = *(a2 + 48);
    v3 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a2 + 40);
    *(a2 + 48) = 0;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 32) = v3;
    *(a1 + 40) = v4;
    *(a2 + 32) = v6;
    *(a2 + 40) = v5;
  }

  return a1;
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  re::DynamicString::setCapacity(&v23, 0);
  v22 = &a9;
  re::DynamicString::vassignf(&v23, a3, &a9);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels((a1 + 24), a2, &v15);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  if (v24)
  {
    v13 = v25;
  }

  else
  {
    v13 = &v24 + 1;
  }

  re::DynamicString::format("Failed to %s %s. Reason: %s", &v18, "serialize", v12, v13);
  *&v21[0] = 400;
  *(&v21[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v21[1] = v18;
  *(&v21[2] + 1) = v20;
  *(&v21[1] + 8) = v19;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, v21);
  if (*&v21[1])
  {
    if (BYTE8(v21[1]))
    {
      (*(**&v21[1] + 40))();
    }

    memset(&v21[1], 0, 32);
  }

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  result = v23;
  if (v23)
  {
    if (v24)
    {
      return (*(*v23 + 40))();
    }
  }

  return result;
}

void *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels@<X0>(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 14);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = 0;
  result = re::DynamicString::setCapacity(a3, 0);
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = v5 + 48;
    do
    {
      v10 = *(v9 - 48);
      v11 = v10 > 0xA;
      v12 = (1 << v10) & 0x608;
      if (v11 || v12 == 0)
      {
        v14 = *(v9 + 8);
        if (v14 && *v14)
        {
          __src = 47;
          re::DynamicString::append(a3, &__src, 1uLL);
          v15 = strlen(*(v9 + 8));
          result = re::DynamicString::append(a3, *(v9 + 8), v15);
        }

        if (*v9 == 5)
        {
          result = re::DynamicString::appendf(a3, "/%lld", *(v9 + 32));
        }
      }

      v9 += 48;
      --v8;
    }

    while (v8);
  }

  if (a2 && *a2)
  {
    v18 = 47;
    re::DynamicString::append(a3, &v18, 1uLL);
    v16 = strlen(a2);

    return re::DynamicString::append(a3, a2, v16);
  }

  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(uint64_t a1, void *a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*(a1 + 8) + 4 * (*a2 % *(a1 + 24)));
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  while (*(v3 + 24 * v2 + 4) != *a2)
  {
    v2 = *(v3 + 24 * v2) & 0x7FFFFFFF;
    if (v2 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v3 + 24 * v2 + 16;
}

uint64_t re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 16);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
    return 0;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v30 = re::TypeInfo::name(this)[1];
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.", v31, v32, v33, v34, v35, v30);
    return 0;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_57;
        }

        return re::serializeArray<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_57;
      }

      return re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_57;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v36 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v36);
        return 0;
      default:
LABEL_57:
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

BOOL re::areSameVersion(re *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  if (this == a2)
  {
    return 1;
  }

  if (*this != *a2)
  {
    return re::areSameTranslatedVersion(this, a2, a3);
  }

  v4 = **(this + 2);
  v5 = **(a2 + 2);
  if (v4 == v5 && ((v7 = WORD1(v4) == WORD1(v5), v6 = (v5 ^ v4) & 0xFFFFFF00000000, v7) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v8, v9, v10, v11, v12, v7);
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  v10 = a3;
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
      return 0;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 <= 0x303EE88E58CLL)
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_68;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }

        goto LABEL_59;
      }

LABEL_53:

      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v10, a4, a7);
    }

    if (*v14 >> 1 <= 0x2A8CEB1C43F60843)
    {
      if (v15 != 0x303EE88E58DLL)
      {
        if (v15 != 0x2710786C3AC82DA1)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v15 == 0x2A8CEB1C43F60844)
      {
LABEL_65:

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v10, a4, a7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v10, a4, a7);
  }

  if (*v14 >> 1 <= 0x685847B)
  {
    if (*v14 >> 1 > 0x2E9355)
    {
      if (v15 != 3052374)
      {
        if (v15 != 3327612)
        {
          if (v15 == 97526364)
          {

            return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1 + 24, a2, v10, a4, a7);
          }

          goto LABEL_74;
        }

        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, a2, v10, a4, a7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Unsupported basic type %s.", v22, v23, v24, v25, v26, v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(a1 + 24, a2, v10, a4, a7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v10, a4, a7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v15 == 109413500)
  {
LABEL_71:

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(a1 + 24, a2, v10, a4, a7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, a2, v10, a4, a7);
}

uint64_t re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v23[0] = 0;
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(a1 + 24, a2, v11, v23, 0);
    if (v23[0] == 1)
    {
      v18 = *(a1 + 208);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
      re::TypeInfo::TypeInfo(v24, &v26);
      re::internal::translateType(v18, v24, v25);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, v25, v25, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v24, &v26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v23, &v26);
    re::TypeInfo::TypeInfo(v25, a5);
    v22 = (*(v27 + 88))(a4) != 0;
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(a1 + 24, a2, v11, &v22, 0);
    if (v22)
    {
      v19 = (*(v27 + 88))(a4);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v19, v24, v23, 0);
      }
    }
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endOptional((a1 + 24));
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_68;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 23) & 0xFFFFFF;
  if ((*(v18 + 23) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_68:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_69;
  }

  if (v20 || *(v18 + 24) != *(v19 + 24))
  {
    goto LABEL_68;
  }

LABEL_13:
  if (a7)
  {
    v21 = *(a1 + 26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v65);
    re::TypeInfo::TypeInfo(v61, v66);
    re::internal::translateType(v21, v61, v62);
    v22 = (*(*a1 + 80))(a1, v62);
    if (v22)
    {
      v23 = v22;
      v24 = *(a6 + 2);
      v25 = *(v24 + 23) & 0xFFFFFF;
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v24 + 24);
      }

      v65 = v26;
      if (v63 == 1)
      {
        v61[0] = v26 * *(v64 + 8);
        v50 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB((a1 + 24), a2, v11, v61, 0);
        v32 = 0;
        if (v50)
        {
          if (v61[0])
          {
            v34 = (a1 + 24);
            v33 = 0;
            v35 = 1;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        return v32 & 1;
      }

      if (v25)
      {
        v51 = 8;
      }

      else
      {
        v51 = 4;
      }

      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, v11, &v65, v51))
      {
        v52 = v65;
        if (v25)
        {
          v53 = v65 == 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v53;
        if (!v53)
        {
          v60[0] = 0;
          v60[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v60);
          v52 = v65;
        }

        if (v52)
        {
          v55 = 0;
          do
          {
            v23(a1, 0, 0, 0, v62, v62, 1);
            ++v55;
          }

          while (v55 < v65);
        }

        if (v54)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      goto LABEL_69;
    }

LABEL_22:
    v36 = re::TypeInfo::name(v62);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v37, v38, v39, v40, v41, v36[1]);
    goto LABEL_69;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v65);
  re::TypeInfo::TypeInfo(v62, v66);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v65);
  re::TypeInfo::TypeInfo(v61, v66);
  re::TypeInfo::TypeInfo(&v65, a5);
  v27 = (*(*a1 + 80))(a1, v62);
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v27;
  v29 = re::ArrayAccessor::size(&v65, a4);
  v59 = v29;
  if (v63 != 1)
  {
    v42 = *(*(a5 + 2) + 92) & 0xFFFFFF;
    if (v42)
    {
      v43 = 8;
    }

    else
    {
      v43 = 4;
    }

    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), a2, v11, &v59, v43))
    {
      v44 = v59;
      if (v42)
      {
        v45 = v59 == 0;
      }

      else
      {
        v45 = 1;
      }

      v46 = v45;
      if (!v45)
      {
        v47 = *a4;
        v57[0] = 0;
        v57[1] = 0xFFFFFFFFLL;
        (*(*a1 + 16))(a1, v47, v57);
        v44 = v59;
      }

      if (v44)
      {
        v48 = 0;
        do
        {
          v49 = re::ArrayAccessor::elementAt(&v65, a4, v48);
          v28(a1, 0, 0, v49, v62, v61, 0);
          ++v48;
        }

        while (v48 < v59);
      }

      if (v46)
      {
        goto LABEL_40;
      }

LABEL_39:
      (*(*a1 + 24))(a1);
LABEL_40:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
LABEL_48:
      v32 = a1[64] ^ 1;
      return v32 & 1;
    }

LABEL_69:
    v32 = 0;
    return v32 & 1;
  }

  v30 = v29;
  v58 = v29 * *(v64 + 8);
  v31 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB((a1 + 24), a2, v11, &v58, 0);
  v32 = 0;
  if (v31)
  {
    if (v30)
    {
      v33 = re::ArrayAccessor::elementAt(&v65, a4, 0);
      v34 = (a1 + 24);
      v35 = 0;
LABEL_46:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(v34, v33, v35);
    }

LABEL_47:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((a1 + 24));
    goto LABEL_48;
  }

  return v32 & 1;
}

uint64_t re::serializeList<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_29;
  }

LABEL_11:
  if (a7)
  {
    v18 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v59);
    re::TypeInfo::TypeInfo(v55, &v60);
    re::internal::translateType(v18, v55, v56);
    v19 = (*(*a1 + 80))(a1, v56);
    if (v19)
    {
      v59 = 0;
      if (v57 == 1)
      {
        v55[0] = 0;
        v20 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, v55, 0);
        v21 = 0;
        if (v20)
        {
          if (v55[0])
          {
            v22 = a1 + 24;
            v23 = 0;
            v24 = 1;
LABEL_24:
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(v22, v23, v24);
            goto LABEL_25;
          }

          goto LABEL_25;
        }

        return v21 & 1;
      }

      v38 = v19;
      v39 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v59, 0);
      v21 = 0;
      if (!v39)
      {
        return v21 & 1;
      }

      if (v59)
      {
        for (i = 0; i < v59; ++i)
        {
          v38(a1, 0, 0, 0, v56, v56, 1);
        }
      }

LABEL_40:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v59);
  re::TypeInfo::TypeInfo(v56, &v60);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v59);
  re::TypeInfo::TypeInfo(v55, &v60);
  re::TypeInfo::TypeInfo(&v59, a5);
  v25 = (*(*a1 + 80))(a1, v56);
  if (!v25)
  {
LABEL_26:
    v51 = re::TypeInfo::name(v56)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v30, v31, v32, v33, v34, v51);
    goto LABEL_29;
  }

  v26 = v25;
  v27 = (*(v61 + 88))(a4);
  v54 = v27;
  if (*(a5 + 12) != 5 || (*(*(a5 + 2) + 48) & 8) == 0 || v57 != 1)
  {
    v35 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v54, 0);
    v21 = 0;
    if (!v35)
    {
      return v21 & 1;
    }

    if (*(v61 + 104))
    {
      if (v54)
      {
        for (j = 0; j < v54; ++j)
        {
          v37 = (*(v61 + 104))(a4, j);
          v26(a1, 0, 0, v37, v56, v55, 0);
        }
      }

      goto LABEL_40;
    }

    v42 = *(v61 + 112);
    if (v42 && *(v61 + 120) && *(v61 + 128))
    {
      v43 = v42(a4, *(a1 + 56));
      v44 = (*(v61 + 120))();
      if (v44)
      {
        v45 = v44;
        do
        {
          v26(a1, 0, 0, v45, v56, v55, 0);
          v45 = (*(v61 + 120))(v43);
        }

        while (v45);
      }

      (*(v61 + 128))(v43, *(a1 + 56));
      goto LABEL_40;
    }

    re::TypeInfo::TypeInfo(v53, &v59);
    v52 = re::TypeInfo::name(v53)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v46, v47, v48, v49, v50, v52);
LABEL_29:
    v21 = 0;
    return v21 & 1;
  }

  v28 = v27;
  v53[0] = v27 * *(v58 + 8);
  v29 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, v53, 0);
  v21 = 0;
  if (v29)
  {
    if (v28)
    {
      v23 = (*(v61 + 104))(a4, 0);
      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_24;
    }

LABEL_25:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((a1 + 24));
LABEL_41:
    v21 = *(a1 + 64) ^ 1;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  v85 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
LABEL_52:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (a7)
  {
    v18 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v80);
    re::TypeInfo::TypeInfo(&v72, &v80.n128_i64[1]);
    re::internal::translateType(v18, &v72, v59);
    v19 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v80);
    re::TypeInfo::TypeInfo(v70, &v80.n128_i64[1]);
    re::internal::translateType(v19, v70, &v72);
    v20 = (*(*a1 + 80))(a1, v59);
    if (v20)
    {
      v21 = v20;
      v22 = (*(*a1 + 80))(a1, &v72);
      if (v22)
      {
        v23 = v22;
        v70[0] = 0;
        v24 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(a1 + 24, a2, v11, v70, 0);
        v25 = 0;
        if (v24)
        {
          if (v70[0])
          {
            v26 = 0;
            do
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                v80.n128_u8[0] = 7;
                v80.n128_u32[1] = 1;
                v80.n128_u64[1] = "entry";
                v81 = xmmword_1E3054780;
                v82 = 0uLL;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
              }

              v21(a1, "key", 0, 0, v59, v59, 1);
              v23(a1, "value", 0, 0, &v72, &v72, 1);
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              ++v26;
            }

            while (v26 < v70[0]);
          }

LABEL_60:
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary((a1 + 24));
          v25 = *(a1 + 64) ^ 1;
          return v25 & 1;
        }

        return v25 & 1;
      }

      v47 = &v72;
    }

    else
    {
      v47 = v59;
    }

    goto LABEL_51;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v80);
  re::TypeInfo::TypeInfo(v70, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v80);
  re::TypeInfo::TypeInfo(v69, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v80);
  re::TypeInfo::TypeInfo(v68, &v80.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v80);
  re::TypeInfo::TypeInfo(v67, &v80.n128_i64[1]);
  re::TypeInfo::TypeInfo(v65, a5);
  v27 = (*(*a1 + 80))(a1, v70);
  if (!v27)
  {
    v47 = v70;
LABEL_51:
    v48 = re::TypeInfo::name(v47);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v49, v50, v51, v52, v53, v48[1]);
    goto LABEL_52;
  }

  v28 = v27;
  v29 = (*(*a1 + 80))(a1, v69);
  if (!v29)
  {
    v47 = v69;
    goto LABEL_51;
  }

  v30 = v29;
  v64 = (*(v66 + 96))(a4);
  v31 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(a1 + 24, a2, v11, &v64, 0);
  v25 = 0;
  if (v31)
  {
    if (v64)
    {
      v32 = *a5;
      v80.n128_u64[0] = 0x449AD97C4B77BED4;
      v80.n128_u64[1] = "_CompareFunc";
      v33 = re::TypeRegistry::typeID(v32, &v80, v63);
      if (v80.n128_u8[0])
      {
        if (v80.n128_u8[0])
        {
        }
      }

      if (v63[0] && (v34 = *v70[2], v80.n128_u64[0] = v63[1], v80.n128_u64[1] = v34, LODWORD(v81) = -1, (v35 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v70[0] + 768, &v80)) != 0) && (v36 = *v35) != 0)
      {
        v62 = 0;
        v59[1] = 0;
        v60 = 0;
        v61 = 0;
        v59[0] = *(a1 + 56);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v59, v64);
        ++v61;
        v37 = (*(v66 + 120))(a4, *(a1 + 56));
        if ((*(v66 + 128))())
        {
          do
          {
            v38 = (*(v66 + 136))(v37);
            v39 = (*(v66 + 144))(v37);
            v80.n128_u64[0] = v38;
            v80.n128_u64[1] = v39;
            v40 = re::DynamicArray<re::RigNodeConstraint>::add(v59, &v80);
          }

          while (((*(v66 + 128))(v37, v40) & 1) != 0);
        }

        (*(v66 + 152))(v37, *(a1 + 56));
        v80.n128_u64[0] = v36;
        v42 = 126 - 2 * __clz(v60);
        if (v60)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(v62, &v62[2 * v60], &v80, v43, 1, v41);
        if (v64)
        {
          v44 = 0;
          for (i = 0; i < v64; ++i)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v80.n128_u8[0] = 7;
              v80.n128_u32[1] = 0;
              v80.n128_u64[1] = "entry";
              v81 = xmmword_1E3054780;
              v82 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
            }

            v46 = v60;
            if (v60 <= i)
            {
              v71 = 0;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v80 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v72 = 136315906;
              v73 = "operator[]";
              v74 = 1024;
              v75 = 789;
              v76 = 2048;
              v77 = i;
              v78 = 2048;
              v79 = v46;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_62:
              v71 = 0;
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              v80 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v72 = 136315906;
              v73 = "operator[]";
              v74 = 1024;
              v75 = 789;
              v76 = 2048;
              v77 = i;
              v78 = 2048;
              v79 = v46;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v28(a1, "key", 0, v62[v44], v70, v68, 0);
            v46 = v60;
            if (v60 <= i)
            {
              goto LABEL_62;
            }

            v30(a1, "value", 0, v62[v44 + 1], v69, v67, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            v44 += 2;
          }
        }

        if (v59[0] && v62)
        {
          (*(*v59[0] + 40))();
        }
      }

      else
      {
        v55 = (*(v66 + 120))(a4, *(a1 + 56));
        (*(v66 + 128))();
        if (v64)
        {
          for (j = 0; j < v64; ++j)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v80.n128_u8[0] = 7;
              v80.n128_u32[1] = 0;
              v80.n128_u64[1] = "entry";
              v81 = xmmword_1E3054780;
              v82 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v80);
            }

            v57 = (*(v66 + 136))(v55);
            v28(a1, "key", 0, v57, v70, v68, 0);
            v58 = (*(v66 + 144))(v55);
            v30(a1, "value", 0, v58, v69, v67, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            (*(v66 + 128))(v55);
          }
        }

        (*(v66 + 152))(v55, *(a1 + 56));
      }
    }

    goto LABEL_60;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      goto LABEL_20;
    }

    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), a2, v11, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 24), "tag", 0, &Tag, 0);
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(a5, Tag, v21);
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, a4, v21, v21, 0);
        }
      }

      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 24), "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(a6, v21[0], v23);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  v15 = a1[64] ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v25 = *(a1 + 208);
      v43[0] = 0x2686EB529B3EE220;
      v43[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v25, v43, &v45);
      v26 = re::TypeInfo::TypeInfo(v44, v46);
      if (v43[0])
      {
        if (v43[0])
        {
        }
      }

      v27 = v44;
      v28 = v44;
      v29 = a1;
      v30 = a2;
      v31 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v29 = a1;
      v30 = a2;
      v31 = a3;
      v27 = this;
      v28 = this;
    }

    re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(v29, v30, v31, 0, v27, v28, 1);
LABEL_36:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 160);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v45 = &unk_1F5CB5B18;
      v46[0] = a1;
      v46[1] = v19;
      v46[2] = v20;
      v47[0] = 0;
      v47[1] = 0;
      v48 = 1;
      v49 = 0;
      v50 = 0;
      v44[0].n128_u64[0] = a2;
      v44[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(v47, v44);
      v18(&v45, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v45 = &unk_1F5CB5B18;
      if (v47[0])
      {
        if ((v48 & 1) == 0)
        {
          (*(*v47[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    if (this == a6)
    {
      goto LABEL_17;
    }

    if (*this == *a6)
    {
      v33 = **(this + 2);
      v34 = **(a6 + 2);
      if (v33 == v34)
      {
        v36 = WORD1(v33) == WORD1(v34);
        v35 = (v34 ^ v33) & 0xFFFFFF00000000;
        v36 = v36 && v35 == 0;
        if (v36)
        {
          goto LABEL_17;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v24))
    {
LABEL_17:
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v38, v39, v40, v41, v42, v37);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(uint64_t a1, const char *a2, int a3, _BYTE *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    if (*a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    __src = v13;
LABEL_13:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Boolean");
    }

    goto LABEL_15;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  if (*a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  __src = v12;
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((a5 & 2) == 0)
  {
    v14 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v14 - 48) != 2)
    {
      ++*(v14 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    __src = 53;
LABEL_7:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Float");
    }

    goto LABEL_9;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  __src = 53;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Float");
  }

  if ((a5 & 2) == 0)
  {
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) != 2)
    {
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    __src = 54;
LABEL_7:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Double");
    }

    goto LABEL_9;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  __src = 54;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 8uLL) & 1) == 0)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Double");
  }

  if ((a5 & 2) == 0)
  {
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) != 2)
    {
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(uint64_t result, const char *a2, uint64_t a3)
{
  v5 = result;
  if ((a3 + 1) > 0x28)
  {
    if (a3 == a3)
    {
      LOBYTE(__src) = 48;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "8-Bit Signed Integer");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "8-Bit Signed Integer";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else
    {
      LOBYTE(__src) = 51;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "64-Bit Signed Integer");
        }
      }

      __src = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
        if ((result & 1) == 0)
        {
          v6 = "64-Bit Signed Integer";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 + 8;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Signed Integer";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(void *a1, char *__src, size_t __n)
{
  if (__src)
  {
    v5 = __src;
    while (1)
    {
      v6 = *(a1 + 4);
      if (__n <= v6)
      {
        break;
      }

      if (v6 >= 1)
      {
        memcpy(a1[1], v5, v6);
        v7 = *(a1 + 4);
        v5 += v7;
        __n -= v7;
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      if (((*(**a1 + 16))(*a1, a1 + 1, a1 + 2) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(a1[1], v5, __n);
  }

  else
  {
    while (1)
    {
      v10 = *(a1 + 4);
      if (__n <= v10)
      {
        break;
      }

      if (v10 >= 1)
      {
        bzero(a1[1], v10);
        __n -= *(a1 + 4);
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      v9 = (*(**a1 + 16))(*a1, a1 + 1, a1 + 2);
      result = 0;
      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

    bzero(a1[1], __n);
  }

  a1[1] += __n;
  *(a1 + 4) -= __n;
  return 1;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v7);
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to %s %s. Reason: Error %s type %s.", v10, "serialize", v5, "writing", a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __src = 0;
  v2 = *(result + 168);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(result + v3 + 160);
    __src = v4;
    *(v1 + 168) = v3;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL))
    {
      v7 = "Member";
      v8 = v1;
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v8, "unknown", v7);
    }

    v4 = __src;
  }

  result = re::OPACK::toString(v4);
  v5 = result;
  v6 = __src;
  if (__src > 0x31u)
  {
    if (__src > 0xC0u)
    {
      if (__src <= 0xC2u)
      {
        if (__src != 193)
        {
LABEL_34:
          if (*(v1 + 40))
          {
            return result;
          }

          v12 = *(v1 + 168);
          if (!v12)
          {
            v15 = 2;
            goto LABEL_80;
          }

          v10 = 2;
          if (v12 >= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = *(v1 + 168);
          }

          *(v1 + 168) = v12 - v11;
          if (v12 != 1)
          {
            return result;
          }

          goto LABEL_63;
        }

LABEL_50:
        if (*(v1 + 40))
        {
          return result;
        }

        v14 = v1;
        v15 = 1;
        goto LABEL_81;
      }

      if (__src == 195)
      {
        if (*(v1 + 40))
        {
          return result;
        }

        v18 = *(v1 + 168);
        if (v18)
        {
          v19 = 3;
          if (v18 < 3)
          {
            v19 = *(v1 + 168);
          }

          *(v1 + 168) = v18 - v19;
          if (v18 > 2)
          {
            return result;
          }

          v15 = v19 ^ 3;
        }

        else
        {
          v15 = 3;
        }

        goto LABEL_80;
      }

      if (__src != 196)
      {
        goto LABEL_52;
      }
    }

    else if (__src > 0x34u)
    {
      if (__src != 53)
      {
        if (__src != 54)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }
    }

    else if (__src != 50)
    {
      if (__src != 51)
      {
        goto LABEL_52;
      }

      goto LABEL_25;
    }

    if (*(v1 + 40))
    {
      return result;
    }

    v13 = *(v1 + 168);
    if (!v13)
    {
      v15 = 4;
      goto LABEL_80;
    }

    v10 = 4;
    if (v13 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v13 - v11;
    if (v13 > 3)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__src <= 4u)
  {
    if (__src - 1 < 4)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (__src > 0x2Fu)
  {
    if (__src != 48)
    {
      if (__src != 49)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (__src == 5)
  {
    if (*(v1 + 40))
    {
      return result;
    }

    v17 = *(v1 + 168);
    if (!v17)
    {
      v15 = 16;
      goto LABEL_80;
    }

    v10 = 16;
    if (v17 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v17 - v11;
    if (v17 > 0xF)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__src == 6)
  {
LABEL_25:
    if (*(v1 + 40))
    {
      return result;
    }

    v9 = *(v1 + 168);
    if (!v9)
    {
      v15 = 8;
      goto LABEL_80;
    }

    v10 = 8;
    if (v9 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v9 - v11;
    if (v9 > 7)
    {
      return result;
    }

LABEL_63:
    v15 = v10 - v11;
LABEL_80:
    v14 = v1;
LABEL_81:
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v14, 0, v15);
    if (result)
    {
      return result;
    }

    v8 = v1;
    v7 = v5;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v8, "unknown", v7);
  }

LABEL_52:
  if (__src - 7 >= 0x29)
  {
    if (__src - 64 <= 0x24)
    {
      v16 = *(v1 + 168);
      if (v16 <= 7)
      {
        *(v1 + 168) = v16 + 1;
        *(v1 + v16 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__src - 112 <= 0x24)
    {
      v20 = *(v1 + 168);
      if (v20 <= 7)
      {
        *(v1 + 168) = v20 + 1;
        *(v1 + v20 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__src - 160 >= 0x21)
    {
      if (__src - 208 > 0xE)
      {
        if (__src == 223)
        {
          result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Array value/terminator");
          if (result)
          {
            do
            {
              v23 = __src;
              if (__src == 3)
              {
                break;
              }

              v24 = *(v1 + 168);
              if (v24 <= 7)
              {
                *(v1 + 168) = v24 + 1;
                *(v1 + 160 + v24) = v23;
              }

              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__src - 224 > 0xE)
        {
          if (__src == 239)
          {
            for (result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Dictionary key/value/terminator"))
            {
              v28 = __src;
              if (__src == 3)
              {
                break;
              }

              v29 = *(v1 + 168);
              if (v29 <= 7)
              {
                *(v1 + 168) = v29 + 1;
                *(v1 + 160 + v29) = v28;
              }

              v30 = -2;
              do
              {
                re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
                v27 = __CFADD__(v30++, 1);
              }

              while (!v27);
            }
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(v1, 0, &v32);
            if (v33)
            {
              v31 = *&v34[7];
            }

            else
            {
              v31 = v34;
            }

            re::DynamicString::format("Failed to deserialize %s. Found unsupported tag while skipping over data.", &v35, v31);
            __n[0] = 400;
            __n[1] = re::FoundationErrorCategory(void)::instance;
            __n[2] = v35;
            __n[5] = v37;
            *&__n[3] = v36;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __n);
            if (__n[2])
            {
              if (__n[3])
              {
                (*(*__n[2] + 40))();
              }

              memset(&__n[2], 0, 32);
            }

            result = v32;
            if (v32 && (v33 & 1) != 0)
            {
              return (*(*v32 + 40))();
            }
          }
        }

        else
        {
          v25 = *(v1 + 168);
          if (v25 <= 7)
          {
            *(v1 + 168) = v25 + 1;
            *(v1 + v25 + 160) = v6;
          }

          __n[0] = 0;
          result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
              v27 = __CFADD__(v26++, 1);
            }

            while (!v27);
          }
        }
      }

      else
      {
        v21 = *(v1 + 168);
        if (v21 <= 7)
        {
          *(v1 + 168) = v21 + 1;
          *(v1 + v21 + 160) = v6;
        }

        __n[0] = 0;
        result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(uint64_t a1, const char *a2, char *__src, uint64_t a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = v6 - 1;
      *__src = *(a1 + v7 + 160);
      *(a1 + 168) = v7;
      return 1;
    }

    v4 = 1;
    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, 1uLL))
    {
      return v4;
    }

    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

const char *re::OPACK::toString(int a1)
{
  if (a1 <= 97)
  {
    if (a1 > 47)
    {
      if (a1 <= 50)
      {
        if (a1 == 48)
        {
          return "8-Bit Signed Integer";
        }

        if (a1 == 49)
        {
          return "16-Bit Signed Integer";
        }

        return "32-Bit Signed Integer";
      }

      if (a1 > 53)
      {
        if (a1 == 54)
        {
          return "64-Bit Floating Point";
        }

        if (a1 == 97)
        {
          return "String(8-Bit Length)";
        }
      }

      else
      {
        if (a1 == 51)
        {
          return "64-Bit Signed Integer";
        }

        if (a1 == 53)
        {
          return "32-Bit Floating Point";
        }
      }
    }

    else if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return "Invalid";
        case 1:
          return "Boolean(True)";
        case 2:
          return "Boolean(False)";
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 == 3)
        {
          return "Terminator";
        }

        else
        {
          return "Null";
        }
      }

      if (a1 == 5)
      {
        return "UUID";
      }

      if (a1 == 6)
      {
        return "Date";
      }
    }

LABEL_67:
    if (a1 < 0x30)
    {
      return "Small Signed Integer";
    }

    if ((a1 - 64) < 0x21)
    {
      return "Small String";
    }

    if ((a1 - 112) < 0x21)
    {
      return "Small Data";
    }

    if ((a1 - 160) < 0x21)
    {
      return "Small UID";
    }

    if ((a1 - 208) < 0xF)
    {
      return "Small Array";
    }

    if ((a1 - 224) >= 0xF)
    {
      return "Unknown Tag";
    }

    return "Small Dictionary";
  }

  if (a1 <= 147)
  {
    if (a1 <= 110)
    {
      switch(a1)
      {
        case 'b':
          return "String(16-Bit Length)";
        case 'c':
          return "String(32-Bit Length)";
        case 'd':
          return "String(64-Bit Length)";
      }
    }

    else
    {
      if (a1 > 145)
      {
        if (a1 == 146)
        {
          return "Data(16-Bit Length)";
        }

        else
        {
          return "Data(32-Bit Length)";
        }
      }

      if (a1 == 111)
      {
        return "Null-Terminated String";
      }

      if (a1 == 145)
      {
        return "Data(8-Bit Length)";
      }
    }

    goto LABEL_67;
  }

  if (a1 > 194)
  {
    if (a1 > 222)
    {
      if (a1 == 223)
      {
        return "Array";
      }

      if (a1 == 239)
      {
        return "Dictionary";
      }
    }

    else
    {
      if (a1 == 195)
      {
        return "24-Bit UID";
      }

      if (a1 == 196)
      {
        return "32-Bit UID";
      }
    }

    goto LABEL_67;
  }

  if (a1 <= 192)
  {
    if (a1 == 148)
    {
      return "Data(64-Bit Length)";
    }

    if (a1 == 159)
    {
      return "Data(Chunked)";
    }

    goto LABEL_67;
  }

  if (a1 == 193)
  {
    return "8-Bit UID";
  }

  else
  {
    return "16-Bit UID";
  }
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    if (v10 >= __n)
    {
      v11 = __n;
    }

    else
    {
      v11 = *(a1 + 168);
    }

    v12 = v10 - v11;
    if ((v10 - 1) >= (v10 - v11))
    {
      do
      {
        *a3++ = *(a1 + 159 + v10);
        v13 = v10 - 2;
        --v10;
      }

      while (v13 >= v12);
    }

    *(a1 + 168) = v12;
    __n -= v11;
  }

  if (!__n)
  {
    return 1;
  }

  v14 = (a6 & 1) != 0 ? 0 : a3;
  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v14, __n))
  {
    return 1;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __src = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __src = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
      }

      result = __src;
    }

    if ((result - 64) <= 0x20)
    {
      v8 = result - 64;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 98)
    {
      if (result != 97)
      {
        if (result == 98)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "String", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
    }

    if (result != 99)
    {
      if (result != 100)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __src = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __src = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
      }

      result = __src;
    }

    if ((result - 112) <= 0x20)
    {
      v8 = result - 112;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 146)
    {
      if (result != 145)
      {
        if (result == 146)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12++ = *(v5 + 159 + v26);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "BLOB", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
    }

    if (result != 147)
    {
      if (result != 148)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16++ = *(v5 + 159 + v28);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22++ = *(v5 + 159 + v30);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readArrayTag(uint64_t result, const char *a2, char *__src)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __srca = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __srca = *(v5 + v7 + 160);
      v5[21] = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__srca, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __srca;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(v5, a2, __src);
      }

      else
      {
        v8 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Array", v8);
      }
    }

    else
    {
      *__src = result - 208;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__src)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __srca = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __srca = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__srca, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary");
      }

      result = __srca;
    }

    if ((result + 32) <= 0xEu)
    {
      *__src = result - 224;
      return result;
    }

    if (result != 210)
    {
LABEL_16:
      v10 = re::OPACK::toString(result);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Dictionary", v10);
    }

    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(v5, a2, __src);
    if (result && (*(v5 + 40) & 1) == 0)
    {
      v8 = *(v5 + 168);
      if (v8)
      {
        v9 = v8 - 1;
        result = *(v5 + v9 + 160);
        __srca = *(v5 + v9 + 160);
        *(v5 + 168) = v9;
        goto LABEL_15;
      }

      if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__srca, 1uLL))
      {
        result = __srca;
LABEL_15:
        if (result == 239)
        {
          return result;
        }

        goto LABEL_16;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, 0, &v8);
  if (v9)
  {
    v6 = *&v10[7];
  }

  else
  {
    v6 = v10;
  }

  re::DynamicString::format("Failed to deserialize %s. Expected type: %s. Actual type: %s.", &v11, v6, a2, a3);
  *&v14[0] = 400;
  *(&v14[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v14[1] = v11;
  *(&v14[2] + 1) = v13;
  *(&v14[1] + 8) = v12;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v14);
  if (*&v14[1])
  {
    if (BYTE8(v14[1]))
    {
      (*(**&v14[1] + 40))();
    }

    memset(&v14[1], 0, 32);
  }

  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(uint64_t a1, const char *a2, char *__src)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v3;
  v20[6] = v4;
  __srca = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __srca = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__srca, 1uLL) & 1) == 0)
    {
LABEL_24:
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "UInt64");
      return 0;
    }

    v11 = __srca;
  }

  if (v11 == 120)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = 8;
        if (v12 < 8)
        {
          v13 = *(a1 + 168);
        }

        v14 = v12 - v13;
        if ((v12 - 1) >= (v12 - v13))
        {
          v15 = *(a1 + 168);
          do
          {
            *__src++ = *(a1 + 159 + v15);
            v16 = v15 - 2;
            --v15;
          }

          while (v16 >= v14);
        }

        *(a1 + 168) = v14;
        if (v12 > 7)
        {
          return 1;
        }

        v17 = 8 - v13;
      }

      else
      {
        v17 = 8;
      }

      if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, v17))
      {
        return 1;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18 <= 7)
    {
      *(a1 + 168) = v18 + 1;
      *(a1 + v18 + 160) = v11;
    }

    v20[0] = 0;
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__src = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readInteger(uint64_t a1, const char *a2, char *__src, uint64_t a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v44 = v4;
  v45 = v5;
  __srca = 0;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(a1 + v12 + 160);
    __srca = *(a1 + v12 + 160);
    *(a1 + 168) = v12;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__srca, 1uLL) & 1) == 0)
    {
      v25 = a1;
      v26 = a2;
      v27 = a4;
LABEL_66:
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v25, v26, v27);
      return 0;
    }

    v13 = __srca;
  }

  if ((v13 - 7) <= 0x28)
  {
    v14 = v13 - 8;
LABEL_9:
    *__src = v14;
    return 1;
  }

  if (v13 <= 49)
  {
    if (v13 != 48)
    {
      if (v13 == 49)
      {
        result = 0;
        v41 = 0;
        if (*(a1 + 40))
        {
          return result;
        }

        v15 = *(a1 + 168);
        if (v15)
        {
          v16 = 2;
          if (v15 < 2)
          {
            v16 = *(a1 + 168);
          }

          v17 = v15 - v16;
          if ((v15 - 1) >= (v15 - v16))
          {
            v18 = &v41;
            v36 = *(a1 + 168);
            do
            {
              *v18++ = *(a1 + 159 + v36);
              v37 = v36 - 2;
              --v36;
            }

            while (v37 >= v17);
          }

          else
          {
            v18 = &v41;
          }

          *(a1 + 168) = v17;
          if (v15 != 1)
          {
            goto LABEL_55;
          }

          v34 = 2 - v16;
        }

        else
        {
          v18 = &v41;
          v34 = 2;
        }

        if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v18, v34))
        {
LABEL_55:
          v14 = v41;
          goto LABEL_9;
        }

        v27 = "16-Bit Signed Integer";
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    result = 0;
    v42 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v29 = v14 - 1;
      LOBYTE(v14) = *(a1 + v14 - 1 + 160);
      *(a1 + 168) = v29;
LABEL_48:
      v14 = v14;
      goto LABEL_9;
    }

    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v42, 1uLL))
    {
      LOBYTE(v14) = v42;
      goto LABEL_48;
    }

    v27 = "8-Bit Signed Integer";
LABEL_65:
    v25 = a1;
    v26 = a2;
    goto LABEL_66;
  }

  if (v13 == 50)
  {
    result = 0;
    v40 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v30 = *(a1 + 168);
    if (v30)
    {
      v31 = 4;
      if (v30 < 4)
      {
        v31 = *(a1 + 168);
      }

      v32 = v30 - v31;
      if ((v30 - 1) >= (v30 - v31))
      {
        v33 = &v40;
        v38 = *(a1 + 168);
        do
        {
          *v33++ = *(a1 + 159 + v38);
          v39 = v38 - 2;
          --v38;
        }

        while (v39 >= v32);
      }

      else
      {
        v33 = &v40;
      }

      *(a1 + 168) = v32;
      if (v30 > 3)
      {
        goto LABEL_62;
      }

      v35 = 4 - v31;
    }

    else
    {
      v33 = &v40;
      v35 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v33, v35) & 1) == 0)
    {
      v27 = "32-Bit Signed Integer";
      goto LABEL_65;
    }

LABEL_62:
    v14 = v40;
    goto LABEL_9;
  }

  if (v13 != 51)
  {
LABEL_32:
    v28 = re::OPACK::toString(v13);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, a4, v28);
    return 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v19 = *(a1 + 168);
    if (v19)
    {
      v20 = 8;
      if (v19 < 8)
      {
        v20 = *(a1 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = *(a1 + 168);
        do
        {
          *__src++ = *(a1 + 159 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v21);
      }

      *(a1 + 168) = v21;
      if (v19 > 7)
      {
        return 1;
      }

      v24 = 8 - v20;
    }

    else
    {
      v24 = 8;
    }

    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, v24))
    {
      return 1;
    }

    v27 = "64-Bit Signed Integer";
    goto LABEL_65;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, int a3, uint64_t *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, int a3, unsigned __int8 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, int a3, unsigned __int16 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, int a3, unsigned int *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, int a3, uint64_t *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(a1, a2, 8uLL);
    __src = a3;
    if ((*(a1 + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 8uLL);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "UInt64");
      }
    }
  }

  else
  {

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0x20)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(__src) = -111;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(8-Bit Length)");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "Data(8-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(__src) = -108;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(64-Bit Length)");
          }
        }

        __src = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
          if ((result & 1) == 0)
          {
            v6 = "Data(64-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }

      else
      {
        LOBYTE(__src) = -109;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(32-Bit Length)");
          }
        }

        LODWORD(__src) = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 4uLL);
          if ((result & 1) == 0)
          {
            v6 = "Data(32-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }
    }

    else
    {
      LOBYTE(__src) = -110;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(16-Bit Length)");
        }
      }

      LOWORD(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 2uLL);
        if ((result & 1) == 0)
        {
          v6 = "Data(16-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 + 112;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Data";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::internal *a5, re::TypeInfo *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(v11, v24, v25);
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, v25, v25, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  if (v15 == *a6)
  {
    v19 = **(a5 + 2);
    v20 = **(a6 + 2);
    if (v19 == v20)
    {
      v22 = WORD1(v19) == WORD1(v20);
      v21 = (v20 ^ v19) & 0xFFFFFF00000000;
      v22 = v22 && v21 == 0;
      if (v22)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    result = re::internal::findEnumConstantToSerialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a4, a5, a6, 1);
    if (!result)
    {
      return result;
    }

    a4 = result;
    v23 = *(a1 + 26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(v23, v24, v25);
    if (a1[64])
    {
      return 0;
    }

    v16 = *(*a1 + 72);
    v17 = v25;
    v18 = v25;
    return v16(a1, a2, a3, a4, v17, v18, 0);
  }

  if (!re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_15;
  }

  v15 = *a5;
LABEL_8:
  re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), v25);
  re::TypeInfo::TypeInfo(v24, v26);
  if (a1[64])
  {
    return 0;
  }

  v16 = *(*a1 + 72);
  v17 = v24;
  v18 = v24;
  return v16(a1, a2, a3, a4, v17, v18, 0);
}

uint64_t re::internal::findEnumConstantToSerialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, re::TypeInfo *a3, re::internal *this, re::TypeInfo *a5, int a6)
{
  if (*(*(this + 2) + 8) >= 9u)
  {
    v38 = re::TypeInfo::name(this)[1];
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes", v9, v10, v11, v12, v13, v38);
    return 0;
  }

  EnumConstantIndex = re::internal::getEnumConstantIndex(this, a3, a3);
  if ((EnumConstantIndex & 0x80000000) != 0)
  {
    __dst = 0;
    memcpy(&__dst, a3, *(*(this + 2) + 8));
    v30 = __dst;
    re::TypeInfo::name(this);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.", v31, v32, v33, v34, v35, v30);
    return 0;
  }

  v18 = EnumConstantIndex;
  if (!a6)
  {
    v36 = re::TypeInfo::enumConstants(this);
    if (v37 > v18)
    {
      return v36 + 24 * v18;
    }

    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v37);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  v19 = *(*a5 + 856);
  if (!v19 || (result = re::internal::TypeTranslationTable::translateRuntimeEnum(v19, this, v18, a5)) == 0)
  {
    v21 = re::TypeInfo::enumConstants(this);
    v23 = v18;
    if (v22 > v18)
    {
      v24 = *(v21 + 24 * v18 + 16);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Runtime enum constant %s does not exist in serialized type %s.", v25, v26, v27, v28, v29, v24);
      return 0;
    }

LABEL_15:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v23, v22);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::Slice<re::EnumConstant>::operator[](void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    return *a1 + 24 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(uint64_t a1, const char *a2, int a3, unsigned __int8 *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v9 - 48) == 2 && (*(v9 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    v10 = *a4;
    if ((v10 & 1) == 0)
    {
      LOBYTE(v11) = 4;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Optional");
      }

      v10 = *a4;
    }

    LOBYTE(v11) = 3;
    DWORD1(v11) = a5;
    *(&v11 + 1) = a2;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v10;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
  }
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 3);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      if (*(*(v1 + 16) + 48 * *(v1 + 14) - 24) <= 0)
      {
        v6 = "Optional should not have a value.";
      }

      else
      {
        v6 = "Optional requires a value.";
      }

      re::DynamicString::format("Failed to serialize optional type %s. %s", v10, v5, v6);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

double re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(void *a1, _OWORD *a2)
{
  if (a1[14] >= a1[19])
  {
    re::DynamicString::format("State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", v6, a1[19]);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v6);
    if (*&v6[0])
    {
      if (BYTE8(v6[0]))
      {
        (*(**&v6[0] + 40))();
      }
    }
  }

  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  *&result = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((a1 + 12), v6).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 48 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(a1, a2, *a4);
    v13 = *a4;
    LOBYTE(v15) = 4;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(*(result + 128) + 48 * *(result + 112) - 24);
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, v5);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "BLOB");
    }

    if ((a3 & 2) == 0)
    {
      v6 = *(v4 + 16) + 48 * *(v4 + 14);
      if (*(v6 - 48) != 2)
      {
        *(v6 - 16) += v5;
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 4);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeArrayTag(a1, a2, *a4);
    v13 = *a4;
    LOBYTE(v15) = 5;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    v4 = *(v2 + 48 * v3 - 16);
    if (v4 == *(v2 + 48 * v3 - 24))
    {
      if (v4 >= 0xF)
      {
        LOBYTE(__src[0]) = 3;
        if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, __src, 1uLL) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Array");
        }

        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
      }

      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 5);
      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v6 - 48) != 2)
      {
        ++*(v6 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v9);
      if (v10)
      {
        v7 = *&v11[7];
      }

      else
      {
        v7 = v11;
      }

      v8 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", __src, v7, *(v8 - 24), *(v8 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __src);
      if (*&__src[0])
      {
        if (BYTE8(__src[0]))
        {
          (*(**&__src[0] + 40))();
        }

        memset(__src, 0, sizeof(__src));
      }

      result = v9;
      if (v9 && (v10 & 1) != 0)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ArrayAccessor::elementAt(re::ArrayAccessor *this, char *a2, unint64_t a3)
{
  if (re::ArrayAccessor::size(this, a2) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    re::ArrayAccessor::size(this, a2);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return re::ArrayAccessor::elementAtUnchecked(this, a2, a3);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeArrayTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0xE)
  {
    v7 = -33;
    if ((*(result + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &v7, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Array");
    }

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(v5, a2, a3);
  }

  else
  {
    __src = a3 | 0xD0;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Small Array");
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDictionaryTag(a1, a2, *a4);
    v13 = *a4;
    LOBYTE(v15) = 6;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 7);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      if (*(v2 - 48) != 2)
      {
        ++*(v2 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v4);
      if (v5)
      {
        v3 = *&v6[7];
      }

      else
      {
        v3 = v6;
      }

      re::DynamicString::format("Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v7, v3, *(*(v1 + 128) + 48 * *(v1 + 112) - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v7);
      if (*&v7[0])
      {
        if (BYTE8(v7[0]))
        {
          (*(**&v7[0] + 40))();
        }

        memset(v7, 0, sizeof(v7));
      }

      result = v4;
      if (v4 && (v5 & 1) != 0)
      {
        return (*(*v4 + 40))();
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    v4 = *(v2 + 48 * v3 - 16);
    if (v4 == *(v2 + 48 * v3 - 24))
    {
      if (v4 >= 0xF)
      {
        LOBYTE(__src[0]) = 3;
        if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, __src, 1uLL) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Dictionary");
        }

        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
      }

      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 6);
      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v6 - 48) != 2)
      {
        ++*(v6 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v9);
      if (v10)
      {
        v7 = *&v11[7];
      }

      else
      {
        v7 = v11;
      }

      v8 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", __src, v7, *(v8 - 24), *(v8 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __src);
      if (*&__src[0])
      {
        if (BYTE8(__src[0]))
        {
          (*(**&__src[0] + 40))();
        }

        memset(__src, 0, sizeof(__src));
      }

      result = v9;
      if (v9 && (v10 & 1) != 0)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDictionaryTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0xE)
  {
    v8 = -46;
    if ((*(result + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &v8, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary container");
    }

    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(v5, a2, a3);
    v9 = -17;
    if ((*(v5 + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v9, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Dictionary";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  else
  {
    __src = a3 | 0xE0;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Dictionary";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 2;
  v58 = a2 - 6;
  v59 = a2 - 4;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v55 = *(a2 - 2);
      v54 = a2 - 2;
      if ((*a3)(v55, *v11))
      {
LABEL_80:
        v80 = *v11;
        *v11 = *v54;
        v47 = v80;
        goto LABEL_81;
      }

      return;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,re::Pair<void const*,void *,true>*>(v11, a2, a2, a3, a6);
      }

      return;
    }

    v15 = &v11[2 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(*v15, *v11);
      v18 = (*a3)(*v10, *v15);
      if (v17)
      {
        if (v18)
        {
          v60 = *v11;
          *v11 = *v10;
          goto LABEL_28;
        }

        v66 = *v11;
        *v11 = *v15;
        *v15 = v66;
        if ((*a3)(*v10, *v15))
        {
          v60 = *v15;
          *v15 = *v10;
LABEL_28:
          *v10 = v60;
        }
      }

      else if (v18)
      {
        v62 = *v15;
        *v15 = *v10;
        *v10 = v62;
        if ((*a3)(*v15, *v11))
        {
          v63 = *v11;
          *v11 = *v15;
          *v15 = v63;
        }
      }

      v21 = v11 + 2;
      v22 = v15 - 2;
      v23 = (*a3)(*(v15 - 2), a1[2]);
      v24 = (*a3)(*v59, *(v15 - 2));
      v25 = a5;
      if (v23)
      {
        if (v24)
        {
          v26 = *v21;
          v27 = a2 - 4;
          *v21 = *v59;
          goto LABEL_42;
        }

        v29 = *v21;
        *v21 = *v22;
        *v22 = v29;
        if ((*a3)(*v59, *v22))
        {
          v69 = *v22;
          v27 = a2 - 4;
          *v22 = *v59;
          v26 = v69;
LABEL_42:
          *v27 = v26;
        }
      }

      else if (v24)
      {
        v67 = *v22;
        *v22 = *v59;
        *v59 = v67;
        if ((*a3)(*v22, *v21))
        {
          v28 = *v21;
          *v21 = *v22;
          *v22 = v28;
        }
      }

      v30 = a1 + 4;
      v31 = v15 + 2;
      v32 = (*a3)(v15[2], a1[4]);
      v33 = (*a3)(*v58, v15[2]);
      if (v32)
      {
        if (v33)
        {
          v34 = *v30;
          v35 = a2 - 6;
          *v30 = *v58;
          goto LABEL_51;
        }

        v37 = *v30;
        *v30 = *v31;
        *v31 = v37;
        if ((*a3)(*v58, *v31))
        {
          v71 = *v31;
          v35 = a2 - 6;
          *v31 = *v58;
          v34 = v71;
LABEL_51:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v70 = *v31;
        *v31 = *v58;
        *v58 = v70;
        if ((*a3)(*v31, *v30))
        {
          v36 = *v30;
          *v30 = *v31;
          *v31 = v36;
        }
      }

      v38 = (*a3)(*v15, *v22);
      v39 = (*a3)(*v31, *v15);
      a5 = v25;
      if (v38)
      {
        if (v39)
        {
          v72 = *v22;
          *v22 = *v31;
          *v31 = v72;
          v10 = a2 - 2;
        }

        else
        {
          v75 = *v22;
          *v22 = *v15;
          *v15 = v75;
          v10 = a2 - 2;
          if ((*a3)(*v31, *v15))
          {
            v76 = *v15;
            *v15 = *v31;
            *v31 = v76;
          }
        }
      }

      else
      {
        v10 = a2 - 2;
        if (v39)
        {
          v73 = *v15;
          *v15 = *v31;
          *v31 = v73;
          if ((*a3)(*v15, *v22))
          {
            v74 = *v22;
            *v22 = *v15;
            *v15 = v74;
          }
        }
      }

      v77 = *a1;
      *a1 = *v15;
      *v15 = v77;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v19 = v16(*v11, *v15);
    v20 = (*a3)(*v10, *v11);
    if (v19)
    {
      if (v20)
      {
        v61 = *v15;
        *v15 = *v10;
        goto LABEL_37;
      }

      v68 = *v15;
      *v15 = *v11;
      *v11 = v68;
      if ((*a3)(*v10, *v11))
      {
        v61 = *v11;
        *v11 = *v10;
LABEL_37:
        *v10 = v61;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (!v20)
    {
      goto LABEL_38;
    }

    v64 = *v11;
    *v11 = *v10;
    *v10 = v64;
    if (!(*a3)(*v11, *v15))
    {
      goto LABEL_38;
    }

    v65 = *v15;
    *v15 = *v11;
    *v11 = v65;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (((*a3)(*(a1 - 2), *a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(a1, a2, a3);
      goto LABEL_67;
    }

LABEL_62:
    v40 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(a1, a2, a3);
    if ((v41 & 1) == 0)
    {
      goto LABEL_65;
    }

    v42 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, v40, a3);
    v11 = (v40 + 1);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v40 + 2, a2, a3))
    {
      a4 = -v13;
      a2 = v40;
      if (v42)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v42)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(a1, v40, a3, -v13, a5 & 1);
      v11 = (v40 + 1);
LABEL_67:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(v11, v11 + 2, v11 + 4, v10, a3);
      return;
    }

    if (v14 == 5)
    {
      v48 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(v11, v11 + 2, v11 + 4, v11 + 6, a3);
      v50 = *(a2 - 2);
      v49 = a2 - 2;
      if ((*a3)(v50, v11[6], v48))
      {
        v51 = *(v11 + 3);
        *(v11 + 3) = *v49;
        *v49 = v51;
        if ((*a3)(v11[6], v11[4]))
        {
          v52 = *(v11 + 2);
          *(v11 + 2) = *(v11 + 3);
          *(v11 + 3) = v52;
          if ((*a3)(v11[4], v11[2]))
          {
            v53 = *(v11 + 1);
            *(v11 + 1) = *(v11 + 2);
            *(v11 + 2) = v53;
            if ((*a3)(v11[2], *v11))
            {
              v79 = *v11;
              *v11 = *(v11 + 1);
              *(v11 + 1) = v79;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v43 = v11 + 2;
  v44 = (*a3)(v11[2], *v11);
  v45 = *(a2 - 2);
  v54 = a2 - 2;
  v46 = (*a3)(v45, v11[2]);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_80;
    }

    v78 = *v11;
    *v11 = *v43;
    *v43 = v78;
    if ((*a3)(*v54, v11[2]))
    {
      v47 = *v43;
      *v43 = *v54;
LABEL_81:
      *v54 = v47;
    }
  }

  else if (v46)
  {
    v57 = *v43;
    *v43 = *v54;
    *v54 = v57;
    if ((*a3)(v11[2], *v11))
    {
      v81 = *v11;
      *v11 = *v43;
      *v43 = v81;
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, *a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, *a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, *a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, *a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8[2];
        v10 = *v8;
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v14 = *v8;
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 16));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v14;
        }

        v5 = v8 + 2;
        v7 += 16;
      }

      while (v8 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 16); v4 + 2 != a2; i = v4 + 2)
    {
      v7 = v4[2];
      v8 = *v4;
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v12 = *v4;
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10 - 1;
          *v10 = *(v10 - 1);
          result = (*a3)(v9, *(v10 - 4));
          v10 = v11;
        }

        while ((result & 1) != 0);
        *v11 = v12;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v14 = *a1;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 2)))
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 2;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v9 += 2;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *(v4 - 2);
      v4 -= 2;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v15 = *v7;
    *v7 = *v4;
    *v4 = v15;
    do
    {
      v11 = v7[2];
      v7 += 2;
    }

    while (!(*a3)(v6, v11));
    do
    {
      v12 = *(v4 - 2);
      v4 -= 2;
    }

    while (((*a3)(v6, v12) & 1) != 0);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v14;
  return v7;
}

__int128 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(__int128 *a1, __int128 *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v19 = *a1;
  v7 = *a1;
  do
  {
    v8 = (*a3)(*&a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *(a2-- - 2);
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2-- - 2);
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = *(v13++ + 2);
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *(v14-- - 2);
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v19;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(void *a1, char *a2, uint64_t (**a3)(uint64_t, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = a1 + 2;
        v16 = (*a3)(a1[2], *a1);
        v17 = *(a2 - 2);
        v7 = a2 - 16;
        v18 = (*a3)(v17, *v15);
        if ((v16 & 1) == 0)
        {
          if (v18)
          {
            v25 = *v15;
            *v15 = *v7;
            *v7 = v25;
            if ((*a3)(a1[2], *a1))
            {
              v26 = *a1;
              *a1 = *v15;
              *v15 = v26;
            }
          }

          return 1;
        }

        if (!v18)
        {
          v29 = *a1;
          *a1 = *v15;
          *v15 = v29;
          if (!(*a3)(*v7, a1[2]))
          {
            return 1;
          }

          v19 = *v15;
          *v15 = *v7;
          goto LABEL_17;
        }

LABEL_16:
        v19 = *a1;
        *a1 = *v7;
LABEL_17:
        *v7 = v19;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        v8 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        v10 = *(a2 - 2);
        v9 = a2 - 16;
        if ((*a3)(v10, a1[6], v8))
        {
          v11 = *(a1 + 3);
          *(a1 + 3) = *v9;
          *v9 = v11;
          if ((*a3)(a1[6], a1[4]))
          {
            v12 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v12;
            if ((*a3)(a1[4], a1[2]))
            {
              v13 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v13;
              if ((*a3)(a1[2], *a1))
              {
                v14 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v14;
              }
            }
          }
        }

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
      v7 = a2 - 16;
      if (!(*a3)(*(a2 - 2), *a1))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v20 = a1 + 2;
  v21 = (*a3)(a1[2], *a1);
  v22 = (a1 + 4);
  v23 = (*a3)(a1[4], *v20);
  if (v21)
  {
    if (v23)
    {
      v24 = *a1;
      *a1 = *v22;
    }

    else
    {
      v30 = *a1;
      *a1 = *v20;
      *v20 = v30;
      if (!(*a3)(a1[4], a1[2]))
      {
        goto LABEL_33;
      }

      v24 = *v20;
      *v20 = *v22;
    }

    *v22 = v24;
  }

  else if (v23)
  {
    v27 = *v20;
    *v20 = *v22;
    *v22 = v27;
    if ((*a3)(a1[2], *a1))
    {
      v28 = *a1;
      *a1 = *v20;
      *v20 = v28;
    }
  }

LABEL_33:
  v31 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    if ((*a3)(*v31, *v22))
    {
      v39 = *v31;
      v34 = *v31;
      v35 = v32;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = (*a3)(v34, *(a1 + v35 + 16));
        v35 -= 16;
        if ((v36 & 1) == 0)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v39;
      if (++v33 == 8)
      {
        return v31 + 16 == a2;
      }
    }

    v22 = v31;
    v32 += 16;
    v31 += 16;
    if (v31 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,re::Pair<void const*,void *,true>*>(char *a1, char *a2, char *a3, uint64_t (**a4)(unint64_t, unint64_t), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 4;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[16 * v10];
      do
      {
        a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, a4, v9, v12);
        v12 -= 16;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(*v13, *a1, a5))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, a4, v9, a1);
        }

        v13 += 16;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v25 = v7;
        v15 = 0;
        v26 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[16 * v15];
          v18 = v17 + 16;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 >= v9)
          {
            v15 = (2 * v15) | 1;
          }

          else
          {
            v22 = *(v17 + 4);
            v21 = v17 + 32;
            if ((*a4)(*(v21 - 2), v22))
            {
              v18 = v21;
              v15 = v20;
            }

            else
            {
              v15 = v19;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v15 <= ((v9 - 2) >> 1));
        v7 = v25 - 16;
        if (v18 == v25 - 16)
        {
          *v18 = v26;
        }

        else
        {
          *v18 = *v7;
          *v7 = v26;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, (v18 + 16), a4, (v18 + 16 - a1) >> 4);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t a1, unsigned int (**a2)(void, uint64_t), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[2]))
      {
        v12 += 2;
        v11 = v13;
      }

      if (((*a2)(*v12, *v5) & 1) == 0)
      {
        v19 = *v5;
        v15 = *v5;
        do
        {
          v16 = v5;
          v5 = v12;
          *v16 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v18 = 2 * v11 + 2;
          if (v18 < a3)
          {
            if ((*a2)(*v12, v12[2]))
            {
              v12 += 2;
              v17 = v18;
            }
          }

          v11 = v17;
        }

        while (!(*a2)(*v12, v15));
        result = v19;
        *v5 = v19;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(unint64_t, unint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8->n128_u64[0], *(a2 - 16)))
    {
      v13 = *v9;
      v11 = v9->n128_u64[0];
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
      }

      while (((*a3)(v8->n128_u64[0], v11) & 1) != 0);
      result = v13;
      *v9 = v13;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(uint64_t a1, const char *a2, int a3, int a4)
{
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    v8 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v8 - 48) == 2 && (*(v8 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    if ((a4 & 0x10) != 0)
    {
      LOBYTE(v11) = -33;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Object");
      }

      v9 = 1;
    }

    else
    {
      LOBYTE(v11) = -17;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Object");
      }

      v9 = 2;
    }

    LOBYTE(v11) = v9;
    DWORD1(v11) = a4;
    *(&v11 + 1) = a2;
    v12 = 0;
    v13 = 0;
    v14 = 0xFFFFFFFF80000000;
    v15 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v11);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    __src = 3;
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Object");
    }

    v2 = *(v1 + 16);
    v3 = *(v1 + 14);
    v4 = *(v2 + 48 * v3 - 32);
    if (v4)
    {
      do
      {
        --v4;
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      while (v4);
      v2 = *(v1 + 16);
      v3 = *(v1 + 14);
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, *(v2 + 48 * v3 - 48));
    v5 = *(v1 + 16) + 48 * *(v1 + 14);
    if (*(v5 - 48) != 2)
    {
      ++*(v5 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_14:
  if (a7)
  {
    v29 = 0;
    v21 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v29, 0);
    v20 = 0;
    if (v21)
    {
      if (v29)
      {
        v22 = a1 + 24;
        v23 = 0;
        v24 = 1;
LABEL_27:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v29 = v26;
    v27 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v29, 0);
    v20 = 0;
    if (v27)
    {
      if (v29)
      {
        if (*(a4 + 8))
        {
          v23 = *(a4 + 16);
        }

        else
        {
          v23 = (a4 + 9);
        }

        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_27;
      }

LABEL_28:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v20 = *(a1 + 64) ^ 1;
    }
  }

  return v20 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5B18;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(v29, *a5, a5[2]);
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = *a5[2];
    v19 = a6[2];
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = a6[2];
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeStringTag(a1, a2, *a4);
    v13 = *a4;
    LOBYTE(v15) = 8;
    DWORD1(v15) = a5;
    *(&v15 + 1) = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(*(result + 128) + 48 * *(result + 112) - 24);
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, v5);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "String");
    }

    if ((a3 & 2) == 0)
    {
      v6 = *(v4 + 16) + 48 * *(v4 + 14);
      if (*(v6 - 48) != 2)
      {
        *(v6 - 16) += v5;
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 8);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v5 = *&v9[7];
      }

      else
      {
        v5 = v9;
      }

      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format("Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v10, v5, *(v6 - 24), *(v6 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeStringTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0x20)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(__src) = 97;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(8-Bit Length)");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "String(8-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(__src) = 100;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(64-Bit Length)");
          }
        }

        __src = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
          if ((result & 1) == 0)
          {
            v6 = "String(64-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }

      else
      {
        LOBYTE(__src) = 99;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(32-Bit Length)");
          }
        }

        LODWORD(__src) = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 4uLL);
          if ((result & 1) == 0)
          {
            v6 = "String(32-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }
    }

    else
    {
      LOBYTE(__src) = 98;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(16-Bit Length)");
        }
      }

      LOWORD(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 2uLL);
        if ((result & 1) == 0)
        {
          v6 = "String(16-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 | 0x40;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small String";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

__n128 re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  result = *a2;
  *(v4 + 16 * (*(a1 + 8))++) = *a2;
  *(a1 + 16) += 2;
  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5B18;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result[1] + 64) & 1) == 0)
  {
    v10 = result;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::DynamicString::setCapacity(&v16, 0);
    v15 = &a9;
    re::DynamicString::vappendf(&v16, a2, &a9);
    v11 = v10[1];
    *&v12 = 400;
    *(&v12 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v13, &v16);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v11 + 24, &v12);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))(v16, v18);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 16 * v4 - 8) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 16 * v4 - 16) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  v4.n128_u64[0] = "";
  v4.n128_u32[2] = 0;
  *&result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v4).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((*(a1 + 8) + 24));
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginArray(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionary(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, (v4 + 16 * *(a1 + 40) - 16));
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  v6 = v5 + 16 * *(a1 + 40);
  v7 = *(a1 + 8);
  v9 = a2;
  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(v7 + 24, *(v6 - 16), *(v6 - 8), &v9, 0);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(v1 + 16 * *(a1 + 40) - 16, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 16 * *(result + 40);
  *(v2 - 8) = 1;
  *(v2 - 16) = "value";
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::endDictionary(uint64_t a1)
{
  result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary((*(a1 + 8) + 24));
  v3 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v3 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginOptional(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
  return v4;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, __int16 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, int a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializeString(uint64_t a1, char *a2, unint64_t a3)
{
  v8 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v8, 0))
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializeData(uint64_t a1, char *a2, unint64_t a3)
{
  v7 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v7, 0))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::write(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
  }

  else
  {
    re::getPrettyTypeName(this, &v13);
    re::TypeRegistry::typeInfo(*(a1 + 16), &v13, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(v6, v7, v15);
    if (v15[0])
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 16 * *(a1 + 40) - 16), *(v9 + 16 * *(a1 + 40) - 8), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 16 * *(a1 + 40) - 16), *(v10 + 16 * *(a1 + 40) - 8));
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 4)
    {
      return result;
    }

    v5 = 8;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(result, a2);
}

void *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 16 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(*result, 16 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 16 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    LOBYTE(v3[0]) = 7;
    DWORD1(v3[0]) = 0;
    *(&v3[0] + 1) = "entry";
    v3[1] = xmmword_1E3054780;
    v4 = 0;
    v5 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a2, v3);
  }

  *(a1 + 8) = 0;
  *a1 = "key";
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(uint64_t a1, const char *a2, int a3, int *a4, int a5)
{
  if (*(a1 + 40))
  {
    v5 = 0;
    return v5 & 1;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  }

  v11 = *a4;
  if ((*a4 - 1) < 2)
  {
LABEL_12:
    LOBYTE(__src) = 9;
    DWORD1(__src) = a5;
    *(&__src + 1) = a2;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v15 = v11 != 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &__src);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v5 = *(a1 + 40) ^ 1;
    return v5 & 1;
  }

  if (!v11)
  {
    LOBYTE(__src) = 4;
    if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Optional");
    }

    v11 = *a4;
    goto LABEL_12;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 927);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 9);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v5 = *&v8[7];
      }

      else
      {
        v5 = v8;
      }

      re::DynamicString::format("Failed to deserialize pointer %s. No value was provided.", v9, v5);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6 && (v7 & 1) != 0)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

_BYTE *re::Optional<re::TypeInfo>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::TypeInfo::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::TypeInfo::TypeInfo((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, v16, a4);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      }
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v50);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v46);
  if (v46[0] == 1)
  {
    if ((v50[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v47)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, "@super", 0, 0))
    {
      if (v51 == v47)
      {
        v18 = *v53;
        v19 = *v49;
        if (*v53 == *v49)
        {
          v21 = WORD1(v18) == WORD1(v19);
          v20 = (v19 ^ v18) & 0xFFFFFF00000000;
          v21 = v21 && v20 == 0;
          if (v21)
          {
            goto LABEL_6;
          }
        }
      }

      else if (re::areSameTranslatedVersion(&v51, &v47, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v51, a5);
LABEL_16:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
        goto LABEL_17;
      }

      if (v52 == v48)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v51, &v47, a5);
      }

      else
      {
        v22 = re::TypeInfo::name(&v51)[1];
        re::TypeInfo::name(&v47);
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v45, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v43, *a4, a4[2]);
  if (v44)
  {
    for (i = 0; i < v44; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v43, i, v41);
      if (*(v42 + 28) == 1)
      {
        v29 = *(v42 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v42 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v41), v31 == -1))
        {
          v33 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = v33;
            v35 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v55 = v35;
            v56 = 2080;
            v57 = v29;
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v36 = *(a1 + 208);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          re::TypeInfo::TypeInfo(v39, &v55 + 4);
          result = re::internal::translateType(v36, v39, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v45, v31, v39);
          v32 = *(v40 + 24);
          re::TypeRegistry::typeInfo(v39[0], *v40, buf);
          re::TypeInfo::TypeInfo(v38, &v55 + 4);
          re::TypeRegistry::typeInfo(v41[0], *v42, buf);
          result = re::TypeInfo::TypeInfo(v37, &v55 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v38, v37, a5);
          }
        }
      }
    }
  }

  return result;
}

double re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
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

void re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}