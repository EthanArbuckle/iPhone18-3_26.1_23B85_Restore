void *re::internal::defaultConstruct<re::ecs2::PrimitiveBoxSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFBE80;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveBoxSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFBF28;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFBFA0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFBE80;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFBF28;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFBFA0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveBoxWithRoundedCornersSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2730, "PrimitiveBoxWithRoundedCornersSystem");
    __cxa_guard_release(&qword_1EE1B1F78);
  }

  return &unk_1EE1B2730;
}

void re::ecs2::initInfo_PrimitiveBoxWithRoundedCornersSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD4A71245D6CF78D4;
  v6[1] = "PrimitiveBoxWithRoundedCornersSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveBoxWithRoundedCornersSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFC168;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFC210;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFC288;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFC168;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFC210;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFC288;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveCapsuleSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B27C0, "PrimitiveCapsuleSystem");
    __cxa_guard_release(&qword_1EE1B1F80);
  }

  return &unk_1EE1B27C0;
}

void re::ecs2::initInfo_PrimitiveCapsuleSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x62F012C966B9B26ALL;
  v6[1] = "PrimitiveCapsuleSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveCapsuleSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveCapsuleSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveCapsuleSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveCapsuleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveCapsuleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveCapsuleSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveCapsuleSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveCapsuleSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFC450;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveCapsuleSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFC4F8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFC570;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveCapsuleSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFC450;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveCapsuleSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFC4F8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFC570;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveConeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2850, "PrimitiveConeSystem");
    __cxa_guard_release(&qword_1EE1B1F88);
  }

  return &unk_1EE1B2850;
}

void re::ecs2::initInfo_PrimitiveConeSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3E3E836F1EA3C6B2;
  v6[1] = "PrimitiveConeSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveConeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveConeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveConeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveConeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveConeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveConeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveConeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveConeSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFC738;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveConeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFC7E0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFC858;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveConeSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFC738;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveConeSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFC7E0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFC858;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveCylinderSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B28E0, "PrimitiveCylinderSystem");
    __cxa_guard_release(&qword_1EE1B1F90);
  }

  return &unk_1EE1B28E0;
}

void re::ecs2::initInfo_PrimitiveCylinderSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4B4DB97F8123C98;
  v6[1] = "PrimitiveCylinderSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveCylinderSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveCylinderSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveCylinderSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveCylinderSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveCylinderSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveCylinderSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveCylinderSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveCylinderSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFCA20;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveCylinderSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFCAC8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFCB40;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveCylinderSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFCA20;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveCylinderSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFCAC8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFCB40;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitivePlaneSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1F98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2970, "PrimitivePlaneSystem");
    __cxa_guard_release(&qword_1EE1B1F98);
  }

  return &unk_1EE1B2970;
}

void re::ecs2::initInfo_PrimitivePlaneSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x89DCFC1F499118C8;
  v6[1] = "PrimitivePlaneSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitivePlaneSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitivePlaneSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitivePlaneSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitivePlaneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitivePlaneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitivePlaneSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitivePlaneSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitivePlaneSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFCD08;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitivePlaneSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFCDB0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFCE28;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitivePlaneSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFCD08;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitivePlaneSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFCDB0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFCE28;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitivePyramidSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1FA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2A00, "PrimitivePyramidSystem");
    __cxa_guard_release(&qword_1EE1B1FA0);
  }

  return &unk_1EE1B2A00;
}

void re::ecs2::initInfo_PrimitivePyramidSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x901A0DAEED3BCC30;
  v6[1] = "PrimitivePyramidSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitivePyramidSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitivePyramidSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitivePyramidSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitivePyramidSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitivePyramidSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitivePyramidSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitivePyramidSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitivePyramidSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFCFF0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitivePyramidSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFD098;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFD110;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitivePyramidSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePyramidComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFCFF0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitivePyramidSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFD098;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFD110;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveSphereSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1FA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2A90, "PrimitiveSphereSystem");
    __cxa_guard_release(&qword_1EE1B1FA8);
  }

  return &unk_1EE1B2A90;
}

