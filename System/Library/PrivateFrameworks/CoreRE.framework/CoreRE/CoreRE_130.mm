void re::IntrospectionInfo<re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC40))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B0078);
    qword_1EE1B0078 = &unk_1F5CF8760;
    __cxa_guard_release(&qword_1EE1AFC40);
  }

  if ((byte_1EE1AFB37 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    if ((atomic_load_explicit(&qword_1EE1AFC48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC48))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1AFDF0);
      qword_1EE1AFDF0 = &unk_1F5CF8800;
      __cxa_guard_release(&qword_1EE1AFC48);
    }

    if ((byte_1EE1AFB38 & 1) == 0)
    {
      v3 = re::mtl::introspect_TextureSwizzleChannels(1);
      if ((byte_1EE1AFB38 & 1) == 0)
      {
        v4 = v3;
        byte_1EE1AFB38 = 1;
        v5 = *(v3 + 24);
        ArcSharedObject::ArcSharedObject(&qword_1EE1AFDF0, 0);
        qword_1EE1AFE00 = 0x50000000DLL;
        dword_1EE1AFE08 = v5;
        word_1EE1AFE0C = 0;
        *&xmmword_1EE1AFE10 = 0;
        *(&xmmword_1EE1AFE10 + 1) = 0xFFFFFFFFLL;
        qword_1EE1AFE20 = v4;
        qword_1EE1AFE28 = 0;
        qword_1EE1AFDF0 = &unk_1F5CF8800;
        re::IntrospectionRegistry::add(v6, v7);
        re::getPrettyTypeName(&qword_1EE1AFDF0, &v28);
        if (BYTE8(v28))
        {
          v8 = v29;
        }

        else
        {
          v8 = &v28 + 9;
        }

        if (v28 && (BYTE8(v28) & 1) != 0)
        {
          (*(*v28 + 40))();
        }

        v32 = *(v4 + 32);
        if (v33)
        {
          v31 = v33;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(v30);
          re::TypeBuilder::TypeBuilder(&v28, v30);
          v36 = v32;
          re::TypeBuilder::beginOptionalType(&v28, &v35, 5uLL, 1uLL, &v36);
          re::TypeBuilder::setOptionalAccessors(&v28, re::TypeBuilderHelper::registerOptional<re::mtl::TextureSwizzleChannels>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::mtl::TextureSwizzleChannels>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v28, v10);
          re::StackScratchAllocator::~StackScratchAllocator(v30);
        }

        xmmword_1EE1AFE10 = v31;
        if (v35)
        {
          if (v35)
          {
          }
        }
      }
    }

    if ((byte_1EE1AFB37 & 1) == 0)
    {
      byte_1EE1AFB37 = 1;
      v11 = dword_1EE1AFE08;
      ArcSharedObject::ArcSharedObject(&qword_1EE1B0078, 0);
      qword_1EE1B0088 = 0x3000000007;
      dword_1EE1B0090 = v11;
      word_1EE1B0094 = 0;
      *&xmmword_1EE1B0098 = 0;
      *(&xmmword_1EE1B0098 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B00A8 = v2;
      qword_1EE1B00B0 = 0;
      qword_1EE1B00B8 = &qword_1EE1AFDF0;
      qword_1EE1B00C0 = 0;
      qword_1EE1B0078 = &unk_1F5CF8760;
      re::IntrospectionRegistry::add(v12, v13);
      re::getPrettyTypeName(&qword_1EE1B0078, &v28);
      if (BYTE8(v28))
      {
        v14 = v29;
      }

      else
      {
        v14 = &v28 + 9;
      }

      if (v28 && (BYTE8(v28) & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      v15 = v2[2];
      v23 = xmmword_1EE1AFE10;
      v24 = v15;
      if (v36)
      {
        v22 = v36;
      }

      else
      {
        *&v28 = 0x449AD97C4B77BED4;
        *(&v28 + 1) = "_CompareFunc";
        if (v28)
        {
          if (v28)
          {
          }
        }

        if (!v35)
        {
          v30[0] = 0x449AD97C4B77BED4;
          v30[1] = "_CompareFunc";
          v35 = v28;
          if (v30[0])
          {
            if (v30[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(&v33, &v28 + 8);
        if (!v35 || (v19 = *v34, *&v28 = *(&v35 + 1), *(&v28 + 1) = v19, LODWORD(v29) = -1, (v20 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v33 + 768, &v28)) == 0) || !*v20)
        {
          v31 = v35;
          v32 = v24;
        }

        re::StackScratchAllocator::StackScratchAllocator(v30);
        re::TypeBuilder::TypeBuilder(&v28, v30);
        v26 = v23;
        v27 = v24;
        re::TypeBuilder::beginDictionaryType(&v28, &v25, 1, 0x30uLL, 8uLL, &v27, &v26);
        re::TypeBuilder::setConstructor(&v28, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v28, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v28, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v28, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v28, v21);
        re::StackScratchAllocator::~StackScratchAllocator(v30);
      }

      xmmword_1EE1B0098 = v22;
      if (v25)
      {
        if (v25)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_SerializableMaterialParameterBlock(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFB90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B01E8, "SerializableMaterialParameterBlock");
    __cxa_guard_release(&qword_1EE1AFB90);
  }

  return &unk_1EE1B01E8;
}

void re::ecs2::initInfo_SerializableMaterialParameterBlock(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v33[0] = 0x7FD177336AB796D4;
  v33[1] = "SerializableMaterialParameterBlock";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE1AFB88, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AFB88);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "parameters";
      *(v8 + 16) = &qword_1EE1AFF38;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x13000000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AFD30 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_networkVersion";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x20000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AFD38 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>::get(1, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "passTechniqueMapping";
      *(v15 + 16) = &qword_1EE1AFF88;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xD000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AFD40 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "textureToSamplerBindings";
      *(v18 + 16) = &qword_1EE1AFFD8;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1000000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AFD48 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v19, v20);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "samplerToArrayBindings";
      *(v21 + 16) = &qword_1EE1AFFD8;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1AFD50 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::IntrospectionInfo<re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "textureToUVIndex";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x4000000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1AFD58 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v26, v27);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "parameterBindings";
      *(v28 + 16) = &qword_1EE1B0028;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x10000000007;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1AFD60 = v28;
      v29 = re::introspectionAllocator(v28);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v29, v30);
      v31 = (*(*v29 + 32))(v29, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "textureToSwizzle";
      *(v31 + 16) = &qword_1EE1B0078;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x7000000008;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1AFD68 = v31;
      __cxa_guard_release(&qword_1EE1AFB88);
    }
  }

  *(this + 2) = 0x20800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1AFD30;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SerializableMaterialParameterBlock>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SerializableMaterialParameterBlock>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SerializableMaterialParameterBlock>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SerializableMaterialParameterBlock>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v32 = v34;
}

void *re::internal::defaultDestruct<re::ecs2::SerializableMaterialParameterBlock>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 56);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 50);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 44);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 38);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 26);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 20);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 14);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 8);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 2);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::SerializableMaterialParameterBlock>(uint64_t *a1)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 50);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 44);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 38);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 26);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 14);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 8);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 2);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void re::IntrospectionInfo<re::ecs2::SerializableMaterialParameterBlock *>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1AFC50, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1AFC50);
    if (a1)
    {
      re::IntrospectionPointer::IntrospectionPointer(&qword_1EE1AFE30);
      __cxa_guard_release(&qword_1EE1AFC50);
    }
  }

  if ((byte_1EE1AFB39 & 1) == 0)
  {
    byte_1EE1AFB39 = 1;
    v1 = qword_1EE1AFB98;
    if (!qword_1EE1AFB98)
    {
      v1 = re::ecs2::allocInfo_SerializableMaterialParameterBlock(a1);
      qword_1EE1AFB98 = v1;
      re::ecs2::initInfo_SerializableMaterialParameterBlock(v1, v2);
    }

    ArcSharedObject::ArcSharedObject(&qword_1EE1AFE30, 0);
    qword_1EE1AFE40 = 0x800000001;
    dword_1EE1AFE48 = 8;
    word_1EE1AFE4C = 0;
    *&xmmword_1EE1AFE50 = 0;
    *(&xmmword_1EE1AFE50 + 1) = 0xFFFFFFFFLL;
    qword_1EE1AFE30 = &unk_1F5CBD2C0;
    qword_1EE1AFE60 = v1;
    unk_1EE1AFE68 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&qword_1EE1AFE30, &v9);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v1 + 2);
      v7 = v8;
    }

    xmmword_1EE1AFE50 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

void *re::ecs2::allocInfo_SerializableMaterialParameterBlockHandle(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFBA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0278, "SerializableMaterialParameterBlockHandle");
    __cxa_guard_release(&qword_1EE1AFBA8);
  }

  return &unk_1EE1B0278;
}

void re::ecs2::initInfo_SerializableMaterialParameterBlockHandle(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x4487493BFBA6DC64;
  v13[1] = "SerializableMaterialParameterBlockHandle";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1AFBA0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AFBA0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::ecs2::SerializableMaterialParameterBlock *>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "blockRawPtr";
      *(v7 + 16) = &qword_1EE1AFE30;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1AFC98 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_uint32_t(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_networkVersion";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AFCA0 = v11;
      __cxa_guard_release(&qword_1EE1AFBA0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AFC98;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SerializableMaterialParameterBlockHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SerializableMaterialParameterBlockHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SerializableMaterialParameterBlockHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SerializableMaterialParameterBlockHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

double re::internal::defaultConstruct<re::ecs2::SerializableMaterialParameterBlockHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  *&result = 1;
  a3[2] = 1;
  a3[3] = 0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::SerializableMaterialParameterBlockHandle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {

    *a3 = 0;
  }
}

double re::internal::defaultConstructV2<re::ecs2::SerializableMaterialParameterBlockHandle>(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *&result = 1;
  a1[2] = 1;
  a1[3] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::SerializableMaterialParameterBlockHandle>(uint64_t a1)
{
  if (*a1)
  {

    *a1 = 0;
  }
}

uint64_t re::ecs2::ComponentType<re::ecs2::MaterialParameterBlockArrayComponent>::makeBindNode@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *v5 = &unk_1F5CF8880;
  result = re::BindPoint::BindPoint((v5 + 1), a2);
  *(a3 + 16) = v5;
  return result;
}

unsigned int *re::ecs2::encode(re::ecs2 *this, re::snapshot::EncoderRaw *a2, const re::ecs2::MaterialParameterBlockArrayComponent *a3)
{
  v3 = a2;
  LOBYTE(__src) = *((*(*this + 32))(this, a2, a3) + 16) != 0;
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
  if (__src == 1)
  {
    __src = *(v3 + 6);
    re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    v5 = *(v3 + 6);
    if (v5)
    {
      v6 = 0;
      v85 = v3;
      while (1)
      {
        v7 = (*(v3 + 8) + 32 * v6);
        v8 = v7[3];
        v9 = *v7;
        if (!*v7)
        {
          v9 = v7[1];
        }

        if (v8 != *(v9 + 504) || v8 != *(v9 + 496))
        {
          break;
        }

LABEL_153:
        if (v5 <= ++v6)
        {
          goto LABEL_180;
        }
      }

      v87 = v6;
      LODWORD(__src) = v6;
      re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 4uLL);
      v10 = v7;
      v11 = *v7;
      if (!v11)
      {
        v11 = v10[1];
      }

      v86 = v10;
      v88 = *(v11 + 504);
      v89 = v10[3];
      v12 = *((*(*this + 32))(this) + 16);
      v13 = qword_1EE1AFB58;
      if (qword_1EE1AFB58 && v12)
      {
        v14 = (v11 + 8);
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (v16 >= v15)
        {
          v17 = v16 + 1;
          if (v15 < v16 + 1)
          {
            if (*v13)
            {
              v18 = 2 * v15;
              v21 = v15 == 0;
              v19 = 8;
              if (!v21)
              {
                v19 = v18;
              }

              if (v19 <= v17)
              {
                v20 = v17;
              }

              else
              {
                v20 = v19;
              }

              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v13, v20);
            }

            else
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v13, v17);
              ++*(v13 + 24);
            }
          }

          v16 = *(v13 + 16);
        }

        *(*(v13 + 32) + 8 * v16) = v11;
        *(v13 + 16) = v16 + 1;
        ++*(v13 + 24);
        v13 = qword_1EE1AFB58;
      }

      if (v13)
      {
        v21 = v12 == 0;
      }

      else
      {
        v21 = 1;
      }

      v23 = !v21 && v89 == v88;
      LOBYTE(__src) = v23;
      re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
      if (__src == 1)
      {
        v24 = *(v11 + 432);
        if (v24)
        {
          v25 = 0;
          v26 = *(v11 + 416);
          while (1)
          {
            v27 = *v26;
            v26 += 6;
            if (v27 < 0)
            {
              break;
            }

            if (v24 == ++v25)
            {
              LODWORD(v25) = *(v11 + 432);
              break;
            }
          }
        }

        else
        {
          LODWORD(v25) = 0;
        }

LABEL_45:
        while (v25 != v24)
        {
          v31 = *(v11 + 416) + 24 * v25;
          v33 = *(v31 + 8);
          v32 = (v31 + 8);
          v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v33 >> 31) ^ (v33 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v33 >> 31) ^ (v33 >> 1))) >> 27));
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 304, v32, v34 ^ (v34 >> 31), &__src);
          v35 = v91;
          if (v91 != 0x7FFFFFFF)
          {
            v36 = *(v11 + 320);
            v37 = v32[1];
            v38 = strlen(v37);
            re::snapshot::EncoderRaw::serializeString(this, v37, v38);
            if ((atomic_load_explicit(&qword_1EE1AFBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBD8))
            {
              qword_1EE1AFBD0 = re::internal::getOrCreateInfo("SerializedMaterialParameter", re::ecs2::allocInfo_SerializedMaterialParameter, re::ecs2::initInfo_SerializedMaterialParameter, &qword_1EE1AFB50, 0);
              __cxa_guard_release(&qword_1EE1AFBD8);
            }

            re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v36 + 320 * v35 + 32, qword_1EE1AFBD0);
          }

          v39 = *(v11 + 432);
          if (v39 <= v25 + 1)
          {
            v39 = v25 + 1;
          }

          while (v39 - 1 != v25)
          {
            LODWORD(v25) = v25 + 1;
            if ((*(*(v11 + 416) + 24 * v25) & 0x80000000) != 0)
            {
              goto LABEL_45;
            }
          }

          LODWORD(v25) = v39;
        }

        re::snapshot::EncoderRaw::serializeString(this, &str_67, 0);
        v40 = *(v11 + 480);
        if (v40)
        {
          v41 = 0;
          v42 = *(v11 + 464);
          while (1)
          {
            v43 = *v42;
            v42 += 6;
            if (v43 < 0)
            {
              break;
            }

            if (v40 == ++v41)
            {
              LODWORD(v41) = *(v11 + 480);
              break;
            }
          }
        }

        else
        {
          LODWORD(v41) = 0;
        }

