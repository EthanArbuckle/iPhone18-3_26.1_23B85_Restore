void re::initInfo_RigAsset(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x44758379FC0;
  v15[1] = "RigAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE19C270, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C270);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::RigDefinition>>::get();
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "rigDefinitions";
      *(v7 + 16) = &qword_1EE19C2B8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE19C2A0 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "basePoseNames";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE19C2A8 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::MeshRigIndex>>::get(v12);
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "meshRigs";
      *(v13 + 16) = qword_1EE19C2F8;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x5000000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19C2B0 = v13;
      __cxa_guard_release(&qword_1EE19C270);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C2A0;
  *(this + 9) = re::internal::defaultConstruct<re::RigAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigDefinition>>::get()
{
  if ((atomic_load_explicit(&qword_1EE19C278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C278))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19C2B8);
    qword_1EE19C2B8 = &unk_1F5CCA818;
    __cxa_guard_release(&qword_1EE19C278);
  }

  if ((_MergedGlobals_109 & 1) == 0)
  {
    v0 = re::introspect_RigDefinition(1);
    if ((_MergedGlobals_109 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_109 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE19C2B8, 0);
      qword_1EE19C2C8 = 0x2800000003;
      dword_1EE19C2D0 = v2;
      word_1EE19C2D4 = 0;
      *&xmmword_1EE19C2D8 = 0;
      *(&xmmword_1EE19C2D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE19C2E8 = v1;
      unk_1EE19C2F0 = 0;
      qword_1EE19C2B8 = &unk_1F5CCA818;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE19C2B8, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE19C2D8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshRigIndex>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE19C280, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19C280);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE19C2F8);
      qword_1EE19C2F8[0] = &unk_1F5CCA8B0;
      __cxa_guard_release(&qword_1EE19C280);
    }
  }

  if ((byte_1EE19C249 & 1) == 0)
  {
    v1 = qword_1EE19C260;
    if (qword_1EE19C260 || (v1 = re::allocInfo_MeshRigIndex(a1), qword_1EE19C260 = v1, re::initInfo_MeshRigIndex(v1, v2), (byte_1EE19C249 & 1) == 0))
    {
      byte_1EE19C249 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(qword_1EE19C2F8, 0);
      unk_1EE19C308 = 0x2800000003;
      unk_1EE19C310 = v3;
      unk_1EE19C314 = 0;
      *&xmmword_1EE19C318 = 0;
      *(&xmmword_1EE19C318 + 1) = 0xFFFFFFFFLL;
      unk_1EE19C328 = v1;
      unk_1EE19C330 = 0;
      qword_1EE19C2F8[0] = &unk_1F5CCA8B0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(qword_1EE19C2F8, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE19C318 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 80);
  re::DynamicArray<re::StringID>::deinit(a3 + 40);

  return re::DynamicArray<re::RigDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigAsset>(uint64_t a1)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 80);
  re::DynamicArray<re::StringID>::deinit(a1 + 40);

  return re::DynamicArray<re::RigDefinition>::deinit(a1);
}

void *re::DynamicArray<re::RigDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x478uLL))
        {
          v2 = 1144 * a2;
          result = (*(*result + 32))(result, 1144 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1144, a2);
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
        v10 = 1144 * v9;
        v11 = v7;
        do
        {
          re::RigDefinition::RigDefinition(v11, v8);
          re::RigDefinition::~RigDefinition(v8);
          v8 = (v8 + 1144);
          v11 += 1144;
          v10 -= 1144;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::RigDefinition::RigDefinition(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  ++*(a2 + 24);
  ++*(a1 + 24);
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v12;
  ++*(a2 + 104);
  ++*(a1 + 104);
  *(a1 + 152) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  v13 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v13;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v14 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v14;
  v15 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v15;
  ++*(a2 + 144);
  ++*(a1 + 144);
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v16 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v16;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v17 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v17;
  v18 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v18;
  ++*(a2 + 184);
  ++*(a1 + 184);
  re::DynamicRegisterTable::DynamicRegisterTable(a1 + 200, a2 + 200);
  *(a1 + 552) = 0;
  *(a1 + 544) = 0;
  *(a1 + 536) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 520) = *(a2 + 520);
  *(a2 + 520) = 0;
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 528) = 0;
  v19 = *(a1 + 536);
  *(a1 + 536) = *(a2 + 536);
  *(a2 + 536) = v19;
  v20 = *(a1 + 552);
  *(a1 + 552) = *(a2 + 552);
  *(a2 + 552) = v20;
  ++*(a2 + 544);
  ++*(a1 + 544);
  v21 = *(a2 + 560);
  v22 = *(a2 + 576);
  v23 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v23;
  *(a1 + 560) = v21;
  *(a1 + 576) = v22;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a1 + 632) = *(a2 + 632);
  *(a2 + 632) = 0;
  v24 = *(a1 + 640);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 640) = v24;
  v25 = *(a1 + 656);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = v25;
  ++*(a2 + 648);
  ++*(a1 + 648);
  *(a1 + 696) = 0;
  *(a1 + 664) = 0;
  *(a1 + 680) = 0;
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 664) = *(a2 + 664);
  *(a2 + 664) = 0;
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  v26 = *(a1 + 680);
  *(a1 + 680) = *(a2 + 680);
  *(a2 + 680) = v26;
  v27 = *(a1 + 696);
  *(a1 + 696) = *(a2 + 696);
  *(a2 + 696) = v27;
  ++*(a2 + 688);
  ++*(a1 + 688);
  *(a1 + 736) = 0;
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a1 + 712) = *(a2 + 712);
  *(a2 + 712) = 0;
  v28 = *(a1 + 720);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = v28;
  v29 = *(a1 + 736);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 736) = v29;
  ++*(a2 + 728);
  ++*(a1 + 728);
  *(a1 + 776) = 0;
  *(a1 + 744) = 0;
  *(a1 + 760) = 0;
  *(a1 + 752) = 0;
  *(a1 + 768) = 0;
  *(a1 + 744) = *(a2 + 744);
  *(a2 + 744) = 0;
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  v30 = *(a1 + 760);
  *(a1 + 760) = *(a2 + 760);
  *(a2 + 760) = v30;
  v31 = *(a1 + 776);
  *(a1 + 776) = *(a2 + 776);
  *(a2 + 776) = v31;
  ++*(a2 + 768);
  ++*(a1 + 768);
  *(a1 + 816) = 0;
  *(a1 + 784) = 0;
  *(a1 + 800) = 0;
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 784) = 0;
  *(a1 + 792) = *(a2 + 792);
  *(a2 + 792) = 0;
  v32 = *(a1 + 800);
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 800) = v32;
  v33 = *(a1 + 816);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = v33;
  ++*(a2 + 808);
  ++*(a1 + 808);
  *(a1 + 856) = 0;
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  *(a1 + 848) = 0;
  *(a1 + 824) = *(a2 + 824);
  *(a2 + 824) = 0;
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  v34 = *(a1 + 840);
  *(a1 + 840) = *(a2 + 840);
  *(a2 + 840) = v34;
  v35 = *(a1 + 856);
  *(a1 + 856) = *(a2 + 856);
  *(a2 + 856) = v35;
  ++*(a2 + 848);
  ++*(a1 + 848);
  *(a1 + 896) = 0;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 864) = 0;
  *(a1 + 872) = *(a2 + 872);
  *(a2 + 872) = 0;
  v36 = *(a1 + 880);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = v36;
  v37 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 896) = v37;
  ++*(a2 + 888);
  ++*(a1 + 888);
  *(a1 + 936) = 0;
  *(a1 + 904) = 0;
  *(a1 + 920) = 0;
  *(a1 + 912) = 0;
  *(a1 + 928) = 0;
  *(a1 + 904) = *(a2 + 904);
  *(a2 + 904) = 0;
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 912) = 0;
  v38 = *(a1 + 920);
  *(a1 + 920) = *(a2 + 920);
  *(a2 + 920) = v38;
  v39 = *(a1 + 936);
  *(a1 + 936) = *(a2 + 936);
  *(a2 + 936) = v39;
  ++*(a2 + 928);
  ++*(a1 + 928);
  *(a1 + 976) = 0;
  *(a1 + 944) = 0;
  *(a1 + 960) = 0;
  *(a1 + 952) = 0;
  *(a1 + 968) = 0;
  *(a1 + 944) = *(a2 + 944);
  *(a2 + 944) = 0;
  *(a1 + 952) = *(a2 + 952);
  *(a2 + 952) = 0;
  v40 = *(a1 + 960);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = v40;
  v41 = *(a1 + 976);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 976) = v41;
  ++*(a2 + 968);
  ++*(a1 + 968);
  *(a1 + 1016) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 984) = *(a2 + 984);
  *(a2 + 984) = 0;
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  v42 = *(a1 + 1000);
  *(a1 + 1000) = *(a2 + 1000);
  *(a2 + 1000) = v42;
  v43 = *(a1 + 1016);
  *(a1 + 1016) = *(a2 + 1016);
  *(a2 + 1016) = v43;
  ++*(a2 + 1008);
  ++*(a1 + 1008);
  *(a1 + 1056) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1024) = 0;
  *(a1 + 1032) = *(a2 + 1032);
  *(a2 + 1032) = 0;
  v44 = *(a1 + 1040);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = v44;
  v45 = *(a1 + 1056);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = v45;
  ++*(a2 + 1048);
  ++*(a1 + 1048);
  *(a1 + 1096) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1064) = *(a2 + 1064);
  *(a2 + 1064) = 0;
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  v46 = *(a1 + 1080);
  *(a1 + 1080) = *(a2 + 1080);
  *(a2 + 1080) = v46;
  v47 = *(a1 + 1096);
  *(a1 + 1096) = *(a2 + 1096);
  *(a2 + 1096) = v47;
  ++*(a2 + 1088);
  ++*(a1 + 1088);
  *(a1 + 1136) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1104) = *(a2 + 1104);
  *(a2 + 1104) = 0;
  *(a1 + 1112) = *(a2 + 1112);
  *(a2 + 1112) = 0;
  v48 = *(a1 + 1120);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = v48;
  v49 = *(a1 + 1136);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = v49;
  ++*(a2 + 1128);
  ++*(a1 + 1128);
  return a1;
}

uint64_t re::DynamicRegisterTable::DynamicRegisterTable(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  ++*(a2 + 24);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v5 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v6 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  ++*(a2 + 64);
  ++*(result + 64);
  *(result + 112) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(result + 112);
  *(result + 112) = *(a2 + 112);
  *(a2 + 112) = v10;
  ++*(a2 + 104);
  ++*(result + 104);
  *(result + 152) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 0;
  v11 = *(a2 + 128);
  *(result + 120) = *(a2 + 120);
  *(result + 128) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v12 = *(result + 136);
  *(result + 136) = *(a2 + 136);
  *(a2 + 136) = v12;
  v13 = *(result + 152);
  *(result + 152) = *(a2 + 152);
  *(a2 + 152) = v13;
  ++*(a2 + 144);
  ++*(result + 144);
  *(result + 192) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 184) = 0;
  v14 = *(a2 + 168);
  *(result + 160) = *(a2 + 160);
  *(result + 168) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v15 = *(result + 176);
  *(result + 176) = *(a2 + 176);
  *(a2 + 176) = v15;
  v16 = *(result + 192);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = v16;
  ++*(a2 + 184);
  ++*(result + 184);
  *(result + 232) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 200) = 0;
  *(result + 224) = 0;
  v17 = *(a2 + 208);
  *(result + 200) = *(a2 + 200);
  *(result + 208) = v17;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(result + 216);
  *(result + 216) = *(a2 + 216);
  *(a2 + 216) = v18;
  v19 = *(result + 232);
  *(result + 232) = *(a2 + 232);
  *(a2 + 232) = v19;
  ++*(a2 + 224);
  ++*(result + 224);
  *(result + 272) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  v20 = *(a2 + 248);
  *(result + 240) = *(a2 + 240);
  *(result + 248) = v20;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v21 = *(result + 256);
  *(result + 256) = *(a2 + 256);
  *(a2 + 256) = v21;
  v22 = *(result + 272);
  *(result + 272) = *(a2 + 272);
  *(a2 + 272) = v22;
  ++*(a2 + 264);
  ++*(result + 264);
  *(result + 312) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = 0;
  *(result + 304) = 0;
  v23 = *(a2 + 288);
  *(result + 280) = *(a2 + 280);
  *(result + 288) = v23;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v24 = *(result + 296);
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = v24;
  v25 = *(result + 312);
  *(result + 312) = *(a2 + 312);
  *(a2 + 312) = v25;
  ++*(a2 + 304);
  ++*(result + 304);
  return result;
}

void *re::IntrospectionDynamicArray<re::RigDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigDefinition>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  bzero(v10, 0x478uLL);
  re::DynamicArray<re::RigDefinition>::add(a4, v10);
  re::RigDefinition::~RigDefinition(v10);
  v8 = (*(a4 + 32) + 1144 * *(a4 + 16) - 1144);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::RigDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 1144 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 1144 * a3;
}

void re::DynamicArray<re::RigDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 1144 * a2;
    v9 = a2;
    do
    {
      re::RigDefinition::~RigDefinition((*(a1 + 32) + v8));
      ++v9;
      v8 += 1144;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 1144 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 1136) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0uLL;
        *(v7 + 168) = 0uLL;
        *(v7 + 184) = 0;
        *(v7 + 192) = 0uLL;
        *(v7 + 208) = 0uLL;
        *(v7 + 224) = 0;
        *(v7 + 264) = 0;
        *(v7 + 248) = 0uLL;
        *(v7 + 232) = 0uLL;
        *(v7 + 304) = 0;
        *(v7 + 272) = 0uLL;
        *(v7 + 288) = 0uLL;
        *(v7 + 344) = 0;
        *(v7 + 312) = 0uLL;
        *(v7 + 328) = 0uLL;
        *(v7 + 384) = 0;
        *(v7 + 352) = 0uLL;
        *(v7 + 368) = 0uLL;
        *(v7 + 424) = 0;
        *(v7 + 392) = 0uLL;
        *(v7 + 408) = 0uLL;
        *(v7 + 432) = 0uLL;
        *(v7 + 448) = 0uLL;
        *(v7 + 464) = 0;
        *(v7 + 504) = 0;
        *(v7 + 472) = 0uLL;
        *(v7 + 488) = 0uLL;
        *(v7 + 544) = 0;
        *(v7 + 512) = 0uLL;
        *(v7 + 528) = 0uLL;
        *(v7 + 648) = 0;
        *(v7 + 616) = 0uLL;
        *(v7 + 632) = 0uLL;
        *(v7 + 584) = 0uLL;
        *(v7 + 600) = 0uLL;
        *(v7 + 552) = 0uLL;
        *(v7 + 568) = 0uLL;
        *(v7 + 688) = 0;
        *(v7 + 656) = 0uLL;
        *(v7 + 672) = 0uLL;
        *(v7 + 728) = 0;
        *(v7 + 696) = 0uLL;
        *(v7 + 712) = 0uLL;
        *(v7 + 768) = 0;
        *(v7 + 736) = 0uLL;
        *(v7 + 752) = 0uLL;
        *(v7 + 808) = 0;
        *(v7 + 776) = 0uLL;
        *(v7 + 792) = 0uLL;
        *(v7 + 848) = 0;
        *(v7 + 816) = 0uLL;
        *(v7 + 832) = 0uLL;
        *(v7 + 888) = 0;
        *(v7 + 856) = 0uLL;
        *(v7 + 872) = 0uLL;
        *(v7 + 928) = 0;
        *(v7 + 896) = 0uLL;
        *(v7 + 912) = 0uLL;
        *(v7 + 968) = 0;
        *(v7 + 936) = 0uLL;
        *(v7 + 952) = 0uLL;
        *(v7 + 1008) = 0;
        *(v7 + 976) = 0uLL;
        *(v7 + 992) = 0uLL;
        *(v7 + 1048) = 0;
        *(v7 + 1016) = 0uLL;
        *(v7 + 1032) = 0uLL;
        *(v7 + 1088) = 0;
        *(v7 + 1072) = 0uLL;
        *(v7 + 1056) = 0uLL;
        *(v7 + 1128) = 0;
        v6 += 1144;
        *(v7 + 1096) = 0uLL;
        *(v7 + 1112) = 0uLL;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 1144 * v8;
      do
      {
        re::RigDefinition::~RigDefinition(v9);
        v9 = (v11 + 1144);
        v10 -= 1144;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigDefinition>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 1144 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 1144;
        v15 -= 1144;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 1144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 1144 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshRigIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshRigIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshRigIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshRigIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshRigIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshRigGraphIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshRigIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v15 = 0;
  v17 = 0;
  v11 = 0u;
  v13 = 0;
  v12 = &str_67;
  v14 = &str_67;
  v16 = &str_67;
  v8 = re::DynamicArray<re::MeshRigGraphIndex>::add(a4, &v11);
  if (v15)
  {
  }

  if (v13)
  {
  }

  if (BYTE8(v11))
  {
  }

  v9 = (*(a4 + 4) + (*(a4 + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::MeshRigIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a1 + 32) + 40);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        re::StringID::destroyString((v10 - 32));
        v10 = (v10 + 64);
        v9 -= 64;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshRigGraphIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 6;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 64;
        v14 -= 64;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType(void)::type = "BlendTreeDefinition";
    qword_1EE187810 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetType(void)::type;
}

uint64_t *re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType(void)::type = "BlendShapeGroupDefinition";
    qword_1EE1877E0 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetType(void)::type;
}

