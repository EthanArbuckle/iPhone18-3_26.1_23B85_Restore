double re::internal::defaultConstructV2<re::TimelineEventData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 464) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 472) = -1;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 1;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineEventData>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 520);

  re::FixedArray<CoreIKTransform>::deinit((a1 + 480));
  re::DynamicArray<re::ObjCObject>::deinit(a1 + 432);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1 + 384);
  re::DynamicArray<unsigned long>::deinit(a1 + 336);
  re::DynamicArray<re::StringID>::deinit(a1 + 288);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 192);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 136));
  re::DynamicArray<unsigned long>::deinit(a1 + 96);
  re::DynamicArray<unsigned long>::deinit(a1 + 56);
  re::DynamicArray<unsigned long>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_EventParameterFloatArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A890, "EventParameterFloatArray");
    __cxa_guard_release(&qword_1EE195150);
  }

  return &unk_1EE18A890;
}

void re::initInfo_EventParameterFloatArray(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x784085696EA0F218;
  v15[1] = "EventParameterFloatArray";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE195158, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195158);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "numParamsPerEvent";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE195288 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "parameters";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE195290 = v13;
      __cxa_guard_release(&qword_1EE195158);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195288;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterFloatArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterFloatArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterFloatArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterFloatArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::EventParameterFloatArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterFloatArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterIntArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195168))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A920, "EventParameterIntArray");
    __cxa_guard_release(&qword_1EE195168);
  }

  return &unk_1EE18A920;
}

void re::initInfo_EventParameterIntArray(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xF60099BB89454E32;
  v15[1] = "EventParameterIntArray";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE195170, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195170);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "numParamsPerEvent";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE195298 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "parameters";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1952A0 = v13;
      __cxa_guard_release(&qword_1EE195170);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195298;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterIntArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterIntArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterIntArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterIntArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::EventParameterIntArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterIntArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterStringArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195180))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A9B0, "EventParameterStringArray");
    __cxa_guard_release(&qword_1EE195180);
  }

  return &unk_1EE18A9B0;
}

void re::initInfo_EventParameterStringArray(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x901D6332C27CF5F2;
  v15[1] = "EventParameterStringArray";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE195188, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195188);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "numParamsPerEvent";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1952A8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "parameters";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1952B0 = v13;
      __cxa_guard_release(&qword_1EE195188);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952A8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterStringArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterStringArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterStringArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterStringArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::EventParameterStringArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterStringArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterVector4Array(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195198))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AA40, "EventParameterVector4Array");
    __cxa_guard_release(&qword_1EE195198);
  }

  return &unk_1EE18AA40;
}

void re::initInfo_EventParameterVector4Array(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x755284B38F8DEAEELL;
  v14[1] = "EventParameterVector4Array";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1951A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1951A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "numParamsPerEvent";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1952B8 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "parameters";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1952C0 = v12;
      __cxa_guard_release(&qword_1EE1951A0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952B8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterVector4Array>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterVector4Array>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterVector4Array>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterVector4Array>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::EventParameterVector4Array>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterVector4Array>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterDataArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AAD0, "EventParameterDataArray");
    __cxa_guard_release(&qword_1EE1951B0);
  }

  return &unk_1EE18AAD0;
}

void re::initInfo_EventParameterDataArray(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xCA12954DAFAB3680;
  v14[1] = "EventParameterDataArray";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1951B8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1951B8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "numParamsPerEvent";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1952C8 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::FixedArray<unsigned char>>>::get(v10, v11);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "parameters";
      *(v12 + 16) = &qword_1EE195BD8;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1952D0 = v12;
      __cxa_guard_release(&qword_1EE1951B8);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952C8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterDataArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterDataArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterDataArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterDataArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::IntrospectionInfo<re::DynamicArray<re::FixedArray<unsigned char>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195250))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195BD8);
    qword_1EE195BD8 = &unk_1F5CC1130;
    __cxa_guard_release(&qword_1EE195250);
  }

  if ((byte_1EE194C4D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, a2);
    if ((byte_1EE194C4D & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C4D = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195BD8, 0);
      qword_1EE195BE8 = 0x2800000003;
      dword_1EE195BF0 = v4;
      word_1EE195BF4 = 0;
      *&xmmword_1EE195BF8 = 0;
      *(&xmmword_1EE195BF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195C08 = v3;
      qword_1EE195C10 = 0;
      qword_1EE195BD8 = &unk_1F5CC1130;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE195BD8, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195BF8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::EventParameterDataArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterDataArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_TimelineEventParameterDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AB60, "TimelineEventParameterDescription");
    __cxa_guard_release(&qword_1EE1951C8);
  }

  return &unk_1EE18AB60;
}

void re::initInfo_TimelineEventParameterDescription(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC66E9C766DEB81D8;
  v15[1] = "TimelineEventParameterDescription";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1951D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1951D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_size_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "index";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1952D8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_size_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "type";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1952E0 = v13;
      __cxa_guard_release(&qword_1EE1951D0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952D8;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineEventParameterDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineEventParameterDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineEventParameterDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineEventParameterDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::allocInfo_EventTimelineAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18ABF0, "EventTimelineAssetData");
    __cxa_guard_release(&qword_1EE1951E0);
  }

  return &unk_1EE18ABF0;
}

void re::initInfo_EventTimelineAssetData(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x7F4FDB2050CD383ELL;
  v21[1] = "EventTimelineAssetData";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1951E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1951E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE194C68;
      if (!qword_1EE194C68)
      {
        v8 = re::allocInfo_TimelineAssetData(v6);
        qword_1EE194C68 = v8;
        re::initInfo_TimelineAssetData(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "TimelineAssetData";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 3;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE195300 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = v11;
      v13 = qword_1EE195148;
      if (!qword_1EE195148)
      {
        v13 = re::allocInfo_TimelineEventData(v11);
        qword_1EE195148 = v13;
        re::initInfo_TimelineEventData(v13, v14);
      }

      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_eventData";
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5000000001;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE195308 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "isAdditive";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x4800000002;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE195310 = v19;
      __cxa_guard_release(&qword_1EE1951E8);
    }
  }

  *(this + 2) = 0x28000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE195300;
  *(this + 9) = re::internal::defaultConstruct<re::EventTimelineAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventTimelineAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventTimelineAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventTimelineAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

uint64_t re::internal::convertToAssetData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v198 = *MEMORY[0x1E69E9840];
  switch(*(a1 + 8))
  {
    case 1:
      v5 = (*(*a3 + 32))(a3, 176, 8);
      v116 = re::TimelineAssetData::TimelineAssetData(v5, 1);
      *v116 = &unk_1F5CBE660;
      *(v116 + 112) = 0;
      *(v116 + 128) = 0;
      *(v116 + 136) = 0;
      *(v116 + 144) = 0;
      *(v116 + 152) = 0;
      *(v116 + 80) = 0;
      *(v116 + 88) = 0;
      *(v116 + 72) = 0;
      *(v116 + 96) = 0;
      *(v116 + 168) = 1065353216;
      *(v116 + 172) = 0;
      *(v116 + 12) = *(a1 + 12);
      *(v116 + 16) = *(a1 + 16);
      re::StringID::operator=((v116 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v117 = *(v5 + 72);
      *(v5 + 72) = v194[0];
      v194[0] = v117;
      v118 = *(v5 + 88);
      *(v5 + 88) = *&v194[1];
      *&v194[1] = v118;
      re::AssetHandle::~AssetHandle(v194);
      if (*(v5 + 96))
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_284;
        }
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          goto LABEL_284;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 104) = *(a1 + 88);
LABEL_284:
      if (*(v5 + 112))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 112) = 0;
          goto LABEL_290;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_290;
        }

        *(v5 + 112) = 1;
      }

      *(v5 + 120) = *(a1 + 104);
LABEL_290:
      *(v5 + 128) = *(a1 + 112);
      *(v5 + 136) = *(a1 + 120);
      *(v5 + 144) = *(a1 + 128);
      if (*(v5 + 152))
      {
        if ((*(a1 + 136) & 1) == 0)
        {
          *(v5 + 152) = 0;
          goto LABEL_296;
        }
      }

      else
      {
        if ((*(a1 + 136) & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v5 + 152) = 1;
      }

      *(v5 + 160) = *(a1 + 144);
LABEL_296:
      *(v5 + 168) = *(a1 + 152);
      *(v5 + 172) = *(a1 + 156);
      return v5;
    case 2:
      v5 = (*(*a3 + 32))(a3, 112, 8);
      v109 = re::TimelineAssetData::TimelineAssetData(v5, 2);
      *v109 = &unk_1F5CBE6B8;
      *(v109 + 72) = 0;
      v110 = (v109 + 72);
      *(v109 + 104) = 0;
      *(v109 + 80) = 0;
      *(v109 + 88) = 0;
      *(v109 + 96) = 0;
      *(v109 + 12) = *(a1 + 12);
      *(v109 + 16) = *(a1 + 16);
      re::StringID::operator=((v109 + 24), (a1 + 24));
      v111 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v112 = *(a1 + 80);
      re::DynamicArray<re::AssetHandle>::setCapacity(v110, v112);
      ++*(v5 + 96);
      if (*(a1 + 80))
      {
        v113 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add(v110, v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v113;
        }

        while (v113 < *(a1 + 80));
      }

      return v5;
    case 3:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 3);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE790;
      goto LABEL_167;
    case 4:
    case 6:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 4);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE880;
      goto LABEL_167;
    case 5:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 5);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE988;
      goto LABEL_167;
    case 7:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 7);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEB98;
      goto LABEL_167;
    case 8:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 8);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBECA0;
      goto LABEL_167;
    case 9:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 9);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEDA8;
      goto LABEL_167;
    case 0xA:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 10);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEEB0;
      goto LABEL_167;
    case 0xB:
      v5 = (*(*a3 + 32))(a3, 120, 8);
      v72 = re::TimelineAssetData::TimelineAssetData(v5, 11);
      *(v72 + 72) = 0;
      *(v72 + 80) = 0x3FF0000000000000;
      *(v72 + 88) = 0;
      *(v72 + 96) = 0;
      *(v72 + 104) = 0;
      *(v72 + 112) = 0;
      *v72 = &unk_1F5CC3530;
      *(v72 + 12) = *(a1 + 12);
      *(v72 + 16) = *(a1 + 16);
      re::StringID::operator=((v72 + 24), (a1 + 24));
      v73 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_250;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_250;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 92) = *(a1 + 92);
LABEL_250:
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_256;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_256;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 100) = *(a1 + 100);
LABEL_256:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_262;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_262;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 108) = *(a1 + 108);
LABEL_262:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v166 = *(a1 + 112);
      if (v166)
      {
      }

      else
      {
        v167 = 0;
      }

      *(v5 + 112) = v167;
      return v5;
    case 0xC:
      v5 = (*(*a3 + 32))(a3, 144, 8);
      v53 = re::TimelineAssetData::TimelineAssetData(v5, 12);
      *(v53 + 72) = 0;
      *(v53 + 80) = 0x3FF0000000000000;
      *(v53 + 88) = 0;
      *(v53 + 104) = 0;
      *(v53 + 120) = 0;
      *(v53 + 136) = 0;
      *v53 = &unk_1F5CBF140;
      *(v53 + 12) = *(a1 + 12);
      *(v53 + 16) = *(a1 + 16);
      re::StringID::operator=((v53 + 24), (a1 + 24));
      v54 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_216;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_216;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 96) = *(a1 + 96);