LABEL_85:
        while (v41 != v40)
        {
          v48 = strlen(*(*(v11 + 464) + 24 * v41 + 16));
          re::snapshot::EncoderRaw::serializeString(this, *(*(v11 + 464) + 24 * v41 + 16), v48);
          v49 = *(v11 + 480);
          if (v49 <= v41 + 1)
          {
            v49 = v41 + 1;
          }

          while (v49 - 1 != v41)
          {
            LODWORD(v41) = v41 + 1;
            if ((*(*(v11 + 464) + 24 * v41) & 0x80000000) != 0)
            {
              goto LABEL_85;
            }
          }

          LODWORD(v41) = v49;
        }

        re::snapshot::EncoderRaw::serializeString(this, &str_67, 0);
      }

      else
      {
        __src = *(v11 + 332);
        re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
        v28 = *(v11 + 336);
        if (v28)
        {
          v29 = 0;
          v30 = *(v11 + 320);
          while ((*v30 & 0x80000000) == 0)
          {
            v30 += 80;
            if (v28 == ++v29)
            {
              LODWORD(v29) = *(v11 + 336);
              break;
            }
          }
        }

        else
        {
          LODWORD(v29) = 0;
        }

        if (v29 != v28)
        {
          v44 = *(v11 + 320);
          do
          {
            v45 = v44 + 320 * v29;
            v46 = strlen(*(v45 + 16));
            re::snapshot::EncoderRaw::serializeString(this, *(v45 + 16), v46);
            if ((atomic_load_explicit(&qword_1EE1AFBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBD8))
            {
              qword_1EE1AFBD0 = re::internal::getOrCreateInfo("SerializedMaterialParameter", re::ecs2::allocInfo_SerializedMaterialParameter, re::ecs2::initInfo_SerializedMaterialParameter, &qword_1EE1AFB50, 0);
              __cxa_guard_release(&qword_1EE1AFBD8);
            }

            re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v45 + 32, qword_1EE1AFBD0);
            if (*(v11 + 336) <= (v29 + 1))
            {
              v47 = v29 + 1;
            }

            else
            {
              v47 = *(v11 + 336);
            }

            v44 = *(v11 + 320);
            while (v47 - 1 != v29)
            {
              LODWORD(v29) = v29 + 1;
              if ((*(v44 + 320 * v29) & 0x80000000) != 0)
              {
                goto LABEL_74;
              }
            }

            LODWORD(v29) = v47;
LABEL_74:
            ;
          }

          while (v29 != v28);
        }
      }

      LODWORD(__src) = *(v11 + 512);
      re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 4uLL);
      if (v89 == v88)
      {
        v50 = *(v11 + 518);
      }

      else
      {
        v50 = -1;
      }

      LOWORD(__src) = v50;
      re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 2uLL);
      if ((v50 & 0x10) != 0)
      {
        if ((atomic_load_explicit(&qword_1EE1AFBE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBE8))
        {
          re::IntrospectionInfo<re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>::get(0, v80);
          qword_1EE1AFBE0 = &qword_1EE1AFF88;
          __cxa_guard_release(&qword_1EE1AFBE8);
        }

        re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v11 + 208, qword_1EE1AFBE0);
        if ((v50 & 1) == 0)
        {
LABEL_92:
          if ((v50 & 8) == 0)
          {
            goto LABEL_93;
          }

          goto LABEL_98;
        }
      }

      else if ((v50 & 1) == 0)
      {
        goto LABEL_92;
      }

      re::snapshot::operator<<<re::snapshot::EncoderRaw,re::StringID,re::StringID>(this, v11 + 16);
      if ((v50 & 8) == 0)
      {
LABEL_93:
        if ((v50 & 2) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_99;
      }

LABEL_98:
      re::snapshot::operator<<<re::snapshot::EncoderRaw,re::StringID,re::StringID>(this, v11 + 160);
      if ((v50 & 2) == 0)
      {
LABEL_117:
        if ((v50 & 0x20) != 0)
        {
          __src = *(v11 + 284);
          re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
          v59 = *(v11 + 288);
          if (v59)
          {
            v60 = 0;
            v61 = *(v11 + 272);
            while (1)
            {
              v62 = *v61;
              v61 += 18;
              if (v62 < 0)
              {
                break;
              }

              if (v59 == ++v60)
              {
                LODWORD(v60) = *(v11 + 288);
                break;
              }
            }
          }

          else
          {
            LODWORD(v60) = 0;
          }

          if (v60 != v59)
          {
            v67 = *(v11 + 272);
            do
            {
              v68 = v67 + 72 * v60;
              v69 = strlen(*(v68 + 16));
              re::snapshot::EncoderRaw::serializeString(this, *(v68 + 16), v69);
              v71 = *(v68 + 24);
              v70 = v68 + 24;
              LOBYTE(__src) = v71;
              re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
              if (__src == 1)
              {
                if ((atomic_load_explicit(&qword_1EE1AFBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBF8))
                {
                  qword_1EE1AFBF0 = re::internal::getOrCreateInfo("SerializableParameterBinding", re::ecs2::allocInfo_SerializableParameterBinding, re::ecs2::initInfo_SerializableParameterBinding, &qword_1EE1AFB80, 0);
                  __cxa_guard_release(&qword_1EE1AFBF8);
                }

                re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v70 + 8, qword_1EE1AFBF0);
              }

              if (*(v11 + 288) <= (v60 + 1))
              {
                v72 = v60 + 1;
              }

              else
              {
                v72 = *(v11 + 288);
              }

              v67 = *(v11 + 272);
              while (v72 - 1 != v60)
              {
                LODWORD(v60) = v60 + 1;
                if ((*(v67 + 72 * v60) & 0x80000000) != 0)
                {
                  goto LABEL_144;
                }
              }

              LODWORD(v60) = v72;
LABEL_144:
              ;
            }

            while (v60 != v59);
          }
        }

        if ((v50 & 4) != 0)
        {
          __src = *(v11 + 140);
          re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
          v63 = *(v11 + 144);
          if (v63)
          {
            v64 = 0;
            v65 = *(v11 + 128);
            while (1)
            {
              v66 = *v65;
              v65 += 8;
              if (v66 < 0)
              {
                break;
              }

              if (v63 == ++v64)
              {
                LODWORD(v64) = *(v11 + 144);
                break;
              }
            }
          }

          else
          {
            LODWORD(v64) = 0;
          }

          if (v64 != v63)
          {
            v74 = *(v11 + 128);
            do
            {
              v75 = v74 + 32 * v64;
              v76 = strlen(*(v75 + 16));
              re::snapshot::EncoderRaw::serializeString(this, *(v75 + 16), v76);
              v78 = *(v75 + 24);
              v77 = v75 + 24;
              LOBYTE(__src) = v78;
              re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 1uLL);
              if (__src == 1)
              {
                if ((atomic_load_explicit(&qword_1EE1AFC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC08))
                {
                  qword_1EE1AFC00 = re::mtl::introspect_TextureSwizzleChannels(0);
                  __cxa_guard_release(&qword_1EE1AFC08);
                }

                re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v77 + 1, qword_1EE1AFC00);
              }

              if (*(v11 + 144) <= (v64 + 1))
              {
                v79 = v64 + 1;
              }

              else
              {
                v79 = *(v11 + 144);
              }

              v74 = *(v11 + 128);
              while (v79 - 1 != v64)
              {
                LODWORD(v64) = v64 + 1;
                if ((*(v74 + 32 * v64) & 0x80000000) != 0)
                {
                  goto LABEL_167;
                }
              }

              LODWORD(v64) = v79;
LABEL_167:
              ;
            }

            while (v64 != v63);
          }
        }

        LODWORD(__src) = *(v86 + 4);
        re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 4uLL);
        v73 = *v86;
        if (!*v86)
        {
          v73 = v86[1];
        }

        v86[3] = *(v73 + 496);
        v3 = v85;
        v5 = *(v85 + 6);
        v6 = v87;
        goto LABEL_153;
      }

LABEL_99:
      __src = *(v11 + 92);
      re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
      v51 = *(v11 + 96);
      if (v51)
      {
        v52 = 0;
        v53 = *(v11 + 80);
        while (1)
        {
          v54 = *v53;
          v53 += 8;
          if (v54 < 0)
          {
            break;
          }

          if (v51 == ++v52)
          {
            LODWORD(v52) = *(v11 + 96);
            break;
          }
        }
      }

      else
      {
        LODWORD(v52) = 0;
      }

      if (v52 != v51)
      {
        v55 = *(v11 + 80);
        do
        {
          v56 = v55 + 32 * v52;
          v57 = strlen(*(v56 + 16));
          re::snapshot::EncoderRaw::serializeString(this, *(v56 + 16), v57);
          LODWORD(__src) = *(v56 + 24);
          re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 4uLL);
          if (*(v11 + 96) <= (v52 + 1))
          {
            v58 = v52 + 1;
          }

          else
          {
            v58 = *(v11 + 96);
          }

          v55 = *(v11 + 80);
          while (v58 - 1 != v52)
          {
            LODWORD(v52) = v52 + 1;
            if ((*(v55 + 32 * v52) & 0x80000000) != 0)
            {
              goto LABEL_116;
            }
          }

          LODWORD(v52) = v58;
LABEL_116:
          ;
        }

        while (v52 != v51);
      }

      goto LABEL_117;
    }

LABEL_180:
    LODWORD(__src) = -1;
    return re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 4uLL);
  }

  else
  {
    __src = *(v3 + 6);
    result = re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
    v82 = *(v3 + 6);
    if (v82)
    {
      v83 = *(v3 + 8);
      v84 = 32 * v82;
      do
      {
        if ((atomic_load_explicit(&qword_1EE1AFC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC80))
        {
          qword_1EE1AFC78 = re::internal::getOrCreateInfo("SerializableMaterialParameterBlockHandle", re::ecs2::allocInfo_SerializableMaterialParameterBlockHandle, re::ecs2::initInfo_SerializableMaterialParameterBlockHandle, &qword_1EE1AFBB0, 0);
          __cxa_guard_release(&qword_1EE1AFC80);
        }

        result = re::snapshot::introspected::write<re::snapshot::EncoderRaw>(this, v83, qword_1EE1AFC78);
        v83 += 32;
        v84 -= 32;
      }

      while (v84);
    }
  }

  return result;
}

void re::ecs2::decode(re::ecs2 *this, re::snapshot::DecoderRaw *a2, re::ecs2::MaterialParameterBlockArrayComponent *a3)
{
  v158 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (*(this + 4) == v4)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
LABEL_196:
    v130[0] = 0;
    if (!re::snapshot::DecoderRaw::beginArray(this, v130))
    {
      return;
    }

    v116 = v130[0];
    if (v130[0] == -1 || *(a2 + 5) >= v130[0])
    {
      --v130[0];
      if (!v116)
      {
        v117 = 1;
        LODWORD(v118) = 1;
LABEL_211:
        if (v117 != v118)
        {
          re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }

        return;
      }

      v117 = v116 + 1;
      if (v116 == -1)
      {
LABEL_209:
        re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
        return;
      }
    }

    else
    {
      re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a2 + 4, v130[0]);
      v130[0] = v116 - 1;
      v117 = v116 + 1;
    }

    v118 = 1;
    while (v117 != v118)
    {
      re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(a2 + 32, v118);
      v119 = *(a2 + 8);
      v120 = *(a2 + 6);
      if ((atomic_load_explicit(&qword_1EE1AFC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC80))
      {
        qword_1EE1AFC78 = re::internal::getOrCreateInfo("SerializableMaterialParameterBlockHandle", re::ecs2::allocInfo_SerializableMaterialParameterBlockHandle, re::ecs2::initInfo_SerializableMaterialParameterBlockHandle, &qword_1EE1AFBB0, 0);
        __cxa_guard_release(&qword_1EE1AFC80);
      }

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v119 + 32 * v120 - 32, qword_1EE1AFC78);
      ++v118;
      if (!v130[0]--)
      {
        goto LABEL_211;
      }
    }

    goto LABEL_209;
  }

  v5 = *v4;
  *(this + 3) = v4 + 1;
  if ((v5 & 1) == 0)
  {
    goto LABEL_196;
  }

  v125 = 0;
  re::snapshot::DecoderRaw::operator>>(this, &v125);
  v6 = a2;
  re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a2, v125);
  v124 = 0;
  re::snapshot::DecoderRaw::operator>>(this, &v124);
  v8 = v124;
  if ((v124 & 0x80000000) == 0)
  {
LABEL_4:
    v9 = *(v6 + 6);
    if (v9 <= v8)
    {
      *&v127.var0 = 0;
      v132 = 0u;
      v133 = 0u;
      memset(v131, 0, sizeof(v131));
      *v130 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v156 = 136315906;
      *&v156[4] = "operator[]";
      *&v156[12] = 1024;
      *&v156[14] = 789;
      *&v156[18] = 2048;
      *&v156[20] = v8;
      *&v156[28] = 2048;
      *&v156[30] = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "block", "decode", 1687);
      _os_crash();
      __break(1u);
LABEL_216:
      *&v127.var0 = 0;
      v132 = 0u;
      v133 = 0u;
      memset(v131, 0, sizeof(v131));
      *v130 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v156 = 136315906;
      *&v156[4] = "operator[]";
      *&v156[12] = 1024;
      *&v156[14] = 789;
      *&v156[18] = 2048;
      *&v156[20] = v8;
      *&v156[28] = 2048;
      *&v156[30] = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(*(v6 + 8) + 32 * v8);
    if (!v9)
    {
      goto LABEL_215;
    }

    v123 = (v9 + 280);
    v10 = *(this + 3);
    if (*(this + 4) == v10)
    {
      re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
LABEL_55:
      v129 = 0;
      *v156 = *(v9 + 304);
      *(v9 + 304) = 0;
      *(v9 + 312) = 0;
      *&v156[16] = *(v9 + 320);
      *(v9 + 320) = 0;
      *&v156[24] = *(v9 + 328);
      *(v9 + 328) = xmmword_1E3058120;
      LODWORD(v157) = 1;
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v9 + 304);
      if (re::snapshot::DecoderRaw::beginDictionary(this, &v129))
      {
        v38 = v129;
        if (v129 == -1)
        {
          *&v127.var0 = 0;
          v127.var1 = &str_67;
          v129 = -2;
        }

        else
        {
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v9 + 304, v129);
          *&v127.var0 = 0;
          v127.var1 = &str_67;
          v129 = v38 - 1;
          if (!v38)
          {
            goto LABEL_85;
          }
        }

        do
        {
          *&v126.var0 = 0;
          v39 = re::snapshot::DecoderRaw::beginString(this, &v126);
          if (v39)
          {
            v40 = *&v126.var0;
            v41 = *(this + 3);
            v42 = *(this + 4) - v41;
            if (v42 >= *&v126.var0)
            {
              v42 = *&v126.var0;
            }

            *(this + 3) = &v41[v42];
            v130[0] = 0;
            v130[1] = &str_67;
            v44 = v130[0];
            v45 = v130[1];
            v130[0] = 0;
            v130[1] = &str_67;
            var0 = v127.var0;
            var1 = v127.var1;
            *&v127.var0 = v44;
            v127.var1 = v45;
            if (var0)
            {
              if (v130[0])
              {
                if (v130[0])
                {
                }
              }
            }
          }

          v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) >> 27));
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v156, &v127, v49 ^ (v49 >> 31), v130);
          v50 = HIDWORD(v130[1]);
          if (HIDWORD(v130[1]) == 0x7FFFFFFF)
          {
            LOBYTE(v130[0]) = 0;
            memset(v134, 0, sizeof(v134));
            v135 = 10;
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = 0;
            v152 = 0;
            v148 = 0;
            v149 = 0;
            v151 = 0;
            v150 = 0;
            v153 = 0;
            v154[2] = 0;
            v155 = 0;
            v154[0] = 0;
            *(v154 + 5) = 0;
            if ((atomic_load_explicit(&qword_1EE1AFBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBD8))
            {
              qword_1EE1AFBD0 = re::internal::getOrCreateInfo("SerializedMaterialParameter", re::ecs2::allocInfo_SerializedMaterialParameter, re::ecs2::initInfo_SerializedMaterialParameter, &qword_1EE1AFB50, 0);
              __cxa_guard_release(&qword_1EE1AFBD8);
            }

            re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v130, qword_1EE1AFBD0);
            re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v9 + 304, &v127, v130);
            v154[0] = 0;
            if (v148)
            {
              if (v152)
              {
                (*(*v148 + 40))(v148);
              }

              v152 = 0;
              v149 = 0;
              v150 = 0;
              v148 = 0;
              ++v151;
            }

            re::AssetHandle::~AssetHandle(v134);
          }

          else
          {
            v52 = *&v156[16];
            if ((atomic_load_explicit(&qword_1EE1AFBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBD8))
            {
              qword_1EE1AFBD0 = re::internal::getOrCreateInfo("SerializedMaterialParameter", re::ecs2::allocInfo_SerializedMaterialParameter, re::ecs2::initInfo_SerializedMaterialParameter, &qword_1EE1AFB50, 0);
              __cxa_guard_release(&qword_1EE1AFBD8);
            }

            v53 = v52 + 320 * v50;
            re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v53 + 32, qword_1EE1AFBD0);
            v51 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v9 + 304, &v127, (v53 + 32));
          }
        }

        while (v129--);
        if (*&v127.var0)
        {
          if (*&v127.var0)
          {
          }
        }
      }

LABEL_85:
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v156);
      goto LABEL_86;
    }

    v11 = *v10;
    *(this + 3) = v10 + 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      *v156 = 0;
      *&v156[8] = &str_67;
      *&v127.var0 = 0;
      v12 = re::snapshot::DecoderRaw::beginString(this, &v127);
      if (v12)
      {
        v13 = *&v127.var0;
        v14 = *(this + 3);
        v15 = *(this + 4) - v14;
        if (v15 >= *&v127.var0)
        {
          v15 = *&v127.var0;
        }

        *(this + 3) = &v14[v15];
        v130[0] = 0;
        v130[1] = &str_67;
        v16 = v130[0];
        v17 = v130[1];
        v130[0] = 0;
        v130[1] = &str_67;
        v18 = v156[0];
        v19 = *&v156[8];
        *v156 = v16;
        *&v156[8] = v17;
        if (v18)
        {
          if (v130[0])
          {
            if (v130[0])
            {
            }
          }
        }
      }

      v20 = v156[0];
      if (*v156 >= 0xFFFFFFFFFFFFFFFELL && (v156[0] & 1) == 0)
      {
        break;
      }

      v21 = *&v156[8];
      if (*v156 <= 1uLL && *&v156[8] != 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      v130[0] = 0;
      v130[1] = 0;
      *&v131[0] = 0;
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v156 >> 31) ^ (*v156 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v156 >> 31) ^ (*v156 >> 1))) >> 27));
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 304, v156, v23 ^ (v23 >> 31), v130);
      if (HIDWORD(v130[1]) == 0x7FFFFFFF)
      {
        v24 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v9 + 304, v130[1], v130[0]);
        re::StringID::StringID((v24 + 8), v156);
        *(v24 + 32) = 0u;
        v25 = (v24 + 32);
        v25[16] = 0u;
        v25[17] = 0u;
        v25[14] = 0u;
        v25[15] = 0u;
        v25[12] = 0u;
        v25[13] = 0u;
        v25[10] = 0u;
        v25[11] = 0u;
        v25[8] = 0u;
        v25[9] = 0u;
        v25[6] = 0u;
        v25[7] = 0u;
        v25[4] = 0u;
        v25[5] = 0u;
        v25[2] = 0u;
        v25[3] = 0u;
        v25[1] = 0u;
        re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(v25);
        ++*(v9 + 344);
      }

      else
      {
        v25 = (*(v9 + 320) + 320 * HIDWORD(v130[1]) + 32);
      }

      if ((atomic_load_explicit(&qword_1EE1AFBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBD8))
      {
        qword_1EE1AFBD0 = re::internal::getOrCreateInfo("SerializedMaterialParameter", re::ecs2::allocInfo_SerializedMaterialParameter, re::ecs2::initInfo_SerializedMaterialParameter, &qword_1EE1AFB50, 0);
        __cxa_guard_release(&qword_1EE1AFBD8);
      }

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v25, qword_1EE1AFBD0);
      if (v156[0])
      {
        if (v156[0])
        {
        }
      }
    }

    v21 = *&v156[8];