void *re::allocInfo_BlendTreeDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_110))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C488, "BlendTreeDefinitionAsset");
    __cxa_guard_release(&_MergedGlobals_110);
  }

  return &unk_1EE19C488;
}

void re::initInfo_BlendTreeDefinitionAsset(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x18BAB4A9C8CC2BDCLL;
  v10[1] = "BlendTreeDefinitionAsset";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19C468, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C468);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_BlendTreeDefinition(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "data";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19C460 = v8;
      __cxa_guard_release(&qword_1EE19C468);
    }
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19C460;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 320) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 180) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 272) = 0;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 312) = 0;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return result;
}

void *re::allocInfo_BlendShapeGroupDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C470))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C518, "BlendShapeGroupDefinitionAsset");
    __cxa_guard_release(&qword_1EE19C470);
  }

  return &unk_1EE19C518;
}

void re::initInfo_BlendShapeGroupDefinitionAsset(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE28673731F806DDCLL;
  v10[1] = "BlendShapeGroupDefinitionAsset";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19C480, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C480);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_BlendShapeGroupDefinition(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "data";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE19C478 = v8;
      __cxa_guard_release(&qword_1EE19C480);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19C478;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 44) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 44) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>(re::StringID *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_DRContextService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_111, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_111))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C5B8, "DRContextService");
    __cxa_guard_release(&_MergedGlobals_111);
  }

  return &unk_1EE19C5B8;
}

void re::initInfo_DRContextService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2476733B9AD5F468;
  v6[1] = "DRContextService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x100000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_DRContextService(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::DRContextService>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DRContextService>;
  *(this + 13) = re::internal::defaultConstructV2<re::DRContextService>;
  *(this + 14) = re::internal::defaultDestructV2<re::DRContextService>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_DirectResourceAssetTracker(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C5B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C648, "DirectResourceAssetTracker");
    __cxa_guard_release(&qword_1EE19C5B0);
  }

  return &unk_1EE19C648;
}

void re::initInfo_DirectResourceAssetTracker(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB00CC27AC4BE4DFELL;
  v6[1] = "DirectResourceAssetTracker";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xC000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_DirectResourceAssetTracker(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::DirectResourceAssetTracker>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DirectResourceAssetTracker>;
  *(this + 13) = re::internal::defaultConstructV2<re::DirectResourceAssetTracker>;
  *(this + 14) = re::internal::defaultDestructV2<re::DirectResourceAssetTracker>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::DirectResourceAssetTracker>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 84) = 0x7FFFFFFFLL;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 132) = 0x7FFFFFFFLL;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 180) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::DirectResourceAssetTracker>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::DirectResourceAssetTracker::DirectResourceAssetTracker(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = *a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0x7FFFFFFFLL;
  if (a2)
  {
    DRContextSetChangeObserver();
  }

  return a1;
}

void ___ZN2re26DirectResourceAssetTrackerC2EP11DRContext_sRKNS_3mtl6DeviceEPNS_8EventBusEPNS_11MeshManagerEPNS_12AssetServiceEPNS_14TextureManagerE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  *src = 0;
  v29 = 0;
  DRResourceGetIdentifier();
  ClientIdentifier = DRResourceGetClientIdentifier();
  uuid_copy(&v33, src);
  v7 = *(v6 + 8);
  uuid_copy(src, &v33);
  v30 = a3;
  v31 = a4;
  updated = re::EventBus::getTypeId<re::DirectResourceDidUpdateEvent>();
  re::EventBus::publish(v7, v6, updated, src, 0x20uLL, 0);
  *v26 = 0;
  v27 = 0;
  if (a3 == 2)
  {
    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (ClientIdentifier ^ (ClientIdentifier >> 30))) ^ ((0xBF58476D1CE4E5B9 * (ClientIdentifier ^ (ClientIdentifier >> 30))) >> 27));
    re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(v6 + 96, &ClientIdentifier, (((v34 + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9) ^ v33) + ((v15 ^ (v15 >> 31)) << 6) + ((v15 ^ (v15 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v15 ^ (v15 >> 31), src);
    v16 = HIDWORD(v29);
    if (HIDWORD(v29) != 0x7FFFFFFF)
    {
      v17 = *(v6 + 112);
      v18 = *(v17 + 48 * HIDWORD(v29)) & 0x7FFFFFFF;
      if (v30 == 0x7FFFFFFF)
      {
        *(*(v6 + 104) + 4 * v29) = v18;
        v16 = HIDWORD(v29);
      }

      else
      {
        *(v17 + 48 * v30) = *(v17 + 48 * v30) & 0x80000000 | v18;
      }

      *(v17 + 48 * v16) = *(v6 + 132);
      --*(v6 + 124);
      v19 = *(v6 + 136) + 1;
      *(v6 + 132) = v16;
      *(v6 + 136) = v19;
    }

    DRResourceGetIdentifier();
    uuid_copy(&v24, v26);
    re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::findEntry<re::DirectResourceId>(v6 + 48, &v24, (v25 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24, src);
    v20 = HIDWORD(v29);
    if (HIDWORD(v29) != 0x7FFFFFFF)
    {
      v21 = *(v6 + 64);
      v22 = *(v21 + 40 * HIDWORD(v29)) & 0x7FFFFFFF;
      if (v30 == 0x7FFFFFFF)
      {
        *(*(v6 + 56) + 4 * v29) = v22;
        v20 = HIDWORD(v29);
      }

      else
      {
        *(v21 + 40 * v30) = *(v21 + 40 * v30) & 0x80000000 | v22;
      }

      *(v21 + 40 * v20) = *(v6 + 84);
      --*(v6 + 76);
      v23 = *(v6 + 88) + 1;
      *(v6 + 84) = v20;
      *(v6 + 88) = v23;
    }

    *src = ClientIdentifier;
    uuid_copy(&v29, &v33);
    v12 = v6;
    v13 = 0;
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    *src = 0;
    v29 = 0;
    v30 = 0;
    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (ClientIdentifier ^ (ClientIdentifier >> 30))) ^ ((0xBF58476D1CE4E5B9 * (ClientIdentifier ^ (ClientIdentifier >> 30))) >> 27));
    re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(v6 + 96, &ClientIdentifier, (((v34 + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583E9) ^ v33) + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v9 ^ (v9 >> 31), src);
    if (HIDWORD(v29) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(v6 + 96, v29, *src);
      *(v10 + 8) = ClientIdentifier;
      uuid_copy((v10 + 16), &v33);
      *(v10 + 32) = a4;
      ++*(v6 + 136);
    }

    DRResourceGetIdentifier();
    uuid_copy(&v24, v26);
    *src = 0;
    v29 = 0;
    v30 = 0;
    re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::findEntry<re::DirectResourceId>(v6 + 48, &v24, (v25 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24, src);
    if (HIDWORD(v29) == 0x7FFFFFFF)
    {
      v11 = re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::allocEntry(v6 + 48, v29, *src);
      uuid_copy((v11 + 4), &v24);
      *(v11 + 24) = a4;
      ++*(v6 + 88);
    }

    *src = ClientIdentifier;
    uuid_copy(&v29, &v33);
    v12 = v6;
    v13 = a4;
    goto LABEL_21;
  }

  *src = ClientIdentifier;
  uuid_copy(&v29, &v33);
  v12 = v6;
  v13 = a4;
  v14 = 1;
LABEL_22:
  re::DirectResourceAssetTracker::setResourceAndUpdate(v12, src, v13, v14);
}

void re::DirectResourceAssetTracker::~DirectResourceAssetTracker(re::DirectResourceAssetTracker *this)
{
  DRContextSetChangeObserver();
  re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::deinit(this + 18);
  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(this + 12);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 6);
}

void re::DirectResourceAssetTracker::setResourceAndUpdate(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, char a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v38 = *a2;
  uuid_copy(v39, a2 + 8);
  v6 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::tryGet(a1 + 144, &v38);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v6 + 32);
      for (i = 8 * v7; i; i -= 8)
      {
        v10 = (*(**(a1 + 24) + 120))(&v33);
        if (v33 == 1)
        {
          if (v35)
          {
            v11 = *(v35 + 35);
            v12 = re::MeshAsset::assetType(v10);
            if (v11 == v12)
            {
              v13 = DRResourceAsMesh();
              v14 = v35;
              if (!v35)
              {
                goto LABEL_30;
              }

              v15 = v13;
              v16 = *(v35 + 3);
              if (v16)
              {
                re::AssetManager::convertToMutable(v16, &v34);
                v14 = v35;
                if (!v35)
                {
                  goto LABEL_30;
                }
              }

              v17 = atomic_load(v14 + 224);
              if (v17 != 2)
              {
                goto LABEL_30;
              }

              re::AssetHandle::mutateAssetCommon(&v34);
              ++*(v35 + 69);
              v18 = re::AssetHandle::loadedAsset<re::MeshAsset>(&v34);
              if (!v18)
              {
                goto LABEL_30;
              }

              v19 = v18;
              re::DirectMeshPayload::dynamicCast((v18 + 344), v36);
              if (v36[0])
              {
                if ((a4 & 1) == 0)
                {
                  [v36[0] setDirectMesh:v15];
                }

                re::MeshAsset::replaceContentsWithPayload(v19, v36, a1, *(a1 + 16));
                re::MeshAsset::registerRuntimeData(v19, *(a1 + 16));
                v20 = v36[0];
              }

              else
              {
                v20 = 0;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v12 = re::MeshAsset::assetType(v10);
          }

          if (v35)
          {
            v21 = *(v35 + 35);
            if (v21 != re::TextureAsset::assetType(v12))
            {
              goto LABEL_30;
            }

            v22 = DRResourceAsTexture();
            v23 = v35;
            if (!v35)
            {
              goto LABEL_30;
            }

            v24 = v22;
            v25 = *(v35 + 3);
            if (v25)
            {
              re::AssetManager::convertToMutable(v25, &v34);
              v23 = v35;
              if (!v35)
              {
                goto LABEL_30;
              }
            }

            v26 = atomic_load(v23 + 224);
            if (v26 != 2)
            {
              goto LABEL_30;
            }

            re::AssetHandle::mutateAssetCommon(&v34);
            ++*(v35 + 69);
            v27 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v34);
            if (!v27)
            {
              goto LABEL_30;
            }

            v28 = v27;
            v29 = *(v27 + 72);
            if (v29)
            {
              if ((a4 & 1) == 0)
              {
                [v29 setDirectTexture:v24];
              }

              if (v24)
              {
                v30 = DRTextureReadTexture();
              }

              else
              {
                v30 = 0;
              }

              v37 = v30;
              if (v28[2] && v28[1])
              {
                re::TextureHandle::setMetalTexture((v28 + 1), &v37);
              }

              else
              {
                v31 = *(a1 + 32);
                if (v31)
                {
                  re::TextureManager::registerTexture(v31, &v37, v36);
                  re::TextureHandle::operator=((v28 + 1), v36);
                  re::TextureHandle::invalidate(v36);
                }
              }

              re::TextureHandle::setMetalTexture((v28 + 12), &v37);
              if (v37)
              {
              }
            }

LABEL_44:
            v32 = v35;
            *(v35 + 256) = 1;
            re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v32);
            re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v35);
            goto LABEL_30;
          }

          re::TextureAsset::assetType(v12);
        }

LABEL_30:
        if (v33 == 1)
        {
          re::AssetHandle::~AssetHandle(&v34);
        }

        v8 += 8;
      }
    }
  }
}

void *re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a3;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v3 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::add(a1 + 144, a2, v5);
  if (v5[0] && v7)
  {
    (*(*v5[0] + 40))();
  }

  return re::DynamicArray<re::TransitionCondition *>::add(v3, &v8);
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>::operator()(&v11, a2);
  re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::addInternal<re::Pair<unsigned long long,re::DirectResourceId,true> const&,re::DynamicArray<unsigned long long>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 32;
  }
}

uint64_t re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a3;
  result = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::tryGet(a1 + 144, a2);
  if (result)
  {
    v6 = result;
    result = re::DynamicArray<unsigned long long>::remove(result, &v7);
    if (!*(v6 + 16))
    {
      return re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::remove(a1 + 144, a2);
    }
  }

  return result;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>::operator()(v6, a2);
  re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v7 + 32;
  }
}

uint64_t re::DynamicArray<unsigned long long>::remove(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(a1 + 32); *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 32);
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(a1, (i - v2) >> 3);
  return 1;
}

BOOL re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>::operator()(v6, a2);
  re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(a1, a2, v4, v6);
  return re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::removeInternal(a1, v6);
}

uint64_t re::DirectResourceAssetTracker::findResource(uint64_t a1, uint64_t a2, unsigned __int8 *src)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a2;
  uuid_copy(v6, src);
  result = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::tryGet(a1 + 96, &v5);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>::operator()(v6, a2);
  re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v7 + 32;
  }
}

uint64_t re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::findEntry<re::DirectResourceId>(a1, a2, (*(a2 + 8) + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v5 + 24;
  }
}

double re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 32);
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