LABEL_216:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_222;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_222;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_222:
      if (*(v5 + 120))
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_239;
        }
      }

      else
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_243;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 128);
      goto LABEL_243;
    case 0xD:
      v5 = (*(*a3 + 32))(a3, 144, 8);
      v71 = re::TimelineAssetData::TimelineAssetData(v5, 13);
      *(v71 + 72) = 0;
      *(v71 + 80) = 0x3FF0000000000000;
      *(v71 + 88) = 0;
      *(v71 + 104) = 0;
      *(v71 + 120) = 0;
      *(v71 + 136) = 0;
      *v71 = &unk_1F5CBF270;
      *(v71 + 12) = *(a1 + 12);
      *(v71 + 16) = *(a1 + 16);
      re::StringID::operator=((v71 + 24), (a1 + 24));
      v54 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_231;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_231;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 96) = *(a1 + 96);
LABEL_231:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_237;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_237;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_237:
      if (*(v5 + 120))
      {
        if ((*(a1 + 120) & 1) == 0)
        {
LABEL_239:
          *(v5 + 120) = 0;
          goto LABEL_243;
        }
      }

      else
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_243;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 128);
LABEL_243:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v164 = *(a1 + 136);
      if (v164)
      {
      }

      else
      {
        v165 = 0;
      }

      *(v5 + 136) = v165;
      return v5;
    case 0xE:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 14);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF3A0;
      goto LABEL_117;
    case 0xF:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 15);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF4D0;
      goto LABEL_117;
    case 0x10:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 16);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF600;
LABEL_117:
      *v74 = v75;
      *(v74 + 12) = *(a1 + 12);
      *(v74 + 16) = *(a1 + 16);
      re::StringID::operator=((v74 + 24), (a1 + 24));
      v94 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_123;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_123;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_123:
      if (*(v5 + 128))
      {
        if ((*(a1 + 128) & 1) == 0)
        {
          *(v5 + 128) = 0;
          goto LABEL_129;
        }
      }

      else
      {
        if ((*(a1 + 128) & 1) == 0)
        {
          goto LABEL_129;
        }

        *(v5 + 128) = 1;
      }

      *(v5 + 144) = *(a1 + 144);
LABEL_129:
      if (*(v5 + 160))
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_135;
        }
      }

      else
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          goto LABEL_135;
        }

        *(v5 + 160) = 1;
      }

      *(v5 + 176) = *(a1 + 176);
LABEL_135:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v95 = *(a1 + 192);
      if (v95)
      {
      }

      else
      {
        v96 = 0;
      }

      *(v5 + 192) = v96;
      return v5;
    case 0x11:
      v5 = (*(*a3 + 32))(a3, 304, 16);
      v92 = re::TimelineAssetData::TimelineAssetData(v5, 17);
      *(v92 + 72) = 0;
      *(v92 + 80) = 0x3FF0000000000000;
      *(v92 + 96) = 0;
      *(v92 + 160) = 0;
      *(v92 + 224) = 0;
      *(v92 + 288) = 0;
      *v92 = &unk_1F5CBF730;
      *(v92 + 12) = *(a1 + 12);
      *(v92 + 16) = *(a1 + 16);
      re::StringID::operator=((v92 + 24), (a1 + 24));
      v93 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_267;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_267;
        }

        *(v5 + 96) = 1;
      }

      v168 = *(a1 + 112);
      v169 = *(a1 + 144);
      *(v5 + 128) = *(a1 + 128);
      *(v5 + 144) = v169;
      *(v5 + 112) = v168;
LABEL_267:
      if (*(v5 + 160))
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_273;
        }
      }

      else
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          goto LABEL_273;
        }

        *(v5 + 160) = 1;
      }

      v170 = *(a1 + 176);
      v171 = *(a1 + 208);
      *(v5 + 192) = *(a1 + 192);
      *(v5 + 208) = v171;
      *(v5 + 176) = v170;
LABEL_273:
      if (*(v5 + 224))
      {
        if ((*(a1 + 224) & 1) == 0)
        {
          *(v5 + 224) = 0;
          goto LABEL_279;
        }
      }

      else
      {
        if ((*(a1 + 224) & 1) == 0)
        {
          goto LABEL_279;
        }

        *(v5 + 224) = 1;
      }

      v172 = *(a1 + 240);
      v173 = *(a1 + 272);
      *(v5 + 256) = *(a1 + 256);
      *(v5 + 272) = v173;
      *(v5 + 240) = v172;