LABEL_22:
    if (*v21)
    {
      goto LABEL_23;
    }

    while (1)
    {
      if (v20)
      {
        if (v156[0])
        {
        }
      }

      *v156 = 0;
      *&v156[8] = &str_67;
      *&v127.var0 = 0;
      v28 = re::snapshot::DecoderRaw::beginString(this, &v127);
      if (v28)
      {
        v29 = *&v127.var0;
        v30 = *(this + 3);
        v31 = *(this + 4) - v30;
        if (v31 >= *&v127.var0)
        {
          v31 = *&v127.var0;
        }

        *(this + 3) = &v30[v31];
        v130[0] = 0;
        v130[1] = &str_67;
        v32 = v130[0];
        v33 = v130[1];
        v130[0] = 0;
        v130[1] = &str_67;
        v34 = v156[0];
        v35 = *&v156[8];
        *v156 = v32;
        *&v156[8] = v33;
        if (v34)
        {
          if (v130[0])
          {
            if (v130[0])
            {
            }
          }
        }
      }

      if (*v156 < 0xFFFFFFFFFFFFFFFELL || (v156[0] & 1) != 0)
      {
        v36 = *&v156[8];
        if (*v156 > 1uLL || *&v156[8] == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v36 = *&v156[8];
      }

      if (!*v36)
      {
        if (v156[0])
        {
          if (v156[0])
          {
          }
        }

LABEL_86:
        re::snapshot::DecoderRaw::operator>>(this, (v9 + 512));
        re::snapshot::DecoderRaw::operator>>(this, (v9 + 518));
        v55 = *(v9 + 518);
        if ((v55 & 0x10) != 0)
        {
          if ((atomic_load_explicit(&qword_1EE1AFBE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBE8))
          {
            re::IntrospectionInfo<re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>::get(0, v115);
            qword_1EE1AFBE0 = &qword_1EE1AFF88;
            __cxa_guard_release(&qword_1EE1AFBE8);
          }

          re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v9 + 208, qword_1EE1AFBE0);
          v55 = *(v9 + 518);
          if (v55)
          {
            goto LABEL_95;
          }

LABEL_88:
          if ((v55 & 8) == 0)
          {
            goto LABEL_89;
          }

LABEL_96:
          re::snapshot::operator>><re::snapshot::DecoderRaw,re::StringID,re::StringID>(this, v9 + 160);
          v55 = *(v9 + 518);
          if ((v55 & 2) != 0)
          {
            goto LABEL_97;
          }

LABEL_90:
          if ((v55 & 0x20) != 0)
          {
            goto LABEL_118;
          }

LABEL_91:
          if ((v55 & 4) != 0)
          {
            goto LABEL_148;
          }

          goto LABEL_190;
        }

        if ((v55 & 1) == 0)
        {
          goto LABEL_88;
        }

LABEL_95:
        re::snapshot::operator>><re::snapshot::DecoderRaw,re::StringID,re::StringID>(this, v9 + 16);
        v55 = *(v9 + 518);
        if ((v55 & 8) != 0)
        {
          goto LABEL_96;
        }

LABEL_89:
        if ((v55 & 2) == 0)
        {
          goto LABEL_90;
        }

LABEL_97:
        v129 = 0;
        *v130 = *(v9 + 64);
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *&v131[0] = *(v9 + 80);
        *(v9 + 80) = 0;
        *(v131 + 8) = *(v9 + 88);
        *(v9 + 88) = xmmword_1E3058120;
        DWORD2(v131[1]) = 1;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v9 + 64);
        if (re::snapshot::DecoderRaw::beginDictionary(this, &v129))
        {
          v56 = v129;
          if (v129 == -1)
          {
            *&v127.var0 = 0;
            v127.var1 = &str_67;
            v57 = -2;
            goto LABEL_102;
          }

          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v9 + 64, v129);
          *&v127.var0 = 0;
          v127.var1 = &str_67;
          if (v56)
          {
            v57 = v56 - 1;
LABEL_102:
            v58 = v57 + 1;
            do
            {
              *&v126.var0 = 0;
              v59 = re::snapshot::DecoderRaw::beginString(this, &v126);
              if (v59)
              {
                v60 = *&v126.var0;
                v61 = *(this + 3);
                v62 = *(this + 4) - v61;
                if (v62 >= *&v126.var0)
                {
                  v62 = *&v126.var0;
                }

                *(this + 3) = &v61[v62];
                *v156 = 0;
                *&v156[8] = &str_67;
                v64 = *v156;
                v65 = *&v156[8];
                *v156 = 0;
                *&v156[8] = &str_67;
                v66 = v127.var0;
                v67 = v127.var1;
                *&v127.var0 = v64;
                v127.var1 = v65;
                if (v66)
                {
                  if (v156[0])
                  {
                    if (v156[0])
                    {
                    }
                  }
                }
              }

              v69 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) >> 27));
              re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v130, &v127, v69 ^ (v69 >> 31), v156);
              if (*&v156[12] == 0x7FFFFFFF)
              {
                *v156 = 0;
                re::snapshot::DecoderRaw::operator>>(this, v156);
                v70 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v9 + 64, &v127, v156);
              }

              else
              {
                v71 = *&v131[0] + 32 * *&v156[12];
                re::snapshot::DecoderRaw::operator>>(this, (v71 + 24));
                v70 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v9 + 64, &v127, (v71 + 24));
              }

              --v58;
            }

            while (v58);
            if (*&v127.var0)
            {
              if (*&v127.var0)
              {
              }
            }
          }
        }

        re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v130);
        v55 = *(v9 + 518);
        if ((v55 & 0x20) == 0)
        {
          goto LABEL_91;
        }

LABEL_118:
        v129 = 0;
        *v130 = *(v9 + 256);
        *(v9 + 256) = 0;
        *(v9 + 264) = 0;
        *&v131[0] = *(v9 + 272);
        *(v9 + 272) = 0;
        *(v131 + 8) = *v123;
        *v123 = xmmword_1E3058120;
        DWORD2(v131[1]) = 1;
        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v9 + 256);
        if (re::snapshot::DecoderRaw::beginDictionary(this, &v129))
        {
          v72 = v129;
          if (v129 == -1)
          {
            *&v126.var0 = 0;
            v126.var1 = &str_67;
            v73 = -2;
            goto LABEL_123;
          }

          re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v9 + 256, v129);
          *&v126.var0 = 0;
          v126.var1 = &str_67;
          if (v72)
          {
            v73 = v72 - 1;
LABEL_123:
            v74 = v73 + 1;
            do
            {
              *&v127.var0 = 0;
              v75 = re::snapshot::DecoderRaw::beginString(this, &v127);
              if (v75)
              {
                v76 = *&v127.var0;
                v77 = *(this + 3);
                v78 = *(this + 4) - v77;
                if (v78 >= *&v127.var0)
                {
                  v78 = *&v127.var0;
                }

                *(this + 3) = &v77[v78];
                *v156 = 0;
                *&v156[8] = &str_67;
                v80 = *v156;
                v81 = *&v156[8];
                *v156 = 0;
                *&v156[8] = &str_67;
                v82 = v126.var0;
                v83 = v126.var1;
                *&v126.var0 = v80;
                v126.var1 = v81;
                if (v82)
                {
                  if (v156[0])
                  {
                    if (v156[0])
                    {
                    }
                  }
                }
              }

              v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) >> 27));
              re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v130, &v126, v85 ^ (v85 >> 31), v156);
              if (*&v156[12] == 0x7FFFFFFF)
              {
                v156[0] = 0;
                re::snapshot::operator>><re::snapshot::DecoderRaw,re::ecs2::SerializableParameterBinding>(this, v156);
                *&v127.var0 = 0;
                v127.var1 = 0;
                v128 = 0;
                v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) >> 27));
                v87 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 256, &v126, v86 ^ (v86 >> 31), &v127);
                if (HIDWORD(v127.var1) == 0x7FFFFFFF)
                {
                  v88 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v9 + 256, v127.var1, *&v127.var0);
                  re::StringID::StringID((v88 + 8), &v126);
                  v87 = re::Optional<re::ecs2::SerializableParameterBinding>::Optional(v88 + 24, v156);
                  ++*(v9 + 296);
                }

                if (v156[0] == 1)
                {
                  if (v156[32])
                  {
                    if (v156[32])
                    {
                    }
                  }

                  *&v156[32] = 0;
                  v157 = &str_67;
                  if (v156[16])
                  {
                    if (v156[16])
                    {
                    }
                  }
                }
              }

              else
              {
                v89 = *&v131[0] + 72 * *&v156[12];
                re::snapshot::operator>><re::snapshot::DecoderRaw,re::ecs2::SerializableParameterBinding>(this, v89 + 24);
                memset(v156, 0, 24);
                v90 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v126.var0 >> 31) ^ (*&v126.var0 >> 1))) >> 27));
                v87 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 256, &v126, v90 ^ (v90 >> 31), v156);
                if (*&v156[12] == 0x7FFFFFFF)
                {
                  v87 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::ecs2::SerializableParameterBinding>>(v9 + 256, v156, &v126, (v89 + 24));
                }
              }

              --v74;
            }

            while (v74);
            if (*&v126.var0)
            {
              if (*&v126.var0)
              {
              }
            }
          }
        }

        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v130);
        if ((*(v9 + 518) & 4) != 0)
        {
LABEL_148:
          v129 = 0;
          *v130 = *(v9 + 112);
          *(v9 + 112) = 0;
          *(v9 + 120) = 0;
          *&v131[0] = *(v9 + 128);
          *(v9 + 128) = 0;
          *(v131 + 8) = *(v9 + 136);
          *(v9 + 136) = xmmword_1E3058120;
          DWORD2(v131[1]) = 1;
          re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v9 + 112);
          if (!re::snapshot::DecoderRaw::beginDictionary(this, &v129))
          {
            goto LABEL_189;
          }

          v91 = v129;
          if (v129 != -1)
          {
            re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v9 + 112, v129);
            *&v127.var0 = 0;
            v127.var1 = &str_67;
            v129 = v91 - 1;
            if (v91)
            {
              goto LABEL_153;
            }

LABEL_189:
            re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v130);
            goto LABEL_190;
          }

          *&v127.var0 = 0;
          v127.var1 = &str_67;
          v129 = -2;
LABEL_153:
          while (2)
          {
            *&v126.var0 = 0;
            v92 = re::snapshot::DecoderRaw::beginString(this, &v126);
            if (v92)
            {
              v93 = *&v126.var0;
              v94 = *(this + 3);
              v95 = *(this + 4) - v94;
              if (v95 >= *&v126.var0)
              {
                v95 = *&v126.var0;
              }

              *(this + 3) = &v94[v95];
              *v156 = 0;
              *&v156[8] = &str_67;
              v97 = *v156;
              v98 = *&v156[8];
              *v156 = 0;
              *&v156[8] = &str_67;
              v99 = v127.var0;
              v100 = v127.var1;
              *&v127.var0 = v97;
              v127.var1 = v98;
              if (v99)
              {
                if (v156[0])
                {
                  if (v156[0])
                  {
                  }
                }
              }
            }

            v102 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v130, &v127, v102 ^ (v102 >> 31), v156);
            if (*&v156[12] == 0x7FFFFFFF)
            {
              v103 = *(this + 3);
              if (*(this + 4) == v103)
              {
                re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
              }

              else
              {
                v104 = *v103;
                *(this + 3) = v103 + 1;
                if (v104)
                {
                  *v156 = 84148994;
                  if ((atomic_load_explicit(&qword_1EE1AFC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC08))
                  {
                    qword_1EE1AFC00 = re::mtl::introspect_TextureSwizzleChannels(0);
                    __cxa_guard_release(&qword_1EE1AFC08);
                  }

                  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v156, qword_1EE1AFC00);
                  LODWORD(v123) = *v156;
                  v105 = 1;
LABEL_173:
                  memset(v156, 0, 24);
                  v110 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) >> 27));
                  v111 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 112, &v127, v110 ^ (v110 >> 31), v156);
                  if (*&v156[12] == 0x7FFFFFFF)
                  {
                    v112 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v9 + 112, *&v156[8], *v156);
                    v111 = re::StringID::StringID((v112 + 8), &v127);
                    *(v112 + 24) = v105;
                    if (v105)
                    {
                      *(v112 + 25) = v123;
                    }

                    ++*(v9 + 152);
                  }

LABEL_180:
                  if (!v129--)
                  {
                    if (*&v127.var0)
                    {
                      if (*&v127.var0)
                      {
                      }
                    }

                    goto LABEL_189;
                  }

                  continue;
                }
              }

              v105 = 0;
              goto LABEL_173;
            }

            break;
          }

          v106 = *&v131[0] + 32 * *&v156[12];
          v107 = *(this + 3);
          if (*(this + 4) == v107)
          {
            re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
          }

          else
          {
            v108 = *v107;
            *(this + 3) = v107 + 1;
            if (v108)
            {
              *v156 = 84148994;
              if ((atomic_load_explicit(&qword_1EE1AFC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC08))
              {
                qword_1EE1AFC00 = re::mtl::introspect_TextureSwizzleChannels(0);
                __cxa_guard_release(&qword_1EE1AFC08);
              }

              re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, v156, qword_1EE1AFC00);
              v109 = *v156;
              if ((*(v106 + 24) & 1) == 0)
              {
                *(v106 + 24) = 1;
              }

              *(v106 + 25) = v109;
            }
          }

          memset(v156, 0, 24);
          v113 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v127.var0 >> 31) ^ (*&v127.var0 >> 1))) >> 27));
          v111 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 112, &v127, v113 ^ (v113 >> 31), v156);
          if (*&v156[12] == 0x7FFFFFFF)
          {
            v111 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::mtl::TextureSwizzleChannels>>(v9 + 112, v156, &v127, (v106 + 24));
          }

          goto LABEL_180;
        }

LABEL_190:
        *(v9 + 518) = 0;
        v8 = v124;
        v6 = a2;
        v9 = *(a2 + 6);
        if (v9 <= v124)
        {
          goto LABEL_216;
        }

        re::snapshot::DecoderRaw::operator>>(this, (*(a2 + 8) + 32 * v124 + 16));
        v124 = 0;
        re::snapshot::DecoderRaw::operator>>(this, &v124);
        v8 = v124;
        if ((v124 & 0x80000000) != 0)
        {
          return;
        }

        goto LABEL_4;
      }

LABEL_32:
      v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v156 >> 31) ^ (*v156 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v156 >> 31) ^ (*v156 >> 1))) >> 27));
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 304, v156, v27 ^ (v27 >> 31), v130);
      v12 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v9 + 304, v130);
      v20 = v156[0];
    }
  }
}

