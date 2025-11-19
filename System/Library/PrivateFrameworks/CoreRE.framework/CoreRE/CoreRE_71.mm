void *re::allocInfo_CollisionCastConfiguration(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19D438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D438))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D4B8, "CollisionCastConfiguration");
    __cxa_guard_release(&qword_1EE19D438);
  }

  return &unk_1EE19D4B8;
}

void re::initInfo_CollisionCastConfiguration(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x577B5ED3A5088E0ALL;
  v13[1] = "CollisionCastConfiguration";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE19D440, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D440);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_CollisionQueryType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "queryType";
      *(v8 + 16) = &qword_1EE19D470;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19D448 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_CollisionFilter(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "filter";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x400000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19D450 = v11;
      __cxa_guard_release(&qword_1EE19D440);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19D448;
  *(this + 9) = re::internal::defaultConstruct<re::CollisionCastConfiguration>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CollisionCastConfiguration>;
  *(this + 13) = re::internal::defaultConstructV2<re::CollisionCastConfiguration>;
  *(this + 14) = re::internal::defaultDestructV2<re::CollisionCastConfiguration>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::internal::defaultConstruct<re::CollisionCastConfiguration>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = 0xFFFFFFFF00000001;
  *(a3 + 20) = 0;
  *(a3 + 12) = 0;
  *(a3 + 28) = 0;
}

uint64_t re::internal::defaultConstructV2<re::CollisionCastConfiguration>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0xFFFFFFFF00000001;
  *(result + 20) = 0;
  *(result + 12) = 0;
  *(result + 28) = 0;
  return result;
}

re *re::PhysXCPUDispatcher::reset(re *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = this;
    do
    {
      this = re::internal::destroyPersistent<re::Job>("reset", 26, *(*(v2 + 7) + 8 * v1 - 8));
      v3 = *(v2 + 5);
      ++*(v2 + 12);
      v1 = v3 - 1;
      *(v2 + 5) = v1;
    }

    while (v1);
  }

  return this;
}

re *re::internal::destroyPersistent<re::Job>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];

    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::PhysXCPUDispatcher::submitTask(os_unfair_lock_s *this, physx::PxBaseTask *a2)
{
  if (*&this[2]._os_unfair_lock_opaque && LOBYTE(this[4]._os_unfair_lock_opaque) == 1)
  {
    atomic_fetch_add_explicit(&this[16], 1u, memory_order_relaxed);
    v4 = re::globalAllocators(this);
    v5 = (*(*v4[2] + 32))(v4[2], 64, 8);
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = "Unnamed";
    v5[4] = this;
    *v5 = re::Job::init<re::PhysXCPUDispatcher::submitTask(physx::PxBaseTask &)::$_0>(re::PhysXCPUDispatcher::submitTask(physx::PxBaseTask &)::$_0 &&)::{lambda(re::Job&)#1}::__invoke;
    v5[5] = a2;
    os_unfair_lock_lock(this + 5);
    v7 = *&this[8]._os_unfair_lock_opaque;
    v8 = *&this[10]._os_unfair_lock_opaque;
    if (v8 >= v7)
    {
      v9 = v8 + 1;
      if (v7 < v8 + 1)
      {
        if (*&this[6]._os_unfair_lock_opaque)
        {
          v10 = 2 * v7;
          v11 = v7 == 0;
          v12 = 8;
          if (!v11)
          {
            v12 = v10;
          }

          if (v12 <= v9)
          {
            v13 = v9;
          }

          else
          {
            v13 = v12;
          }

          re::DynamicArray<float *>::setCapacity(&this[6]._os_unfair_lock_opaque, v13);
        }

        else
        {
          re::DynamicArray<float *>::setCapacity(&this[6]._os_unfair_lock_opaque, v9);
          ++this[12]._os_unfair_lock_opaque;
        }
      }

      v8 = *&this[10]._os_unfair_lock_opaque;
    }

    *(*&this[14]._os_unfair_lock_opaque + 8 * v8) = v5;
    *&this[10]._os_unfair_lock_opaque = v8 + 1;
    ++this[12]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 5);
    v15 = *(**&this[2]._os_unfair_lock_opaque + 48);

    return v15();
  }

  else
  {
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
    {
      kdebug_trace();
    }

    (*(*a2 + 16))(a2);
    (*(*a2 + 56))(a2);
    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyTracing(0, 0);
      if (result)
      {

        return kdebug_trace();
      }
    }
  }

  return result;
}

uint64_t re::PhysXCPUDispatcher::getWorkerCount(re::PhysXCPUDispatcher *this)
{
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return 0;
  }
}

void re::PhysXCPUDispatcher::~PhysXCPUDispatcher(re::PhysXCPUDispatcher *this)
{
  *this = &unk_1F5CCDE10;
  re::DynamicArray<unsigned long>::deinit(this + 24);
}

{
  *this = &unk_1F5CCDE10;
  re::DynamicArray<unsigned long>::deinit(this + 24);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Job::init<re::PhysXCPUDispatcher::submitTask(physx::PxBaseTask &)::$_0>(re::PhysXCPUDispatcher::submitTask(physx::PxBaseTask &)::$_0 &&)::{lambda(re::Job&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    kdebug_trace();
  }

  (*(**(a1 + 40) + 16))(*(a1 + 40));
  (*(**(a1 + 40) + 56))(*(a1 + 40));
  atomic_fetch_add_explicit((v2 + 64), 0xFFFFFFFF, memory_order_release);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyTracing(0, 0);
    if (result)
    {
      result = kdebug_trace();
    }
  }

  *a1 = 0;
  return result;
}

double re::EmptyShape::massProperties(uint64_t a1, _DWORD *a2, void *a3, _OWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  a3[1] = 0;
  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

re *re::initCollision(re *this)
{
  {
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 56, 8);
    this = re::PhysXCollisionFactory::PhysXCollisionFactory(v3);
  }

  return this;
}

re *re::deinitCollision(re *this)
{
  {
  }

  return result;
}

re *re::internal::destroyPersistent<re::CollisionFactory>(re *result, uint64_t a2, void (***a3)(void))
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

uint64_t re::PhysXPlaneShape::PhysXPlaneShape(uint64_t a1, _OWORD *a2, float a3)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1F5CCDE80;
  *(a1 + 8) = a1 + 96;
  *(a1 + 32) = *a2;
  *(a1 + 48) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x3F80000000000000;
  *(a1 + 96) = 1;
  v4 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v4;
  v13 = -a3;
  physx::PxTransformFromPlaneEquation(&v11, v9);
  *&v5 = v9[2];
  DWORD2(v5) = v10;
  v6 = v9[0];
  v7 = v9[1];
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  return a1;
}

double re::PhysXPlaneShape::aabb@<D0>(_OWORD *a1@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_127, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(_MergedGlobals_127);
    a1 = v3;
    if (v4)
    {
      v5.i64[0] = 0x7F0000007FLL;
      v5.i64[1] = 0x7F0000007FLL;
      xmmword_1EE19D560 = v5;
      unk_1EE19D570 = vnegq_f32(v5);
      __cxa_guard_release(_MergedGlobals_127);
      a1 = v3;
    }
  }

  result = *&xmmword_1EE19D560;
  v2 = unk_1EE19D570;
  *a1 = xmmword_1EE19D560;
  a1[1] = v2;
  return result;
}

const void **re::PhysXDebugRenderer::deinit(const void **this)
{
  if (*this)
  {
    v1 = this;
    _Block_release(this[13]);
    _Block_release(v1[12]);
    _Block_release(v1[11]);
    _Block_release(v1[10]);
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    this = (*(**v1 + 552))(0.0);
    *v1 = 0;
  }

  return this;
}

void *re::PhysXDebugRenderer::init(void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  re::PhysXDebugRenderer::setScene(a1, a2);
  v11 = a1[10];
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = a1[11];
  if (v12)
  {
    _Block_release(v12);
  }

  v13 = a1[12];
  if (v13)
  {
    _Block_release(v13);
  }

  v14 = a1[13];
  if (v14)
  {
    _Block_release(v14);
  }

  a1[10] = _Block_copy(a3);
  a1[11] = _Block_copy(a4);
  a1[12] = _Block_copy(a5);
  result = _Block_copy(a6);
  a1[13] = result;
  return result;
}

uint64_t re::PhysXDebugRenderer::setScene(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  (*(*a2 + 552))(a2, 0, 0.5);
  (*(**a1 + 552))(0.5);
  (*(**a1 + 552))(0.5);
  (*(**a1 + 552))(0.5);
  (*(**a1 + 552))(0.5);
  (*(**a1 + 552))(0.5);
  v3 = *(**a1 + 552);
  v4.n128_u32[0] = 0.5;

  return v3(v4);
}

float re::PhysXDebugRenderer::setRenderingTransform(uint64_t a1, _OWORD *a2)
{
  v3 = *(a2 + 2);
  v2 = *(a2 + 3);
  v4 = *(a2 + 1);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
  *(a1 + 64) = v2;
  v2.i64[0] = *(a1 + 16);
  v3.i64[0] = *(a1 + 32);
  v4.i64[0] = *(a1 + 48);
  v2.i32[2] = *(a1 + 24);
  v3.i32[2] = *(a1 + 40);
  v4.i32[2] = *(a1 + 56);
  v5 = vmulq_f32(v2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL))), vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL)));
  v6 = vmulq_f32(v2, v2);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  if ((v5.f32[2] + vaddv_f32(*v5.f32)) <= 0.0)
  {
    v7 = -v7;
  }

  result = v7 * 0.1;
  *(a1 + 112) = result;
  return result;
}

uint64_t re::PhysXDebugRenderer::draw(re::PhysXDebugRenderer *this)
{
  v2 = (*(**this + 584))(*this);
  v3 = (*(*v2 + 24))(v2);
  if ((*(*v2 + 16))(v2))
  {
    v4 = 0;
    v5 = v3 + 12;
    do
    {
      v5 += 16;
      (*(*(this + 11) + 16))(*(this + 28));
      ++v4;
    }

    while (v4 < (*(*v2 + 16))(v2));
  }

  v6 = (*(*v2 + 40))(v2);
  if ((*(*v2 + 32))(v2))
  {
    v7 = 0;
    v8 = v6 + 12;
    do
    {
      v8 += 32;
      (*(*(this + 10) + 16))();
      ++v7;
    }

    while (v7 < (*(*v2 + 32))(v2));
  }

  v9 = (*(*v2 + 56))(v2);
  if ((*(*v2 + 48))(v2))
  {
    v10 = 0;
    v11 = v9 + 24;
    do
    {
      (*(*(this + 10) + 16))();
      (*(*(this + 10) + 16))();
      (*(*(this + 10) + 16))();
      ++v10;
      v11 += 48;
    }

    while (v10 < (*(*v2 + 48))(v2));
  }

  v12 = (*(*v2 + 72))(v2);
  result = (*(*v2 + 64))(v2);
  if (result)
  {
    v14 = 0;
    do
    {
      (*(*(this + 12) + 16))();
      ++v14;
      result = (*(*v2 + 64))(v2);
      v12 += 32;
    }

    while (v14 < result);
  }

  return result;
}