uint64_t re::EventBus::getTypeId<re::DirectResourceDidUpdateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<re::DirectResourceDidUpdateEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re28DirectResourceDidUpdateEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[6];
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (*result)
  {
    v7 = result;
    v8 = a3 % *(result + 24);
    v9 = *(*(result + 8) + 4 * v8);
    if (v9 != 0x7FFFFFFF)
    {
      v11 = *(result + 16);
      v6 = 0x7FFFFFFF;
      v12 = 0x7FFFFFFF;
      while (1)
      {
        v13 = v9;
        v14 = v11 + 48 * v9;
        v16 = *(v14 + 8);
        v15 = v14 + 8;
        if (v16 == *a2)
        {
          result = uuid_compare((v15 + 8), (a2 + 8));
          if (!result)
          {
            v6 = v13;
            goto LABEL_11;
          }

          v11 = *(v7 + 16);
        }

        v9 = *(v11 + 48 * v13) & 0x7FFFFFFF;
        v12 = v13;
        if (v9 == 0x7FFFFFFF)
        {
          v12 = v13;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v12 = 0x7FFFFFFF;
LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v12;
  return result;
}

uint64_t re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  return (((a2[2] + (a2[1] << 6) + (a2[1] >> 2) - 0x61C8864680B583E9) ^ a2[1]) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,DRResource_s *,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(a1, *(v18 + 1) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 3);
                uuid_copy((v19 + 16), v18 - 16);
                *(v19 + 32) = *v18;
              }

              ++v17;
              v18 += 48;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 48 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 40) = a3;
  ++*(a1 + 28);
  return v20 + 48 * v5;
}

uint64_t re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::findEntry<re::DirectResourceId>@<X0>(uint64_t result@<X0>, const unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_11;
  }

  v7 = result;
  v8 = a3 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_11:
    v9 = 0x7FFFFFFF;
    goto LABEL_12;
  }

  result = uuid_compare((*(result + 16) + 40 * v9 + 4), a2);
  if (!result)
  {
    v6 = v9;
    goto LABEL_11;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 40 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = uuid_compare((v11 + 40 * v12 + 4), a2);
      if (!result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 40 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_12;
      }
    }

    v6 = v13;
  }

LABEL_12:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v9;
  return result;
}

uint64_t re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::allocEntry(a1, *v18 % *(a1 + 24));
                uuid_copy((v19 + 4), v18 - 28);
                *(v19 + 24) = *(v18 - 1);
              }

              ++v17;
              v18 += 40;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::addInternal<re::Pair<unsigned long long,re::DirectResourceId,true> const&,re::DynamicArray<unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  uuid_copy((v7 + 16), (a3 + 8));
  *(v7 + 32) = 0;
  v7 += 32;
  *(v7 + 32) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = *(a4 + 8);
  *v7 = *a4;
  *(v7 + 8) = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  v9 = *(v7 + 16);
  *(v7 + 16) = *(a4 + 16);
  *(a4 + 16) = v9;
  v10 = *(v7 + 32);
  *(v7 + 32) = *(a4 + 32);
  *(a4 + 32) = v10;
  ++*(a4 + 24);
  ++*(v7 + 24);
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::findEntry<re::Pair<unsigned long long,re::DirectResourceId,true>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (*result)
  {
    v7 = result;
    v8 = a3 % *(result + 24);
    v9 = *(*(result + 8) + 4 * v8);
    if (v9 != 0x7FFFFFFF)
    {
      v11 = *(result + 16);
      v6 = 0x7FFFFFFF;
      v12 = 0x7FFFFFFF;
      while (1)
      {
        v13 = v9;
        v14 = v11 + 80 * v9;
        v16 = *(v14 + 8);
        v15 = v14 + 8;
        if (v16 == *a2)
        {
          result = uuid_compare((v15 + 8), (a2 + 8));
          if (!result)
          {
            v6 = v13;
            goto LABEL_11;
          }

          v11 = *(v7 + 16);
        }

        v9 = *(v11 + 80 * v13) & 0x7FFFFFFF;
        v12 = v13;
        if (v9 == 0x7FFFFFFF)
        {
          v12 = v13;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v12 = 0x7FFFFFFF;
LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v12;
  return result;
}

uint64_t re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 40);
            do
            {
              if ((*(v18 - 10) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::allocEntry(a1, *(v18 + 4) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 4);
                uuid_copy((v19 + 16), v18 - 24);
                *(v19 + 64) = 0;
                *(v19 + 56) = 0;
                *(v19 + 40) = 0;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0;
                v20 = *v18;
                *(v19 + 32) = *(v18 - 1);
                *(v19 + 40) = v20;
                *(v18 - 1) = 0;
                *v18 = 0;
                v21 = *(v19 + 48);
                *(v19 + 48) = *(v18 + 1);
                *(v18 + 1) = v21;
                v22 = *(v19 + 64);
                *(v19 + 64) = *(v18 + 3);
                *(v18 + 3) = v22;
                ++*(v18 + 4);
                ++*(v19 + 56);
              }

              v18 += 80;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 80 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 80 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 72) = a3;
  ++*(a1 + 28);
  return v23 + 80 * v5;
}

BOOL re::HashTable<re::Pair<unsigned long long,re::DirectResourceId,true>,re::DynamicArray<unsigned long long>,re::Hash<re::Pair<unsigned long long,re::DirectResourceId,true>>,re::EqualTo<re::Pair<unsigned long long,re::DirectResourceId,true>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 80 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v10 + 8));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 80 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 80 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::AudioEngineRunnableManager::addReason(re *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E871B438[a2]);
    v5 = v13 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE] [Sleep/Wake] Added reason %s to REAudioEngineRunnableManager reasons.", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 1);
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a2;
    if (v6 <= a2)
    {
      v8 = a2 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & a2;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a2)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  if (*(v10 + 4) != a2)
  {
    goto LABEL_23;
  }
}

void re::AudioEngineRunnableManager::removeReason(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<REAudioEngineRunnableReason,std::hash<REAudioEngineRunnableReason>,std::equal_to<REAudioEngineRunnableReason>,std::allocator<REAudioEngineRunnableReason>>::find<REAudioEngineRunnableReason>(a1, a2);
  if (!v4)
  {
    return;
  }

  v5 = a1[1];
  v6 = *v4;
  v7 = v4[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = *(*a1 + 8 * v7);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 != v4);
  if (v10 == a1 + 2)
  {
    goto LABEL_19;
  }

  v11 = v10[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }
  }

  else
  {
    v11 &= *&v5 - 1;
  }

  if (v11 != v7)
  {
LABEL_19:
    if (v6)
    {
      v12 = *(v6 + 8);
      if (v8.u32[0] > 1uLL)
      {
        v13 = *(v6 + 8);
        if (v12 >= *&v5)
        {
          v13 = v12 % *&v5;
        }
      }

      else
      {
        v13 = v12 & (*&v5 - 1);
      }

      if (v13 == v7)
      {
        goto LABEL_23;
      }
    }

    *(*a1 + 8 * v7) = 0;
    v6 = *v4;
  }

  if (v6)
  {
    v12 = *(v6 + 8);
LABEL_23:
    if (v8.u32[0] > 1uLL)
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

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v4;
    }
  }

  *v10 = v6;
  *v4 = 0;
  --a1[3];
  operator delete(v4);
  v15 = *re::audioLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E871B438[a2]);
    if (v18 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    v20 = v16;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "[RE] [Sleep/Wake] Removed reason %s from REAudioEngineRunnableManager reasons.", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::__hash_table<REAudioEngineRunnableReason,std::hash<REAudioEngineRunnableReason>,std::equal_to<REAudioEngineRunnableReason>,std::allocator<REAudioEngineRunnableReason>>::find<REAudioEngineRunnableReason>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t re::audio::getMediaserverdPID(re::audio *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v4, 2555, 0);
  v1 = [MEMORY[0x1E698D710] auxiliarySession];
  v2 = [v1 opaqueSessionID] >> 12;

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v4);
  return v2;
}

void sub_1E210D2F8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::~__hash_table(v4 - 128);

  _Unwind_Resume(a1);
}

void sub_1E210D6CC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 6);

  _Unwind_Resume(a1);
}

void sub_1E210D954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a9);
  os_unfair_lock_unlock(v9 + 66);
  _Unwind_Resume(a1);
}

void sub_1E210DEC4(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,void *>>>::operator()[abi:ne200100](1, v6);

  os_unfair_lock_unlock(v1 + 18);
  _Unwind_Resume(a1);
}

void sub_1E210E4B0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::~__hash_table(v2);
  os_unfair_lock_unlock(v1 + 18);
  _Unwind_Resume(a1);
}

void sub_1E210E7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E210EB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1E210F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(va);

  _Unwind_Resume(a1);
}

uint64_t re::audio::meshID<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F5CCAA60[v1])(&v4, a1);
}

uint64_t re::audio::meshType<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>(uint64_t a1)
{
  v3 = -1;
  v4[0] = &v3;
  v4[1] = &v3;
  v4[2] = &v3;
  v4[3] = &v3;
  v1 = *(a1 + 152);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = v4;
  (off_1F5CCAB10[v1])(&v5, a1);
  return v3;
}

void sub_1E210FAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E2110430(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,void *>>>::operator()[abi:ne200100](1, v3);
  v5 = *(v2 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  os_unfair_lock_unlock(v1 + 6);
  _Unwind_Resume(a1);
}

void sub_1E21109C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  if (v17[56] == 1)
  {
    re::DynamicString::deinit((v17 + 64));
  }

  operator delete(v17);
  if (a13 == 1 && a14 && (a15 & 1) != 0)
  {
    (*(*a14 + 40))();
  }

  os_unfair_lock_unlock(v16 + 64);
  _Unwind_Resume(a1);
}

void sub_1E21118D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

void sub_1E2111AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1E2111F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v23 + 64);

  _Unwind_Resume(a1);
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

void sub_1E2112E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a50);
  }

  a49 = &a51;
  std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a49);

  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a55);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(&a61);
  objc_destroyWeak(&a60);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E2113B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a31);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a41);
  }

  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v46 - 184));

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void sub_1E2114648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41)
{
  if (a39 == 1 && a40 && (a41 & 1) != 0)
  {
    (*(*a40 + 40))();
  }

  _Unwind_Resume(a1);
}

void sub_1E211588C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24)
{
  if (*(v27 - 105) < 0)
  {
    operator delete(*(v27 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void sub_1E211669C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void sub_1E2116838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  os_unfair_lock_unlock(v11);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v10);
  _Unwind_Resume(a1);
}

void sub_1E2116BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

void sub_1E2117094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  os_unfair_lock_unlock(v3 + 40);
  os_unfair_lock_unlock(v3 + 52);

  _Unwind_Resume(a1);
}

void sub_1E21174E4(_Unwind_Exception *a1)
{
  operator delete(v2);
  os_unfair_lock_unlock(v1 + 52);
  _Unwind_Resume(a1);
}

void sub_1E2117744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E21179E0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  os_unfair_lock_unlock(v1 + 6);
  _Unwind_Resume(a1);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<-[REPHASEContext createPHASEShape:]::$_3,-[REPHASEContext createPHASEShape:]::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,std::__variant_detail::_Trait::AcousticARKitMeshData> const&>(void ****a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = ***a1;
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v11, a2 + 4);
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v10, a2 + 9);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v9, a2 + 14);
  v5 = [v4 createAcousticMaterialsArrayWithAbsorption:v11 scattering:v10 soundReduction:v9];
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(v9);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(v10);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v11);
  v6 = [**v3 createPhaseShapeWithMeshID:a2[2] materials:v5 mdlMesh:a2[3] arkitMesh:0 meshType:255];
  v7 = v3[1];
  v8 = *v7;
  *v7 = v6;
}

void sub_1E21187C8(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v2 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(va);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(va1);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v1 - 72);
  JUMPOUT(0x1E21187B4);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<-[REPHASEContext createPHASEShape:]::$_3,-[REPHASEContext createPHASEShape:]::$_4>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,std::__variant_detail::_Trait::AcousticARKitMeshData> const&>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **(*a1 + 24);
  v5 = *(a2 + 16);
  v10 = [v4 engine];
  v6 = re::REPHASEMaterialCache::getMaterials((v4 + 272), v10, *(a2 + 24));
  v7 = [v4 createPhaseShapeWithMeshID:v5 materials:v6 mdlMesh:*(a2 + 24) arkitMesh:1 meshType:*(a2 + 32)];
  v8 = *(v3 + 16);
  v9 = *v8;
  *v8 = v7;
}

uint64_t re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AcousticAbsorptionMaterial>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AcousticAbsorptionMaterial>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v14, *(a2 + 32), (*(a2 + 32) + 112 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 112 * v8;
      v12 = 112 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 32, (v9 + v11 + 32));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 72, (v9 + v11 + 72));
        v9 += 112;
        v12 -= 112;
        v10 += 112;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v13, *(a2 + 32), (*(a2 + 32) + 112 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 112 * v4);
      v7 = -112 * v4 + 112 * v5;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 72);
        re::DynamicArray<unsigned long>::deinit(v6 + 32);
        re::DynamicString::deinit(v6);
        v6 = (v6 + 112);
        v7 -= 112;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void *re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::AcousticAbsorptionMaterial>(v8, v11);
          v8 += 112;
          v11 += 112;
          v10 -= 112;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::ObjectHelper::move<re::AcousticAbsorptionMaterial>(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 24);
  v3 = *(a1 + 8);
  *a2 = *a1;
  *a1 = 0;
  v4 = *(a1 + 16);
  *(a1 + 24) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v7 = a1 + 32;
  v8 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a2 + 40) = v8;
  *(a1 + 40) = 0;
  v9 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v9;
  v10 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v10;
  ++*(a1 + 56);
  ++*(a2 + 56);
  *(a2 + 104) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v11 = a1 + 72;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *v11 = 0;
  *(v11 + 8) = 0;
  v14 = *(a2 + 88);
  *(a2 + 88) = *(v11 + 16);
  *(v11 + 16) = v14;
  v15 = *(a2 + 104);
  *(a2 + 104) = *(v11 + 32);
  *(v11 + 32) = v15;
  ++*(v11 + 24);
  ++*(a2 + 96);
  re::DynamicArray<unsigned long>::deinit(v11);
  re::DynamicArray<unsigned long>::deinit(v7);

  return re::DynamicString::deinit(a1);
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicArray<float>::operator=(this + 32, v5 + 4);
      re::DynamicArray<float>::operator=(this + 72, v5 + 9);
      v5 += 14;
      this = (this + 112);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AcousticScatteringMaterial>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AcousticScatteringMaterial>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v14, *(a2 + 32), (*(a2 + 32) + 112 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 112 * v8;
      v12 = 112 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 32, (v9 + v11 + 32));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 72, (v9 + v11 + 72));
        v9 += 112;
        v12 -= 112;
        v10 += 112;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v13, *(a2 + 32), (*(a2 + 32) + 112 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 112 * v4);
      v7 = -112 * v4 + 112 * v5;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 72);
        re::DynamicArray<unsigned long>::deinit(v6 + 32);
        re::DynamicString::deinit(v6);
        v6 = (v6 + 112);
        v7 -= 112;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void *re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::AcousticScatteringMaterial>(v8, v11);
          v8 += 112;
          v11 += 112;
          v10 -= 112;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::ObjectHelper::move<re::AcousticScatteringMaterial>(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 24);
  v3 = *(a1 + 8);
  *a2 = *a1;
  *a1 = 0;
  v4 = *(a1 + 16);
  *(a1 + 24) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v7 = a1 + 32;
  v8 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a2 + 40) = v8;
  *(a1 + 40) = 0;
  v9 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v9;
  v10 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v10;
  ++*(a1 + 56);
  ++*(a2 + 56);
  *(a2 + 104) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v11 = a1 + 72;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *v11 = 0;
  *(v11 + 8) = 0;
  v14 = *(a2 + 88);
  *(a2 + 88) = *(v11 + 16);
  *(v11 + 16) = v14;
  v15 = *(a2 + 104);
  *(a2 + 104) = *(v11 + 32);
  *(v11 + 32) = v15;
  ++*(v11 + 24);
  ++*(a2 + 96);
  re::DynamicArray<unsigned long>::deinit(v11);
  re::DynamicArray<unsigned long>::deinit(v7);

  return re::DynamicString::deinit(a1);
}