void re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(re::ecs2::MaterialParameterBlockArrayComponent *this, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(this + 32, a2);
  if (v4 < a2)
  {
    v6 = 32 * v4;
    do
    {
      if (*(this + 6) <= v4)
      {
        memset(v8, 0, sizeof(v8));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(this + 8) + v6;
      re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock>(v5, v8);
      ++*(v7 + 16);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, *&v8[0]);
      *(v7 + 8) = 0;
      if (*&v8[0])
      {
      }

      ++v4;
      v6 += 32;
    }

    while (a2 != v4);
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1AFC88, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1AFC88);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AFE70);
      qword_1EE1AFE70 = &unk_1F5CF8B60;
      __cxa_guard_release(&qword_1EE1AFC88);
    }
  }

  if ((byte_1EE1AFB3A & 1) == 0)
  {
    v1 = qword_1EE1AFB98;
    if (qword_1EE1AFB98 || (v1 = re::ecs2::allocInfo_SerializableMaterialParameterBlock(a1), qword_1EE1AFB98 = v1, re::ecs2::initInfo_SerializableMaterialParameterBlock(v1, v2), (byte_1EE1AFB3A & 1) == 0))
    {
      byte_1EE1AFB3A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AFE70, 0);
      qword_1EE1AFE80 = 0x2800000003;
      dword_1EE1AFE88 = v3;
      word_1EE1AFE8C = 0;
      *&xmmword_1EE1AFE90 = 0;
      *(&xmmword_1EE1AFE90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AFEA0 = v1;
      qword_1EE1AFEA8 = 0;
      qword_1EE1AFE70 = &unk_1F5CF8B60;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1AFE70, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlock>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1AFE90 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1AFC90, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1AFC90);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AFEB0);
      qword_1EE1AFEB0 = &unk_1F5CF8BF8;
      __cxa_guard_release(&qword_1EE1AFC90);
    }
  }

  if ((byte_1EE1AFB3B & 1) == 0)
  {
    v1 = qword_1EE1AFBB0;
    if (qword_1EE1AFBB0 || (v1 = re::ecs2::allocInfo_SerializableMaterialParameterBlockHandle(a1), qword_1EE1AFBB0 = v1, re::ecs2::initInfo_SerializableMaterialParameterBlockHandle(v1, v2), (byte_1EE1AFB3B & 1) == 0))
    {
      byte_1EE1AFB3B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AFEB0, 0);
      qword_1EE1AFEC0 = 0x2800000003;
      dword_1EE1AFEC8 = v3;
      word_1EE1AFECC = 0;
      *&xmmword_1EE1AFED0 = 0;
      *(&xmmword_1EE1AFED0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AFEE0 = v1;
      qword_1EE1AFEE8 = 0;
      qword_1EE1AFEB0 = &unk_1F5CF8BF8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1AFEB0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1AFED0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

uint64_t re::ecs2::MaterialParameterBlockArrayComponentVersionUtilities::downgradeMaterialParameterBlockArrayComponentFromFall2023@<X0>(re::ecs2::MaterialParameterBlockArrayComponentVersionUtilities *this@<X0>, _BYTE *a2@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(this + 6);
  result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::resize(this + 14, v6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = *(this + 6);
      if (v9 <= i)
      {
        goto LABEL_47;
      }

      v10 = *(this + 8) + 32 * i;
      v11 = *v10;
      v12 = *v10;
      if (!*v10)
      {
        v12 = *(v10 + 8);
      }

      v13 = *(v12 + 336);
      if (v13)
      {
        v14 = 0;
        v15 = *(v12 + 320);
        do
        {
          if ((*v15 & 0x80000000) != 0)
          {
            goto LABEL_12;
          }

          v15 += 80;
          ++v14;
        }

        while (v13 != v14);
        LODWORD(v14) = *(v12 + 336);
      }

      else
      {
        LODWORD(v14) = 0;
      }

LABEL_12:
      if (v14 == v13)
      {
        goto LABEL_35;
      }

      do
      {
        v4 = v14;
        v16 = *(v12 + 320) + 320 * v14;
        v17 = *(v16 + 32);
        if (v17 == 21)
        {
          v9 = *(this + 6);
          if (v9 <= i)
          {
            goto LABEL_44;
          }

          v29 = *(this + 8) + 32 * i;
          v30 = *v29;
          if (!*v29)
          {
            v30 = *(v29 + 8);
          }

          re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(v30, *(v16 + 16), v38);
          v40 = *&v38[4];
          v41 = v39;
          v9 = *(this + 6);
          if (v9 <= i)
          {
            goto LABEL_45;
          }

          v31 = *(this + 8) + 32 * i;
          ++*(v31 + 16);
          v32 = *v31;
          v33 = *(*(v12 + 320) + 320 * v14 + 16);
          re::ColorGamut4F::as(&v40, 0, 3, &v47);
          *v42 = v47;
          v25 = v42;
          v26 = v32;
          v27 = v33;
          v28 = 34;
        }

        else
        {
          if (v17 != 20)
          {
            goto LABEL_26;
          }

          v9 = *(this + 6);
          if (v9 <= i)
          {
            *&v40 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_44:
            *&v40 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            *v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_46:
            *v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_47:
            *v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v9;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            *v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_49:
            *v38 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v47 = 0u;
            v48 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v42 = 136315906;
            *&v42[4] = "operator[]";
            *&v42[12] = 1024;
            *&v42[14] = 789;
            v43 = 2048;
            v44 = i;
            v45 = 2048;
            v46 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v18 = *(this + 8) + 32 * i;
          v19 = *v18;
          if (!*v18)
          {
            v19 = *(v18 + 8);
          }

          re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(v19, *(v16 + 16), v38);
          v40 = *&v38[4];
          v9 = *(this + 6);
          if (v9 <= i)
          {
            goto LABEL_46;
          }

          v20 = *(this + 8) + 32 * i;
          ++*(v20 + 16);
          v21 = *v20;
          v22 = *(*(v12 + 320) + 320 * v14 + 16);
          *&v23 = re::ColorGamut3F::as(&v40, 0, 3);
          DWORD2(v23) = v24;
          v47 = v23;
          v25 = &v47;
          v26 = v21;
          v27 = v22;
          v28 = 33;
        }

        result = re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v26, v27, v28, v25);
LABEL_26:
        v34 = *(v12 + 336);
        if (v34 <= v14 + 1)
        {
          v35 = v14 + 1;
        }

        else
        {
          v35 = *(v12 + 336);
        }

        while (v35 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(*(v12 + 320) + 320 * v14) & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v14) = v35;
LABEL_33:
        ;
      }

      while (v14 != v34);
      v11 = *v10;
LABEL_35:
      if (!v11)
      {
        v11 = *(v10 + 8);
      }

      v4 = *(this + 16);
      if (v4 <= i)
      {
        goto LABEL_48;
      }

      v36 = *(this + 18) + 520 * i;
      if (v36 != v11)
      {
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v36 + 16), v11 + 16);
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v36 + 64), v11 + 64);
        re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v36 + 112), v11 + 112);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v36 + 160), v11 + 160);
        re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(v36 + 208, v11 + 208);
        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v36 + 256, v11 + 256);
        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v36 + 304), v11 + 304);
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v36 + 352, v11 + 352);
        result = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v36 + 400, v11 + 400);
        *(v36 + 516) = *(v11 + 516);
        *(v36 + 512) = 0;
        *(v36 + 496) = *(v11 + 496);
        *(v36 + 518) = *(v11 + 518);
        v4 = *(this + 16);
      }

      if (v4 <= i)
      {
        goto LABEL_49;
      }

      *(*(this + 18) + 520 * i + 512) = *(v10 + 16);
    }
  }

  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_MaterialParameterBlockArrayComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0308, "MaterialParameterBlockArrayComponent");
    __cxa_guard_release(&qword_1EE1AFBC0);
  }

  return &unk_1EE1B0308;
}

void re::ecs2::initInfo_MaterialParameterBlockArrayComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x33A7E1F6E0F9D61ELL;
  v16[1] = "MaterialParameterBlockArrayComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AFBB8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AFBB8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "ecs2::Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AFCC0 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>>::get(v9);
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "blocks";
      *(v10 + 16) = &qword_1EE1AFE70;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x7000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1AFCC8 = v10;
      v11 = re::introspectionAllocator(v10);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>>::get(v11);
      v12 = (*(*v11 + 32))(v11, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "blockHandles";
      *(v12 + 16) = &qword_1EE1AFEB0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AFCD0 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = (*(*v13 + 32))(v13, 64, 8);
      *v14 = 6;
      *(v14 + 8) = 1;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      *(v14 + 48) = re::ecs2::MaterialParameterBlockArrayComponentVersionUtilities::downgradeMaterialParameterBlockArrayComponentFromFall2023;
      *(v14 + 56) = 2;
      qword_1EE1AFCD8 = v14;
      __cxa_guard_release(&qword_1EE1AFBB8);
    }
  }

  *(this + 2) = 0x9800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AFCC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialParameterBlockArrayComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialParameterBlockArrayComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialParameterBlockArrayComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialParameterBlockArrayComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs236MaterialParameterBlockArrayComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::MaterialParameterBlockArrayComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDE148;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 144) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MaterialParameterBlockArrayComponent>(uint64_t a1)
{
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
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
  *v1 = &unk_1F5CDE148;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 144) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  return result;
}

void re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + v8);
      if (v11)
      {

        *(v10 + v8) = 0;
        v4 = *(a1 + 16);
      }

      ++v9;
      v8 += 32;
    }

    while (v9 < v4);
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 1;
        v7[3] = 0;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::ecs2::MaterialParameterBlockArrayComponent::updateParameterBlockValue(re::ecs2::MaterialParameterBlockArrayComponent *this, const re::RenderManager *a2, const char **a3, re::ecs2::SerializedMaterialParameter *a4, unint64_t a5, re::ecs2::Scene *a6, BOOL *a7)
{
  v104 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  v8 = *(this + 11);
  if (v8 <= a5)
  {
    v92 = 0;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v97 = 136315906;
    *&v97[4] = "operator[]";
    v98 = 1024;
    v99 = 789;
    v100 = 2048;
    v101 = a5;
    v102 = 2048;
    v103 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(*(this + 13) + 8 * a5);
  v15 = *(a4 + 268);
  if ((v15 & 7) == 0 || (v16 = *(a4 + 34), isParameterType = re::MaterialParameterBlock::keysHash(v14), v16 != isParameterType))
  {
    isParameterType = re::MaterialParameterBlock::handle(v14, a3[1], buf);
    *(a4 + 32) = *buf;
    *(a4 + 264) = *&buf[8];
    *(a4 + 280) = buf[24];
    v15 = *(a4 + 268);
  }

  v18 = *a4;
  if ((v15 & 7) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(a4 + 256, *a4);
    if (!isParameterType)
    {
      return;
    }
  }

  if (v18 <= 47)
  {
    switch(v18)
    {
      case 0:
        v19 = *re::graphicsLogObjects(isParameterType);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *a4;
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unsupported m_material parameter type %hhu", buf, 8u);
        }

        return;
      case 1:
        *buf = *(a4 + 4);
        v24 = &v90;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 4;
        v28 = 1;
        goto LABEL_62;
      case 2:
        buf[0] = *(a4 + 16) != 0;
        v24 = &v91;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 1;
        v28 = 2;
        goto LABEL_62;
      case 3:
        *buf = *(a4 + 4);
        v24 = &v89;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 4;
        v28 = 3;
        goto LABEL_62;
      case 4:
        *buf = *(a4 + 2);
        v24 = &v86;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 8;
        v28 = 4;
        goto LABEL_62;
      case 5:
        *buf = *(a4 + 1);
        v24 = &v82;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 16;
        v28 = 5;
        goto LABEL_62;
      case 6:
        *buf = *(a4 + 1);
        v24 = &v78;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 16;
        v28 = 6;
        goto LABEL_62;
      case 7:
        *buf = *(a4 + 4);
        v24 = &v88;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 4;
        v28 = 7;
        goto LABEL_62;
      case 8:
        *buf = *(a4 + 2);
        v24 = &v85;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 8;
        v28 = 8;
        goto LABEL_62;
      case 9:
        *buf = *(a4 + 1);
        v24 = &v81;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 16;
        v28 = 9;
        goto LABEL_62;
      case 10:
        *buf = *(a4 + 1);
        v24 = &v77;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 16;
        v28 = 10;
        goto LABEL_62;
      case 20:
        if ((*(a4 + 248) & 1) == 0)
        {
          *(a4 + 248) = 1;
        }

        v31 = *(a4 + 2);
        v32 = *(a4 + 6) | (*(a4 + 32) << 32);
        v33 = &v76;
        goto LABEL_41;
      case 21:
        if ((*(a4 + 248) & 1) == 0)
        {
          *(a4 + 248) = 1;
        }

        v34 = *(a4 + 2);
        v35 = HIDWORD(*(a4 + 3));
        *(&v36 + 1) = *(a4 + 3);
        *&v36 = v34;
        v37 = *(a4 + 8);
        *&buf[4] = vzip1_s32((v36 >> 32), *(&v36 + 8));
        *buf = v34;
        *&buf[12] = v35;
        buf[16] = v37;
        v38 = &v75;
        goto LABEL_46;
      case 32:
        *buf = *(a4 + 2);
        v24 = &v87;
        v25 = (a4 + 256);
        v26 = v14;
        v27 = 8;
        v28 = 32;
        goto LABEL_62;
      case 33:
        if (*(a4 + 248) != 1)
        {
          v51 = *(a4 + 3);
          *buf = *(a4 + 2);
          *&buf[8] = v51;
          v24 = &v83;
          v25 = (a4 + 256);
          v26 = v14;
          v27 = 16;
          v28 = 33;
          goto LABEL_62;
        }

        v31 = *(a4 + 2);
        v32 = *(a4 + 6);
        v33 = &v84;
LABEL_41:
        re::MaterialParameterBlock::setColorGamut3F(v14, a4 + 32, v31, v32, v33);
        return;
      case 34:
        if (*(a4 + 248) != 1)
        {
          v52 = *(a4 + 3);
          *buf = *(a4 + 2);
          *&buf[8] = v52;
          v24 = &v79;
          v25 = (a4 + 256);
          v26 = v14;
          v27 = 16;
          v28 = 34;
          goto LABEL_62;
        }

        *buf = *(a4 + 1);
        buf[16] = 0;
        v38 = &v80;
LABEL_46:
        re::MaterialParameterBlock::setColorGamut4F(v14, a4 + 32, buf, v38);
        break;
      default:
        return;
    }

    return;
  }

  if (v18 > 63)
  {
    if (v18 != 64)
    {
      if (v18 != 128)
      {
        if (v18 != 192 || !a2)
        {
          return;
        }

        v29 = *(a2 + 5);
        re::ecs2::SerializedMaterialParameter::asSampler(buf, a4);
        re::OptionalMaterialSamplerData::makeSamplerData(buf, v97);
        re::MaterialSamplerData::makeDescriptor(v97, &v66);
        v67 = [*v29 newSamplerStateWithDescriptor_];
        re::MaterialParameterBlock::setSampler(v14, a4 + 256, &v67, v68);
        v68[0] = 0;
        if (v67)
        {

          v67 = 0;
        }

        v30 = v66;
        if (!v66)
        {
          return;
        }

        goto LABEL_93;
      }

      if (!a2 || !_os_feature_enabled_impl())
      {
        return;
      }

      *buf = 0;
      if ((*(a4 + 268) & 7) != 0)
      {
        v41 = re::MaterialParameterBlock::bufferValue(v14, a4 + 256);
        NS::SharedPtr<MTL::Buffer>::operator=(buf, v41);
        v42 = [*buf length];
        v43 = *buf;
        if (v42 == *(a4 + 28))
        {
          if (*buf)
          {
            goto LABEL_90;
          }
        }

        else
        {

          *buf = 0;
        }
      }

      v58 = *(a2 + 26);
      *v97 = [v58 newBufferWithLength:*(a4 + 28) options:0];
      NS::SharedPtr<MTL::Texture>::operator=(buf, v97);
      if (*v97)
      {
      }

      v43 = *buf;
LABEL_90:
      memcpy([v43 contents], *(a4 + 30), *(a4 + 28));
      v64 = *a3 >> 1;
      v60[0] = *buf;
      v61 = 0;
      v62 = 0;
      v63 = [*buf length];
      v59 = re::MaterialParameterBlock::setBuffer(v14, &v64, v60, v65);
      v65[0] = 0;
      if (v61 != -1)
      {
        (off_1F5CF83C0[v61])(v97, v60, v59);
      }

      v61 = -1;
      v30 = *buf;
      if (!*buf)
      {
        return;
      }

LABEL_93:

      return;
    }

    v44 = re::AssetHandle::AssetHandle(buf, (a4 + 80));
    shouldPerformUpdate = re::AssetHandle::loadedAsset<re::TextureAsset>(v44);
    if (shouldPerformUpdate)
    {
      v47 = shouldPerformUpdate;
      if (a6 && (v48 = *(a6 + 47), (v48 & 0xFFFFFF00000000) != 0))
      {
        v49 = HIDWORD(v48);
        shouldPerformUpdate = *(a6 + 7);
        if (shouldPerformUpdate)
        {
          shouldPerformUpdate = (*(*shouldPerformUpdate + 304))(shouldPerformUpdate, *(a6 + 47));
          v50 = *(shouldPerformUpdate + 8) == 2;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        LODWORD(v49) = 0;
        v50 = 0;
        LODWORD(v48) = -1;
      }

      v53 = v48 | (v49 << 32);
      *(v47 + 64) = v53;
      v54 = *(v47 + 56);
      if (v54)
      {
        shouldPerformUpdate = re::DrawableQueue::shouldPerformUpdate(*(v47 + 56), v53, v50);
        if ((shouldPerformUpdate & 1) == 0)
        {
          re::DrawableQueue::setActiveRealityRendererScene(v54, v53);
        }
      }

      if (!a2)
      {
        goto LABEL_84;
      }

      if (*(v47 + 120))
      {
        v55 = *re::graphicsLogObjects(shouldPerformUpdate);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = re::AssetHandle::assetInfo(buf);
          if (v56[17])
          {
            v57 = v56[18];
          }

          else
          {
            v57 = v56 + 137;
          }

          *v97 = 136315138;
          *&v97[4] = v57;
          _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Invalid material parameter: texture not backed by Metal: %s", v97, 0xCu);
        }

        goto LABEL_85;
      }

      if ((re::MaterialAsset::isColorTextureParameter(a3, v46) || *(a4 + 248) == 1) && re::TextureAsset::isLegacyLinearFormatWithSRGBData(v47))
      {
        if (*(v47 + 104) && *(v47 + 96) || (re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(v47, a2), *(v47 + 104)) && *(v47 + 96))
        {
          re::MaterialParameterBlock::setTextureHandle(v14, a4 + 256, (v47 + 96), v71);
          v71[0] = 0;
        }

        else
        {
          re::MaterialParameterBlock::setTextureHandle(v14, a4 + 256, (v47 + 8), v70);
          v70[0] = 0;
        }
      }

      else
      {
LABEL_84:
        re::MaterialParameterBlock::setTextureHandle(v14, a4 + 256, (v47 + 8), v69);
        v69[0] = 0;
      }
    }

    else
    {
      re::AssetHandle::loadAsync(buf);
      *a7 = 1;
    }

LABEL_85:
    re::AssetHandle::~AssetHandle(buf);
    return;
  }

  switch(v18)
  {
    case '0':
      *buf = *(a4 + 1);
      v24 = &v74;
      v25 = (a4 + 256);
      v26 = v14;
      v27 = 16;
      v28 = 48;
      break;
    case '1':
      v39 = *(a4 + 2);
      v40 = *(a4 + 3);
      *buf = *(a4 + 1);
      *&buf[16] = v39;
      v94 = v40;
      v24 = &v73;
      v25 = (a4 + 256);
      v26 = v14;
      v27 = 48;
      v28 = 49;
      break;
    case '2':
      v21 = *(a4 + 2);
      v22 = *(a4 + 3);
      v23 = *(a4 + 4);
      *buf = *(a4 + 1);
      *&buf[16] = v21;
      v94 = v22;
      v95 = v23;
      v24 = &v72;
      v25 = (a4 + 256);
      v26 = v14;
      v27 = 64;
      v28 = 50;
      break;
    default:
      return;
  }

LABEL_62:
  re::MaterialParameterBlock::setConstant(v27, buf, v26, v25, v28, v24);
}