void re::ecs2::initInfo_PrimitiveSphereSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB3F8B3FD294D0D86;
  v6[1] = "PrimitiveSphereSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveSphereSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveSphereSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveSphereSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveSphereSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveSphereSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveSphereSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveSphereSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveSphereSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFD2D8;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveSphereSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFD380;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFD3F8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveSphereSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveSphereComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFD2D8;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveSphereSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFD380;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFD3F8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveTetrahedronSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1FB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2B20, "PrimitiveTetrahedronSystem");
    __cxa_guard_release(&qword_1EE1B1FB0);
  }

  return &unk_1EE1B2B20;
}

void re::ecs2::initInfo_PrimitiveTetrahedronSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x21CCEC08E11CF988;
  v6[1] = "PrimitiveTetrahedronSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveTetrahedronSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveTetrahedronSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveTetrahedronSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveTetrahedronSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveTetrahedronSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveTetrahedronSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveTetrahedronSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveTetrahedronSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFD5C0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveTetrahedronSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFD668;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFD6E0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveTetrahedronSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTetrahedronComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFD5C0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveTetrahedronSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFD668;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFD6E0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PrimitiveTubeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1FB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1FB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B2BB0, "PrimitiveTubeSystem");
    __cxa_guard_release(&qword_1EE1B1FB8);
  }

  return &unk_1EE1B2BB0;
}