uint64_t re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::AcousticSoundReductionMaterial>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::AcousticSoundReductionMaterial>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v14, *(a2 + 32), (*(a2 + 32) + 112 * *(a1 + 16)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = *(a1 + 32);
      v11 = 112 * v8;
      v12 = 112 * v4;
      do
      {
        re::DynamicString::DynamicString((v10 + v11), (v9 + v11));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 32, (v9 + v11 + 32));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 72, (v9 + v11 + 72));
        v9 += 112;
        v12 -= 112;
        v10 += 112;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *,re::AcousticAbsorptionMaterial *>(&v13, *(a2 + 32), (*(a2 + 32) + 112 * v4), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = (*(a1 + 32) + 112 * v4);
      v7 = -112 * v4 + 112 * v5;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 72);
        re::DynamicArray<unsigned long>::deinit(v6 + 32);
        re::DynamicString::deinit(v6);
        v6 = (v6 + 112);
        v7 -= 112;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

void *re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::AcousticSoundReductionMaterial>(v8, v11);
          v8 += 112;
          v11 += 112;
          v10 -= 112;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::ObjectHelper::move<re::AcousticSoundReductionMaterial>(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 24);
  v3 = *(a1 + 8);
  *a2 = *a1;
  *a1 = 0;
  v4 = *(a1 + 16);
  *(a1 + 24) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v7 = a1 + 32;
  v8 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a2 + 40) = v8;
  *(a1 + 40) = 0;
  v9 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v9;
  v10 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v10;
  ++*(a1 + 56);
  ++*(a2 + 56);
  *(a2 + 104) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v11 = a1 + 72;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *v11 = 0;
  *(v11 + 8) = 0;
  v14 = *(a2 + 88);
  *(a2 + 88) = *(v11 + 16);
  *(v11 + 16) = v14;
  v15 = *(a2 + 104);
  *(a2 + 104) = *(v11 + 32);
  *(v11 + 32) = v15;
  ++*(v11 + 24);
  ++*(a2 + 96);
  re::DynamicArray<unsigned long>::deinit(v11);
  re::DynamicArray<unsigned long>::deinit(v7);

  return re::DynamicString::deinit(a1);
}

uint64_t re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<unsigned long>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 112);
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::AcousticScatteringMaterial>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<unsigned long>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 112);
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<unsigned long>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 112);
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS8_5audio19lastUpdateTimestampINS_7variantIJNSB_16AcousticMeshDataENSB_21AcousticARKitMeshDataEEEEEEDaRKT_EUlRKSE_E_ZNSC_ISG_EESH_SK_EUlRKSF_E_ZNSC_ISG_EESH_SK_EUlRKNSB_22AcousticMeshUpdateDataEE_ZNSC_ISG_EESH_SK_EUlRKNSB_27AcousticARKitMeshUpdateDataEE_EEEEEJRKNS0_6__baseILNS0_6_TraitE1EJSE_SF_EEEEEEDcSI_DpT0_(uint64_t **a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = **a1;
  *v3 = result;
  *(v3 + 8) = 1;
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IONS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS8_5audio19lastUpdateTimestampINS_7variantIJNSB_22AcousticMeshUpdateDataENSB_27AcousticARKitMeshUpdateDataEEEEEEDaRKT_EUlRKNSB_16AcousticMeshDataEE_ZNSC_ISG_EESH_SK_EUlRKNSB_21AcousticARKitMeshDataEE_ZNSC_ISG_EESH_SK_EUlRKSE_E_ZNSC_ISG_EESH_SK_EUlRKSF_E_EEEEEJRKNS0_6__baseILNS0_6_TraitE1EJSE_SF_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(*a1 + 8);
  *v3 = result;
  *(v3 + 8) = 1;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 152);
  if (v2 != -1)
  {
    result = (off_1F5CCAB00[v2])(&v3, result);
  }

  *(v1 + 152) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a2 + 112);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a2 + 72);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a2 + 32);
  v3 = *(a2 + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

id **std::unique_ptr<re::PHASERoomSensedReverbStabilizer>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::__rehash<true>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t re::DynamicArray<re::audio::PHASEOccluderData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        v6 = (v3 + 24);
        do
        {
          v7 = *v6;
          v6 += 6;

          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::audio::PHASEOccluderData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
          v12 = *v8;
          v11[2] = *(v8 + 2);
          *v11 = v12;
          v13 = *(v8 + 3);
          *(v8 + 3) = 0;
          v11[3] = v13;
          *(v11 + 2) = v8[2];

          v8 += 3;
          v11 += 6;
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

uint64_t re::DynamicArray<re::audio::PHASEOccluderUpdateData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 56 * v4;
        v6 = (v3 + 32);
        do
        {
          v7 = *v6;
          v6 += 7;

          v5 -= 56;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::audio::PHASEOccluderUpdateData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
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
        v10 = v8 + 56 * v9;
        v11 = v7;
        do
        {
          v12 = *(v8 + 16);
          *v11 = *v8;
          *(v11 + 1) = v12;
          v13 = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[4] = v13;
          *(v11 + 5) = *(v8 + 40);

          v8 += 56;
          v11 += 7;
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>>>::__deallocate_node(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,REPHASESoundAsset>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,REPHASESoundAsset>>>::__deallocate_node(char *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (v1[56] == 1)
      {
        re::DynamicString::deinit((v1 + 64));
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASEAudioScene>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<re::audio::REPHASESoundPrepareState>> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<re::audio::REPHASESoundPrepareState>> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8717990, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PHASESource * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<PHASESource * {__strong}>::__init_with_size[abi:ne200100]<PHASESource * {__strong}*,PHASESource * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PHASESource * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<PHASESource * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PHASESource * {__strong}>>(a1, a2);
  }

  std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

BOOL std::lock[abi:ne200100]<re::UnfairLock,re::UnfairLock>(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  for (result = os_unfair_lock_trylock(a2); !result; result = os_unfair_lock_trylock(a2))
  {
    os_unfair_lock_unlock(a1);
    sched_yield();
    os_unfair_lock_lock(a2);
    result = os_unfair_lock_trylock(a1);
    if (result)
    {
      break;
    }

    os_unfair_lock_unlock(a2);
    sched_yield();
    os_unfair_lock_lock(a1);
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,RESoundEventPreparingData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,RESoundEventPreparingData>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = *(v5 + 8);
      if (v7.u32[0] > 1uLL)
      {
        v12 = *(v5 + 8);
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = *(v5 + 8);
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1E211B6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,REPHASESoundEvent * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1E211BB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = REAudioStateHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E211C4D8(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<NSString * {__strong},REPHASESoundEventAssetRef * {__strong},NSStringHash,NSStringEqual,std::allocator<std::pair<NSString * const {__strong},REPHASESoundEventAssetRef * {__strong}>>>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t NSStringHash::operator()(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hash];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NSStringEqual::operator()(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  return v6;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<NSString * {__strong},REPHASESoundEventAssetRef * {__strong},NSStringHash,NSStringEqual,std::allocator<std::pair<NSString * const {__strong},REPHASESoundEventAssetRef * {__strong}>>>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringHash,NSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringEqual,NSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringHash,NSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringEqual,NSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringHash,NSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,NSStringEqual,NSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(void *a1, void **a2)
{
  v4 = NSStringHash::operator()(*a2);
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
    operator new();
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

  if ((NSStringEqual::operator()(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},REPHASESoundEventAssetRef * {__strong}>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *re::allocInfo_AcousticAbsorptionMaterial(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C6E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C7C8, "AcousticAbsorptionMaterial");
    __cxa_guard_release(&qword_1EE19C6E0);
  }

  return &unk_1EE19C7C8;
}

void re::initInfo_AcousticAbsorptionMaterial(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x5CD9F51973CC76B2;
  v19[1] = "AcousticAbsorptionMaterial";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19C6E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C6E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "identifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19C720 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frequencies";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19C728 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "absorptionCoefficients";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19C730 = v17;
      __cxa_guard_release(&qword_1EE19C6E8);
    }
  }

  *(this + 4) = 8;
  *(this + 20) = 0x800000070;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C720;
  *(this + 9) = re::internal::defaultConstruct<re::AcousticAbsorptionMaterial>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AcousticAbsorptionMaterial>;
  *(this + 13) = re::internal::defaultConstructV2<re::AcousticAbsorptionMaterial>;
  *(this + 14) = re::internal::defaultDestructV2<re::AcousticAbsorptionMaterial>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::AcousticAbsorptionMaterial>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

double re::internal::defaultDestruct<re::AcousticAbsorptionMaterial>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::AcousticAbsorptionMaterial>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AcousticAbsorptionMaterial>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_AcousticScatteringMaterial(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C6F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C858, "AcousticScatteringMaterial");
    __cxa_guard_release(&qword_1EE19C6F0);
  }

  return &unk_1EE19C858;
}

void re::initInfo_AcousticScatteringMaterial(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x8A5EEC5268CFFFDCLL;
  v19[1] = "AcousticScatteringMaterial";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19C6F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C6F8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "identifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19C738 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frequencies";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19C740 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "scatteringCoefficients";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19C748 = v17;
      __cxa_guard_release(&qword_1EE19C6F8);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C738;
  *(this + 9) = re::internal::defaultConstruct<re::AcousticScatteringMaterial>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AcousticScatteringMaterial>;
  *(this + 13) = re::internal::defaultConstructV2<re::AcousticScatteringMaterial>;
  *(this + 14) = re::internal::defaultDestructV2<re::AcousticScatteringMaterial>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::AcousticScatteringMaterial>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

double re::internal::defaultDestruct<re::AcousticScatteringMaterial>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::AcousticScatteringMaterial>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AcousticScatteringMaterial>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_AcousticSoundReductionMaterial(re *this)
{
  if ((atomic_load_explicit(&qword_1EE19C700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C700))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19C8E8, "AcousticSoundReductionMaterial");
    __cxa_guard_release(&qword_1EE19C700);
  }

  return &unk_1EE19C8E8;
}

void re::initInfo_AcousticSoundReductionMaterial(re *this, re::IntrospectionBase *a2)
{
  v19[0] = 0xC6694DCC9D0B805CLL;
  v19[1] = "AcousticSoundReductionMaterial";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE19C708, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19C708);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "identifier";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19C750 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "frequencies";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19C758 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "soundReductionIndices";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x4800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19C760 = v17;
      __cxa_guard_release(&qword_1EE19C708);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19C750;
  *(this + 9) = re::internal::defaultConstruct<re::AcousticSoundReductionMaterial>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AcousticSoundReductionMaterial>;
  *(this + 13) = re::internal::defaultConstructV2<re::AcousticSoundReductionMaterial>;
  *(this + 14) = re::internal::defaultDestructV2<re::AcousticSoundReductionMaterial>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v18 = v20;
}

double re::internal::defaultConstruct<re::AcousticSoundReductionMaterial>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 104) = 0;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

double re::internal::defaultDestruct<re::AcousticSoundReductionMaterial>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::AcousticSoundReductionMaterial>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AcousticSoundReductionMaterial>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

uint64_t *re::introspect_SpatialSceneClassificationType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE19C710, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19C718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19C718))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19C780, "SpatialSceneClassificationType", 1, 1, 1, 1);
      qword_1EE19C780 = &unk_1F5D0C658;
      qword_1EE19C7C0 = &re::introspect_SpatialSceneClassificationType(BOOL)::enumTable;
      dword_1EE19C790 = 9;
      __cxa_guard_release(&qword_1EE19C718);
    }

    if (v2)
    {
      if (_MergedGlobals_112)
      {
        return &qword_1EE19C780;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v45);
      v3 = _MergedGlobals_112;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v45);
      if (v3)
      {
        return &qword_1EE19C780;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_112)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_112 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19C780, a2);
    v41 = 0x8E339AC29DD900D0;
    v42 = "SpatialSceneClassificationType";
    v46 = 0x31CD534126;
    v47 = "uint8_t";
    v9 = v45[0];
    v10 = v45[1];
    if (v46)
    {
      if (v46)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE19C710);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "SpatialSceneClassUnknown";
      qword_1EE19C768 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "SpatialSceneClassIndoor";
      qword_1EE19C770 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 8) = 2;
      *(v40 + 16) = "SpatialSceneClassOutdoor";
      qword_1EE19C778 = v40;
      __cxa_guard_release(&qword_1EE19C710);
    }
  }

  v11 = qword_1EE19C7C0;
  v46 = v9;
  v47 = v10;
  re::TypeBuilder::beginEnumType(v45, &v41, 1, 1, &v46);
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
        *&v44.var0 = 2 * v16;
        v44.var1 = v15;
        re::TypeBuilder::addEnumConstant(v45, v20, &v44);
        if (*&v44.var0)
        {
          if (*&v44.var0)
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
          *&v44.var0 = 2 * v25;
          v44.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v45, v29, &v44);
          if (*&v44.var0)
          {
            if (*&v44.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v45, v31);
  xmmword_1EE19C7A0 = v43;
  if (v41)
  {
    if (v41)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE19C780;
}

float re::FadingParameterController::updateFadingParameterStatus(re::FadingParameterController *this, float a2)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*v2 == *(*this + 16))
  {
    v4 = *(v2 + 16);
    if (v4 > 0.0)
    {
      v5 = fmin(a2, v4);
      *(v2 + 8) = *(v2 + 8) + (v5 * *(v2 + 12));
      v6 = v4 - v5;
LABEL_9:
      *(v2 + 16) = v6;
      return *&v6;
    }

    *(v2 + 12) = 0;
    LODWORD(v6) = *(v3 + 4);
    *(v2 + 8) = LODWORD(v6);
  }

  else
  {
    v7 = *(v3 + 4);
    v6 = *(v3 + 8);
    if (*v3 != v7 || v6 == 0.0)
    {
      *(v2 + 8) = *v3;
      *(v2 + 12) = 0;
    }

    if (v6 > 0.0)
    {
      v8 = (v7 - *(v2 + 8)) / v6;
      *(v2 + 12) = v8;
      goto LABEL_9;
    }
  }

  return *&v6;
}