uint64_t re::CompoundShape::CompoundShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, unint64_t a6, uint64_t a7)
{
  v46 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *a1 = &unk_1F5CCDEF8;
  *(a1 + 8) = a3;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0;
  *(a1 + 24) = a2;
  if (a6)
  {
    if (a6 >= 0x111111111111112)
    {
LABEL_27:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 240, a6);
      _os_crash();
      __break(1u);
LABEL_28:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v13 = (*(*a2 + 32))(a2, 240 * a6, 16);
    *(a1 + 40) = v13;
    if (!v13)
    {
      goto LABEL_28;
    }

    v15 = a6 - 1;
    if (a6 != 1)
    {
      v16 = v13;
      do
      {
        *(v13 + 144) = 0uLL;
        *(v13 + 160) = 0uLL;
        *(v13 + 208) = 0uLL;
        *(v13 + 224) = 0uLL;
        *(v13 + 176) = 0uLL;
        *(v13 + 192) = 0uLL;
        *(v13 + 112) = 0uLL;
        *(v13 + 64) = 0uLL;
        *(v13 + 80) = 0uLL;
        *(v13 + 48) = 0uLL;
        *v13 = 0uLL;
        *(v13 + 16) = 0uLL;
        *(v13 + 32) = 0;
        *(v13 + 40) = 0x3F80000000000000;
        *v13 = &unk_1F5CCDD10;
        *(v13 + 96) = 0;
        *(v13 + 104) = 0x3F80000000000000;
        *(v13 + 128) = 0;
        *(v13 + 136) = 0x3F80000000000000;
        *(v13 + 144) = 0;
        *(v13 + 152) = 0;
        *(v13 + 168) = 0;
        *(v13 + 160) = 0;
        *(v13 + 208) = 0;
        *(v13 + 176) = 0uLL;
        *(v13 + 192) = 0uLL;
        v13 += 240;
        v16 += 240;
        --v15;
      }

      while (v15);
    }

    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0x3F80000000000000;
    *v13 = &unk_1F5CCDD10;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0x3F80000000000000;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0x3F80000000000000;
    *(v13 + 144) = 0;
    *(v13 + 152) = 0;
    *(v13 + 168) = 0;
    *(v13 + 160) = 0;
    *(v13 + 208) = 0;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
  }

  *(a1 + 56) = a2;
  *(a1 + 48) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 56), 0);
  ++*(a1 + 80);
  if (a6)
  {
    v17 = 0;
    v18 = 144;
    while (*(a1 + 32) > v17)
    {
      v19 = *(a4 + 8 * v17);
      v20 = *(a1 + 40) + v18;
      v21 = a5[1];
      *(v20 - 128) = *a5;
      *(v20 - 112) = v21;
      *(v20 - 80) = v19;
      v22 = a5[1];
      *(v20 - 32) = *a5;
      *(v20 - 16) = v22;
      *v20 = a2;
      re::DynamicArray<re::EvaluationRegister>::setCapacity(v20, 0);
      ++*(v20 + 24);
      *(v20 + 88) = a7;
      if (*(a1 + 32) <= v17)
      {
        goto LABEL_24;
      }

      v23 = *(a1 + 40);
      v41.i64[0] = a1;
      v41.i64[1] = re::CompoundShape::onChildPoseDidChange;
      v42.i64[0] = 0;
      v42.i64[1] = re::Event<re::GeometricObjectBase>::createSubscription<re::CompoundShape>(re::CompoundShape *,REEventHandlerResult (re::CompoundShape::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
      v24 = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v23 + v18), &v41);
      if (*(a1 + 32) <= v17)
      {
        goto LABEL_25;
      }

      v25 = *(*(a1 + 40) + v18 - 80);
      if ((*(*v25 + 24))(v25, v24) == 7)
      {
        if (*(a1 + 32) <= v17)
        {
          goto LABEL_26;
        }

        v26 = *(*(a1 + 40) + v18 - 80);
        v41.i64[0] = a1;
        v41.i64[1] = re::CompoundShape::onChildPoseDidChange;
        v42.i64[0] = 0;
        v42.i64[1] = re::Event<re::GeometricObjectBase>::createSubscription<re::CompoundShape>(re::CompoundShape *,REEventHandlerResult (re::CompoundShape::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
        re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v26 + 56), &v41);
      }

      ++v17;
      v18 += 240;
      a5 += 2;
      if (a6 == v17)
      {
        goto LABEL_17;
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

LABEL_17:
  v27 = *(a1 + 32);
  if (v27)
  {
    v28 = *(a1 + 40);
    v29 = 240 * v27;
    v30.i64[0] = 0x7F0000007FLL;
    v30.i64[1] = 0x7F0000007FLL;
    v31 = vnegq_f32(v30);
    do
    {
      v39 = v31;
      v40 = v30;
      re::GeometricObjectBase::aabb(&v41, v28);
      v33 = v39;
      v32 = v40;
      v33.i32[3] = 0;
      v34 = v41;
      v35 = v42;
      v34.i32[3] = 0;
      v32.i32[3] = 0;
      v31 = vminnmq_f32(v33, v34);
      v35.i32[3] = 0;
      v30 = vmaxnmq_f32(v32, v35);
      v28 = (v28 + 240);
      v29 -= 240;
    }

    while (v29);
    v36 = vsubq_f32(v30, v31);
  }

  else
  {
    v36.i64[0] = 0x7F0000007FLL;
    v36.i32[2] = 127;
  }

  v36.i32[3] = 0;
  v37 = vmaxnmq_f32(v36, 0);
  *(a1 + 16) = fminf(fminf(v37.f32[0], v37.f32[2]), v37.f32[1]);
  return a1;
}

void re::CompoundShape::~CompoundShape(re::CompoundShape *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CCDEF8;
  v3 = (this + 32);
  v2 = *(this + 4);
  if (v2)
  {
    v4 = 240 * v2;
    v5 = *(this + 5) + 144;
    do
    {
      *&v9 = this;
      *(&v9 + 1) = re::CompoundShape::onChildPoseDidChange;
      v10 = 0;
      v11 = re::Event<re::GeometricObjectBase>::createSubscription<re::CompoundShape>(re::CompoundShape *,REEventHandlerResult (re::CompoundShape::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
      re::Event<re::GeometricObjectBase>::removeSubscription(v5, &v9);
      if ((*(**(v5 - 80) + 24))(*(v5 - 80)) == 7)
      {
        v6 = *(v5 - 80);
        *&v9 = this;
        *(&v9 + 1) = re::CompoundShape::onChildPoseDidChange;
        v10 = 0;
        v11 = re::Event<re::GeometricObjectBase>::createSubscription<re::CompoundShape>(re::CompoundShape *,REEventHandlerResult (re::CompoundShape::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
        re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 56, &v9);
      }

      v5 += 240;
      v4 -= 240;
    }

    while (v4);
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 7);
  if (*(this + 3))
  {
    if (*v3)
    {
      v7 = *(this + 5);
      v8 = 240 * *v3;
      do
      {
        re::GeometricObject::deinit(v7);
        re::Event<re::GeometricObjectBase>::~Event((v7 + 144));
        v7 += 240;
        v8 -= 240;
      }

      while (v8);
      (*(**(this + 3) + 40))(*(this + 3), *(this + 5));
      *v3 = 0;
      v3[1] = 0;
    }

    *(this + 3) = 0;
  }
}

uint64_t re::CompoundShape::isStaticShape(re::CompoundShape *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 1;
  }

  v2 = 240 * v1 - 240;
  v3 = (*(this + 5) + 64);
  do
  {
    v4 = *v3;
    v3 += 30;
    result = (*(*v4 + 56))(v4);
    if (result)
    {
      v6 = v2 == 0;
    }

    else
    {
      v6 = 1;
    }

    v2 -= 240;
  }

  while (!v6);
  return result;
}

double re::CompoundShape::massProperties(uint64_t a1, _DWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v29 - v10;
  if (v9)
  {
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v12 = &v29 - v10;
    do
    {
      *v12 = xmmword_1E3047670;
      *(v12 + 1) = xmmword_1E3047670;
      *(v12 + 2) = xmmword_1E3047670;
      *(v12 + 12) = 1065353216;
      v12 += 52;
    }

    while (v12 != &v11[52 * v9]);
    MEMORY[0x1EEE9AC00](v8);
    v14 = &v29 - v13;
    v15 = 0;
    v16 = *(a1 + 40);
    v17 = v14 + 24;
    v18 = v11 + 32;
    v19 = 128;
    do
    {
      v37 = 0;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      (*(**(v16 + v19 - 64) + 32))(*(v16 + v19 - 64), &v37, &v36, &v33);
      *&v20 = v33;
      *&v21 = *(&v34 + 4);
      *&v22 = __PAIR64__(v36, DWORD2(v35));
      *(&v20 + 1) = __PAIR64__(v34, DWORD2(v33));
      *(&v21 + 1) = v35;
      *(&v22 + 1) = *(&v36 + 4);
      *(v18 - 2) = v20;
      *(v18 - 1) = v21;
      *v18 = v22;
      *(v18 + 4) = v37;
      v23 = *(a1 + 32);
      if (v23 <= v15)
      {
        v38 = 0;
        memset(v48, 0, sizeof(v48));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        v43 = 476;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v16 = *(a1 + 40);
      v24 = *(v16 + v19 - 8);
      v25 = *(v16 + v19 - 16);
      *(v17 - 6) = *(v16 + v19);
      ++v15;
      *(v17 - 1) = v25;
      *v17 = v24;
      v17 += 7;
      v19 += 240;
      v18 += 52;
    }

    while (v15 < v23);
    a4 = v32;
    a3 = v31;
    a2 = v30;
  }

  else
  {
    LODWORD(v23) = 0;
    v14 = &v39;
  }

  physx::PxMassProperties::sum(v11, v14, v23, v48);
  *a2 = v48[3];
  *a3 = *(&v48[2] + 4);
  result = *v48;
  v27 = *(v48 + 12);
  v28 = *(&v48[1] + 8);
  *a4 = v48[0];
  a4[1] = v27;
  a4[2] = v28;
  return result;
}

uint64_t physx::PxMassProperties::sum@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, float *a4@<X8>)
{
  if (a3)
  {
    v4 = a3;
    v5 = (result + 48);
    v6 = (a2 + 12);
    v7 = 0.0;
    v8 = a3;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = *(v5 - 3) + *(v5 - 3);
      v13 = *(v5 - 2) + *(v5 - 2);
      v14 = *(v5 - 1) + *(v5 - 1);
      v15 = *(v6 - 1);
      v16 = (*v6 * *v6) + -0.5;
      v17 = *(v6 - 3);
      v18 = *(v6 - 2);
      v19 = ((v13 * v18) + (v17 * v12)) + (v15 * v14);
      v7 = v7 + *v5;
      v11 = v11 + (*v5 * (v6[1] + (((*v6 * ((v18 * v14) - (v15 * v13))) + (v12 * v16)) + (v17 * v19))));
      v10 = v10 + (*v5 * (v6[2] + (((*v6 * ((v15 * v12) - (v17 * v14))) + (v13 * v16)) + (v18 * v19))));
      v9 = v9 + (*v5 * (v6[3] + (((*v6 * ((v17 * v13) - (v18 * v12))) + (v14 * v16)) + (v15 * v19))));
      v5 += 13;
      v6 += 7;
      --v8;
    }

    while (v8);
    v20 = 1.0;
    if (v7 <= 0.0)
    {
      v21 = v11;
    }

    else
    {
      v21 = (1.0 / v7) * v11;
    }

    if (v7 <= 0.0)
    {
      v22 = v10;
    }

    else
    {
      v22 = (1.0 / v7) * v10;
    }

    if (v7 <= 0.0)
    {
      v23 = v9;
    }

    else
    {
      v23 = (1.0 / v7) * v9;
    }

    v24 = (a2 + 12);
    v25 = (result + 24);
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v127 = v22;
    v128 = v23;
    v125 = v7;
    v126 = v21;
    do
    {
      v129 = v32;
      v130 = v34;
      v35 = v25[2];
      v36 = v25[3] + v25[3];
      v37 = v25[4] + v25[4];
      v38 = *(v24 - 1);
      v39 = v25[5] + v25[5];
      v40 = (*v24 * *v24) + -0.5;
      v41 = *(v24 - 3);
      v42 = *(v24 - 2);
      v43 = ((v37 * v42) + (v41 * v36)) + (v38 * v39);
      v44 = (*v24 * ((v42 * v39) - (v38 * v37))) + (v36 * v40);
      v45 = (*v24 * ((v38 * v36) - (v41 * v39))) + (v37 * v40);
      v46 = (*v24 * ((v41 * v37) - (v42 * v36))) + (v39 * v40);
      v47 = v41 + v41;
      v48 = v41 * (v41 + v41);
      v49 = v42 * (v42 + v42);
      v50 = v44 + (v41 * v43);
      v51 = v38 * (v38 + v38);
      v52 = v47 * v42;
      v53 = v47 * v38;
      v54 = *v24 * v47;
      v55 = (v42 + v42) * v38;
      v56 = v45 + (v42 * v43);
      v57 = *v24 * (v42 + v42);
      v58 = *v24 * (v38 + v38);
      v59 = (v20 - v49) - v51;
      v60 = v52 + v58;
      v61 = v46 + (v38 * v43);
      v62 = v53 - v57;
      v63 = v52 - v58;
      v64 = (v20 - v48) - v51;
      v65 = v54 + v55;
      v66 = v53 + v57;
      v67 = v55 - v54;
      v68 = *(v25 - 6);
      v69 = *(v25 - 5);
      v70 = (v20 - v48) - v49;
      v71 = v60 * v68;
      v72 = v64 * v69;
      v73 = (v59 * v68) + (v63 * v69);
      v74 = (v62 * v68) + (v65 * v69);
      v76 = *(v25 - 4);
      v75 = *(v25 - 3);
      v77 = v71 + v72;
      v78 = v73 + (v66 * v76);
      v79 = v74 + (v70 * v76);
      v80 = v77 + (v67 * v76);
      v82 = *(v25 - 2);
      v81 = *(v25 - 1);
      v83 = v24[1] + v50;
      v84 = (v59 * v75) + (v63 * v82);
      v85 = (v60 * v75) + (v64 * v82);
      v86 = v24[2] + v56;
      v87 = ((v62 * v75) + (v65 * v82)) + (v70 * v81);
      v88 = v24[3] + v61;
      v89 = v25[1];
      v90 = v84 + (v66 * v81);
      v91 = (v60 * *v25) + (v64 * v89);
      v92 = v85 + (v67 * v81);
      v93 = (v62 * *v25) + (v65 * v89);
      v94 = ((v59 * *v25) + (v63 * v89)) + (v66 * v35);
      v95 = v91 + (v67 * v35);
      v96 = v93 + (v70 * v35);
      v97 = (v59 * v80) + (v63 * v92);
      v98 = (v59 * v79) + (v63 * v87);
      v99 = ((v59 * v78) + (v63 * v90)) + (v66 * v94);
      v100 = v98 + (v66 * v96);
      v101 = v97 + (v66 * v95);
      v102 = (v60 * v79) + (v64 * v87);
      v103 = ((v60 * v78) + (v64 * v90)) + (v67 * v94);
      v104 = ((v60 * v80) + (v64 * v92)) + (v67 * v95);
      v105 = v67 * v96;
      v107 = v126;
      v106 = v127;
      v108 = v102 + v105;
      v109 = v128;
      v110 = ((v62 * v78) + (v65 * v90)) + (v70 * v94);
      v111 = ((v62 * v80) + (v65 * v92)) + (v70 * v95);
      v112 = ((v62 * v79) + (v65 * v87)) + (v70 * v96);
      v113 = v126 - v83;
      v114 = (v128 - v88) * (v128 - v88);
      v115 = (v127 - v86) * (v127 - v86);
      v116 = v114 + v115;
      v117 = v115 + (v113 * v113);
      v118 = v25[6];
      v119 = ((((v128 - v88) * 0.0) - ((v128 - v88) * 0.0)) - ((v127 - v86) * (v126 - v83))) * v118;
      v120 = ((((v127 - v86) * 0.0) - ((v128 - v88) * (v126 - v83))) - ((v127 - v86) * 0.0)) * v118;
      v121 = (v114 + (v113 * v113)) * v118;
      v122 = ((v113 * 0.0) + ((v113 * -0.0) - ((v128 - v88) * (v127 - v86)))) * v118;
      v123 = v122 + v111;
      v26 = v26 + ((v116 * v118) + v99);
      v27 = v27 + (v119 + v101);
      v28 = v28 + (v120 + v100);
      v29 = v29 + (v119 + v103);
      v30 = v30 + (v121 + v104);
      v20 = 1.0;
      v31 = v31 + (v122 + v108);
      v32 = v129 + (v120 + v110);
      v33 = v33 + v123;
      v34 = v130 + ((v117 * v118) + v112);
      v24 += 7;
      v25 += 13;
      --v4;
    }

    while (v4);
    v124 = v125;
  }

  else
  {
    v109 = 0.0;
    v106 = 0.0;
    v107 = 0.0;
    v124 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
    v32 = 0.0;
    v31 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v26 = 0.0;
  }

  *a4 = v26;
  a4[1] = v27;
  a4[2] = v28;
  a4[3] = v29;
  a4[4] = v30;
  a4[5] = v31;
  a4[6] = v32;
  a4[7] = v33;
  a4[8] = v34;
  a4[9] = v107;
  a4[10] = v106;
  a4[11] = v109;
  a4[12] = v124;
  return result;
}

uint64_t re::Event<re::GeometricObjectBase>::createSubscription<re::CompoundShape>(re::CompoundShape *,REEventHandlerResult (re::CompoundShape::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

void re::Event<re::GeometricObjectBase>::removeSubscription(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, a2, v5);
  if (v5[0] == 1)
  {
    if (*(a1 + 80))
    {
      v5[0] = 0;
      v4 = a2[1];
      v6 = *a2;
      v7 = v4;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((a1 + 40), v5);
    }

    else
    {
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, a2);
    }
  }
}

double re::PhysXConeShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 24, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a7 = *v20;
  a7[1] = v16;
  return result;
}

float re::CapsuleShape::massProperties(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  (*(*a1 + 16))(v11);
  v7 = vsubq_f32(v11[1], v11[0]);
  v7.i32[3] = 0;
  v8 = vmaxnmq_f32(v7, 0);
  v9 = vmulq_f32(v8, v8);
  v8.f32[0] = vmuls_lane_f32(vmuls_lane_f32(v8.f32[0], *v8.f32, 1), v8, 2);
  *a2 = v8.i32[0];
  v8.f32[0] = v8.f32[0] / 12.0;
  *a4 = (v9.f32[1] + v9.f32[2]) * v8.f32[0];
  *(a4 + 12) = 0;
  *(a4 + 4) = 0;
  *(a4 + 20) = (v9.f32[0] + v9.f32[2]) * v8.f32[0];
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = vaddv_f32(*v9.f32) * v8.f32[0];
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t re::PhysXIndexedTriangleMesh::PhysXIndexedTriangleMesh(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 56))(a2);
  v5 = (*(*a2 + 48))(a2);
  v6 = (*(*a2 + 88))(a2);
  v7 = 3 * (*(*a2 + 80))(a2);
  (*(*a2 + 96))(&v10, a2);
  if ((v10 & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = 12;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 58) = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *a1 = &unk_1F5CCE000;
  *(a1 + 64) = a2;
  return a1;
}

uint64_t re::PhysXIndexedTriangleMesh::materialIndexForTriangle(re::PhysXIndexedTriangleMesh *this)
{
  (*(**(this + 8) + 104))(*(this + 8));
  v2 = *(**(this + 8) + 112);

  return v2();
}

void re::PhysXIndexedTriangleMesh::~PhysXIndexedTriangleMesh(re::PhysXIndexedTriangleMesh *this)
{
  *this = &unk_1F5CCE000;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  re::IndexedTriangleMesh::~IndexedTriangleMesh(this);
}

{
  *this = &unk_1F5CCE000;
  v2 = *(this + 8);
  if (v2)
  {
    (**v2)(v2);
  }

  re::IndexedTriangleMesh::~IndexedTriangleMesh(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXConvexPolyhedronShape::PhysXConvexPolyhedronShape(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CCE040;
  if (a2)
  {
    (*(*a2 + 112))(&v7, a2);
    v4 = v9 - v7;
    v5 = vsub_f32(v10, v8);
    if (v5.f32[0] >= v5.f32[1])
    {
      v5.f32[0] = v5.f32[1];
    }

    if (v4 >= v5.f32[0])
    {
      v4 = v5.f32[0];
    }
  }

  else
  {
    v4 = 0.0;
  }

  *(a1 + 16) = v4;
  *a1 = &unk_1F5CCE040;
  *(a1 + 8) = a1 + 24;
  *(a1 + 24) = 4;
  *(a1 + 28) = xmmword_1E304F3C0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1065353216;
  *(a1 + 56) = a2;
  *(a1 + 64) = 1;
  *(a1 + 65) = 0;
  *(a1 + 67) = 0;
  return a1;
}

void re::PhysXConvexPolyhedronShape::aabb(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, float32x4_t *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  if (*(a1 + 56))
  {
    v17 = *(a2 + 1);
    v14.i64[1] = *(&v17 + 1);
    v18 = *a2;
    v19 = *(a2 + 2);
    v14.i64[0] = 0;
    LODWORD(a8) = 1.0;
    physx::Gu::computeBounds(v20, a1 + 24, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
    v15 = *v20;
    v16.i64[0] = *&v20[12];
    v16.i32[2] = v21;
  }

  else
  {
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v15 = vnegq_f32(v16);
  }

  *a7 = v15;
  a7[1] = v16;
}

double re::PhysXConvexPolyhedronShape::massProperties(uint64_t a1, _DWORD *a2, uint64_t a3, _OWORD *a4)
{
  if (*(a1 + 56))
  {
    physx::PxMassProperties::PxMassProperties(v10, a1 + 24);
    *a2 = *&v10[48];
    v7 = *&v10[12];
    v8 = *&v10[24];
    *a4 = *v10;
    a4[1] = v7;
    a4[2] = v8;
    result = *&v10[36];
    *a3 = *&v10[36];
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    *a3 = 0;
    *(a3 + 8) = 0;
    *a2 = 897988541;
  }

  return result;
}

uint64_t re::PhysXConvexPolyhedronShape::vertices(re::PhysXConvexPolyhedronShape *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t re::PhysXConvexPolyhedronShape::vertexStride(re::PhysXConvexPolyhedronShape *this)
{
  if (*(this + 7))
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

uint64_t re::PhysXConvexPolyhedronShape::vertexCount(re::PhysXConvexPolyhedronShape *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

unint64_t re::PhysXConvexPolyhedronShape::dumpTriangles(re::PhysXConvexPolyhedronShape *this, unsigned __int16 *a2, unint64_t a3)
{
  v4 = *(this + 7);
  if (!v4)
  {
    return 0;
  }

  v7 = (*(*v4 + 72))(v4);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      (*(**(this + 7) + 80))(*(this + 7), v8, v22);
      v9 = v9 + v23 - 2;
      v8 = (v8 + 1);
    }

    while (v7 != v8);
    v10 = (3 * v9);
    if (!a2)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
    if (!a2)
    {
      return v10;
    }
  }

  if (v10 > a3)
  {
    return 0;
  }

  v12 = (*(**(this + 7) + 64))(*(this + 7));
  if (v7)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = v12 + 2;
    do
    {
      (*(**(this + 7) + 80))(*(this + 7), v14, v22);
      if (v23 >= 3uLL)
      {
        v17 = v24;
        v18 = v23 - 1 - 1;
        v19 = 3 * v15;
        v20 = (v16 + v24);
        v15 = v15 + v23 - 2;
        do
        {
          a2[v19] = *(v13 + v17);
          a2[v19 + 1] = *(v20 - 1);
          v21 = *v20++;
          a2[v19 + 2] = v21;
          v19 += 3;
          --v18;
        }

        while (v18);
      }

      v14 = (v14 + 1);
    }

    while (v14 != v7);
  }

  return v10;
}

uint64_t physx::PxMassProperties::PxMassProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 2)
  {
    if (v4 > 0)
    {
      if (v4 == 1)
      {
        goto LABEL_14;
      }

      if (v4 != 2)
      {
        return a1;
      }

      v35 = *(a2 + 4);
      v36 = *(a2 + 8);
      *(a1 + 48) = v35 * (v35 * (((v36 + v36) + (v35 * 1.3333)) * 3.1416));
      v37 = v35 * (v35 * v35);
      v38 = v35 * (v35 * v36);
      *a1 = v35 * (v35 * ((v38 + (v37 * 0.53333)) * 3.1416));
      *(a1 + 4) = 0;
      *(a1 + 12) = 0;
      v39 = v35 * (v35 * (((((v38 * 1.5) + (v37 * 0.53333)) + ((v35 * (v36 * v36)) * 1.3333)) + ((v36 * (v36 * v36)) * 0.66667)) * 3.1416));
      *(a1 + 16) = v39;
      *(a1 + 20) = 0;
      *(a1 + 28) = 0;
      *(a1 + 32) = v39;
      *(a1 + 36) = 0;
    }

    else
    {
      if (v4 == -1)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        return a1;
      }

      v32 = *(a2 + 4);
      v33 = v32 * (v32 * (v32 * 4.1888));
      *(a1 + 48) = v33;
      v34 = v32 * (v32 * (v33 * 0.4));
      *a1 = v34;
      *(a1 + 4) = 0;
      *(a1 + 12) = 0;
      *(a1 + 16) = v34;
      *(a1 + 20) = 0;
      *(a1 + 28) = 0;
      *(a1 + 32) = v34;
      *(a1 + 36) = 0;
    }

    *(a1 + 44) = 0;
    return a1;
  }

  if ((v4 - 5) < 3)
  {
LABEL_14:
    *a1 = xmmword_1E3047670;
    *(a1 + 16) = xmmword_1E3047670;
    *(a1 + 32) = xmmword_1E3047670;
    *(a1 + 48) = 1065353216;
    return a1;
  }

  if (v4 == 3)
  {
    v41 = *(a2 + 4);
    v42 = *(a2 + 8);
    v43 = *(a2 + 12);
    v44 = ((v41 * v42) * v43) * 8.0;
    *(a1 + 48) = v44;
    v45 = v41 * v41;
    v46 = v42 * v42;
    v47 = v43 * v43;
    *&v48 = v46 + v47;
    *&v49 = v45 + v47;
    v50 = v45 + v46;
    v51 = v44 / 3.0;
    v52.i64[0] = v48;
    v52.i64[1] = v49;
    v53 = vmulq_n_f32(v52, v51);
    v54 = vdupq_lane_s32(*v53.i8, 1);
    v55 = vzip1q_s32(v53, v54);
    v54.i32[0] = v53.i32[2];
    *a1 = v55;
    *(a1 + 16) = v54;
    *(a1 + 32) = v50 * v51;
    *(a1 + 40) = 0;
    *(a1 + 36) = 0;
  }

  else if (v4 == 4)
  {
    v58 = 0.0;
    (*(**(a2 + 32) + 104))(*(a2 + 32), &v58, v67, &v68);
    v6 = v69;
    v5 = v70;
    v7 = v68;
    v66 = v67[8] - (v58 * ((v6 * v6) + (v7 * v7)));
    v59.f32[0] = v67[0] - (v58 * ((v5 * v5) + (v6 * v6)));
    v59.f32[1] = v67[1] + (v58 * (v69 * v68));
    v62 = v67[4] - (v58 * ((v7 * v7) + (v5 * v5)));
    v63 = v67[5] + (v58 * (v69 * v70));
    v64 = v67[2] + (v58 * (v70 * v68));
    v65 = v63;
    v9 = *(a2 + 16);
    v8 = (a2 + 16);
    v10 = *(v8 - 3);
    v60 = v64;
    v61 = v59.f32[1];
    v11 = v7 + v7;
    v12 = v6 + v6;
    v13 = v5 + v5;
    v15 = v8[2];
    v14 = v8[3];
    v16 = (v14 * v14) + -0.5;
    v17 = v8[1];
    v18 = (v12 * v17) + (v9 * v11);
    v19 = (v14 * ((v17 * v13) - (v15 * v12))) + (v11 * v16);
    v20 = (v14 * ((v15 * v11) - (v9 * v13))) + (v12 * v16);
    v21 = (v9 * v12) - (v17 * v11);
    v22 = *(v8 - 2);
    v23 = *(v8 - 1);
    v24 = ((v58 * v10) * v22) * v23;
    v25 = v18 + (v15 * v13);
    v26 = ((v14 * v21) + (v13 * v16)) + (v15 * v25);
    v27 = (v10 * (v19 + (v9 * v25))) + (v10 * (v19 + (v9 * v25)));
    v28 = (v22 * (v20 + (v17 * v25))) + (v22 * (v20 + (v17 * v25)));
    v29 = (v23 * v26) + (v23 * v26);
    v30 = ((v17 * v28) + (v9 * v27)) + (v15 * v29);
    *(a1 + 36) = ((v27 * v16) - (((v17 * v29) - (v15 * v28)) * v14)) + (v9 * v30);
    *(a1 + 40) = ((v28 * v16) - (((v15 * v27) - (v9 * v29)) * v14)) + (v17 * v30);
    *(a1 + 44) = ((v29 * v16) - (((v9 * v28) - (v17 * v27)) * v14)) + (v15 * v30);
    *(a1 + 48) = v24;
    physx::PxMassProperties::scaleInertia(&v59, v8, (v8 - 3), v56);
    v31 = v56[1];
    *a1 = v56[0];
    *(a1 + 16) = v31;
    *(a1 + 32) = v57;
  }

  return a1;
}

int32x2_t physx::PxMassProperties::scaleInertia@<D0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 12);
  v7.i32[0] = a1[1].i32[0];
  v8.i32[0] = a1[1].i32[1];
  v10.i32[0] = a1[2].i32[0];
  v9.i32[0] = a1[2].i32[1];
  v11 = a3[1].f32[0];
  v12 = -*a2 - *a2;
  v13 = (*a2 * v12) + 1.0;
  v14 = *(a2 + 4);
  *v5.i32 = vmuls_lane_f32(v14.f32[1] + v14.f32[1], v14, 1);
  v4.f32[0] = (v14.f32[1] + v14.f32[1]) * v6;
  v15 = a1[3];
  v16 = vrev64_s32(v15);
  v17 = vadd_f32(*a2, *a2);
  v18 = vmul_f32(*a2, v17);
  v19 = vmul_f32(v17, v14);
  v20 = vmul_lane_f32(v17, v14, 1);
  v21 = vrev64_s32(v20);
  v22 = vmul_n_f32(v17, v6);
  __asm { FMOV            V23.2S, #1.0 }

  v28 = vsub_f32(_D23, v18);
  v29 = vadd_f32(v19, v4);
  v30 = vsub_f32(v19, v4);
  v31 = vzip1_s32(v29, v30);
  v32 = vsub_f32(v28, vdup_lane_s32(v5, 0));
  _D18 = vadd_f32(v21, v22);
  v21.f32[0] = vsub_f32(v21, v22).f32[0];
  v21.i32[1] = _D18.i32[1];
  *v29.i32 = ((a1->f32[0] * *v29.i32) + (a1->f32[1] * v32.f32[0])) + (v7.f32[0] * v21.f32[0]);
  v34 = vzip1_s32(v20, v28);
  v35 = vsub_f32(v34, vzip2_s32(v22, v18));
  v34.f32[0] = v8.f32[0] * v35.f32[0];
  v8.i32[1] = a1->i32[1];
  v28.f32[0] = v10.f32[0] * _D18.f32[0];
  v10.i32[1] = a1->i32[0];
  v22.f32[0] = vmuls_lane_f32(v8.f32[0], v32, 1) + (v10.f32[0] * *v30.i32);
  v36 = vmuls_lane_f32(v9.f32[0], v35, 1);
  v9.i32[1] = v7.i32[0];
  v37 = vadd_f32(vmul_f32(v32, v10), vmul_f32(v31, v8));
  v8.f32[0] = v22.f32[0] + vmuls_lane_f32(v9.f32[0], _D18, 1);
  v38 = vadd_f32(v37, vmul_f32(v21, v9));
  v39 = vadd_f32(vadd_f32(vmul_f32(v32, v16), vmul_f32(v31, v15)), vmul_n_f32(v21, a1[4].f32[0]));
  v9.f32[0] = (vmuls_lane_f32(*v29.i32, v32, 1) + vmuls_n_f32(*v30.i32, v38.f32[0])) + vmuls_lane_f32(v39.f32[0], _D18, 1);
  v40.i32[1] = v31.i32[1];
  v34.f32[0] = (v34.f32[0] + v28.f32[0]) + v36;
  v41 = vzip1_s32(v34, v31);
  v31.i32[1] = v8.i32[0];
  v40.i32[0] = v29.i32[0];
  _D23 = vadd_f32(vadd_f32(vmul_f32(v32, v38), vmul_f32(v31, v40)), vmul_f32(v21, v39));
  v16.i32[0] = a1->i32[0];
  v15.i32[0] = v8.i32[1];
  v7.i32[1] = a1[4].i32[0];
  v43 = vadd_f32(vadd_f32(vmul_n_f32(v16, v35.f32[0]), vmul_n_f32(v15, _D18.f32[0])), vmul_lane_f32(v7, v35, 1));
  v44 = vmul_f32(v41, vzip1_s32(v30, v43));
  v45 = vmul_lane_f32(vrev64_s32(v21), v43, 1);
  _D17 = vmul_f32(v35, v43);
  v43.i32[1] = v34.i32[0];
  v47 = vadd_f32(vmul_f32(vrev64_s32(v32), v43), v44);
  v44.f32[0] = (*_D17.i32 + (v34.f32[0] * _D18.f32[0])) + *&_D17.i32[1];
  _D17.i32[0] = 0.5;
  __asm { FMLA            S18, S17, V23.S[1] }

  *_D17.i32 = _D18.f32[0] + (v44.f32[0] * 0.5);
  v48 = vadd_f32(v47, v45);
  v49 = vrev64_s32(*a3);
  v50 = vmul_f32(v49, vmul_f32(v49, vsub_f32(vdup_lane_s32(_D17, 0), _D23)));
  v44.f32[0] = v11 * (v11 * (*_D17.i32 - v44.f32[0]));
  v51 = vadd_f32(v50, vdup_lane_s32(v44, 0));
  v15.f32[0] = vaddv_f32(v50);
  v52 = vmul_n_f32(vmul_f32(*a3, v48), v11);
  v53 = vmuls_lane_f32(COERCE_FLOAT(*a3), *a3, 1) * v11;
  v44.f32[0] = v53 * vmuls_lane_f32(v9.f32[0] * COERCE_FLOAT(*a3), *a3, 1);
  v54 = vmul_n_f32(v51, v53);
  v55 = vmul_n_f32(v52, v53);
  v56 = v53 * v15.f32[0];
  v57 = vneg_f32(v14);
  v58 = vsub_f32(v57, v14);
  v15.f32[0] = vmul_f32(v58, v57).f32[0];
  v59 = vdup_lane_s32(v58, 0);
  v59.f32[0] = v12;
  v16.f32[0] = vmuls_lane_f32(v12, v57, 1);
  v60 = vmul_f32(v59, v57);
  v61 = vrev64_s32(v60);
  v57.f32[0] = v6;
  v62 = vmul_f32(v58, v57);
  v58.f32[0] = v12;
  v63 = vmul_n_f32(v58, v6);
  v64 = vadd_f32(v61, v63);
  v61.f32[0] = 1.0 - v15.f32[0];
  v65 = vsub_f32(v61, vzip2_s32(v62, v63));
  v57.f32[0] = v16.f32[0] + v62.f32[0];
  v16.f32[1] = v13;
  v60.f32[0] = v13;
  v66 = vdup_lane_s32(v63, 0);
  v67 = vsub_f32(v16, v62);
  v66.i32[0] = v15.i32[0];
  v68 = vsub_f32(v60, v66);
  v63.f32[0] = ((v16.f32[0] + v62.f32[0]) * v55.f32[0]) + (vmuls_lane_f32(v44.f32[0], v65, 1) + vmul_f32(v65, v54).f32[0]);
  v69 = vmul_n_f32(v64, v44.f32[0]);
  v70 = vmul_n_f32(v67, v44.f32[0]);
  v71 = vmul_f32(v67, v54);
  v72 = vrev64_s32(v54);
  v54.i32[0] = v44.i32[0];
  v73 = vmul_f32(v65, v54);
  v74 = vadd_f32(v69, v71);
  v75 = vadd_f32(v70, vmul_f32(v64, v72));
  v76 = vrev64_s32(v55);
  v69.f32[0] = vmuls_lane_f32(v57.f32[0], v55, 1) + vaddv_f32(v73);
  v77 = vadd_f32(vmul_f32(v68, v55), v74);
  v78 = vadd_f32(vmul_f32(v68, v76), v75);
  v79 = vmul_n_f32(v68, v56);
  v80 = (vmul_f32(v65, v55).f32[0] + vmuls_lane_f32(v65.f32[1], v55, 1)) + (v57.f32[0] * v56);
  v81 = vadd_f32(vadd_f32(vmul_f32(v67, v55), vmul_f32(v64, v76)), v79);
  *a4 = (v57.f32[0] * v80) + ((v63.f32[0] * v65.f32[0]) + vmuls_lane_f32(v69.f32[0], v65, 1));
  v82 = vrev64_s32(vadd_f32(vmul_n_f32(v81, v57.f32[0]), vadd_f32(vmul_f32(v65, v77), vmul_f32(vrev64_s32(v65), v78))));
  v83 = vdup_lane_s32(v78, 0);
  *(a4 + 4) = v82;
  v84 = vmul_f32(vzip1_s32(v64, v67), v78);
  v78.i32[0] = v63.i32[0];
  v85 = vdup_lane_s32(v77, 0);
  v86 = vmul_f32(vzip1_s32(v67, v64), v77);
  v77.i32[0] = v69.i32[0];
  v87 = vadd_f32(vmul_lane_f32(v78, v64, 1), vmul_lane_f32(v77, v67, 1));
  v88 = vdup_lane_s32(v81, 0);
  v89 = vmul_n_f32(v81, v68.f32[0]);
  v81.f32[0] = v80;
  *(a4 + 12) = vadd_f32(vmul_lane_f32(v81, v68, 1), v87);
  v83.i32[0] = v63.i32[0];
  v85.i32[0] = v69.i32[0];
  v88.f32[0] = v80;
  *(a4 + 20) = vrev64_s32(vadd_f32(vmul_f32(v68, v88), vadd_f32(vmul_f32(v67, v83), vmul_f32(v64, v85))));
  result = vrev64_s32(vadd_f32(v89, vadd_f32(v86, v84)));
  *(a4 + 28) = result;
  return result;
}

void *re::IndexedTriangleMesh::freeData(void *this)
{
  v1 = this;
  v2 = this[6];
  if (v2)
  {
    v3 = re::globalAllocators(this);
    this = (*(*v3[2] + 40))(v3[2], v2);
  }

  v4 = v1[2];
  if (v4)
  {
    v5 = re::globalAllocators(this);
    this = (*(*v5[2] + 40))(v5[2], v4);
  }

  if (v1[1])
  {
    v6 = *(*re::globalAllocators(this)[2] + 40);

    return v6();
  }

  return this;
}

BOOL re::IndexedTriangleMesh::isValid(re::IndexedTriangleMesh *this)
{
  if (!*(this + 1))
  {
    return 0;
  }

  if (!*(this + 2))
  {
    return 0;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 5);
  if (v4 && !(v4 % 3))
  {
    v5 = *(this + 58);
    v6 = HIDWORD(v2) == 0;
    v7 = v2 < 0x10000;
    if (v5 != 1)
    {
      v7 = 0;
    }

    if (v5 == 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void re::IndexedTriangleMesh::~IndexedTriangleMesh(re::IndexedTriangleMesh *this)
{
  *this = &unk_1F5CCE0E0;
  if (*(this + 1))
  {
    if (*(this + 28))
    {
      re::IndexedTriangleMesh::freeData(this);
    }
  }
}

float re::BoxShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  v7.i64[0] = (*(*a1 + 64))(a1);
  v7.i64[1] = v8;
  v9 = vmulq_f32(v7, v7);
  v10 = vmuls_lane_f32(vmuls_lane_f32(v7.f32[0], *v7.f32, 1), v7, 2);
  *a2 = v10;
  v11 = v10 / 12.0;
  *a4 = (v9.f32[1] + v9.f32[2]) * v11;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = (v9.f32[0] + v9.f32[2]) * v11;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = vaddv_f32(*v9.f32) * v11;
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

float re::CylinderShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  v8 = (*(*a1 + 64))(a1);
  v9 = (*(*a1 + 72))(a1);
  v10 = v9 * v9;
  v11 = v8 * (v10 * 3.1416);
  *a2 = v11;
  v12 = ((v8 * v8) + (v10 * 3.0)) * (v11 * 0.083333);
  *a4 = v12;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  result = v10 * (v11 * 0.5);
  *(a4 + 20) = result;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v12;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t re::CastHitCallback<physx::PxRaycastHit>::addHit(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(*(a1 + 96));
  *v4 = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 2139095039;
  *(v4 + 52) = 0xFFFFFFFF00000000;
  *(v4 + 64) = 0;
  v6 = *(a1 + 96);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v6, v7 - 1);
    *(v8 + 48) = *(a2 + 48) / *(a1 + 2156);
    *(v8 + 16) = *(a2 + 24);
    *(v8 + 32) = *(a2 + 36);
    v9 = *(a2 + 8);
    v10 = *(*a2 + 16);
    *v8 = v10;
    *(v8 + 52) = re::internal::nvphysx::findShapeIndex(v10, v9);
    result = (*(**(a2 + 8) + 64))(*(a2 + 8));
    if (result == 5)
    {
      v13 = 5;
      v14 = xmmword_1E304F3C0;
      v15 = 0;
      v16 = 0;
      v17 = 1065353216;
      v18 = 0;
      (*(**(a2 + 8) + 128))(*(a2 + 8), &v13);
      result = (*(*v18 + 104))(v18);
      if (result)
      {
        result = (*(*v18 + 104))(v18);
        v12 = (result + 4 * *(a2 + 16));
      }

      else
      {
        v12 = (a2 + 16);
      }

      *(v8 + 56) = *v12;
      *(v8 + 64) = *(a2 + 52);
    }
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::PhysXCollisionWorld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v5 = a1 + 8;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0x7FFFFFFFLL;
  *(a1 + 120) = a1;
  *(a1 + 128) = a1;
  *(a1 + 136) = 0;
  *(a1 + 144) = a3;
  *a1 = &unk_1F5CCE148;
  v6 = a1 + 176;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  re::BucketArray<re::PhysXManifold,256ul>::init(a1 + 176, a2, 1uLL);
  v7 = (*(*a2 + 32))(a2, 32, 8);
  *v7 = &unk_1F5CCEDD0;
  *(v7 + 8) = v6;
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  *(a1 + 232) = v7;
  *(a1 + 240) = a2;
  *(a1 + 256) = 0;
  *(a1 + 272) = xmmword_1E3047670;
  *(a1 + 288) = xmmword_1E3047680;
  *(a1 + 304) = xmmword_1E30476A0;
  *(a1 + 320) = xmmword_1E30474D0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1036831949;
  *(a1 + 384) = 0;
  *(a1 + 387) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  return a1;
}

void re::PhysXCollisionWorld::~PhysXCollisionWorld(re::PhysXCollisionWorld *this)
{
  re::PhysXCollisionWorld::deinit(this);
  (*(**(this + 30) + 40))(*(this + 30), *(this + 29));
  re::PhysXDebugRenderer::deinit(this + 32);
  v2 = *(this + 27);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::PhysXManifold,256ul>::operator[](this + 176, i);
      re::DynamicArray<unsigned long>::deinit(v4 + 16);
    }
  }

  while (*(this + 23))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 22);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 176);
  *(this + 27) = 0;
  ++*(this + 56);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 176);
  v5 = *(this + 20);
  if (v5)
  {
    (**v5)(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  re::CollisionWorld::~CollisionWorld(this);
}

{
  re::PhysXCollisionWorld::~PhysXCollisionWorld(this);

  JUMPOUT(0x1E6906520);
}

void re::PhysXCollisionWorld::deinit(re::PhysXCollisionWorld *this)
{
  if (*(this + 7))
  {
    re::PhysXDebugRenderer::deinit(this + 32);
    v2 = *(this + 20);
    if (v2)
    {
      (**v2)(v2);
    }

    *(this + 20) = 0;
    v3 = *(this + 21);
    if (v3)
    {
      v4 = *(this + 7);
      (*(*v3 + 16))(*(this + 21));
      (*(*v4 + 40))(v4, v3);
      v5 = *(this + 19);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }
    }

    *(this + 19) = 0;
    if (*(this + 7))
    {
      if (*(this + 9))
      {
        re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(this + 9);
      }

      *(this + 7) = 0;
    }
  }
}