char *re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(char *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this;
    re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize((this + 32), v1);
    v3 = 0;
    v4 = 0;
    for (i = 0; i != v1; ++i)
    {
      if (*(v2 + 48) <= i)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v8 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v8 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(v2 + 128) <= i)
      {
        goto LABEL_11;
      }

      v6 = *(v2 + 64) + v4;
      re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock&>((*(v2 + 144) + v3), &v8);
      ++*(v6 + 16);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6, v8);
      *(v6 + 8) = 0;
      if (v8)
      {
      }

      v4 += 32;
      v3 += 520;
    }

    v7 = *(v2 + 128);
    *(v2 + 128) = 0;
    this = re::ObjectHelper::destroy<re::ecs2::SerializableMaterialParameterBlock>(*(v2 + 144), (*(v2 + 144) + 520 * v7));
    ++*(v2 + 136);
  }

  return this;
}

uint64_t re::ecs2::MaterialParameterBlockArrayComponent::onComponentDidAddEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    v3 = *(a1 + 208);
    if (v3)
    {
      v4 = *(v3 + 48);
      if (v4)
      {
        v5 = 0;
        v6 = *(v3 + 64);
        v7 = v4 - 1;
        v8 = (v4 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL;
        v9 = v8 - (v7 & 1) + 2;
        v10 = vdupq_n_s64(v8);
        v11 = (v6 + 56);
        do
        {
          v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v5), xmmword_1E3049620)));
          if (v12.i8[0])
          {
            *(v11 - 4) = 0;
          }

          if (v12.i8[4])
          {
            *v11 = 0;
          }

          v5 += 2;
          v11 += 8;
        }

        while (v9 != v5);
      }
    }
  }

  return 0;
}

BOOL re::ecs2::MaterialParameterBlockArrayComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v146 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  v123 = (a1 + 8);
  if (v8 && *(v8 + 112))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v139, a5, 0);
    v136 = a4;
    v137 = *v139;
    v138 = *&v139[8];
    if (*v139 != v5 || *&v139[8] != 0xFFFFFFFFLL)
    {
      v115 = v5;
      v116 = a3;
      do
      {
        v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v136);
        re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(v10);
        v11 = *(v10 + 48);
        if (*(v10 + 88) < v11)
        {
          re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(v10 + 72, *(v10 + 48));
          v11 = *(v10 + 48);
        }

        if (*v123)
        {
          if (!v11)
          {
            goto LABEL_197;
          }

          v12 = 0;
          v13 = *(v10 + 64);
          v14 = 1;
          while (1)
          {
            if (*(v13 + 32 * v12 + 16))
            {
              v15 = v11;
              v11 = *(v10 + 88);
              if (v11 <= v12)
              {
                goto LABEL_220;
              }

              v11 = v15;
              if (!*(*(v10 + 104) + 8 * v12))
              {
                re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v123, &v135);
                v11 = *(v10 + 88);
                if (v11 <= v12)
                {
                  goto LABEL_221;
                }

                v16 = *(v10 + 104);
                v17 = *(v16 + 8 * v12);
                *(v16 + 8 * v12) = v135;
                v135 = v17;
                if (v17)
                {
                }

                v11 = *(v10 + 48);
                if (v11 <= v12)
                {
                  goto LABEL_222;
                }

                v13 = *(v10 + 64);
                v18 = v13 + 32 * v12;
                *(v18 + 16) = 1;
                *(v18 + 24) = 0;
              }
            }

            v12 = v14;
            if (v11 <= v14++)
            {
              goto LABEL_24;
            }
          }
        }

        if (!v11)
        {
          v5 = v115;
LABEL_197:
          v101 = v136;
          v102 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v137);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v101, v102, *(a3 + 32));
          if ((v11 & 1) == 0)
          {
            goto LABEL_199;
          }

LABEL_198:
          re::ecs2::Component::markDirty(v10);
          goto LABEL_199;
        }

LABEL_24:
        v117 = 0;
        v20 = 0;
        v120 = 1;
        v122 = v10;
        v118 = v11;
        do
        {
          v12 = *(v10 + 48);
          if (v12 <= v20)
          {
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            v112 = v20;
            v20 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v112;
            *&v145[8] = 2048;
            *&v145[10] = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_217:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            v113 = v20;
            v20 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v113;
            *&v145[8] = 2048;
            *&v145[10] = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_218:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            v114 = v20;
            v20 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v114;
            *&v145[8] = 2048;
            *&v145[10] = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_219:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v20;
            *&v145[8] = 2048;
            *&v145[10] = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_220:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v12;
            *&v145[8] = 2048;
            *&v145[10] = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_221:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v12;
            *&v145[8] = 2048;
            *&v145[10] = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_222:
            v132 = 0;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            *v139 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v144 = 136315906;
            *&v144[4] = "operator[]";
            *&v144[12] = 1024;
            *&v144[14] = 789;
            *&v144[18] = 2048;
            *v145 = v12;
            *&v145[8] = 2048;
            *&v145[10] = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v12 = *(v10 + 88);
          if (v12 <= v20)
          {
            goto LABEL_217;
          }

          v11 = *(*(v10 + 64) + 32 * v20);
          v12 = *(*(v10 + 104) + 8 * v20);
          if (v12)
          {
            v21 = (v12 + 8);
          }

          v119 = *(v11 + 516);
          if (v119)
          {
            goto LABEL_32;
          }

          v22 = v10;
          v10 = *(v10 + 48);
          if (v10 <= v20)
          {
            goto LABEL_218;
          }

          v10 = v22;
          if (*(*(v22 + 64) + 32 * v20 + 16) != *(*(v22 + 64) + 32 * v20 + 20))
          {
LABEL_32:
            if (!v12)
            {
              v11 = v118;
              goto LABEL_191;
            }

            *(v11 + 516) = 0;
            v23 = v10;
            v10 = *(v10 + 48);
            if (v10 <= v20)
            {
              goto LABEL_219;
            }

            v124 = v20;
            *(*(v23 + 64) + 32 * v20 + 20) = *(*(v23 + 64) + 32 * v20 + 16);
            v24 = *(v11 + 336);
            if (v24)
            {
              v25 = 0;
              v26 = *(v11 + 320);
              while ((*v26 & 0x80000000) == 0)
              {
                v26 += 80;
                if (v24 == ++v25)
                {
                  LODWORD(v25) = *(v11 + 336);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v25) = 0;
            }

LABEL_49:
            while (v25 != v24)
            {
              v27 = *(v11 + 320) + 320 * v25;
              v139[0] = 0;
              re::ecs2::MaterialParameterBlockArrayComponent::updateParameterBlockValue(v122, *v123, (v27 + 8), (v27 + 32), v124, *(a3 + 8), v139);
              if (v139[0])
              {
                v120 = 0;
                *(v11 + 516) = v139[0];
              }

              re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 352, (v27 + 8));
              v28 = *(v11 + 336);
              if (v28 <= v25 + 1)
              {
                v28 = v25 + 1;
              }

              while (v28 - 1 != v25)
              {
                LODWORD(v25) = v25 + 1;
                if ((*(*(v11 + 320) + 320 * v25) & 0x80000000) != 0)
                {
                  goto LABEL_49;
                }
              }

              LODWORD(v25) = v28;
            }

            *v144 = 0;
            *&v144[8] = 0;
            *&v144[16] = 1;
            *&v145[4] = 0;
            *&v145[12] = 0;
            v29 = *(v11 + 384);
            if (v29)
            {
              v30 = 0;
              v31 = *(v11 + 368);
              while (1)
              {
                v32 = *v31;
                v31 += 6;
                if (v32 < 0)
                {
                  break;
                }

                if (v29 == ++v30)
                {
                  LODWORD(v30) = *(v11 + 384);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v30) = 0;
            }

            if (v30 != v29)
            {
              do
              {
                v33 = *(v11 + 368) + 24 * v30;
                v35 = *(v33 + 8);
                v34 = v33 + 8;
                v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v35 >> 31) ^ (v35 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v35 >> 31) ^ (v35 >> 1))) >> 27));
                re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 304, v34, v36 ^ (v36 >> 31), v139);
                if (*&v139[12] == 0x7FFFFFFF)
                {
                  *v139 = *(v34 + 8);
                  re::DynamicOverflowArray<char const*,8ul>::add(v144, v139);
                  re::MaterialParameterBlock::removeParameter(v12, *(v34 + 8));
                }

                v37 = *(v11 + 384);
                if (v37 <= v30 + 1)
                {
                  v37 = v30 + 1;
                }

                while (v37 - 1 != v30)
                {
                  LODWORD(v30) = v30 + 1;
                  if ((*(*(v11 + 368) + 24 * v30) & 0x80000000) != 0)
                  {
                    goto LABEL_65;
                  }
                }

                LODWORD(v30) = v37;