id ___ZN2re24AudioManager_PHASE_Async22getREAudioStateHandlerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isCancelled];
  if (v2)
  {
    v3 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Aborting callback since the engine was shut down.", v9, 2u);
    }

    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = UnfairLockedPointer<REPHASEContext>::get(v1 + 8);
    v7 = v6;
    if (v6)
    {
      [v6 fillOutDebugInformation:v5];
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id UnfairLockedPointer<REPHASEContext>::get(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  v2 = *a1;
  os_unfair_lock_unlock((a1 + 8));

  return v2;
}

REPHASEContext *re::AudioManager_PHASE_Async::createPhaseContext(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"com.apple.re.audioMaxGain"];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    *&sMaxGainDecibels = v7;
  }

  v8 = [v4 objectForKey:@"com.apple.re.audio.normalizationMode"];
  v9 = v8;
  if (v8)
  {
    v10 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Setting sDefaultNormalizationMode from user defaults = %@", buf, 0xCu);
    }

    [(re *)v9 integerValue];
  }

  v11 = [v4 objectForKey:@"com.apple.re.audio.phaseStopOnIdle"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 BOOLValue];
    *(a1 + 108) = v13;
    v14 = *re::audioLogObjects(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      goto LABEL_19;
    }

    if (*(a1 + 108))
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    *buf = 136315138;
    v33 = v16;
    v17 = "Setting phaseStopOnIdle from user defaults = %s";
  }

  else
  {
    v14 = *re::audioLogObjects(0);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      goto LABEL_19;
    }

    if (*(a1 + 108))
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    *buf = 136315138;
    v33 = v18;
    v17 = "Using default phaseStopOnIdle from user defaults = %s";
  }

  _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
LABEL_19:
  v19 = *(a1 + 169);
  v20 = *re::audioLogObjects(v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "automatic";
    if (v19)
    {
      v21 = "manual";
    }

    v22 = "false";
    if (*(a1 + 169))
    {
      v22 = "true";
    }

    *buf = 136446466;
    v33 = v21;
    v34 = 2082;
    v35 = v22;
    _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] PHASE Engine update mode derived to be %{public}s because loads rendering resources in current process: %{public}s", buf, 0x16u);
  }

  v23 = *(a1 + 169);
  v24 = [REPHASEContext alloc];
  v25 = *(a1 + 344);
  v30 = *(a1 + 336);
  v31 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = [(REPHASEContext *)v24 initWithSampleRate:v3 phaseQueue:&v30 audioEngineRunnableManager:v19 phaseEngineUpdateMode:v23 shouldConfigureAudioEngine:48000.0];
  v27 = v31;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v28 = *re::audioLogObjects(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v26;
    v34 = 2048;
    v35 = sMaxGainDecibels;
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "REPHASEContext %@ created, maximumGainDbSpl = %f", buf, 0x16u);
  }

  return v26;
}

void re::AudioManager_PHASE_Async::AudioManager_PHASE_Async(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = a3;
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 169) = a5;
  v10 = MEMORY[0x1E69E96A0];
  v11 = MEMORY[0x1E69E96A0];
  *(a1 + 176) = v10;
  v12 = v8;
  *(a1 + 208) = 0u;
  *(a1 + 184) = v12;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 304) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = v9;
  operator new();
}

void sub_1E211E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v20);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v15 + 352);
  v23 = *(v15 + 344);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(v15 + 328);
  *(v15 + 328) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::deinit((v19 + 56));
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(v19);

  std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::~__hash_table(v18);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a10);

  _Unwind_Resume(a1);
}

void UnfairLockedPointer<REPHASEContext>::set(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 8));
  v4 = *a1;
  *a1 = v3;

  os_unfair_lock_unlock((a1 + 8));
}

void re::AudioManager_PHASE_Async::~AudioManager_PHASE_Async(re::AudioManager_PHASE_Async *this)
{
  v2 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v3 = v2;
  if (v2)
  {
    [v2 clearSoundEventEnginePointers];
    v4 = [v3 maybeEngine];
    [v4 stop];

    [v3 stopAllAndReset];
    UnfairLockedPointer<REPHASEContext>::set(this + 8, 0);
  }

  [*(this + 10) invalidate];
  v5 = *(this + 10);
  *(this + 10) = 0;

  v7 = *re::audioLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] AudioManager_PHASE destroyed", v10, 2u);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(this + 392);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 352);
  v8 = *(this + 43);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 41);
  *(this + 41) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::deinit(this + 33);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(this + 208);

  std::__hash_table<std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSString * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSString * {__strong}>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 32);
}

id re::AudioManager_PHASE_Async::getPlaybackStateChangeHandlerForToken(os_unfair_lock_s *this, unint64_t a2)
{
  v6 = a2;
  os_unfair_lock_lock(this + 28);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(&this[30]._os_unfair_lock_opaque, &v6);
  if (v3)
  {
    v4 = _Block_copy(v3[3]);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(this + 28);

  return v4;
}

void re::AudioManager_PHASE_Async::setPlaybackStateChangeHandlerForToken(uint64_t a1, unint64_t a2, void *a3)
{
  v8[0] = a2;
  v4 = a3;
  os_unfair_lock_lock((a1 + 112));
  if (v4)
  {
    v5 = _Block_copy(v4);
    v8[2] = v8;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 120), v8);
    v7 = v6[3];
    v6[3] = v5;
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(REAudioPlaybackState,REAudioPlaybackState)>>>::__erase_unique<unsigned long long>((a1 + 120), v8);
  }

  os_unfair_lock_unlock((a1 + 112));
}

void sub_1E211ED38(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 28);

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::playbackStateDidChangeForToken(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = re::AudioManager_PHASE_Async::getPlaybackStateChangeHandlerForToken(a1, a2);
  if (v6)
  {
    v6[2](v6, a3, a4);
  }
}

uint64_t re::AudioManager_PHASE_Async::playbackHostConnectionIdentifier(re::AudioManager_PHASE_Async *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = [*(this + 11) connectionIdentifier];
  os_unfair_lock_unlock(this + 26);
  return v2;
}

void re::AudioManager_PHASE_Async::joinPlaybackHostingServiceAtEndpoint(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 176);
  os_unfair_lock_lock((a1 + 104));
  if (*(a1 + 88))
  {
    v6 = *re::audioLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Audio service closing existing connection to playback hosting service", buf, 2u);
    }

    v7 = *(a1 + 88);
    *(a1 + 88) = 0;

    v8 = *(a1 + 320);
    v9 = v8;
    if (v4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN2re24AudioManager_PHASE_Async36joinPlaybackHostingServiceAtEndpointEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      v13[3] = &unk_1E871B4D0;
      v15 = a1;
      v14 = v8;
      dispatch_async(v4, v13);
    }
  }

  if (v3)
  {
    v10 = [[REAudioPlaybackClientService alloc] initWithXPCEndpoint:v3 queue:*(a1 + 176) service:*(a1 + 320)];
    v11 = *(a1 + 88);
    *(a1 + 88) = v10;

    v12 = 0.0;
    if (!*(a1 + 88))
    {
      v12 = REAudioEngineShutdownTimerLength();
    }

    atomic_store(LODWORD(v12), (a1 + 164));
  }

  os_unfair_lock_unlock((a1 + 104));
}

void sub_1E211EF90(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 26);

  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async36joinPlaybackHostingServiceAtEndpointEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) isCancelled];
  if (v2)
  {
    v3 = *re::audioLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Engine cancelled, not calling completion", v4, 2u);
    }
  }

  else
  {

    re::AudioManager_PHASE_Async::triggerPlaybackConnectionDisconnectCallbacks(v1);
  }
}

uint64_t re::AudioManager_PHASE_Async::triggerPlaybackConnectionDisconnectCallbacks(os_unfair_lock_s *this)
{
  v5 = 0u;
  v6 = 0u;
  os_unfair_lock_opaque = 1065353216;
  os_unfair_lock_lock(this + 50);
  if (&v5 != &this[52])
  {
    os_unfair_lock_opaque = this[60]._os_unfair_lock_opaque;
    std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,void *> *>>(&v5, *&this[56]._os_unfair_lock_opaque, 0);
  }

  os_unfair_lock_unlock(this + 50);
  for (i = v6; i; i = *i)
  {
    (*(i[3] + 16))(i[3], v2);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(&v5);
}

void sub_1E211F0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_unfair_lock_unlock(v9 + 50);
  std::__hash_table<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(void)>>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

id re::AudioManager_PHASE_Async::copyOrCreateEndpointForPlaybackHostingService(re::AudioManager_PHASE_Async *this)
{
  os_unfair_lock_lock(this + 26);
  v2 = *(this + 12);
  if (!v2)
  {
    v3 = objc_alloc_init(REAudioPlaybackHostingService);
    v4 = *(this + 12);
    *(this + 12) = v3;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZN2re24AudioManager_PHASE_Async43setupCallbackForAudioPlaybackHostingServiceEv_block_invoke;
    v8[3] = &__block_descriptor_40_e11_v20__0Q8B16l;
    v8[4] = this;
    [*(this + 12) setDidConnectBlock:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZN2re24AudioManager_PHASE_Async43setupCallbackForAudioPlaybackHostingServiceEv_block_invoke_31;
    v7[3] = &__block_descriptor_40_e8_v16__0Q8l;
    v7[4] = this;
    [*(this + 12) setDidDisconnectBlock:v7];
    v2 = *(this + 12);
  }

  v5 = [v2 endpoint];
  os_unfair_lock_unlock(this + 26);

  return v5;
}

void ___ZN2re24AudioManager_PHASE_Async43setupCallbackForAudioPlaybackHostingServiceEv_block_invoke(uint64_t a1, unint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a3)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock((v3 + 72));
    v4 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v3 + 32), &v6);
    v5 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Connection Identifier %llu added to sensitivePlaybackHostConnectionIdentifiers set.", buf, 0xCu);
    }

    os_unfair_lock_unlock((v3 + 72));
  }
}

void ___ZN2re24AudioManager_PHASE_Async43setupCallbackForAudioPlaybackHostingServiceEv_block_invoke_31(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v2 = *(a1 + 32);
  os_unfair_lock_lock((v2 + 72));
  if (std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>((v2 + 32), &v5))
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::__erase_unique<unsigned long long>((v2 + 32), &v5);
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Connection Identifier %llu removed from sensitivePlaybackHostConnectionIdentifiers set.", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock((v2 + 72));
}

uint64_t re::AudioManager_PHASE_Async::notifyPlaybackClientsWithPreparedSoundsThatMediaServicesWereLost(uint64_t this)
{
  if (*(this + 96))
  {
    v1 = this;
    v6 = 0u;
    v7 = 0u;
    v8 = 1065353216;
    v2 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
    v3 = v2;
    if (v2)
    {
      [v2 playbackClientsWithPreparedOrPreparingSounds];
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(&v6, v5);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v5);

      for (i = v7; i; i = *i)
      {
        [*(v1 + 96) connectionIdentifierLostMediaServices:i[2]];
      }
    }

    return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v6);
  }

  return this;
}

void sub_1E211F49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t re::AudioManager_PHASE_Async::notifyPlaybackClientsWithPreparedSoundsThatMediaServicesWereReset(uint64_t this)
{
  if (*(this + 96))
  {
    v1 = this;
    v6 = 0u;
    v7 = 0u;
    v8 = 1065353216;
    v2 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
    v3 = v2;
    if (v2)
    {
      [v2 playbackClientsWithPreparedOrPreparingSounds];
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(&v6, v5);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v5);

      for (i = v7; i; i = *i)
      {
        [*(v1 + 96) connectionIdentifierResetMediaServices:i[2]];
      }
    }

    return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v6);
  }

  return this;
}

void sub_1E211F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL re::AudioManager_PHASE_Async::isPlaybackHostConnectionIdentifierSensitive(os_unfair_lock_s *this, unint64_t a2)
{
  v5 = a2;
  os_unfair_lock_lock(this + 18);
  v3 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(&this[8]._os_unfair_lock_opaque, &v5) != 0;
  os_unfair_lock_unlock(this + 18);
  return v3;
}

id re::AudioManager_PHASE_Async::swapPhaseContext(re::AudioManager_PHASE_Async *this, REPHASEContext *a2)
{
  v3 = a2;
  v4 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  UnfairLockedPointer<REPHASEContext>::set(this + 8, v3);
  atomic_store(0, this + 24);

  return v4;
}

id re::AudioManager_PHASE_Async::getAudioEnginePHASE(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 maybeEngine];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id re::AudioManager_PHASE_Async::getPHASEOccluderForSceneAndEntity(re::AudioManager_PHASE_Async *this, uint64_t a2, unint64_t a3)
{
  v5 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v6 = v5;
  if (v5)
  {
    [v5 sceneForID:a2];
    if (v11)
    {
      re::audio::REPHASEAudioScene::getEntity(v11, a3, &v9);
      if (v9)
      {
        v7 = *(v9 + 24);
      }

      else
      {
        v7 = 0;
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    else
    {
      v7 = 0;
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1E211F7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

id re::AudioManager_PHASE_Async::createSamplerDefinitionForToken(re::AudioManager_PHASE_Async *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 createSamplerDefinitionForToken:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::AudioManager_PHASE_Async::afterFrameUpdate(uint64_t a1, int a2, uint64_t a3, float a4)
{
  re::audio::getPhase3AcousticMeshEventSignpostData(a3, &block);
  re::audio::emitPhase3AcousticMeshEventSignposts(&block);
  v8 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v9 = v8;
  if (v8)
  {
    [v8 applyMeshEvents:a3];
    [v9 update];
    v10 = [v9 engineShouldBeRunning];
    v11 = v10 ^ 1;
    if (a2 >= 1)
    {
      v11 = 0;
    }

    if (v11)
    {
      v13 = *(a1 + 160);
      if (v13 <= 0.0)
      {
        v14 = atomic_load((a1 + 192));
        if (v14 == 1 && *(a1 + 160) <= 0.0)
        {
          [v9 setRoomSensedReverbStabilizationIsEnabled:0];
          *(a1 + 160) = 0;
          v15 = [v9 maybeEngine];
          re::AudioManager_PHASE_Async::idlePhaseEngine(a1, v15);
        }
      }

      else
      {
        *(a1 + 160) = v13 - a4;
      }
    }

    else
    {
      v12 = atomic_load((a1 + 164));
      *(a1 + 160) = v12;
    }

    Instance = re::AudioManagerTelemetryReporter::getInstance(v10);
    v17 = [v9 getPlayingSoundEventsCount];
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = ___ZN2re29AudioManagerTelemetryReporter25updateConcurrentPlayCountEj_block_invoke;
    v24 = &__block_descriptor_44_e5_v8__0l;
    v25 = Instance;
    v26 = v17;
    dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, &block);
    v19 = re::AudioManagerTelemetryReporter::getInstance(v18);
    v20 = [v9 getPreparingSoundEventsCount];
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = ___ZN2re29AudioManagerTelemetryReporter28updateConcurrentPrepareCountEj_block_invoke;
    v24 = &__block_descriptor_44_e5_v8__0l;
    v25 = v19;
    v26 = v20;
    dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, &block);
  }
}

void re::AudioManager_PHASE_Async::idlePhaseEngine(re::AudioManager_PHASE_Async *this, PHASEEngine *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = atomic_load(this + 24);
  if (v5 == 1)
  {
    if (v3)
    {
      v6 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
      if (v6)
      {
        v7 = pthread_self();
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v13, 2526, v7);
        if (*(this + 108) == 1)
        {
          v8 = *re::audioLogObjects([(PHASEEngine *)v4 stop]);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = COERCE_FLOAT(atomic_load(this + 41));
            *buf = 134217984;
            v15 = v9;
            v10 = "AudioManager_PHASE shutdown timer expired after %f seconds, stopping PHASEEngine";
LABEL_11:
            _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
          }
        }

        else
        {
          v8 = *re::audioLogObjects([(PHASEEngine *)v4 pause]);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v12 = COERCE_FLOAT(atomic_load(this + 41));
            *buf = 134217984;
            v15 = v12;
            v10 = "AudioManager_PHASE shutdown timer expired after %f seconds, pausing PHASEEngine";
            goto LABEL_11;
          }
        }

        atomic_store(0, this + 24);
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v13);
      }
    }

    else
    {
      v11 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[RE/PHASE] [idlePhaseEngine] PHASEEngine instance is null.", v13, 2u);
      }
    }
  }
}