uint64_t re::QueryFilterCallback::preFilter(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 192))(&v5, a3);
  if ((v7 & a1[4]) != 0 && (a1[5] & v6) != 0)
  {
    return a1[6];
  }

  else
  {
    return 0;
  }
}

uint64_t re::PhysXCollisionWorld::setCollisionFlags(uint64_t result, int a2)
{
  if (*(result + 384) != a2)
  {
    v10 = v2;
    v11 = v3;
    v5 = result;
    (*(**(result + 152) + 488))(&v7);
    v6.i64[0] = v7;
    v6.i32[2] = v8;
    v9 = v6;
    return re::PhysXCollisionWorld::createScene(v5, &v9, a2);
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::createScene(uint64_t a1, float32x4_t *a2, int a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = physx::shdfnd::g_alwaysUseLocking;
  v7 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v64 = v7;
  v96 = 0;
  v95 = 0;
  v97 = 1;
  v99 = 0;
  v98 = 0;
  v8 = *(a1 + 160);
  if (v8)
  {
    v9 = (*(*v8 + 16))(v8);
    if (v9)
    {
      v10 = v9;
      re::DynamicOverflowArray<re::PhysXCollisionWorld::createScene(re::Vector3<float> const&,re::CollisionWorld::CollisionFlags)::ControllerInfo,4ul>::setCapacity(&v95, v10);
      v11 = v97;
      v97 += 2;
      v12 = (v11 & 1) == 0;
      v13 = 4;
      if (v12)
      {
        v13 = v98;
      }

      if (v13 < v10)
      {
        re::DynamicOverflowArray<re::PhysXCollisionWorld::createScene(re::Vector3<float> const&,re::CollisionWorld::CollisionFlags)::ControllerInfo,4ul>::setCapacity(&v95, v10);
      }

      v14 = v10 - v96;
      if (v10 > v96)
      {
        v15 = v96 << 6;
        do
        {
          if (v97)
          {
            v16 = &v98;
          }

          else
          {
            v16 = v99;
          }

          v17 = v16 + v15;
          *v17 = 0;
          *(v17 + 1) = 0uLL;
          *(v17 + 2) = 0uLL;
          *(v17 + 6) = 0;
          v15 += 64;
          --v14;
        }

        while (v14);
      }

      v18 = 0;
      v19 = 0;
      v96 = v10;
      v97 += 2;
      while (1)
      {
        v20 = (*(**(a1 + 160) + 24))(*(a1 + 160), v19);
        v21 = (*(*v20 + 160))(v20);
        v22 = v96;
        if (v96 <= v19)
        {
          break;
        }

        if (v97)
        {
          v23 = &v98;
        }

        else
        {
          v23 = v99;
        }

        v23[v18] = v21;
        if (v97)
        {
          v24 = &v98;
        }

        else
        {
          v24 = v99;
        }

        v25 = &v24[v18];
        v26 = *(v24[v18] + 56);
        v65 = 0;
        (*(*v26 + 216))(v26, &v65, 1, 0);
        v25[6] = v65;
        if (v97)
        {
          v27 = &v98;
        }

        else
        {
          v27 = v99;
        }

        v28 = &v27[v18];
        v28[2] = (*(*v27[v18] + 88))(v27[v18]);
        v28[3] = v29;
        v22 = v96;
        if (v96 <= v19)
        {
          goto LABEL_90;
        }

        if (v97)
        {
          v30 = &v98;
        }

        else
        {
          v30 = v99;
        }

        v31 = &v30[v18];
        v31[4] = (*(*v30[v18] + 160))(v30[v18]);
        v31[5] = v32;
        ++v19;
        v18 += 8;
        if (v10 == v19)
        {
          goto LABEL_32;
        }
      }

      v66 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *&v93[4] = "operator[]";
      *&v93[12] = 1024;
      *&v93[14] = 858;
      *&v93[18] = 2048;
      *v94 = v19;
      *&v94[8] = 2048;
      *&v94[10] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      v66 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *&v93[4] = "operator[]";
      *&v93[12] = 1024;
      *&v93[14] = 858;
      *&v93[18] = 2048;
      *v94 = v19;
      *&v94[8] = 2048;
      *&v94[10] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_32:
    (*(**(a1 + 160) + 40))(*(a1 + 160));
    v33 = *(a1 + 160);
    if (v33)
    {
      (**v33)(v33);
    }

    *(a1 + 160) = 0;
  }

  *v93 = 0;
  *&v93[8] = 0;
  *&v93[16] = 1;
  *&v94[4] = 0;
  *&v94[12] = 0;
  v34 = *(a1 + 152);
  if (v34)
  {
    LOWORD(v67) = 3;
    v35 = (*(*v34 + 152))(v34, &v67);
    v36 = v35;
    if (*&v93[8] >= v35)
    {
      if (*&v93[8] <= v35)
      {
        v38 = v93[16];
LABEL_52:
        v42 = *(a1 + 152);
        LOWORD(v67) = 3;
        if (v38)
        {
          v43 = &v94[4];
        }

        else
        {
          v43 = *&v94[12];
        }

        (*(*v42 + 160))(v42, &v67, v43, v36, 0);
        if (v93[16])
        {
          v44 = &v94[4];
        }

        else
        {
          v44 = *&v94[12];
        }

        (*(**(a1 + 152) + 120))(*(a1 + 152), v44, v36, 1);
        v45 = *(a1 + 152);
        if (v45)
        {
          (*(*v45 + 16))(v45);
        }

        *(a1 + 152) = 0;
        goto LABEL_61;
      }
    }

    else
    {
      if (*v93)
      {
        v37 = v93[16];
      }

      else
      {
        re::DynamicOverflowArray<physx::PxActor *,32ul>::setCapacity(v93, v36);
        v37 = v93[16] + 2;
        *&v93[16] += 2;
      }

      v12 = (v37 & 1) == 0;
      v39 = 32;
      if (v12)
      {
        v39 = *&v94[4];
      }

      if (v39 < v36)
      {
        re::DynamicOverflowArray<physx::PxActor *,32ul>::setCapacity(v93, v36);
      }

      v40 = *&v93[8];
      if (*&v93[8] < v36)
      {
        do
        {
          if (v93[16])
          {
            v41 = &v94[4];
          }

          else
          {
            v41 = *&v94[12];
          }

          *&v41[8 * v40++] = 0;
        }

        while (v36 != v40);
      }
    }

    *&v93[8] = v36;
    v38 = v93[16] + 2;
    *&v93[16] += 2;
    goto LABEL_52;
  }

LABEL_61:
  v46 = (*(**(a1 + 144) + 40))(*(a1 + 144));
  *&v67 = 0;
  DWORD2(v67) = 0;
  v68 = 0u;
  v69 = 0u;
  LODWORD(v70) = 0;
  *(&v70 + 1) = 0;
  *&v71 = 0;
  *(&v71 + 1) = 0x100000001;
  v72 = 2;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v47 = vmul_f32(*v46, 0x3E4CCCCD3D23D70ALL);
  v76 = vrev64_s32(v47);
  v77 = v47.i32[0];
  v78 = 0;
  v79 = 64;
  v80 = 0;
  v81 = 0;
  v82 = xmmword_1E3066170;
  v83 = 0;
  v84 = xmmword_1E3066180;
  v85 = 2139095039;
  v86 = 0x100002000;
  v87 = xmmword_1E3066190;
  v88 = xmmword_1E30661A0;
  v89 = xmmword_1E30661B0;
  v90 = xmmword_1E30661C0;
  v91 = 8;
  v92 = *v46;
  v80 = *(a1 + 168);
  v79 = 17474;
  HIDWORD(v75) = 1;
  v48 = *(a1 + 232);
  *(&v70 + 1) = SimulationFilterShader;
  *&v68 = v48;
  HIDWORD(v84) = 64;
  *&v67 = a2->i64[0];
  DWORD2(v67) = a2->i32[2];
  v49 = vmulq_f32(*a2, *a2);
  *v76.i32 = sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) * 0.2;
  if (a3)
  {
    HIDWORD(v71) = 0;
  }

  if ((a3 & 2) != 0)
  {
    DWORD2(v71) = 0;
  }

  *(a1 + 384) = a3;
  v50 = (*(**(a1 + 144) + 144))(*(a1 + 144), &v67);
  ControllerManager = PxCreateControllerManager(v50, 0, v51, v52, v53, v54, v55, v56);
  v58 = *(a1 + 160);
  if (v58)
  {
    (**v58)(v58);
  }

  *(a1 + 160) = ControllerManager;
  (*(*ControllerManager + 104))(ControllerManager, 1);
  v59 = *(a1 + 152);
  if (v59)
  {
    (*(*v59 + 16))(v59);
  }

  *(a1 + 152) = v50;
  if (v93[16])
  {
    v60 = &v94[4];
  }

  else
  {
    v60 = *&v94[12];
  }

  (*(*v50 + 96))(v50, v60, *&v93[8]);
  if (v97)
  {
    v61 = &v98;
  }

  else
  {
    v61 = v99;
  }

  if (v96)
  {
    v62 = &v61[8 * v96];
    do
    {
      re::internal::PhysXCapsuleController::recreateUnderlying(*v61, v61 + 2, v61 + 4, a1, v61[6]);
      v61 += 8;
    }

    while (v61 != v62);
  }

  if (*(a1 + 256))
  {
    re::PhysXDebugRenderer::setScene(a1 + 256, *(a1 + 152));
  }

  if (*v93 && (v93[16] & 1) == 0)
  {
    (*(**v93 + 40))();
  }

  result = v95;
  if (v95 && (v97 & 1) == 0)
  {
    result = (*(*v95 + 40))();
  }

  if (physx::shdfnd::g_isLockingEnabled != ((v6 | v64) & 1))
  {
    physx::shdfnd::g_isLockingEnabled = (v6 | v64) & 1;
  }

  return result;
}

uint64_t SimulationFilterShader@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, int a3@<W2>, _DWORD *a4@<X3>, __int16 *a5@<X4>, _WORD *a6@<X8>)
{
  if ((a4[3] & a2[2]) != 0 && (a2[3] & a4[2]) != 0)
  {
    if (((a3 | result) & 0x20) != 0)
    {
      v6 = 1044;
    }

    else if ((*a4 | *a2))
    {
      if (((*a4 | *a2) & 2) != 0)
      {
        v6 = 3597;
      }

      else
      {
        v6 = 1549;
      }

      if ((result & a3 & 0x10) != 0)
      {
        v6 = 1548;
      }

      if ((*a2 & *a4 & 4) == 0)
      {
        v6 = 1548;
      }
    }

    else
    {
      v6 = 1548;
    }

    *a5 = v6;
  }

  *a6 = 0;
  return result;
}

uint64_t re::PhysXCollisionWorld::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, physx::shdfnd::Foundation *a5)
{
  *(a1 + 56) = a2;
  re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::init(a1 + 72, a2, 3);
  *(a1 + 392) = a4;
  *(a1 + 400) = 0;
  if (a5)
  {
    v16 = *(a1 + 152);
    if (v16)
    {
      (*(*v16 + 16))(v16);
    }

    *(a1 + 152) = a5;
    ControllerManager = PxCreateControllerManager(a5, 0, v10, v11, v12, v13, v14, v15);
    v18 = *(a1 + 160);
    if (v18)
    {
      (**v18)(v18);
    }

    *(a1 + 160) = ControllerManager;
    v19 = *(*ControllerManager + 104);

    return v19(ControllerManager, 1);
  }

  else
  {
    v21 = (*(*a2 + 32))(a2, 72, 8);
    *v21 = &unk_1F5CCDE10;
    *(v21 + 8) = a3;
    *(v21 + 16) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    *(v21 + 20) = 0u;
    *(v21 + 36) = 0u;
    *(a1 + 168) = v21;
    v22 = 0uLL;
    return re::PhysXCollisionWorld::createScene(a1, &v22, *(a1 + 384));
  }
}

uint64_t re::PhysXCollisionWorld::isMultithreadingEnabled(re::PhysXCollisionWorld *this)
{
  result = *(this + 21);
  if (result)
  {
    return (*(*result + 8))(result) != 0;
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::setIsMultithreadingEnabled(uint64_t this, int a2)
{
  *(this + 388) = a2;
  if (!a2)
  {
    v2 = *(this + 168);
    if (!v2)
    {
      return this;
    }

    v3 = *(this + 389);
    goto LABEL_8;
  }

  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0)
  {
    physx::shdfnd::g_alwaysUseLocking = 1;
  }

  v2 = *(this + 168);
  if (v2)
  {
    v3 = 1;
LABEL_8:
    *(v2 + 16) = v3 & 1;
  }

  return this;
}

void re::PhysXCollisionWorld::reportCollisions(re::PhysXCollisionWorld *this)
{
  v2[0] = &unk_1F5CCE438;
  v2[1] = this + 176;
  re::ContactSetCollection::set(this + 72, v2);
  re::CollisionWorld::reportTriggerEvents(this);
}

BOOL re::PhysXCollisionWorld::canRecreateScene(re::PhysXCollisionWorld *this)
{
  v2 = *(this + 19);
  v6 = 3;
  v3 = (*(*v2 + 152))(v2, &v6);
  if (*(this + 21))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4 && !(*(**(this + 20) + 16))(*(this + 20)) && (*(**(this + 20) + 64))(*(this + 20)) == 0;
}

void re::PhysXCollisionWorld::update(re::PhysXCollisionWorld *this)
{
  v2 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v3 = v2 & 1;
  re::BucketArray<re::PhysXManifold,256ul>::clear(this + 176);
  re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(this + 22, (*(this + 27) + 255) >> 8);
  (*(**(this + 19) + 400))(0.016667);
  (*(**(this + 19) + 440))();
  v4 = *(this + 21);
  if (v4)
  {
    re::PhysXCPUDispatcher::reset(v4);
  }

  v5[0] = &unk_1F5CCE438;
  v5[1] = this + 176;
  re::ContactSetCollection::set(this + 72, v5);
  re::CollisionWorld::reportTriggerEvents(this);
  re::PhysXCollisionWorld::updateCharacterControllerVelocities(this);
  if (physx::shdfnd::g_isLockingEnabled != v3)
  {
    physx::shdfnd::g_isLockingEnabled = v3;
  }
}

uint64_t re::BucketArray<re::PhysXManifold,256ul>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::PhysXManifold,256ul>::operator[](v1, i);
      result = re::DynamicArray<unsigned long>::deinit(v4 + 16);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

void re::PhysXCollisionWorld::updateCharacterControllerVelocities(re::PhysXCollisionWorld *this)
{
  v2 = (*(**(this + 20) + 16))(*(this + 20));
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = (*(**(this + 20) + 24))(*(this + 20), v4);
      v6 = (*(*v5 + 160))(v5);
      re::internal::PhysXCapsuleController::updateVelocity(v6, v7);
      v4 = (v4 + 1);
    }

    while (v3 != v4);
  }
}

void re::PhysXCollisionWorld::updateFromPhysics(re::PhysXCollisionWorld *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 7022, this);
  v2 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v3 = v2 & 1;
  re::BucketArray<re::PhysXManifold,256ul>::clear(this + 176);
  re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(this + 22, (*(this + 27) + 255) >> 8);
  (*(**(this + 19) + 440))();
  v4 = *(this + 21);
  if (v4)
  {
    re::PhysXCPUDispatcher::reset(v4);
  }

  if (physx::shdfnd::g_isLockingEnabled != v3)
  {
    physx::shdfnd::g_isLockingEnabled = v3;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5);
}

BOOL re::PhysXCollisionWorld::doContactTest(re::PhysXCollisionWorld *this, re::CollisionObject *a2)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v4 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = v4 & 1;
  v26[0] = 0;
  v26[1] = 0;
  v27 = -1;
  v21 = 0u;
  v22 = -1;
  v23 = 0;
  v24 = v26;
  v25 = 1;
  v20 = &unk_1F5CCE3B8;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 7;
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v16[0] = &unk_1F5CCE250;
  v16[1] = 0;
  v16[2] = v7;
  v17 = 1;
  v8 = (*(*v6 + 184))(v6);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = re::PhysXCollisionObject::pxShape(a2, v10, v15);
      v13 = *(this + 19);
      (*(*v12 + 80))(v29);
      v28 = v29;
      if ((*(*v13 + 712))(v13, v29, v15, &v20, v18, v16))
      {
        break;
      }

      v10 = (v10 + 1);
      v11 = v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    v11 = 0;
  }

  if (physx::shdfnd::g_isLockingEnabled != v5)
  {
    physx::shdfnd::g_isLockingEnabled = v5;
  }

  return v11;
}

uint64_t re::PhysXCollisionWorld::doContactPairTest(re::PhysXCollisionWorld *this, re::GeometricObjectBase **a2, re::GeometricObjectBase **a3)
{
  v21 = *MEMORY[0x1E69E9840];
  re::GeometricObjectBase::aabb(v20, a2[2]);
  re::GeometricObjectBase::aabb(v19, a3[2]);
  v5 = vcgtq_f32(v20[0], v19[1]);
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = vcgtq_f32(v19[0], v20[1]);
  v6.i32[3] = v6.i32[2];
  if ((vmaxvq_u32(v6) & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = (*(*a2[3] + 184))(a2[3]);
  v8 = (*(*a3[3] + 184))(a3[3]);
  if (!v7)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = re::PhysXCollisionObject::pxShape(a2, v10, v17);
    if (v9)
    {
      break;
    }

LABEL_9:
    result = 0;
    v10 = (v10 + 1);
    if (v10 == v7)
    {
      return result;
    }
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    v14 = re::PhysXCollisionObject::pxShape(a3, v13, v16);
    (*(*v12 + 80))(v20, v12);
    v19[0].i64[0] = v20;
    (*(*v14 + 80))(v19, v14);
    v18 = v19;
    if (physx::PxGeometryQuery::overlap(v20, v17, v19, v16))
    {
      return 1;
    }

    v13 = (v13 + 1);
    if (v9 == v13)
    {
      goto LABEL_9;
    }
  }
}

uint64_t re::PhysXCollisionWorld::rayCast(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = (physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled) & 1;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  v10 = 0;
  v11 = *a3;
  v12 = *(a2 + 32);
  v15[1] = 0;
  v15[2] = 0;
  v16 = -1;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v25 = v28;
  v22 = 0;
  v23 = 0;
  v21 = 2139095039;
  v24 = 0;
  v26 = 32 * (v11 == 1);
  v15[0] = &unk_1F5CCE2B0;
  v27 = a4;
  do
  {
    v13 = &v15[v10];
    v13[13] = 0;
    v13[14] = 0;
    *(v13 + 30) = -1;
    *(v13 + 62) = 0;
    v13[17] = 0;
    v13[18] = 0;
    v13[16] = 0;
    *(v13 + 39) = 0;
    *(v13 + 40) = 0;
    v10 += 8;
    *(v13 + 38) = 2139095039;
  }

  while (v10 != 256);
  v28[2048] = v11;
  v29 = v12;
  if (v11 >= 3)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Unsupported collision query type!", "!Unreachable code", "toPhysX", 89);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = (*(**(a1 + 152) + 696))();
    if (physx::shdfnd::g_isLockingEnabled != v8)
    {
      physx::shdfnd::g_isLockingEnabled = v8;
    }
  }

  return result;
}

unint64_t re::BucketArray<re::CollisionCastHit,10ul>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v1, i);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