LABEL_279:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v174 = *(a1 + 288);
      if (v174)
      {
      }

      else
      {
        v175 = 0;
      }

      *(v5 + 288) = v175;
      return v5;
    case 0x12:
      v5 = (*(*a3 + 32))(a3, 336, 8);
      v80 = re::TimelineAssetData::TimelineAssetData(v5, 18);
      *(v80 + 72) = 0;
      *(v80 + 80) = 0x3FF0000000000000;
      *(v80 + 88) = 0;
      v81 = v80 + 88;
      *(v80 + 120) = 0;
      v82 = v80 + 120;
      *(v80 + 152) = 0;
      v83 = v80 + 152;
      *(v80 + 184) = 0;
      *v80 = &unk_1F5CBF8F8;
      *(v80 + 328) = 0;
      *(v80 + 280) = 0;
      *(v80 + 248) = 0u;
      *(v80 + 264) = 0u;
      *(v80 + 288) = 0u;
      *(v80 + 304) = 0u;
      *(v80 + 320) = 0;
      *(v80 + 192) = 0u;
      *(v80 + 208) = 0u;
      *(v80 + 224) = 0u;
      *(v80 + 240) = 0;
      *(v80 + 12) = *(a1 + 12);
      *(v80 + 16) = *(a1 + 16);
      re::StringID::operator=((v80 + 24), (a1 + 24));
      v19 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(a1 + 88) == 1)
      {
        v84 = *(*(a1 + 176) + 216);
        *&v194[0] = *(*(a1 + 176) + 224);
        *(&v194[0] + 1) = v84;
        re::DynamicArray<re::StringID>::operator=((v5 + 216), v194);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v191, a1 + 112);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v85 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v85;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v81, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      if (*(a1 + 184) == 1)
      {
        v86 = *(*(a1 + 272) + 216);
        *&v194[0] = *(*(a1 + 272) + 224);
        *(&v194[0] + 1) = v86;
        re::DynamicArray<re::StringID>::operator=((v5 + 256), v194);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v191, a1 + 208);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v87 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v87;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v82, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      if (*(a1 + 280) == 1)
      {
        v88 = *(*(a1 + 368) + 216);
        *&v194[0] = *(*(a1 + 368) + 224);
        *(&v194[0] + 1) = v88;
        re::DynamicArray<re::StringID>::operator=((v5 + 296), v194);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v191, a1 + 304);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v89 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v89;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v83, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v26 = *(a1 + 376);
      if (!v26)
      {
        goto LABEL_109;
      }

      goto LABEL_35;
    case 0x13:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v123 = re::TimelineAssetData::TimelineAssetData(v5, 19);
      *(v123 + 72) = 256;
      *(v123 + 88) = 0;
      *(v123 + 96) = 0;
      *(v123 + 104) = 0;
      *(v123 + 80) = 0;
      v41 = (v123 + 80);
      *(v123 + 152) = 0;
      *(v123 + 112) = 0u;
      *(v123 + 128) = 0u;
      *(v123 + 144) = 0;
      *v123 = &unk_1F5CBFAD8;
      *(v123 + 12) = *(a1 + 12);
      *(v123 + 16) = *(a1 + 16);
      re::StringID::operator=((v123 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v124 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v124;
      re::DynamicArray<float>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x14:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v69 = re::TimelineAssetData::TimelineAssetData(v5, 20);
      *(v69 + 72) = 256;
      *(v69 + 88) = 0;
      *(v69 + 96) = 0;
      *(v69 + 104) = 0;
      *(v69 + 80) = 0;
      v41 = (v69 + 80);
      *(v69 + 152) = 0;
      *(v69 + 112) = 0u;
      *(v69 + 128) = 0u;
      *(v69 + 144) = 0;
      *v69 = &unk_1F5CBFC20;
      *(v69 + 12) = *(a1 + 12);
      *(v69 + 16) = *(a1 + 16);
      re::StringID::operator=((v69 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v70 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v70;
      re::DynamicArray<double>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x15:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v55 = re::TimelineAssetData::TimelineAssetData(v5, 21);
      *(v55 + 72) = 256;
      *(v55 + 88) = 0;
      *(v55 + 96) = 0;
      *(v55 + 104) = 0;
      *(v55 + 80) = 0;
      v41 = (v55 + 80);
      *(v55 + 152) = 0;
      *(v55 + 112) = 0u;
      *(v55 + 128) = 0u;
      *(v55 + 144) = 0;
      *v55 = &unk_1F5CBFCD0;
      *(v55 + 12) = *(a1 + 12);
      *(v55 + 16) = *(a1 + 16);
      re::StringID::operator=((v55 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v56 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v56;
      re::DynamicArray<re::Vector2<float>>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x16:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v90 = re::TimelineAssetData::TimelineAssetData(v5, 22);
      *(v90 + 72) = 256;
      *(v90 + 88) = 0;
      *(v90 + 96) = 0;
      *(v90 + 104) = 0;
      *(v90 + 80) = 0;
      v41 = (v90 + 80);
      *(v90 + 152) = 0;
      *(v90 + 112) = 0u;
      *(v90 + 128) = 0u;
      *(v90 + 144) = 0;
      *v90 = &unk_1F5CBFD80;
      *(v90 + 12) = *(a1 + 12);
      *(v90 + 16) = *(a1 + 16);
      re::StringID::operator=((v90 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v91 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v91;
      re::DynamicArray<re::Vector3<float>>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x17:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v127 = re::TimelineAssetData::TimelineAssetData(v5, 23);
      *(v127 + 72) = 256;
      *(v127 + 88) = 0;
      *(v127 + 96) = 0;
      *(v127 + 104) = 0;
      *(v127 + 80) = 0;
      v41 = (v127 + 80);
      *(v127 + 152) = 0;
      *(v127 + 112) = 0u;
      *(v127 + 128) = 0u;
      *(v127 + 144) = 0;
      *v127 = &unk_1F5CBFE30;
      *(v127 + 12) = *(a1 + 12);
      *(v127 + 16) = *(a1 + 16);
      re::StringID::operator=((v127 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v128 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v128;
      re::DynamicArray<re::Vector4<float>>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x18:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v40 = re::TimelineAssetData::TimelineAssetData(v5, 24);
      *(v40 + 72) = 256;
      *(v40 + 88) = 0;
      *(v40 + 96) = 0;
      *(v40 + 104) = 0;
      *(v40 + 80) = 0;
      v41 = (v40 + 80);
      *(v40 + 152) = 0;
      *(v40 + 112) = 0u;
      *(v40 + 128) = 0u;
      *(v40 + 144) = 0;
      *v40 = &unk_1F5CBFEE0;
      *(v40 + 12) = *(a1 + 12);
      *(v40 + 16) = *(a1 + 16);
      re::StringID::operator=((v40 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v42 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v42;
      re::DynamicArray<re::Quaternion<float>>::operator=((v5 + 120), v194);
      goto LABEL_163;
    case 0x19:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v125 = re::TimelineAssetData::TimelineAssetData(v5, 25);
      *(v125 + 72) = 256;
      *(v125 + 88) = 0;
      *(v125 + 96) = 0;
      *(v125 + 104) = 0;
      *(v125 + 80) = 0;
      v41 = (v125 + 80);
      *(v125 + 152) = 0;
      *(v125 + 112) = 0u;
      *(v125 + 128) = 0u;
      *(v125 + 144) = 0;
      *v125 = &unk_1F5CC0028;
      *(v125 + 12) = *(a1 + 12);
      *(v125 + 16) = *(a1 + 16);
      re::StringID::operator=((v125 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v126 = *(a1 + 112);
      *&v194[0] = *(a1 + 120);
      *(&v194[0] + 1) = v126;
      re::DynamicArray<re::GenericSRT<float>>::operator=((v5 + 120), v194);
LABEL_163:
      *(v5 + 72) = *(a1 + 72);
      v129 = *(a1 + 88);
      *&v194[0] = *(a1 + 96);
      *(&v194[0] + 1) = v129;
      re::DynamicArray<float>::operator=(v41, v194);
      return v5;
    case 0x1A:
      v135 = (*(*a3 + 32))(a3, 224, 8);
      v136 = re::TimelineAssetData::TimelineAssetData(v135, 26);
      *(v136 + 72) = 256;
      *(v136 + 80) = 0;
      v137 = (v136 + 80);
      *(v136 + 88) = 0;
      *(v136 + 96) = 0;
      *(v136 + 104) = 0;
      *(v136 + 152) = 0;
      *(v136 + 112) = 0u;
      *(v136 + 128) = 0u;
      *(v136 + 144) = 0;
      *v136 = &unk_1F5CC0170;
      *(v136 + 216) = 0;
      *(v136 + 160) = 0u;
      *(v136 + 176) = 0u;
      *(v136 + 192) = 0u;
      *(v136 + 208) = 0;
      *(v136 + 12) = *(a1 + 12);
      *(v136 + 16) = *(a1 + 16);
      re::StringID::operator=((v136 + 24), (a1 + 24));
      re::DynamicString::operator=((v135 + 40), (a1 + 40));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v138 = *(*(*(a1 + 120) + 80) + 216);
      *&v194[0] = *(*(*(a1 + 120) + 80) + 224);
      *(&v194[0] + 1) = v138;
      re::DynamicArray<re::StringID>::operator=((v135 + 184), v194);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v135 + 120), *(a1 + 112));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v139 = 0;
      v68 = 0;
      v140 = 16;
      while (1)
      {
        v65 = *(v135 + 136);
        if (v65 <= v68)
        {
          goto LABEL_341;
        }

        re::FixedArray<re::GenericSRT<float>>::operator=((*(v135 + 152) + v139), *(a1 + 120) + v140);
        ++v68;
        v140 += 88;
        v139 += 24;
        if (v68 >= *(a1 + 112))
        {
          goto LABEL_212;
        }
      }

    case 0x1B:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v97 = re::TimelineAssetData::TimelineAssetData(v5, 27);
      *(v97 + 72) = 256;
      *(v97 + 76) = 1023969417;
      *(v97 + 120) = 0;
      *(v97 + 80) = 0u;
      *(v97 + 96) = 0u;
      *(v97 + 112) = 0;
      *v97 = &unk_1F5CC0368;
      *(v97 + 12) = *(a1 + 12);
      *(v97 + 16) = *(a1 + 16);
      re::StringID::operator=((v97 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v98 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v98;
      re::DynamicArray<float>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x1C:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v130 = re::TimelineAssetData::TimelineAssetData(v5, 28);
      *(v130 + 72) = 256;
      *(v130 + 76) = 1023969417;
      *(v130 + 120) = 0;
      *(v130 + 80) = 0u;
      *(v130 + 96) = 0u;
      *(v130 + 112) = 0;
      *v130 = &unk_1F5CC0418;
      *(v130 + 12) = *(a1 + 12);
      *(v130 + 16) = *(a1 + 16);
      re::StringID::operator=((v130 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v131 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v131;
      re::DynamicArray<double>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x1D:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v114 = re::TimelineAssetData::TimelineAssetData(v5, 29);
      *(v114 + 72) = 256;
      *(v114 + 76) = 1023969417;
      *(v114 + 120) = 0;
      *(v114 + 80) = 0u;
      *(v114 + 96) = 0u;
      *(v114 + 112) = 0;
      *v114 = &unk_1F5CC04C8;
      *(v114 + 12) = *(a1 + 12);
      *(v114 + 16) = *(a1 + 16);
      re::StringID::operator=((v114 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v115 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v115;
      re::DynamicArray<re::Vector2<float>>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x1E:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v119 = re::TimelineAssetData::TimelineAssetData(v5, 30);
      *(v119 + 72) = 256;
      *(v119 + 76) = 1023969417;
      *(v119 + 120) = 0;
      *(v119 + 80) = 0u;
      *(v119 + 96) = 0u;
      *(v119 + 112) = 0;
      *v119 = &unk_1F5CC0578;
      *(v119 + 12) = *(a1 + 12);
      *(v119 + 16) = *(a1 + 16);
      re::StringID::operator=((v119 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v120 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v120;
      re::DynamicArray<re::Vector3<float>>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x1F:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v105 = re::TimelineAssetData::TimelineAssetData(v5, 31);
      *(v105 + 72) = 256;
      *(v105 + 76) = 1023969417;
      *(v105 + 120) = 0;
      *(v105 + 80) = 0u;
      *(v105 + 96) = 0u;
      *(v105 + 112) = 0;
      *v105 = &unk_1F5CC0628;
      *(v105 + 12) = *(a1 + 12);
      *(v105 + 16) = *(a1 + 16);
      re::StringID::operator=((v105 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v106 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v106;
      re::DynamicArray<re::Vector4<float>>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x20:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v107 = re::TimelineAssetData::TimelineAssetData(v5, 32);
      *(v107 + 72) = 256;
      *(v107 + 76) = 1023969417;
      *(v107 + 120) = 0;
      *(v107 + 80) = 0u;
      *(v107 + 96) = 0u;
      *(v107 + 112) = 0;
      *v107 = &unk_1F5CC06D8;
      *(v107 + 12) = *(a1 + 12);
      *(v107 + 16) = *(a1 + 16);
      re::StringID::operator=((v107 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v108 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v108;
      re::DynamicArray<re::Quaternion<float>>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x21:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v121 = re::TimelineAssetData::TimelineAssetData(v5, 33);
      *(v121 + 72) = 256;
      *(v121 + 76) = 1023969417;
      *(v121 + 120) = 0;
      *(v121 + 80) = 0u;
      *(v121 + 96) = 0u;
      *(v121 + 112) = 0;
      *v121 = &unk_1F5CC0788;
      *(v121 + 12) = *(a1 + 12);
      *(v121 + 16) = *(a1 + 16);
      re::StringID::operator=((v121 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v122 = *(a1 + 96);
      *&v194[0] = *(a1 + 104);
      *(&v194[0] + 1) = v122;
      re::DynamicArray<re::GenericSRT<float>>::operator=((v5 + 88), v194);
      goto LABEL_165;
    case 0x22:
      v5 = (*(*a3 + 32))(a3, 200, 8);
      v63 = re::TimelineAssetData::TimelineAssetData(v5, 34);
      *(v63 + 72) = 256;
      *(v63 + 76) = 1023969417;
      *(v63 + 120) = 0;
      *(v63 + 80) = 0u;
      *(v63 + 96) = 0u;
      *(v63 + 112) = 0;
      *v63 = &unk_1F5CC0838;
      *(v63 + 184) = 0;
      *(v63 + 128) = 0u;
      *(v63 + 144) = 0u;
      *(v63 + 160) = 0u;
      *(v63 + 176) = 0;
      *(v63 + 192) = 257;
      *(v63 + 194) = 1;
      *(v63 + 12) = *(a1 + 12);
      *(v63 + 16) = *(a1 + 16);
      re::StringID::operator=((v63 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (!*(a1 + 96))
      {
        goto LABEL_65;
      }

      v64 = *(*(*(a1 + 104) + 80) + 216);
      *&v194[0] = *(*(*(a1 + 104) + 80) + 224);
      *(&v194[0] + 1) = v64;
      re::DynamicArray<re::StringID>::operator=((v5 + 152), v194);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v5 + 88), *(a1 + 96));
      if (!*(a1 + 96))
      {
        goto LABEL_65;
      }

      v65 = 0;
      v66 = 0;
      v67 = 16;
      do
      {
        v68 = *(v5 + 104);
        if (v68 <= v66)
        {
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          memset(v194, 0, sizeof(v194));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v191 = 136315906;
          *&v191[4] = "operator[]";
          *&v191[12] = 1024;
          *&v191[14] = 789;
          *&v191[18] = 2048;
          *&v191[20] = v66;
          v192 = 2048;
          v193 = v68;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_340:
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          memset(v194, 0, sizeof(v194));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v191 = 136315906;
          *&v191[4] = "operator[]";
          *&v191[12] = 1024;
          *&v191[14] = 789;
          *&v191[18] = 2048;
          *&v191[20] = v66;
          v192 = 2048;
          v193 = v68;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_341:
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          memset(v194, 0, sizeof(v194));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v191 = 136315906;
          *&v191[4] = "operator[]";
          *&v191[12] = 1024;
          *&v191[14] = 789;
          *&v191[18] = 2048;
          *&v191[20] = v68;
          v192 = 2048;
          v193 = v65;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_342:
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          memset(v194, 0, sizeof(v194));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v191 = 136315906;
          *&v191[4] = "operator[]";
          *&v191[12] = 1024;
          *&v191[14] = 789;
          *&v191[18] = 2048;
          *&v191[20] = v68;
          v192 = 2048;
          v193 = v65;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        re::FixedArray<re::GenericSRT<float>>::operator=((*(v5 + 120) + v65), *(a1 + 104) + v67);
        ++v66;
        v67 += 88;
        v65 += 24;
      }

      while (v66 < *(a1 + 96));
LABEL_65:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 76) = *(a1 + 76);
      *(v5 + 84) = *(a1 + 84);
      *(v5 + 192) = *(a1 + 112);
      *(v5 + 193) = *(a1 + 113);
      return v5;
    case 0x25:
      v5 = (*(*a3 + 32))(a3, 160, 16);
      v44 = re::TimelineAssetData::TimelineAssetData(v5, 37);
      *(v44 + 72) = 0;
      *v44 = &unk_1F5CC0998;
      *(v44 + 76) = 1065353216;
      *(v44 + 80) = xmmword_1E3047680;
      *(v44 + 96) = 0x3F8000003F800000;
      *(v44 + 104) = 1065353216;
      *(v44 + 112) = 0;
      *(v44 + 120) = 0x3F80000000000000;
      *(v44 + 128) = 0;
      *(v44 + 136) = 0;
      *(v44 + 144) = 1;
      *(v44 + 148) = 1065353216;
      *(v44 + 12) = *(a1 + 12);
      *(v44 + 16) = *(a1 + 16);
      re::StringID::operator=((v44 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 76) = *(a1 + 76);
      *(v5 + 80) = *(a1 + 96);
      v45 = *(a1 + 128);
      v46 = *(a1 + 160);
      *(v5 + 112) = *(a1 + 144);
      *(v5 + 128) = v46;
      *(v5 + 96) = v45;
      return v5;
    case 0x26:
      v5 = (*(*a3 + 32))(a3, 96, 8);
      v43 = re::TimelineAssetData::TimelineAssetData(v5, 38);
      *(v43 + 72) = 0;
      *v43 = &unk_1F5CC09F0;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      *(v43 + 12) = *(a1 + 12);
      *(v43 + 16) = *(a1 + 16);
      re::StringID::operator=((v43 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 80) = *(a1 + 80);
      return v5;
    case 0x27:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v47 = re::TimelineAssetData::TimelineAssetData(v5, 39);
      *(v47 + 72) = 0;
      *(v47 + 88) = 0;
      *(v47 + 96) = 0;
      *(v47 + 104) = 0;
      *(v47 + 80) = 0;
      v48 = v47 + 80;
      *(v47 + 152) = 0;
      *(v47 + 160) = 0;
      *(v47 + 176) = 0;
      *(v47 + 184) = 0;
      *(v47 + 192) = 0;
      *(v47 + 168) = 0;
      v49 = v47 + 168;
      *(v47 + 200) = 0u;
      *(v47 + 216) = 0u;
      *(v47 + 232) = 0;
      *(v47 + 112) = 0u;
      *(v47 + 128) = 0u;
      *(v47 + 144) = 0;
      *(v47 + 280) = 0;
      *(v47 + 272) = 0;
      *(v47 + 240) = 0u;
      *(v47 + 256) = 0u;
      *v47 = &unk_1F5CC0A60;
      *(v47 + 12) = *(a1 + 12);
      *(v47 + 16) = *(a1 + 16);
      re::StringID::operator=((v47 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v48, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v49, (a1 + 544));
      v50 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v51 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v51);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v52 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v52;
        }

        while (v52 < *(a1 + 312));
      }

      return v5;
    case 0x28:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v57 = re::TimelineAssetData::TimelineAssetData(v5, 40);
      *(v57 + 72) = 0;
      *(v57 + 88) = 0;
      *(v57 + 96) = 0;
      *(v57 + 104) = 0;
      *(v57 + 80) = 0;
      v58 = v57 + 80;
      *(v57 + 152) = 0;
      *(v57 + 160) = 0;
      *(v57 + 176) = 0;
      *(v57 + 184) = 0;
      *(v57 + 192) = 0;
      *(v57 + 168) = 0;
      v59 = v57 + 168;
      *(v57 + 200) = 0u;
      *(v57 + 216) = 0u;
      *(v57 + 232) = 0;
      *(v57 + 112) = 0u;
      *(v57 + 128) = 0u;
      *(v57 + 144) = 0;
      *(v57 + 280) = 0;
      *(v57 + 272) = 0;
      *(v57 + 240) = 0u;
      *(v57 + 256) = 0u;
      *v57 = &unk_1F5CC0B10;
      *(v57 + 12) = *(a1 + 12);
      *(v57 + 16) = *(a1 + 16);
      re::StringID::operator=((v57 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v58, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v59, (a1 + 544));
      v60 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v61 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v61);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v62 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v62;
        }

        while (v62 < *(a1 + 312));
      }

      return v5;
    case 0x29:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v34 = re::TimelineAssetData::TimelineAssetData(v5, 41);
      *(v34 + 72) = 0;
      *(v34 + 88) = 0;
      *(v34 + 96) = 0;
      *(v34 + 104) = 0;
      *(v34 + 80) = 0;
      v35 = v34 + 80;
      *(v34 + 152) = 0;
      *(v34 + 160) = 0;
      *(v34 + 176) = 0;
      *(v34 + 184) = 0;
      *(v34 + 192) = 0;
      *(v34 + 168) = 0;
      v36 = v34 + 168;
      *(v34 + 200) = 0u;
      *(v34 + 216) = 0u;
      *(v34 + 232) = 0;
      *(v34 + 112) = 0u;
      *(v34 + 128) = 0u;
      *(v34 + 144) = 0;
      *(v34 + 280) = 0;
      *(v34 + 272) = 0;
      *(v34 + 240) = 0u;
      *(v34 + 256) = 0u;
      *v34 = &unk_1F5CC0BC0;
      *(v34 + 12) = *(a1 + 12);
      *(v34 + 16) = *(a1 + 16);
      re::StringID::operator=((v34 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v36, (a1 + 544));
      v37 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v38 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v38);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v39 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v39;
        }

        while (v39 < *(a1 + 312));
      }

      return v5;
    case 0x2A:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v8 = re::TimelineAssetData::TimelineAssetData(v5, 42);
      *(v8 + 72) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 80) = 0;
      v9 = v8 + 80;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
      *(v8 + 192) = 0;
      *(v8 + 168) = 0;
      v10 = v8 + 168;
      *(v8 + 200) = 0u;
      *(v8 + 216) = 0u;
      *(v8 + 232) = 0;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0;
      *(v8 + 280) = 0;
      *(v8 + 272) = 0;
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      *v8 = &unk_1F5CC0C70;
      *(v8 + 12) = *(a1 + 12);
      *(v8 + 16) = *(a1 + 16);
      re::StringID::operator=((v8 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v9, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v10, (a1 + 544));
      v11 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v12 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v12);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v13 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v13;
        }

        while (v13 < *(a1 + 312));
      }

      return v5;
    case 0x2B:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v141 = re::TimelineAssetData::TimelineAssetData(v5, 43);
      *(v141 + 72) = 0;
      *(v141 + 88) = 0;
      *(v141 + 96) = 0;
      *(v141 + 104) = 0;
      *(v141 + 80) = 0;
      v142 = v141 + 80;
      *(v141 + 152) = 0;
      *(v141 + 160) = 0;
      *(v141 + 176) = 0;
      *(v141 + 184) = 0;
      *(v141 + 192) = 0;
      *(v141 + 168) = 0;
      v143 = v141 + 168;
      *(v141 + 200) = 0u;
      *(v141 + 216) = 0u;
      *(v141 + 232) = 0;
      *(v141 + 112) = 0u;
      *(v141 + 128) = 0u;
      *(v141 + 144) = 0;
      *(v141 + 280) = 0;
      *(v141 + 272) = 0;
      *(v141 + 240) = 0u;
      *(v141 + 256) = 0u;
      *v141 = &unk_1F5CC0D20;
      *(v141 + 12) = *(a1 + 12);
      *(v141 + 16) = *(a1 + 16);
      re::StringID::operator=((v141 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v142, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v143, (a1 + 544));
      v144 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v145 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v145);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v146 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v146;
        }

        while (v146 < *(a1 + 312));
      }

      return v5;
    case 0x2C:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v152 = re::TimelineAssetData::TimelineAssetData(v5, 44);
      *(v152 + 72) = 0;
      *(v152 + 88) = 0;
      *(v152 + 96) = 0;
      *(v152 + 104) = 0;
      *(v152 + 80) = 0;
      v153 = v152 + 80;
      *(v152 + 152) = 0;
      *(v152 + 160) = 0;
      *(v152 + 176) = 0;
      *(v152 + 184) = 0;
      *(v152 + 192) = 0;
      *(v152 + 168) = 0;
      v154 = v152 + 168;
      *(v152 + 200) = 0u;
      *(v152 + 216) = 0u;
      *(v152 + 232) = 0;
      *(v152 + 112) = 0u;
      *(v152 + 128) = 0u;
      *(v152 + 144) = 0;
      *(v152 + 280) = 0;
      *(v152 + 272) = 0;
      *(v152 + 240) = 0u;
      *(v152 + 256) = 0u;
      *v152 = &unk_1F5CC0DD0;
      *(v152 + 12) = *(a1 + 12);
      *(v152 + 16) = *(a1 + 16);
      re::StringID::operator=((v152 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v153, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v154, (a1 + 544));
      v155 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v156 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v156);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v157 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v157;
        }

        while (v157 < *(a1 + 312));
      }

      return v5;
    case 0x2D:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v28 = re::TimelineAssetData::TimelineAssetData(v5, 45);
      *(v28 + 72) = 0;
      *(v28 + 88) = 0;
      *(v28 + 96) = 0;
      *(v28 + 104) = 0;
      *(v28 + 80) = 0;
      v29 = v28 + 80;
      *(v28 + 152) = 0;
      *(v28 + 160) = 0;
      *(v28 + 176) = 0;
      *(v28 + 184) = 0;
      *(v28 + 192) = 0;
      *(v28 + 168) = 0;
      v30 = v28 + 168;
      *(v28 + 200) = 0u;
      *(v28 + 216) = 0u;
      *(v28 + 232) = 0;
      *(v28 + 112) = 0u;
      *(v28 + 128) = 0u;
      *(v28 + 144) = 0;
      *(v28 + 280) = 0;
      *(v28 + 272) = 0;
      *(v28 + 240) = 0u;
      *(v28 + 256) = 0u;
      *v28 = &unk_1F5CC0E80;
      *(v28 + 12) = *(a1 + 12);
      *(v28 + 16) = *(a1 + 16);
      re::StringID::operator=((v28 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v29, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v30, (a1 + 544));
      v31 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v32 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v32);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v33 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v33;
        }

        while (v33 < *(a1 + 312));
      }

      return v5;
    case 0x2E:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v99 = re::TimelineAssetData::TimelineAssetData(v5, 46);
      *(v99 + 72) = 0;
      *(v99 + 88) = 0;
      *(v99 + 96) = 0;
      *(v99 + 104) = 0;
      *(v99 + 80) = 0;
      v100 = v99 + 80;
      *(v99 + 152) = 0;
      *(v99 + 160) = 0;
      *(v99 + 176) = 0;
      *(v99 + 184) = 0;
      *(v99 + 192) = 0;
      *(v99 + 168) = 0;
      v101 = v99 + 168;
      *(v99 + 200) = 0u;
      *(v99 + 216) = 0u;
      *(v99 + 232) = 0;
      *(v99 + 112) = 0u;
      *(v99 + 128) = 0u;
      *(v99 + 144) = 0;
      *(v99 + 280) = 0;
      *(v99 + 272) = 0;
      *(v99 + 240) = 0u;
      *(v99 + 256) = 0u;
      *v99 = &unk_1F5CC0F30;
      *(v99 + 12) = *(a1 + 12);
      *(v99 + 16) = *(a1 + 16);
      re::StringID::operator=((v99 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v100, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v101, (a1 + 544));
      v102 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v103 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v103);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v104 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v194);
          re::AssetHandle::~AssetHandle(v194);
          ++v104;
        }

        while (v104 < *(a1 + 312));
      }

      return v5;
    case 0x30:
      v5 = (*(*a3 + 32))(a3, 640, 8);
      re::EventTimelineAssetData::EventTimelineAssetData(v5);
      v147 = *(a1 + 80);
      v148 = v147 + 24;
      v150 = v149 + 80;
      re::StringID::operator=((v149 + 80), (v147 + 24));
      re::DynamicArray<float>::operator=(v5 + 96, (v147 + 40));
      re::DynamicArray<float>::operator=(v5 + 136, (v147 + 80));
      re::DynamicArray<float>::operator=(v5 + 176, (v147 + 120));
      if (v150 != v147 + 24)
      {
        if (*(v5 + 216))
        {
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v5 + 216);
          if (*(v147 + 160))
          {
            v151 = *(v147 + 188);
            if (*(v5 + 240) < v151)
            {
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v5 + 216, v151);
            }

            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy((v5 + 216), v147 + 160);
            ++*(v5 + 256);
          }
        }

        else
        {
          v176 = *(v147 + 160);
          if (v176)
          {
            if (*(v147 + 188) <= 3u)
            {
              v177 = 3;
            }

            else
            {
              v177 = *(v147 + 188);
            }

            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v5 + 216, v176, v177);
            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy((v5 + 216), v147 + 160);
          }
        }
      }

      *(v5 + 264) = *(v147 + 208);
      re::DynamicArray<float>::operator=(v5 + 272, (v147 + 216));
      *(v5 + 312) = *(v147 + 256);
      re::DynamicArray<float>::operator=(v5 + 320, (v147 + 264));
      *(v5 + 360) = *(v147 + 304);
      re::DynamicArray<re::StringID>::operator=(v5 + 368, (v147 + 312));
      *(v5 + 408) = *(v147 + 352);
      if (v150 == v148)
      {
        *(v5 + 456) = *(v147 + 400);
        *(v5 + 504) = *(v147 + 448);
      }

      else
      {
        v178 = *(v147 + 360);
        if (*(v5 + 416))
        {
          if (v178)
          {
            re::DynamicArray<re::Vector4<float>>::copy((v5 + 416), v147 + 360);
          }

          else
          {
            *(v5 + 432) = 0;
          }

          ++*(v5 + 440);
        }

        else if (v178)
        {
          v179 = *(v147 + 376);
          *(v5 + 416) = v178;
          re::DynamicArray<re::Vector4<float>>::setCapacity((v5 + 416), v179);
          ++*(v5 + 440);
          re::DynamicArray<re::Vector4<float>>::copy((v5 + 416), v147 + 360);
        }

        *(v5 + 456) = *(v147 + 400);
        v180 = *(v147 + 408);
        if (*(v5 + 464))
        {
          v181 = (v5 + 464);
          if (v180)
          {
            re::DynamicArray<re::FixedArray<unsigned char>>::copy(v181, v147 + 408);
            ++*(v5 + 488);
          }

          else
          {
            re::DynamicArray<re::FixedArray<unsigned long>>::clear(v181);
          }
        }

        else if (v180)
        {
          v182 = *(v147 + 424);
          *(v5 + 464) = v180;
          re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v5 + 464), v182);
          ++*(v5 + 488);
          re::DynamicArray<re::FixedArray<unsigned char>>::copy((v5 + 464), v147 + 408);
        }

        *(v5 + 504) = *(v147 + 448);
        v183 = *(v147 + 456);
        if (*(v5 + 512))
        {
          if (v183)
          {
            re::DynamicArray<re::ObjCObject>::copy((v5 + 512), v147 + 456);
          }

          else
          {
            v185 = *(v5 + 528);
            *(v5 + 528) = 0;
            if (v185)
            {
              v186 = *(v5 + 544);
              v187 = 8 * v185;
              do
              {
                v188 = *v186++;

                v187 -= 8;
              }

              while (v187);
            }
          }

          ++*(v5 + 536);
        }

        else if (v183)
        {
          v184 = *(v147 + 472);
          *(v5 + 512) = v183;
          re::DynamicArray<re::ObjCObject>::setCapacity((v5 + 512), v184);
          ++*(v5 + 536);
          re::DynamicArray<re::ObjCObject>::copy((v5 + 512), v147 + 456);
        }
      }

      *(v5 + 552) = *(v147 + 496);
      re::FixedArray<unsigned char>::operator=((v5 + 560), (v147 + 504));
      re::ObjCObject::operator=((v5 + 584), (v147 + 528));
      *(v5 + 592) = *(v147 + 536);
      if (v150 != v148)
      {
        v189 = *(v147 + 544);
        if (*(v5 + 600))
        {
          if (v189)
          {
            re::DynamicArray<char const*>::copy((v5 + 600), v147 + 544);
          }

          else
          {
            *(v5 + 616) = 0;
          }

          ++*(v5 + 624);
        }

        else if (v189)
        {
          v190 = *(v147 + 560);
          *(v5 + 600) = v189;
          re::DynamicArray<float *>::setCapacity((v5 + 600), v190);
          ++*(v5 + 624);
          re::DynamicArray<char const*>::copy((v5 + 600), v147 + 544);
        }
      }

      *(v5 + 12) = *(a1 + 12);
      *(v5 + 16) = *(a1 + 16);
      re::StringID::operator=((v5 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      return v5;
    case 0x32:
      v5 = (*(*a3 + 32))(a3, 312, 8);
      v14 = re::TimelineAssetData::TimelineAssetData(v5, 50);
      *(v14 + 72) = 0;
      *(v14 + 88) = 0;
      v15 = v14 + 88;
      *(v14 + 120) = 0;
      v16 = v14 + 120;
      *(v14 + 152) = 0;
      v17 = v14 + 152;
      *(v14 + 80) = 0x3FF0000000000000;
      *(v14 + 184) = 0;
      *(v14 + 192) = 0;
      v18 = (v14 + 192);
      *v14 = &unk_1F5CBFA28;
      *(v14 + 200) = 0;
      *(v14 + 208) = 0;
      *(v14 + 216) = 0;
      *(v14 + 304) = 0;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0u;
      *(v14 + 256) = 0;
      *(v14 + 264) = 0u;
      *(v14 + 280) = 0u;
      *(v14 + 296) = 0;
      *(v14 + 12) = *(a1 + 12);
      *(v14 + 16) = *(a1 + 16);
      re::StringID::operator=((v14 + 24), (a1 + 24));
      v19 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(a1 + 88) == 1)
      {
        v20 = *(*(a1 + 120) + 32);
        *&v194[0] = *(*(a1 + 120) + 40);
        *(&v194[0] + 1) = v20;
        re::DynamicArray<re::StringID>::operator=(v18, v194);
        re::FixedArray<float>::FixedArray(v191, a1 + 96);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v21 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v21;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v15, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      if (*(a1 + 128) == 1)
      {
        v22 = *(*(a1 + 160) + 32);
        *&v194[0] = *(*(a1 + 160) + 40);
        *(&v194[0] + 1) = v22;
        re::DynamicArray<re::StringID>::operator=((v5 + 232), v194);
        re::FixedArray<float>::FixedArray(v191, a1 + 136);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v23 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v23;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v16, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      if (*(a1 + 168) == 1)
      {
        v24 = *(*(a1 + 200) + 32);
        *&v194[0] = *(*(a1 + 200) + 40);
        *(&v194[0] + 1) = v24;
        re::DynamicArray<re::StringID>::operator=((v5 + 272), v194);
        re::FixedArray<float>::FixedArray(v191, a1 + 176);
        LOBYTE(v194[0]) = 1;
        *(v194 + 8) = *v191;
        v25 = *&v191[16];
        memset(v191, 0, 24);
        *(&v194[1] + 1) = v25;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v17, v194);
        if (LOBYTE(v194[0]) == 1 && *(&v194[0] + 1))
        {
          if (*&v194[1])
          {
            (*(**(&v194[0] + 1) + 40))();
            v194[1] = 0uLL;
          }

          *(&v194[0] + 1) = 0;
        }

        v19 = *v191;
        if (*v191 && *&v191[8])
        {
          v19 = (*(**v191 + 40))();
        }
      }

      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v26 = *(a1 + 208);
      if (v26)
      {
LABEL_35:
      }

      else
      {
LABEL_109:
        v27 = 0;
      }

      *(v5 + 184) = v27;
      return v5;
    case 0x3B:
      v5 = (*(*a3 + 32))(a3, 168, 8);
      v76 = re::TimelineAssetData::TimelineAssetData(v5, 59);
      *(v76 + 72) = 256;
      *(v76 + 76) = 1023969417;
      *(v76 + 120) = 0;
      *(v76 + 128) = 0;
      v77 = (v76 + 128);
      *(v76 + 80) = 0u;
      *(v76 + 96) = 0u;
      *(v76 + 112) = 0;
      *v76 = &unk_1F5CC08E8;
      *(v76 + 160) = 0;
      *(v76 + 136) = 0;
      *(v76 + 144) = 0;
      *(v76 + 152) = 0;
      *(v76 + 12) = *(a1 + 12);
      *(v76 + 16) = *(a1 + 16);
      re::StringID::operator=((v76 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (!*(a1 + 96))
      {
        goto LABEL_165;
      }

      v78 = *(*(*(a1 + 104) + 24) + 32);
      *&v194[0] = *(*(*(a1 + 104) + 24) + 40);
      *(&v194[0] + 1) = v78;
      re::DynamicArray<re::StringID>::operator=(v77, v194);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v5 + 88), *(a1 + 96));
      if (!*(a1 + 96))
      {
        goto LABEL_165;
      }

      v65 = 0;
      v79 = 0;
      v66 = 0;
      while (1)
      {
        v68 = *(v5 + 104);
        if (v68 <= v66)
        {
          break;
        }

        re::FixedArray<float>::operator=((*(v5 + 120) + v65), *(a1 + 104) + v79);
        ++v66;
        v79 += 32;
        v65 += 24;
        if (v66 >= *(a1 + 96))
        {
LABEL_165:
          *(v5 + 72) = *(a1 + 72);
          *(v5 + 76) = *(a1 + 76);
          *(v5 + 84) = *(a1 + 84);
          return v5;
        }
      }

      goto LABEL_340;
    case 0x3C:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 60);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEFB8;
LABEL_167:
      *v6 = v7;
      *(v6 + 12) = *(a1 + 12);
      *(v6 + 16) = *(a1 + 16);
      re::StringID::operator=((v6 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      v132 = *(v5 + 80);
      *(v5 + 80) = v194[0];
      v194[0] = v132;
      v133 = *(v5 + 96);
      *(v5 + 96) = *&v194[1];
      *&v194[1] = v133;
      re::AssetHandle::~AssetHandle(v194);
      if (*(v5 + 104))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_173;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_173;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 96);
LABEL_173:
      if (*(v5 + 120))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 120) = 0;
          goto LABEL_179;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_179;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 112);
LABEL_179:
      *(v5 + 136) = *(a1 + 120);
      *(v5 + 144) = *(a1 + 128);
      *(v5 + 152) = *(a1 + 136);
      if (*(v5 + 160))
      {
        if ((*(a1 + 144) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_185;
        }
      }

      else
      {
        if ((*(a1 + 144) & 1) == 0)
        {
          goto LABEL_185;
        }

        *(v5 + 160) = 1;
      }

      *(v5 + 168) = *(a1 + 152);
LABEL_185:
      *(v5 + 176) = *(a1 + 160);
      *(v5 + 180) = *(a1 + 164);
      return v5;
    case 0x3D:
      v135 = (*(*a3 + 32))(a3, 200, 8);
      v158 = re::TimelineAssetData::TimelineAssetData(v135, 61);
      *(v158 + 72) = 256;
      *(v158 + 80) = 0;
      v137 = (v158 + 80);
      *(v158 + 104) = 0;
      *(v158 + 88) = 0;
      *(v158 + 96) = 0;
      *(v158 + 152) = 0;
      *(v158 + 160) = 0;
      v159 = (v158 + 160);
      *(v158 + 112) = 0u;
      *(v158 + 128) = 0u;
      *(v158 + 144) = 0;
      *v158 = &unk_1F5CC02B8;
      *(v158 + 192) = 0;
      *(v158 + 168) = 0;
      *(v158 + 176) = 0;
      *(v158 + 184) = 0;
      *(v158 + 12) = *(a1 + 12);
      *(v158 + 16) = *(a1 + 16);
      re::StringID::operator=((v158 + 24), (a1 + 24));
      re::DynamicString::operator=((v135 + 40), (a1 + 40));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v160 = *(*(*(a1 + 120) + 24) + 32);
      *&v194[0] = *(*(*(a1 + 120) + 24) + 40);
      *(&v194[0] + 1) = v160;
      re::DynamicArray<re::StringID>::operator=(v159, v194);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v135 + 120), *(a1 + 112));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v161 = 0;
      v162 = 0;
      v68 = 0;
      while (1)
      {
        v65 = *(v135 + 136);
        if (v65 <= v68)
        {
          break;
        }

        re::FixedArray<float>::operator=((*(v135 + 152) + v161), *(a1 + 120) + v162);
        ++v68;
        v162 += 32;
        v161 += 24;
        if (v68 >= *(a1 + 112))
        {
LABEL_212:
          *(v135 + 72) = *(a1 + 72);
          v163 = *(a1 + 88);
          *&v194[0] = *(a1 + 96);
          *(&v194[0] + 1) = v163;
          re::DynamicArray<float>::operator=(v137, v194);
          return 0;
        }
      }

      goto LABEL_342;
    default:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "convertToAssetData", 1704);
      result = _os_crash();
      __break(1u);
      return result;
  }
}

uint64_t re::internal::convertToTimeline(re::internal *this, const re::TimelineAssetData *a2, re::Allocator *a3)
{
  if (this)
  {
    switch(*(this + 2))
    {
      case 1:
        v4 = re::Allocator::create<re::TimelineClip>(a2);
        return v4;
      case 2:
        v4 = re::Allocator::create<re::TimelineGroup>(a2);
        return v4;
      case 3:
        v4 = re::Allocator::create<re::FloatAnimationClip>(a2);
        return v4;
      case 4:
        v4 = re::Allocator::create<re::DoubleAnimationClip>(a2);
        return v4;
      case 5:
        v4 = re::Allocator::create<re::Vector2FAnimationClip>(a2);
        return v4;
      case 6:
        v4 = re::Allocator::create<re::Vector3FAnimationClip>(a2);
        return v4;
      case 7:
        v4 = re::Allocator::create<re::Vector4FAnimationClip>(a2);
        return v4;
      case 8:
        v4 = re::Allocator::create<re::QuaternionFAnimationClip>(a2);
        return v4;
      case 9:
        v4 = re::Allocator::create<re::SRTAnimationClip>(a2);
        return v4;
      case 0xA:
        v4 = re::Allocator::create<re::SkeletalPoseAnimationClip>(a2);
        return v4;
      case 0xB:
        v4 = re::Allocator::create<re::FloatAnimation>(a2);
        return v4;
      case 0xC:
        v4 = re::Allocator::create<re::DoubleAnimation>(a2);
        return v4;
      case 0xD:
        v4 = re::Allocator::create<re::Vector2FAnimation>(a2);
        return v4;
      case 0xE:
        v4 = re::Allocator::create<re::Vector3FAnimation>(a2);
        return v4;
      case 0xF:
        v4 = re::Allocator::create<re::Vector4FAnimation>(a2);
        return v4;
      case 0x10:
        v4 = re::Allocator::create<re::QuaternionFAnimation>(a2);
        return v4;
      case 0x11:
        v4 = re::Allocator::create<re::SRTAnimation>(a2);
        return v4;
      case 0x12:
        v4 = re::Allocator::create<re::SkeletalPoseAnimation>(a2);
        return v4;
      case 0x13:
        re::Allocator::create<re::FloatKeyframeAnimation>(a2);
        v4 = v23;
        return v4;
      case 0x14:
        re::Allocator::create<re::DoubleKeyframeAnimation>(a2);
        v4 = v13;
        return v4;
      case 0x15:
        re::Allocator::create<re::Vector2FKeyframeAnimation>(a2);
        v4 = v11;
        return v4;
      case 0x16:
        re::Allocator::create<re::Vector3FKeyframeAnimation>(a2);
        v4 = v15;
        return v4;
      case 0x17:
        re::Allocator::create<re::Vector4FKeyframeAnimation>(a2);
        v4 = v25;
        return v4;
      case 0x18:
        re::Allocator::create<re::QuaternionFKeyframeAnimation>(a2);
        v4 = v7;
        return v4;
      case 0x19:
        re::Allocator::create<re::SRTKeyframeAnimation>(a2);
        v4 = v24;
        return v4;
      case 0x1A:
        re::Allocator::create<re::SkeletalPoseKeyframeAnimation>(a2);
        v4 = v27;
        return v4;
      case 0x1B:
        re::Allocator::create<re::FloatSampledAnimation>(a2);
        v4 = v16;
        return v4;
      case 0x1C:
        re::Allocator::create<re::DoubleSampledAnimation>(a2);
        v4 = v26;
        return v4;
      case 0x1D:
        re::Allocator::create<re::Vector2FSampledAnimation>(a2);
        v4 = v20;
        return v4;
      case 0x1E:
        re::Allocator::create<re::Vector3FSampledAnimation>(a2);
        v4 = v21;
        return v4;
      case 0x1F:
        re::Allocator::create<re::Vector4FSampledAnimation>(a2);
        v4 = v17;
        return v4;
      case 0x20:
        re::Allocator::create<re::QuaternionFSampledAnimation>(a2);
        v4 = v18;
        return v4;
      case 0x21:
        re::Allocator::create<re::SRTSampledAnimation>(a2);
        v4 = v22;
        return v4;
      case 0x22:
        re::Allocator::create<re::SkeletalPoseSampledAnimation>(a2);
        v4 = v12;
        *(v4 + 112) = *(this + 192);
        *(v4 + 113) = *(this + 193);
        return v4;
      case 0x25:
        re::Allocator::create<re::OrbitAnimation>(a2);
        v4 = v8;
        *(v4 + 72) = *(this + 72);
        *(v4 + 76) = *(this + 19);
        *(v4 + 96) = *(this + 5);
        v9 = *(this + 6);
        v10 = *(this + 8);
        *(v4 + 144) = *(this + 7);
        *(v4 + 160) = v10;
        *(v4 + 128) = v9;
        *(v4 + 84) = *(this + 72);
        *(v4 + 80) = *(this + 37);
        return v4;
      case 0x26:
        v4 = re::Allocator::create<re::AudioAnimationTimeline>(a2);
        return v4;
      case 0x27:

        result = createAnimationBlendTreeFromAssetData<float>(this, a2);
        break;
      case 0x28:

        result = createAnimationBlendTreeFromAssetData<double>(this, a2);
        break;
      case 0x29:

        result = createAnimationBlendTreeFromAssetData<re::Vector2<float>>(this, a2);
        break;
      case 0x2A:

        result = createAnimationBlendTreeFromAssetData<re::Vector3<float>>(this, a2);
        break;
      case 0x2B:

        result = createAnimationBlendTreeFromAssetData<re::Vector4<float>>(this, a2);
        break;
      case 0x2C:

        result = createAnimationBlendTreeFromAssetData<re::Quaternion<float>>(this, a2);
        break;
      case 0x2D:

        result = createAnimationBlendTreeFromAssetData<re::GenericSRT<float>>(this, a2);
        break;
      case 0x2E:

        result = createAnimationBlendTreeFromAssetData<re::SkeletalPose>(this, a2);
        break;
      case 0x30:
        v4 = re::Allocator::create<re::EventTimeline>(a2);
        *(v4 + 72) = *(this + 72);
        return v4;
      case 0x32:
        v4 = re::Allocator::create<re::BlendShapeWeightsAnimation>(a2);
        return v4;
      case 0x3B:
        re::Allocator::create<re::BlendShapeWeightsSampledAnimation>(a2);
        v4 = v14;
        return v4;
      case 0x3C:
        v4 = re::Allocator::create<re::BlendShapeWeightsAnimationClip>(a2);
        return v4;
      case 0x3D:
        re::Allocator::create<re::BlendShapeWeightsKeyframeAnimation>(a2);
        v4 = v28;
        return v4;
      default:
        re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "convertToTimeline", 2074);
        result = _os_crash();
        __break(1u);
        break;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t re::Allocator::create<re::TimelineClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 160, 8);
  result = re::Timeline::Timeline(v1, 1);
  *result = &unk_1F5CB06F0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 96) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 152) = 1065353216;
  *(result + 156) = 0;
  return result;
}