void sub_1E211FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a9);

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::afterFrameSlowMeshEvents(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v31 = v4;
  if (v4)
  {
    v23 = a1;
    v24 = 0;
    v30 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v5 = a2[2];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = a2[5] + 48 * ((i + a2[3]) % a2[1]);
        *buf = &v26;
        *&buf[8] = &v27;
        *&buf[16] = &v25;
        v34 = &v27;
        v35 = &v31;
        v36 = &v24;
        v37 = &v27;
        v38 = &v31;
        v8 = *(v7 + 40);
        if (v8 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v32 = buf;
        v4 = (off_1F5CCABC8[v8])(&v32);
      }
    }

    v9 = re::audioLogObjects(v4);
    v10 = re::AudioLogObjects::loggingEnabled(v9);
    if (v10)
    {
      v22 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        v34 = v24;
        _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE_Async::afterFrameSlowMeshEvents() processed %lu removals, %lu additions, and %lu updates", buf, 0x20u);
      }
    }

    os_unfair_lock_lock((a1 + 256));
    v13 = *(a1 + 272);
    v12 = *(a1 + 280);
    v14 = v12 + 1;
    if (v12 + 1 >= v13)
    {
      if (v13 < v14)
      {
        v15 = (a1 + 280);
        if (*(v23 + 264))
        {
          v16 = 2 * v13;
          if (!v13)
          {
            v16 = 8;
          }

          if (v16 <= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v16;
          }

          re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::setCapacity((v23 + 264), v17);
          v12 = *v15;
        }

        else
        {
          re::Queue<re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>>::setCapacity((v23 + 264), v14);
          v12 = 0;
          *v15 = 0;
          *(v23 + 288) = 0;
          *(v23 + 296) = 0;
        }
      }

      v13 = *(v23 + 272);
    }

    v18 = *(v23 + 304) + 48 * ((*(v23 + 288) + v12) % v13);
    *(v18 + 40) = 0;
    *(v18 + 32) = 0;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *v18 = v27;
    *&v27 = 0;
    *(v18 + 8) = *(&v27 + 1);
    *(&v27 + 1) = 0;
    v19 = *(v18 + 16);
    *(v18 + 16) = v28;
    *&v28 = v19;
    v20 = *(v18 + 40);
    *(v18 + 40) = v30;
    v30 = v20;
    v21 = *(v18 + 24);
    *(v18 + 24) = *(&v28 + 1);
    *(&v28 + 1) = v21;
    ++*(v23 + 280);
    ++*(v23 + 296);
    os_unfair_lock_unlock((v23 + 256));
    re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::deinit(&v27);
  }
}

void sub_1E211FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{
  os_unfair_lock_unlock(v19 + 64);
  re::Queue<std::variant<re::DynamicArray<re::audio::AcousticMeshRemovalData>,re::DynamicArray<re::audio::PHASEOccluderData>,re::DynamicArray<re::audio::PHASEOccluderUpdateData>>>::deinit(&a13);

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::fadeSourceToGain(re::AudioManager_PHASE_Async *this, const re::AudioSourceState *a2, float a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v8 = v7;
  if (v7)
  {
    v9 = 712;
    if (*(a2 + 24))
    {
      v9 = 32;
    }

    v10 = *(a2 + v9);
    v11 = [v7 eventFor:*&v10];
    v12 = v11;
    if (v11)
    {
      [v11 prepareState];
      v13 = *&v19[8];
      *(*v19 + 192) = a3;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = [v8 gainParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      v15 = [v12 paramForKey:v14];
      v16 = *re::audioLogObjects(v15);
      if (v15)
      {
        v17 = a3;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 134218496;
          *&v19[4] = v17;
          *&v19[12] = 2048;
          *&v19[14] = a4;
          v20 = 2048;
          v21 = v10;
          _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] Gain=%.2f over duration=%.2fs for token=%llu", v19, 0x20u);
        }

        [(re *)v15 fadeToValue:v17 duration:a4];
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134217984;
        *&v19[4] = v10;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Could not find gain param for token %llu", v19, 0xCu);
      }
    }

    else
    {
      v18 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134218496;
        *&v19[4] = v10;
        *&v19[12] = 2048;
        *&v19[14] = a3;
        v20 = 2048;
        v21 = a4;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[RE/PHASE] AudioManager_PHASE_Async::fadeSourceToGain(token=%llu, gain=%1.8e, duration=%1.16e) could not find sound event", v19, 0x20u);
      }
    }
  }
}

void re::AudioManager_PHASE_Async::fadeSourceToReverbLevel(re::AudioManager_PHASE_Async *this, const re::AudioSourceState *a2, float a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = 712;
  if (*(a2 + 24))
  {
    v7 = 32;
  }

  v8 = *(a2 + v7);
  v9 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eventFor:*&v8];
    v12 = v11;
    if (v11)
    {
      [v11 prepareState];
      v13 = *&v19[8];
      *(*v19 + 180) = a3;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = [v10 reverbParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      v15 = [v12 paramForKey:v14];
      v16 = *re::audioLogObjects(v15);
      if (v15)
      {
        v17 = a3;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 134218496;
          *&v19[4] = v17;
          *&v19[12] = 2048;
          *&v19[14] = a4;
          v20 = 2048;
          v21 = v8;
          _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] reverbLevel=%.2f over duration=%.2fs for token=%llu", v19, 0x20u);
        }

        [(re *)v15 fadeToValue:v17 duration:a4];
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134217984;
        *&v19[4] = v8;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Could not find reverbSend param for token %llu", v19, 0xCu);
      }
    }

    else
    {
      v18 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134218496;
        *&v19[4] = v8;
        *&v19[12] = 2048;
        *&v19[14] = a3;
        v20 = 2048;
        v21 = a4;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[RE/PHASE] AudioManager_PHASE_Async::fadeSourceToReverbLevel(token=%llu, reverbLevel=%1.8e, duration=%1.16e) could not find sound event", v19, 0x20u);
      }
    }
  }
}

void re::AudioManager_PHASE_Async::fadeSourceToDirectLevel(re::AudioManager_PHASE_Async *this, const re::AudioSourceState *a2, float a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = 712;
  if (*(a2 + 24))
  {
    v7 = 32;
  }

  v8 = *(a2 + v7);
  v9 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eventFor:*&v8];
    v12 = v11;
    if (v11)
    {
      [v11 prepareState];
      v13 = *&v19[8];
      *(*v19 + 184) = a3;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = [v10 directParamForToken:*(a2 + 89) isGroupPlaybackSound:*(a2 + 24)];
      v15 = [v12 paramForKey:v14];
      v16 = *re::audioLogObjects(v15);
      if (v15)
      {
        v17 = a3;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 134218496;
          *&v19[4] = v17;
          *&v19[12] = 2048;
          *&v19[14] = a4;
          v20 = 2048;
          v21 = v8;
          _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [Playback] directSendLevel=%.2f over duration=%.2fs for token=%llu", v19, 0x20u);
        }

        [(re *)v15 fadeToValue:v17 duration:a4];
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134217984;
        *&v19[4] = v8;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Could not find directSendLevel param for token %llu", v19, 0xCu);
      }
    }

    else
    {
      v18 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v19 = 134218496;
        *&v19[4] = v8;
        *&v19[12] = 2048;
        *&v19[14] = a3;
        v20 = 2048;
        v21 = a4;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[RE/PHASE] AudioManager_PHASE_Async::fadeSourceToDirectLevel(token=%llu, directLevel=%1.8e, duration=%1.16e) could not find sound event", v19, 0x20u);
      }
    }
  }
}

id re::AudioManager_PHASE_Async::getListener(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 getListener];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void re::AudioManager_PHASE_Async::createListenerInScene(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "AudioManager_PHASE_Async::createListenerInScene(sceneID=%llu)", &buf, 0xCu);
  }

  v8 = UnfairLockedPointer<REPHASEContext>::get((a1 + 8));
  v9 = v8;
  if (v8)
  {
    v10 = [v8 sceneForID:a3];
    if (buf)
    {
      v11 = [v9 engineShouldBeRunning];
      re::audio::REPHASEAudioScene::createListener(buf, a4);
      if (v11 & 1 | (([v9 engineShouldBeRunning] & 1) == 0))
      {
        atomic_store(1u, a1 + 312);
      }

      else
      {
        re::AudioManager_PHASE_Async::configureAndStartEngine(a1);
      }
    }

    else
    {
      v12 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = a3;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "AudioManager_PHASE_Async::createListenerInScene failed to get scene for sceneID=%llu", &v13, 0xCu);
      }
    }

    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&buf + 1));
    }
  }
}

void re::AudioManager_PHASE_Async::configureAndStartEngine(re::AudioManager_PHASE_Async *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(this + 24);
  if (v1 != 1)
  {
    v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
    v4 = v3;
    if (v3)
    {
      v5 = *re::audioLogObjects([v3 setStartPendingForRunnable:0]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Starting PHASEEngine", buf, 2u);
      }

      v6 = pthread_self();
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 2524, v6);
      v7 = [v4 engine];
      v14 = 0;
      v8 = [v7 startAndReturnError:&v14];
      v9 = v14;

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf);
      if (v8)
      {
        v11 = atomic_load(this + 41);
        *(this + 40) = v11;
        v12 = 1;
      }

      else
      {
        v13 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Could not start audio engine: %@", buf, 0xCu);
        }

        v12 = 0;
      }

      atomic_store(v12, this + 24);
      [v4 createListenerIfPending];
      if (((*(this + 12) != 0) & v8) == 1 && *this == 1)
      {
        [v4 setRoomSensedReverbStabilizationIsEnabled:1];
      }
    }
  }
}

void sub_1E2120AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(va);
  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::removeListenerFromScene(re::AudioManager_PHASE_Async *this)
{
  os_unfair_lock_lock(this + 6);
  *(this + 7) = 0;
  os_unfair_lock_unlock(this + 6);
  v2 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v2)
  {
    v3 = v2;
    [v2 removeListener];
    atomic_store(1u, this + 312);
    v2 = v3;
  }
}

uint64_t re::AudioManager_PHASE_Async::isListenerCreatedInScene(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isListenerCreatedInScene];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void re::AudioManager_PHASE_Async::applyListenerTransformAndLevel(os_unfair_lock_s *this, const simd_float4x4 *a2, float a3)
{
  v12 = re::AudioManager_PHASE_Async::getListener(this);
  v6 = a2->columns[1];
  v7 = a2->columns[2];
  v8 = a2->columns[3];
  v13[0] = a2->columns[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  re::audio::cleanUpTransformForPHASE(v13, v9, v10, v11, &v14);
  [v12 setTransform:{*&v14, *&v15, *&v16, *&v17}];
  os_unfair_lock_lock(this + 6);
  if (*&this[7]._os_unfair_lock_opaque != a3)
  {
    [v12 setGain:a3];
    *&this[7]._os_unfair_lock_opaque = a3;
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    kdebug_trace();
  }

  os_unfair_lock_unlock(this + 6);
}

void sub_1E2120CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 6);

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::setSpatialSceneClassification(unsigned __int8 *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15[0]) = 67109120;
    HIDWORD(v15[0]) = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [SpatialScene] AudioManager_PHASE_Async::setSpatialSceneClassification(spatialSceneClassification=%hhu)", v15, 8u);
  }

  v5 = UnfairLockedPointer<REPHASEContext>::get((a1 + 8));
  v6 = v5;
  if (v5)
  {
    v7 = [v5 engine];
    v8 = [v7 sceneClassification] == 1935886702;

    Instance = re::AudioManagerTelemetryReporter::getInstance(v9);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN2re29AudioManagerTelemetryReporter32spatialSceneChangeTelemetryEventENS_30SpatialSceneClassificationTypeES1__block_invoke;
    v15[3] = &__block_descriptor_42_e5_v8__0l;
    v15[4] = Instance;
    v16 = v8;
    v17 = a2;
    dispatch_async(re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue, v15);
    v11 = [v6 engine];
    v12 = v11;
    v13 = 1935889774;
    if (a2 == 1)
    {
      v13 = 1935886702;
    }

    if (a2 == 2)
    {
      v14 = 1935888245;
    }

    else
    {
      v14 = v13;
    }

    [v11 setSceneClassification:v14];

    atomic_store(1u, a1 + 312);
  }
}

BOOL re::AudioManager_PHASE_Async::getSpatialSceneClassification(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (!v1)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = [v1 maybeEngine];

  if (!v3)
  {
    v7 = *re::audioLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "[RE/PHASE] [SpatialScene] AudioManager_PHASE_Async::getSpatialSceneClassification returning unknown scene as the PHASE engine was yet to be initialized.", v9, 2u);
    }

    goto LABEL_6;
  }

  v5 = [v2 maybeEngine];
  v6 = [v5 sceneClassification] == 1935886702;

LABEL_7:
  return v6;
}

void re::AudioManager_PHASE_Async::setSpatialSceneRoomIdentifier(re::AudioManager_PHASE_Async *this, NSUUID *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *re::audioLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSUUID *)v3 UUIDString];
    v13 = 136315138;
    v14 = [v5 UTF8String];
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [SpatialScene] AudioManager_PHASE_Async::setSpatialSceneRoomIdentifier(roomIdentifier=%s)", &v13, 0xCu);
  }

  v6 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 engine];
    v9 = [v8 sceneRoomUUID];

    Instance = re::AudioManagerTelemetryReporter::getInstance(v10);
    re::AudioManagerTelemetryReporter::roomChangeTelemetryEvent(Instance, v9, v3);
    v12 = [v7 engine];
    [v12 setSceneRoomUUID:v3];

    atomic_store(1u, this + 312);
  }
}

uint64_t re::AudioManager_PHASE_Async::getReverbPreset(re::AudioManager_PHASE_Async *this)
{
  v1 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 getReverbPreset];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

void re::AudioManager_PHASE_Async::createSessionRootInScene(re::AudioManager_PHASE_Async *this, unint64_t a2, uint64_t a3, NSUUID *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sceneForID:a3];
    if (v12)
    {
      v10 = [v8 engineShouldBeRunning];
      if (!(v10 & 1 | (([v8 engineShouldBeRunning] & 1) == 0)))
      {
        re::AudioManager_PHASE_Async::configureAndStartEngine(this);
      }
    }

    else
    {
      v11 = *re::audioLogObjects(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v15 = a3;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "AudioManager_PHASE_Async::createSessionRootInScene failed to get scene for sceneID=%llu", buf, 0xCu);
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }
  }
}