uint64_t re::PhysXCollisionWorld::convexCast(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, unsigned __int8 *a5, unint64_t a6)
{
  v10 = physx::shdfnd::g_alwaysUseLocking;
  v11 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v12 = vsubq_f32(*a4, *a3);
  v13 = vmulq_f32(v12, v12);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  v33 = vmulq_n_f32(v12, 1.0 / v14);
  result = re::BucketArray<re::CollisionCastHit,10ul>::clear(a6);
  v16 = *(a2 + 8);
  if (v16)
  {
    v17 = 0;
    v18 = *a5;
    v20[1] = 0;
    v20[2] = 0;
    v21 = -1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v28 = v31;
    v26 = 2139095039;
    v27 = 0;
    v29 = 32 * (v18 == 1);
    v20[0] = &unk_1F5CCE2F8;
    v30 = a6;
    do
    {
      v19 = &v20[v17];
      v19[12] = 0;
      v19[13] = 0;
      *(v19 + 28) = -1;
      *(v19 + 58) = 0;
      v19[16] = 0;
      v19[17] = 0;
      v19[15] = 0;
      v17 += 7;
      *(v19 + 36) = 2139095039;
    }

    while (v17 != 224);
    v31[1792] = v18;
    v32 = v14;
    if (v18 >= 3)
    {
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Unsupported collision query type!", "!Unreachable code", "toPhysX", 89);
      result = _os_crash();
      __break(1u);
      return result;
    }

    result = (*(**(a1 + 152) + 704))(v14, 0.0);
  }

  if (physx::shdfnd::g_isLockingEnabled != ((v10 | v11) & 1))
  {
    physx::shdfnd::g_isLockingEnabled = (v10 | v11) & 1;
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::contacts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v34[6] = *MEMORY[0x1E69E9840];
  v32[1] = 0;
  v32[0] = 0;
  v33 = 7;
  v6 = *(a2 + 32);
  v30[0] = &unk_1F5CCE250;
  v30[1] = 0;
  v30[2] = v6;
  v31 = 1;
  v18 = 0u;
  v19 = -1;
  v20 = 0;
  v21 = 0;
  v22 = 0u;
  v25 = &v29;
  v23 = 2139095039;
  v24 = 0;
  v26 = 32;
  v17 = &unk_1F5CCE350;
  v27 = a2;
  v28 = a3;
  do
  {
    v7 = &v17 + v5;
    *(v7 + 13) = 0;
    *(v7 + 14) = 0;
    *(v7 + 30) = -1;
    *(v7 + 62) = 0;
    *(v7 + 17) = 0;
    *(v7 + 18) = 0;
    *(v7 + 16) = 0;
    v5 += 56;
    *(v7 + 38) = 2139095039;
  }

  while (v5 != 1792);
  result = (*(**(a2 + 24) + 184))(*(a2 + 24));
  if (result)
  {
    v9 = result;
    v10 = 0;
    do
    {
      v11 = re::PhysXCollisionObject::pxShape(a2, v10, v16);
      v12 = *(a1 + 152);
      (*(*v11 + 80))(v34);
      v14 = 0;
      v15 = 1065353216;
      v13 = 512;
      result = (*(*v12 + 704))(v12, v34, v16, &v14, &v17, &v13, v32, v30, 0.0, 0.0, 0);
      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::overlap@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 152);
  LOWORD(v25) = 2;
  v7 = (*(*v6 + 152))(v6, &v25);
  v8 = v7;
  v9 = v7;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = -1;
  v28 = 0;
  v29 = v34;
  v30 = v8;
  v31 = 0;
  v25 = &unk_1F5CCE3B8;
  v10 = (*(**(a1 + 152) + 712))();
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v11 = v31;
  v12 = v28;
  if (v31 + v28)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = (v29 + v13);
      if (v17 >= v11)
      {
        v18 = v26;
      }

      v19 = *(*v18 + 16);
      if ((*(v19 + 32) & a2) != 0)
      {
        v20 = *(a3 + 8);
        if (v16 >= v20)
        {
          v21 = v16 + 1;
          if (v20 < v16 + 1)
          {
            if (*a3)
            {
              v22 = 2 * v20;
              if (!v20)
              {
                v22 = 8;
              }

              if (v22 <= v21)
              {
                v23 = v16 + 1;
              }

              else
              {
                v23 = v22;
              }

              v10 = re::DynamicArray<float *>::setCapacity(a3, v23);
              v14 = *(a3 + 24);
            }

            else
            {
              v10 = re::DynamicArray<float *>::setCapacity(a3, v21);
              v14 = *(a3 + 24) + 1;
            }
          }

          v16 = *(a3 + 16);
          v15 = *(a3 + 32);
          v11 = v31;
          v12 = v28;
        }

        *(v15 + 8 * v16++) = v19;
        *(a3 + 16) = v16;
        *(a3 + 24) = ++v14;
      }

      ++v17;
      v13 += 24;
    }

    while (v17 < v11 + v12);
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

uint64_t re::PhysXCollisionWorld::overlaps(re::PhysXCollisionWorld *this, re::CollisionObject *a2, re::ContactSetCollection *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = *(this + 19);
  LOWORD(v42) = 3;
  v7 = (*(*v6 + 152))(v6, &v42);
  v8 = v7;
  v9 = v7;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v10 = v41;
  v33[0] = 0;
  v33[1] = 0;
  v34 = -1;
  v35 = 0;
  v36 = v41;
  v37 = v8;
  v38 = 0;
  v32 = &unk_1F5CCE3B8;
  v29 = 0;
  v30 = 0;
  v31 = 7;
  v11 = *(a2 + 4);
  v25 = &unk_1F5CCE250;
  v26 = 0;
  v27 = v11;
  v28 = 1;
  v12 = *((*(**(a2 + 2) + 16))(*(a2 + 2)) + 8);
  (*(**(a2 + 2) + 40))(&v42);
  v22 = v44;
  v23 = v42;
  v24 = v43;
  (*(**(this + 19) + 712))(*(this + 19), v12, &v22, &v32);
  v15 = v38;
  if (v38 + v35)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (v17 >= v15)
      {
        v18 = v33;
      }

      else
      {
        v18 = (v36 + v16);
      }

      v19 = *(*v18 + 16);
      v20 = *a3;
      v48 = 0u;
      v49 = 0u;
      v50 = 0;
      v45 = 0;
      v46 = 0;
      v47[0] = 0;
      *(v47 + 7) = 0;
      v51 = 0;
      v52 = 0;
      v42 = v19;
      v43 = a2;
      v44 = v20;
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v44, 0);
      ++v46;
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(a3, &v42);
      re::ContactSet::~ContactSet(&v42);
      ++v17;
      v15 = v38;
      v16 += 24;
    }

    while (v17 < v38 + v35);
  }

  result = v39;
  if (v39)
  {
    if (v40)
    {
      return (*(*v39 + 40))(v39, v10, v13, v14);
    }
  }

  return result;
}

void re::PhysXCollisionWorld::contacts(re::PhysXCollisionWorld *this, re::CollisionObject *a2, re::CollisionObject *a3, re::ContactSet *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a4 + 4) = 0;
  ++*(a4 + 10);
  v4 = *(a2 + 4);
  v5 = *(a3 + 4);
  v6 = v5 & HIDWORD(v4);
  v7 = v4 & HIDWORD(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *a4 = a2;
    *(a4 + 1) = a3;
    re::GeometricObjectBase::aabb(&v29, *(a2 + 2));
    re::GeometricObjectBase::aabb(v35, *(a3 + 2));
    v12 = vcgtq_f32(v29, v35[1]);
    v12.i32[3] = v12.i32[2];
    if ((vmaxvq_u32(v12) & 0x80000000) == 0)
    {
      v13 = vcgtq_f32(v35[0], v30);
      v13.i32[3] = v13.i32[2];
      if ((vmaxvq_u32(v13) & 0x80000000) == 0)
      {
        v14 = (*(**(a2 + 3) + 184))(*(a2 + 3));
        v15 = (*(**(a3 + 3) + 184))(*(a3 + 3));
        if (v14)
        {
          v16 = v15;
          v17 = 0;
          while (1)
          {
            v18 = re::PhysXCollisionObject::pxShape(a2, v17, v28);
            if (v16)
            {
              break;
            }

LABEL_13:
            v17 = (v17 + 1);
            if (v17 == v14)
            {
              return;
            }
          }

          v19 = v18;
          v20 = 0;
          while (1)
          {
            v21 = re::PhysXCollisionObject::pxShape(a3, v20, v27);
            v24 = 0.0;
            (*(*v19 + 80))(&v29, v19);
            v35[0].i64[0] = &v29;
            (*(*v21 + 80))(v35, v21);
            v23[0].i64[0] = v35;
            if (!physx::PxGeometryQuery::computePenetration(&v25, &v24, &v29, v28, v35, v27))
            {
              break;
            }

            (*(**(a2 + 2) + 40))(v35);
            (*(**(a3 + 2) + 40))(v23);
            *&v22 = v25;
            DWORD2(v22) = v26;
            v30 = v23[0];
            v29 = v35[0];
            v31 = v22;
            v32 = 0;
            v33 = 0;
            v34 = -v24;
            re::DynamicArray<re::GeomInstance>::add((a4 + 16), &v29);
            v20 = (v20 + 1);
            if (v16 == v20)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }
}

float re::PhysXCollisionWorld::closestPoint(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  *a4 = *a2;
  v7 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v8 = v7 & 1;
  v9 = (*(**(a3 + 24) + 184))(*(a3 + 24));
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = INFINITY;
    do
    {
      v13 = re::PhysXCollisionObject::pxShape(a3, v11, v27);
      v25 = *a2;
      v26 = *(a2 + 2);
      (*(*v13 + 80))(v28);
      v23 = v28;
      v18 = physx::PxGeometryQuery::pointDistance(&v25, v28, v27, &v23, v14, v15, v16, v17);
      if (v18 < 0.0)
      {
        v18 = INFINITY;
      }

      if (v18 < v12)
      {
        if (v18 <= 0.0)
        {
          v21 = *a2;
          v20 = a2[1];
        }

        else
        {
          LODWORD(v19) = v24;
          v20 = v19;
          v21 = v23;
        }

        *a4 = v21;
        *(a4 + 8) = v20;
        v12 = v18;
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  else
  {
    v12 = INFINITY;
  }

  if (physx::shdfnd::g_isLockingEnabled != v8)
  {
    physx::shdfnd::g_isLockingEnabled = v8;
  }

  return v12;
}

double re::PhysXCollisionWorld::closestPointToRayRadian(uint64_t a1, float32x4_t *a2, uint64_t a3, int8x16_t *a4)
{
  v7 = (*(**(a3 + 24) + 184))(*(a3 + 24));
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v8.i64[0] = 0;
    v58 = 0u;
    do
    {
      v74 = v8;
      v11 = re::PhysXCollisionObject::pxShape(a3, v10, &v79);
      if ((*(*v11 + 64))(v11) == 3)
      {
        v76 = 3;
        v77 = 0;
        v78 = 0.0;
        (*(*v11 + 88))(v11, &v76);
        v75 = 0u;
        v12 = *a2;
        v13 = a2[1];
        v14 = vmulq_f32(v13, v13);
        *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
        *v14.f32 = vrsqrte_f32(v15);
        *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
        v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
        v84 = v16;
        v17.i64[0] = v80;
        v17.i32[2] = v81;
        v18 = vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL);
        v19 = vnegq_f32(v79);
        v20 = vmlaq_f32(vmulq_f32(v79, xmmword_1E30661D0), xmmword_1E3047670, v18);
        v21 = vaddq_f32(v20, v20);
        v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v19), v22, v18);
        v24 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v22, v79, 3), xmmword_1E3047670), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
        v25 = vmlaq_f32(vmulq_f32(v79, xmmword_1E30661E0), xmmword_1E3047680, v18);
        v26 = vaddq_f32(v25, v25);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v19), v27, v18);
        v29 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v27, v79, 3), xmmword_1E3047680), vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
        v30 = vmlaq_f32(vmulq_f32(v79, xmmword_1E30661F0), xmmword_1E30476A0, v18);
        v31 = vaddq_f32(v30, v30);
        v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
        v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v19), v32, v18);
        v34 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v32, v79, 3), xmmword_1E30476A0), vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
        v35 = 0.0;
        v36 = -1;
        do
        {
          v37 = v36;
          v38 = vaddq_f32(v17, vmulq_n_f32(v24, v77.f32[0] * v36));
          v39 = -1;
          do
          {
            v40 = v39;
            v41 = vaddq_f32(v38, vmulq_n_f32(v29, v77.f32[1] * v39));
            v42 = -3;
            do
            {
              v43 = vaddq_f32(v41, vmulq_n_f32(v34, v78 * (v42 + 2)));
              v44 = vsubq_f32(v43, v12);
              v45 = vmulq_f32(v44, v44);
              *&v46 = v45.f32[2] + vaddv_f32(*v45.f32);
              *v45.f32 = vrsqrte_f32(v46);
              *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v46, vmul_f32(*v45.f32, *v45.f32)));
              v47 = vmulq_f32(v16, vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v46, vmul_f32(*v45.f32, *v45.f32))).f32[0]));
              v48 = vaddv_f32(*v47.f32);
              if ((v47.f32[2] + v48) > v35)
              {
                v75 = v43;
                v35 = v47.f32[2] + v48;
              }

              v42 += 2;
            }

            while (v42 < 0);
            v39 = v40 + 2;
          }

          while (v40 < 0);
          v36 = v37 + 2;
        }

        while (v37 < 0);
        v83 = v35;
        v82[0] = a2;
        v82[1] = &v84;
        v82[2] = a2;
        v82[3] = &v83;
        v82[4] = &v75;
        v56 = vaddq_f32(v17, vmulq_n_f32(v24, v77.f32[0]));
        v64 = vmulq_n_f32(v29, -v77.f32[1]);
        v49 = vaddq_f32(v64, v56);
        v72 = vmulq_n_f32(v34, v78);
        v59 = vaddq_f32(v72, v49);
        v61 = v17;
        v68 = v77;
        v70 = vmulq_n_f32(v34, -v78);
        v66 = vaddq_f32(v70, v49);
        v52 = v29;
        v54 = v24;
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v59, v66);
        v55 = vaddq_f32(v61, vmulq_n_f32(v54, -v68.f32[0]));
        v62 = vaddq_f32(v64, v55);
        v65 = vaddq_f32(v70, v62);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v66, v65);
        v63 = vaddq_f32(v72, v62);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v65, v63);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v63, v59);
        v53 = vmulq_lane_f32(v52, v68, 1);
        v57 = vaddq_f32(v53, v56);
        v69 = vaddq_f32(v72, v57);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v59, v69);
        v60 = vaddq_f32(v70, v57);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v66, v60);
        v67 = vaddq_f32(v53, v55);
        v71 = vaddq_f32(v70, v67);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v65, v71);
        v73 = vaddq_f32(v72, v67);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v63, v73);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v69, v60);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v60, v71);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v71, v73);
        boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(v82, v73, v69);
        v50.f32[0] = v83;
        v8 = v74;
        v58 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v50, v74), 0), v75, v58);
        if (v83 > v74.f32[0])
        {
          v8.f32[0] = v83;
        }
      }

      else
      {
        v8 = v74;
      }

      v10 = (v10 + 1);
    }

    while (v10 != v9);
    if (v8.f32[0] > 0.0)
    {
      *a4 = v58;
    }
  }

  else
  {
    v8.i64[0] = 0;
  }

  return *v8.i64;
}

uint64_t re::PhysXCollisionWorld::numCollisionObjects(re::PhysXCollisionWorld *this)
{
  v2 = *(this + 19);
  v7 = 1;
  v3 = (*(*v2 + 152))(v2, &v7);
  v4 = *(this + 19);
  v6 = 2;
  return (*(*v4 + 152))(v4, &v6) + v3;
}

uint64_t re::PhysXCollisionWorld::collisionObjectAtIndex(re::PhysXCollisionWorld *this, unint64_t a2)
{
  v4 = *(this + 19);
  v13 = 1;
  v5 = (*(*v4 + 152))(v4, &v13);
  v6 = v5 > a2;
  if (v5 <= a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v8 = *(this + 19);
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v11 = v9;
  if ((*(*v8 + 160))(v8, &v11, &v12, 1, a2 - v7))
  {
    return *(v12 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t re::PhysXCollisionWorld::addCollisionObject(re::PhysXCollisionWorld *this, re::CollisionObject *a2)
{
  v4 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = physx::shdfnd::g_alwaysUseLocking | v4;
  if (*(this + 390) == 1)
  {
    *(this + 390) = 0;
    if (re::PhysXCollisionWorld::canRecreateScene(this))
    {
      (*(**(this + 19) + 488))(&v11);
      v6.i64[0] = v11;
      v6.i32[2] = v12;
      v13 = v6;
      re::PhysXCollisionWorld::createScene(this, &v13, *(this + 96));
    }
  }

  v7 = v5 & 1;
  v8 = *(a2 + 3);
  result = (*(**(this + 19) + 88))(*(this + 19), v8, 0);
  if (*(v8 + 8) == 5 && v8 != 0)
  {
    ++*(this + 50);
  }

  if (physx::shdfnd::g_isLockingEnabled != v7)
  {
    physx::shdfnd::g_isLockingEnabled = v7;
  }

  return result;
}

BOOL re::PhysXCollisionWorld::removeCollisionObject(re::PhysXCollisionWorld *this, re::CollisionObject *a2)
{
  v4 = physx::shdfnd::g_alwaysUseLocking;
  v5 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(this + 10);
    if (v7)
    {
      v8 = 0;
      v9 = (*(this + 3) + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 10;
        if (v10 < 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          LODWORD(v8) = *(this + 10);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 != v7)
    {
      v11 = *(this + 10);
      do
      {
        v12 = *(this + 3) + 40 * v8;
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);
        v15 = (v12 + 16);
        if (v13 == a2 || v14 == a2)
        {
          (*(*v6 + 32))(v6);
          re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::remove(this + 8, v15);
          v11 = *(this + 10);
        }

        if (v11 <= v8 + 1)
        {
          v17 = v8 + 1;
        }

        else
        {
          v17 = v11;
        }

        while (v17 - 1 != v8)
        {
          LODWORD(v8) = v8 + 1;
          if ((*(*(this + 3) + 40 * v8 + 8) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v8) = v17;
LABEL_26:
        ;
      }

      while (v8 != v7);
    }
  }

  v18 = *(a2 + 3);
  if ((*(*v18 + 56))(v18))
  {
    (*(**(this + 19) + 112))(*(this + 19), v18, 1);
  }

  if (v18[4] == 5)
  {
    --*(this + 50);
  }

  result = re::PhysXCollisionWorld::canRecreateScene(this);
  *(this + 390) = result;
  if (physx::shdfnd::g_isLockingEnabled != ((v4 | v5) & 1))
  {
    physx::shdfnd::g_isLockingEnabled = (v4 | v5) & 1;
  }

  return result;
}

uint64_t re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = ((v4 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = 0x7FFFFFFFLL;
  while (1)
  {
    v10 = v8 + 40 * v7;
    v13 = *(v10 + 16);
    v12 = v10 + 16;
    v11 = v13;
    if (v13 == v3 && *(v12 + 8) == v4)
    {
      break;
    }

    if (v11 == v4 && *(v12 + 8) == v3)
    {
      break;
    }

    v9 = v7;
    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v15 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
  if (v9 == 0x7FFFFFFF)
  {
    *(v6 + 4 * v5) = v15;
  }

  else
  {
    *(v8 + 40 * v9 + 8) = *(v8 + 40 * v9 + 8) & 0x80000000 | v15;
  }

  v16 = *(a1 + 16);
  v17 = v16 + 40 * v7;
  v20 = *(v17 + 8);
  v19 = (v17 + 8);
  v18 = v20;
  if (v20 < 0)
  {
    *v19 = v18 & 0x7FFFFFFF;
    v16 = *(a1 + 16);
    v18 = *(v16 + 40 * v7 + 8);
  }

  v21 = *(a1 + 40);
  *(v16 + 40 * v7 + 8) = *(a1 + 36) | v18 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v21 + 1;
  return 1;
}

float32x4_t boxClosestPointToRayRadian(re::RayF const&,physx::PxBoxGeometry const&,physx::PxTransform const&,re::Vector3<float> &)::$_3::operator()(uint64_t a1, float32x4_t result, float32x4_t a3)
{
  v3 = *(a1 + 16);
  v4 = v3[1];
  v5 = vsubq_f32(result, *v3);
  v6 = vmulq_f32(v5, v5);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  v9 = vrsqrte_f32(v7);
  v8 = vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9)));
  v9.i32[1] = 0;
  v10 = vmulq_n_f32(v5, vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8))).f32[0]);
  v11 = vmulq_f32(v10, v4);
  if ((v11.f32[2] + vaddv_f32(*v11.f32)) > 0.00001)
  {
    v12 = vsubq_f32(a3, *v3);
    v13 = vmulq_f32(v12, v12);
    v9.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v9);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v9, vmul_f32(*v13.f32, *v13.f32)));
    v14 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v9, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
    v15 = vmulq_f32(v4, v14);
    if ((v15.f32[2] + vaddv_f32(*v15.f32)) > 0.00001)
    {
      v16 = vmulq_f32(v10, v14);
      if ((v16.f32[2] + vaddv_f32(*v16.f32)) < 0.99999)
      {
        v17 = **a1;
        v18 = vsubq_f32(result, v17);
        v19 = vsubq_f32(a3, v17);
        v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
        v21 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
        v22 = vmlaq_f32(vmulq_f32(v21, vnegq_f32(v18)), v19, v20);
        v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
        v24 = vmulq_f32(v22, v22);
        *&v25 = v24.f32[1] + (v24.f32[2] + v24.f32[0]);
        *v24.f32 = vrsqrte_f32(v25);
        *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
        v26 = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
        v27 = **(a1 + 8);
        v28 = vmulq_f32(v27, v26);
        v29 = vsubq_f32(v27, vmulq_n_f32(v26, v28.f32[2] + vaddv_f32(*v28.f32)));
        v30 = vmulq_f32(v29, v29);
        *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
        *v30.f32 = vrsqrte_f32(v31);
        *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
        v32 = vmulq_n_f32(v29, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
        v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
        v34 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v32)), v18, v33);
        v35 = vmulq_f32(v26, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
        v30.f32[0] = v35.f32[2] + vaddv_f32(*v35.f32);
        v36 = 0.0;
        if (v30.f32[0] <= 0.0)
        {
          v38 = vmlaq_f32(vmulq_f32(v33, vnegq_f32(v19)), v32, v21);
          v39 = vmulq_f32(v26, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
          v40 = vaddv_f32(*v39.f32);
          v37 = 0.0;
          if ((v39.f32[2] + v40) <= 0.0)
          {
            v41 = vmulq_f32(v18, v18);
            v42 = vmulq_f32(v19, v19);
            *v41.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v42.i8), vzip2_s32(*v41.i8, *v42.i8))));
            _Q3 = vmulq_f32(vdivq_f32(v18, vdupq_lane_s32(*v41.i8, 0)), v32);
            v44 = vmulq_f32(vdivq_f32(v19, vdupq_lane_s32(*v41.i8, 1)), v32);
            *v44.i8 = vadd_f32(*&vzip2q_s32(_Q3, v44), vadd_f32(vzip1_s32(*_Q3.i8, *v44.i8), vzip2_s32(*_Q3.i8, *v44.i8)));
            __asm { FMOV            V3.2S, #1.0 }

            *_Q3.i8 = vmls_f32(*_Q3.i8, *v44.i8, *v44.i8);
            *v44.i8 = vmul_f32(*v41.i8, vsqrt_f32(vbic_s8(*_Q3.i8, vcltz_f32(*_Q3.i8))));
            LODWORD(v36) = vdiv_f32(*v44.i8, vadd_f32(*v44.i8, vdup_lane_s32(*v44.i8, 1))).u32[0];
            v49 = vmulq_f32(v27, v32);
            v37 = v49.f32[2] + vaddv_f32(*v49.f32);
          }
        }

        else
        {
          v37 = 0.0;
        }

        if (v37 > **(a1 + 24))
        {
          result = vaddq_f32(vmulq_n_f32(a3, v36), vmulq_n_f32(result, 1.0 - v36));
          **(a1 + 32) = result;
          **(a1 + 24) = v37;
        }
      }
    }
  }

  return result;
}

uint64_t re::BucketArray<re::PhysXManifold,256ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 8)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 8)) + 56 * a2;
}

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (10 * v3 < v2 + 1)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::setBucketsCapacity(a1, (v2 + 10) / 0xA);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 / 0xA)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 / 0xA));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 80 * (v2 % 0xA);
}

uint64_t *re::BucketArray<re::CollisionCastHit,10ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (10 * a2 > result[5])
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 800, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::CollisionCastHit,10ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::CollisionCastHit,10ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::PhysXManifold,256ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 8)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 14336, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::DynamicOverflowArray<re::PhysXCollisionWorld::createScene(re::Vector3<float> const&,re::CollisionWorld::CollisionFlags)::ControllerInfo,4ul>::setCapacity(void *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<re::PhysXCollisionWorld::createScene(re::Vector3<float> const&,re::CollisionWorld::CollisionFlags)::ControllerInfo,4ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = result[4];
  }

  if (v7 != a2)
  {
    v8 = result[1];
    if (v8 <= a2 && (a2 > 4 || (v6 & 1) == 0))
    {
      if (a2 < 5)
      {
        v13 = result + 4;
        v14 = v3[5];
        if (v6)
        {
          v15 = v3 + 4;
        }

        else
        {
          v15 = v3[5];
        }

        memcpy(v13, v15, v8 << 6);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, a2 << 6, 16);
      if (v9)
      {
        v11 = v9;
        if (v3[2])
        {
          v12 = v3 + 4;
        }

        else
        {
          v12 = v3[5];
        }

        result = memcpy(v9, v12, v3[1] << 6);
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, v3[5]);
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        v3[4] = a2;
        v3[5] = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, a2 << 6, *(*v3 + 8));
        result = _os_crash();
        __break(1u);
      }
    }
  }

  return result;
}