float anonymous namespace::convertTimelineClip(_anonymous_namespace_ *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  *(a2 + 3) = *(this + 3);
  *(a2 + 16) = *(this + 16);
  re::StringID::operator=(a2 + 3, this + 3);
  re::DynamicString::operator=((a2 + 40), (this + 40));
  *(a2 + 9) = 0;
  if (*(a2 + 80))
  {
    if ((*(this + 96) & 1) == 0)
    {
      *(a2 + 80) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 80) = 1;
  }

  *(a2 + 11) = *(this + 13);
LABEL_7:
  if (*(a2 + 96))
  {
    if ((*(this + 112) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(this + 112) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 13) = *(this + 15);
LABEL_13:
  *(a2 + 14) = *(this + 16);
  *(a2 + 120) = *(this + 136);
  *(a2 + 16) = *(this + 18);
  if ((*(a2 + 136) & 1) == 0)
  {
    if ((*(this + 152) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 136) = 1;
LABEL_18:
    *(a2 + 18) = *(this + 20);
    goto LABEL_19;
  }

  if (*(this + 152))
  {
    goto LABEL_18;
  }

  *(a2 + 136) = 0;
LABEL_19:
  result = *(this + 42);
  *(a2 + 38) = result;
  *(a2 + 156) = *(this + 172);
  return result;
}

void *re::Allocator::create<re::TimelineGroup>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 96, 8);
  result = re::Timeline::Timeline(v1, 2);
  *result = &unk_1F5CB0968;
  result[10] = 0;
  result[11] = 0;
  result[9] = 0;
  return result;
}

void anonymous namespace::convertTimelineGroup(_anonymous_namespace_ *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  *(a2 + 3) = *(this + 3);
  *(a2 + 16) = *(this + 16);
  re::StringID::operator=(a2 + 3, this + 3);
  v5 = re::DynamicString::operator=((a2 + 40), (this + 40));
  v6 = *(this + 11);
  v7 = *(a2 + 10);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a2 + 11) + 8 * i) = 0;
    }
  }
}