void re::AudioManager_PHASE_Async::removeSessionRootFromScene(re::AudioManager_PHASE_Async *this, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *re::audioLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Removing audio session root %llu", &v7, 0xCu);
    }

    v5 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
    v6 = v5;
    if (v5)
    {
      [v5 removeSessionRoot:a2];
    }
  }
}

void re::AudioManager_PHASE_Async::setSessionRootTransform(re::AudioManager_PHASE_Async *this, uint64_t a2, const simd_float4x4 *a3)
{
  v5 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v5)
  {
    v8 = v5;
    v6 = [v5 getSessionRoot:a2];
    v7 = v6;
    if (v6)
    {
      [v6 setTransform:{*a3->columns[0].i64, *a3->columns[1].i64, *a3->columns[2].i64, *a3->columns[3].i64}];
    }

    v5 = v8;
  }
}

void re::AudioManager_PHASE_Async::setSceneReverbPreset(uint64_t a1, uint64_t a2)
{
  v4 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v4)
  {
    v5 = v4;
    [v4 setReverbPreset:a2 allowingSpaceBlend:0];
    atomic_store(1u, (a1 + 312));
    v4 = v5;
  }
}

void re::AudioManager_PHASE_Async::setSpaceBlendTargetPresetOrientation(re::AudioManager_PHASE_Async *this, simd_quatf a2)
{
  v5 = *a2.vector.i64;
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v3)
  {
    v4 = v3;
    [v3 setSpaceBlendTargetPresetOrientation:v5];
    atomic_store(1u, this + 312);
    v3 = v4;
  }
}

void re::AudioManager_PHASE_Async::loadFile(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v25 = a6;
  v26 = v14;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a6];
  v16 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v16)
  {
    v19 = v13;
    v17 = *a4;
    v18 = [v16 engine];
    [v18 assetRegistry];
    objc_claimAutoreleasedReturnValue();

    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re24AudioManager_PHASE_Async8loadFileEP5NSURLP20AVAudioChannelLayoutRKNS_27AudioFileAssetConfigurationEjy_block_invoke;
    aBlock[3] = &unk_1E871B538;
    aBlock[7] = a6;
    aBlock[4] = v19;
    aBlock[8] = v17;
    v21 = a5;
    aBlock[5] = v15;
    aBlock[6] = v23;
    v22 = _Block_copy(aBlock);
    std::allocate_shared[abi:ne200100]<re::PersistedAssetData,std::allocator<re::PersistedAssetData>,void({block_pointer} {__strong}&)(PHASEAssetRegistry *,AVAudioChannelLayout *,re::AudioFileAssetConfiguration const&,re::audio::SoundAssetRegistrar &),AVAudioChannelLayout * {__strong}&,re::AudioFileAssetConfiguration const&,unsigned long long &,0>();
  }

  *a7 = 0;
  a7[1] = 0;
}

void sub_1E21218E8(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async8loadFileEP5NSURLP20AVAudioChannelLayoutRKNS_27AudioFileAssetConfigurationEjy_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v24 = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  v12 = *(a4 + 4);
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 24)];
  v14 = *(a1 + 72);
  v25 = 0;
  v15 = (*(*a5 + 24))(a5, v23, v9, v10, v11, 0, v24, v12 == 1, v13, v14, &v25);
  v16 = v25;

  v17 = re::internal::enableSignposts(0, 0);
  if (v17)
  {
    v17 = kdebug_trace();
  }

  if (v15)
  {
    v18 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      v20 = "preloaded";
      if (*a4)
      {
        v20 = "streaming";
      }

      *buf = 134218242;
      v27 = v19;
      v28 = 2080;
      v29 = v20;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Loaded audio asset (%llu) with a %s configuration from a fileURL.", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v21 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 56);
      *buf = 134218242;
      v27 = v22;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Could not load asset (%llu): %@", buf, 0x16u);
    }
  }
}

void re::AudioManager_PHASE_Async::loadFileData(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v13 = a3;
  v24 = a6;
  v25 = v13;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a6];
  v15 = *a4;
  v16 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v16)
  {
    v17 = [v16 engine];
    [v17 assetRegistry];
    objc_claimAutoreleasedReturnValue();

    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re24AudioManager_PHASE_Async12loadFileDataEP6NSDataP20AVAudioChannelLayoutRKNS_27AudioFileAssetConfigurationEjy_block_invoke;
    aBlock[3] = &unk_1E871B538;
    aBlock[7] = a6;
    aBlock[4] = v18;
    aBlock[8] = v15;
    v20 = a5;
    aBlock[5] = v14;
    aBlock[6] = v22;
    v21 = _Block_copy(aBlock);
    std::allocate_shared[abi:ne200100]<re::PersistedAssetData,std::allocator<re::PersistedAssetData>,void({block_pointer} {__strong}&)(PHASEAssetRegistry *,AVAudioChannelLayout *,re::AudioFileAssetConfiguration const&,re::audio::SoundAssetRegistrar &),AVAudioChannelLayout * {__strong}&,re::AudioFileAssetConfiguration const&,unsigned long long &,0>();
  }

  *a7 = 0;
  a7[1] = 0;
}

void sub_1E2121F6C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async12loadFileDataEP6NSDataP20AVAudioChannelLayoutRKNS_27AudioFileAssetConfigurationEjy_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v24 = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  v12 = *(a4 + 4);
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 24)];
  v14 = *(a1 + 72);
  v25 = 0;
  v15 = (*(*a5 + 16))(a5, v23, v9, v10, v11, 0, v24, v12 == 1, v13, v14, &v25);
  v16 = v25;

  v17 = re::internal::enableSignposts(0, 0);
  if (v17)
  {
    [*(a1 + 32) length];
    v17 = kdebug_trace();
  }

  if (v15)
  {
    v18 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      v20 = "preloaded";
      if (*a4)
      {
        v20 = "streaming";
      }

      *buf = 134218242;
      v27 = v19;
      v28 = 2080;
      v29 = v20;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Loaded audio asset (%llu) with a %s configuration from fileData.", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v21 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 56);
      *buf = 134218242;
      v27 = v22;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Could not load asset (%llu): %@", buf, 0x16u);
    }
  }
}

void re::AudioManager_PHASE_Async::loadBuffer(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v30 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4];
  v26 = v9;
  v10 = [v8 format];
  v11 = [v10 channelCount];

  if (v11 == 1)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:*objc_msgSend(v8 length:{"floatChannelData"), 4 * objc_msgSend(v8, "frameLength")}];
LABEL_11:
    v23 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
    if (v23)
    {
      v24 = [v23 engine];
      [v24 assetRegistry];
      objc_claimAutoreleasedReturnValue();

      *&v31 = 0;
      *(&v31 + 1) = &v31;
      v32 = 0x2020000000;
      v33 = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZN2re24AudioManager_PHASE_Async10loadBufferEP16AVAudioPCMBufferRKNS_27AudioFileAssetConfigurationEjy_block_invoke;
      aBlock[3] = &unk_1E871B560;
      aBlock[8] = a4;
      aBlock[4] = v12;
      aBlock[5] = v9;
      v28 = a3;
      aBlock[6] = v8;
      aBlock[7] = &v31;
      v29 = _Block_copy(aBlock);
      std::allocate_shared[abi:ne200100]<re::PersistedAssetData,std::allocator<re::PersistedAssetData>,void({block_pointer} {__strong}&)(PHASEAssetRegistry *,AVAudioChannelLayout *,re::AudioFileAssetConfiguration const&,re::audio::SoundAssetRegistrar &),decltype(nullptr),re::AudioFileAssetConfiguration const&,unsigned long long &,0>();
    }

    *a5 = 0;
    a5[1] = 0;

    v9 = v26;
    goto LABEL_14;
  }

  v13 = [v8 format];
  v14 = [v13 isInterleaved];

  if (!v14)
  {
    v17 = objc_alloc(MEMORY[0x1E695DF88]);
    v18 = [v8 frameLength];
    v19 = [v8 format];
    v12 = [v17 initWithLength:{4 * v18 * objc_msgSend(v19, "channelCount")}];

    for (i = 0; ; ++i)
    {
      v21 = [v8 format];
      v22 = [v21 channelCount];

      if (i >= v22)
      {
        break;
      }

      memcpy(([v12 mutableBytes] + 4 * objc_msgSend(v8, "frameLength") * i), *(objc_msgSend(v8, "floatChannelData") + 8 * i), 4 * objc_msgSend(v8, "frameLength"));
    }

    v9 = v26;
    goto LABEL_11;
  }

  v16 = *re::audioLogObjects(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v31) = 138412290;
    *(&v31 + 4) = v8;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] can't load interleaved audio buffers: %@", &v31, 0xCu);
  }

  *a5 = 0;
  a5[1] = 0;
LABEL_14:
}

void sub_1E2122794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21)
{
  _Block_object_dispose((v25 - 128), 8);

  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async10loadBufferEP16AVAudioPCMBufferRKNS_27AudioFileAssetConfigurationEjy_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v25 = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = [*(a1 + 48) format];
  v13 = *(a4 + 4);
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 24)];
  v15 = *(a1 + 72);
  v26 = 0;
  v16 = (*(*a5 + 32))(a5, v9, v10, v11, v12, v13 == 1, v14, v15, &v26);
  v17 = v26;

  v18 = re::internal::enableSignposts(0, 0);
  if (v18)
  {
    re::audio::pcmBufferSize(*(a1 + 48), v19);
    v18 = kdebug_trace();
  }

  if (v16)
  {
    v20 = *re::audioLogObjects(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 64);
      v22 = "preloaded";
      if (*a4)
      {
        v22 = "streaming";
      }

      *buf = 134218242;
      v28 = v21;
      v29 = 2080;
      v30 = v22;
      _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Loaded audio asset (%llu) with a %s configuration from a pcmBuffer.", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v23 = *re::audioLogObjects(v18);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 64);
      *buf = 134218242;
      v28 = v24;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Could not load asset (%llu): %@", buf, 0x16u);
    }
  }
}

void re::AudioManager_PHASE_Async::loadBuffer(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v21 = a5;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a5];
  v14 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v14)
  {
    v15 = [v14 engine];
    [v15 assetRegistry];
    objc_claimAutoreleasedReturnValue();

    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re24AudioManager_PHASE_Async10loadBufferEP6NSDataP13AVAudioFormatRKNS_27AudioFileAssetConfigurationEjy_block_invoke;
    aBlock[3] = &unk_1E871B560;
    aBlock[8] = a5;
    aBlock[4] = v11;
    aBlock[5] = v13;
    v17 = a4;
    aBlock[6] = v12;
    aBlock[7] = v19;
    v18 = _Block_copy(aBlock);
    std::allocate_shared[abi:ne200100]<re::PersistedAssetData,std::allocator<re::PersistedAssetData>,void({block_pointer} {__strong}&)(PHASEAssetRegistry *,AVAudioChannelLayout *,re::AudioFileAssetConfiguration const&,re::audio::SoundAssetRegistrar &),decltype(nullptr),re::AudioFileAssetConfiguration const&,unsigned long long &,0>();
  }

  *a6 = 0;
  a6[1] = 0;
}

void sub_1E2122E68(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async10loadBufferEP6NSDataP13AVAudioFormatRKNS_27AudioFileAssetConfigurationEjy_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v23 = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a4 + 4);
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 24)];
  v14 = *(a1 + 72);
  v25 = 0;
  v15 = (*(*a5 + 32))(a5, v24, v9, v10, v11, v12 == 1, v13, v14, &v25);
  v16 = v25;

  v17 = re::internal::enableSignposts(0, 0);
  if (v17)
  {
    [*(a1 + 32) length];
    v17 = kdebug_trace();
  }

  if (v15)
  {
    v18 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 64);
      v20 = "preloaded";
      if (*a4)
      {
        v20 = "streaming";
      }

      *buf = 134218242;
      v27 = v19;
      v28 = 2080;
      v29 = v20;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[RE/PHASE] [Load] Loaded audio asset (%llu) with a %s configuration from an NSData buffer.", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v21 = *re::audioLogObjects(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 64);
      *buf = 134218242;
      v27 = v22;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "[RE/PHASE] [Load] Could not load asset (%llu): %@", buf, 0x16u);
    }
  }
}

void re::AudioManager_PHASE_Async::loadExternalStreamController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v5)
  {
    [v5 addAudioAssetID:a2 configuration:a3];
  }
}

uint64_t re::AudioManager_PHASE_Async::getConfigurationForExternalStreamController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 getConfigurationForAudioAssetID:a2 configuration:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void re::AudioManager_PHASE_Async::prepareSourceAsync(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v12 = v11;
  if (v11)
  {
    [v11 setPreparingWithData:*(*a2 + 56) forToken:{*(*a2 + 48), *(*a2 + 24)}];
    v13 = *(a1 + 320);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN2re24AudioManager_PHASE_Async18prepareSourceAsyncENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEyP8NSStringPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
    block[3] = &unk_1F5CCAB28;
    v21 = a1;
    v14 = v13;
    v16 = *a2;
    v15 = a2[1];
    v18 = v14;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v12;
    v24 = a3;
    v20 = v9;
    dispatch_async(v10, block);

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void ___ZN2re24AudioManager_PHASE_Async18prepareSourceAsyncENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEyP8NSStringPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) isCancelled];
  if (v3)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 64) + 24);
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE_Async] [prepareSourceAsync] Cannot prepare token: %llu because engine is cancelled.", buf, 0xCu);
    }

    return;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v28, 2534, *(*(a1 + 64) + 24));
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 48);
  v11 = v6;
  v12 = v10;
  v13 = v12;
  if (!v11)
  {
    v32 = 0;
    v33 = 0;
LABEL_21:
    v20 = *re::audioLogObjects(v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(v7 + 24);
      *buf = 134218240;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE_Async] [prepareSource] Cannot prepare asset that is not in a scene. token=%llu, connection=%llu", buf, 0x16u);
    }

    goto LABEL_29;
  }

  v12 = [v11 sceneForID:*(v7 + 32)];
  if (!v32)
  {
    goto LABEL_21;
  }

  v14 = [v11 maybeEngine];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = [v11 engine];
    v17 = *re::audioLogObjects(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "[AudioManager_PHASE_Async] [prepareSource] Created engine %@", buf, 0xCu);
    }
  }

  re::audio::REPHASEAudioScene::createListenerIfPending(v32);
  v18 = *(v2 + 176);
  *buf = v7;
  *&buf[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v33;
  v31[0] = v32;
  v31[1] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33[2], 1uLL, memory_order_relaxed);
  }

  re::AudioManager_PHASE_Async::prepareStateSetup(v2, buf, v18, v31);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    v30 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v30 = 0;
  }

  v29 = v7;
  [v11 prepare:&v29];
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v22 = [v11 engineShouldBeRunning];
  v23 = atomic_load((v2 + 192));
  if (((v23 != 1) & v22) == 1)
  {
    re::AudioManager_PHASE_Async::configureAndStartEngine(v2);
  }

LABEL_29:
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  Instance = re::AudioManagerTelemetryReporter::getInstance(v24);
  v26 = *(a1 + 72);
  v27[0] = *(a1 + 64);
  v27[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    re::AudioManagerTelemetryReporter::addPreparedSourceState(Instance, v27);
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  else
  {
    re::AudioManagerTelemetryReporter::addPreparedSourceState(Instance, v27);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v28);
}