void *re::DynamicOverflowArray<physx::PxActor *,32ul>::setCapacity(void *result, unint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (a2 && !v4)
  {
    result = re::DynamicOverflowArray<physx::PxActor *,32ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
LABEL_4:
    *(v3 + 4) = v5;
    return result;
  }

  v6 = *(result + 4);
  if (v6)
  {
    v7 = 32;
  }

  else
  {
    v7 = result[3];
  }

  if (v7 != a2)
  {
    v8 = result[1];
    if (v8 <= a2 && (a2 > 0x20 || (v6 & 1) == 0))
    {
      if (a2 < 0x21)
      {
        v13 = result + 3;
        v14 = v3[4];
        if (v6)
        {
          v15 = v3 + 3;
        }

        else
        {
          v15 = v3[4];
        }

        memcpy(v13, v15, 8 * v8);
        result = (*(*v4 + 40))(v4, v14);
        v5 = *(v3 + 4) | 1;
        goto LABEL_4;
      }

      v9 = (*(*v4 + 32))(*result, 8 * a2, 8);
      if (v9)
      {
        v11 = v9;
        if (v3[2])
        {
          v12 = v3 + 3;
        }

        else
        {
          v12 = v3[4];
        }

        result = memcpy(v9, v12, 8 * v3[1]);
        v16 = *(v3 + 4);
        if ((v16 & 1) == 0)
        {
          result = (*(**v3 + 40))(*v3, v3[4]);
          v16 = *(v3 + 4);
        }

        *(v3 + 4) = v16 & 0xFFFFFFFE;
        v3[3] = a2;
        v3[4] = v11;
      }

      else
      {
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, 8 * a2, *(*v3 + 8));
        result = _os_crash();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t re::CastHitCallback<physx::PxRaycastHit>::processTouches(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      re::CastHitCallback<physx::PxRaycastHit>::addHit(a1, a2);
      a2 += 64;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t re::CastHitCallback<physx::PxRaycastHit>::finalizeQuery(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    return re::CastHitCallback<physx::PxRaycastHit>::addHit(result, result + 8);
  }

  return result;
}

uint64_t re::CastHitCallback<physx::PxSweepHit>::processTouches(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      re::CastHitCallback<physx::PxSweepHit>::addHit(a1, a2);
      a2 += 56;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t re::CastHitCallback<physx::PxSweepHit>::finalizeQuery(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    return re::CastHitCallback<physx::PxSweepHit>::addHit(result, result + 8);
  }

  return result;
}

uint64_t re::CastHitCallback<physx::PxSweepHit>::addHit(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(*(a1 + 88));
  *v4 = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 2139095039;
  *(v4 + 52) = 0xFFFFFFFF00000000;
  *(v4 + 64) = 0;
  v6 = *(a1 + 88);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v6, v7 - 1);
    *(v8 + 48) = *(a2 + 48) / *(a1 + 1892);
    *(v8 + 16) = *(a2 + 24);
    *(v8 + 32) = *(a2 + 36);
    v9 = *(a2 + 8);
    v10 = *(*a2 + 16);
    *v8 = v10;
    result = re::internal::nvphysx::findShapeIndex(v10, v9);
    *(v8 + 52) = result;
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::ContactHitCallback<physx::PxSweepHit>::processTouches(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = (a2 + 48);
    do
    {
      v6 = *(*(v5 - 6) + 16);
      v7 = *(a1 + 96);
      v15.i64[0] = *(a1 + 88);
      v15.i64[1] = v6;
      v8 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(v7, &v15);
      if (!v8)
      {
        v11 = *(a1 + 96);
        v12 = *v11;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        *&v19 = 0;
        *(&v19 + 7) = 0;
        v23 = 0;
        v24 = 0;
        v18.i64[0] = 0;
        v18.i32[2] = 0;
        v16 = v15;
        v17 = v12;
        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v17, 0);
        ++v18.i32[2];
        v8 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(v11, &v16);
        re::ContactSet::~ContactSet(&v16);
      }

      v9.i64[0] = *(v5 - 3);
      v9.i32[2] = *(v5 - 4);
      v10.i64[0] = *(v5 - 3);
      v10.i32[2] = *(v5 - 1);
      v13 = *v5;
      v5 += 14;
      v16 = vaddq_f32(v9, vmulq_n_f32(v10, v13));
      v17 = v9;
      v18 = v10;
      v19 = 0uLL;
      *&v20 = v13;
      re::DynamicArray<re::GeomInstance>::add((v8 + 16), &v16);
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (v6 == v8)
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 8) + 4 * ((v8 ^ v6) % v2));
  if (v9 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  while (1)
  {
    v11 = v10 + 144 * v9;
    v14 = *(v11 + 16);
    result = v11 + 16;
    v13 = v14;
    if (v14 == v3 && *(result + 8) == v4)
    {
      break;
    }

    if (v13 == v4 && *(result + 8) == v3)
    {
      break;
    }

    v9 = *(v10 + 144 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return result;
}

void *re::FixedArray<physx::PxOverlapHit>::init<>(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    v4 = result;
    result = (*(*a2 + 32))(a2, 24 * a3, 8);
    v4[2] = result;
    if (result)
    {
      v6 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          *result = 0uLL;
          result[2] = 0xFFFFFFFFLL;
          result += 3;
          --v6;
        }

        while (v6);
      }

      *result = 0u;
      result[2] = 0xFFFFFFFFLL;
    }

    else
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

re::Allocator *re::internal::nvphysx::initPhysX(re::internal::nvphysx *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 24, 8);
  result = re::Allocator::Allocator(v2, "PhysX", 1);
  *result = &unk_1F5CCF7F8;
  return result;
}

re *re::internal::destroyPersistent<re::MallocAllocator>(re *result, uint64_t a2, re::Allocator *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::Allocator::~Allocator(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::internal::nvphysx::findShapeIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if ((*(*v3 + 184))(v3) == 1)
  {
    return 0;
  }

  if (!(*(*v3 + 184))(v3))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  while (1)
  {
    v6 = 0;
    (*(*v3 + 192))(v3, &v6, 1, v4);
    if (v6 == a2)
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 >= (*(*v3 + 184))(v3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

double re::TriangleMeshShape::massProperties(uint64_t a1, _DWORD *a2, void *a3, _OWORD *a4)
{
  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  *a3 = 0;
  a3[1] = 0;
  *a2 = 0;
  return result;
}

uint64_t *re::introspect_ShapeType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE19D588, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19D590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D590))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19D5C0, "ShapeType", 4, 4, 1, 1);
      qword_1EE19D5C0 = &unk_1F5D0C658;
      qword_1EE19D600 = &re::introspect_ShapeType(BOOL)::enumTable;
      dword_1EE19D5D0 = 9;
      __cxa_guard_release(&qword_1EE19D590);
    }

    if (v2)
    {
      if (_MergedGlobals_128)
      {
        return &qword_1EE19D5C0;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v62);
      v3 = _MergedGlobals_128;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v62);
      if (v3)
      {
        return &qword_1EE19D5C0;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_128)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_128 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19D5C0, a2);
    v59 = 0x86222B7974B6;
    v60 = "ShapeType";
    v63 = 208862;
    v64 = "int";
    v9 = v62[0];
    v10 = v62[1];
    if (v63)
    {
      if (v63)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v60);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19D588);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Unknown";
      qword_1EE19D608 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 3;
      *(v38 + 2) = "Box";
      qword_1EE19D610 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 4;
      *(v40 + 2) = "Capsule";
      qword_1EE19D618 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 7;
      *(v42 + 2) = "Compound";
      qword_1EE19D620 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 9;
      *(v44 + 2) = "Cone";
      qword_1EE19D628 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "ConvexPolyhedron";
      qword_1EE19D630 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 8;
      *(v48 + 2) = "Cylinder";
      qword_1EE19D638 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 1;
      *(v50 + 2) = "Empty";
      qword_1EE19D640 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 6;
      *(v52 + 2) = "Plane";
      qword_1EE19D648 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 11;
      *(v54 + 2) = "Rectangle";
      qword_1EE19D650 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 2;
      *(v56 + 2) = "Sphere";
      qword_1EE19D658 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 8) = 12;
      *(v58 + 16) = "TriangleMesh";
      qword_1EE19D660 = v58;
      __cxa_guard_release(&qword_1EE19D588);
    }
  }

  v11 = qword_1EE19D600;
  v63 = v9;
  v64 = v10;
  re::TypeBuilder::beginEnumType(v62, &v59, 1, 1, &v63);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v61.var0 = 2 * v16;
        v61.var1 = v15;
        re::TypeBuilder::addEnumConstant(v62, v20, &v61);
        if (*&v61.var0)
        {
          if (*&v61.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v61.var0 = 2 * v25;
          v61.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v62, v29, &v61);
          if (*&v61.var0)
          {
            if (*&v61.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v62, v31);
  xmmword_1EE19D5E0 = v61;
  if (v59)
  {
    if (v59)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19D5C0;
}

uint64_t *re::CollisionShape::localTransform(re::CollisionShape *this)
{
  if ((atomic_load_explicit(&qword_1EE19D598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D598))
  {
    qword_1EE19D5A0 = 0;
    unk_1EE19D5A8 = 0;
    qword_1EE19D5B0 = 0;
    unk_1EE19D5B8 = 0x3F80000000000000;
    __cxa_guard_release(&qword_1EE19D598);
  }

  return &qword_1EE19D5A0;
}

uint64_t re::PhysXManifoldContainer::rawManifold(re::PhysXManifoldContainer *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (*(v2 + 40) <= a2)
  {
    return 0;
  }

  if (*(v2 + 8) <= a2 >> 8)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(v2 + 16))
  {
    v3 = v2 + 24;
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return *(v3 + 8 * (a2 >> 8)) + 56 * a2;
}

float32_t re::PhysXManifoldContainer::setContacts(re::PhysXManifoldContainer *this, void *a2, re::ContactSet *a3, signed __int32 a4, int a5, char a6, int32x4_t a7, int32x4_t a8, int32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14)
{
  if (a5)
  {
    if (!a2[4])
    {
      goto LABEL_22;
    }

    a7.i32[0] = 0;
    v14 = -*(a2[6] + 12);
    a9.i32[0] = a4;
    v15 = vandq_s8(*(a3 + 5), vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(a9, a7)), 0));
    if (a4)
    {
      v14 = *(a3 + 24);
    }

    if (a5 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 80 * a4;
      v19 = 0uLL;
      while (a2[4] > v17)
      {
        v20 = a2[6] + v16;
        if (a6)
        {
          a12.i64[0] = *v20;
          a10.i64[0] = *(v20 + 12);
          v21 = a10;
          v21.i32[1] = *(v20 + 20);
          *a11.f32 = vadd_f32(vmul_f32(vrev64_s32(*a10.f32), *v21.f32), *v20);
          a12.i32[2] = *(v20 + 8);
          a11.f32[2] = a12.f32[2] + (*(v20 + 24) * a10.f32[0]);
          a13.i64[0] = *(v20 + 16);
          a13.i32[2] = *(v20 + 24);
          a13 = vnegq_f32(a13);
          v21.i64[0] = *(v20 + 32);
          v21.i32[2] = *(v20 + 40);
          a14 = vnegq_f32(v21);
        }

        else
        {
          a10.i64[0] = *(v20 + 12);
          a11 = a10;
          a11.i32[1] = *(v20 + 20);
          v22 = vmul_f32(vrev64_s32(*a10.f32), *a11.f32);
          a11.i64[0] = *v20;
          *a12.f32 = vadd_f32(v22, *v20);
          a12.f32[2] = (*(v20 + 24) * a10.f32[0]) + *(v20 + 8);
          a11.i32[2] = *(v20 + 8);
          a13.i64[0] = *(v20 + 16);
          a13.i32[2] = *(v20 + 24);
          a14.i64[0] = *(v20 + 32);
          a14.i32[2] = *(v20 + 40);
        }

        if (*(a3 + 4) <= a4 + v17)
        {
          goto LABEL_21;
        }

        v23 = (*(a3 + 6) + v18);
        *v23 = a12;
        v23[1] = a11;
        v23[2] = a13;
        v23[3] = a14;
        v23[4].n128_u32[0] = a10.i32[0];
        a11 = vaddq_f32(a11, a12);
        v19 = vaddq_f32(v19, a11);
        v15 = vaddq_f32(v15, a14);
        v24 = -a10.f32[0];
        if (v14 < v24)
        {
          v14 = v24;
        }

        ++v17;
        v16 += 48;
        v18 += 80;
        if (48 * a5 == v16)
        {
          goto LABEL_19;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_22:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    a7.i32[0] = 0;
    a8.i32[0] = a4;
    v15 = vandq_s8(*(a3 + 5), vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(a8, a7)), 0));
    v14 = *(a3 + 24);
    if (!a4)
    {
      v14 = 0.0;
    }
  }

  v19 = 0uLL;
LABEL_19:
  a10.f32[0] = (2 * a5);
  v25 = vaddq_f32(vdivq_f32(v19, vdupq_lane_s32(*a10.f32, 0)), *(a3 + 4));
  v26.i64[0] = 0x3F0000003F000000;
  v26.i64[1] = 0x3F0000003F000000;
  *(a3 + 4) = vmulq_f32(v25, v26);
  *(a3 + 5) = v15;
  *(a3 + 24) = v14;
  return v15.f32[0];
}

void re::internal::PhysXControllerHitReport::onHit(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *&a3->f64[0] = a1;
  v5 = *(a2 + 8);
  *&v5.f64[0] = vcvt_f32_f64(v5);
  v6 = *(a2 + 24);
  *&v5.f64[1] = v6;
  a3[1] = v5;
  v5.f64[0] = *(a2 + 32);
  LODWORD(v5.f64[1]) = *(a2 + 40);
  a3[2] = v5;
  LODWORD(a3[4].f64[0]) = *(a2 + 56);
  v5.f64[0] = *(a2 + 44);
  LODWORD(v5.f64[1]) = *(a2 + 52);
  a3[3] = v5;
  v7.i64[0] = (*(*a1 + 160))(a1);
  v7.i64[1] = v8;
  v9 = vmulq_f32(a3[1], v7);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  v11.i64[0] = (*(**&a3->f64[0] + 88))();
  v11.i64[1] = v12;
  v29 = v11;
  v13.i64[0] = (*(**&a3->f64[0] + 160))();
  v13.i64[1] = v14;
  v15 = vmulq_f32(v29, v13);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  v17 = (*(**a2 + 232))();
  v18 = a3->f64[0];
  if (v10 < (v16 + (v17 * -0.5)))
  {
    *(*&v18 + 76) |= 1u;
    v19 = *&a3->f64[1];
    if (*(v19 + 8))
    {
      re::CollisionObject::weakPointer(v19, from);
      if (from != (*&v18 + 96))
      {
        objc_destroyWeak((*&v18 + 96));
        *(*&v18 + 96) = 0;
        objc_moveWeak((*&v18 + 96), from);
      }

      objc_destroyWeak(from);
      (*(**(*&a3->f64[1] + 16) + 40))(from);
      *(*&v18 + 80) = *from;
    }

    else
    {
      objc_destroyWeak((*&v18 + 96));
      *(*&v18 + 96) = 0;
    }
  }

  v20 = *(*&v18 + 248);
  *(*&v18 + 248) = v20 + 1;
  if (*(*&v18 + 184))
  {
    v21 = 0;
    do
    {
      if ((*(*(*&v18 + 200) + 32 * v21 + 24))(a3) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((*&v18 + 168), v21);
      }

      else
      {
        ++v21;
      }
    }

    while (v21 < *(*&v18 + 184));
    v20 = *(*&v18 + 248) - 1;
  }

  *(*&v18 + 248) = v20;
  if (!v20)
  {
    v22 = *(*&v18 + 224);
    if (v22)
    {
      v23 = 0;
      for (i = 0; i != v22; ++i)
      {
        v25 = *(*&v18 + 224);
        if (v25 <= i)
        {
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          *from = 0u;
          v41 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          v33 = "operator[]";
          v34 = 1024;
          v35 = 789;
          v36 = 2048;
          v37 = i;
          v38 = 2048;
          v39 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v26 = *(*&v18 + 240) + v23;
        v27 = *(v26 + 32);
        v28 = *(v26 + 16);
        v30[0] = *v26;
        v30[1] = v28;
        v31 = v27;
        if (LOBYTE(v30[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(*&v18 + 168, v30 + 1, from);
          if ((from[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add((*&v18 + 168), v30 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(*&v18 + 168, v30 + 1, from);
          if (LOBYTE(from[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt((*&v18 + 168), from[1]);
          }
        }

        v23 += 40;
      }
    }
  }
}

void re::internal::PhysXControllerHitReport::onShapeHit(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  memset(&v2[1], 0, 48);
  v2[0].f64[1] = *(*(a2 + 72) + 16);
  re::internal::PhysXControllerHitReport::onHit(*(a1 + 8), a2, v2);
}

void re::internal::PhysXControllerHitReport::onControllerHit(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(&v4[1], 0, 48);
  v4[0].f64[1] = *((*(**a2 + 160))() + 136);
  re::internal::PhysXControllerHitReport::onHit(*(a1 + 8), a2, v4);
}

void re::internal::PhysXCapsuleController::~PhysXCapsuleController(re::internal::PhysXCapsuleController *this)
{
  *this = &unk_1F5CCE4B0;
  (*(**(this + 17) + 40))(*(this + 17), 0);
  (*(**(this + 19) + 8))(*(this + 19));
  *(this + 19) = 0;

  re::CharacterController::~CharacterController(this);
}

{
  re::internal::PhysXCapsuleController::~PhysXCapsuleController(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::internal::PhysXCapsuleController::pose@<Q0>(re::internal::PhysXCapsuleController *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 19);
  v4 = (*(*v3 + 32))(v3);
  v9 = 0x3F80000000000000;
  v10 = 0;
  (*(*v3 + 112))(v8, v3);
  physx::PxShortestRotation(&v9, v8, (a2 + 16));
  v6 = *v4;
  *&v6.f64[0] = vcvt_f32_f64(*v4);
  v5 = v4[1].f64[0];
  *&v6.f64[1] = v5;
  *a2 = v6;
  result.n128_u64[0] = *&v6.f64[0];
  result.n128_u32[2] = LODWORD(v6.f64[1]);
  return result;
}

uint64_t re::internal::PhysXCapsuleController::setPoseInternal(uint64_t a1, uint64_t a2)
{
  v4 = (physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled) & 1;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v5 = *(a1 + 152);
  v6 = *(a2 + 8);
  v15 = vcvtq_f64_f32(*a2);
  v16 = v6;
  (*(*v5 + 24))(v5, &v15);
  v7 = *(a2 + 16);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(v7, xmmword_1E30661E0), xmmword_1E3047680, v8);
  v10 = vaddq_f32(v9, v9);
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v7)), v11, v8);
  v13 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v11, v7, 3), xmmword_1E3047680), vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  *&v15.f64[0] = v13.i64[0];
  LODWORD(v15.f64[1]) = v13.i32[2];
  result = (*(*v5 + 120))(v5, &v15);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 1;
  if (physx::shdfnd::g_isLockingEnabled != v4)
  {
    physx::shdfnd::g_isLockingEnabled = v4;
  }

  return result;
}

void re::internal::PhysXCapsuleController::updateVelocity(re::internal::PhysXCapsuleController *this, double a2)
{
  v3 = physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v4 = physx::shdfnd::g_alwaysUseLocking | v3;
  if (*(this + 132) == 1)
  {
    LODWORD(a2) = *(this + 32);
    v5 = 0uLL;
    if (*&a2 > 0.0)
    {
      v5 = vdivq_f32(*(this + 7), vdupq_lane_s32(*&a2, 0));
    }

    *(this + 16) = v5;
    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 125) = 0;
  }

  v6 = v4 & 1;
  if (re::CharacterController::onPlatform(this))
  {
    if (*(this + 76))
    {
      v7 = re::CharacterController::onPlatform(this);
      (*(**(v7 + 16) + 40))(v15);
      v12 = vsubq_f32(v15[0], *(this + 5));
      v8.i64[0] = (*(*this + 88))(this);
      v8.i64[1] = v9;
      v10 = vaddq_f32(v12, v8);
      v11 = *(this + 19);
      v13 = vcvtq_f64_f32(*v10.f32);
      v14 = v10.f32[2];
      (*(*v11 + 24))(v11, &v13);
      *(this + 5) = v15[0];
    }

    else
    {
      objc_destroyWeak(this + 12);
      *(this + 12) = 0;
    }
  }

  if (physx::shdfnd::g_isLockingEnabled != v6)
  {
    physx::shdfnd::g_isLockingEnabled = v6;
  }
}

uint64_t re::internal::PhysXCapsuleController::move(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v6 = physx::shdfnd::g_isLockingEnabled;
  v7 = physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    v6 = 0;
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v8 = v7 & 1;
  a1[8].f32[0] = a1[8].f32[0] + a3;
  a1[8].i8[4] = 1;
  v9 = vmulq_f32(*a2, *a2);
  if ((v9.f32[2] + vaddv_f32(*v9.f32)) >= 1.0e-10)
  {
    v11.i64[0] = (*(a1->i64[0] + 160))(a1);
    v11.i64[1] = v12;
    v13 = vmulq_f32(*a2, v11);
    v60 = v13.f32[2] + vaddv_f32(*v13.f32);
    v14 = (*(a1->i64[0] + 160))(a1);
    v16 = v15;
    if (v60 > 0.0)
    {
      a1[4].i8[12] &= ~1u;
    }

    v17 = *(a1[8].i64[1] + 32);
    v18 = *(a1[8].i64[1] + 36);
    v70[0] = &unk_1F5CCE250;
    v70[1] = 0;
    v71 = v17;
    v72 = v18;
    v73 = 2;
    v67 = 0;
    v68 = v17;
    v69 = v18;
    v64[0] = &v67;
    v64[1] = v70;
    v65 = 7;
    v66 = 0;
    v19 = a1[9].i64[1];
    v20 = (*(*v19 + 32))(v19);
    v21 = *(v20 + 16);
    v22 = a1[9].i64[1];
    v23 = a2->i32[2];
    v61 = a2->i64[0];
    v62 = v23;
    v57 = *v20;
    (*(*v22 + 16))(&v63, v22, &v61, v64, 0, 0.0, a3);
    v10 = v63;
    v24 = (*(*v19 + 32))(v19);
    *v25.f32 = vcvt_f32_f64(vsubq_f64(*v24, v57));
    *&v26 = v24[1].f64[0] - v21;
    v25.i64[1] = __PAIR64__(HIDWORD(v57.f64[1]), v26);
    v58 = v25;
    v27.i64[0] = (*(a1->i64[0] + 160))(a1);
    v27.i64[1] = v28;
    v29 = vmulq_f32(v58, v27);
    v56 = v29.f32[2] + vaddv_f32(*v29.f32);
    v30 = (*(a1->i64[0] + 160))(a1);
    v31 = v56;
    v32.i64[0] = v30;
    v32.i64[1] = v33;
    v34 = vmulq_n_f32(v32, v56);
    v35 = vsubq_f32(v58, v34);
    v36 = *a2;
    v37 = vmulq_f32(*a2, v34);
    if ((v37.f32[2] + vaddv_f32(*v37.f32)) > 0.0)
    {
      v38 = fabsf(v60);
      if (v38 > 0.00001)
      {
        v59 = v35;
        v54 = v34;
        v39.i64[0] = (*(a1->i64[0] + 160))(a1);
        v39.i64[1] = v40;
        v41 = vmulq_f32(v54, v39);
        v42 = v41.f32[2] + vaddv_f32(*v41.f32);
        if (v38 <= v42)
        {
          v42 = v38;
        }

        v55 = v42;
        v43 = (*(a1->i64[0] + 160))(a1);
        v31 = v56;
        v35 = v59;
        v44.i64[0] = v43;
        v44.i64[1] = v45;
        a1[7] = vaddq_f32(a1[7], vmulq_n_f32(v44, v55));
        v36 = *a2;
      }
    }

    v46 = vmulq_f32(v35, v36);
    if ((v46.f32[2] + vaddv_f32(*v46.f32)) > 0.0)
    {
      v47.i64[0] = v14;
      v47.i64[1] = v16;
      v48 = vsubq_f32(v36, vmulq_n_f32(v47, v60));
      v49 = vmulq_f32(v48, v48);
      v49.f32[0] = sqrtf(v49.f32[2] + vaddv_f32(*v49.f32));
      if (v49.f32[0] > 0.00001)
      {
        v50 = vdivq_f32(v48, vdupq_lane_s32(*v49.f32, 0));
        v51 = vmulq_f32(v35, v50);
        v52 = vaddv_f32(*v51.f32);
        if (v49.f32[0] > (v51.f32[2] + v52))
        {
          v49.f32[0] = v51.f32[2] + v52;
        }

        a1[7] = vaddq_f32(vmulq_n_f32(v50, v49.f32[0]), a1[7]);
      }
    }

    if (v60 < 0.0 && (a1[4].i8[12] & 1) != 0 && v31 < 0.0 && vabds_f32(v60, v31) < 0.0001)
    {
      a1[4].i8[12] &= ~1u;
    }

    v6 = physx::shdfnd::g_isLockingEnabled;
  }

  else
  {
    v10 = 0;
  }

  if (v6 != v8)
  {
    physx::shdfnd::g_isLockingEnabled = v8;
  }

  return v10;
}

float32x2_t re::internal::PhysXCapsuleController::footPosition(re::internal::PhysXCapsuleController *this)
{
  v1.f64[0] = (*(**(this + 19) + 48))(*(this + 19));
  v1.f64[1] = v2;
  return vcvt_f32_f64(v1);
}

uint64_t re::internal::PhysXCapsuleController::setFootPosition(uint64_t a1, float32x2_t *a2)
{
  v2 = (physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled) & 1;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v3 = *(a1 + 152);
  v4 = a2[1].f32[0];
  v6 = vcvtq_f64_f32(*a2);
  v7 = v4;
  result = (*(*v3 + 40))(v3, &v6);
  if (physx::shdfnd::g_isLockingEnabled != v2)
  {
    physx::shdfnd::g_isLockingEnabled = v2;
  }

  return result;
}

void re::internal::PhysXCapsuleController::setPosition(uint64_t a1, float32x2_t *a2)
{
  v3 = (physx::shdfnd::g_alwaysUseLocking | physx::shdfnd::g_isLockingEnabled) & 1;
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
  {
    physx::shdfnd::g_isLockingEnabled = 0;
  }

  v4 = *(a1 + 152);
  v5 = a2[1].f32[0];
  v6 = vcvtq_f64_f32(*a2);
  v7 = v5;
  (*(*v4 + 24))(v4, &v6);
  objc_destroyWeak((a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 76) &= ~1u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 1;
  if (physx::shdfnd::g_isLockingEnabled != v3)
  {
    physx::shdfnd::g_isLockingEnabled = v3;
  }
}

uint64_t re::internal::PhysXCapsuleController::setRadius(re::internal::PhysXCapsuleController *this, float a2)
{
  *(this + 85) = a2;
  v2 = *(this + 19);
  v3.n128_f32[0] = COERCE_FLOAT((*(**(this + 17) + 16))(*(this + 17))) * a2;
  v4 = *(*v2 + 224);

  return v4(v2, v3);
}

uint64_t re::internal::PhysXCapsuleController::setHeight(re::internal::PhysXCapsuleController *this, float a2)
{
  v3 = a2 + ((*(*this + 176))(this) * -2.0);
  if (v3 >= 0.01)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.01;
  }

  *(this + 84) = v4;
  v5 = *(this + 19);
  v6.n128_f32[0] = v4 * COERCE_FLOAT((*(**(this + 17) + 16))(*(this + 17)));
  v7 = *(*v5 + 240);

  return v7(v5, v6);
}

uint64_t re::internal::PhysXCapsuleController::resize(re::internal::PhysXCapsuleController *this, float a2)
{
  v3 = a2 + ((*(*this + 176))(this) * -2.0);
  if (v3 >= 0.01)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.01;
  }

  *(this + 84) = v4;
  v5 = *(this + 19);
  v6.n128_f32[0] = v4 * COERCE_FLOAT((*(**(this + 17) + 16))(*(this + 17)));
  v7 = *(*v5 + 192);

  return v7(v5, v6);
}

uint64_t re::internal::PhysXCapsuleController::setSkinWidth(re::internal::PhysXCapsuleController *this, float a2)
{
  LODWORD(v4) = (*(**(this + 17) + 16))(*(this + 17));
  v5.n128_f32[0] = (*(*this + 176))(this) * 0.1;
  if (v5.n128_f32[0] > a2)
  {
    v5.n128_f32[0] = a2;
  }

  *(this + 16) = v5.n128_u32[0];
  v5.n128_f32[0] = v5.n128_f32[0] * v4;
  v6 = *(**(this + 19) + 104);

  return v6(v5);
}

uint64_t re::internal::PhysXCapsuleController::setSlopeLimit(re::internal::PhysXCapsuleController *this, float a2)
{
  v2 = 1.0;
  if (a2 <= 1.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  *(this + 18) = v3;
  v4 = *(this + 19);
  v5.n128_f32[0] = cosf(v3);
  v6 = *(*v4 + 136);

  return v6(v4, v5);
}

uint64_t re::internal::PhysXCapsuleController::setStepLimit(re::internal::PhysXCapsuleController *this, float a2)
{
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.0;
  }

  LODWORD(v4) = (*(**(this + 17) + 16))(*(this + 17));
  v5.n128_f32[0] = (*(*this + 176))(this) * 0.2;
  if (v5.n128_f32[0] > v3)
  {
    v5.n128_f32[0] = v3;
  }

  *(this + 17) = v5.n128_u32[0];
  v5.n128_f32[0] = v5.n128_f32[0] * v4;
  v6 = *(**(this + 19) + 64);

  return v6(v5);
}

uint64_t re::internal::PhysXCapsuleController::setUpVector(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 152);
  v3 = *(a2 + 2);
  v5 = *a2;
  v6 = v3;
  return (*(*v2 + 120))(v2, &v5);
}

uint64_t re::internal::PhysXCapsuleController::onScaleChanged(float *a1)
{
  (*(*a1 + 184))(a1, a1[85]);
  (*(*a1 + 200))(a1, a1[84] + (a1[85] * 2.0));
  (*(*a1 + 104))(a1, a1[17]);
  v2.n128_f32[0] = a1[17];
  v3 = *(*a1 + 136);

  return v3(a1, v2);
}

uint64_t re::internal::PhysXCapsuleController::recreateUnderlying(void *a1, float32x2_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0x100000000;
  v19 = (*(*a1 + 192))(a1);
  v20 = (*(*a1 + 176))(a1);
  v17[0] = (*(*a1 + 112))(a1);
  v17[1] = (*(*a1 + 128))(a1);
  v17[2] = (*(*a1 + 144))(a1);
  v10 = a1[17];
  v18 = v10[4];
  LODWORD(v11) = (*(*v10 + 16))(v10);
  v12 = a1[46];
  v13 = (*(*a1 + 16))(a1);
  re::internal::PhysXCapsuleController::createUnderlyingController(a1, v12, v13, v17, a2, a3, a4, a5, v11);
  v14 = (*(*a1[19] + 56))(a1[19]);
  v15 = *(*v10 + 40);

  return v15(v10, v14);
}

uint64_t re::internal::PhysXCapsuleController::createUnderlyingController(void *a1, uint64_t a2, uint64_t a3, float *a4, float32x2_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, float a9)
{
  v13 = a4[6];
  v14 = a4[5] + (v13 * -2.0);
  if (v14 < 0.01)
  {
    v14 = 0.01;
  }

  v49 = 1;
  v42 = 1069547520;
  v48 = 0;
  v38 = 0;
  v47 = 1;
  v32 = &unk_1F5CCE620;
  v15 = v14 * a9;
  v50 = v13 * a9;
  v51 = v14 * a9;
  v16 = a5[1].f32[0];
  v33 = vcvtq_f64_f32(*a5);
  v46 = a8;
  v17 = *a6;
  v34 = v16;
  v35 = v17;
  v18 = (v13 * a9) * 0.1;
  v19 = a4[1];
  if (v18 <= (*a4 * a9))
  {
    v20 = v18;
  }

  else
  {
    v20 = *a4 * a9;
  }

  v36 = *(a6 + 2);
  v21 = a4[2] * a9;
  if ((v15 * 0.2) <= v21)
  {
    v22 = v15 * 0.2;
  }

  else
  {
    v22 = v21;
  }

  v39 = LODWORD(v20);
  v40 = v22;
  v23 = cosf(v19);
  v37 = v23;
  v41 = 0x3F80000041200000;
  v52 = 1;
  v45 = 1;
  v43 = a1 + 43;
  v44 = a1 + 45;
  if (v22 < 0.0)
  {
    v40 = 0.0;
  }

  v24 = 0.0;
  if (v23 < 0.0 || (v24 = 1.0, v23 > 1.0))
  {
    v37 = v24;
  }

  if (v20 < 0.01)
  {
    v39 = 1008981770;
  }

  v25 = (*(**(a7 + 160) + 32))(*(a7 + 160), &v32);
  if (v25)
  {
    v27 = v25;
    a1[19] = v25;
    (*(*v25 + 168))(v25, a1);
    v28 = (*(*v27 + 56))(v27);
    v31 = 0;
    (*(*v28 + 192))(v28, &v31, 1, 0);
    v29 = v31;
    a1[7] = v31;
    *(v29 + 16) = a1;
    result = (*(**(a7 + 152) + 112))(*(a7 + 152), v28, 1);
    a1[18] = a3;
    a1[46] = a2;
  }

  else
  {
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Error creating character controller, check parameters", "pxcontroller != nullptr", "createUnderlyingController", 375);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::CharacterController::shape(re::CharacterController *this)
{
  return *(this + 18);
}

{
  return *(this + 18);
}

void re::internal::PhysXCapsuleController::poseDidChange(re::internal::PhysXCapsuleController *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported.", "!Unreachable code", "poseDidChange", 137);
  _os_crash();
  __break(1u);
}

BOOL physx::PxCapsuleControllerDesc::isValid(physx::PxCapsuleControllerDesc *this)
{
  if (*(this + 32) > 1u)
  {
    return 0;
  }

  if (*(this + 17) < 0.0)
  {
    return 0;
  }

  if (*(this + 18) < 1.0)
  {
    return 0;
  }

  if (*(this + 16) < 0.0)
  {
    return 0;
  }

  if (*(this + 11) < 0.0)
  {
    return 0;
  }

  v1 = *(this + 15);
  if (v1 < 0.0)
  {
    return 0;
  }

  if (*(this + 14) <= 0.0)
  {
    return 0;
  }

  if (!*(this + 13))
  {
    return 0;
  }

  v2 = *(this + 1);
  if ((LODWORD(v2) >> 23) == 255)
  {
    return 0;
  }

  v3 = *(this + 2);
  if ((LODWORD(v3) >> 23) == 255)
  {
    return 0;
  }

  v4 = *(this + 3);
  if ((LODWORD(v4) >> 23) == 255)
  {
    return 0;
  }

  v5 = *(this + 33);
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = *(this + 34);
  return v6 > 0.0 && v1 <= (v6 + (v5 * 2.0));
}

double physx::PxCapsuleControllerDesc::setToDefault(physx::PxCapsuleControllerDesc *this)
{
  result = 0.0078125;
  *(this + 8) = 0x3F4CCCCD41200000;
  *(this + 18) = 1069547520;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 2) = xmmword_1E3066420;
  *(this + 3) = xmmword_1E3066430;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 112) = 1;
  *(this + 17) = 0;
  *(this + 33) = 0;
  return result;
}

void re::ContactSetCollection::~ContactSetCollection(re::ContactSetCollection *this)
{
  if (*this)
  {
    re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(this);
  }

  re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(this);
}

void re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 144 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_7, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

double re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(uint64_t *a1)
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
          re::ContactSet::~ContactSet((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 144;
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

void re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_8, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::ContactSet::~ContactSet((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 144;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::ContactSetCollection::set(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 28);
  v5 = (*(*a2 + 16))(a2);
  if (*(a1 + 24) < (v5 + v4))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 16);
      while (1)
      {
        v9 = *v8;
        v8 += 36;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(a1 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    while (v7 != v6)
    {
      v10 = (*(a1 + 16) + 144 * v7);
      v11 = v10[3];
      *(v10[2] + 80) = 0;
      *(v11 + 80) = 0;
      v10[16] = 0;
      v10[17] = 0;
      v12 = *(a1 + 32);
      if (v12 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(a1 + 16) + 144 * v7) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v7) = v12;
LABEL_15:
      ;
    }

    re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::setCapacity(a1, 2 * (v5 + v4));
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = 0;
      v15 = *(a1 + 16);
      while (1)
      {
        v16 = *v15;
        v15 += 36;
        if (v16 < 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          LODWORD(v14) = *(a1 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    while (v14 != v13)
    {
      v17 = (*(a1 + 16) + 144 * v14);
      v18 = v17[2];
      v17 += 2;
      v19 = *(v18 + 80);
      *(v18 + 80) = v17;
      v20 = v17[1];
      v21 = *(v20 + 80);
      v17[14] = v19;
      v17[15] = v21;
      *(v20 + 80) = v17;
      if (v13 <= v14 + 1)
      {
        v22 = v14 + 1;
      }

      else
      {
        v22 = v13;
      }

      while (v22 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(*(a1 + 16) + 144 * v14) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v14) = v22;
LABEL_30:
      ;
    }
  }

  if (v5)
  {
    v23 = 0;
    do
    {
      v24 = (*(*a2 + 24))(a2, v23);
      v25 = (*(*a2 + 40))(a2, v24);
      v26 = (*(*a2 + 48))(a2, v24);
      *&v62 = v25;
      *(&v62 + 1) = v26;
      v27 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(a1, &v62);
      if (!v27)
      {
        v28 = *a1;
        v67 = 0u;
        v68 = 0u;
        v69 = 0;
        v66[0] = 0;
        *(v66 + 7) = 0;
        v70 = 0;
        v71 = 0;
        v64[1] = 0;
        v64[2] = 0;
        v65 = 0;
        v63 = v62;
        v64[0] = v28;
        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v64, 0);
        ++v65;
        v27 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(a1, &v63);
        re::ContactSet::~ContactSet(&v63);
        v29 = v27[1];
        v30 = *(*v27 + 80);
        *(*v27 + 80) = v27;
        v31 = *(v29 + 80);
        v27[14] = v30;
        v27[15] = v31;
        *(v29 + 80) = v27;
      }

      if (*(v27 + 56) == 1)
      {
        re::ContactSet::merge(v27, a2, v24);
      }

      else
      {
        re::ContactSet::set(v27, a2, v24);
        *(v27 + 56) = 1;
      }

      v23 = (v23 + 1);
    }

    while (v5 != v23);
  }

  v32 = *(a1 + 48);
  if (v32)
  {
    v33 = *(v32 + 64);
    if (v33)
    {
      v34 = *(a1 + 32);
      if (v34)
      {
        v35 = 0;
        v36 = *(a1 + 16);
        while (1)
        {
          v37 = *v36;
          v36 += 36;
          if (v37 < 0)
          {
            break;
          }

          if (v34 == ++v35)
          {
            LODWORD(v35) = *(a1 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v38 = *(a1 + 32);
      while (v35 != v34)
      {
        v39 = *(a1 + 16) + 144 * v35;
        v41 = *(v39 + 16);
        v40 = v39 + 16;
        v42 = (*(*v41 + 48))(v41);
        if (v42)
        {
          LOBYTE(v42) = (*(**(v40 + 8) + 48))(*(v40 + 8));
        }

        *(v40 + 58) = v42;
        v38 = *(a1 + 32);
        if (v38 <= v35 + 1)
        {
          v43 = v35 + 1;
        }

        else
        {
          v43 = *(a1 + 32);
        }

        while (v43 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if ((*(*(a1 + 16) + 144 * v35) & 0x80000000) != 0)
          {
            goto LABEL_57;
          }
        }

        LODWORD(v35) = v43;
LABEL_57:
        ;
      }

      if (v38)
      {
        v44 = 0;
        v45 = *(a1 + 16);
        while (1)
        {
          v46 = *v45;
          v45 += 36;
          if (v46 < 0)
          {
            break;
          }

          if (v38 == ++v44)
          {
            LODWORD(v44) = v38;
            break;
          }
        }
      }

      else
      {
        LODWORD(v44) = 0;
      }

      while (v44 != v38)
      {
        v47 = *(a1 + 16) + 144 * v44;
        if (*(v47 + 72) == 1)
        {
          v48 = *(v47 + 48);
          if (v48)
          {
            v48 *= 80;
            v49 = (*(v47 + 64) + 64);
            while (*v49 > 0.0)
            {
              v50 = vmulq_f32(*(v49 - 4), *(v49 - 4));
              if ((v50.f32[2] + vaddv_f32(*v50.f32)) != 0.0)
              {
                break;
              }

              v49 += 20;
              v48 -= 80;
              if (!v48)
              {
                goto LABEL_74;
              }
            }

            LODWORD(v48) = 1;
          }
        }

        else
        {
          LODWORD(v48) = 0;
        }

LABEL_74:
        v51 = *(v47 + 73);
        v52 = (v51 & *(v47 + 74));
        v53 = v48 | v52;
        *(v47 + 73) = v48 | v51 & *(v47 + 74);
        if (v52 == 1)
        {
          *(v47 + 72) = 1;
        }

        if (!v48 || (v51 & 1) != 0)
        {
          if ((v53 & v51) == 1)
          {
            (*(*v33 + 24))(v33, *(v47 + 16), *(v47 + 24), v47 + 16);
          }

          else if (((v53 | v51 ^ 1) & 1) == 0)
          {
            (*(*v33 + 32))(v33, *(v47 + 16), *(v47 + 24));
          }
        }

        else
        {
          (*(*v33 + 16))(v33, *(v47 + 16), *(v47 + 24), v47 + 16);
        }

        v54 = *(a1 + 32);
        if (v54 <= v44 + 1)
        {
          v54 = v44 + 1;
        }

        while (v54 - 1 != v44)
        {
          LODWORD(v44) = v44 + 1;
          if ((*(*(a1 + 16) + 144 * v44) & 0x80000000) != 0)
          {
            goto LABEL_89;
          }
        }

        LODWORD(v44) = v54;
LABEL_89:
        ;
      }
    }
  }

  v55 = *(a1 + 32);
  if (v55)
  {
    v56 = 0;
    v57 = *(a1 + 16);
    while (1)
    {
      v58 = *v57;
      v57 += 36;
      if (v58 < 0)
      {
        break;
      }

      if (v55 == ++v56)
      {
        LODWORD(v56) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v56) = 0;
  }

  if (v56 != v55)
  {
    v59 = *(a1 + 32);
    do
    {
      v60 = *(a1 + 16) + 144 * v56;
      if (*(v60 + 72))
      {
        *(v60 + 72) = 0;
      }

      else
      {
        re::ContactSetCollection::removeFromLinkedLists((v60 + 16));
        re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::remove(a1, *(v60 + 16), *(v60 + 24));
        v59 = *(a1 + 32);
      }

      if (v59 <= v56 + 1)
      {
        v61 = v56 + 1;
      }

      else
      {
        v61 = v59;
      }

      while (v61 - 1 != v56)
      {
        LODWORD(v56) = v56 + 1;
        if ((*(*(a1 + 16) + 144 * v56) & 0x80000000) != 0)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v56) = v61;
LABEL_108:
      ;
    }

    while (v56 != v55);
  }
}

void re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v17, 0, 36);
      *&v17[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::init(v17, v4, a2);
      v5 = *v17;
      *v17 = *a1;
      *a1 = v5;
      v6 = *&v17[16];
      *&v17[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v17[24];
      *&v17[24] = *(a1 + 24);
      v7 = *&v17[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v17[16] + v10) & 0x80000000) != 0)
          {
            v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(*&v17[16] + v10 + 16) ^ (*(*&v17[16] + v10 + 16) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(*&v17[16] + v10 + 16) ^ (*(*&v17[16] + v10 + 16) >> 30))) >> 27));
            v13 = v12 ^ (v12 >> 31);
            v14 = 0xBF58476D1CE4E5B9 * (*(*&v17[16] + v10 + 24) ^ (*(*&v17[16] + v10 + 24) >> 30));
            v15 = (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31);
            if (v13 == v15)
            {
              v15 = 0;
            }

            re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addAsMove(a1, (v15 ^ v13) % *(a1 + 24), v15 ^ v13, *&v17[16] + v10 + 16);
            v9 = *&v17[32];
          }

          ++v11;
          v10 += 144;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(v17);
    }
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  if (v7 == v9)
  {
    v9 = 0;
  }

  v10 = v9 ^ v7;
  v11 = *(a1 + 24);
  if (!v11)
  {
    LODWORD(v12) = 0;
    goto LABEL_13;
  }

  v12 = v10 % v11;
  v13 = *(*(a1 + 8) + 4 * (v10 % v11));
  if (v13 == 0x7FFFFFFF)
  {
LABEL_13:
    v19 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addAsMove(a1, v12, v10, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 144 * v19 + 16;
  }

  v14 = *(a1 + 16);
  while (1)
  {
    v15 = v14 + 144 * v13;
    v18 = *(v15 + 16);
    result = v15 + 16;
    v17 = v18;
    if (v18 == v4 && *(result + 8) == v5)
    {
      return result;
    }

    if (v17 == v5 && *(result + 8) == v4)
    {
      return result;
    }

    v13 = *(v14 + 144 * v13) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_13;
    }
  }
}

void *re::ContactSetCollection::removeFromLinkedLists(void *result)
{
  v1 = *result;
  v2 = result[14];
  v3 = *(*result + 80);
  if (v3 == result)
  {
    *(v1 + 80) = v2;
  }

  else
  {
    do
    {
      v4 = v3;
      v5 = *v3;
      if (*v3 == v1)
      {
        v6 = 14;
      }

      else
      {
        v6 = 15;
      }

      v3 = v4[v6];
    }

    while (v3 != result);
    if (v5 == v1)
    {
      v4[14] = v2;
    }

    else
    {
      v4[15] = v2;
    }
  }

  v7 = result[1];
  v8 = result[15];
  v9 = *(v7 + 80);
  if (v9 == result)
  {
    *(v7 + 80) = v8;
  }

  else
  {
    do
    {
      v10 = v9;
      v11 = *v9;
      if (*v9 == v7)
      {
        v12 = 14;
      }

      else
      {
        v12 = 15;
      }

      v9 = v10[v12];
    }

    while (v9 != result);
    if (v11 == v7)
    {
      v10[14] = v8;
    }

    else
    {
      v10[15] = v8;
    }
  }

  result[14] = 0;
  result[15] = 0;
  return result;
}

void re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::remove(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    v8 = v7 ^ (v7 >> 31);
    if (v6 == v8)
    {
      v8 = 0;
    }

    v9 = (v8 ^ v6) % v3;
    v10 = *(a1 + 8);
    v11 = *(v10 + 4 * v9);
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(a1 + 16);
      v13 = 0x7FFFFFFFLL;
      while (1)
      {
        v14 = v12 + 144 * v11;
        v17 = *(v14 + 16);
        v15 = v14 + 16;
        v16 = v17;
        if (v17 == a2 && *(v15 + 8) == a3)
        {
          break;
        }

        if (v16 == a3 && *(v15 + 8) == a2)
        {
          break;
        }

        v13 = v11;
        v11 = *(v12 + 144 * v11) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          return;
        }
      }

      v18 = *(v12 + 144 * v11) & 0x7FFFFFFF;
      if (v13 == 0x7FFFFFFF)
      {
        *(v10 + 4 * v9) = v18;
      }

      else
      {
        *(v12 + 144 * v13) = *(v12 + 144 * v13) & 0x80000000 | v18;
      }

      v19 = *(a1 + 16);
      v20 = (v19 + 144 * v11);
      v21 = *v20;
      if (*v20 < 0)
      {
        *v20 = v21 & 0x7FFFFFFF;
        re::ContactSet::~ContactSet((v20 + 4));
        v19 = *(a1 + 16);
        v21 = *(v19 + 144 * v11);
      }

      v22 = *(a1 + 40);
      *(v19 + 144 * v11) = *(a1 + 36) | v21 & 0x80000000;
      --*(a1 + 28);
      *(a1 + 36) = v11;
      *(a1 + 40) = v22 + 1;
    }
  }
}

void re::ContactSetCollection::remove(re::ContactSetCollection *this, re::ContactSet *a2)
{
  if (*(this + 6))
  {
    re::ContactSetCollection::removeFromLinkedLists(a2);
  }

  v4 = *a2;
  v5 = *(a2 + 1);

  re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::remove(this, v4, v5);
}

void re::ContactSetCollection::remove(re::ContactSetCollection *this, re::CollisionObject *a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(v4 + 64);
    if (v5)
    {
      for (i = *(a2 + 10); i; i = *(i + v7))
      {
        if (*(i + 57) == 1)
        {
          *(i + 57) = 0;
          (*(*v5 + 32))(v5, *i, *(i + 8));
        }

        if (*i == a2)
        {
          v7 = 112;
        }

        else
        {
          v7 = 120;
        }
      }
    }

    while (1)
    {
      v8 = *(a2 + 10);
      if (!v8)
      {
        break;
      }

      re::ContactSetCollection::remove(this, v8);
    }
  }

  else
  {
    v9 = *(this + 8);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 2);
      while (1)
      {
        v12 = *v11;
        v11 += 36;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(this + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v13 = *(this + 8);
      do
      {
        v14 = *(this + 2) + 144 * v10;
        v16 = *(v14 + 16);
        v15 = (v14 + 16);
        if (v16 == a2 || v15[1] == a2)
        {
          re::ContactSetCollection::remove(this, v15);
          v13 = *(this + 8);
        }

        if (v13 <= v10 + 1)
        {
          v17 = v10 + 1;
        }

        else
        {
          v17 = v13;
        }

        while (v17 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(*(this + 2) + 144 * v10) & 0x80000000) != 0)
          {
            goto LABEL_32;
          }
        }

        LODWORD(v10) = v17;
LABEL_32:
        ;
      }

      while (v10 != v9);
    }
  }
}