uint64_t re::Allocator::create<re::FloatAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 3);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1220;
  return result;
}

float anonymous namespace::convertAnimationClip<re::FloatAnimationClipAssetData,re::FloatAnimationClip>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  *(a2 + 80) = 0;
  *(a2 + 72) = *(a1 + 72);
  if (*(a2 + 88))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 112);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 128);
LABEL_13:
  *(a2 + 120) = *(a1 + 136);
  *(a2 + 128) = *(a1 + 144);
  *(a2 + 136) = *(a1 + 152);
  if ((*(a2 + 144) & 1) == 0)
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 144) = 1;
LABEL_18:
    *(a2 + 152) = *(a1 + 168);
    goto LABEL_19;
  }

  if (*(a1 + 160))
  {
    goto LABEL_18;
  }

  *(a2 + 144) = 0;
LABEL_19:
  result = *(a1 + 176);
  *(a2 + 160) = result;
  *(a2 + 164) = *(a1 + 180);
  return result;
}

uint64_t re::Allocator::create<re::DoubleAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 4);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC12D0;
  return result;
}

uint64_t re::Allocator::create<re::Vector2FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 5);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1380;
  return result;
}

uint64_t re::Allocator::create<re::Vector3FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 6);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1430;
  return result;
}

uint64_t re::Allocator::create<re::Vector4FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 7);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC14E0;
  return result;
}