void re::ecs2::initInfo_PrimitiveTubeSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3E41BDBAC67DCBF4;
  v6[1] = "PrimitiveTubeSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PrimitiveTubeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PrimitiveTubeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PrimitiveTubeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PrimitiveTubeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PrimitiveTubeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PrimitiveTubeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PrimitiveTubeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::PrimitiveTubeSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 496) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::PrimitiveComponentSystemBase(a3);
  *result = &unk_1F5CFD8A8;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PrimitiveTubeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = &unk_1F5CFD950;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);
  a3[28] = &unk_1F5CFD9C8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::PrimitiveTubeSystem>(uint64_t a1)
{
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveTubeComponent>::PrimitiveComponentSystemBase(a1);
  *result = &unk_1F5CFD8A8;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PrimitiveTubeSystem>(uint64_t *a1)
{
  *a1 = &unk_1F5CFD950;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);
  a1[28] = &unk_1F5CFD9C8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveBoxComponent>(ArcSharedObject *a1)
{
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *&result = 0x1000100010001;
  *(v1 + 28) = 0x1000100010001;
  *(v1 + 36) = xmmword_1E305B4C0;
  *(v1 + 52) = 257;
  *(v1 + 54) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0x1000100010001;
  *(v1 + 120) = xmmword_1E305B4C0;
  *(v1 + 136) = 257;
  *(v1 + 138) = 0;
  *(v1 + 140) = 1;
  *v1 = &unk_1F5CD08C8;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs221PrimitiveBoxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>(uint64_t a1)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *&result = 0x3000100010001;
  *(v1 + 28) = 0x3000100010001;
  *(v1 + 36) = 4;
  *(v1 + 40) = xmmword_1E305B4D0;
  *(v1 + 56) = 1065353216;
  *(v1 + 60) = 16777473;
  *(v1 + 64) = 1;
  *(v1 + 66) = 0;
  *(v1 + 68) = 0;
  *(v1 + 70) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0x3000100010001;
  *(v1 + 128) = 4;
  *(v1 + 132) = xmmword_1E305B4D0;
  *(v1 + 148) = 1065353216;
  *(v1 + 152) = 16777473;
  *(v1 + 156) = 1;
  *(v1 + 158) = 0;
  *(v1 + 160) = 1;
  *v1 = &unk_1F5CE0780;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs239PrimitiveBoxWithRoundedCornersComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveCapsuleComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 65544;
  *(v1 + 32) = 4;
  result = 2.00000047;
  *(v1 + 36) = 0x400000003F000000;
  *(v1 + 44) = 257;
  *(v1 + 46) = 0;
  *(v1 + 48) = 0;
  *(v1 + 50) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 65544;
  *(v1 + 108) = 4;
  *(v1 + 112) = 0x400000003F000000;
  *(v1 + 120) = 257;
  *(v1 + 122) = 0;
  *(v1 + 124) = 1;
  *v1 = &unk_1F5CD0CA8;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225PrimitiveCapsuleComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveConeComponent>(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 65544;
  result = 0.0000305175853;
  *(v1 + 32) = 0x3F0000003F800000;
  *(v1 + 40) = 65793;
  *(v1 + 44) = 0;
  *(v1 + 46) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 65544;
  *(v1 + 100) = 0x3F0000003F800000;
  *(v1 + 108) = 65793;
  *(v1 + 112) = 1;
  *v1 = &unk_1F5CD0AB8;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222PrimitiveConeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveCylinderComponent>(uint64_t a1)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 65544;
  result = 0.0000305175853;
  *(v1 + 32) = 0x3F0000003F800000;
  *(v1 + 40) = 0x10101013F000000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 54) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 65544;
  *(v1 + 108) = 0x3F0000003F800000;
  *(v1 + 116) = 0x10101013F000000;
  *(v1 + 124) = 0;
  *(v1 + 128) = 1;
  *v1 = &unk_1F5CD09C0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226PrimitiveCylinderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitivePlaneComponent>(ArcSharedObject *a1)
{
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 65537;
  *(v1 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 36) = result;
  *(v1 + 44) = 0;
  *(v1 + 48) = 257;
  *(v1 + 52) = 2;
  *(v1 + 56) = 0;
  *(v1 + 58) = 1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 65537;
  *(v1 + 116) = 0;
  *(v1 + 120) = result;
  *(v1 + 128) = 0;
  *(v1 + 132) = 257;
  *(v1 + 136) = 2;
  *(v1 + 140) = 1;
  *v1 = &unk_1F5CE0BF8;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223PrimitivePlaneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitivePyramidComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 32) = result;
  *(v1 + 40) = 1065353216;
  *(v1 + 44) = 257;
  *(v1 + 46) = 0;
  *(v1 + 48) = 0;
  *(v1 + 50) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 1;
  *(v1 + 108) = result;
  *(v1 + 116) = 1065353216;
  *(v1 + 120) = 257;
  *(v1 + 122) = 0;
  *(v1 + 124) = 1;
  *v1 = &unk_1F5CE0DD0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225PrimitivePyramidComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveSphereComponent>(ArcSharedObject *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 8;
  *(v1 + 32) = 1056964608;
  *(v1 + 36) = 257;
  *(v1 + 38) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 1;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 8;
  *(v1 + 100) = 1056964608;
  *(v1 + 104) = 257;
  *(v1 + 106) = 0;
  *(v1 + 108) = 1;
  *v1 = &unk_1F5CD0BB0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs224PrimitiveSphereComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveTetrahedronComponent>(ArcSharedObject *a1)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 1065353216;
  *(v1 + 36) = 257;
  *(v1 + 38) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 1;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 1;
  *(v1 + 100) = 1065353216;
  *(v1 + 104) = 257;
  *(v1 + 106) = 0;
  *(v1 + 108) = 1;
  *v1 = &unk_1F5CE1088;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs229PrimitiveTetrahedronComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::PrimitiveTubeComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 28) = 65544;
  result = 0.00000190734908;
  *(v1 + 32) = 0x3EC000003F800000;
  *(v1 + 40) = 1056964608;
  *(v1 + 44) = 257;
  *(v1 + 46) = 0;
  *(v1 + 48) = 0;
  *(v1 + 50) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 65544;
  *(v1 + 108) = 0x3EC000003F800000;
  *(v1 + 116) = 1056964608;
  *(v1 + 120) = 257;
  *(v1 + 122) = 0;
  *(v1 + 124) = 1;
  *v1 = &unk_1F5CE1260;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222PrimitiveTubeComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFBF28;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFBFA0;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveBoxSystem::~PrimitiveBoxSystem(re::ecs2::PrimitiveBoxSystem *this)
{
  *this = &unk_1F5CFBF28;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFBFA0;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFBF28;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFBFA0;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveBoxComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v37, a5, 0);
  v51 = a4;
  v52 = v37;
  v53 = v38;
  if (v37 != a5 || v38 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v52);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 112) = *(v11 + 28);
        *(v11 + 123) = *(v11 + 39);
        v13 = *(v11 + 56);
        *(v11 + 140) = v13;
        v14 = *(v11 + 57);
        *(v11 + 141) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v37);
        (*(*v8 + 40))(&v35, v8, &v37);
        v15 = *(v11 + 64);
        *(v11 + 64) = v35;
        v35 = v15;
        v16 = *(v11 + 80);
        *(v11 + 80) = v36;
        v36 = v16;
        re::AssetHandle::~AssetHandle(&v35);
        re::AssetHandle::loadNow(*(v11 + 72), 0);
        v17 = *(v11 + 72);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 72))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 64));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 58) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 96))
              {
                v23 = v21;
                v24 = re::internal::buildCollisionShape((v11 + 28), v22);
                v25 = re::CollisionShapeAsset::assetType(v24);
                (*(*v8 + 424))(&v35, v8, v24, v25, 0, 2, 0);
                v27 = *(v11 + 88);
                v26 = (v11 + 88);
                *v26 = v35;
                v35 = v27;
                v28 = v26[2];
                v26[2] = v36;
                v36 = v28;
                re::AssetHandle::~AssetHandle(&v35);
                re::AssetHandle::operator=((v23 + 4), v26);
                re::ecs2::Component::markDirty(v23);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v29 = v51;
        v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v52);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v29, v30, *v19);
        if (v49)
        {
          if (BYTE8(v49))
          {
            (*(*v49 + 40))();
          }

          v49 = 0u;
          v50 = 0u;
        }

        if (v44)
        {
          if (v48)
          {
            (*(*v44 + 40))();
          }

          v48 = 0;
          v45 = 0;
          v46 = 0;
          v44 = 0;
          ++v47;
        }

        if (v39)
        {
          if (v43)
          {
            (*(*v39 + 40))();
          }

          v43 = 0;
          v40 = 0;
          v41 = 0;
          v39 = 0;
          ++v42;
        }

        if (v37 && (v38 & 1) != 0)
        {
          (*(*v37 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v52);
    }

    while (v52 != a5 || v53 != 0xFFFF || HIWORD(v53) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveBoxComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFC008;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFC060;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFC0B8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFC110;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFC008;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFC060;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFC0B8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFC110;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC008;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC060;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC060;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC0B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC0B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC110;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC110;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 64);
      if (v7)
      {

        *(v6 + 64) = 0;
      }

      *(v6 + 72) = 0;
      v8 = *(v6 + 88);
      if (v8)
      {

        *(v6 + 88) = 0;
      }

      *(v6 + 96) = 0;
      *(v6 + 112) = 0x1000100010001;
      *(v6 + 120) = xmmword_1E305B4C0;
      *(v6 + 136) = 257;
      ++a3;
      *(v6 + 138) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFC210;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFC288;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveBoxWithRoundedCornersSystem::~PrimitiveBoxWithRoundedCornersSystem(re::ecs2::PrimitiveBoxWithRoundedCornersSystem *this)
{
  *this = &unk_1F5CFC210;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC288;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFC210;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC288;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 120) = *(v11 + 28);
        *(v11 + 136) = *(v11 + 44);
        *(v11 + 151) = *(v11 + 59);
        v13 = *(v11 + 68);
        *(v11 + 160) = v13;
        v14 = *(v11 + 69);
        *(v11 + 161) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 72);
        *(v11 + 72) = v34;
        v34 = v15;
        v16 = *(v11 + 88);
        *(v11 + 88) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 80), 0);
        v17 = *(v11 + 80);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 80))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 72));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 70) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 104))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 96);
                v25 = (v11 + 96);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFC2F0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFC348;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFC3A0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFC3F8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFC2F0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFC348;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFC3A0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFC3F8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxWithRoundedCornersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC348;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC348;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC3A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC3A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC3F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC3F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 72);
      if (v7)
      {

        *(v6 + 72) = 0;
      }

      *(v6 + 80) = 0;
      v8 = *(v6 + 96);
      if (v8)
      {

        *(v6 + 96) = 0;
      }

      *(v6 + 104) = 0;
      *(v6 + 120) = 0x3000100010001;
      *(v6 + 128) = 4;
      *(v6 + 132) = xmmword_1E305B4D0;
      *(v6 + 148) = 1065353216;
      *(v6 + 152) = 16777473;
      *(v6 + 156) = 1;
      ++a3;
      *(v6 + 158) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveBoxWithRoundedCornersComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFC4F8;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFC570;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveCapsuleSystem::~PrimitiveCapsuleSystem(re::ecs2::PrimitiveCapsuleSystem *this)
{
  *this = &unk_1F5CFC4F8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC570;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFC4F8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC570;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCapsuleComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveCapsuleComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 104) = *(v11 + 28);
        *(v11 + 119) = *(v11 + 43);
        v13 = *(v11 + 48);
        *(v11 + 124) = v13;
        v14 = *(v11 + 49);
        *(v11 + 125) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 56);
        *(v11 + 56) = v34;
        v34 = v15;
        v16 = *(v11 + 72);
        *(v11 + 72) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 64), 0);
        v17 = *(v11 + 64);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 64))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 56));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 50) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 88))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 80);
                v25 = (v11 + 80);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveCapsuleComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFC5D8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFC630;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFC688;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFC6E0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFC5D8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFC630;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFC688;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFC6E0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC5D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC5D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC630;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC630;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC688;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC688;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC6E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCapsuleComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC6E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCapsuleComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 56);
      if (v7)
      {

        *(v6 + 56) = 0;
      }

      *(v6 + 64) = 0;
      v8 = *(v6 + 80);
      if (v8)
      {

        *(v6 + 80) = 0;
      }

      *(v6 + 88) = 0;
      *(v6 + 104) = 65544;
      *(v6 + 108) = 4;
      *(v6 + 112) = 0x400000003F000000;
      *(v6 + 120) = 257;
      ++a3;
      *(v6 + 122) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCapsuleComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFC7E0;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFC858;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveConeSystem::~PrimitiveConeSystem(re::ecs2::PrimitiveConeSystem *this)
{
  *this = &unk_1F5CFC7E0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC858;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFC7E0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFC858;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveConeComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveConeComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 96) = *(v11 + 28);
        v13 = *(v11 + 44);
        *(v11 + 112) = v13;
        v14 = *(v11 + 45);
        *(v11 + 113) = v14;
        re::MeshPrimitiveProvider::makeDescriptor((v11 + 28), v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 48);
        *(v11 + 48) = v34;
        v34 = v15;
        v16 = *(v11 + 64);
        *(v11 + 64) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 56), 0);
        v17 = *(v11 + 56);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 56))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 48));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 46) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 80))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 72);
                v25 = (v11 + 72);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveConeComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFC8C0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFC918;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFC970;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFC9C8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFC8C0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFC918;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFC970;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFC9C8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC8C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC8C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC918;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC918;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC970;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC970;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFC9C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveConeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFC9C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveConeComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 48);
      if (v7)
      {

        *(v6 + 48) = 0;
      }

      *(v6 + 56) = 0;
      v8 = *(v6 + 72);
      if (v8)
      {

        *(v6 + 72) = 0;
      }

      *(v6 + 80) = 0;
      *(v6 + 96) = 65544;
      *(v6 + 100) = 0x3F0000003F800000;
      ++a3;
      *(v6 + 108) = 65793;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveConeComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFCAC8;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFCB40;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitiveCylinderSystem::~PrimitiveCylinderSystem(re::ecs2::PrimitiveCylinderSystem *this)
{
  *this = &unk_1F5CFCAC8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFCB40;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFCAC8;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFCB40;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitiveCylinderComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveCylinderComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 104) = *(v11 + 28);
        *(v11 + 117) = *(v11 + 41);
        v13 = *(v11 + 52);
        *(v11 + 128) = v13;
        v14 = *(v11 + 53);
        *(v11 + 129) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 56);
        *(v11 + 56) = v34;
        v34 = v15;
        v16 = *(v11 + 72);
        *(v11 + 72) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 64), 0);
        v17 = *(v11 + 64);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 64))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 56));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 54) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 88))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 80);
                v25 = (v11 + 80);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitiveCylinderComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFCBA8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFCC00;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFCC58;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFCCB0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFCBA8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFCC00;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFCC58;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFCCB0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCBA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCBA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCC00;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCC00;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCC58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCC58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCCB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitiveCylinderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCCB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitiveCylinderComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 56);
      if (v7)
      {

        *(v6 + 56) = 0;
      }

      *(v6 + 64) = 0;
      v8 = *(v6 + 80);
      if (v8)
      {

        *(v6 + 80) = 0;
      }

      *(v6 + 88) = 0;
      *(v6 + 104) = 65544;
      *(v6 + 108) = 0x3F0000003F800000;
      *(v6 + 116) = 0x10101013F000000;
      ++a3;
      *(v6 + 124) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitiveCylinderComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::PrimitiveComponentSystemBase(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(a1, 1, 1);
  *v2 = &unk_1F5CFCDB0;
  v3 = v2 + 28;
  v2[28] = &unk_1F5CFCE28;
  v2[29] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[30] = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 30), v9);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 1;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 481) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 384), 0);
  *(a1 + 400) += 2;
  *(a1 + 424) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 432), 0);
  *(a1 + 448) += 2;
  *(a1 + 472) = 0;
  *(a1 + 480) = a1;
  *(a1 + 488) = v3;
  *(a1 + 496) = 1;
  return a1;
}