uint64_t re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 36);
  if (v6 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 32);
    v7 = v6;
    if (v6 == *(a1 + 24))
    {
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v7 = *(a1 + 32);
    }

    *(a1 + 32) = v7 + 1;
    v9 = *(a1 + 16);
    v10 = *(v9 + 144 * v6);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 144 * v6);
    *(a1 + 36) = v10 & 0x7FFFFFFF;
  }

  v11 = 144 * v6;
  *(v9 + v11) = v10 | 0x80000000;
  *(*(a1 + 16) + v11) = *(*(a1 + 16) + 144 * v6) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  v12 = *(a1 + 16) + 144 * v6;
  *(v12 + 16) = *a4;
  *(v12 + 64) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  *(v12 + 56) = 0;
  v13 = *(a4 + 24);
  *(v12 + 32) = *(a4 + 16);
  *(v12 + 40) = v13;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v14 = *(v12 + 48);
  *(v12 + 48) = *(a4 + 32);
  *(a4 + 32) = v14;
  v15 = *(v12 + 64);
  *(v12 + 64) = *(a4 + 48);
  *(a4 + 48) = v15;
  ++*(a4 + 40);
  ++*(v12 + 56);
  *(v12 + 72) = *(a4 + 56);
  v16 = *(a4 + 72);
  v17 = *(a4 + 88);
  v18 = *(a4 + 104);
  *(v12 + 136) = *(a4 + 120);
  *(v12 + 120) = v18;
  *(v12 + 104) = v17;
  *(v12 + 88) = v16;
  *(*(a1 + 8) + 4 * a2) = v6;
  ++*(a1 + 28);
  return v6;
}