uint64_t re::Allocator::create<re::QuaternionFAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 8);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1590;
  return result;
}

uint64_t re::Allocator::create<re::SRTAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 9);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1640;
  return result;
}

uint64_t re::Allocator::create<re::SkeletalPoseAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 10);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC16F0;
  return result;
}

uint64_t re::Allocator::create<re::FloatAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 120, 8);
  result = re::Timeline::Timeline(v1, 11);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *result = &unk_1F5CADEB8;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::FloatAnimationAssetData,re::FloatAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 92) = *(a1 + 92);
LABEL_7:
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 100) = *(a1 + 100);
LABEL_13:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 108) = *(a1 + 108);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 112);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 112) = result;
  return result;
}

uint64_t re::Allocator::create<re::DoubleAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 144, 8);
  result = re::Timeline::Timeline(v1, 12);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CC17A0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::DoubleAnimationAssetData,re::DoubleAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 96);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_13:
  if (*(a2 + 120))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 120) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 120) = 1;
  }

  *(a2 + 128) = *(a1 + 128);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 136);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 136) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector2FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 144, 8);
  result = re::Timeline::Timeline(v1, 13);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CC1850;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::Vector2FAnimationAssetData,re::Vector2FAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 96);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_13:
  if (*(a2 + 120))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 120) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 120) = 1;
  }

  *(a2 + 128) = *(a1 + 128);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 136);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 136) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector3FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 14);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC1900;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::Vector3FAnimationAssetData,re::Vector3FAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_7:
  if (*(a2 + 128))
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      *(a2 + 128) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 128) = 1;
  }

  *(a2 + 144) = *(a1 + 144);