void re::ecs2::PrimitivePlaneSystem::~PrimitivePlaneSystem(re::ecs2::PrimitivePlaneSystem *this)
{
  *this = &unk_1F5CFCDB0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFCE28;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CFCDB0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  *(this + 28) = &unk_1F5CFCE28;
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  v4 = *(a1 + 392);
  v5 = *(a1 + 400);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 408);
    }

    else
    {
      v6 = *(a1 + 416);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 408);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 384, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::init(v12, a1 + 264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 384, v42);
    v13 = v42;
    goto LABEL_49;
  }

LABEL_17:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v14 = *(a1 + 304);
  *&v49 = 0;
  v15 = *(a1 + 272);
  DWORD2(v49) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,4ul>::setBucketsCapacity((a1 + 264), (v14 + 4) >> 2);
    v15 = *(a1 + 272);
  }

  if (v15 <= v14 >> 2)
  {
    v41[1] = 0;
    memset(v58, 0, sizeof(v58));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    v53 = 858;
    v54 = 2048;
    v55 = v14 >> 2;
    v56 = 2048;
    v57 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(a1 + 280))
  {
    v16 = a1 + 288;
  }

  else
  {
    v16 = *(a1 + 296);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 304);
  ++*(a1 + 312);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v42;
  v20 = v43;
  v21 = v44;
  *(v18 + 48) = v45;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v23 = *(a1 + 304);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::init(v24, a1 + 264, v41[0]);
  *&v58[0] = *(a1 + 304) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 320), v41, v58);
  v25 = *(a1 + 304);
  v26 = *(a1 + 424);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 424) = v25;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 384), v27, &v42);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 424) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 400))
    {
      v30 = a1 + 408;
    }

    else
    {
      v30 = *(a1 + 416);
    }

    *(v30 + 8 * *(a1 + 392) - 8) &= v28;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 472);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 472) = v31;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 432), v33, &v42);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 472) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 448))
    {
      v36 = a1 + 456;
    }

    else
    {
      v36 = *(a1 + 464);
    }

    *(v36 + 8 * *(a1 + 440) - 8) &= v34;
  }

  v13 = *&v58[0];