void re::introspect_CharacterControllerType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19D670, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19D678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D678))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19D6F8, "CharacterControllerType", 2, 2, 1, 1);
      qword_1EE19D6F8 = &unk_1F5D0C658;
      qword_1EE19D738 = &re::introspect_CharacterControllerType(BOOL)::enumTable;
      dword_1EE19D708 = 9;
      __cxa_guard_release(&qword_1EE19D678);
    }

    if (_MergedGlobals_129)
    {
      break;
    }

    _MergedGlobals_129 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19D6F8, a2);
    v35 = 0x7A5112036B46B8BELL;
    v36 = "CharacterControllerType";
    v39 = 0x607DD0D4E68;
    v40 = "uint16_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19D738;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE19D718 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19D670);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Undefined";
      qword_1EE19D6A8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Capsule";
      qword_1EE19D6B0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Box";
      qword_1EE19D6B8 = v34;
      __cxa_guard_release(&qword_1EE19D670);
    }
  }
}

void re::introspect_CharacterControllerFlags(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19D688, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19D690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D690))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19D740, "CharacterControllerFlags", 2, 2, 1, 1);
      qword_1EE19D740 = &unk_1F5D0C658;
      qword_1EE19D780 = &re::introspect_CharacterControllerFlags(BOOL)::enumTable;
      dword_1EE19D750 = 9;
      __cxa_guard_release(&qword_1EE19D690);
    }

    if (byte_1EE19D669)
    {
      break;
    }

    byte_1EE19D669 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19D740, a2);
    v31 = 0xCFD12E69FBF98C04;
    v32 = "CharacterControllerFlags";
    v35 = 0x607DD0D4E68;
    v36 = "uint16_t";
    v4 = v34[0];
    v5 = v34[1];
    if (v35)
    {
      if (v35)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19D780;
      v35 = v4;
      v36 = v5;
      re::TypeBuilder::beginEnumType(v34, &v31, 1, 1, &v35);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v33.var0 = 2 * v11;
            v33.var1 = v10;
            re::TypeBuilder::addEnumConstant(v34, v15, &v33);
            if (*&v33.var0)
            {
              if (*&v33.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v33.var0 = 2 * v20;
              v33.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v34, v24, &v33);
              if (*&v33.var0)
              {
                if (*&v33.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v34, v26);
      xmmword_1EE19D760 = v33;
      if (v31)
      {
        if (v31)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v32);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19D688);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 8) = 0;
      *(v30 + 16) = "None";
      qword_1EE19D680 = v30;
      __cxa_guard_release(&qword_1EE19D688);
    }
  }
}

void *re::allocInfo_CharacterControllerDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19D698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D698))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D788, "CharacterControllerDescription");
    __cxa_guard_release(&qword_1EE19D698);
  }

  return &unk_1EE19D788;
}

void re::initInfo_CharacterControllerDescription(re *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x34296DE90D87266ELL;
  v32[1] = "CharacterControllerDescription";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE19D6A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D6A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "skinWidth";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19D6C0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "slopeLimit";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19D6C8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "stepLimit";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19D6D0 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_CollisionFilter(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "collisionFilter";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE19D6D8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<float [3]>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "extents";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1400000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE19D6E0 = v24;
      v25 = re::introspectionAllocator(v24);
      re::introspect_CharacterControllerType(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "type";
      *(v27 + 16) = &qword_1EE19D6F8;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2000000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE19D6E8 = v27;
      v28 = re::introspectionAllocator(v27);
      re::introspect_CharacterControllerFlags(v28, v29);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "flags";
      *(v30 + 16) = &qword_1EE19D740;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x2200000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE19D6F0 = v30;
      __cxa_guard_release(&qword_1EE19D6A0);
    }
  }

  *(this + 2) = 0x2400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE19D6C0;
  *(this + 9) = re::internal::defaultConstruct<re::CharacterControllerDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CharacterControllerDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::CharacterControllerDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::CharacterControllerDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void *re::IntrospectionInfo<float [3]>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [3]>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<float [3]>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<float [3]>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v3 = re::IntrospectionInfo<float [3]>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v3)
    {
      return &re::IntrospectionInfo<float [3]>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<float [3]>::get(BOOL)::isInitialized)
    {
LABEL_17:
      v11 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<float [3]>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<float [3]>::get(BOOL)::isInitialized = 1;
  v7 = re::introspect_float(1, a2);
  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [3]>::get(BOOL)::info, v7, 3);
  re::IntrospectionRegistry::add(v8, v9);
  re::getPrettyTypeName(&re::IntrospectionInfo<float [3]>::get(BOOL)::info, &v14);
  if (BYTE8(v14))
  {
    v10 = v15;
  }

  else
  {
    v10 = &v14 + 9;
  }

  if (v14 && (BYTE8(v14) & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v14 = *(v7 + 2);
  xmmword_1EE186F90 = v13;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return &re::IntrospectionInfo<float [3]>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::CharacterControllerDescription>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x3F490FD83C23D70ALL;
  *(a3 + 8) = 1045220557;
  result = NAN;
  *(a3 + 12) = 0xFFFFFFFF00000001;
  *(a3 + 20) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0x100000000;
  return result;
}

double re::internal::defaultConstructV2<re::CharacterControllerDescription>(uint64_t a1)
{
  *a1 = 0x3F490FD83C23D70ALL;
  *(a1 + 8) = 1045220557;
  result = NAN;
  *(a1 + 12) = 0xFFFFFFFF00000001;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0x100000000;
  return result;
}

re::CharacterController *re::CharacterController::CharacterController(re::CharacterController *this, re::Allocator *a2, float a3, float a4, float a5)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0x3F80000000000000;
  *this = &unk_1F5CCE690;
  *(this + 16) = a3;
  *(this + 17) = a4;
  *(this + 18) = a5;
  *(this + 76) = 0;
  *(this + 5) = 0u;
  inited = objc_initWeak(this + 12, 0);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 125) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = a2;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 21) = 0;
  *(this + 30) = 0;
  *(this + 62) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 21, 0);
  ++*(this + 48);
  return this;
}

void re::CharacterController::~CharacterController(re::CharacterController *this)
{
  v2 = &unk_1F5CCE690;
  *this = &unk_1F5CCE690;
  v3 = *(this + 17);
  if (v3)
  {
    v4 = *(this + 20);
    (**v3)(*(this + 17));
    (*(*v4 + 40))(v4, v3);
    v2 = *this;
  }

  v5 = *(this + 20);
  v6 = v2[2](this);
  if (v6)
  {
    v7 = v6;
    (**v6)(v6);
    (*(*v5 + 40))(v5, v7);
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 21);
  objc_destroyWeak(this + 12);
  *(this + 12) = 0;
}

uint64_t re::CharacterController::setCollisionFilter(void *a1, void *a2)
{
  v3 = a1[17];
  if (v3[4] != *a2)
  {
    v3[4] = *a2;
    (*(*v3 + 80))(v3);
  }

  v4 = *(*a1 + 168);

  return v4(a1);
}

uint64_t re::CharacterController::onPlatform(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 12);
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained[2];

  return v2;
}

double re::PlaneShape::massProperties(uint64_t a1, _DWORD *a2, void *a3, _OWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  a3[1] = 0;
  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

float32x2_t re::PhysXRectangleShape::extent(re::PhysXRectangleShape *this)
{
  v1.i32[0] = *(this + 6);
  v1.i32[1] = *(this + 8);
  return vadd_f32(v1, v1);
}

double re::PhysXRectangleShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 20, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a7 = *v20;
  a7[1] = v16;
  return result;
}

double re::PhysXCylinderShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 24, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a7 = *v20;
  a7[1] = v16;
  return result;
}

void *re::allocInfo_CollisionFilter(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_130))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D838, "CollisionFilter");
    __cxa_guard_release(&_MergedGlobals_130);
  }

  return &unk_1EE19D838;
}

void re::initInfo_CollisionFilter(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xF1C766E267541254;
  v15[1] = "CollisionFilter";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE19D820, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D820);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "group";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19D828 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "mask";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19D830 = v13;
      __cxa_guard_release(&qword_1EE19D820);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19D828;
  *(this + 9) = re::internal::defaultConstruct<re::CollisionFilter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CollisionFilter>;
  *(this + 13) = re::internal::defaultConstructV2<re::CollisionFilter>;
  *(this + 14) = re::internal::defaultDestructV2<re::CollisionFilter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::CollisionFilter>(uint64_t a1, uint64_t a2, void *a3)
{
  result = NAN;
  *a3 = 0xFFFFFFFF00000001;
  return result;
}

double re::internal::defaultConstructV2<re::CollisionFilter>(void *a1)
{
  result = NAN;
  *a1 = 0xFFFFFFFF00000001;
  return result;
}

void re::CollisionWorld::~CollisionWorld(re::CollisionWorld *this)
{
  *this = &unk_1F5CCE868;
  if (*(this + 7))
  {
    v2 = (this + 72);
    if (*(this + 9))
    {
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(v2);
    }

    *(this + 7) = 0;
  }

  re::ContactSetCollection::~ContactSetCollection((this + 72));
  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(this + 1);
}

void re::CollisionWorld::deinit(re::CollisionWorld *this)
{
  if (*(this + 7))
  {
    v3 = *(this + 9);
    v2 = (this + 72);
    if (v3)
    {
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::deinit(v2);
    }

    *(this + 7) = 0;
  }
}

uint64_t re::CollisionWorld::hasContact(void *a1, uint64_t a2)
{
  if (!a2 || *(a2 + 56) != a1[16])
  {
    return (*(*a1 + 232))();
  }

  v3 = *(a2 + 80);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3[4];
    if (v4)
    {
      break;
    }

LABEL_10:
    if (*v3 == a2)
    {
      v8 = 14;
    }

    else
    {
      v8 = 15;
    }

    v3 = v3[v8];
    if (!v3)
    {
      return 0;
    }
  }

  v5 = 80 * v4;
  v6 = (v3[6] + 64);
  while (*v6 > 0.0)
  {
    v7 = vmulq_f32(*(v6 - 4), *(v6 - 4));
    if ((v7.f32[2] + vaddv_f32(*v7.f32)) != 0.0)
    {
      break;
    }

    v6 += 20;
    v5 -= 80;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t re::CollisionWorld::haveContact(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3 || (v3 = *(a2 + 56), v3 != a1[16]) || *(a3 + 56) != v3)
  {
    v4 = *(a2 + 32);
    v5 = *(a3 + 32);
    v6 = v5 & HIDWORD(v4);
    v7 = v4 & HIDWORD(v5);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v10 = *(*a1 + 240);

      return v10();
    }

    return 0;
  }

  v15[0] = a2;
  v15[1] = a3;
  result = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet((a1 + 9), v15);
  if (!result)
  {
    return result;
  }

  v11 = *(result + 32);
  if (!v11)
  {
    return 0;
  }

  v12 = 80 * v11;
  v13 = (*(result + 48) + 64);
  result = 0;
  while (*v13 > 0.0)
  {
    v14 = vmulq_f32(*(v13 - 4), *(v13 - 4));
    if ((v14.f32[2] + vaddv_f32(*v14.f32)) != 0.0)
    {
      break;
    }

    v13 += 20;
    v12 -= 80;
    if (!v12)
    {
      return result;
    }
  }

  return 1;
}

double re::CollisionWorld::DEPRECATED_copyRayHitsToContactSet(uint64_t a1, float *a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 32) = 0;
  ++*(a1 + 40);
  v4 = -(a2[12] * a3);
  v5 = *(a2 + 2);
  v7[0] = *(a2 + 1);
  v7[1] = v7[0];
  v7[2] = v5;
  v8 = 0;
  v9 = 0;
  v10 = v4;
  *&result = re::DynamicArray<re::GeomInstance>::add((a1 + 16), v7).n128_u64[0];
  return result;
}

void re::CollisionWorld::DEPRECATED_copyRayHitsToContactSetCollection(uint64_t a1, uint64_t a2, float a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 36;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a1 + 16);
    do
    {
      v11 = v10 + 144 * v7;
      *(v11 + 48) = 0;
      ++*(v11 + 56);
      v10 = *(a1 + 16);
      if (v6 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = v6;
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 144 * v7) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v12;
LABEL_16:
      ;
    }

    while (v7 != v6);
  }

  v13 = *(a2 + 40);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](a2, i);
      v16 = *v15;
      *&v21 = 0;
      *(&v21 + 1) = v16;
      v17 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(a1, &v21);
      if (!v17)
      {
        v18 = *a1;
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
        *&v25 = 0;
        *(&v25 + 7) = 0;
        v29 = 0;
        v30 = 0;
        *&v24 = 0;
        DWORD2(v24) = 0;
        v22 = v21;
        v23 = v18;
        re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v23, 0);
        ++DWORD2(v24);
        v17 = re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(a1, &v22);
        re::ContactSet::~ContactSet(&v22);
      }

      v19 = -(*(v15 + 48) * a3);
      v20 = *(v15 + 32);
      v22 = *(v15 + 16);
      v23 = v22;
      v24 = v20;
      v25 = 0uLL;
      *&v26 = v19;
      re::DynamicArray<re::GeomInstance>::add((v17 + 16), &v22);
    }
  }
}

uint64_t re::CollisionWorld::printDebugInformation(re::CollisionWorld *this, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  printf("%sCollision world:\n", v3);
  v4 = (*(**(this + 16) + 176))(*(this + 16));
  printf("%s    # of collision objects: %zu\n", v3, v4);
  return printf("%s    # of contact sets: %zu\n", v3, *(this + 25));
}

void re::CollisionWorld::reportTriggerEvents(re::CollisionWorld *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 10);
    if (v3)
    {
      v4 = 0;
      v5 = (*(this + 3) + 8);
      while (1)
      {
        v6 = *v5;
        v5 += 10;
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(this + 10);
          break;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }

    if (v4 != v3)
    {
      while (1)
      {
        v7 = *(v2 + 3) + 40 * v4;
        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v7 + 16;
        v11 = *(v10 + 16);
        if (v11 == 2)
        {
          re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::remove(v2 + 8, v10);
          this = (*(*v1 + 32))(v1, v9, v8);
          goto LABEL_16;
        }

        if (v11 == 1)
        {
          break;
        }

        if (!*(v10 + 16))
        {
          v22 = 0;
          v20 = 0u;
          v21 = 0u;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19[0] = 0;
          *(v19 + 7) = 0;
          v23 = 0;
          v24 = 0;
          v13 = v9;
          v14 = v8;
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v15, 0);
          ++v18;
          (*(*v1 + 16))(v1, v9, v8, &v13);
          *(v10 + 16) = 1;
LABEL_14:
          re::ContactSet::~ContactSet(&v13);
        }

LABEL_16:
        v12 = *(v2 + 10);
        if (v12 <= v4 + 1)
        {
          v12 = v4 + 1;
        }

        while (v12 - 1 != v4)
        {
          LODWORD(v4) = v4 + 1;
          if ((*(*(v2 + 3) + 40 * v4 + 8) & 0x80000000) != 0)
          {
            goto LABEL_22;
          }
        }

        LODWORD(v4) = v12;
LABEL_22:
        if (v4 == v3)
        {
          return;
        }
      }

      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19[0] = 0;
      *(v19 + 7) = 0;
      v23 = 0;
      v24 = 0;
      v13 = v9;
      v14 = v8;
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v15, 0);
      ++v18;
      (*(*v1 + 24))(v1, v9, v8, &v13);
      goto LABEL_14;
    }
  }
}

void *re::allocInfo_CollisionWorld(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_131, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_131))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D8D0, "CollisionWorld");
    __cxa_guard_release(&_MergedGlobals_131);
  }

  return &unk_1EE19D8D0;
}

void re::initInfo_CollisionWorld(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x28D4E2496010BF40;
  v6[1] = "CollisionWorld";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_CollisionWorld(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
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

uint64_t *re::collisionLogObjects(re *this)
{
  {
    re::collisionLogObjects(void)::logObjects = os_log_create("com.apple.re", "Collision");
  }

  return &re::collisionLogObjects(void)::logObjects;
}

float32x4_t *re::PhysXCompoundShape::aabb@<X0>(uint64_t a1@<X0>, float *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = 240 * v5;
    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v9 = vnegq_f32(v8);
    do
    {
      v36 = v9;
      v37 = v8;
      re::GeometricObjectBase::aabb(&v38, v6);
      v11 = v36;
      v10 = v37;
      v11.i32[3] = 0;
      v12 = v38;
      v13 = v39;
      v12.i32[3] = 0;
      v10.i32[3] = 0;
      v9 = vminnmq_f32(v11, v12);
      v13.i32[3] = 0;
      v8 = vmaxnmq_f32(v10, v13);
      v6 = (v6 + 240);
      v7 -= 240;
    }

    while (v7);
  }

  else
  {
    v8.i64[0] = 0x7F0000007FLL;
    v8.i64[1] = 0x7F0000007FLL;
    v9 = vnegq_f32(v8);
  }

  v42[0] = v9;
  v42[1] = v8;
  v14 = a2[4];
  v15 = a2[5];
  v16 = v14 + v14;
  v17 = v15 + v15;
  v18 = a2[6];
  v19 = a2[7];
  v20 = v18 + v18;
  v21 = v14 * (v14 + v14);
  v22 = v15 * (v15 + v15);
  v23 = v18 * (v18 + v18);
  v24 = v16 * v15;
  v25 = v16 * v18;
  v26 = v17 * v18;
  v27 = v17 * v19;
  v28 = v20 * v19;
  v29.i32[3] = 0;
  v29.f32[0] = 1.0 - (v22 + v23);
  v29.f32[1] = v24 + v28;
  v29.f32[2] = v25 - v27;
  v30 = v16 * v19;
  v31 = 1.0 - (v21 + v23);
  v32.i32[3] = 0;
  v32.f32[0] = v24 - v28;
  v32.f32[1] = v31;
  v32.f32[2] = v26 + v30;
  HIDWORD(v33) = 0;
  *&v33 = v25 + v27;
  *(&v33 + 1) = v26 - v30;
  *(&v33 + 2) = 1.0 - (v21 + v22);
  v38 = v29;
  v39 = v32;
  v34 = *a2;
  HIDWORD(v34) = 1.0;
  v40 = v33;
  v41 = v34;
  return re::AABB::transform(v42, &v38, a3);
}

void re::PhysXCompoundShape::~PhysXCompoundShape(re::PhysXCompoundShape *this)
{
  re::CompoundShape::~CompoundShape(this);

  JUMPOUT(0x1E6906520);
}

float re::ConeShape::massProperties(uint64_t a1, float *a2, _OWORD *a3, uint64_t a4)
{
  v8 = (*(*a1 + 64))(a1);
  v9 = (*(*a1 + 72))(a1);
  v10 = v9 * v9;
  v11 = v8 * (v10 * 1.0472);
  *a2 = v11;
  v12 = ((v8 * (v8 * 0.0375)) + (v10 * 0.15)) * v11;
  *a4 = v12;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = v10 * (v11 * 0.3);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v12;
  *(a4 + 44) = 0;
  result = v8 * -0.25;
  LODWORD(v14) = 0;
  *(&v14 + 1) = v8 * -0.25;
  *a3 = v14;
  return result;
}

float32x4_t re::PhysXEmptyShape::aabb@<Q0>(float32x4_t *a1@<X8>)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a1 = vnegq_f32(result);
  a1[1] = result;
  return result;
}

float re::RectangleShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  (*(*a1 + 64))(a1);
  v15 = v8;
  v9 = (*(*a1 + 64))(a1);
  v10.i64[0] = LODWORD(v15) | 0x3400000000000000;
  v10.i64[1] = HIDWORD(v9) | 0x3400000000000000;
  v11 = vmulq_f32(v10, v10);
  v12 = (v15 * 0.00000011921) * *(&v9 + 1);
  *a2 = v12;
  v13 = v12 / 12.0;
  *a4 = v13 * (v11.f32[1] + v11.f32[2]);
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = v13 * (v11.f32[0] + v11.f32[2]);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = v13 * vaddv_f32(*v11.f32);
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