LABEL_13:
  if (*(a2 + 160))
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      *(a2 + 160) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 160) = 1;
  }

  *(a2 + 176) = *(a1 + 176);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 192);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 192) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector4FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 15);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC19B0;
  return result;
}

uint64_t re::Allocator::create<re::QuaternionFAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 16);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC1A60;
  return result;
}

uint64_t re::Allocator::create<re::SRTAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 304, 16);
  result = re::Timeline::Timeline(v1, 17);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 160) = 0;
  *(result + 224) = 0;
  *(result + 288) = 0;
  *result = &unk_1F5CC1B10;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::SRTAnimationAssetData,re::SRTAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 96) = 1;
  }

  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v6;
  *(a2 + 112) = v5;
LABEL_7:
  if (*(a2 + 160))
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      *(a2 + 160) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 160) = 1;
  }

  v7 = *(a1 + 176);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 176) = v7;
LABEL_13:
  if (*(a2 + 224))
  {
    if ((*(a1 + 224) & 1) == 0)
    {
      *(a2 + 224) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 224) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 224) = 1;
  }

  v9 = *(a1 + 240);
  v10 = *(a1 + 272);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 272) = v10;
  *(a2 + 240) = v9;
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v11 = *(a1 + 288);
  if (v11)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 288) = result;
  return result;
}

uint64_t re::Allocator::create<re::SkeletalPoseAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 384, 8);
  result = re::Timeline::Timeline(v1, 18);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 184) = 0;
  *(result + 280) = 0;
  *(result + 376) = 0;
  *result = &unk_1F5CC1BC0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::SkeletalPoseAnimationAssetData,re::SkeletalPoseAnimation>(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v29 = 0;
  v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(v27, 3uLL);
  ++v29;
  if (*(a1 + 88) == 1)
  {
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v40, a1 + 216);
    v6 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v27, &v40);
    if (v40)
    {
    }

    re::Optional<re::SkeletalPose>::Optional(&v40, &v32);
    re::Optional<re::SkeletalPose>::operator=(a2 + 88, &v40);
    if (v40 == 1)
    {
      re::SkeletalPose::~SkeletalPose((&v40 + 8));
    }

    re::SkeletalPose::~SkeletalPose(&v32);
    v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 112), a1 + 96);
  }

  if (*(a1 + 120) == 1)
  {
    v7 = v28;
    if (!v28)
    {
      goto LABEL_19;
    }

    v8 = 0;
    v9 = v30;
    v10 = *(a1 + 272);
    while (1)
    {
      v11 = v9[v8];
      if (*(v11 + 216) == v10)
      {
        if (!v10)
        {
LABEL_18:
          if (v8 >= v7)
          {
LABEL_19:
            re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v40, a1 + 256);
            v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v27, &v40);
            if (v40)
            {
            }

            v7 = v28;
            v8 = v28 - 1;
          }

          if (v7 > v8)
          {
            re::Optional<re::SkeletalPose>::Optional(&v40, &v32);
            re::Optional<re::SkeletalPose>::operator=(a2 + 184, &v40);
            if (v40 == 1)
            {
              re::SkeletalPose::~SkeletalPose((&v40 + 8));
            }

            re::SkeletalPose::~SkeletalPose(&v32);
            v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 208), a1 + 128);
            break;
          }

          v31 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          v33 = "operator[]";
          v34 = 1024;
          v35 = 789;
          v36 = 2048;
          v37 = v8;
          v38 = 2048;
          v39 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_58:
          v31 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v32 = 136315906;
          v33 = "operator[]";
          v34 = 1024;
          v35 = 789;
          v36 = 2048;
          v37 = v8;
          v38 = 2048;
          v39 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v12 = *(v11 + 224);
        v13 = *(a1 + 288);
        v14 = 16 * v10;
        while (1)
        {
          v5 = re::StringID::operator==(v12, v13);
          if (!v5)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          v14 -= 16;
          if (!v14)
          {
            goto LABEL_18;
          }
        }
      }

      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a1 + 152) != 1)
  {
    goto LABEL_45;
  }

  v7 = v28;
  if (!v28)
  {
    goto LABEL_38;
  }

  v8 = 0;
  v15 = v30;
  v16 = *(a1 + 312);
  while (1)
  {
    v17 = v15[v8];
    if (*(v17 + 216) == v16)
    {
      break;
    }

LABEL_35:
    if (++v8 == v7)
    {
      goto LABEL_38;
    }
  }

  if (v16)
  {
    v18 = *(v17 + 224);
    v19 = *(a1 + 328);
    v20 = 16 * v16;
    do
    {
      v5 = re::StringID::operator==(v18, v19);
      if (!v5)
      {
        goto LABEL_35;
      }

      v18 += 2;
      v19 += 2;
      v20 -= 16;
    }

    while (v20);
  }

  if (v8 >= v7)
  {
LABEL_38:
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v40, a1 + 296);
    v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(v27, &v40);
    if (v40)
    {
    }

    v7 = v28;
    v8 = v28 - 1;
  }

  if (v7 <= v8)
  {
    goto LABEL_58;
  }

  re::Optional<re::SkeletalPose>::Optional(&v40, &v32);
  re::Optional<re::SkeletalPose>::operator=(a2 + 280, &v40);
  if (v40 == 1)
  {
    re::SkeletalPose::~SkeletalPose((&v40 + 8));
  }

  re::SkeletalPose::~SkeletalPose(&v32);
  v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 304), a1 + 160);
LABEL_45:
  v21 = v27[0];
  if (v27[0])
  {
    v22 = v30;
    if (v30)
    {
      if (v28)
      {
        v23 = 8 * v28;
        v24 = v30;
        do
        {
          if (*v24)
          {

            *v24 = 0;
          }

          ++v24;
          v23 -= 8;
        }

        while (v23);
      }

      v5 = (*(*v21 + 40))(v21, v22);
    }
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v25 = *(a1 + 184);
  if (v25)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 376) = result;
  return result;
}

double re::Allocator::create<re::FloatKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 19);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1C70;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::FloatKeyframeAnimationAssetData,re::FloatKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<int>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::DoubleKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 20);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1D20;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::DoubleKeyframeAnimationAssetData,re::DoubleKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<double>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector2FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 21);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1DD0;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector2FKeyframeAnimationAssetData,re::Vector2FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector2<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector3FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 22);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1E80;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector3FKeyframeAnimationAssetData,re::Vector3FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector3<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector4FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 23);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1F30;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector4FKeyframeAnimationAssetData,re::Vector4FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector4<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::QuaternionFKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 24);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1FE0;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::QuaternionFKeyframeAnimationAssetData,re::QuaternionFKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Quaternion<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::SRTKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 25);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC2090;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::SRTKeyframeAnimationAssetData,re::SRTKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::SkeletalPoseKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 26);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC2140;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::SkeletalPoseKeyframeAnimationAssetData,re::SkeletalPoseKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v12, a1 + 184);
  v5 = *(a1 + 136);
  if (*(a1 + 136))
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    while (1)
    {
      v9 = *(a2 + 112);
      if (v9 <= v7)
      {
        break;
      }

      re::SkeletalPose::init((*(a2 + 120) + v8 - 16), &v12);
      v9 = *(a1 + 136);
      if (v9 <= v7)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 112);
      if (v9 <= v7)
      {
        goto LABEL_12;
      }

      re::FixedArray<re::GenericSRT<float>>::operator=((*(a2 + 120) + v8), *(a1 + 152) + v6);
      ++v7;
      v6 += 24;
      v8 += 88;
      if (v7 >= *(a1 + 136))
      {
        goto LABEL_7;
      }
    }

    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 468;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 468;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v12)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  v10 = *(a1 + 96);
  *&v22 = *(a1 + 112);
  *(&v22 + 1) = v10;
  return re::FixedArray<int>::operator=((a2 + 80), &v22);
}

double re::Allocator::create<re::FloatSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 27);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC21F0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::FloatSampledAnimationAssetData,re::FloatSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<int>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::DoubleSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 28);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC22A0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::DoubleSampledAnimationAssetData,re::DoubleSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<double>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector2FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 29);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2350;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector2FSampledAnimationAssetData,re::Vector2FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector2<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector3FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 30);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2400;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector3FSampledAnimationAssetData,re::Vector3FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector3<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector4FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 31);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC24B0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector4FSampledAnimationAssetData,re::Vector4FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector4<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::QuaternionFSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 32);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2560;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::QuaternionFSampledAnimationAssetData,re::QuaternionFSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Quaternion<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::SRTSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 33);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2610;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::SRTSampledAnimationAssetData,re::SRTSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::SkeletalPoseSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 120, 8);
  v2 = re::Timeline::Timeline(v1, 34);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CAF198;
  *(v2 + 112) = 257;
  *(v2 + 114) = 1;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::SkeletalPoseSampledAnimationAssetData,re::SkeletalPoseSampledAnimation>(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v11, a1 + 152);
  v5 = *(a1 + 104);
  if (*(a1 + 104))
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    while (1)
    {
      v9 = *(a2 + 96);
      if (v9 <= v7)
      {
        break;
      }

      re::SkeletalPose::init((*(a2 + 104) + v8 - 16), &v11);
      v9 = *(a1 + 104);
      if (v9 <= v7)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 96);
      if (v9 <= v7)
      {
        goto LABEL_12;
      }

      re::FixedArray<re::GenericSRT<float>>::operator=((*(a2 + 104) + v8), *(a1 + 120) + v6);
      ++v7;
      v6 += 24;
      v8 += 88;
      if (v7 >= *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 468;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 797;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 468;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v11)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::OrbitAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 224, 16);

  return re::OrbitAnimation::OrbitAnimation(v1);
}

re::DynamicString *anonymous namespace::convertTimeline<re::OrbitAnimationAssetData,re::OrbitAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));

  return re::DynamicString::operator=((a2 + 40), (a1 + 40));
}

uint64_t re::Allocator::create<re::AudioAnimationTimeline>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 96, 8);
  result = re::Timeline::Timeline(v1, 38);
  *(result + 72) = 0;
  *result = &unk_1F5CB22C0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

__n128 anonymous namespace::convertAudioAnimationTimeline<re::AnimationStateTimelineAssetData,re::AudioAnimationTimeline>(__n128 *a1, __n128 *a2)
{
  a2->n128_u32[3] = a1->n128_u32[3];
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  re::StringID::operator=(&a2[1].n128_u64[1], &a1[1].n128_i64[1]);
  re::DynamicString::operator=(&a2[2].n128_i8[8], &a1[2].n128_i8[8]);
  result = a1[5];
  a2[5] = result;
  return result;
}