LABEL_49:
  re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 432, v13);
  if (*(a1 + 496) == 1)
  {
    v37 = *(a1 + 480);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 264);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v42 = a1 + 224;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 184), &v42);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *&v17 = a2;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 320), &v17);
  if (v4 != -1)
  {
    v5 = *(a1 + 328) + 16 * v4;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 384, *(v5 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 432, *(v5 + 8));
    v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 264, *(v5 + 8));
    if (*v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = v6 + 1;
      v9 = *(v6[1] + 288);
      if (v9)
      {
        v10 = v6[12];
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
            re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
      v13 = 0;
      v14 = v7 + 3;
      do
      {
        v15 = v7[2];
        if (*v15)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
        }

        v14[v13++] = -1;
      }

      while (v13 != 4);
      *v8 = 0;
      v8[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 320, &v17);
  }

  v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *&v17 = a1 + 224;
  *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>>;
  v18 = 0;
  v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 184, &v17);
}

void re::ecs2::PrimitiveComponentSystemBase<re::ecs2::PrimitivePlaneComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[59];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[59];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 40, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[41] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 54));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[59];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[59];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 54), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 33), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 54), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 33));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitivePlaneComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

BOOL re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
  v8 = re::ServiceLocator::service<re::AssetService>(v7);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v36, a5, 0);
  v50 = a4;
  v51 = v36;
  v52 = v37;
  if (v36 != a5 || v37 != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v51);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        *(v11 + 112) = *(v11 + 28);
        *(v11 + 124) = *(v11 + 40);
        v13 = *(v11 + 56);
        *(v11 + 140) = v13;
        v14 = *(v11 + 57);
        *(v11 + 141) = v14;
        re::MeshPrimitiveProvider::makeDescriptor(v11 + 28, v13, v14, &v36);
        (*(*v8 + 40))(&v34, v8, &v36);
        v15 = *(v11 + 64);
        *(v11 + 64) = v34;
        v34 = v15;
        v16 = *(v11 + 80);
        *(v11 + 80) = v35;
        v35 = v16;
        re::AssetHandle::~AssetHandle(&v34);
        re::AssetHandle::loadNow(*(v11 + 72), 0);
        v17 = *(v11 + 72);
        if (!v17 || (v18 = atomic_load((v17 + 896)), v19 = (a3 + 32), v18 != 3))
        {
          v20 = *(v12 + 192);
          if (v20 && *(v20 + 40) != *(v11 + 72))
          {
            re::AssetHandle::operator=(v20 + 32, (v11 + 64));
            re::ecs2::Component::markDirty(v20);
          }

          v19 = (a3 + 48);
          if (*(v11 + 58) == 1)
          {
            v21 = re::ecs2::EntityComponentCollection::get((v12 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v19 = (a3 + 48);
            if (v21)
            {
              v19 = (a3 + 48);
              if (!*(v11 + 96))
              {
                v22 = v21;
                v23 = re::internal::buildCollisionShape((v11 + 28));
                v24 = re::CollisionShapeAsset::assetType(v23);
                (*(*v8 + 424))(&v34, v8, v23, v24, 0, 2, 0);
                v26 = *(v11 + 88);
                v25 = (v11 + 88);
                *v25 = v34;
                v34 = v26;
                v27 = v25[2];
                v25[2] = v35;
                v35 = v27;
                re::AssetHandle::~AssetHandle(&v34);
                re::AssetHandle::operator=((v22 + 4), v25);
                re::ecs2::Component::markDirty(v22);
                v19 = (a3 + 48);
              }
            }
          }
        }

        v28 = v50;
        v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v51);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *v19);
        if (v48)
        {
          if (BYTE8(v48))
          {
            (*(*v48 + 40))();
          }

          v48 = 0u;
          v49 = 0u;
        }

        if (v43)
        {
          if (v47)
          {
            (*(*v43 + 40))();
          }

          v47 = 0;
          v44 = 0;
          v45 = 0;
          v43 = 0;
          ++v46;
        }

        if (v38)
        {
          if (v42)
          {
            (*(*v38 + 40))();
          }

          v42 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          ++v41;
        }

        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
    }

    while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PrimitivePlaneComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CFCE90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFCEE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFCF40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFCF98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CFCE90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CFCEE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CFCF40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CFCF98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCE90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCE90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCEE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCEE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCF40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCF40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFCF98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PrimitivePlaneComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFCF98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::PrimitivePlaneComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>::deactivateComponent,re::ecs2::PrimitiveComponentStateImplBase<re::ecs2::PrimitivePlaneComponent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v11 = *a3;
      v12 = *(*a3 + 64);
      if (v12)
      {

        *(v11 + 64) = 0;
      }

      *(v11 + 72) = 0;
      v13 = *(v11 + 88);
      if (v13)
      {

        *(v11 + 88) = 0;
      }

      *(v11 + 96) = 0;
      *(v11 + 112) = 65537;
      *(v11 + 116) = 0;
      *(v11 + 120) = _D8;
      *(v11 + 128) = 0;
      *(v11 + 132) = 257;
      ++a3;
      *(v11 + 136) = 2;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}