re::PhysXCollisionFactory *re::PhysXCollisionFactory::PhysXCollisionFactory(re::PhysXCollisionFactory *this)
{
  v1 = this;
  v49 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0u;
  v2 = (this + 8);
  *this = &unk_1F5CCEA90;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if ((atomic_load_explicit(&qword_1EE19D968, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_1EE19D968);
    if (this)
    {
      _MergedGlobals_132 = &unk_1F5D28018;
      __cxa_guard_release(&qword_1EE19D968);
    }
  }

  if ((atomic_load_explicit(&qword_1EE19D978, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_1EE19D978);
    if (this)
    {
      qword_1EE19D970 = 0x412000003F800000;
      __cxa_guard_release(&qword_1EE19D978);
    }
  }

  re::internal::nvphysx::initPhysX(this);
  Instance = physx::shdfnd::Foundation::createInstance(67174656, &_MergedGlobals_132, re::PhysXCollisionFactory::PhysXCollisionFactory(void)::s_allocatorCallback);
  if (*v2)
  {
    (***v2)(*v2);
  }

  *v2 = Instance;
  v8 = physx::NpPhysics::createInstance(0x4010100, Instance, &qword_1EE19D970, 0, v3, v4, v5, v6);
  v14 = v8;
  if (v8)
  {
    PxRegisterArticulations(v8);
    PxRegisterArticulationsReducedCoordinate(v14);
    physx::PxvRegisterHeightFields(v15);
    physx::Gu::registerHeightFields(v16);
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  *(v1 + 2) = v14;
  v18 = *(v1 + 1);
  v42 = *&qword_1EE19D970 * (*&qword_1EE19D970 * 0.06);
  *v43 = 976715828;
  *(&v43[1] + 3) = 0;
  *&v43[3] = qword_1EE19D970;
  v43[5] = 0;
  v44 = 0x3F0CCCCD00000000;
  v45 = 0;
  v46 = 0;
  v47 = 32;
  Cooking = PxCreateCooking(0x4010100, v18, &v42, v9, v10, v11, v12, v13);
  v21 = v20;
  v22 = *(v1 + 3);
  if (v22)
  {
    (**v22)(v22, Cooking);
  }

  *(v1 + 3) = v21;
  v23 = (*(**(v1 + 2) + 240))(*(v1 + 2), 0.5, 0.5, 0.1);
  v24 = *(v1 + 6);
  if (v24)
  {
    (**v24)(v24);
  }

  *(v1 + 6) = v23;
  v26 = *(v1 + 2);
  v25 = *(v1 + 3);
  bzero(&v42, 0x3C0uLL);
  for (i = 0; i != 60; ++i)
  {
    v28 = __sincosf_stret(((i / 60.0) + (i / 60.0)) * 3.1416);
    *&v29 = LODWORD(v28.__cosval) | 0xBF00000000000000;
    *(&v29 + 1) = LODWORD(v28.__sinval) | 0xBF00000000000000;
    *&v43[4 * i - 1] = v29;
  }

  v48 = xmmword_1E3066660;
  v31 = *(v1 + 4);
  if (v31)
  {
    (**v31)(v31);
  }

  *(v1 + 4) = ConvexMesh;
  v33 = *(v1 + 2);
  v32 = *(v1 + 3);
  bzero(&v42, 0x780uLL);
  for (j = 0; j != 60; ++j)
  {
    v36 = __sincosf_stret(((j / 60.0) + (j / 60.0)) * 3.1416);
    *&v35 = v36.__cosval;
    v37 = v35;
    DWORD1(v37) = -0.5;
    DWORD2(v37) = LODWORD(v36.__sinval);
    v38 = &v43[4 * j - 1];
    DWORD1(v35) = 0.5;
    *v38 = v37;
    DWORD2(v35) = LODWORD(v36.__sinval);
    v38[60] = v35;
  }

  v40 = *(v1 + 5);
  if (v40)
  {
    (**v40)(v40);
  }

  *(v1 + 5) = v39;
  return v1;
}

void re::PhysXCollisionFactory::~PhysXCollisionFactory(re::PhysXCollisionFactory *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (**v2)(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    (**v3)(v3);
  }

  *(this + 4) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    (**v4)(v4);
  }

  *(this + 6) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    (**v5)(v5);
  }

  *(this + 3) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  *(this + 2) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    (**v7)(v7);
  }

  *(this + 1) = 0;
  v8 = *(this + 6);
  if (v8)
  {
    (**v8)(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    (**v9)(v9);
  }

  v10 = *(this + 4);
  if (v10)
  {
    (**v10)(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    (**v11)(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    (**v13)(v13);
  }
}

{
  re::PhysXCollisionFactory::~PhysXCollisionFactory(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::PhysXCollisionFactory::createCollisionWorld(re::PhysXCollisionFactory *this, re::Allocator *a2)
{
  v4 = (*(*a2 + 32))(a2, 416, 16);
  v5 = *(this + 2);

  return re::PhysXCollisionWorld::PhysXCollisionWorld(v4, a2, v5);
}

float re::PhysXCollisionFactory::createBoxShape(double a1, double a2, float a3, uint64_t a4, const char *a5, float *a6)
{
  v8 = *a6 * 0.5;
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v12 = a6[1] * 0.5;
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v15 = a6[2];
  if (re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken != -1)
  {
    dispatch_once(&re::RECollisionFeatureFlags::getMinimumBoxDimension(void)::onceToken, &__block_literal_global_11);
  }

  v17 = (*(*a5 + 32))(a5, 40, 8);
  v18 = fminf(fminf(v11, v16), v14);
  *(v17 + 20) = 3;
  result = v18 + v18;
  *(v17 + 16) = result;
  *v17 = &unk_1F5CCED60;
  *(v17 + 8) = v17 + 20;
  *(v17 + 24) = v11;
  *(v17 + 28) = v14;
  *(v17 + 32) = v16;
  return result;
}

float anonymous namespace::ensureValidExtent(_anonymous_namespace_ *this, float a2, const char *a3, float a4, float a5)
{
  v5 = a2;
  v14 = *MEMORY[0x1E69E9840];
  if (a2 < a4)
  {
    a2 = a4;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v6 = 1000000.0;
  }

  else
  {
    v6 = a2;
  }

  if (v6 != v5)
  {
    v8 = *re::collisionLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = this;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Bad parameter (%s), value = %f, passed to shape creation.", &v10, 0x16u);
    }
  }

  return v6;
}

float re::PhysXCollisionFactory::createCapsuleShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v11 = (*(*a2 + 32))(a2, 32, 8);
  if (v10 <= v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  *(v11 + 20) = 2;
  result = v12 + v12;
  *(v11 + 16) = result;
  *v11 = &unk_1F5CCDD98;
  *(v11 + 8) = v11 + 20;
  *(v11 + 24) = v7;
  *(v11 + 28) = v10;
  return result;
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (result)
  {
    v7 = result;
    v8 = (*(*a2 + 32))(a2, 72, 8);
    return re::PhysXConvexPolyhedronShape::PhysXConvexPolyhedronShape(v8, v7);
  }

  return result;
}

uint64_t anonymous namespace::createConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v27 = 255;
  v20 = 0;
  v19 = a4;
  v18 = a3;
  v17 = a5;
  v25 = 0;
  v26 = 16711762;
  v7 = (*(*physx::shdfnd::Foundation::mInstance + 32))(physx::shdfnd::Foundation::mInstance);
  v13 = &unk_1F5D28378;
  v14 = v7;
  v15 = 0;
  v16 = 0;
  v12 = 0;
  v8 = (*(*a1 + 56))(a1, &v17, &v13, &v12);
  if (v8)
  {
    *buf = &unk_1F5D283B0;
    v30 = v15;
    v29 = v16;
    v31 = 0;
    v9 = (*(*a2 + 96))(a2, buf);
  }

  else
  {
    v10 = *re::collisionLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to cook convex mesh (0x%x)", buf, 8u);
    }

    v9 = 0;
  }

  v13 = &unk_1F5D28378;
  if (v15)
  {
    (*(*v14 + 24))(v14);
  }

  return v9;
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  return re::PhysXCollisionFactory::createConvexPolyhedronShape(a1, a2, a3, a4, 16);
}

{
  return re::PhysXCollisionFactory::createConvexPolyhedronShape(a1, a2, a3, a4, 16);
}

uint64_t re::PhysXCollisionFactory::createConvexPolyhedronShape(re::PhysXCollisionFactory *this, Allocator *a2, const re::ConvexPolyhedronShape *a3)
{
  v3 = *(*(a3 + 1) + 32);
  v4 = (*(a2->var0 + 4))(a2, 72, 8);

  return re::PhysXConvexPolyhedronShape::PhysXConvexPolyhedronShape(v4, v3);
}

uint64_t *re::PhysXCollisionFactory::emptyShape(re::PhysXCollisionFactory *this)
{
  if ((atomic_load_explicit(&qword_1EE19D980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D980))
  {
    dword_1EE19D998 = 0;
    qword_1EE19D988 = &unk_1F5CCEA10;
    unk_1EE19D990 = 0;
    __cxa_guard_release(&qword_1EE19D980);
  }

  return &qword_1EE19D988;
}

uint64_t re::PhysXCollisionFactory::createEmptyShape(re::PhysXCollisionFactory *this, Allocator *a2)
{
  result = (*(a2->var0 + 4))(a2, 24, 8);
  *(result + 16) = 0;
  *result = &unk_1F5CCEA10;
  *(result + 8) = 0;
  return result;
}

uint64_t re::PhysXCollisionFactory::createPlaneShape(float a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = (*(*a3 + 32))(a3, 112, 16);

  return re::PhysXPlaneShape::PhysXPlaneShape(v6, a4, a1);
}

uint64_t re::PhysXCollisionFactory::createSphereShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, double a4, float a5)
{
  result = (*(*a2 + 32))(a2, 32, 8);
  *(result + 20) = 0;
  *(result + 16) = v6;
  *result = &unk_1F5CCECF0;
  *(result + 8) = result + 20;
  *(result + 24) = v6;
  return result;
}

double re::PhysXCollisionFactory::createConeShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v12 = (*(*a2 + 32))(a2, 72, 8);
  v13 = *(this + 4);
  v14 = v8 + v8;
  *(v12 + 24) = 4;
  if ((v8 + v8) > v11)
  {
    v14 = v11;
  }

  *(v12 + 16) = v14;
  *v12 = &unk_1F5CCDF70;
  *(v12 + 8) = v12 + 24;
  *(v12 + 28) = v8;
  *(v12 + 32) = v11;
  *(v12 + 36) = v8;
  result = 0.0;
  *(v12 + 40) = xmmword_1E30474D0;
  *(v12 + 56) = v13;
  *(v12 + 64) = 1;
  *(v12 + 67) = 0;
  *(v12 + 65) = 0;
  return result;
}

double re::PhysXCollisionFactory::createCylinderShape(re::PhysXCollisionFactory *this, re::Allocator *a2, float a3, float a4, float a5)
{
  v12 = (*(*a2 + 32))(a2, 72, 8);
  v13 = *(this + 5);
  v14 = v8 + v8;
  *(v12 + 24) = 4;
  if ((v8 + v8) > v11)
  {
    v14 = v11;
  }

  *(v12 + 16) = v14;
  *v12 = &unk_1F5CCE7F0;
  *(v12 + 8) = v12 + 24;
  *(v12 + 28) = v8;
  *(v12 + 32) = v11;
  *(v12 + 36) = v8;
  result = 0.0;
  *(v12 + 40) = xmmword_1E30474D0;
  *(v12 + 56) = v13;
  *(v12 + 64) = 1;
  *(v12 + 67) = 0;
  *(v12 + 65) = 0;
  return result;
}

float re::PhysXCollisionFactory::createRectangleShape(double a1, double a2, float a3, uint64_t a4, const char *a5, float *a6)
{
  v12 = (*(*a5 + 32))(a5, 40, 8);
  if (v11 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  *(v12 + 20) = 3;
  result = v13 + v13;
  *(v12 + 16) = result;
  *v12 = &unk_1F5CCE780;
  *(v12 + 8) = v12 + 20;
  *(v12 + 24) = v8;
  *(v12 + 28) = 872415232;
  *(v12 + 32) = v11;
  return result;
}

void *re::PhysXCollisionFactory::createCompoundShape(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(*a2 + 32))(a2, 144, 8);
  result = re::CompoundShape::CompoundShape(v12, a2, 0, a3, a4, a5, a7);
  *result = &unk_1F5CCE980;
  return result;
}

void re::PhysXCollisionFactory::createTriangleMeshShape(re::PhysXCollisionFactory *this, re::Allocator *a2, const re::IndexedTriangleMesh *a3)
{
  if (a3)
  {
    v4 = *(a3 + 8);
    if (v4)
    {
      (*(*v4 + 120))(&v9);
      v6 = vsub_f32(v12, v10);
      if (v6.f32[0] >= v6.f32[1])
      {
        v6.f32[0] = v6.f32[1];
      }

      if ((v11 - v9) >= v6.f32[0])
      {
        v7 = v6.f32[0];
      }

      else
      {
        v7 = v11 - v9;
      }

      v8 = (*(*a2 + 32))(a2, 80, 8);
      re::PhysXTriangleMeshShape::PhysXTriangleMeshShape(v8, a3, v7);
    }
  }
}

re::PhysXCollisionObject *re::PhysXCollisionFactory::createCollisionObject(re::CollisionFactory *a1, re::Allocator *a2, const re::CollisionShape *a3, float32x4_t *a4, unsigned int a5, uint64_t a6)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) shape must not be null.", "shape != nullptr", "createCollisionObject", 325);
    _os_crash();
    __break(1u);
  }

  v12 = (*(*a3 + 56))(a3);
  v13 = *(a1 + 2);
  if ((a5 & 9) != 0 || v12)
  {
    goto LABEL_7;
  }

  v25 = a4[1];
  v26 = a4->i64[0];
  LODWORD(v27) = a4->i32[2];
  v14 = (*(*v13 + 176))(v13, &v25);
  (*(*v14 + 560))();
  (*(*v14 + 560))(v14, 2, 1);
  (*(*v14 + 560))(v14, 4, 1);
  (*(*v14 + 560))(v14, 8, 1);
  (*(*v14 + 560))(v14, 16, 1);
  (*(*v14 + 560))(v14, 32, 1);
  if (a6)
  {
LABEL_8:
    v17 = a3;
  }

  else
  {
    while (1)
    {
      v15 = (*(*a3 + 24))(a3);
      v17 = re::CollisionFactory::deepCopyShape(a1, a2, a3);
      a6 = a2;
      if (v17)
      {
        break;
      }

      re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) deepCopyShape() failed (%p). Shape type: %d", "shape != nullptr", "createCollisionObject", 354, a3, v15);
      v13 = _os_crash();
      __break(1u);
LABEL_7:
      v25 = a4[1];
      v26 = a4->i64[0];
      LODWORD(v27) = a4->i32[2];
      v14 = (*(*v13 + 168))(v13, &v25);
      if (a6)
      {
        goto LABEL_8;
      }
    }
  }

  GeometricObject = re::CollisionFactory::createGeometricObject(a1, a2, v17, a4, a6);
  v19 = *(a1 + 6);
  v20 = *(a1 + 2);
  v25 = 0uLL;
  v27 = 0x3F80000000000000;
  v28[0] = v19;
  v26 = 0;
  if (attachShape(v20, v14, GeometricObject, 0, &v25, v28, 1, (a5 >> 1) & 1))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*a2 + 32))(a2, 144, 16);
  v23.i32[0] = 1.0;
  return re::PhysXCollisionObject::PhysXCollisionObject(v22, v21, a5, GeometricObject, a2, v14, v23);
}

uint64_t attachShape(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(*a3 + 16))(a3);
  if ((*(*v16 + 24))(v16) == 1)
  {
    return 0;
  }

  if (a4)
  {
    (*(*a3 + 40))(&v54, a3);
    _Q0 = a5[1];
    v18 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
    v19 = vnegq_f32(_Q0);
    v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), v19), v54, v18);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v19), v22, v18);
    v24 = vaddq_f32(vaddq_f32(v54, vmulq_laneq_f32(v22, _Q0, 3)), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v19), v55, v18);
    v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v55, _Q0, 3), _Q0, v55, 3);
    _S4 = v55.i32[3];
    __asm { FMLA            S5, S4, V0.S[3] }

    v26.i32[3] = _Q5.i32[0];
    *a5 = vaddq_f32(*a5, v24);
    a5[1] = v26;
  }

  if ((*(*v16 + 24))(v16) == 7)
  {
    v32 = *(v16 + 32);
    if (v32)
    {
      v33 = *(v16 + 40);
      v34 = 240 * v32;
      LODWORD(v16) = 1;
      do
      {
        v35 = a5[1];
        v54 = *a5;
        v55 = v35;
        v16 = v16 & (attachShape)(a1, a2, v33, a3, &v54, a6, a7, a8);
        v33 += 240;
        v34 -= 240;
      }

      while (v34);
      return v16;
    }

    return 1;
  }

  v36 = *(v16 + 8);
  if (!v36)
  {
    return 1;
  }

  a3[6] = a4;
  v54.i8[0] = 11;
  v37 = (*(*a1 + 192))(a1, v36, a6, a7, 1, &v54);
  v38 = v37;
  if (a8)
  {
    (*(*v37 + 296))(v37, 1, 0);
    (*(*v38 + 296))(v38, 4, 1);
  }

  else if (!v37)
  {
    return 1;
  }

  if ((*(*v16 + 40))(v16))
  {
    v39 = (*(*v16 + 48))(v16);
    _Q0 = a5[1];
    v41 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
    _Q4 = *(v39 + 16);
    v43 = vnegq_f32(_Q0);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v39, *v39), *v39, 0xCuLL), v43), *v39, v41);
    v45 = vaddq_f32(v44, v44);
    v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v43), v46, v41);
    v48 = vaddq_f32(*a5, vaddq_f32(vaddq_f32(*v39, vmulq_laneq_f32(v46, _Q0, 3)), vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL)));
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v43), _Q4, v41);
    v50 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q4, _Q0, 3);
    _Q3.i32[0] = _Q4.i32[3];
    v51 = vmlaq_laneq_f32(v50, _Q0, _Q4, 3);
    __asm { FMLA            S4, S3, V0.S[3] }

    v51.i32[3] = _Q4.i32[0];
    *a5 = v48;
    a5[1] = v51;
    v52 = v48.i32[2];
  }

  else
  {
    v51 = a5[1];
    v48.i64[0] = a5->i64[0];
    v52 = a5->i32[2];
  }

  a3[7] = v38;
  v54 = v51;
  v55.i64[0] = v48.i64[0];
  v55.i32[2] = v52;
  (*(*v38 + 152))(v38, &v54);
  (*(*a2 + 168))(a2, v38);
  v16 = (*(*v38 + 64))(v38) == 3 || (*(*v38 + 64))(v38) == 4 || (*(*v38 + 64))(v38) == 5;
  (**v38)(v38);
  return v16;
}

re::PhysXCollisionObject *re::PhysXCollisionFactory::createCollisionObject(re::PhysXCollisionFactory *this, re::Allocator *a2, re::GeometricObjectBase *a3, void *a4, void *const *a5, uint64_t a6)
{
  v9 = *(this + 2);
  v14 = 0uLL;
  v15 = 0;
  v16 = 0x3F80000000000000;
  if (attachShape(v9, a4, a3, 0, &v14, a5, a6, 0))
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = (*(*a2 + 32))(a2, 144, 16);
  v12.i32[0] = 1.0;

  return re::PhysXCollisionObject::PhysXCollisionObject(v11, v10, 8, a3, 0, a4, v12);
}

uint64_t re::PhysXCollisionFactory::createIndexedTriangleMesh(re *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh positions must not be null.";
      goto LABEL_10;
    }

    return 0;
  }

  if (!a6)
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh indices must not be null.";
      goto LABEL_10;
    }

    return 0;
  }

  if (a7 != 3 * (a7 / 3))
  {
    v11 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Triangle mesh index count is not a multiple of 3.";
LABEL_10:
      v13 = v11;
      v14 = 2;
LABEL_11:
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      return 0;
    }

    return 0;
  }

  if (a9 && a7 / 3 > a10)
  {
    v17 = *re::collisionLogObjects(a1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134217984;
    *v35 = a7;
    v12 = "Failed to cook triangle mesh material index count is too small, expected %zu material indices";
    v13 = v17;
    v14 = 12;
    goto LABEL_11;
  }

  v40 = 0;
  v36 = a4;
  *&v35[4] = a3;
  *buf = a5;
  v39 = a7 / 3;
  v38 = a6;
  if (a8 == 1)
  {
    v40 = 2;
    v20 = 6;
  }

  else
  {
    v20 = 12;
  }

  v42 = a9;
  v37 = v20;
  v41 = 2 * (a9 != 0);
  v21 = (*(*physx::shdfnd::Foundation::mInstance + 32))(physx::shdfnd::Foundation::mInstance);
  v26 = &unk_1F5D28378;
  v27 = v21;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v22 = (*(**(a1 + 3) + 32))(*(a1 + 3), buf, &v26, &v25);
  if (v22)
  {
    *v30 = &unk_1F5D283B0;
    v31 = v29;
    v32 = v28;
    v33 = 0;
    v23 = (*(**(a1 + 2) + 48))(*(a1 + 2), v30);
    v18 = (*(*a2 + 32))(a2, 72, 8);
    re::PhysXIndexedTriangleMesh::PhysXIndexedTriangleMesh(v18, v23);
  }

  else
  {
    v24 = *re::collisionLogObjects(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v30 = 67109120;
      *&v30[4] = v25;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Failed to cook triangle mesh (0x%x)", v30, 8u);
    }

    v18 = 0;
  }

  v26 = &unk_1F5D28378;
  if (v28)
  {
    (*(*v27 + 24))(v27);
  }

  return v18;
}

uint64_t re::PhysXCollisionFactory::createCharacterController(uint64_t a1, re::Allocator *a2, uint64_t a3, float32x2_t *a4, uint64_t *a5, uint64_t a6, float a7)
{
  v14 = *(a3 + 24);
  if ((*(a3 + 20) + (v14 * -2.0)) >= 0.01)
  {
    v15 = *(a3 + 20) + (v14 * -2.0);
  }

  else
  {
    v15 = 0.01;
  }

  v16 = (*(*a2 + 32))(a2, 384, 16);
  v17 = re::CharacterController::CharacterController(v16, a2, *a3, *(a3 + 8), *(a3 + 4));
  *(v17 + 84) = (v15 + (v14 * 2.0)) + (v14 * -2.0);
  *(v17 + 85) = v14;
  *v17 = &unk_1F5CCE4B0;
  *(v17 + 43) = &unk_1F5CCE5A8;
  *(v17 + 44) = v17;
  *(v17 + 45) = &unk_1F5CCEBD8;
  *(v17 + 46) = 0;
  re::PhysXCollisionFactory::createCapsuleShape(v17, a2, (v15 + (*(a3 + 24) * 2.0)) * a7, *(a3 + 24) * a7, v18);
  re::internal::PhysXCapsuleController::createUnderlyingController(v16, a2, v19, a3, a4, a5, a6, *(a1 + 48), a7);
  v20 = (*(**(v16 + 152) + 56))(*(v16 + 152));
  v21 = (*(*a2 + 32))(a2, 144, 16);
  *v22.i32 = a7;
  v23 = re::PhysXCollisionObject::PhysXCollisionObject(v21, 1, 0, v16, 0, v20, v22);
  *(v16 + 136) = v23;
  v24 = *(a3 + 12);
  if (*(v23 + 4) != v24)
  {
    *(v23 + 4) = v24;
    (*(*v23 + 80))(v23);
  }

  return v16;
}

void *re::PhysXCollisionFactory::serializeRawShape@<X0>(re::Allocator *a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a1;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::internal::PhysXControllerBehaviorCallback::getBehaviorFlags(_BYTE *a1@<X8>)
{
  *a1 = 4;
}

{
  *a1 = 4;
}

{
  *a1 = 4;
}

void ___ZN2re23RECollisionFeatureFlags22getMinimumBoxDimensionEv_block_invoke(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  re::Defaults::floatValue("RECollisionMinimumBoxDimension", a2, &v4);
  if (v4 == 1)
  {
    re::RECollisionFeatureFlags::gMinimumBoxDimension = LODWORD(v5);
  }

  v3 = *re::collisionLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = *&re::RECollisionFeatureFlags::gMinimumBoxDimension;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "RECollisionMinimumBoxDimension is now %f.", &v4, 0xCu);
  }
}

void re::ContactSet::~ContactSet(re::ContactSet *this)
{
  v2 = this + 16;
  if (*(this + 2))
  {
    re::DynamicArray<unsigned long>::deinit(this + 16);
    *(this + 14) = 0;
    *(this + 15) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(v2);
}

uint64_t re::ContactSet::set(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a2 + 32))(a2, a3);
  re::DynamicArray<re::Contact>::resize(a1 + 2, v6);
  v7 = *(*a1 + 24);
  v8 = v7 != *((*(*a2 + 40))(a2, a3) + 24);
  v9 = *(*a2 + 56);

  return v9(a2, a3, a1, 0, v6, v8);
}

void *re::DynamicArray<re::Contact>::resize(void *result, unint64_t a2)
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

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 80 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 80 * v4;
        v7 = v5 / 0x50uLL + 1;
        do
        {
          *(v6 + 64) = 0;
          *(v6 + 32) = 0uLL;
          *(v6 + 48) = 0uLL;
          *v6 = 0uLL;
          *(v6 + 16) = 0uLL;
          v6 += 80;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::ContactSet::merge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*a2 + 32))(a2, a3);
  re::DynamicArray<re::Contact>::resize((a1 + 16), v7 + v6);
  v8 = *(*a1 + 24);
  v9 = v8 != *((*(*a2 + 40))(a2, a3) + 24);
  v10 = *(*a2 + 56);

  return v10(a2, a3, a1, v6, v7, v9);
}

re::PhysXCollisionObject *re::PhysXCollisionObject::PhysXCollisionObject(re::PhysXCollisionObject *a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, int32x2_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = re::CollisionObject::CollisionObject(a1, a2, a3, a4, a5, a6);
  v10->i64[0] = &unk_1F5CCEC68;
  v10[7].i64[0] = 0;
  v10[7].i64[1] = 0;
  v10[6].i64[1] = 0;
  v10[8] = vdupq_lane_s32(a7, 0);
  a6[2] = v10;
  v11 = (*(*a4 + 16))(a4);
  if ((*(*v11 + 24))(v11) == 7)
  {
    v13 = (*(*a4 + 16))(a4);
    *&v42 = a1;
    *(&v42 + 1) = re::PhysXCollisionObject::onChildPoseDidChange;
    *&v43 = 0;
    *(&v43 + 1) = re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    v12.n128_f64[0] = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v13 + 56), &v42);
  }

  v14 = (*(*a6 + 184))(a6, v12);
  v15 = v14;
  v16 = v14;
  *(a1 + 14) = v16;
  if (v15)
  {
    *(a1 + 15) = v17;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  v19 = (*(*a6 + 184))(a6);
  if (v19)
  {
    v20 = 0;
    v21 = 8;
    v22 = v19;
    while (1)
    {
      v30 = 0;
      (*(*a6 + 192))(a6, &v30, 1, v20);
      v23 = (*(*v30 + 64))(v30);
      if (v23 > 2)
      {
        break;
      }

      if (v23)
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            goto LABEL_33;
          }

          *&v37[8] = 0;
          *v37 = 2;
          (*(*v30 + 104))(v30, v37);
          v25 = *(a1 + 14);
          if (v25 <= v20)
          {
            goto LABEL_28;
          }

          *(*(a1 + 15) + v21 - 8) = vrev64_s32(*&v37[4]);
        }
      }

      else
      {
        v31 = 0;
        (*(*v30 + 96))(v30, &v31);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_29;
        }

        *(*(a1 + 15) + v21 - 8) = HIDWORD(v31);
      }

LABEL_25:
      ++v20;
      v21 += 12;
      if (v22 == v20)
      {
        goto LABEL_26;
      }
    }

    switch(v23)
    {
      case 5:
        v32 = 5;
        v33 = xmmword_1E304F3C0;
        v34 = 0;
        *v35 = 1065353216;
        v36 = 0;
        (*(*v30 + 128))(v30, &v32);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_31;
        }

        break;
      case 4:
        v32 = 4;
        v33 = xmmword_1E304F3C0;
        v34 = 0;
        *v35 = 1065353216;
        *&v35[4] = 0;
        LOBYTE(v36) = 1;
        *(&v36 + 1) = 0;
        BYTE3(v36) = 0;
        (*(*v30 + 120))(v30, &v32);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          goto LABEL_30;
        }

        break;
      case 3:
        *v37 = 3;
        *&v37[8] = 0;
        (*(*v30 + 88))(v30, v37);
        v25 = *(a1 + 14);
        if (v25 <= v20)
        {
          v31 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          *&v33 = "operator[]";
          WORD4(v33) = 1024;
          *(&v33 + 10) = 468;
          HIWORD(v33) = 2048;
          v34 = v20;
          *v35 = 2048;
          *&v35[2] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_28:
          v31 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          *&v33 = "operator[]";
          WORD4(v33) = 1024;
          *(&v33 + 10) = 468;
          HIWORD(v33) = 2048;
          v34 = v20;
          *v35 = 2048;
          *&v35[2] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_29:
          *v37 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          *&v33 = "operator[]";
          WORD4(v33) = 1024;
          *(&v33 + 10) = 468;
          HIWORD(v33) = 2048;
          v34 = v20;
          *v35 = 2048;
          *&v35[2] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_30:
          v31 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v37 = 136315906;
          *&v37[4] = "operator[]";
          *&v37[12] = 1024;
          *&v37[14] = 468;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_31:
          v31 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v37 = 136315906;
          *&v37[4] = "operator[]";
          *&v37[12] = 1024;
          *&v37[14] = 468;
          v38 = 2048;
          v39 = v20;
          v40 = 2048;
          v41 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_32:
          re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
LABEL_33:
          re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Unsupported geometry type!", "!Unreachable code", "getExtentsForAllShapes", 63);
          _os_crash();
          __break(1u);
        }

        v26 = (*(a1 + 15) + v21);
        *(v26 - 1) = *&v37[4];
        v27 = *&v37[12];
        goto LABEL_24;
      default:
        goto LABEL_33;
    }

    v26 = (*(a1 + 15) + v21);
    *(v26 - 1) = v33;
    v27 = DWORD2(v33);
LABEL_24:
    *v26 = v27;
    goto LABEL_25;
  }

LABEL_26:
  re::PhysXCollisionObject::updateFilterData(a1);
  return a1;
}