LABEL_65:
                ;
              }

              while (v30 != v29);
              if (v144[16])
              {
                v38 = &v145[4];
              }

              else
              {
                v38 = *&v145[12];
              }

              if (*&v144[8])
              {
                v39 = &v38[*&v144[8]];
                do
                {
                  v40 = *v38;
                  if (*v38)
                  {
                    v41 = *v40;
                    if (*v40)
                    {
                      v42 = v40[1];
                      if (v42)
                      {
                        v43 = (v40 + 2);
                        do
                        {
                          v41 = 31 * v41 + v42;
                          v44 = *v43++;
                          v42 = v44;
                        }

                        while (v44);
                      }
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }

                  *v139 = 2 * v41;
                  *&v139[8] = v40;
                  v45 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(v11 + 352, v139);
                  if (v139[0])
                  {
                    if (v139[0])
                    {
                    }
                  }

                  ++v38;
                }

                while (v38 != v39);
              }
            }

            if (*v123)
            {
              v46 = *(v11 + 48);
              if (v46)
              {
                v47 = 0;
                v48 = *(v11 + 32);
                while (1)
                {
                  v49 = *v48;
                  v48 += 10;
                  if (v49 < 0)
                  {
                    break;
                  }

                  if (v46 == ++v47)
                  {
                    LODWORD(v47) = *(v11 + 48);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v47) = 0;
              }

LABEL_97:
              while (v47 != v46)
              {
                v50 = *(v11 + 32);
                v51 = v50 + 40 * v47;
                re::ecs2::SerializableMaterialParameterBlock::samplerValue(v11, *(v51 + 32), v139);
                if (v139[0])
                {
                  re::OptionalMaterialSamplerData::makeSamplerData(&v139[8], &v132);
                  v131 = *(v50 + 40 * v47 + 8) >> 1;
                  v130 = *(v51 + 24) >> 1;
                  v52 = re::MaterialSamplerData::hash(&v132);
                  re::MaterialParameterBlock::bindTextureToSampler(v12, &v131, &v130, v52);
                  v130 = 0;
                  v131 = 0;
                }

                v53 = *(v11 + 48);
                if (v53 <= v47 + 1)
                {
                  v53 = v47 + 1;
                }

                while (v53 - 1 != v47)
                {
                  LODWORD(v47) = v47 + 1;
                  if ((*(*(v11 + 32) + 40 * v47) & 0x80000000) != 0)
                  {
                    goto LABEL_97;
                  }
                }

                LODWORD(v47) = v53;
              }

              v54 = *(v11 + 96);
              if (v54)
              {
                v55 = 0;
                v56 = *(v11 + 80);
                while (1)
                {
                  v57 = *v56;
                  v56 += 8;
                  if (v57 < 0)
                  {
                    break;
                  }

                  if (v54 == ++v55)
                  {
                    LODWORD(v55) = *(v11 + 96);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v55) = 0;
              }

LABEL_111:
              while (v55 != v54)
              {
                v58 = *(v11 + 80) + 32 * v55;
                v129 = *(v58 + 8) >> 1;
                re::MaterialParameterBlock::setUVIndexForTexture(v12, &v129, *(v58 + 24));
                v129 = 0;
                v59 = *(v11 + 96);
                if (v59 <= v55 + 1)
                {
                  v59 = v55 + 1;
                }

                while (v59 - 1 != v55)
                {
                  LODWORD(v55) = v55 + 1;
                  if ((*(*(v11 + 80) + 32 * v55) & 0x80000000) != 0)
                  {
                    goto LABEL_111;
                  }
                }

                LODWORD(v55) = v59;
              }
            }

            v60 = *(v11 + 240);
            if (v60)
            {
              v61 = 0;
              v62 = *(v11 + 224);
              while (1)
              {
                v63 = *v62;
                v62 += 8;
                if (v63 < 0)
                {
                  break;
                }

                if (v60 == ++v61)
                {
                  LODWORD(v61) = *(v11 + 240);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v61) = 0;
            }

LABEL_119:
            while (v61 != v60)
            {
              v64 = *(v11 + 224) + 32 * v61;
              v66 = *(v64 + 16);
              v65 = v64 + 16;
              v67 = *(v65 - 8);
              if (v66 == 1)
              {
                v68 = *(v65 + 8);
                if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                {
                  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                }

                re::MaterialParameterBlock::addPassTechniqueMapping(v12, v67, v68, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
              }

              else
              {
                if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                {
                  dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                }

                re::MaterialParameterBlock::removePassTechniqueMapping(v12, v67, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
              }

              v69 = *(v11 + 240);
              if (v69 <= v61 + 1)
              {
                v69 = v61 + 1;
              }

              while (v69 - 1 != v61)
              {
                LODWORD(v61) = v61 + 1;
                if ((*(*(v11 + 224) + 32 * v61) & 0x80000000) != 0)
                {
                  goto LABEL_119;
                }
              }

              LODWORD(v61) = v69;
            }

            *&v141 = 0;
            *&v140 = 0;
            memset(v139, 0, sizeof(v139));
            DWORD2(v140) = 0;
            v70 = *(v11 + 288);
            if (v70)
            {
              v71 = 0;
              v72 = *(v11 + 272);
              while (1)
              {
                v73 = *v72;
                v72 += 18;
                if (v73 < 0)
                {
                  break;
                }

                if (v70 == ++v71)
                {
                  LODWORD(v71) = *(v11 + 288);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v71) = 0;
            }

            if (v71 != v70)
            {
              do
              {
                v74 = *(v11 + 272) + 72 * v71;
                v76 = *(v74 + 24);
                v75 = v74 + 24;
                v77 = (v75 - 16);
                if (v76 == 1)
                {
                  re::MaterialParameterBlock::handle(v12, *(v75 - 8), &v132);
                  if ((BYTE4(v133) & 7) == 0)
                  {
                    v128 = *v77 >> 1;
                    re::MaterialParameterBlock::addBinding(v12, &v128, *(v75 + 24), *(v75 + 40), *(v75 + 8));
                    v128 = 0;
                  }
                }

                else
                {
                  v127 = *v77 >> 1;
                  re::MaterialParameterBlock::removeBinding(v12, &v127);
                  v127 = 0;
                  v78 = *(v75 - 8);
                  if (v78)
                  {
                    v79 = *v78;
                    if (*v78)
                    {
                      v80 = v78[1];
                      if (v80)
                      {
                        v81 = (v78 + 2);
                        do
                        {
                          v79 = 31 * v79 + v80;
                          v82 = *v81++;
                          v80 = v82;
                        }

                        while (v82);
                      }
                    }
                  }

                  else
                  {
                    v79 = 0;
                  }

                  v132 = 2 * v79;
                  v133 = v78;
                  v83 = re::DynamicArray<re::StringID>::add(v139, &v132);
                  if (v132)
                  {
                    if (v132)
                    {
                    }
                  }
                }

                v84 = *(v11 + 288);
                if (v84 <= v71 + 1)
                {
                  v84 = v71 + 1;
                }

                while (v84 - 1 != v71)
                {
                  LODWORD(v71) = v71 + 1;
                  if ((*(*(v11 + 272) + 72 * v71) & 0x80000000) != 0)
                  {
                    goto LABEL_159;
                  }
                }

                LODWORD(v71) = v84;
LABEL_159:
                ;
              }

              while (v71 != v70);
              if (v140)
              {
                v85 = v141;
                v86 = 16 * v140;
                do
                {
                  v87 = 0xBF58476D1CE4E5B9 * ((*v85 >> 31) ^ (*v85 >> 1));
                  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11 + 256, v85, (0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) ^ ((0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) >> 31), &v132);
                  v88 = HIDWORD(v133);
                  if (HIDWORD(v133) != 0x7FFFFFFF)
                  {
                    v89 = *(v11 + 272);
                    v90 = *(v89 + 72 * HIDWORD(v133)) & 0x7FFFFFFF;
                    if (v134 == 0x7FFFFFFF)
                    {
                      *(*(v11 + 264) + 4 * v133) = v90;
                      v88 = HIDWORD(v133);
                    }

                    else
                    {
                      *(v89 + 72 * v134) = *(v89 + 72 * v134) & 0x80000000 | v90;
                    }

                    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v89 + 72 * v88);
                    v91 = HIDWORD(v133);
                    *(*(v11 + 272) + 72 * HIDWORD(v133)) = *(*(v11 + 272) + 72 * HIDWORD(v133)) & 0x80000000 | *(v11 + 292);
                    *(v11 + 292) = v91;
                    --*(v11 + 284);
                    ++*(v11 + 296);
                  }

                  v85 += 2;
                  v86 -= 16;
                }

                while (v86);
              }
            }

            v92 = *(v11 + 144);
            if (v92)
            {
              v93 = 0;
              v94 = *(v11 + 128);
              a3 = v116;
              while (1)
              {
                v95 = *v94;
                v94 += 8;
                if (v95 < 0)
                {
                  break;
                }

                if (v92 == ++v93)
                {
                  LODWORD(v93) = *(v11 + 144);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v93) = 0;
              a3 = v116;
            }

LABEL_184:
            while (v93 != v92)
            {
              v96 = *(v11 + 128) + 32 * v93;
              v98 = *(v96 + 24);
              v97 = v96 + 24;
              if (v98 == 1)
              {
                v126 = *(v97 - 16) >> 1;
                v99 = *(v97 + 1);
                v121 = v121 & 0xFFFFFFFF00000000 | v99;
                re::MaterialParameterBlock::setSwizzleForTexture(v12, &v126, v99);
                v126 = 0;
              }

              else
              {
                v125 = *(v97 - 16) >> 1;
                re::MaterialParameterBlock::resetSwizzleForTexture(v12, &v125);
                v125 = 0;
              }

              v100 = *(v11 + 144);
              if (v100 <= v93 + 1)
              {
                v100 = v93 + 1;
              }

              while (v100 - 1 != v93)
              {
                LODWORD(v93) = v93 + 1;
                if ((*(*(v11 + 128) + 32 * v93) & 0x80000000) != 0)
                {
                  goto LABEL_184;
                }
              }

              LODWORD(v93) = v100;
            }

            re::DynamicArray<re::StringID>::deinit(v139);
            if (*v144 && (v144[16] & 1) == 0)
            {
              (*(**v144 + 40))();
            }

            v117 |= v119;
            v10 = v122;
            v20 = v124;
          }

          v11 = v118;
          if (v12)
          {
          }

LABEL_191:
          ++v20;
        }

        while (v20 != v11);
        if (v120)
        {
          v5 = v115;
          LOBYTE(v11) = v117;
          goto LABEL_197;
        }

        v5 = v115;
        if (v117)
        {
          goto LABEL_198;
        }

LABEL_199:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v137);
      }

      while (v137 != v5 || v138 != 0xFFFF || HIWORD(v138) != 0xFFFF);
    }

    return *(v5 + 40) != 0;
  }

  else
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v139, a5, 0);
    v104 = *v139;
    v105 = *&v139[8];
    v106 = *&v139[8];
    *v139 = a4;
    *&v139[8] = v104;
    LODWORD(v140) = v105;
    if (v104 != v5 || v106 != 0xFFFFFFFFLL)
    {
      do
      {
        v108 = *v139;
        v109 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v139[8]);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v108, v109, *(a3 + 40));
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v139[8]);
      }

      while (*&v139[8] != v5 || v140 != 0xFFFF || WORD1(v140) != 0xFFFF);
    }

    return 0;
  }
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

int *re::DynamicOverflowArray<char const*,8ul>::add(int *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v3, v10 + 1);
    v5 = v3[4] + 2;
    v3[4] = v5;
    goto LABEL_15;
  }

  v4 = *(result + 1);
  v5 = result[4];
  if (v5)
  {
    if (v4 - 8 >= 0xFFFFFFFFFFFFFFF7)
    {
      goto LABEL_15;
    }

    v7 = v4 + 1;
    v9 = 16;
    goto LABEL_11;
  }

  v6 = *(result + 3);
  v8 = v4 >= v6;
  v7 = v4 + 1;
  v8 = !v8 || v6 >= v7;
  if (!v8)
  {
    v9 = 2 * v6;
LABEL_11:
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(result, v11);
    v5 = v3[4];
  }

LABEL_15:
  if (v5)
  {
    v12 = v3 + 6;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  v13 = *(v3 + 1);
  v12[v13] = *a2;
  *(v3 + 1) = v13 + 1;
  v3[4] += 2;
  return result;
}

BOOL re::ecs2::MaterialParameterBlockArrayComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v49, a5, 0);
  v54 = a4;
  v55 = v49;
  v56 = v50;
  v46 = a5;
  if (v49 != a5 || v50 != 0xFFFFFFFFLL)
  {
    do
    {
      v8 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v54);
      re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(v8);
      v9 = *(v8 + 48);
      if (!v9)
      {
        goto LABEL_71;
      }

      v10 = *(v8 + 64);
      v47 = &v10[4 * v9];
      v48 = 1;
      do
      {
        v11 = *v10;
        v12 = *v10;
        if (!*v10)
        {
          v12 = v10[1];
        }

        v13 = *(v12 + 516);
        v14 = *(v10 + 4);
        if ((v13 & 1) != 0 || v14 != *(v10 + 5))
        {
          *(v11 + 516) = 0;
          *(v10 + 5) = v14;
          v15 = *(v11 + 336);
          if (v15)
          {
            v16 = 0;
            v17 = *(v11 + 320);
            while ((*v17 & 0x80000000) == 0)
            {
              v17 += 80;
              if (v15 == ++v16)
              {
                LODWORD(v16) = *(v11 + 336);
                break;
              }
            }
          }

          else
          {
            LODWORD(v16) = 0;
          }

LABEL_29:
          while (v16 != v15)
          {
            v18 = *(v11 + 320) + 320 * v16;
            re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(*v10 + 352, (v18 + 8));
            v20 = *(v18 + 32);
            v19 = v18 + 32;
            if (v20 == 64)
            {
              re::AssetHandle::AssetHandle(&v49, (v19 + 80));
              if (!v50 || (v21 = atomic_load((v50 + 896)), v21 != 2) && (v22 = atomic_load((v50 + 896)), v22 != 3))
              {
                re::AssetHandle::loadAsync(&v49);
                *(*v10 + 516) = 1;
                v48 = 2;
              }

              re::AssetHandle::~AssetHandle(&v49);
            }

            v23 = *(v11 + 336);
            if (v23 <= v16 + 1)
            {
              v23 = v16 + 1;
            }

            while (v23 - 1 != v16)
            {
              LODWORD(v16) = v16 + 1;
              if ((*(*(v11 + 320) + 320 * v16) & 0x80000000) != 0)
              {
                goto LABEL_29;
              }
            }

            LODWORD(v16) = v23;
          }

          v49 = 0;
          v50 = 0;
          v51 = 1;
          v52 = 0;
          v53 = 0;
          v24 = *v10;
          if (!*v10)
          {
            v24 = v10[1];
          }

          v25 = *(v24 + 384);
          if (v25)
          {
            v26 = 0;
            v27 = *(v24 + 368);
            while (1)
            {
              v28 = *v27;
              v27 += 6;
              if (v28 < 0)
              {
                break;
              }

              if (v25 == ++v26)
              {
                LODWORD(v26) = *(v24 + 384);
                break;
              }
            }
          }

          else
          {
            LODWORD(v26) = 0;
          }

          if (v26 != v25)
          {
            do
            {
              v29 = *v10;
              if (!*v10)
              {
                v29 = v10[1];
              }

              v30 = *(v24 + 368) + 24 * v26;
              v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v30 + 8) >> 31) ^ (*(v30 + 8) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v30 + 8) >> 31) ^ (*(v30 + 8) >> 1))) >> 27));
              re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v29 + 304, (v30 + 8), v31 ^ (v31 >> 31), &v57);
              if (HIDWORD(v58) == 0x7FFFFFFF)
              {
                v57 = *(v30 + 16);
                re::DynamicOverflowArray<char const*,8ul>::add(&v49, &v57);
              }

              v32 = *(v24 + 384);
              if (v32 <= v26 + 1)
              {
                v32 = v26 + 1;
              }

              while (v32 - 1 != v26)
              {
                LODWORD(v26) = v26 + 1;
                if ((*(*(v24 + 368) + 24 * v26) & 0x80000000) != 0)
                {
                  goto LABEL_49;
                }
              }

              LODWORD(v26) = v32;
LABEL_49:
              ;
            }

            while (v26 != v25);
            if (v51)
            {
              v33 = &v52;
            }

            else
            {
              v33 = v53;
            }

            if (v50)
            {
              v34 = &v33[v50];
              do
              {
                v35 = *v33;
                if (*v33)
                {
                  v36 = *v35;
                  if (*v35)
                  {
                    v37 = v35[1];
                    if (v37)
                    {
                      v38 = (v35 + 2);
                      do
                      {
                        v36 = 31 * v36 + v37;
                        v39 = *v38++;
                        v37 = v39;
                      }

                      while (v39);
                    }
                  }
                }

                else
                {
                  v36 = 0;
                }

                v40 = *v10;
                v57 = 2 * v36;
                v58 = v35;
                v41 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(v40 + 352, &v57);
                if (v57)
                {
                  if (v57)
                  {
                  }
                }

                ++v33;
              }

              while (v33 != v34);
            }
          }

          if (v49 && (v51 & 1) == 0)
          {
            (*(*v49 + 40))();
          }
        }

        v10 += 4;
      }

      while (v10 != v47);
      if (v48 != 2)
      {
LABEL_71:
        v42 = v54;
        v43 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v55);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v42, v43, *(a3 + 32));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v55);
    }

    while (v55 != v46 || v56 != 0xFFFF || HIWORD(v56) != 0xFFFF);
  }

  return *(v46 + 40) != 0;
}

uint64_t re::ecs2::MaterialParameterBlockArraySystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[0] = a2;
  v40[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v39);
  v5 = (*(**(a1 + 40) + 168))(*(a1 + 40));
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 40);
    v9 = 8 * v6;
    do
    {
      v10 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v10)
      {
        v11 = *(v10 + 384);
      }

      else
      {
        v11 = 0;
      }

      v7 += v11;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v38, 3111, a1);
  re::StackScratchAllocator::StackScratchAllocator(v52);
  v48 = 1;
  v49 = 0;
  v50 = 0;
  v46 = v52;
  v47 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v46, 0);
  v48 += 2;
  v12 = *(a1 + 448);
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v51 = *(a1 + 448);
  v41[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v46, v13, v41);
  v14 = *(a3 + 200);
  if (v14)
  {
    v15 = *(a3 + 216);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      v41[0] = v17;
      v18 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 296), v41);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v46, *(*(a1 + 304) + 16 * v18 + 8));
      v16 -= 8;
    }

    while (v16);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v46, a1 + 408);
  v42 = 1;
  v43 = 0;
  v44 = 0;
  v41[0] = v52;
  v41[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v41, 0);
  v42 += 2;
  v19 = *(a1 + 448);
  if ((v19 & 0x3F) != 0)
  {
    v20 = (v19 >> 6) + 1;
  }

  else
  {
    v20 = v19 >> 6;
  }

  v45 = *(a1 + 448);
  v53 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v41, v20, &v53);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(a1 + 408, &v46);
  v21 = v50;
  if (v48)
  {
    v21 = &v49;
  }

  v22 = v47;
  if ((v47 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v23 = 0;
    while (1)
    {
      v25 = *v21++;
      v24 = v25;
      if (v25)
      {
        break;
      }

      v23 -= 64;
      if (!--v22)
      {
        goto LABEL_36;
      }
    }

    v26 = __clz(__rbit64(v24));
    if (v26 + 1 != v23)
    {
      FirstBitSet = v26 - v23;
      do
      {
        v28 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 240, FirstBitSet);
        v29 = *(*v28 + 224);
        v30 = v28[3];
        v31 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v30);
        if (*(v31 + 40))
        {
          v32 = (*(*v29 + 24))(v29, v40, v28, v30, v31, 0);
        }

        else
        {
          v32 = 0;
        }

        v33 = v28[5];
        v34 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v33);
        if (*(v34 + 40))
        {
          v32 |= (*(*v29 + 32))(v29, v40, v28, v33, v34, 0);
        }

        v35 = v28[6];
        v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v28[2] + 8, v35);
        if (*(v36 + 40))
        {
          if (((v32 | (*(*v29 + 40))(v29, v40, v28, v35, v36, 0)) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (!v32)
        {
LABEL_34:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v41, FirstBitSet);
          goto LABEL_35;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v41, FirstBitSet);
LABEL_35:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v46, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_36:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(a1 + 408, v41);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 240);
  if (v41[0] && (v42 & 1) == 0)
  {
    (*(*v41[0] + 40))();
  }

  if (v46 && (v48 & 1) == 0)
  {
    (*(*v46 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v52);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v38);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v39);
}

double re::ecs2::MaterialParameterBlockArraySystem::willAddSystemToECSService(re::ecs2::MaterialParameterBlockArraySystem *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  v3 = (*(*v2 + 32))(v2);
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(*v2 + 32))(v2);
  v5 = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  if (v5 && (*(*v5 + 416))(v5))
  {
    *(this + 29) = 0;
  }

  v6 = (*(**(this + 5) + 32))(*(this + 5));
  v7 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v6);
  if (v7)
  {
    qword_1EE1AFB58 = this + 480;
    v9[0] = 0;
    v9[1] = re::ecs2::SerializableMaterialParameterBlock::sendSystemUpdateEnd;
    v9[2] = 0;
    v9[3] = re::Event<re::NetworkSystem>::createSubscription(REEventHandlerResult (*)(re::NetworkSystem*))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem>::Subscription const&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v7 + 396, v9);
  }

  return result;
}

void re::ecs2::MaterialParameterBlockArraySystem::willRemoveSystemFromECSService(re::ecs2::MaterialParameterBlockArraySystem *this)
{
  v10 = *MEMORY[0x1E69E9840];
  re::ecs2::SerializableMaterialParameterBlock::sendSystemUpdateEnd();
  qword_1EE1AFB58 = 0;
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v2);
  if (v3)
  {
    v4 = v3;
    *&v5 = 0;
    *(&v5 + 1) = re::ecs2::SerializableMaterialParameterBlock::sendSystemUpdateEnd;
    *&v6 = 0;
    *(&v6 + 1) = re::Event<re::NetworkSystem>::createSubscription(REEventHandlerResult (*)(re::NetworkSystem*))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem>::Subscription const&)#1}::__invoke;
    re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v3 + 1584, &v5, v7);
    if (v7[0] == 1)
    {
      if (*(v4 + 416))
      {
        v7[0] = 0;
        v8 = v5;
        v9 = v6;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v4 + 1624), v7);
      }

      else
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(v4 + 198, &v5);
      }
    }
  }

  *(this + 29) = 0;
}