void sub_1E2123780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a11);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_64c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_64c63_ZTSNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void re::AudioManager_PHASE_Async::prepareGroupSourceAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v10)
  {
    for (i = (a2 + 16); ; [v10 setPreparingWithData:*(i[3] + 56) forToken:{*(i[3] + 48), a3}])
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(v20, a2);
    v12 = *(a1 + 320);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = ___ZN2re24AudioManager_PHASE_Async23prepareGroupSourceAsyncERKNSt3__113unordered_mapIyNS1_10shared_ptrINS_5audio24REPHASESoundPrepareStateEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEyPU28objcproto17OS_dispatch_queue8NSObjecty_block_invoke;
    block[3] = &unk_1F5CCAB60;
    v17 = a1;
    v18 = a3;
    v15 = v12;
    v13 = v12;
    std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(v19, v20);
    v16 = v10;
    v19[5] = a5;
    dispatch_async(v9, block);

    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v19);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v20);
  }
}

void sub_1E212397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(v17 - 104);

  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async23prepareGroupSourceAsyncERKNSt3__113unordered_mapIyNS1_10shared_ptrINS_5audio24REPHASESoundPrepareStateEEENS1_4hashIyEENS1_8equal_toIyEENS1_9allocatorINS1_4pairIKyS6_EEEEEEyPU28objcproto17OS_dispatch_queue8NSObjecty_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) isCancelled];
  if (v3)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 56);
      *buf = 134217984;
      v37 = v5;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE_Async] [prepareGroupSourceAsync] Cannot prepare token: %llu because engine is cancelled.", buf, 0xCu);
    }

    return;
  }

  if (!*(a1 + 88))
  {
    return;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 104);
  v8 = *(a1 + 40);
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 64), v7);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = *(v9 + 3);
  v10 = *(v9 + 4);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    v34 = 0;
    v35 = 0;
LABEL_28:
    v22 = *re::audioLogObjects(v9);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = *(v11 + 368);
      *buf = 134218240;
      v37 = v6;
      v38 = 2048;
      v39 = v28;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "[AudioManager_PHASE_Async] [prepareGroupSource] Cannot prepare asset that is not in a scene. token=%llu, connection=%llu", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v9 = [v8 sceneForID:*(v11 + 32)];
  if (!v34)
  {
    goto LABEL_28;
  }

  v29 = v6;
  v12 = [v8 maybeEngine];
  v13 = v12 == 0;

  if (v13)
  {
    v14 = [v8 engine];
    v15 = *re::audioLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "[AudioManager_PHASE_Async] [prepareGroupSource] Created engine %@", buf, 0xCu);
    }
  }

  re::audio::REPHASEAudioScene::createListenerIfPending(v34);
  v16 = *(v2 + 176);
  for (i = *(a1 + 80); i; i = *i)
  {
    v18 = i[4];
    v33[0] = i[3];
    v33[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v35;
    v32[0] = v34;
    v32[1] = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35[2], 1uLL, memory_order_relaxed);
    }

    re::AudioManager_PHASE_Async::prepareStateSetup(v2, v33, v16, v32);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }
  }

  std::unordered_map<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>::unordered_map(buf, a1 + 64);
  [v8 prepareSyncGroup:buf forGroupID:v29 withTransportControlToken:v7];
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::audio::REPHASESoundPrepareState>>>>::~__hash_table(buf);
  v20 = [v8 engineShouldBeRunning];
  v21 = atomic_load((v2 + 192));
  if (((v21 != 1) & v20) == 1)
  {
    re::AudioManager_PHASE_Async::configureAndStartEngine(v2);
  }

LABEL_30:
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v23 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 64), *(a1 + 104));
  if (!v23)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v25 = *(v23 + 3);
  v24 = *(v23 + 4);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    Instance = re::AudioManagerTelemetryReporter::getInstance(v23);
    v30 = v25;
    v31 = v24;
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    re::AudioManagerTelemetryReporter::addPreparedSourceState(Instance, &v30);
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  else
  {
    v27 = re::AudioManagerTelemetryReporter::getInstance(v23);
    v30 = v25;
    v31 = 0;
    re::AudioManagerTelemetryReporter::addPreparedSourceState(v27, &v30);
  }
}

void sub_1E2123D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  _Unwind_Resume(a1);
}

void re::AudioManager_PHASE_Async::prepareStateSetup(id *a1, void *a2, void *a3, os_unfair_lock_s **a4)
{
  v7 = a3;
  re::audio::REPHASEAudioScene::getOrCreateEntity(*a4, *(*a2 + 40), &v23);
  objc_storeStrong((v23 + 32), *(*a2 + 328));
  v8 = *(*a2 + 24);
  objc_initWeak(&location, a1[12]);
  v9 = a1[40];
  v11 = *a2;
  v10 = a2[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN2re24AudioManager_PHASE_Async17prepareStateSetupENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEPU28objcproto17OS_dispatch_queue8NSObjectNS2_INS3_17REPHASEAudioSceneEEE_block_invoke;
  v16[3] = &unk_1F5CCAB98;
  v19[1] = a1;
  objc_copyWeak(v19, &location);
  v19[2] = v11;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v8;
  v12 = v7;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = _Block_copy(v16);
  v15 = *(*a2 + 320);
  *(*a2 + 320) = v14;

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  objc_destroyWeak(v19);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  objc_destroyWeak(&location);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

void ___ZN2re24AudioManager_PHASE_Async17prepareStateSetupENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEPU28objcproto17OS_dispatch_queue8NSObjectNS2_INS3_17REPHASEAudioSceneEEE_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (a3 < 4 || a3 == 5))
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(a1 + 64);
        if (v11)
        {
          [WeakRetained connectionIdentifier:*(v11 + 48) streamToken:*(a1 + 80) didChangeFromState:a2 toState:a3];
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re24AudioManager_PHASE_Async17prepareStateSetupENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEPU28objcproto17OS_dispatch_queue8NSObjectNS2_INS3_17REPHASEAudioSceneEEE_block_invoke_2;
    block[3] = &unk_1E871B588;
    v17 = v6;
    v13 = *(a1 + 40);
    v14 = *(a1 + 80);
    v16 = v13;
    v18 = v14;
    v19 = a2;
    v20 = a3;
    dispatch_async(v12, block);
  }
}

void sub_1E2124094(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN2re24AudioManager_PHASE_Async17prepareStateSetupENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEEPU28objcproto17OS_dispatch_queue8NSObjectNS2_INS3_17REPHASEAudioSceneEEE_block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) isCancelled];
  if (v3)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Engine cancelled, ignoring state change", &v9, 2u);
    }
  }

  else
  {
    v5 = re::AudioManager_PHASE_Async::getPlaybackStateChangeHandlerForToken(v2, *(a1 + 48));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v7 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = 134218240;
        v10 = v8;
        v11 = 2048;
        v12 = re::AudioManager_PHASE_Async::playbackHostConnectionIdentifier(v2);
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "stream %llu from connection %llu does not have playback state change handler", &v9, 0x16u);
      }
    }
  }
}

uint64_t __copy_helper_block_ea8_64c60_ZTSNSt3__18weak_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_64c60_ZTSNSt3__18weak_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

id re::AudioManager_PHASE_Async::createAcousticMaterialsArray(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  if (v7)
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v12, a2);
    re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v11, a3);
    re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v10, a4);
    v8 = [v7 createAcousticMaterialsArrayWithAbsorption:v12 scattering:v11 soundReduction:v10];
    re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(v10);
    re::DynamicArray<re::AcousticScatteringMaterial>::deinit(v11);
    re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v12);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1E2124318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(va);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(va1);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v3 - 72);

  _Unwind_Resume(a1);
}

id re::AudioManager_PHASE_Async::createPhaseShape(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
  v14 = v13;
  if (v13)
  {
    v15 = [v13 createPhaseShapeWithMeshID:a2 materials:v11 mdlMesh:v12 arkitMesh:a5 meshType:a6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

unint64_t re::AudioManager_PHASE_Async::prepareMeshAsset(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a2;
  re::DynamicArray<re::AcousticAbsorptionMaterial>::DynamicArray(v18, a3);
  re::DynamicArray<re::AcousticScatteringMaterial>::DynamicArray(v17, a4);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::DynamicArray(v16, a5);
  v10 = re::AudioManager_PHASE_Async::createAcousticMaterialsArray(a1, v18, v17, v16);
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(v16);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(v17);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(v18);
  if (v10)
  {
    for (__buf = 0; __buf < 0x3E8; v11 = __buf)
    {
      arc4random_buf(&__buf, 8uLL);
    }

    v12 = re::AudioManager_PHASE_Async::createPhaseShape(a1, __buf, v10, v9, 0, 1);
    if (v12)
    {
      v13 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
      v14 = v13;
      if (v13)
      {
        [v13 addPhaseShapeToCache:v12 meshID:v11 mesh:v9];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1E212455C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

unint64_t re::AudioManager_PHASE_Async::prepareMeshAsset(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  for (__buf = 0; __buf < 0x3E8; v6 = __buf)
  {
    arc4random_buf(&__buf, 8uLL);
  }

  v7 = re::AudioManager_PHASE_Async::createPhaseShape(a1, __buf, 0, v5, 1, a3);
  if (v7)
  {
    v8 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
    v9 = v8;
    if (v8)
    {
      [v8 addPhaseShapeToCache:v7 meshID:v6 mesh:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void re::AudioManager_PHASE_Async::removeMeshAsset(re::AudioManager_PHASE_Async *this, uint64_t a2)
{
  v3 = UnfairLockedPointer<REPHASEContext>::get(this + 8);
  if (v3)
  {
    [v3 removePhaseShapeFromCacheWithMeshID:a2];
  }
}

void re::AudioManager_PHASE_Async::setMeshesForEntity(re *a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a2 == -1 || !a3)
  {
    v19 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Can't add mesh to invalid entity/scene", buf, 2u);
    }
  }

  else
  {
    v67 = a1;
    v10 = UnfairLockedPointer<REPHASEContext>::get(a1 + 8);
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = *(a4 + 8);
      if (v13)
      {
        v14 = *(a4 + 16);
        v15 = 8 * v13;
        *&v12 = 134217984;
        v66 = v12;
        do
        {
          v16 = *v14;
          v17 = [v10 getPhaseShapeFromCacheWithMeshID:{*v14, v66, v67}];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = *re::audioLogObjects(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v66;
              v76 = v16;
              _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Mesh %llu is not registered with PHASE", buf, 0xCu);
            }
          }

          ++v14;
          v15 -= 8;
        }

        while (v15);
      }

      [v10 sceneForID:a2];
      re::audio::REPHASEAudioScene::getOrCreateEntity(v73, a3, &v71);
      v21 = re::audioLogObjects(v20);
      v22 = re::AudioLogObjects::loggingEnabled(v21);
      if (v22)
      {
        v55 = *re::audioLogObjects(v22);
        v22 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
        v23 = v71;
        if (v22)
        {
          v56 = *(v71 + 32);
          *buf = 134218498;
          v76 = a2;
          v77 = 2048;
          *v78 = a3;
          *&v78[8] = 2112;
          v79 = v56;
          _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity() sceneID=%llu entityID=%llu entityName='%@'", buf, 0x20u);
        }
      }

      else
      {
        v23 = v71;
      }

      if (*(v23 + 16))
      {
        v24 = re::audioLogObjects(v22);
        v25 = re::AudioLogObjects::loggingEnabled(v24);
        if (v25)
        {
          v57 = *re::audioLogObjects(v25);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = *(v23 + 16);
            *buf = 138412290;
            v76 = v58;
            _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity() Removing source: %@", buf, 0xCu);
          }
        }

        v26 = [*(v23 + 16) parent];
        [v26 removeChild:*(v23 + 16)];

        v27 = *(v23 + 16);
        *(v23 + 16) = 0;
      }

      if (*(v23 + 24))
      {
        v28 = re::audioLogObjects(v22);
        v29 = re::AudioLogObjects::loggingEnabled(v28);
        if (v29)
        {
          v59 = *re::audioLogObjects(v29);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = *(v23 + 24);
            *buf = 138412290;
            v76 = v60;
            _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity() Removing occluder: %@", buf, 0xCu);
          }
        }

        v30 = [*(v23 + 24) parent];
        [v30 removeChild:*(v23 + 24)];

        v31 = *(v23 + 24);
        *(v23 + 24) = 0;
      }

      v32 = [v11 count];
      if (v32)
      {
        v33 = re::audioLogObjects(v32);
        v34 = re::AudioLogObjects::loggingEnabled(v33);
        if (v34)
        {
          v61 = *re::audioLogObjects(v34);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v76 = a3;
            v77 = 1024;
            *v78 = a6;
            *&v78[4] = 1024;
            *&v78[6] = a5;
            _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity entityId=%llu projects=%d occludes=%d", buf, 0x18u);
          }
        }

        v35 = [v10 engine];
        v36 = [v35 rootObject];

        if (a6)
        {
          v37 = objc_alloc(MEMORY[0x1E6978220]);
          v38 = [v10 engine];
          v39 = [v37 initWithEngine:v38 shapes:v11];
          v40 = *(v23 + 16);
          *(v23 + 16) = v39;

          v41 = *(v23 + 16);
          v70 = 0;
          [v36 addChild:v41 error:&v70];
          v42 = v70;
          v43 = re::audioLogObjects(v42);
          v44 = re::AudioLogObjects::loggingEnabled(v43);
          if (v44)
          {
            v62 = *re::audioLogObjects(v44);
            v44 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
            if (v44)
            {
              v63 = *(v23 + 16);
              *buf = 134218242;
              v76 = a3;
              v77 = 2112;
              *v78 = v63;
              _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity entityId=%llu created PHASESource: %@", buf, 0x16u);
            }
          }

          if (v42)
          {
            v45 = *re::audioLogObjects(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v76 = a3;
              v77 = 2112;
              *v78 = v42;
              _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "Could not add PHASESource for entity %llu. Error %@", buf, 0x16u);
            }
          }
        }

        if (a5)
        {
          v46 = objc_alloc(MEMORY[0x1E69781E8]);
          v47 = [v10 engine];
          v48 = [v46 initWithEngine:v47 shapes:v11];
          v49 = *(v23 + 24);
          *(v23 + 24) = v48;

          v50 = *(v23 + 24);
          v69 = 0;
          [v36 addChild:v50 error:&v69];
          v51 = v69;
          v52 = re::audioLogObjects(v51);
          v53 = re::AudioLogObjects::loggingEnabled(v52);
          if (v53)
          {
            v64 = *re::audioLogObjects(v53);
            v53 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
            if (v53)
            {
              v65 = *(v23 + 24);
              *buf = 134218242;
              v76 = a3;
              v77 = 2112;
              *v78 = v65;
              _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "AudioManager_PHASE_Async::setMeshesForEntity entityId=%llu created PHASEOccluder: %@", buf, 0x16u);
            }
          }

          if (v51)
          {
            v54 = *re::audioLogObjects(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v76 = a3;
              v77 = 2112;
              *v78 = v51;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "Could not add PHASEOccluder for entity %llu. Error %@", buf, 0x16u);
            }
          }
        }

        atomic_store(1u, v67 + 312);
      }

      else
      {
        atomic_store(1u, v67 + 312);
      }

      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
      }

      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v74);
      }
    }
  }
}