uint64_t createAnimationBlendTreeFromAssetData<float>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 39);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC26C0;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<float>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<double>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 40);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2820;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<double>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Vector2<float>>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 41);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2980;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Vector3<float>>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 42);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2AE0;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Vector4<float>>(unint64_t a1, void *a2)
{
  v5 = v87;
  v119 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v48 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0x7FFFFFFFLL;
  re::StringID::invalid(v53);
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v58, 0, sizeof(v58));
  v57 = 0;
  v59 = 0;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v64, 0, sizeof(v64));
  v67 = 0x7FFFFFFFLL;
  v68 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  v72 = 0x7FFFFFFFLL;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v87[1] = 0;
  v87[0] = 0;
  v88 = 1;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  re::RigEnvironment::init(v87, a2);
  v46 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v47, a1 + 80, a2);
  v84 = 0;
  v6 = v49;
  v49 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v51 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v50;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v51[8]);
  v85 = 0;
  v9 = v69;
  if (v69[2])
  {
    a1 = -1;
    v10 = 1;
    v11 = &str_67;
    v2 = 8;
    while (1)
    {
      v12 = v49;
      if (v49 >= *(&v48 + 1))
      {
        v13 = v49 + 1;
        if (*(&v48 + 1) < v49 + 1)
        {
          if (v48)
          {
            if (*(&v48 + 1))
            {
              v14 = 2 * *(&v48 + 1);
            }

            else
            {
              v14 = 8;
            }

            if (v14 <= v13)
            {
              v15 = v49 + 1;
            }

            else
            {
              v15 = v14;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v15);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v48, v13);
            ++v50;
          }
        }

        v12 = v49;
      }

      v16 = *v51 + 80 * v12;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *v16 = -1;
      *(v16 + 8) = 0;
      *(v16 + 32) = 1;
      *(v16 + 56) = &str_67;
      *(v16 + 64) = 0;
      *(v16 + 72) = &str_67;
      ++v49;
      ++v50;
      a2 = v85;
      v17 = v69[2];
      if (v17 <= v85)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v51[8], (v69[4] + 88 * v85), &v85);
      ++v85;
      v9 = v69;
      if (v85 >= v69[2])
      {
        goto LABEL_20;
      }
    }

    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v81[0] = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = v11;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v17;
    v103 = 2048;
    *v104 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v86 = 0;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = v10;
    v103 = 2048;
    *v104 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 797;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v81[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v102 = 136315906;
    *&v102[4] = "operator[]";
    *&v102[12] = 1024;
    *&v102[14] = 789;
    *&v102[18] = 2048;
    *&v102[20] = a2;
    v103 = 2048;
    *v104 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

LABEL_20:
  if (v9[7])
  {
    v18 = 0;
    v11 = 0;
    while (1)
    {
      v5 = v9[9];
      v10 = &v5[v18];
      re::StringID::StringID(v81, &v5[v18 + 4]);
      v17 = v69[7];
      if (v17 <= v11)
      {
        goto LABEL_117;
      }

      re::StringID::StringID(&v85, (v69[9] + v18 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v10 + 80) >> 31) ^ (*(v10 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], (v10 + 80), v19 ^ (v19 >> 31), &v94);
      v20 = HIDWORD(v94);
      v21 = *&v51[24];
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v18] >> 31) ^ (v5[v18] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v23 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v51[8], &v5[v18], v22 ^ (v22 >> 31), &v94);
      if (HIDWORD(v94) == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v21 + 32 * v20);
      v10 = a2[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_118;
      }

      v5 = (*&v51[24] + 32 * HIDWORD(v94));
      re::DynamicArray<unsigned long>::add((*v51 + 80 * v10 + 8), v5 + 3);
      v17 = v5[3];
      v10 = v49;
      if (v49 <= v17)
      {
        goto LABEL_119;
      }

      v24 = *v51;
      *(*v51 + 80 * v17) = a2[3];
      v17 = v5[3];
      if (v10 <= v17)
      {
        goto LABEL_120;
      }

      re::StringID::operator=((v24 + 80 * v17 + 48), &v85);
      v10 = v5[3];
      v17 = v49;
      if (v49 <= v10)
      {
        goto LABEL_121;
      }

      v25 = re::StringID::operator=((*v51 + 80 * v10 + 64), v81);
      if (v85)
      {
        if (v85)
        {
        }
      }

      if (v81[0])
      {
        if (v81[0])
        {
        }
      }

      ++v11;
      v9 = v69;
      v18 += 20;
      if (v11 >= v69[7])
      {
        goto LABEL_43;
      }
    }

    if (v85)
    {
      if (v85)
      {
      }
    }

    if (v81[0])
    {
      if (v81[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v87;
  if (!v49)
  {
LABEL_83:
    re::DynamicString::format("A root node without a parent was not found.", &v94);
    goto LABEL_100;
  }

  a1 = 0;
  v11 = 0;
  v26 = 0;
  a2 = 0;
  v17 = -1;
  v27 = 32;
  v10 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_116;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v69[4] + v27 - 32));
    if (isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_122;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
          goto LABEL_95;
        }
      }

      v30 = *(*v51 + a1 + 24);
      if (v30 <= 1)
      {
        v40 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v30 != 2)
      {
        if (v68 == 1)
        {
          goto LABEL_85;
        }

        v26 = 1;
      }

      goto LABEL_72;
    }

    v2 = v69[2];
    if (v2 <= a2)
    {
      goto LABEL_123;
    }

    v31 = (v69[4] + v27);
    if (re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v32 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70, v31, &v84);
      ++v84;
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_124;
      }

      if (*(*v51 + a1) >= v49)
      {
        v40 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v51 + a1 + 24))
      {
        v40 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v31[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v49;
      if (v49 <= a2)
      {
        goto LABEL_126;
      }

      if (*(*v51 + a1) == -1)
      {
        v29 = v17 == -1;
        v17 = a2;
        if (!v29)
        {
LABEL_95:
          v40 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v68 = 1;
      if (v26)
      {
LABEL_85:
        v40 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v26 = 0;
      goto LABEL_72;
    }

    v2 = v49;
    if (v49 <= a2)
    {
      goto LABEL_125;
    }

    if (*(*v51 + a1) >= v49)
    {
      v40 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v51 + a1 + 24))
    {
      break;
    }

    ++v11;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v27 += 88;
    if (a2 >= v2)
    {
      if (v17 != -1)
      {
        a1 = v69[2];
        if (a1 > v17)
        {
          v33 = v69[4];
          v34 = (*(*v47 + 32))(v47, 624, 8);
          v35 = re::Timeline::Timeline(v34, 43);
          *(v35 + 72) = 0;
          *(v35 + 80) = 0;
          v36 = v35 + 80;
          *(v35 + 88) = 0u;
          *(v35 + 104) = 0;
          *(v35 + 112) = 0u;
          *(v35 + 128) = 0u;
          *(v35 + 144) = 0;
          *(v35 + 152) = 0u;
          *(v35 + 168) = 0u;
          *(v35 + 184) = 0;
          *(v35 + 192) = 0u;
          *(v35 + 208) = 0u;
          *(v35 + 224) = 0;
          *(v35 + 232) = 0u;
          *(v35 + 248) = 0u;
          *(v35 + 264) = 0;
          *(v35 + 528) = 0;
          *(v35 + 536) = 0;
          *(v35 + 568) = 0;
          *(v35 + 560) = 0;
          *(v35 + 544) = 0u;
          *(v35 + 616) = 0;
          *(v35 + 576) = 0u;
          *(v35 + 592) = 0u;
          *(v35 + 608) = 0;
          *(v35 + 488) = 0u;
          *(v35 + 504) = 0u;
          *(v35 + 520) = 0;
          *(v35 + 272) = 0u;
          *(v35 + 288) = 0u;
          *(v35 + 304) = 0u;
          *(v35 + 320) = 0u;
          *(v35 + 336) = 0u;
          *(v35 + 352) = 0u;
          *(v35 + 368) = 0u;
          *(v35 + 384) = 0u;
          *(v35 + 400) = 0;
          *(v35 + 440) = 0;
          *(v35 + 408) = 0u;
          *(v35 + 424) = 0u;
          *(v35 + 480) = 0;
          *(v35 + 448) = 0u;
          *(v35 + 464) = 0u;
          *v35 = &unk_1F5CC2C40;
          re::FixedArray<unsigned long>::init<>((v35 + 304), v47, v84);
          re::FixedArray<unsigned long>::init<>((v34 + 328), v47, v84 + 1);
          re::FixedArray<unsigned long>::init<>((v34 + 352), v47, v84);
          *(v34 + 416) = v47;
          re::DynamicArray<re::StringID>::setCapacity((v34 + 416), v11);
          ++*(v34 + 440);
          v85 = 0;
          v86 = 0;
          if (v68 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v64[1], v47, v53, v87);
            re::AnimationBlendTreeBuilder<double>::buildRig(v81, &v47, v34, v17, &v85);
            if (LOBYTE(v81[0]) != 1)
            {
              v41 = v83;
              v42 = v81[3];
              v43 = v82;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v64[1], *(v33 + 88 * v17 + 8), "output", "output", "", 0, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            v105 = 0;
            *&v104[2] = 0;
            v106 = 1;
            v109 = 0;
            v107 = 0;
            v108 = 0;
            v110 = 0;
            v113 = 0;
            v111 = 0;
            v112 = 0;
            v118 = 0;
            v115 = 0u;
            v116 = 0u;
            v114 = 0;
            v117 = 0;
            *&v102[16] = v87;
            v102[24] = 0;
            *v102 = v47;
            *&v102[8] = 0;
            re::RigGraphCompilation::init(&v104[2], v47);
            re::RigGraphSystem::buildFromDefinition(v47, v53, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v36, &v94);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 120, &v96 + 8);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 160, v99);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 200, v100);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v34 + 240, v101);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v101);
            re::DynamicArray<re::StringID>::deinit(v100);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v99);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v96 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v94);
            re::RigGraphCompilation::~RigGraphCompilation(&v104[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize(v34 + 416, v11);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v34 + 280), v47, v49);
            *(v34 + 376) = v47;
            re::DynamicArray<re::StringID>::setCapacity((v34 + 376), 0);
            ++*(v34 + 400);
            re::DynamicArray<re::StringID>::resize(v34 + 376, v49);
            if (!*(v34 + 288))
            {
LABEL_128:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 468;
              *&v102[18] = 2048;
              *&v102[20] = 0;
              v103 = 2048;
              *v104 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_129;
            }

            v37 = *(v34 + 296);
            *v37 = 1065353216;
            a1 = v49;
            if (v49 <= v17)
            {
LABEL_129:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 789;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v81[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v102 = 136315906;
              *&v102[4] = "operator[]";
              *&v102[12] = 1024;
              *&v102[14] = 797;
              *&v102[18] = 2048;
              *&v102[20] = v17;
              v103 = 2048;
              *v104 = a1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v37 + 6) = *(*v51 + 80 * v17 + 24);
            a1 = v69[2];
            if (a1 <= v17)
            {
              goto LABEL_130;
            }

            *(v37 + 7) = re::StringID::operator==((v69[4] + 88 * v17 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v37 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v47, v34, v17, 1, &v85, &v86);
          }

          if (v75)
          {
            for (i = 0; i < v75; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v34, i, *(v77 + 8 * i));
            }
          }

          v39 = v69;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v34 + 456, v69);
          re::DynamicArray<re::RigGraphConnection>::operator=(v34 + 496, v39 + 5);
          *(v34 + 536) = *(v39 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v34 + 544, v39 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v34 + 584, v39 + 16);
          *(v34 + 12) = *(v46 + 12);
          *(v34 + 16) = *(v46 + 16);
          re::StringID::operator=((v34 + 24), (v46 + 24));
          re::DynamicString::operator=((v34 + 40), (v46 + 40));
          *(v34 + 72) = *(v46 + 72);
          goto LABEL_104;
        }

LABEL_127:
        v81[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v102 = 136315906;
        *&v102[4] = "operator[]";
        *&v102[12] = 1024;
        *&v102[14] = 797;
        *&v102[18] = 2048;
        *&v102[20] = v17;
        v103 = 2048;
        *v104 = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_128;
      }

      goto LABEL_83;
    }
  }

  v40 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v41 = v95;
  v42 = v94;
  v43 = BYTE8(v94);
LABEL_101:
  v34 = 0;
  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v41);
    v34 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v93[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v87);
  if (v87[0] && (v88 & 1) == 0)
  {
    (*(*v87[0] + 40))();
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v70);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v65);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v62[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v60[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v58[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v56 + 8);
  v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v54);
  if (v53[0])
  {
    if (v53[0])
    {
    }
  }

  v53[0] = 0;
  v53[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v51[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v48);
  return v34;
}