unint64_t re::ecs2::MaterialParameterBlockArraySystem::willAddSceneToECSService(re::ecs2::MaterialParameterBlockArraySystem *this, re::ecs2::Scene *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 36);
  if (v4)
  {
    *(this + 65) = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v4, 0, re::ecs2::MaterialParameterBlockArrayComponent::onComponentDidAddEvent, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    *(this + 66) = v5;
  }

  v50[0] = a2;
  v6 = *(this + 46);
  v7 = *(this + 94);
  if (v6 >= 0xB)
  {
    if (v7)
    {
      v8 = (this + 384);
    }

    else
    {
      v8 = *(this + 49);
    }

    v10 = 8 * v6;
    while (!*v8)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if (v7)
  {
    v9 = (this + 384);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *(this + 49);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  v11 = 0;
  v12 = 8 * v6;
  do
  {
    v13 = *v9++;
    v11 |= v13;
    v12 -= 8;
  }

  while (v12);
  if (v11)
  {
LABEL_18:
    *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 360, 0);
    v14 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 240, v42);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::init(v14, this + 240, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 37, v50, &v42);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 360, v42);
    v15 = v42;
    goto LABEL_51;
  }

LABEL_19:
  v49 = 0u;
  v42 = 0u;
  *&v43 = 0;
  v44 = 0u;
  v45 = 0u;
  *(&v43 + 1) = -1;
  v46 = 0;
  v47 = 1;
  v48 = 0uLL;
  v16 = *(this + 35);
  *&v49 = 0;
  v17 = *(this + 31);
  DWORD2(v49) = 0;
  if (v16 + 1 > 4 * v17)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>,4ul>::setBucketsCapacity(this + 30, (v16 + 4) >> 2);
    v17 = *(this + 31);
  }

  if (v17 <= v16 >> 2)
  {
    v50[1] = 0;
    memset(v59, 0, sizeof(v59));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    v54 = 858;
    v55 = 2048;
    v56 = v16 >> 2;
    v57 = 2048;
    v58 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  if (*(this + 256))
  {
    v18 = this + 264;
  }

  else
  {
    v18 = *(this + 34);
  }

  v19 = *&v18[8 * (v16 >> 2)];
  ++*(this + 35);
  ++*(this + 72);
  v20 = v19 + 112 * (v16 & 3);
  v21 = v42;
  v22 = v43;
  v23 = v44;
  *(v20 + 48) = v45;
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *v20 = v21;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v20 + 56, &v45 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
  v25 = *(this + 35);
  if (!v25)
  {
LABEL_55:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v26 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 240, v25 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::init(v26, this + 240, v50[0]);
  *&v59[0] = *(this + 35) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 37, v50, v59);
  v27 = *(this + 35);
  v28 = *(this + 50);
  if ((v27 & 0x3F) != 0)
  {
    v29 = (v27 >> 6) + 1;
  }

  else
  {
    v29 = v27 >> 6;
  }

  *(this + 50) = v27;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 360), v29, &v42);
  if (v27 && v28 > v27)
  {
    v30 = 63;
    v31 = *(this + 50) & 0x3FLL;
    if (v31 && v31 != 63)
    {
      v30 = ~(-1 << v31);
    }

    if (*(this + 376))
    {
      v32 = this + 384;
    }

    else
    {
      v32 = *(this + 49);
    }

    *&v32[8 * *(this + 46) - 8] &= v30;
  }

  v33 = *(this + 35);
  v34 = *(this + 56);
  if ((v33 & 0x3F) != 0)
  {
    v35 = (v33 >> 6) + 1;
  }

  else
  {
    v35 = v33 >> 6;
  }

  *(this + 56) = v33;
  *&v42 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 408), v35, &v42);
  if (v33 && v34 > v33)
  {
    v36 = 63;
    v37 = *(this + 56) & 0x3FLL;
    if (v37 && v37 != 63)
    {
      v36 = ~(-1 << v37);
    }

    if (*(this + 424))
    {
      v38 = this + 432;
    }

    else
    {
      v38 = *(this + 55);
    }

    *&v38[8 * *(this + 52) - 8] &= v36;
  }

  v15 = *&v59[0];
LABEL_51:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 408, v15);
  if (*(this + 472) == 1)
  {
    v40 = *(this + 57);
    v41 = *(v50[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v40, v41, &v42);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 240);
  }

  return result;
}

uint64_t re::ecs2::MaterialParameterBlockArraySystem::willRemoveSceneFromECSService(re::ecs2::MaterialParameterBlockArraySystem *this, re::ecs2::Scene *a2)
{
  v4 = *(a2 + 36);
  if (v4)
  {
    re::EventBus::unsubscribe(v4, *(this + 65), *(this + 66));
  }

  v17 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 37, &v17);
  if (result != -1)
  {
    v6 = *(this + 38) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 360, *(v6 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 408, *(v6 + 8));
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 240, *(v6 + 8));
    if (*v7)
    {
      v8 = v7;
      *v7 = 0;
      v9 = v7 + 1;
      v10 = *(v7[1] + 288);
      if (v10)
      {
        v11 = v7[12];
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v8 + 7), i);
            re::EventBus::unsubscribe(v10, *v13, *(v13 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v8 + 7));
      v14 = 0;
      v15 = v8 + 3;
      do
      {
        v16 = v8[2];
        if (*v16)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v16, v15[v14]);
        }

        v15[v14++] = -1;
      }

      while (v14 != 4);
      *v9 = 0;
      v9[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 296, &v17);
  }

  return result;
}

void *re::ecs2::allocInfo_MaterialParameterBlockArraySystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0398, "MaterialParameterBlockArraySystem");
    __cxa_guard_release(&qword_1EE1AFBC8);
  }

  return &unk_1EE1B0398;
}

void re::ecs2::initInfo_MaterialParameterBlockArraySystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE97A9D082EEB5ABALL;
  v6[1] = "MaterialParameterBlockArraySystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MaterialParameterBlockArraySystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialParameterBlockArraySystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialParameterBlockArraySystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MaterialParameterBlockArraySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MaterialParameterBlockArraySystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialParameterBlockArraySystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialParameterBlockArraySystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MaterialParameterBlockArraySystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(a3 + 480);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 30);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MaterialParameterBlockArraySystem>(re::ecs2::System *a1)
{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(a1 + 480);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 30);

  re::ecs2::System::~System(a1);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::MaterialParameterBlockArrayComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 208);
  if (v3)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v5), v3);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_11;
      }

      v5 += 8;
    }

    while (v5 != 56);
    v10 = -1;
LABEL_11:

    re::ecs2::BasicComponentStateSceneData<re::ecs2::MaterialParameterBlockArrayComponent>::setComponentState(a2, v10, v6);
  }
}

void re::ecs2::MaterialParameterBlockArraySystem::~MaterialParameterBlockArraySystem(re::ecs2::MaterialParameterBlockArraySystem *this)
{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 480);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 30);

  re::ecs2::System::~System(this);
}

{
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 480);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SerializableMaterialParameterBlock::~SerializableMaterialParameterBlock(re::ecs2::SerializableMaterialParameterBlock *this)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 56);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 50);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 44);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 38);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 14);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 8);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 56);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 50);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 44);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 38);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 14);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 8);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v3])(&v6, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CF83B0[v4])(&v5, result, a2);
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__assign_alt[abi:nn200100]<0ul,re::DynamicString,re::DynamicString>(uint64_t a1, re::DynamicString *this, re::DynamicString *a3)
{
  if (*(a1 + 32))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,re::DynamicString>(a1, a3);
  }

  else
  {
    return re::DynamicString::operator=(this, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,re::DynamicString>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v4](&v10, a1);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = a2[3];
  v5 = a2[1];
  *a1 = *a2;
  *a2 = 0;
  v6 = a2[2];
  a2[3] = 0;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  a2[1] = v8;
  a2[2] = v7;
  *(a1 + 32) = 0;
  return a1;
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__assign_alt[abi:nn200100]<1ul,re::AssetHandle,re::AssetHandle>(re::DynamicString *result, uint64_t *a2, uint64_t *a3)
{
  if (*(result + 8) != 1)
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<1ul,re::AssetHandle>(result, a3);
  }

  v3 = a2[1];
  a2[1] = a3[1];
  a3[1] = v3;
  v4 = *a2;
  *a2 = 0;
  *a2 = *a3;
  *a3 = v4;
  v5 = a2[2];
  a2[2] = a3[2];
  a3[2] = v5;
  return result;
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<1ul,re::AssetHandle>(re::DynamicString *a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v4](&v8, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 1) = a2[1];
  a2[1] = 0;
  v5 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v5;
  v6 = *(a1 + 2);
  *(a1 + 2) = a2[2];
  a2[2] = v6;
  *(a1 + 8) = 1;
  return a1;
}

void *re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v7 = 520 * a2;
    v8 = a2;
    do
    {
      v9 = (v3[4] + v7);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 56);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 50);
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 44);
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 38);
      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 32);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9 + 26);
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 20);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 14);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 8);
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9 + 2);
      *v9 = &unk_1F5CCF868;
      result = objc_destructInstance(v9 + 1);
      ++v8;
      v7 += 520;
    }

    while (v8 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 520 * v4;
      do
      {
        result = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock((v3[4] + v6));
        v6 += 520;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::SerializableMaterialParameterBlock>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x208uLL))
        {
          v2 = 520 * a2;
          result = (*(*result + 32))(result, 520 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 520, a2);
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
        v10 = 0;
        v11 = 520 * v9;
        do
        {
          re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(&v7[v10 / 8], (v8 + v10));
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 448));
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 400));
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 352));
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 304));
          re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 256));
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v8 + v10 + 208));
          re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 160));
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 112));
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 64));
          re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v8 + v10 + 16));
          *(v8 + v10) = &unk_1F5CCF868;
          objc_destructInstance((v8 + v10 + 8));
          v10 += 520;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(uint64_t this)
{
  *this = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 80) = 0;
  *(this + 104) = 10;
  *(this + 107) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 240) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 224) = 0;
  *(this + 248) = 0;
  *(this + 272) = 0;
  *(this + 280) = 0;
  *(this + 256) = 0;
  *(this + 261) = 0;
  return this;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_324, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

re::StringID *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        result = re::StringID::StringID((v10 + 24), (*(a2 + 16) + v5 + 24));
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 40 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 40 * v4;
}

void *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v11 = *(a2 + 16) + v5;
        v12 = *(v11 + 24);
        result[3] = result[3] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
        result[3] = *(v11 + 24) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
        result[4] = *(v11 + 32);
        *(v11 + 24) = 0;
        *(v11 + 32) = &str_67;
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_324, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

re::StringID *re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if ((*(v6 + v4) & 0x80000000) != 0)
      {
        v7 = 0xBF58476D1CE4E5B9 * ((*(v6 + v4 + 8) >> 31) ^ (*(v6 + v4 + 8) >> 1));
        v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
        v9 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v3, v8 % *(v3 + 24), v8);
        result = re::StringID::StringID((v9 + 8), (*(a2 + 16) + v4 + 8));
        v10 = *(a2 + 16) + v4;
        v11 = *(v10 + 24);
        *(v9 + 24) = v11;
        if (v11 == 1)
        {
          *(v9 + 25) = *(v10 + 25);
        }
      }

      ++v5;
      v4 += 32;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_324, 4 * v2);
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
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v19, 0, 36);
      *&v19[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v19, v4, a2);
      v5 = *v19;
      *v19 = *a1;
      *a1 = v5;
      v6 = *&v19[16];
      v7 = *(a1 + 16);
      *&v19[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v19[24];
      *&v19[24] = *(a1 + 24);
      v8 = *&v19[32];
      *(a1 + 24) = v9;
      ++*&v19[40];
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = 0xBF58476D1CE4E5B9 * ((*(v7 + v10 + 8) >> 31) ^ (*(v7 + v10 + 8) >> 1));
            v14 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31)) % *(a1 + 24));
            v15 = *(v12 + 8);
            *(v14 + 8) = *(v14 + 8) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            *(v14 + 8) = *(v12 + 8) & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
            *(v14 + 16) = *(v12 + 16);
            *(v12 + 8) = 0;
            *(v12 + 16) = &str_67;
            v7 = *&v19[16];
            v16 = *&v19[16] + v10;
            v17 = *(*&v19[16] + v10 + 24);
            *(v14 + 24) = v17;
            if (v17 == 1)
            {
              *(v14 + 25) = *(v16 + 25);
            }
          }

          ++v11;
          v10 += 32;
        }

        while (v11 < *&v19[32]);
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v19);
    }
  }

  else
  {
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

uint64_t re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    do
    {
      if ((*(v6 + v4) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v3, *(v6 + v4 + 8) % *(v3 + 24), *(v6 + v4 + 8));
        v6 = *(a2 + 16);
        *(result + 8) = *(v6 + v4 + 8);
        v7 = *(v6 + v4 + 16);
        *(result + 16) = v7;
        if (v7 == 1)
        {
          *(result + 24) = *(v6 + v4 + 24);
        }
      }

      ++v5;
      v4 += 32;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_324, 4 * v2);
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

void re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      v7 = *(a1 + 16);
      *&v15[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v8 = *&v15[32];
      *(a1 + 24) = v9;
      ++*&v15[40];
      v10 = v8;
      if (v8)
      {
        v11 = (v7 + 16);
        do
        {
          if ((*(v11 - 4) & 0x80000000) != 0)
          {
            v12 = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v11 - 1) % *(a1 + 24));
            *(v12 + 8) = *(v11 - 1);
            v13 = *v11;
            *(v12 + 16) = v13;
            if (v13 == 1)
            {
              *(v12 + 24) = *(v11 + 1);
            }
          }

          v11 += 32;
          --v10;
        }

        while (v10);
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_324, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        result = re::Optional<re::ecs2::SerializableParameterBinding>::Optional(v10 + 24, (*(a2 + 16) + v5 + 24));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

void re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_324, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v18, 0, 36);
      *&v18[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v18, v4, a2);
      v5 = *v18;
      *v18 = *a1;
      *a1 = v5;
      v6 = *&v18[16];
      v7 = *(a1 + 16);
      *&v18[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v18[24];
      *&v18[24] = *(a1 + 24);
      v8 = *&v18[32];
      *(a1 + 24) = v9;
      ++*&v18[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((*(v7 + v11) & 0x80000000) != 0)
          {
            v13 = v7 + v11;
            v14 = 0xBF58476D1CE4E5B9 * ((*(v13 + 8) >> 31) ^ (*(v13 + 8) >> 1));
            v15 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) % *(a1 + 24));
            v16 = *(v13 + 8);
            *(v15 + 8) = *(v15 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            *(v15 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            *(v15 + 16) = *(v13 + 16);
            *(v13 + 8) = 0;
            *(v13 + 16) = &str_67;
            v7 = *&v18[16];
            re::Optional<re::ecs2::SerializableParameterBinding>::Optional(v15 + 24, (*&v18[16] + v11 + 24));
            v10 = *&v18[32];
          }

          ++v12;
          v11 += 72;
        }

        while (v12 < v10);
      }

      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v18);
    }
  }

  else
  {
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 72 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 72 * v4;
}

uint64_t re::Optional<re::ecs2::SerializableParameterBinding>::Optional(uint64_t a1, const StringID *a2)
{
  var0 = a2->var0;
  *a1 = var0;
  if (var0 == 1)
  {
    *(a1 + 8) = a2->var1;
    re::StringID::StringID((a1 + 16), a2 + 1);
    re::StringID::StringID((a1 + 32), a2 + 2);
  }

  return a1;
}

uint64_t re::Optional<re::ecs2::SerializableParameterBinding>::Optional(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 == 1)
  {
    *(result + 8) = *(a2 + 2);
    v3 = *(a2 + 2);
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
    *(result + 16) = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
    *(result + 24) = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = &str_67;
    v4 = *(a2 + 4);
    *(result + 32) = *(result + 32) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(result + 32) = *(a2 + 4) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(result + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = &str_67;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 320 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 320 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 320 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 320 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID const&>(uint64_t a1, uint64_t a2, const StringID *a3, const StringID *a4)
{
  v7 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::StringID::StringID((v7 + 24), a4);
  ++*(a1 + 40);
  return v7 + 24;
}

void *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 1), a3);
  v8 = *a4;
  v9 = v7[3];
  v7 += 3;
  *v7 = v9 & 0xFFFFFFFFFFFFFFFELL | *a4 & 1;
  *v7 = *a4 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v7[1] = a4[1];
  *a4 = 0;
  a4[1] = &str_67;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::mtl::TextureSwizzleChannels>>(uint64_t a1, uint64_t a2, const StringID *a3, unsigned __int8 *a4)
{
  v7 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  v8 = *a4;
  *(v7 + 24) = v8;
  result = v7 + 24;
  if (v8 == 1)
  {
    *(v7 + 25) = *(a4 + 1);
  }

  ++*(a1 + 40);
  return result;
}

BOOL re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 40 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 40 * v9) = *(*(a1 + 16) + 40 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::Optional<re::ecs2::SerializableParameterBinding>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 8) = *(a2 + 8);
      re::StringID::operator=((a1 + 16), (a2 + 16));
      re::StringID::operator=((a1 + 32), (a2 + 32));
    }

    else
    {
      re::StringID::destroyString((a1 + 32));
      re::StringID::destroyString((a1 + 16));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = &str_67;
    v5 = *(a2 + 32);
    *(a1 + 32) = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
    *(a1 + 32) = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = &str_67;
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::ecs2::SerializableParameterBinding>>(uint64_t a1, uint64_t a2, const StringID *a3, unsigned __int8 *a4)
{
  v7 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::Optional<re::ecs2::SerializableParameterBinding>::Optional(v7 + 24, a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 72 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 72 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 72 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 72 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::ecs2::SerializedMaterialParameter const&>(uint64_t a1, uint64_t a2, const StringID *a3, const re::ecs2::SerializedMaterialParameter *a4)
{
  v7 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v7 + 32), a4);
  ++*(a1 + 40);
  return v7 + 32;
}

BOOL re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 320 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 320 * v5) = *(v6 + 320 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v6 + 320 * v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 320 * v9) = *(*(a1 + 16) + 320 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 160 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 160 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 160 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 160 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, const StringID *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 40 * HIDWORD(v9) + 24;
  }
}

void re::snapshot::operator>><re::snapshot::DecoderRaw,re::ecs2::SerializableParameterBinding>(re::snapshot::BufferDecoder *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (*(this + 4) == v3)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  else
  {
    v4 = *v3;
    *(this + 3) = v3 + 1;
    if (v4)
    {
      v12 = 0;
      re::StringID::invalid(&v13);
      re::StringID::invalid((&v14 + 8));
      if ((atomic_load_explicit(&qword_1EE1AFBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFBF8))
      {
        qword_1EE1AFBF0 = re::internal::getOrCreateInfo("SerializableParameterBinding", re::ecs2::allocInfo_SerializableParameterBinding, re::ecs2::initInfo_SerializableParameterBinding, &qword_1EE1AFB80, 0);
        __cxa_guard_release(&qword_1EE1AFBF8);
      }

      re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, &v12, qword_1EE1AFBF0);
      v7[0] = 1;
      v8 = v12;
      v9 = v13;
      v10 = v14;
      v13 = 0;
      *&v14 = &str_67;
      v11 = v15;
      *(&v14 + 1) = 0;
      v15 = &str_67;
      v6 = re::Optional<re::ecs2::SerializableParameterBinding>::operator=(a2, v7);
      if (v7[0] == 1)
      {
        if (BYTE8(v10))
        {
          if (BYTE8(v10))
          {
          }
        }

        *(&v10 + 1) = 0;
        v11 = &str_67;
        if (v9)
        {
          if (v9)
          {
          }
        }
      }

      if (BYTE8(v14))
      {
        if (BYTE8(v14))
        {
        }
      }

      *(&v14 + 1) = 0;
      v15 = &str_67;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

uint64_t re::ecs2::SerializedMaterialParameter::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  re::AssetHandle::operator=(a1 + 80, (a2 + 80));
  re::OptionalMaterialSamplerData::operator=(a1 + 104, a2 + 104);
  re::DynamicArray<BOOL>::operator=(a1 + 208, (a2 + 208));
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  v7 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v7;
  return a1;
}

void *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::ecs2::SerializedMaterialParameter>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t *a4, const re::ecs2::SerializedMaterialParameter *a5)
{
  v8 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  v9 = *a4;
  v8[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | *a4 & 1;
  v8[1] = *a4 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v8[2] = a4[1];
  *a4 = 0;
  a4[1] = &str_67;
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v8 + 4), a5);
  ++*(a1 + 40);
  return v8 + 4;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::ecs2::SerializedMaterialParameter>(uint64_t a1, unint64_t a2, unsigned int a3, const StringID *a4, const re::ecs2::SerializedMaterialParameter *a5)
{
  v8 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  re::StringID::StringID((v8 + 8), a4);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v8 + 32), a5);
  ++*(a1 + 40);
  return v8 + 32;
}

void *re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  HIDWORD(v22) = 0;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  BYTE8(v12) = 10;
  BYTE11(v12) = 0;
  BYTE8(v13) = 0;
  BYTE8(v14) = 0;
  BYTE8(v15) = 0;
  BYTE8(v16) = 0;
  BYTE8(v17) = 0;
  v21 = 0uLL;
  v20 = 0uLL;
  v19 = 0uLL;
  *(&v22 + 5) = 0;
  v23 = 0uLL;
  *&v22 = 0;
  v8 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  *&v22 = 0;
  if (v19)
  {
    if (v21)
    {
      (*(*v19 + 40))();
    }

    *&v21 = 0;
    *&v20 = 0;
    v19 = 0uLL;
    ++DWORD2(v20);
  }

  re::AssetHandle::~AssetHandle(&v11);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while ((*v7 & 0x80000000) == 0)
    {
      v7 += 80;
      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v9 = *(a2 + 16) + 320 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v9 + 8, v9 + 32);
    if (!result)
    {
      break;
    }

    v10 = *(a2 + 32);
    if (v10 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    while (v10 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 320 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v10;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  v7 = HIDWORD(v16);
  if (HIDWORD(v16) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::ecs2::SerializedMaterialParameter>(a1, v15, v16, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 320 * v7;
  v8 = v9 + 32;
  *(v9 + 32) = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 64);
  *(v9 + 80) = *(a3 + 48);
  *(v9 + 96) = v12;
  *(v9 + 48) = v10;
  *(v9 + 64) = v11;
  re::AssetHandle::operator=(v9 + 112, (a3 + 80));
  re::OptionalMaterialSamplerData::operator=(v9 + 136, a3 + 104);
  re::DynamicArray<BOOL>::operator=(v9 + 240, (a3 + 208));
  *(v9 + 280) = *(a3 + 248);
  *(v9 + 288) = *(a3 + 256);
  v13 = *(a3 + 280);
  *(v9 + 296) = *(a3 + 264);
  *(v9 + 312) = v13;
  return v8;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 320 * v6 + 32;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v6 = a1[3];
        v7 = *(v6 + 32);
        if (v7 <= v4 + 1)
        {
          v8 = v4 + 1;
        }

        else
        {
          v8 = *(v6 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v7)
          {
            break;
          }

          if ((*(*(v6 + 16) + 320 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v8;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while ((*v5 & 0x80000000) == 0)
        {
          v5 += 80;
          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 320 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 320 * *(a1 + 32) + 32;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, unint64_t *a5)
{
  v10[0] = 0;
  v8 = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4, a5, v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void *re::IntrospectionOptional<unsigned long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<unsigned long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<unsigned long>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<unsigned long>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1);

    re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, unint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, unint64_t *a2)
{
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, *a2, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v5 + 16;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v8 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v11);
  v9 = v8;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v9);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 40 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 40 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

_anonymous_namespace_ *re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 40 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
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
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 40 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11[0] = 0;
  v8 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v11);
  v9 = v8;
  if (v11[0] == 1)
  {
    if (v13)
    {
      if (v13)
      {
      }
    }

    v13 = 0;
    v14 = &str_67;
    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v9);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 72 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 72 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void *re::IntrospectionOptional<re::ecs2::SerializableParameterBinding>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::ecs2::SerializableParameterBinding>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::ecs2::SerializableParameterBinding>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    re::StringID::invalid(&v6);
    re::StringID::invalid((&v7 + 8));
    v9[0] = 1;
    v10 = 0;
    v11 = v6;
    v12 = v7;
    v6 = 0;
    *&v7 = &str_67;
    v13 = v8;
    *(&v7 + 1) = 0;
    v8 = &str_67;
    v4 = re::Optional<re::ecs2::SerializableParameterBinding>::operator=(a2, v9);
    if (v9[0] == 1)
    {
      if (BYTE8(v12))
      {
        if (BYTE8(v12))
        {
        }
      }

      *(&v12 + 1) = 0;
      v13 = &str_67;
      if (v11)
      {
        if (v11)
        {
        }
      }

      v11 = 0;
      *&v12 = &str_67;
    }

    if (BYTE8(v7))
    {
      if (BYTE8(v7))
      {
      }
    }

    *(&v7 + 1) = 0;
    v8 = &str_67;
    if (v6)
    {
      if (v6)
      {
LABEL_22:
      }
    }
  }

  else
  {
    v9[0] = 0;
    v5 = re::Optional<re::ecs2::SerializableParameterBinding>::operator=(a2, v9);
    if (v9[0] == 1)
    {
      if (BYTE8(v12))
      {
        if (BYTE8(v12))
        {
        }
      }

      *(&v12 + 1) = 0;
      v13 = &str_67;
      if (v11)
      {
        if (v11)
        {
          goto LABEL_22;
        }
      }
    }
  }
}

uint64_t re::IntrospectionOptional<re::ecs2::SerializableParameterBinding>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::ecs2::SerializableParameterBinding>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<re::ecs2::SerializableParameterBinding>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, int *a2)
{
  if (a2)
  {
    v5[0] = 1;
    v3 = (a2 + 6);
    v6 = *a2;
    re::StringID::StringID(&v7, (a2 + 2));
    re::StringID::StringID(v8, v3);
  }

  else
  {
    v5[0] = 0;
  }

  v4 = re::Optional<re::ecs2::SerializableParameterBinding>::operator=(a1, v5);
  if (v5[0] == 1)
  {
    if (v8[0])
    {
      if (v8[0])
      {
      }
    }

    v8[0] = 0;
    v8[1] = &str_67;
    if (v7)
    {
      if (v7)
      {
      }
    }
  }
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 72 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 18;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10[0] = 0;
  v8 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void *re::IntrospectionOptional<re::mtl::TextureSwizzleChannels>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::TextureSwizzleChannels>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::TextureSwizzleChannels>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 1) = 84148994;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::TextureSwizzleChannels>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::TextureSwizzleChannels>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::TextureSwizzleChannels>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 1) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::internal::MaterialParameterBlockArrayComponentBindNodeImpl::~MaterialParameterBlockArrayComponentBindNodeImpl(re::internal::MaterialParameterBlockArrayComponentBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<re::internal::MaterialParameterBlockArrayComponentBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8880;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<re::internal::MaterialParameterBlockArrayComponentBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

double re::internal::MaterialParameterBlockArrayComponentBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double re::internal::MaterialParameterBlockArrayComponentBindNodeImpl::relativeNodeForKey@<D0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 8);
  v14 = 0;
  if (*v4 == 45 || (v6 = a1, a1 = sscanf(v4, "%zu", &v14), a1 != 1))
  {
    v13 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = v5;
      LOWORD(v16) = 2080;
      *(&v16 + 2) = v4;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Failed to bind to material. Invalid binding key %.*s. Index expected.", buf, 0x12u);
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *buf = *(v6 + 1);
    v7 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v16, v6 + 2);
    memset(v20, 0, sizeof(v20));
    re::DynamicArray<re::BindPoint::BindPointData>::add(&v16, v20);
    re::BindPoint::BindPointData::deinit(v20);
    v8 = v19 + 32 * v17;
    v9 = v14;
    *(v8 - 32) = &unk_1F5CF8918;
    *(v8 - 24) = v9;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v11 = &unk_1F5CF89F0;
    *(v11 + 8) = *buf;
    *(v11 + 40) = 0;
    *(v11 + 16) = v16;
    *(v11 + 32) = 0;
    *(v11 + 32) = v17;
    v17 = 0;
    v16 = 0uLL;
    *(v11 + 48) = v19;
    v19 = 0;
    ++v18;
    *(v11 + 40) = 1;
    *(a3 + 16) = v11;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v16);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v16);
  }

  return result;
}

double re::internal::MaterialParameterBlockArrayComponentBindNodeImpl::bindPointForKey@<D0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *(a3 + 8);
  v14 = 0;
  if (*v5 == 45 || (v8 = a1, a1 = sscanf(v5, "%zu", &v14), a1 != 1))
  {
    v13 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = v6;
      *&buf[8] = 2080;
      *&buf[10] = v5;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Failed to bind to material. Invalid binding key %.*s. Index expected.", buf, 0x12u);
    }

    *(a4 + 40) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  else
  {
    *a4 = a2;
    *(a4 + 40) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 8) = 0;
    re::BindPoint::addToBindPointStack(a4, (v8 + 8));
    memset(buf, 0, 32);
    re::DynamicArray<re::BindPoint::BindPointData>::add((a4 + 8), buf);
    result = re::BindPoint::BindPointData::deinit(buf);
    v11 = *(a4 + 40) + 32 * *(a4 + 24);
    v12 = v14;
    *(v11 - 32) = &unk_1F5CF8918;
    *(v11 - 24) = v12;
  }

  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::SerializableMaterialParameterBlockBindPointImpl>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF8918;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<re::internal::SerializableMaterialParameterBlockBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF8918;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::SerializableMaterialParameterBlockBindPointImpl::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = 0x9E3779B97F4A7C17;
  v10[0] = a3;
  v10[1] = a4;
  v5 = *(a1 + 8);
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    v4 = (*(*v6 + 48))(v6, 0, v7, v8) - 0x61C8864680B583E9;
  }

  return ((v5 >> 2) + (v5 << 6) + v4) ^ v5;
}

uint64_t re::internal::SerializableMaterialParameterBlockBindPointImpl::isAlive(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v12[0] = this;
  result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v8 = *(a1 + 8);
  v12[1] = result;
  v12[2] = v8;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v9 + 64))(v9, v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void re::internal::SerializableMaterialParameterBlockBindPointImpl::makeAlive(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v8 = *(a1 + 8);
  if (*(this + 6) <= v8)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(this, v8 + 1);
  }

  if (a4)
  {
    v14[0] = this;
    Block = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
    v10 = *(a1 + 8);
    v14[1] = Block;
    v14[2] = v10;
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    (*(*v11 + 72))(v11, v14, v12, v13);
  }
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::baseValueUntyped(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v12[0] = this;
  result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v8 = *(a1 + 8);
  v12[1] = result;
  v12[2] = v8;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v9 + 88))(v9, v12, v10, v11);
    }
  }

  return result;
}

uint64_t re::internal::SerializableMaterialParameterBlockBindPointImpl::supportsOverrideValue(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v13[0] = this;
  Block = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v8 = *(a1 + 8);
  v13[1] = Block;
  v13[2] = v8;
  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
  return (*(*v9 + 96))(v9, v13, v10, v11);
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::isOverridden(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v12[0] = this;
  result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v8 = *(a1 + 8);
  v12[1] = result;
  v12[2] = v8;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v9 + 104))(v9, v12, v10, v11);
  }

  return result;
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::setIsOverridden(void *result, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v8 = result;
    v13[0] = this;
    result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, result[1]);
    v9 = v8[1];
    v13[1] = result;
    v13[2] = v9;
    if (result)
    {
      v10 = *a3;
      v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v10 + 112))(v10, v13, v11, v12, a5);
    }
  }

  return result;
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::overrideValueUntyped(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v12[0] = this;
  result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v8 = *(a1 + 8);
  v12[1] = result;
  v12[2] = v8;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v9 + 120))(v9, v12, v10, v11);
  }

  return result;
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::markAsWritten(uint64_t a1, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = this;
  result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, *(a1 + 8));
  v9 = *(a1 + 8);
  v13[1] = result;
  v13[2] = v9;
  if (result)
  {
    if (v9 < *(this + 6))
    {
      ++*(*(this + 8) + 32 * v9 + 16);
    }

    result = re::ecs2::Component::markDirty(this);
    if (a4)
    {
      v10 = *a3;
      v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v10 + 128))(v10, v13, v11, v12);
    }
  }

  return result;
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::willSet(void *result, re::internal::SerializableMaterialParameterBlockBindPointImpl *this, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = result;
    v11[0] = this;
    result = re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(this, result[1]);
    v7 = v6[1];
    v11[1] = result;
    v11[2] = v7;
    if (result)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 144))(v8, v11, v9, v10);
    }
  }

  return result;
}

void *re::internal::SerializableMaterialParameterBlockBindPointImpl::getOrCreateBlock(void *this, unint64_t a2)
{
  if (this)
  {
    v3 = this;
    if (this[6] > a2)
    {
LABEL_3:
      v4 = (v3[8] + 32 * a2);
      ++v4[4];
      return *v4;
    }

    v5 = this[2];
    if (v5)
    {
      v6 = *(v5 + 192);
      if (v6)
      {
        if (*(v6 + 72) > a2)
        {
          re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(this, a2 + 1);
          if (v3[6] > a2)
          {
            goto LABEL_3;
          }

          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }
    }

    return 0;
  }

  return this;
}