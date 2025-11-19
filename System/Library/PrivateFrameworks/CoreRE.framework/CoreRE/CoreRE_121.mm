void re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Optional<BOOL>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::Optional<BOOL>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 2 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::VertexCacheComponent>(uint64_t a1)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  *(a1 + 192) = 0u;
  v2 = (a1 + 192);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1220;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 184) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  inited = objc_initWeak(v2, 0);
  *(a1 + 200) = 0;
  *(a1 + 232) = re::globalAllocators(inited)[2];
  *(a1 + 240) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220VertexCacheComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::accessibility::introspect_Importance(re::ecs2::accessibility *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AB7F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AB7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB7F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AB838, "Importance", 1, 1, 1, 1);
      qword_1EE1AB838 = &unk_1F5D0C658;
      qword_1EE1AB878 = &re::ecs2::accessibility::introspect_Importance(BOOL)::enumTable;
      dword_1EE1AB848 = 9;
      __cxa_guard_release(&qword_1EE1AB7F8);
    }

    if (_MergedGlobals_301)
    {
      break;
    }

    _MergedGlobals_301 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AB838, a2);
    v33 = 0xE65B5EB096D28;
    v34 = "Importance";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AB878;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1AB858 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1AB7F0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Default";
      qword_1EE1AB810 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "High";
      qword_1EE1AB818 = v32;
      __cxa_guard_release(&qword_1EE1AB7F0);
    }
  }
}

void *re::ecs2::accessibility::allocInfo_CustomContent(re::ecs2::accessibility *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB880, "CustomContent");
    __cxa_guard_release(&qword_1EE1AB800);
  }

  return &unk_1EE1AB880;
}

void re::ecs2::accessibility::initInfo_CustomContent(re::ecs2::accessibility *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xDF8C99149F5BF50;
  v18[1] = "CustomContent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1AB808, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB808);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "label";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1AB820 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "value";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1AB828 = v13;
      v14 = re::introspectionAllocator(v13);
      re::ecs2::accessibility::introspect_Importance(v14, v15);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "importance";
      *(v16 + 16) = &qword_1EE1AB838;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AB830 = v16;
      __cxa_guard_release(&qword_1EE1AB808);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AB820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::accessibility::CustomContent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::accessibility::CustomContent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::accessibility::CustomContent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::accessibility::CustomContent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void *re::internal::defaultConstruct<re::ecs2::accessibility::CustomContent>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  v5 = (a3 + 32);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::ecs2::accessibility::CustomContent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::accessibility::CustomContent>(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  a1[2] = 0u;
  a1[3] = 0u;
  v3 = a1 + 2;

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::ecs2::accessibility::CustomContent>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::GeomAttribute::accessValues<int>(void *a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 0;
  }

  if (!a1[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = a1[7];
  (*(*a1 + 16))(a1);
  return v2;
}

uint64_t re::audio::anonymous namespace::AttributesNeededForTheseModes(int a1, int a2)
{
  if ((a1 - 2) >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x10010101080204uLL >> (8 * (a1 - 2));
  }

  v3 = v2 | 8;
  v4 = v2 | 1;
  v5 = v2 | 0x10;
  if (a2 != 8)
  {
    v5 = v2;
  }

  if (a2 != 5)
  {
    v4 = v5;
  }

  if (a2 != 4)
  {
    v3 = v4;
  }

  v6 = v2 | 4;
  if (a2 == 3)
  {
    v2 |= 2u;
  }

  if (a2 == 2)
  {
    v2 = v6;
  }

  if (a2 > 3)
  {
    return v3;
  }

  return v2;
}

void re::audio::MeshVisualizer::setupMaterials(re::audio::MeshVisualizer *this, re::AssetManager *a2, re::RenderManager *a3)
{
  v5 = *(this + 26);
  if (v5 != 1)
  {
    if (v5)
    {
      return;
    }

    re::AssetManager::assetHandle(a2, "engine:AudioMeshDebugVisualization.rematerialdefinition", &v15);
    v6 = *(this + 3);
    *(this + 3) = v15;
    v15 = v6;
    v7 = *(this + 8);
    *(this + 8) = v16;
    v16 = v7;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync((this + 48));
    v8 = 1;
    goto LABEL_7;
  }

  v9 = *(this + 7);
  if (v9)
  {
    v10 = atomic_load((v9 + 896));
    if (v10 == 2)
    {
      re::AssetHandle::AssetHandle(v14, (this + 48));
      re::MaterialAsset::makeMaterialMemoryAsset(a2, a3, v14, 0, 0);
      v12 = *(this + 72);
      *(this + 72) = v15;
      v15 = v12;
      v13 = *(this + 11);
      *(this + 11) = v16;
      v16 = v13;
      re::AssetHandle::~AssetHandle(&v15);
      re::AssetHandle::~AssetHandle(v14);
      v8 = 2;
LABEL_7:
      *(this + 26) = v8;
    }
  }
}

void re::audio::MeshVisualizer::setMaterial(re::audio::MeshVisualizer *this, re::RenderManager *a2, re::PrimitiveRenderingContext *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 26) == 2)
  {
    *(a3 + 140) = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((this + 72)) + 1776);
    if (*(this + 24))
    {
      MurmurHash3_x64_128("Transparent", 0xBuLL, 0, &v11);
      v10.n128_u64[0] = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v6 = strlen(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::solidTechniqueNames[*(this + 24) - 1]);
      if (v6)
      {
        MurmurHash3_x64_128(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::solidTechniqueNames[*(this + 24) - 1], v6, 0, &v11);
        v7 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      }

      else
      {
        v7 = 0;
      }

      v10.n128_u64[1] = v7;
      re::DynamicArray<re::RigNodeConstraint>::add((a3 + 1136), &v10);
    }

    if (*(this + 25))
    {
      MurmurHash3_x64_128("PrimitiveRendererWireframe", 0x1AuLL, 0, &v11);
      v10.n128_u64[0] = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v8 = strlen(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::wireTechniqueNames[*(this + 25) - 1]);
      if (v8)
      {
        MurmurHash3_x64_128(re::audio::MeshVisualizer::setMaterial(re::RenderManager *,re::PrimitiveRenderingContext *)::wireTechniqueNames[*(this + 25) - 1], v8, 0, &v11);
        v9 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      }

      else
      {
        v9 = 0;
      }

      v10.n128_u64[1] = v9;
      re::DynamicArray<re::RigNodeConstraint>::add((a3 + 1136), &v10);
    }

    *(this + 14) = a2;
  }
}

void re::audio::MeshVisualizer::addDebugVisMesh(unint64_t a1, const re::AssetHandle *a2, _DWORD *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v7 ^ (v8 >> 31) ^ v8, v10);
  if (v11 == 0x7FFFFFFF)
  {
    re::AssetHandle::AssetHandle(v9, a2);
    re::audio::MeshVisualizer::updateDebugVisMesh(a1, v9, a3);
    re::AssetHandle::~AssetHandle(v9);
  }
}

uint64_t re::audio::MeshVisualizer::updateDebugVisMesh(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v187 = *MEMORY[0x1E69E9840];
  result = *(a1 + 96);
  if (__PAIR64__(*(v5 + 100), result))
  {
    if (a3[10])
    {
      if ((v8 & 1) == 0 || (result = re::internal::GeomAttributeManager::attributeByName((a3 + 16), "vertexNormal")) != 0 && *(result + 16) == 1 && (result = (*(*result + 16))(result), result == a3[4]))
      {
        if ((v8 & 2) == 0 || (result = re::internal::GeomAttributeManager::attributeByName((a3 + 16), "classification")) != 0 && *(result + 16) == 2 && (result = (*(*result + 16))(result), result == a3[10]))
        {
          if ((v8 & 4) == 0 || (result = re::internal::GeomAttributeManager::attributeByName((a3 + 16), "vertexColor")) != 0 && *(result + 16) == 1 && (result = (*(*result + 16))(result), result == a3[4]))
          {
            {
              {
                v9 = *(v5 + 120);
                v11 = a3;
                v12 = v10;
                v13 = a3[10];
                v144 = v11;
                if ((v10 & 2) != 0 && (v14 = re::internal::GeomAttributeManager::attributeByName((v11 + 16), "classification")) != 0)
                {
                  v149 = re::GeomAttribute::accessValues<int>(v14);
                  v16 = v15;
                }

                else
                {
                  v149 = 0;
                  v16 = 0xFFFFFFFFLL;
                }

                v150 = v16;
                v17 = v9 << 32;
                if (v12 >= 8 && (v18 = re::internal::GeomAttributeManager::attributeByName((v144 + 64), re::AcousticMeshAsset::kMaterialAttributeName)) != 0)
                {
                  v153 = re::GeomAttribute::accessValues<int>(v18);
                  v20 = v19;
                }

                else
                {
                  v153 = 0;
                  v20 = 0xFFFFFFFFLL;
                }

                v155 = v20;
                if ((v12 & 2) == 0 || *(v5 + 400) == 1) && ((v12 & 8) == 0 || *(v5 + 401) == 1) && (v12 < 0x10 || (*(v5 + 402)))
                {
                  v21 = *(v144 + 10);
                  if (!*(v144 + 10))
                  {
                    goto LABEL_289;
                  }

                  v22 = 0;
                  v23 = (*(v144 + 7) + 12);
                  do
                  {
                    v24 = *v23;
                    v23 += 4;
                    if (v24 == -1)
                    {
                      v25 = 1;
                    }

                    else
                    {
                      v25 = 2;
                    }

                    v22 += v25;
                    --v21;
                  }

                  while (v21);
                  v26 = 3 * v22;
                  v27 = 1;
                }

                else
                {
                  if (!v13)
                  {
                    goto LABEL_289;
                  }

                  v28 = 0;
                  v26 = 0;
                  v29 = *(v144 + 5);
                  v30 = (*(v144 + 7) + 12);
                  do
                  {
                    if ((v12 & 2) != 0)
                    {
                      if (v150 <= v28)
                      {
                        goto LABEL_297;
                      }

                      v31 = *(v149 + 4 * v28);
                      v32 = v31 >= 1 && *(v5 + 376) > v31;
                      if (v32 && ((*(*(v5 + 368) + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1) != 0)
                      {
                        goto LABEL_69;
                      }
                    }

                    if ((v12 & 8) != 0)
                    {
                      if (v155 <= v28)
                      {
                        goto LABEL_298;
                      }

                      v33 = *(v153 + 4 * v28);
                      v34 = v33 >= 1 && *(v5 + 296) > v33;
                      if (v34 && ((*(*(v5 + 288) + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) != 0)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v12 >= 0x10)
                    {
                      if (v155 <= v28)
                      {
                        goto LABEL_300;
                      }

                      v35 = *(v153 + 4 * v28);
                      v36 = v35 >= 1 && *(v5 + 216) > v35;
                      if (v36 && ((*(*(v5 + 208) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) != 0)
                      {
LABEL_69:
                        if (v29 <= v28)
                        {
                          goto LABEL_299;
                        }

                        if (*v30 == -1)
                        {
                          v26 += 3;
                        }

                        else
                        {
                          v26 += 6;
                        }
                      }
                    }

                    ++v28;
                    v30 += 4;
                  }

                  while (v13 != v28);
                  v27 = 0;
                  if (!v26)
                  {
                    goto LABEL_289;
                  }
                }

                v138 = v27;
                v133 = v26;
                v37 = *(v5 + 112);
                if (v37)
                {
                  v38 = *(v37 + 208);
                }

                else
                {
                  v38 = MTLCreateSystemDefaultDevice();
                }

                v39 = v38;

                v132 = v39;
                v40 = [objc_msgSend(v39 newBufferWithLength:4 * v133 options:{0), "contents"}];
                *v161 = 0u;
                *v162 = 0u;
                v163 = 1065353216;
                v41 = v133;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(v161, v41);
                *v158 = 0u;
                *__p = 0u;
                v160 = 1065353216;
                std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<re::AudioManager>>>>::__rehash<true>(v158, v41);
                v17 = *(v144 + 5);
                v146 = v5;
                if (!v17)
                {
                  v43 = 0;
                  goto LABEL_205;
                }

                v42 = 0;
                v3 = 0;
                v43 = 0;
                v44 = 0;
                v135 = v40 + 8;
                v136 = v40 + 4;
                v137 = v40;
                v134 = v40 + 16;
                v45 = 0x9E3779B97F4A7C17;
                v46 = v138;
                v151 = v12;
                while (1)
                {
                  if (v46)
                  {
                    goto LABEL_82;
                  }

                  if ((v12 & 2) != 0)
                  {
                    if (v150 <= v3)
                    {
                      goto LABEL_308;
                    }

                    v81 = *(v149 + 4 * v3);
                    v82 = v81 >= 1 && *(v5 + 376) > v81;
                    if (v82 && ((*(*(v5 + 368) + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v81) & 1) != 0)
                    {
                      goto LABEL_82;
                    }
                  }

                  if ((v12 & 8) != 0)
                  {
                    if (v155 <= v3)
                    {
                      goto LABEL_309;
                    }

                    v83 = *(v153 + 4 * v3);
                    if (v83 >= 1 && *(v5 + 296) > v83)
                    {
                      v85 = *(*(v5 + 288) + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v83);
                      if (v12 < 0x10 || v85)
                      {
                        if (!v85)
                        {
                          goto LABEL_201;
                        }

                        goto LABEL_82;
                      }
                    }

                    else if (v12 <= 0xF)
                    {
                      goto LABEL_201;
                    }
                  }

                  else if (v12 < 0x10)
                  {
                    goto LABEL_201;
                  }

                  if (v155 <= v3)
                  {
                    goto LABEL_310;
                  }

                  v86 = *(v153 + 4 * v3);
                  if (v86 < 1 || *(v5 + 216) <= v86 || ((*(*(v5 + 208) + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
                  {
LABEL_201:
                    v80 = v44;
                    goto LABEL_202;
                  }

LABEL_82:
                  v142 = v44;
                  v143 = v42;
                  *&v174[2] = 0;
                  memset(v172, 0, sizeof(v172));
                  if (v17 <= v3)
                  {
                    goto LABEL_303;
                  }

                  v47 = *(v144 + 7);
                  v29 = *(v47 + 16 * v3 + 12);
                  if (v29 == -1)
                  {
                    v48 = 3;
                  }

                  else
                  {
                    v48 = 4;
                  }

                  re::DynamicArray<float>::resize(v172, v48);
                  v50 = 0;
                  v17 = *&v172[16];
                  v51 = *&v174[2];
                  do
                  {
                    if (v17 == v50)
                    {
                      *v175 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v169 = 136315906;
                      *&v169[4] = "operator[]";
                      *&v169[12] = 1024;
                      *&v169[14] = 789;
                      *&v169[18] = 2048;
                      *&v169[20] = v17;
                      v170 = 2048;
                      *v171 = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_292:
                      v168 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v175 = 136315906;
                      *&v175[4] = "operator[]";
                      v176 = 1024;
                      v177 = 789;
                      v178 = 2048;
                      v179 = v5;
                      v180 = 2048;
                      v181 = v17;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_293:
                      v168 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v175 = 136315906;
                      *&v175[4] = "operator[]";
                      v176 = 1024;
                      v177 = 613;
                      v178 = 2048;
                      v179 = v3;
                      v180 = 2048;
                      v181 = v150;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_294:
                      v168 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v175 = 136315906;
                      *&v175[4] = "operator[]";
                      v176 = 1024;
                      v177 = 613;
                      v178 = 2048;
                      v179 = v3;
                      v180 = 2048;
                      v181 = v155;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_295:
                      v168 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      v106 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v175 = 136315906;
                      *&v175[4] = "operator[]";
                      v176 = 1024;
                      v177 = 613;
                      v178 = 2048;
                      v179 = v3;
                      v180 = 2048;
                      v181 = v155;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_296:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      v28 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 613;
                      *&v172[18] = 2048;
                      *&v172[20] = v106;
                      v173 = 2048;
                      *v174 = v155;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_297:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 613;
                      *&v172[18] = 2048;
                      *&v172[20] = v28;
                      v173 = 2048;
                      *v174 = v150;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_298:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 613;
                      *&v172[18] = 2048;
                      *&v172[20] = v28;
                      v173 = 2048;
                      *v174 = v155;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_299:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 797;
                      *&v172[18] = 2048;
                      *&v172[20] = v28;
                      v173 = 2048;
                      *v174 = v29;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_300:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      v106 = MEMORY[0x1E69E9C10];
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 613;
                      *&v172[18] = 2048;
                      *&v172[20] = v28;
                      v173 = 2048;
                      *v174 = v155;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
LABEL_301:
                      *v169 = 0;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      v182 = 0u;
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v172 = 136315906;
                      *&v172[4] = "operator[]";
                      *&v172[12] = 1024;
                      *&v172[14] = 613;
                      *&v172[18] = 2048;
                      *&v172[20] = v106;
                      v173 = 2048;
                      *v174 = v143;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_302;
                    }

                    *(v51 + 4 * v50) = *(v47 + v143 + 4 * v50);
                    ++v50;
                  }

                  while (v48 != v50);
                  v140 = v29;
                  *&v171[2] = 0;
                  memset(&v169[8], 0, 20);
                  re::DynamicArray<int>::setCapacity(v169, v48);
                  v5 = 0;
                  ++*&v169[24];
                  v152 = v3;
                  v156 = v48;
                  do
                  {
                    v167 = 0;
                    v17 = *&v172[16];
                    if (*&v172[16] <= v5)
                    {
                      goto LABEL_292;
                    }

                    v52 = *(*&v174[2] + 4 * v5);
                    LODWORD(v164) = *(*&v174[2] + 4 * v5);
                    if ((v12 & 2) != 0)
                    {
                      if (v150 <= v3)
                      {
                        goto LABEL_293;
                      }

                      v53 = *(v149 + 4 * v3);
                    }

                    else
                    {
                      v53 = -1;
                    }

                    HIDWORD(v164) = v53;
                    if ((v12 & 8) != 0)
                    {
                      if (v155 <= v3)
                      {
                        goto LABEL_294;
                      }

                      v54 = *(v153 + 4 * v3);
                      v165 = v54;
                      if (v12 <= 0xF)
                      {
                        v55 = -1;
                      }

                      else
                      {
                        v55 = v54;
                      }
                    }

                    else
                    {
                      v54 = -1;
                      v165 = -1;
                      v55 = -1;
                      if (v12 > 0xF)
                      {
                        if (v155 <= v3)
                        {
                          goto LABEL_295;
                        }

                        v55 = *(v153 + 4 * v3);
                        v54 = -1;
                      }
                    }

                    v166 = v55;
                    LOBYTE(v167) = v12;
                    v56 = v52 + v45;
                    LODWORD(v182) = 0;
                    if ((v12 & 2) != 0)
                    {
                      v56 ^= v45 + (v56 << 6) + (v56 >> 2) + v53;
                    }

                    if ((v12 & 8) != 0)
                    {
                      v56 ^= v45 + v54 + (v56 << 6) + (v56 >> 2);
                    }

                    if (v12 >= 0x10)
                    {
                      v57 = (v45 + v55 + (v56 << 6) + (v56 >> 2)) ^ v56;
                    }

                    else
                    {
                      v57 = v56;
                    }

                    v58 = v161[1];
                    if (!v161[1])
                    {
                      LODWORD(v182) = v43;
                      goto LABEL_142;
                    }

                    v59 = v45;
                    v60 = vcnt_s8(v161[1]);
                    v60.i16[0] = vaddlv_u8(v60);
                    v61 = v60.u32[0];
                    if (v60.u32[0] > 1uLL)
                    {
                      v62 = v57;
                      if (v57 >= v161[1])
                      {
                        v62 = v57 % v161[1];
                      }
                    }

                    else
                    {
                      v62 = (v161[1] - 1) & v57;
                    }

                    v63 = v161[0];
                    v64 = *(v161[0] + v62);
                    if (!v64 || (v65 = *v64) == 0)
                    {
LABEL_127:
                      LODWORD(v182) = v43;
                      if (v61 > 1)
                      {
                        v67 = v57;
                        if (v57 >= v58)
                        {
                          v67 = v57 % v58;
                        }
                      }

                      else
                      {
                        v67 = (v58 - 1) & v57;
                      }

                      v68 = v63[v67];
                      if (v68)
                      {
                        v69 = *v68;
                        if (*v68)
                        {
                          do
                          {
                            v70 = v69[1];
                            if (v70 == v57)
                            {
                              {
                                v3 = v152;
                                v45 = v59;
                                v12 = v151;
                                if (!v158[1])
                                {
                                  goto LABEL_159;
                                }

                                v71 = vcnt_s8(v158[1]);
                                v71.i16[0] = vaddlv_u8(v71);
                                if (v71.u32[0] > 1uLL)
                                {
                                  v72 = v43;
                                  if (v158[1] <= v43)
                                  {
                                    v72 = v43 % LODWORD(v158[1]);
                                  }
                                }

                                else
                                {
                                  v72 = (LODWORD(v158[1]) - 1) & v43;
                                }

                                v73 = *(v158[0] + v72);
                                if (!v73 || (v74 = *v73) == 0)
                                {
LABEL_159:
                                  operator new();
                                }

                                while (1)
                                {
                                  v75 = v74[1];
                                  if (v75 == v43)
                                  {
                                    if (*(v74 + 4) == v43)
                                    {
                                      ++v43;
                                      goto LABEL_162;
                                    }
                                  }

                                  else
                                  {
                                    if (v71.u32[0] > 1uLL)
                                    {
                                      if (v75 >= v158[1])
                                      {
                                        v75 %= v158[1];
                                      }
                                    }

                                    else
                                    {
                                      v75 &= v158[1] - 1;
                                    }

                                    if (v75 != v72)
                                    {
                                      goto LABEL_159;
                                    }
                                  }

                                  v74 = *v74;
                                  if (!v74)
                                  {
                                    goto LABEL_159;
                                  }
                                }
                              }
                            }

                            else
                            {
                              if (v61 > 1)
                              {
                                if (v70 >= v58)
                                {
                                  v70 %= v58;
                                }
                              }

                              else
                              {
                                v70 &= v58 - 1;
                              }

                              if (v70 != v67)
                              {
                                break;
                              }
                            }

                            v69 = *v69;
                          }

                          while (v69);
                        }
                      }

LABEL_142:
                      operator new();
                    }

                    while (1)
                    {
                      v66 = v65[1];
                      if (v66 == v57)
                      {
                        break;
                      }

                      if (v61 > 1)
                      {
                        if (v66 >= v58)
                        {
                          v66 %= v58;
                        }
                      }

                      else
                      {
                        v66 &= v58 - 1;
                      }

                      if (v66 != v62)
                      {
                        goto LABEL_127;
                      }

LABEL_126:
                      v65 = *v65;
                      if (!v65)
                      {
                        goto LABEL_127;
                      }
                    }

                    {
                      goto LABEL_126;
                    }

                    LODWORD(v182) = *(v65 + 9);
                    v3 = v152;
                    v45 = v59;
                    v12 = v151;
LABEL_162:
                    v29 = v156;
                    re::DynamicArray<int>::add(v169, &v182);
                    ++v5;
                  }

                  while (v5 != v156);
                  v76 = *&v169[16];
                  if (!*&v169[16])
                  {
                    goto LABEL_304;
                  }

                  v77 = *&v171[2];
                  v78 = (v137 + 4 * v142);
                  *v78 = **&v171[2];
                  v5 = v146;
                  if (v76 == 1)
                  {
LABEL_305:
                    v164 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v175 = 136315906;
                    *&v175[4] = "operator[]";
                    v176 = 1024;
                    v177 = 789;
                    v178 = 2048;
                    v179 = 1;
                    v180 = 2048;
                    v181 = 1;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_306:
                    v164 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v175 = 136315906;
                    *&v175[4] = "operator[]";
                    v176 = 1024;
                    v177 = 789;
                    v178 = 2048;
                    v179 = 2;
                    v180 = 2048;
                    v181 = 2;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_307:
                    v164 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v175 = 136315906;
                    *&v175[4] = "operator[]";
                    v176 = 1024;
                    v177 = 789;
                    v178 = 2048;
                    v179 = 3;
                    v180 = 2048;
                    v181 = 3;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_308:
                    *v169 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v172 = 136315906;
                    *&v172[4] = "operator[]";
                    *&v172[12] = 1024;
                    *&v172[14] = 613;
                    *&v172[18] = 2048;
                    *&v172[20] = v3;
                    v173 = 2048;
                    *v174 = v150;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_309:
                    *v169 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v172 = 136315906;
                    *&v172[4] = "operator[]";
                    *&v172[12] = 1024;
                    *&v172[14] = 613;
                    *&v172[18] = 2048;
                    *&v172[20] = v3;
                    v173 = 2048;
                    *v174 = v155;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_310:
                    *v169 = 0;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v182 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v172 = 136315906;
                    *&v172[4] = "operator[]";
                    *&v172[12] = 1024;
                    *&v172[14] = 613;
                    *&v172[18] = 2048;
                    *&v172[20] = v3;
                    v173 = 2048;
                    *v174 = v155;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

                  *(v136 + 4 * v142) = v77[1];
                  if (v76 <= 2)
                  {
                    goto LABEL_306;
                  }

                  v79 = v77[2];
                  v80 = v142 + 3;
                  *(v135 + 4 * v142) = v79;
                  if (v140 == -1)
                  {
                    goto LABEL_169;
                  }

                  *(v137 + 4 * v80) = v79;
                  if (v76 == 3)
                  {
                    goto LABEL_307;
                  }

                  *(v134 + 4 * v142) = v77[3];
                  v80 = v142 + 6;
                  v78[5] = *v77;
LABEL_169:
                  if (*v169)
                  {
                    (*(**v169 + 40))(*v169);
                  }

                  if (*v172 && *&v174[2])
                  {
                    (*(**v172 + 40))();
                  }

                  v42 = v143;
                  v17 = *(v144 + 5);
                  v46 = v138;
LABEL_202:
                  ++v3;
                  v42 += 16;
                  v44 = v80;
                  if (v3 >= v17)
                  {
LABEL_205:
                    v157 = v43;
                    v87 = 12 * v43;
                    v88 = [v132 newBufferWithLength:v87 options:0];
                    v154 = re::GeomMesh::accessVertexPositions(v144);
                    v155 = v89;
                    v90 = [v88 contents];
                    if ((v12 & 1) != 0 && (v91 = [v132 newBufferWithLength:v87 options:0], (v92 = re::internal::GeomAttributeManager::attributeByName((v144 + 64), "vertexNormal")) != 0))
                    {
                      v141 = re::GeomAttribute::accessValues<int>(v92);
                      LODWORD(v143) = v93;
                      v94 = [v91 contents];
                    }

                    else
                    {
                      v141 = 0;
                      v94 = 0;
                      LODWORD(v143) = -1;
                    }

                    if ((v12 & 4) != 0 && (v95 = [v132 newBufferWithLength:v87 options:0], (v96 = re::internal::GeomAttributeManager::attributeByName((v144 + 64), "vertexColor")) != 0))
                    {
                      v139 = re::GeomAttribute::accessValues<int>(v96);
                      LODWORD(v142) = v97;
                      v3 = [v95 contents];
                    }

                    else
                    {
                      v139 = 0;
                      v3 = 0;
                      LODWORD(v142) = -1;
                    }

                    v98 = 16 * v157;
                    if ((v12 & 2) != 0)
                    {
                      v148 = [objc_msgSend(v132 newBufferWithLength:16 * v157 options:{0), "contents"}];
                    }

                    else
                    {
                      v148 = 0;
                    }

                    if ((v12 & 8) != 0)
                    {
                      v147 = [objc_msgSend(v132 newBufferWithLength:v98 options:{0), "contents"}];
                    }

                    else
                    {
                      v147 = 0;
                    }

                    if (v12 < 0x10)
                    {
                      v145 = 0;
                    }

                    else
                    {
                      v145 = [objc_msgSend(v132 newBufferWithLength:v98 options:{0), "contents"}];
                    }

                    if (!v157)
                    {
                      goto LABEL_280;
                    }

                    v29 = 0;
                    LODWORD(v150) = (v3 != 0) & (v12 >> 2);
                    v17 = (v147 != 0) & (v12 >> 3);
                    v100 = v12 > 0xF && v145 != 0;
                    while (1)
                    {
                      if (!v158[1])
                      {
                        goto LABEL_245;
                      }

                      v101 = vcnt_s8(v158[1]);
                      v101.i16[0] = vaddlv_u8(v101);
                      if (v101.u32[0] > 1uLL)
                      {
                        v102 = v29;
                        if (v158[1] <= v29)
                        {
                          v102 = v29 % LODWORD(v158[1]);
                        }
                      }

                      else
                      {
                        v102 = (v158[1] + 0xFFFFFFFF) & v29;
                      }

                      v103 = *(v158[0] + v102);
                      if (!v103 || (v104 = *v103) == 0)
                      {
LABEL_245:
                        operator new();
                      }

                      while (1)
                      {
                        v105 = v104[1];
                        if (v105 == v29)
                        {
                          break;
                        }

                        if (v101.u32[0] > 1uLL)
                        {
                          if (v105 >= v158[1])
                          {
                            v105 %= v158[1];
                          }
                        }

                        else
                        {
                          v105 &= v158[1] - 1;
                        }

                        if (v105 != v102)
                        {
                          goto LABEL_245;
                        }

LABEL_244:
                        v104 = *v104;
                        if (!v104)
                        {
                          goto LABEL_245;
                        }
                      }

                      if (v29 != *(v104 + 4))
                      {
                        goto LABEL_244;
                      }

                      v106 = *(v104 + 5);
                      if (v106 >= v155)
                      {
                        goto LABEL_296;
                      }

                      v107 = (v154 + 16 * v106);
                      v108 = (3 * v29);
                      *(v90 + 4 * v108) = *v107;
                      v109 = (v108 + 1);
                      *(v90 + 4 * v109) = v107[1];
                      v110 = v107[2];
                      v111 = (v108 + 2);
                      *(v90 + 4 * v111) = v110;
                      if ((v12 & (v94 != 0)) == 0)
                      {
                        goto LABEL_250;
                      }

                      if (v143 <= v106)
                      {
                        goto LABEL_301;
                      }

                      v112 = (v141 + 16 * v106);
                      *(v94 + 4 * v108) = *v112;
                      *(v94 + 4 * v109) = v112[1];
                      *(v94 + 4 * v111) = v112[2];
LABEL_250:
                      if (v150)
                      {
                        if (v142 > v106)
                        {
                          v113 = (v139 + 16 * v106);
                          *(v3 + 4 * v108) = *v113;
                          *(v3 + 4 * v109) = v113[1];
                          *(v3 + 4 * v111) = v113[2];
                          goto LABEL_253;
                        }

LABEL_302:
                        *v169 = 0;
                        v185 = 0u;
                        v186 = 0u;
                        v183 = 0u;
                        v184 = 0u;
                        v182 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v172 = 136315906;
                        *&v172[4] = "operator[]";
                        *&v172[12] = 1024;
                        *&v172[14] = 613;
                        *&v172[18] = 2048;
                        *&v172[20] = v106;
                        v173 = 2048;
                        *v174 = v142;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_303:
                        *v175 = 0;
                        v185 = 0u;
                        v186 = 0u;
                        v183 = 0u;
                        v184 = 0u;
                        v182 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v169 = 136315906;
                        *&v169[4] = "operator[]";
                        *&v169[12] = 1024;
                        *&v169[14] = 797;
                        *&v169[18] = 2048;
                        *&v169[20] = v3;
                        v170 = 2048;
                        *v171 = v17;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_304:
                        v164 = 0;
                        v185 = 0u;
                        v186 = 0u;
                        v183 = 0u;
                        v184 = 0u;
                        v182 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v175 = 136315906;
                        *&v175[4] = "operator[]";
                        v176 = 1024;
                        v177 = 789;
                        v178 = 2048;
                        v179 = 0;
                        v180 = 2048;
                        v181 = 0;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_305;
                      }

LABEL_253:
                      if (((v148 != 0) & (v12 >> 1)) != 0)
                      {
                        v114 = *(v104 + 6);
                        v115 = v146[40];
                        v116 = (v146[41] - v115) >> 4 <= v114 || v114 <= 0;
                        v117 = (v115 + 16 * v114);
                        if (v116)
                        {
                          v117 = v146 + 44;
                        }

                        *(v148 + 16 * (v29 & 0x3FFFFFFF)) = *v117;
                        if (!v17)
                        {
LABEL_261:
                          if (v100)
                          {
                            goto LABEL_262;
                          }

                          goto LABEL_269;
                        }
                      }

                      else if (!v17)
                      {
                        goto LABEL_261;
                      }

                      v122 = *(v104 + 7);
                      v123 = v146[30];
                      v124 = (v146[31] - v123) >> 4 <= v122 || v122 <= 0;
                      v125 = (v123 + 16 * v122);
                      if (v124)
                      {
                        v125 = v146 + 34;
                      }

                      *(v147 + 16 * (v29 & 0x3FFFFFFF)) = *v125;
                      if (v100)
                      {
LABEL_262:
                        v118 = *(v104 + 8);
                        v119 = v146[20];
                        v120 = (v146[21] - v119) >> 4 <= v118 || v118 <= 0;
                        v121 = (v119 + 16 * v118);
                        if (v120)
                        {
                          v121 = v146 + 24;
                        }

                        *(v145 + (v29 & 0x3FFFFFFF)) = *v121;
                      }

LABEL_269:
                      if (++v29 == v157)
                      {
LABEL_280:
                        v126 = __p[0];
                        if (__p[0])
                        {
                          do
                          {
                            v127 = *v126;
                            operator delete(v126);
                            v126 = v127;
                          }

                          while (v127);
                        }

                        v128 = v158[0];
                        v158[0] = 0;
                        if (v128)
                        {
                          operator delete(v128);
                        }

                        v129 = v162[0];
                        if (v162[0])
                        {
                          do
                          {
                            v130 = *v129;
                            operator delete(v129);
                            v129 = v130;
                          }

                          while (v130);
                        }

                        v131 = v161[0];
                        v161[0] = 0;
                        if (v131)
                        {
                          operator delete(v131);
                        }

LABEL_289:
                        operator new();
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

  return result;
}

double re::audio::MeshVisualizer::removeDebugVisMeshesNotInUse(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 28))
  {
    return result;
  }

  if (!*(a2 + 28))
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v8);
    }

    if (*(a1 + 32))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(*(a1 + 16) + v10);
        ++v11;
        v10 += 56;
      }

      while (v11 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v12 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v12;
    return result;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v44 = 0x7FFFFFFFLL;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 14;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
    return re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v41);
  }

  do
  {
    v13 = *(a1 + 16) + 56 * v5;
    v14 = *(a2 + 24);
    v15 = *(v13 + 16);
    v16 = v15 ^ (v15 >> 30);
    if (!v14 || (!v15 ? (v17 = 0) : (v17 = *(v15 + 792)), v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v16) ^ ((0xBF58476D1CE4E5B9 * v16) >> 27)), v19 = *(*(a2 + 8) + 4 * ((v17 ^ (v18 >> 31) ^ v18) % v14)), v19 == 0x7FFFFFFF))
    {
LABEL_24:
      if (v15)
      {
        v21 = *(v15 + 792);
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v16) ^ ((0xBF58476D1CE4E5B9 * v16) >> 27));
      v23 = v21 ^ (v22 >> 31) ^ v22;
      if (!DWORD2(v42))
      {
        LODWORD(v24) = 0;
LABEL_33:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addAsCopy(&v41, v24, v23, v13 + 8, (v13 + 8));
        ++HIDWORD(v44);
        LODWORD(v4) = *(a1 + 32);
        goto LABEL_34;
      }

      v24 = v23 % DWORD2(v42);
      v25 = *(*(&v41 + 1) + 4 * v24);
      if (v25 == 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      while (*(v42 + 40 * v25 + 24) != v15)
      {
        v25 = *(v42 + 40 * v25 + 8) & 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v20 = *(a2 + 16);
      while (*(v20 + 40 * v19 + 24) != v15)
      {
        v19 = *(v20 + 40 * v19 + 8) & 0x7FFFFFFF;
        if (v19 == 0x7FFFFFFF)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_34:
    if (v4 <= v5 + 1)
    {
      v26 = v5 + 1;
    }

    else
    {
      v26 = v4;
    }

    while (v26 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 16) + 56 * v5) & 0x80000000) != 0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v5) = v26;
LABEL_41:
    ;
  }

  while (v5 != v4);
  v27 = v43;
  if (v43)
  {
    v28 = 0;
    v29 = v42;
    v30 = 8;
    while ((*(v42 + v30) & 0x80000000) == 0)
    {
      ++v28;
      v30 += 40;
      if (v43 == v28)
      {
        LODWORD(v28) = v43;
        break;
      }
    }

    if (v43 != v28)
    {
      do
      {
        re::AssetHandle::AssetHandle(v39, (v29 + 40 * v28 + 16));
        if (v40)
        {
          v31 = *(v40 + 792);
        }

        else
        {
          v31 = 0;
        }

        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
        re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, v39, v31 ^ (v32 >> 31) ^ v32, v45);
        v33 = v47;
        if (v47 != 0x7FFFFFFF)
        {
          v34 = *(a1 + 16);
          v35 = *(v34 + 56 * v47) & 0x7FFFFFFF;
          if (v48 == 0x7FFFFFFF)
          {
            *(*(a1 + 8) + 4 * v46) = v35;
            v33 = v47;
          }

          else
          {
            *(v34 + 56 * v48) = *(v34 + 56 * v48) & 0x80000000 | v35;
          }

          re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::EntryBase::free(v34 + 56 * v33);
          v36 = v47;
          v37 = *(a1 + 40);
          *(*(a1 + 16) + 56 * v47) = *(*(a1 + 16) + 56 * v47) & 0x80000000 | *(a1 + 36);
          --*(a1 + 28);
          *(a1 + 36) = v36;
          *(a1 + 40) = v37 + 1;
        }

        re::AssetHandle::~AssetHandle(v39);
        v29 = v42;
        if (v43 <= v28 + 1)
        {
          v38 = v28 + 1;
        }

        else
        {
          v38 = v43;
        }

        while (v38 - 1 != v28)
        {
          LODWORD(v28) = v28 + 1;
          if ((*(v42 + 40 * v28 + 8) & 0x80000000) != 0)
          {
            goto LABEL_63;
          }
        }

        LODWORD(v28) = v38;
LABEL_63:
        ;
      }

      while (v28 != v27);
    }
  }

  return re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(&v41);
}

void re::audio::MeshVisualizer::addMeshAttributes(uint64_t a1, id **a2, uint64_t a3, _OWORD *a4)
{
  v145 = *MEMORY[0x1E69E9840];
  v139.n128_u64[0] = 0;
  v139.n128_u64[1] = &str_67;
  v142 = 0;
  LODWORD(v143) = 0;
  LODWORD(v144) = 0;
  v130 = 0;
  v131 = &str_67;
  v8 = (*a2)[1];
  v129 = **a2;
  v9 = v129;
  v132 = 0;
  v133 = &str_67;
  v136 = 0;
  LODWORD(v137) = 0;
  LODWORD(v138) = 0;
  re::StringID::operator=(&v132, &v130);
  v134 = 1;
  v135 = v8;
  v10 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v129);
  v11 = v132;
  v12 = v133;
  v132 = 0;
  v133 = &str_67;
  v13 = v139.n128_u8[0];
  v14 = v139.n128_u64[1];
  v139.n128_u64[0] = v11;
  v139.n128_u64[1] = v12;
  if (v13)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v15 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  v16 = v129;
  if (v129)
  {

    v129 = 0;
  }

  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  v18 = (*a2)[4];
  v128 = (*a2)[3];
  v19 = v128;
  v132 = 0;
  v133 = &str_67;
  v136 = 0;
  LODWORD(v137) = 0;
  LODWORD(v138) = 0;
  re::StringID::operator=(&v132, &v130);
  v134 = 1;
  v135 = v18;
  v20 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v128);
  v21 = v132;
  v22 = v133;
  v132 = 0;
  v133 = &str_67;
  v23 = v139.n128_u8[0];
  v24 = v139.n128_u64[1];
  v139.n128_u64[0] = v21;
  v139.n128_u64[1] = v22;
  if (v23)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v25 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  v26 = v128;
  if (v128)
  {

    v128 = 0;
  }

  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v28 = *a2;
  if (*(*a2 + 72) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v29 = (*a2)[7];
    v127 = (*a2)[6];
    v30 = v127;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v29;
    v31 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v127);
    v32 = v132;
    v33 = v133;
    v132 = 0;
    v133 = &str_67;
    v34 = v139.n128_u8[0];
    v35 = v139.n128_u64[1];
    v139.n128_u64[0] = v32;
    v139.n128_u64[1] = v33;
    if (v34)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v36 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v37 = v127;
    if (v127)
    {

      v127 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 136) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v38 = (*a2)[15];
    v126 = (*a2)[14];
    v39 = v126;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v38;
    v40 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v126);
    v41 = v132;
    v42 = v133;
    v132 = 0;
    v133 = &str_67;
    v43 = v139.n128_u8[0];
    v44 = v139.n128_u64[1];
    v139.n128_u64[0] = v41;
    v139.n128_u64[1] = v42;
    if (v43)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v45 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v46 = v126;
    if (v126)
    {

      v126 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 104) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v47 = (*a2)[11];
    v125 = (*a2)[10];
    v48 = v125;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v47;
    v49 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v125);
    v50 = v132;
    v51 = v133;
    v132 = 0;
    v133 = &str_67;
    v52 = v139.n128_u8[0];
    v53 = v139.n128_u64[1];
    v139.n128_u64[0] = v50;
    v139.n128_u64[1] = v51;
    if (v52)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v54 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v55 = v125;
    if (v125)
    {

      v125 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 168) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v56 = (*a2)[19];
    v124 = (*a2)[18];
    v57 = v124;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v56;
    v58 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v124);
    v59 = v132;
    v60 = v133;
    v132 = 0;
    v133 = &str_67;
    v61 = v139.n128_u8[0];
    v62 = v139.n128_u64[1];
    v139.n128_u64[0] = v59;
    v139.n128_u64[1] = v60;
    if (v61)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v63 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v64 = v124;
    if (v124)
    {

      v124 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v28 = *a2;
  }

  if (*(v28 + 200) == 1)
  {
    v130 = 0;
    v131 = &str_67;
    v65 = (*a2)[23];
    v123 = (*a2)[22];
    v66 = v123;
    v132 = 0;
    v133 = &str_67;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v138) = 0;
    re::StringID::operator=(&v132, &v130);
    v134 = 1;
    v135 = v65;
    v67 = NS::SharedPtr<MTL::Buffer>::operator=(&v136, &v123);
    v68 = v132;
    v69 = v133;
    v132 = 0;
    v133 = &str_67;
    v70 = v139.n128_u8[0];
    v71 = v139.n128_u64[1];
    v139.n128_u64[0] = v68;
    v139.n128_u64[1] = v69;
    if (v70)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v72 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    v73 = v123;
    if (v123)
    {

      v123 = 0;
    }

    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  v130 = 0;
  v131 = &str_67;
  *v122 = a4[2];
  v74 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>(&v130, v122, &v132);
  v75 = v132;
  v76 = v133;
  v132 = 0;
  v133 = &str_67;
  v77 = v139.n128_u8[0];
  v78 = v139.n128_u64[1];
  v139.n128_u64[0] = v75;
  v139.n128_u64[1] = v76;
  if (v77)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v79 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  *v122 = a4[1];
  v81 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
  v82 = v132;
  v83 = v133;
  v132 = 0;
  v133 = &str_67;
  v84 = v139.n128_u8[0];
  v85 = v139.n128_u64[1];
  v139.n128_u64[0] = v82;
  v139.n128_u64[1] = v83;
  if (v84)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v86 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v130 = 0;
  v131 = &str_67;
  *v122 = *a4;
  v88 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector3<float>>(&v130, v122, &v132);
  v89 = v132;
  v90 = v133;
  v132 = 0;
  v133 = &str_67;
  v91 = v139.n128_u8[0];
  v92 = v139.n128_u64[1];
  v139.n128_u64[0] = v89;
  v139.n128_u64[1] = v90;
  if (v91)
  {
  }

  v140 = v134;
  v141 = v135;
  NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
  v143 = v137;
  v144 = v138;
  v93 = v136;
  if (v136)
  {

    v136 = 0;
  }

  if (v132)
  {
    if (v132)
    {
    }
  }

  v132 = 0;
  v133 = &str_67;
  if (v130)
  {
    if (v130)
    {
    }
  }

  re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  v95 = *(a1 + 96);
  if (v95 == 6 || *(a1 + 100) == 6)
  {
    v122[0] = 1.0 / (((*(a1 + 120) - *(*a2 + 53)) / 50.0) + 1.0);
    v130 = 0;
    v131 = &str_67;
    v96 = re::PrimitiveMeshAttribute::uniformCustomAttribute<float>(&v130, v122, &v132);
    v97 = v132;
    v98 = v133;
    v132 = 0;
    v133 = &str_67;
    v99 = v139.n128_u8[0];
    v100 = v139.n128_u64[1];
    v139.n128_u64[0] = v97;
    v139.n128_u64[1] = v98;
    if (v99)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v101 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
    v95 = *(a1 + 96);
  }

  if (v95 == 7)
  {
    v130 = 0;
    v131 = &str_67;
    *v122 = *(a1 + 128);
    v102 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
    v103 = v132;
    v104 = v133;
    v132 = 0;
    v133 = &str_67;
    v105 = v139.n128_u8[0];
    v106 = v139.n128_u64[1];
    v139.n128_u64[0] = v103;
    v139.n128_u64[1] = v104;
    if (v105)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v107 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  if (*(a1 + 100) == 7)
  {
    v130 = 0;
    v131 = &str_67;
    *v122 = *(a1 + 144);
    v108 = re::PrimitiveMeshAttribute::uniformCustomAttribute<re::Vector4<float>>(&v130, v122, &v132);
    v109 = v132;
    v110 = v133;
    v132 = 0;
    v133 = &str_67;
    v111 = v139.n128_u8[0];
    v112 = v139.n128_u64[1];
    v139.n128_u64[0] = v109;
    v139.n128_u64[1] = v110;
    if (v111)
    {
    }

    v140 = v134;
    v141 = v135;
    NS::SharedPtr<MTL::Texture>::operator=(&v142, &v136);
    v143 = v137;
    v144 = v138;
    v113 = v136;
    if (v136)
    {

      v136 = 0;
    }

    if (v132)
    {
      if (v132)
      {
      }
    }

    v132 = 0;
    v133 = &str_67;
    if (v130)
    {
      if (v130)
      {
      }
    }

    re::DynamicArray<re::PrimitiveMeshAttribute>::add(a3, &v139);
  }

  v114 = *a2;
  *(a3 + 80) = (*a2)[2];
  *(a3 + 88) = v114[5];
  __asm
  {
    FMOV            V0.4S, #-25.0
    FMOV            V1.4S, #25.0
  }

  *(a3 + 48) = _Q0;
  *(a3 + 64) = _Q1;
  v121 = v142;
  if (v142)
  {

    v142 = 0;
  }

  if (v139.n128_u8[0])
  {
    if (v139.n128_u8[0])
    {
    }
  }
}

__n128 re::DynamicArray<re::PrimitiveMeshAttribute>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveMeshAttribute>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  v6 = a2->n128_u64[0];
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  *v5 = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  LOWORD(v6) = a2[1].n128_u16[0];
  *(v5 + 18) = a2[1].n128_u8[2];
  *(v5 + 16) = v6;
  *(v5 + 24) = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  result = a2[2];
  v8 = a2[3];
  *(v5 + 32) = result;
  *(v5 + 48) = v8;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::audio::MeshVisualizer::drawDebugVisMesh(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (*(a1 + 96) || *(a1 + 100))
  {
    v8 = *(a2 + 8);
    v9 = v8 ? *(v8 + 792) : 0;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v9 ^ (v10 >> 31) ^ v10, &v21);
    if (HIDWORD(v22) != 0x7FFFFFFF)
    {
      v11 = *(a2 + 8);
      if (v11)
      {
        v12 = *(v11 + 792);
      }

      else
      {
        v12 = 0;
      }

      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
      re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v12 ^ (v13 >> 31) ^ v13, &v21);
      v14 = *(a1 + 16) + 56 * HIDWORD(v22);
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v16 + 208))
      {
        if (*(v16 + 16) && *(v16 + 40) != 0)
        {
          if (((v18 & 1) == 0 || *(v16 + 72) == 1) && ((v18 & 2) == 0 || *(v16 + 104) == 1) && ((v18 & 4) == 0 || *(v16 + 136) == 1) && ((v18 & 8) == 0 || *(v16 + 168) == 1) && (v18 < 0x10 || *(v16 + 200) == 1))
          {
            v25 = 0;
            v22 = 0;
            v23 = 0;
            v20[1] = &v15->__vftable;
            v21 = 0;
            v24 = 0;
            v19.i64[0] = 0x7F0000007FLL;
            v19.i64[1] = 0x7F0000007FLL;
            v26 = vnegq_f32(v19);
            v27 = v19;
            v28 = 0;
            v29 = 0;
            v20[0] = v16;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              re::audio::MeshVisualizer::addMeshAttributes(a1, v20, &v21, a3);
              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
            }

            else
            {
              re::audio::MeshVisualizer::addMeshAttributes(a1, v20, &v21, a3);
            }

            re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::add((a4 + 1056), &v21);
            re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(&v21);
          }
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }
  }
}

__n128 re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  result = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v10;
  *(v5 + 48) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL std::__unordered_map_equal<re::audio::anonymous namespace::DebugVertexForHashing,std::__hash_value_type<re::audio::anonymous namespace::DebugVertexForHashing,unsigned int>,re::audio::anonymous namespace::DebugVertexForHashing::Equality,re::audio::anonymous namespace::DebugVertexForHashing::Hash,true>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || (v2 & 2) != 0 && *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if ((v2 & 8) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    return *(a1 + 12) == *(a2 + 12);
  }

  return 1;
}

_BYTE *re::audio::anonymous namespace::meshHasMaterials(re::audio::_anonymous_namespace_ *this, const re::GeomMesh *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), re::AcousticMeshAsset::kMaterialAttributeName);
  if (result)
  {
    if (result[16] == 2)
    {
      return ((*(*result + 16))(result) == *(this + 10));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  v8 = *(a2 + 8);
  if (*(v7 + 56 * v6 + 16) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v9 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 56 * v9 + 16) == v8)
      {
        break;
      }

      v9 = *(v7 + 56 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void std::__shared_ptr_emplace<re::audio::DebugVisMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CF4450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::audio::DebugVisMesh>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
  }

  if (*(a1 + 192) == 1)
  {
  }

  if (*(a1 + 160) == 1)
  {
  }

  if (*(a1 + 128) == 1)
  {
  }

  if (*(a1 + 96) == 1)
  {
  }

  v2 = *(a1 + 24);
}

uint64_t re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                *(v20 + 16) = v19[2];
                v19[2] = 0;
                v21 = *(v20 + 8);
                *(v20 + 8) = 0;
                *(v20 + 8) = v19[1];
                v19[1] = v21;
                v22 = *(v20 + 24);
                *(v20 + 24) = v19[3];
                v19[3] = v22;
                v13 = *&v30[16];
                v23 = *&v30[16] + v17;
                *(v20 + 32) = *(*&v30[16] + v17 + 32);
                *(v23 + 32) = 0;
                *(v23 + 40) = 0;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 56 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 48) = a3;
  ++*(a1 + 28);
  return v24 + 56 * v5;
}

void *re::DynamicArray<re::PrimitiveMeshAttribute>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          v11[3] = v8[3];
          v8[3] = 0;
          v13 = *(v8 + 3);
          *(v11 + 2) = *(v8 + 2);
          *(v11 + 3) = v13;
          v14 = v8[3];
          if (v14)
          {

            v8[3] = 0;
          }

          re::StringID::destroyString(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
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
        v10 = v8 + 96 * v9;
        v11 = v7 + 3;
        do
        {
          v11[1] = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
          *(v11 - 3) = 0;
          *v11 = 0;
          v12 = *(v8 + 8);
          *(v11 - 3) = *v8;
          *(v11 - 2) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 1);
          *(v11 - 1) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = v11[1];
          v11[1] = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*v11;
          v15 = *(v8 + 48);
          v16 = *(v8 + 64);
          *(v11 + 7) = *(v8 + 80);
          *(v11 + 5) = v16;
          *(v11 + 3) = v15;
          re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(v8);
          v8 += 96;
          v11 += 12;
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

void *re::ecs2::allocInfo_ConstraintListComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_302, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_302))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB928, "ConstraintListComponent");
    __cxa_guard_release(&_MergedGlobals_302);
  }

  return &unk_1EE1AB928;
}

void re::ecs2::initInfo_ConstraintListComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x4DF95D33529CFE04;
  v10[1] = "ConstraintListComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AB920, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB920);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AB918 = v8;
      __cxa_guard_release(&qword_1EE1AB920);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB918;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ConstraintListComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ConstraintListComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ConstraintListComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ConstraintListComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223ConstraintListComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::ecs2::ConstraintListComponent>(int a1, int a2, ArcSharedObject *this)
{
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
  *v3 = &unk_1F5CDB8C0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 104) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::ConstraintListComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a3 + 9));
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::ConstraintListComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CDB8C0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 104) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::ConstraintListComponent>(void *a1)
{
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a1 + 9));
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223ConstraintListComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_LightService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_303, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_303))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB9C0, "LightService");
    __cxa_guard_release(&_MergedGlobals_303);
  }

  return &unk_1EE1AB9C0;
}

void re::ecs2::initInfo_LightService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x381065EB96D171BELL;
  v6[1] = "LightService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_LightService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_ClientAnchorSyncComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_304, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_304))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABA80, "ClientAnchorSyncComponent");
    __cxa_guard_release(&_MergedGlobals_304);
  }

  return &unk_1EE1ABA80;
}

void re::ecs2::initInfo_ClientAnchorSyncComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x876CF2DECCC0DC04;
  v21[1] = "ClientAnchorSyncComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1ABA58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ABA58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1ABA60 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isAnchored";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ABA68 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "isExternal";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1ABA70 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::introspect_Matrix4x4F(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "anchorTransform";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ABA78 = v19;
      __cxa_guard_release(&qword_1EE1ABA58);
    }
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1ABA60;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225ClientAnchorSyncComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

double re::internal::defaultConstruct<re::ecs2::ClientAnchorSyncComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6CD0;
  *(v3 + 25) = 0;
  *(v3 + 32) = xmmword_1E3047670;
  *(v3 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v3 + 64) = xmmword_1E30476A0;
  *(v3 + 80) = xmmword_1E30474D0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ClientAnchorSyncComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6CD0;
  *(v1 + 25) = 0;
  *(v1 + 32) = xmmword_1E3047670;
  *(v1 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v1 + 64) = xmmword_1E30476A0;
  *(v1 + 80) = xmmword_1E30474D0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225ClientAnchorSyncComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_SelectableSceneContentIdentifierComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABB18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABB30, "SelectableSceneContentIdentifierComponent");
    __cxa_guard_release(&qword_1EE1ABB18);
  }

  return &unk_1EE1ABB30;
}

void re::ecs2::initInfo_SelectableSceneContentIdentifierComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x7D285A8B2F4746E2;
  v14[1] = "SelectableSceneContentIdentifierComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&_MergedGlobals_305, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_305);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1ABB20 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_displayListItemIdentifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ABB28 = v12;
      __cxa_guard_release(&_MergedGlobals_305);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1ABB20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs241SelectableSceneContentIdentifierComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::SelectableSceneContentIdentifierComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6FA0;
}

void re::internal::defaultConstructV2<re::ecs2::SelectableSceneContentIdentifierComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6FA0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs241SelectableSceneContentIdentifierComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_RenderOptionsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_306, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_306))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABBE8, "RenderOptionsComponent");
    __cxa_guard_release(&_MergedGlobals_306);
  }

  return &unk_1EE1ABBE8;
}

void re::ecs2::initInfo_RenderOptionsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x2852AFBB60071BAALL;
  v17[1] = "RenderOptionsComponent";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1ABBC8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ABBC8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1ABBD0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = introspect_REVisibilityMode(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "mode";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ABBD8 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_HierarchicalMeshOverrideFlags(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "overrideFlags";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1A00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ABBE0 = v15;
      __cxa_guard_release(&qword_1EE1ABBC8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1ABBD0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderOptionsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderOptionsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderOptionsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderOptionsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RenderOptionsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v16 = v18;
}

BOOL re::ecs2::RenderOptionsComponent::calculateVisibilityAgainstHierarchy(re::ecs2::RenderOptionsComponent *this, const re::ecs2::Entity *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v11 = 1;
  if (re::ecs2::RenderOptionsComponent::mixVisibility(this, 1, &v11, 0, a5))
  {
    v7 = *(this + 4);
    if (v7)
    {
      if ((*(v7 + 304) & 0x80) == 0)
      {
        do
        {
          v8 = re::ecs2::RenderOptionsComponent::mixVisibility(v7, 1, 0, &v11, v6);
          v7 = *(v7 + 32);
          if (!v7)
          {
            break;
          }

          v9 = (*(v7 + 304) & 0x80) != 0 ? 0 : v8;
        }

        while ((v9 & 1) != 0);
      }
    }
  }

  return v11;
}

uint64_t re::ecs2::RenderOptionsComponent::mixVisibility(re::ecs2::RenderOptionsComponent *this, const re::ecs2::Entity *a2, _BYTE *a3, BOOL *a4, BOOL *a5)
{
  v8 = *(this + 29);
  if (v8)
  {
    if (v8[36] == 1 && (v8[37] & 1) == 0)
    {
      if (v8[48] == 1)
      {
        if (a4)
        {
          v15 = 0;
          result = 0;
          *a4 = 0;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8[25];
    if (v10 == 2)
    {
      v16 = *(this + 27);
      if (v16 && *(v16 + 32))
      {
        LODWORD(a2) = RESyncableIsAuthoritative() ^ 1;
        goto LABEL_22;
      }
    }

    else if (v10 != 1)
    {
      if (v10)
      {
        LOBYTE(a2) = 0;
        v12 = 0;
        if (v9)
        {
          goto LABEL_25;
        }

LABEL_27:
        v17 = *(this + 76) & 0x41;
        if (v17)
        {
          v15 = a2;
        }

        else
        {
          v15 = 0;
        }

        if ((*(this + 76) & 0x41) != 0)
        {
          result = v12;
        }

        else
        {
          result = 0;
        }

        if (a4 && v17)
        {
          v15 = *a4;
          result = v12;
        }

        goto LABEL_36;
      }

      v11 = 1;
      v12 = 1;
      if (!a4)
      {
LABEL_24:
        if (v9)
        {
LABEL_25:
          v15 = 0;
          result = 0;
          goto LABEL_36;
        }

        goto LABEL_27;
      }

LABEL_23:
      *a4 = a2;
      v12 = v11;
      LOBYTE(a2) = 0;
      goto LABEL_24;
    }

    LOBYTE(a2) = 0;
LABEL_22:
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a4)
  {
    *a4 = a2;
  }

  v13 = *(this + 304);
  result = (v13 & 0x41) != 0;
  if ((v13 & 0x41) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0;
  }

LABEL_36:
  if (a3)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t re::ecs2::RenderOptionsComponent::mixMeshFlags(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = *(result + 232);
  if (!v11)
  {
    v54 = 0;
    v53 = 0;
    v51 = 0;
    v52 = 0;
    if ((*a4 & 1) == 0)
    {
      v23 = (a4 + 2);
      if ((*(a4 + 2) & 1) == 0)
      {
        v25 = (a4 + 4);
        if ((*(a4 + 4) & 1) == 0)
        {
          *(a4 + 6) = 0;
          v27 = (a4 + 6);
          v28 = (a4 + 7);
          v29 = (a4 + 10);
          if ((*(a4 + 10) & 1) == 0)
          {
            v31 = (a4 + 12);
            if ((*(a4 + 12) & 1) == 0)
            {
              v33 = (a4 + 14);
              if ((*(a4 + 14) & 1) == 0)
              {
                v35 = (a4 + 16);
                if ((*(a4 + 16) & 1) == 0)
                {
                  v36 = 0;
                  v34 = 0;
                  v32 = 0;
                  v30 = 0;
                  v26 = 0;
                  v22 = 0;
                  v24 = 0;
                  v37 = (a4 + 18);
                  v38 = *(a4 + 18);
                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_88;
                }

                v34 = 0;
                v32 = 0;
                v30 = 0;
                v26 = 0;
                v22 = 0;
                v24 = 0;
                v16 = 0;
                LOBYTE(v21) = 0;
LABEL_80:
                v36 = 0;
                *v35 = 0;
                goto LABEL_81;
              }

              v32 = 0;
              v30 = 0;
              v26 = 0;
              v22 = 0;
              v24 = 0;
              LOBYTE(v20) = 0;
              a6 = 0;
              LOBYTE(v21) = 0;
              v16 = 0;
LABEL_71:
              v34 = 0;
              *v33 = 0;
              goto LABEL_72;
            }

            v30 = 0;
            v26 = 0;
            v22 = 0;
            v24 = 0;
            v16 = 0;
            LOBYTE(v21) = 0;
            a6 = 0;
            LOBYTE(v20) = 0;
            v10 = 0;
            LOBYTE(v19) = 0;
LABEL_62:
            v32 = 0;
            *v31 = 0;
            goto LABEL_63;
          }

          v26 = 0;
          v22 = 0;
          v24 = 0;
          LOBYTE(v18) = 0;
          v9 = 0;
          LOBYTE(v19) = 0;
          v10 = 0;
          LOBYTE(v20) = 0;
          a6 = 0;
          LOBYTE(v21) = 0;
          v16 = 0;
LABEL_53:
          v30 = 0;
          *v29 = 0;
          goto LABEL_54;
        }

        v22 = 0;
        v24 = 0;
        v16 = 0;
        LOBYTE(v21) = 0;
        a6 = 0;
        LOBYTE(v20) = 0;
        v10 = 0;
        LOBYTE(v19) = 0;
        v9 = 0;
        LOBYTE(v18) = 0;
        a5 = 0;
        LOBYTE(v17) = 0;
        v15 = 0;
LABEL_44:
        v26 = 0;
        *v25 = 0;
        goto LABEL_45;
      }

      v22 = 0;
      LOBYTE(v14) = 0;
      v8 = 0;
      v15 = 0;
      LOBYTE(v17) = 0;
      a5 = 0;
      LOBYTE(v18) = 0;
      v9 = 0;
      LOBYTE(v19) = 0;
      v10 = 0;
      LOBYTE(v20) = 0;
      a6 = 0;
      LOBYTE(v21) = 0;
      v16 = 0;
LABEL_34:
      v24 = 0;
      *v23 = 0;
      goto LABEL_36;
    }

    v16 = 0;
    LOBYTE(v21) = 0;
    a6 = 0;
    LOBYTE(v20) = 0;
    v10 = 0;
    LOBYTE(v19) = 0;
    v9 = 0;
    LOBYTE(v18) = 0;
    a5 = 0;
    LOBYTE(v17) = 0;
    v15 = 0;
    v8 = 0;
    LOBYTE(v14) = 0;
    v7 = 0;
    LOBYTE(v13) = 0;
LABEL_23:
    v22 = 0;
    *a4 = 0;
    goto LABEL_29;
  }

  v12 = *(v11 + 26);
  if (v12 == 1)
  {
    v6 = *(v11 + 27);
  }

  v13 = *(v11 + 28);
  if (v13 == 1)
  {
    v7 = *(v11 + 29);
  }

  v14 = *(v11 + 30);
  if (v14 == 1)
  {
    v8 = *(v11 + 31);
  }

  v15 = *(v11 + 32);
  v53 = *(v11 + 33);
  v16 = *(v11 + 35);
  v54 = *(v11 + 35);
  v17 = *(v11 + 36);
  if (v17 == 1)
  {
    a5 = *(v11 + 37);
  }

  v18 = *(v11 + 38);
  if (v18 == 1)
  {
    v9 = *(v11 + 39);
  }

  v19 = *(v11 + 40);
  if (v19 == 1)
  {
    v10 = *(v11 + 41);
  }

  v20 = *(v11 + 42);
  if (v20 == 1)
  {
    a6 = *(v11 + 43);
  }

  v21 = *(v11 + 44);
  if (v21 == 1)
  {
    v16 = *(v11 + 46);
  }

  v51 = *(v11 + 48);
  v52 = *(v11 + 52);
  if (*a4)
  {
    if (v12)
    {
      *(a4 + 1) = v6;
      v22 = 1;
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v12)
  {
    v22 = 1;
    *a4 = 1;
    *(a4 + 1) = v6;
  }

  else
  {
    v22 = 0;
  }

LABEL_29:
  v23 = (a4 + 2);
  if (*(a4 + 2))
  {
    if (v13)
    {
      *(a4 + 3) = v7;
      v24 = 1;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v13)
  {
    v24 = 1;
    *(a4 + 2) = 1;
    *(a4 + 3) = v7;
  }

  else
  {
    v24 = 0;
  }

LABEL_36:
  v25 = (a4 + 4);
  if (*(a4 + 4))
  {
    if (v14)
    {
      *(a4 + 5) = v8;
      v26 = 1;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v14)
  {
    v26 = 1;
    *(a4 + 4) = 1;
    *(a4 + 5) = v8;
  }

  else
  {
    v26 = 0;
  }

LABEL_45:
  *(a4 + 6) = v15;
  v27 = (a4 + 6);
  *(a4 + 7) = v53;
  v28 = (a4 + 7);
  *(a4 + 9) = v54;
  v29 = (a4 + 10);
  if (*(a4 + 10))
  {
    if (v17)
    {
      *(a4 + 11) = a5;
      v30 = 1;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v17)
  {
    v30 = 1;
    *(a4 + 10) = 1;
    *(a4 + 11) = a5;
  }

  else
  {
    v30 = 0;
  }

LABEL_54:
  v31 = (a4 + 12);
  if (*(a4 + 12))
  {
    if (v18)
    {
      *(a4 + 13) = v9;
      v32 = 1;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v18)
  {
    v32 = 1;
    *(a4 + 12) = 1;
    *(a4 + 13) = v9;
  }

  else
  {
    v32 = 0;
  }

LABEL_63:
  v33 = (a4 + 14);
  if (*(a4 + 14))
  {
    if (v19)
    {
      *(a4 + 15) = v10;
      v34 = 1;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v19)
  {
    v34 = 1;
    *(a4 + 14) = 1;
    *(a4 + 15) = v10;
  }

  else
  {
    v34 = 0;
  }

LABEL_72:
  v35 = (a4 + 16);
  if (*(a4 + 16))
  {
    if (v20)
    {
      *(a4 + 17) = a6;
      v36 = 1;
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (v20)
  {
    v36 = 1;
    *(a4 + 16) = 1;
    *(a4 + 17) = a6;
  }

  else
  {
    v36 = 0;
  }

LABEL_81:
  v37 = (a4 + 18);
  if (*(a4 + 18))
  {
    if (v21)
    {
      *(a4 + 20) = v16;
      v38 = 1;
      goto LABEL_89;
    }

LABEL_88:
    v38 = 0;
    *v37 = 0;
    goto LABEL_89;
  }

  if (v21)
  {
    v38 = 1;
    *(a4 + 18) = 1;
    *(a4 + 20) = v16;
  }

  else
  {
    v38 = 0;
  }

LABEL_89:
  *(a4 + 22) = v51;
  v39 = (a4 + 22);
  *(a4 + 26) = v52;
  if (*(a2 + 8) == 1)
  {
    if (*(a2 + 6) == 1)
    {
      *(a4 + 8) = 1;
      *(a4 + 6) = 1;
      if (v24)
      {
        v40 = 0;
        v41 = 2;
LABEL_97:
        *(a4 + v41) = v40;
      }
    }

    else if (*(a2 + 2) == 1)
    {
      *(a4 + 8) = 1;
      *(a4 + 6) = 0;
      v40 = *(a2 + 3);
      if ((v24 & 1) == 0)
      {
        *(a4 + 2) = 1;
      }

      v41 = 3;
      goto LABEL_97;
    }
  }

  if (*a2 == 1 && *(a2 + 7) == 1)
  {
    *(a4 + 7) = 1;
    v42 = *(a2 + 1);
    if ((v22 & 1) == 0)
    {
      *a4 = 1;
    }

    *(a4 + 1) = v42;
    v22 = 1;
  }

  if (*(a2 + 4) == 1 && *(a2 + 9) == 1)
  {
    *(a4 + 9) = 1;
    v43 = *(a2 + 5);
    if ((v26 & 1) == 0)
    {
      *(a4 + 4) = 1;
    }

    *(a4 + 5) = v43;
  }

  if (*(a2 + 10) == 1 && *(a2 + 22) == 1)
  {
    *v39 = 1;
    v44 = *(a2 + 11);
    if ((v30 & 1) == 0)
    {
      *(a4 + 10) = 1;
    }

    *(a4 + 11) = v44;
  }

  if (*(a2 + 12) == 1 && *(a2 + 23) == 1)
  {
    *(a4 + 23) = 1;
    v45 = *(a2 + 13);
    if ((v32 & 1) == 0)
    {
      *(a4 + 12) = 1;
    }

    *(a4 + 13) = v45;
  }

  if (*(a2 + 14) == 1 && *(a2 + 24) == 1)
  {
    *(a4 + 24) = 1;
    v46 = *(a2 + 15);
    if ((v34 & 1) == 0)
    {
      *(a4 + 14) = 1;
    }

    *(a4 + 15) = v46;
  }

  if (*(a2 + 16) == 1 && *(a2 + 25) == 1)
  {
    *(a4 + 25) = 1;
    v47 = *(a2 + 17);
    if ((v36 & 1) == 0)
    {
      *(a4 + 16) = 1;
    }

    *(a4 + 17) = v47;
  }

  if (*(a2 + 18) == 1 && *(a2 + 26) == 1)
  {
    *(a4 + 26) = 1;
    v48 = *(a2 + 20);
    if ((v38 & 1) == 0)
    {
      *(a4 + 18) = 1;
    }

    *(a4 + 20) = v48;
  }

  if ((*(result + 304) & 0x41) != 0)
  {
    if (*a3)
    {
      if ((v22 & 1) == 0)
      {
        *a3 = 0;
        goto LABEL_157;
      }
    }

    else
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_157;
      }

      *a3 = 1;
    }

    *(a3 + 1) = *(a4 + 1);
LABEL_157:
    if (*(a3 + 2))
    {
      if ((*v23 & 1) == 0)
      {
        *(a3 + 2) = 0;
        goto LABEL_163;
      }
    }

    else
    {
      if ((*v23 & 1) == 0)
      {
        goto LABEL_163;
      }

      *(a3 + 2) = 1;
    }

    *(a3 + 3) = *(a4 + 3);
LABEL_163:
    if (*(a3 + 4))
    {
      if ((*v25 & 1) == 0)
      {
        *(a3 + 4) = 0;
        goto LABEL_169;
      }
    }

    else
    {
      if ((*v25 & 1) == 0)
      {
        goto LABEL_169;
      }

      *(a3 + 4) = 1;
    }

    *(a3 + 5) = *(a4 + 5);
LABEL_169:
    *(a3 + 6) = *v27;
    v49 = *v28;
    *(a3 + 9) = *(v28 + 2);
    *(a3 + 7) = v49;
    if (*(a3 + 10))
    {
      if ((*v29 & 1) == 0)
      {
        *(a3 + 10) = 0;
        goto LABEL_175;
      }
    }

    else
    {
      if ((*v29 & 1) == 0)
      {
        goto LABEL_175;
      }

      *(a3 + 10) = 1;
    }

    *(a3 + 11) = *(a4 + 11);
LABEL_175:
    if (*(a3 + 12))
    {
      if ((*v31 & 1) == 0)
      {
        *(a3 + 12) = 0;
        goto LABEL_181;
      }
    }

    else
    {
      if ((*v31 & 1) == 0)
      {
        goto LABEL_181;
      }

      *(a3 + 12) = 1;
    }

    *(a3 + 13) = *(a4 + 13);
LABEL_181:
    if (*(a3 + 14))
    {
      if ((*v33 & 1) == 0)
      {
        *(a3 + 14) = 0;
        goto LABEL_187;
      }
    }

    else
    {
      if ((*v33 & 1) == 0)
      {
        goto LABEL_187;
      }

      *(a3 + 14) = 1;
    }

    *(a3 + 15) = *(a4 + 15);
LABEL_187:
    if (*(a3 + 16))
    {
      if ((*v35 & 1) == 0)
      {
        *(a3 + 16) = 0;
        goto LABEL_193;
      }
    }

    else
    {
      if ((*v35 & 1) == 0)
      {
        goto LABEL_193;
      }

      *(a3 + 16) = 1;
    }

    *(a3 + 17) = *(a4 + 17);
LABEL_193:
    if (*(a3 + 18))
    {
      if ((*v37 & 1) == 0)
      {
        *(a3 + 18) = 0;
LABEL_199:
        v50 = *v39;
        *(a3 + 26) = *(a4 + 26);
        *(a3 + 22) = v50;
        return result;
      }
    }

    else
    {
      if ((*v37 & 1) == 0)
      {
        goto LABEL_199;
      }

      *(a3 + 18) = 1;
    }

    *(a3 + 20) = *(a4 + 20);
    goto LABEL_199;
  }

  if (*a3)
  {
    *a3 = 0;
  }

  if (*(a3 + 2) == 1)
  {
    *(a3 + 2) = 0;
  }

  if (*(a3 + 4) == 1)
  {
    *(a3 + 4) = 0;
  }

  *(a3 + 6) = 0;
  if ((*(a3 + 10) & 1) == 0)
  {
    *(a3 + 10) = 1;
  }

  *(a3 + 11) = 0;
  if (*(a3 + 12) == 1)
  {
    *(a3 + 12) = 0;
  }

  if (*(a3 + 14) == 1)
  {
    *(a3 + 14) = 0;
  }

  if (*(a3 + 16) == 1)
  {
    *(a3 + 16) = 0;
  }

  if (*(a3 + 18) == 1)
  {
    *(a3 + 18) = 0;
  }

  *(a3 + 26) = 0;
  *(a3 + 22) = 0;
  return result;
}

void re::make::shared::unsafelyInplace<re::ecs2::RenderOptionsComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE1870;
  *(v1 + 25) = 0;
  *(v1 + 28) = 0;
  *(v1 + 30) = 0;
  *(v1 + 38) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 44) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222RenderOptionsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(re::ecs2::DynamicBoundingBoxComponent *this, const re::RenderManager *a2, re::ecs2::MeshDeformationComponent *a3)
{
  v5 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = (a2 + 232);
  v8 = *(a2 + 31);
  v9 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 40);
    if (v11)
    {
      if (v8 != *v11)
      {
        inited = objc_initWeak(&location, 0);
        v71 = 0uLL;
        *&v72 = 0;
        *(&v72 + 1) = re::globalAllocators(inited)[2];
        *&v73 = 0;
        re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::BoundingBoxBufferInputs,re::FrameManager>::reset((v10 + 32), &location, 0, &v71);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v71);
        objc_destroyWeak(&location);
        location = 0;
      }
    }
  }

  v54 = v7;
  v55 = 4;
  if (!re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty(v7, 4u))
  {
    v14 = re::ecs2::EntityComponentCollection::getOrAdd((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v13 = v14;
    if (*(v14 + 40))
    {
      return v13;
    }

    v51 = v14;
    v16 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v6 + 192) + 32)) + 640;
    v17 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v17)
    {
      v18 = (v17 + 216);
    }

    else
    {
      v18 = v16;
    }

    v19 = *(this + 18);
    if (v19)
    {
      v20 = (v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_initWeak(&v53, v20);
    v22 = re::globalAllocators(v21);
    v23 = (*(*v22[2] + 32))(v22[2], 56, 8);
    *v23 = *(v5 + 31);
    v24 = 0uLL;
    *(v23 + 10) = 0u;
    *(v23 + 6) = 0u;
    *(v23 + 2) = 0u;
    v60 = v7;
    v61 = 4;
    v25 = *(v5 + 46);
    if (v25 > 4)
    {
      v26 = v23;
      v25 = *(*(v5 + 47) + 440);
      if (v25)
      {
        *(v26 + 2) = v25;
        if (v25 >> 61)
        {
LABEL_53:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v25);
          _os_crash();
          __break(1u);
          goto LABEL_54;
        }

        v4 = 8 * v25;
        *(v26 + 3) = v28;
        if (!v28)
        {
LABEL_54:
          re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
LABEL_55:
          re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

        v30 = v28;
        if (v25 != 1)
        {
          v4 -= 8;
          bzero(v28, v4);
          v30 = (v30 + v4);
        }

        *v30 = 0;
        v31 = *(v18 + 42);
        v50 = v7;
        if (v31)
        {
          v32 = *(*(v18 + 43) + 4 * v31 - 4);
          *(v26 + 5) = v32;
          if (v32)
          {
            *(v26 + 6) = v33;
            if (!v33)
            {
              goto LABEL_55;
            }

            v3 = v33;
            for (i = v32 - 1; i; --i)
            {
              v3[8] = 0;
              *(v3 + 2) = 0u;
              *(v3 + 3) = 0u;
              *v3 = 0u;
              *(v3 + 1) = 0u;
              memset_pattern16(v3 + 1, &unk_1E30747C0, 0x40uLL);
              *(v3 + 15) = 0u;
              *(v3 + 13) = 0u;
              *(v3 + 11) = 0u;
              *(v3 + 9) = 0u;
              v3 += 17;
            }

            *v3 = 0;
            memset_pattern16(v3 + 1, &unk_1E30747C0, 0x40uLL);
            *(v3 + 15) = 0u;
            *(v3 + 13) = 0u;
            *(v3 + 11) = 0u;
            *(v3 + 9) = 0u;
          }
        }

        else
        {
          *(v26 + 5) = 0;
        }

        v49 = v5;
        v36 = 0;
        v57 = v50;
        v58 = 4;
        v59 = 0;
        v25 = &selRef_isLimitedRenderAsset;
        while (1)
        {
          v23 = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v60, &v71);
          if (HIDWORD(v58) == HIDWORD(v71) && v59 == v72)
          {
            break;
          }

          v3 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v57);
          v4 = re::MeshNameMap::meshPartStartIndexForInstance(v18, v3) + WORD2(v3);
          v37 = *(v26 + 5);
          if (v37 <= v4)
          {
            goto LABEL_49;
          }

          v38 = *(v26 + 6);
          v3 = *(this + 26);
          v39 = (v38 + 136 * v4 + 72);
          v40 = 64;
          do
          {
            if ([*v39 length] != 32)
            {
              *&v71 = [v3 newBufferWithLength:32 options:0];
              NS::SharedPtr<MTL::Texture>::operator=(v39, &v71);
              if (v71)
              {
              }
            }

            ++v39;
            v40 -= 8;
          }

          while (v40);

          v37 = *(v26 + 5);
          if (v37 <= v4)
          {
            goto LABEL_50;
          }

          v37 = v36;
          v3 = *(v26 + 2);
          if (v3 <= v36)
          {
            goto LABEL_51;
          }

          *(*(v26 + 3) + 8 * v36) = *(v26 + 6) + 136 * v4;
          re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v57);
          ++v36;
        }

        v5 = v49;
        v7 = v50;
      }

      v71 = 0uLL;
      *&v72 = 0;
      *(&v72 + 1) = re::globalAllocators(v23)[2];
      *&v73 = 0;
      v13 = v51;
      re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::BoundingBoxBufferInputs,re::FrameManager>::reset((v51 + 32), &v53, v26, &v71);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v71);
      objc_destroyWeak(&v53);
      v41 = 0;
      v25 = 0;
      v53 = 0;
      v42 = *(v5 + 49);
      v43 = *(v42 + 88);
      v37 = *(v42 + 96);
      v57 = v7;
      v58 = 4;
      v59 = 0;
      while (1)
      {
        re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v54, &v71);
        if (HIDWORD(v58) == HIDWORD(v71) && v59 == v72)
        {
          return v13;
        }

        v44 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v57);
        if (v43 <= v44)
        {
          break;
        }

        v46 = *(v51 + 40);
        v3 = *(v46 + 16);
        if (v3 <= v25)
        {
          goto LABEL_48;
        }

        v47 = v37 + 168 * v44;
        v48 = *(v46 + 24) + v41;
        ++*(v47 + 4);
        *(v47 + 56) = v48;
        re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v57);
        v25 = (v25 + 1);
        v41 += 8;
      }

      re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v44, v43);
      _os_crash();
      __break(1u);
LABEL_48:
      v60 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 468;
      v67 = 2048;
      v68 = v25;
      v69 = 2048;
      v70 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 468;
      v67 = 2048;
      v68 = v4;
      v69 = 2048;
      v70 = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 468;
      v67 = 2048;
      v68 = v4;
      v69 = 2048;
      v70 = v37;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      v66 = 468;
      v67 = 2048;
      v68 = v37;
      v69 = 2048;
      v70 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v57 = 0;
    v74 = v24;
    v75 = v24;
    v72 = v24;
    v73 = v24;
    v71 = v24;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    v66 = 476;
    v67 = 2048;
    v68 = 4;
    v69 = 2048;
    v70 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  return 0;
}

BOOL re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty(re::MeshDeformationRuntimeData::MeshDeformationIteration *this, unsigned int a2)
{
  if (*(this + 17) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 18) + 96 * a2 + 8) == 0;
}

void re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(re::ecs2::DynamicBoundingBoxComponent *this, const re::RenderManager *a2)
{
  v2 = this;
  v165 = *MEMORY[0x1E69E9840];
  v3 = *(*(a2 + 18) + 32);
  v4 = *(this + 2);
  v5 = v4[24];
  v6 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v5 + 32));
  v7 = *(v6 + 584);
  v8 = *(v6 + 568);
  v9 = re::ecs2::EntityComponentCollection::get((v4 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    v10 = v9 + 216;
    v7 = *(v9 + 208);
    v134 = *(v9 + 192);
  }

  else
  {
    v134 = v8;
    v10 = v6 + 640;
  }

  v11 = v4[25] + 232;
  v142 = v11;
  v143 = 4;
  v12 = *(v2 + 5);
  v128 = v7;
  if (v12)
  {
    v13 = *(v10 + 336);
    if (v13)
    {
      v14 = *(*(v10 + 344) + 4 * v13 - 4);
    }

    else
    {
      v14 = 0;
    }

    v15 = v3 & 0xFFFFFFFFFFFFFFFLL;
    re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(v2, v14);
    *v155 = v11;
    *&v155[8] = 4;
    *&v155[16] = 0;
    v16 = 8;
    while (1)
    {
      re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v142, &v160);
      if (*&v155[12] == v160.i32[3] && *&v155[16] == v161.u16[0])
      {
        break;
      }

      v17 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(v155);
      v18 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v17) + WORD2(v17);
      if (*(v12 + 40) <= v18)
      {
        break;
      }

      v19 = (*(v12 + 48) + 136 * v18);
      v22 = *v19;
      v20 = v19 + 1;
      v21 = v22;
      if (v22 <= 8)
      {
        v23 = 8;
      }

      else
      {
        v23 = v21;
      }

      do
      {
        if (v21 <= v23 - 8)
        {
          goto LABEL_25;
        }

        --v21;
      }

      while ((v20[v21 & 7] & 0xFFFFFFFFFFFFFFFuLL) > v15);
      started = *(v2 + 32);
      if (started <= v18)
      {
        goto LABEL_120;
      }

      v25 = *(*(v2 + 34) + 8 * v18) & 0xFFFFFFFFFFFFFFFLL;
      if (v25 == 0xFFFFFFFFFFFFFFFLL || v15 >= v25)
      {
        v160.i64[0] = *(*(v12 + 48) + 136 * v18 + 72 + 8 * (v21 & 7));
        v160.i32[2] = 0;
        v161.i64[0] = 0x2000000000;
        v27 = re::BufferView::contents(&v160);
        started = *(v2 + 27);
        if (started <= v18)
        {
          goto LABEL_121;
        }

        v28 = (*(v2 + 29) + 32 * v18);
        v29 = v27[1];
        *v28 = *v27;
        v28[1] = v29;
        re::DynamicBitset<unsigned long long,64ul>::setBit(v2 + 280, v18);
      }

LABEL_25:
      re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v155);
    }
  }

  re::ecs2::MeshComponent::updateStaticBoundingBoxData(v5, *(v5 + 16), 0);
  v30 = *(v5 + 304);
  if (v30)
  {
    v31 = (v30 + 104);
  }

  else
  {
    v31 = 0;
  }

  re::ecs2::MeshComponent::updateStaticBoundingBoxData(v5, *(v5 + 16), 0);
  v33 = *(v5 + 304);
  if (v33)
  {
    v34 = (v33 + 176);
  }

  else
  {
    v34 = 0;
  }

  v35 = v31[3];
  v36 = *v34;
  v37 = v34[3];
  v32.i32[0] = *(v5 + 96);
  v138 = v32;
  v149 = *v31;
  v150 = v35;
  v148[0] = v36;
  v148[1] = v37;
  if (!*(v10 + 216))
  {
    re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(v2);
    inited = objc_initWeak(v152, 0);
    v160 = 0uLL;
    v161.i64[0] = 0;
    v161.i64[1] = re::globalAllocators(inited)[2];
    *&v162 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset(v2 + 18, v152, 0, &v160);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v160);
    objc_destroyWeak(v152);
    return;
  }

  v136 = *(v2 + 19);
  v38 = *(a2 + 18);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_initWeak(&location, v39);
  v41 = re::globalAllocators(v40);
  v42 = (*(*v41[2] + 32))(v41[2], 224, 8);
  *(v42 + 160) = 0u;
  *(v42 + 176) = 0u;
  *(v42 + 128) = 0u;
  *(v42 + 144) = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0u;
  *(v42 + 80) = 0u;
  *(v42 + 96) = 0u;
  *(v42 + 112) = 0u;
  *(v42 + 192) = 0u;
  *(v42 + 208) = 0u;
  *(v42 + 112) = 1;
  *(v42 + 120) = 0;
  *(v42 + 128) = 0;
  *(v42 + 168) = 0u;
  *(v42 + 152) = 0u;
  *(v42 + 184) = 1;
  *(v42 + 192) = 0;
  *(v42 + 200) = 0;
  *&v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v161.i64[1] = re::globalAllocators(v42)[2];
  *&v162 = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset(v2 + 11, &location, v42, &v160);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v160);
  objc_destroyWeak(&location);
  location = 0;
  v43 = *(v2 + 12);
  v44 = v150;
  v46 = re::DynamicArray<re::AABB>::setCapacity(v43, v44);
  ++v43[1].i32[2];
  v43[5].i64[1] = v43[2].i64[0];
  v48 = *(v2 + 27);
  v16 = &v43[2].u64[1];
  v49 = re::DynamicArray<re::AABB>::setCapacity(&v43[2].i64[1], v48);
  ++v43[4].i32[0];
  v43[10].i64[0] = v43[4].i64[1];
  v50 = *(a2 + 18);
  if (v50)
  {
    v51 = (v50 + 8);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_initWeak(&v146, v51);
  v53 = re::globalAllocators(v52);
  v54 = (*(*v53[2] + 32))(v53[2], 112, 8);
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *(v54 + 96) = 0u;
  *(v54 + 72) = 1;
  *(v54 + 80) = 0;
  *(v54 + 88) = 0;
  *&v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v161.i64[1] = re::globalAllocators(v54)[2];
  *&v162 = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset(v2 + 18, &v146, v54, &v160);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v160);
  objc_destroyWeak(&v146);
  v146 = 0;
  v55 = *(v2 + 19);
  *v152 = 0;
  *&v152[8] = 0;
  *&v152[16] = 1;
  *&v153[4] = 0;
  *&v153[12] = 0;
  if ((v150 & 0x3F) != 0)
  {
    v56 = (v150 >> 6) + 1;
  }

  else
  {
    v56 = v150 >> 6;
  }

  v154 = v150;
  v160.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v152, v56, &v160);
  started = re::MeshNameMap::meshPartStartIndexForInstance(v10, 1u);
  v133 = v2;
  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v2 + 280, 0);
  if (FirstBitSet != -1)
  {
    v58 = FirstBitSet;
    v59 = 0;
    while (1)
    {
      if (v58 >= started)
      {
        do
        {
          v60 = v59;
          v59 = (v59 + 1);
          v61 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v60 + 2);
        }

        while (v58 >= v61);
        started = v61;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v152, v59);
      v18 = v43[11].u64[0];
      if (v18 <= v58)
      {
        break;
      }

      v62 = v43 + 12;
      if ((v43[11].i8[8] & 1) == 0)
      {
        v62 = v43[12].i64[1];
      }

      v62->i32[v58] = (2 * v43[3].i32[2]) | 1;
      v18 = *(v2 + 27);
      if (v18 <= v58)
      {
        goto LABEL_117;
      }

      re::DynamicArray<re::AABB>::add(&v43[2].u32[2], *(v2 + 29) + 32 * v58);
      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v2 + 280, v58 + 1);
      v58 = FirstBitSet;
      if (FirstBitSet == -1)
      {
        goto LABEL_52;
      }
    }

LABEL_116:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 858;
    v156 = 2048;
    v157 = v58;
    v158 = 2048;
    v159 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 789;
    v156 = 2048;
    v157 = v58;
    v158 = 2048;
    v159 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 797;
    v156 = 2048;
    v157 = v59;
    v158 = 2048;
    v159 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 797;
    v156 = 2048;
    v157 = v18;
    v158 = 2048;
    v159 = v43;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    *&v152[14] = 789;
    *&v152[18] = 2048;
    *v153 = v18;
    *&v153[8] = 2048;
    *&v153[10] = started;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v144.i64[0] = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    *&v152[14] = 789;
    *&v152[18] = 2048;
    *v153 = v18;
    *&v153[8] = 2048;
    *&v153[10] = started;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v151 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v155 = 136315906;
    *&v155[4] = "operator[]";
    *&v155[12] = 1024;
    *&v155[14] = 858;
    v156 = 2048;
    v157 = v16;
    v158 = 2048;
    v159 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_52:
  v63 = &v153[4];
  if ((v152[16] & 1) == 0)
  {
    v63 = *&v153[12];
  }

  v64 = *&v152[8];
  if ((*&v152[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v65 = 0;
    while (1)
    {
      v67 = *v63++;
      v66 = v67;
      if (v67)
      {
        break;
      }

      v65 -= 64;
      if (!--v64)
      {
        goto LABEL_69;
      }
    }

    v69 = __clz(__rbit64(v66));
    if (v69 + 1 != v65)
    {
      v16 = v69 - v65;
      v70.i64[0] = 0x7F0000007FLL;
      v70.i64[1] = 0x7F0000007FLL;
      v140 = vnegq_f32(v70);
      do
      {
        LODWORD(v71) = re::MeshNameMap::meshPartStartIndexForInstance(v10, v16);
        v72 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v16 + 1);
        v73.i64[0] = 0x7F0000007FLL;
        v73.i64[1] = 0x7F0000007FLL;
        v144 = v140;
        v145 = v73;
        if (v71 < v72)
        {
          v71 = v71;
          v74 = v72;
          do
          {
            v75 = re::MeshBoundingBoxes::boundingBox(&v43[9].u32[2], v71);
            v76 = v144;
            v77 = v145;
            v76.i32[3] = 0;
            v78 = *v75;
            v79 = v75[1];
            v78.i32[3] = 0;
            v77.i32[3] = 0;
            v79.i32[3] = 0;
            v144 = vminnmq_f32(v76, v78);
            v145 = vmaxnmq_f32(v77, v79);
            ++v71;
          }

          while (v74 != v71);
        }

        v18 = v43[6].u64[1];
        if (v18 <= v16)
        {
          goto LABEL_122;
        }

        v80 = &v43[7].i8[8];
        if ((v43[7].i8[0] & 1) == 0)
        {
          v80 = v43[8].i64[0];
        }

        *&v80[4 * v16] = (2 * v43[1].i32[0]) | 1;
        re::DynamicArray<re::AABB>::add(v43, &v144);
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v152, v16 + 1);
        v16 = FirstBitSet;
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_69:
  v16 = v128;
  if (fabsf(*v138.i32) > 0.00000011921)
  {
    v81 = v43[1].i64[0];
    if (v81)
    {
      v82 = v43[2].i64[0];
      v83 = &v82[2 * v81];
      v84 = vdupq_lane_s32(v138, 0);
      do
      {
        v85 = vaddq_f32(v84, v82[1]);
        *v82 = vsubq_f32(*v82, v84);
        v82[1] = v85;
        v82 += 2;
      }

      while (v82 != v83);
    }

    v86 = v43[3].i64[1];
    if (v86)
    {
      v87 = v43[4].i64[1];
      v88 = &v87[2 * v86];
      v89 = vdupq_lane_s32(v138, 0);
      do
      {
        v90 = vaddq_f32(v89, v87[1]);
        *v87 = vsubq_f32(*v87, v89);
        v87[1] = v90;
        v87 += 2;
      }

      while (v87 != v88);
    }
  }

  v91 = *(v2 + 27);
  v92 = re::DynamicArray<re::AABB>::setCapacity(v55, v91);
  ++*(v55 + 24);
  *(v55 + 48) = *(v55 + 32);
  if (v136)
  {
    if (*(v136 + 64) == *(v2 + 27))
    {
      v93 = v136 + 40;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
  }

  if (!v134)
  {
    v96.i64[0] = 0x7F0000007FLL;
    v96.i64[1] = 0x7F0000007FLL;
    v95 = vnegq_f32(v96);
    goto LABEL_108;
  }

  v137 = 0;
  v126 = v128 + 8 * v134;
  v94.i64[0] = 0x7F0000007FLL;
  v94.i64[1] = 0x7F0000007FLL;
  v127 = vnegq_f32(v94);
  v95 = v127;
  v96.i64[0] = 0x7F0000007FLL;
  v96.i64[1] = 0x7F0000007FLL;
  do
  {
    v97 = *(a2 + 4);
    v59 = WORD1(*v16);
    v18 = v97[11];
    if (v18 <= v59)
    {
      goto LABEL_118;
    }

    v59 = *(v97[13] + 16 * v59) + 144 * *v16;
    v18 = WORD1(*(v59 + 16));
    v43 = v97[3];
    if (v43 <= v18)
    {
      goto LABEL_119;
    }

    v131 = v95;
    v132 = v96;
    v98 = *(v97[5] + 16 * WORD1(*(v59 + 16))) + 864 * *(v59 + 16);
    v99 = *(v98 + 56);
    v100.i64[0] = 0x7F0000007FLL;
    v100.i64[1] = 0x7F0000007FLL;
    v144 = v127;
    v145 = v100;
    if (!v99)
    {
      goto LABEL_105;
    }

    v130 = v98;
    v129 = v16;
    v58 = 0;
    v101.i64[0] = 0x7F0000007FLL;
    v101.i64[1] = 0x7F0000007FLL;
    v141 = v100;
    v139 = vnegq_f32(v101);
    started = 4 * v137;
    v16 = 432;
    do
    {
      v18 = v137 + v58;
      v102 = re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(v2, *(*(a2 + 18) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 18) + 16) << 60), v137 + v58);
      if (v102)
      {
        v103 = *(v55 + 64);
        if (v103 <= v18)
        {
          v151 = 0;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v155 = 136315906;
          *&v155[4] = "operator[]";
          *&v155[12] = 1024;
          *&v155[14] = 858;
          v156 = 2048;
          v157 = v137 + v58;
          v158 = 2048;
          v159 = v103;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_113:
          v151 = 0;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v155 = 136315906;
          *&v155[4] = "operator[]";
          *&v155[12] = 1024;
          *&v155[14] = 476;
          v156 = 2048;
          v157 = v58;
          v158 = 2048;
          v159 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_114:
          v151 = 0;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v155 = 136315906;
          *&v155[4] = "operator[]";
          *&v155[12] = 1024;
          *&v155[14] = 866;
          v156 = 2048;
          v157 = v137 + v58;
          v158 = 2048;
          v159 = v43;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_115:
          v151 = 0;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v155 = 136315906;
          *&v155[4] = "operator[]";
          *&v155[12] = 1024;
          *&v155[14] = 858;
          v156 = 2048;
          v157 = v137 + v58;
          v158 = 2048;
          v159 = v43;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_116;
        }

        v43 = v102;
        v104 = v55 + 80;
        if ((*(v55 + 72) & 1) == 0)
        {
          v104 = *(v55 + 88);
        }

        *(v104 + started + 4 * v58) = (2 * *(v55 + 16)) | 1;
        re::AABB::transform(v102, (v59 + 32), &v160);
        re::DynamicArray<re::AABB>::add(v55, &v160);
        v106 = v139;
        v105 = v141;
        v106.i32[3] = 0;
        v107 = *v43;
        v108 = v43[1];
        v107.i32[3] = 0;
        v105.i32[3] = 0;
        v108.i32[3] = 0;
        v139 = vminnmq_f32(v106, v107);
        v141 = vmaxnmq_f32(v105, v108);
        v144 = v139;
        v145 = v141;
        v2 = v133;
      }

      else
      {
        if (!v93)
        {
          goto LABEL_97;
        }

        v43 = *(v93 + 24);
        if (v43 <= v18)
        {
          goto LABEL_114;
        }

        v109 = v93 + 40;
        if ((*(v93 + 32) & 1) == 0)
        {
          v109 = *(v93 + 48);
        }

        if (*(v109 + started + 4 * v58))
        {
          v115 = re::MeshBoundingBoxes::boundingBox(v93, v18);
          v43 = *(v55 + 64);
          if (v43 <= v18)
          {
            goto LABEL_115;
          }

          v116 = v55 + 80;
          if ((*(v55 + 72) & 1) == 0)
          {
            v116 = *(v55 + 88);
          }

          v117 = v131;
          v117.i32[3] = 0;
          v118 = *v115;
          v119 = v115[1];
          v118.i32[3] = 0;
          v120 = vminnmq_f32(v117, v118);
          v121 = v132;
          v121.i32[3] = 0;
          v119.i32[3] = 0;
          v131 = v120;
          v132 = vmaxnmq_f32(v121, v119);
          *(v116 + started + 4 * v58) = (2 * *(v55 + 16)) | 1;
          re::DynamicArray<re::AABB>::add(v55, v115);
        }

        else
        {
LABEL_97:
          v18 = *(v130 + 56);
          if (v18 <= v58)
          {
            goto LABEL_113;
          }

          v110 = (*(v130 + 64) + v16);
          v111 = v139;
          v111.i32[3] = 0;
          v112 = v110[-1];
          v112.i32[3] = 0;
          v139 = vminnmq_f32(v111, v112);
          v144 = v139;
          v113 = *v110;
          v114 = v141;
          v114.i32[3] = 0;
          v113.i32[3] = 0;
          v141 = vmaxnmq_f32(v114, v113);
          v145 = v141;
        }
      }

      ++v58;
      v16 += 544;
    }

    while (v99 != v58);
    v137 += v58;
    v16 = v129;
LABEL_105:
    re::AABB::transform(&v144, (v59 + 32), &v160);
    v123 = v131;
    v122 = v132;
    v123.i32[3] = 0;
    v124 = v160;
    v125 = v161;
    v124.i32[3] = 0;
    v122.i32[3] = 0;
    v95 = vminnmq_f32(v123, v124);
    v125.i32[3] = 0;
    v96 = vmaxnmq_f32(v122, v125);
    v16 += 8;
  }

  while (v16 != v126);
LABEL_108:
  *(v2 + 21) = v95;
  *(v2 + 22) = v96;
  if (*v152 && (v152[16] & 1) == 0)
  {
    (*(**v152 + 40))();
  }
}

_anonymous_namespace_ *re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(re::ecs2::DynamicBoundingBoxComponent *this, unint64_t a2)
{
  re::DynamicArray<re::AABB>::resize(this + 25, a2);
  v4 = *(this + 32);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(this + 31) < a2)
    {
      re::DynamicArray<float *>::setCapacity(this + 30, a2);
      v4 = *(this + 32);
    }

    if (a2 > v4 && a2 > v4)
    {
      memset_pattern16((*(this + 34) + 8 * v4), &unk_1E30747C0, 8 * (a2 - v4));
    }
  }

  *(this + 32) = a2;
  ++*(this + 66);
LABEL_12:
  v6 = *(this + 41);
  if ((a2 & 0x3F) != 0)
  {
    v7 = (a2 >> 6) + 1;
  }

  else
  {
    v7 = a2 >> 6;
  }

  *(this + 41) = a2;
  v14 = 0;
  result = re::DynamicOverflowArray<unsigned long long,3ul>::resize((this + 280), v7, &v14);
  if (a2 && v6 > a2)
  {
    v9 = 63;
    v10 = *(this + 41) & 0x3FLL;
    if (v10)
    {
      v11 = v10 == 63;
      v12 = -1 << v10;
      if (!v11)
      {
        v9 = ~v12;
      }
    }

    if (*(this + 296))
    {
      v13 = this + 304;
    }

    else
    {
      v13 = *(this + 39);
    }

    *&v13[8 * *(this + 36) - 8] &= v9;
  }

  return result;
}

uint64_t re::ecs2::DynamicBoundingBoxComponent::setMeshPartEstimatedBoundingBox(re::ecs2::DynamicBoundingBoxComponent *a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(a1, a3 + 1);
  if (*(a1 + 27) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = (*(a1 + 29) + 32 * a3);
  v9 = a4[1];
  *v8 = *a4;
  v8[1] = v9;
  if (*(a1 + 32) <= a3)
  {
    goto LABEL_7;
  }

  *(*(a1 + 34) + 8 * a3) = a2;

  return re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 280, a3);
}

void re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(id *this)
{
  v4[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v4, 0, 24);
  v4[3] = re::globalAllocators(inited)[2];
  v4[4] = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset(this + 11, &location, 0, v4);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v4);
  objc_destroyWeak(&location);
}

uint64_t re::MeshBoundingBoxes::boundingBox(re::MeshBoundingBoxes *this, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v3 = *(this + 3);
  if (v3 <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v7 = 136315906;
    v8 = "operator[]";
    v9 = 1024;
    v10 = 866;
    v11 = 2048;
    v12 = a2;
    v13 = 2048;
    v14 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 32))
  {
    v4 = this + 40;
  }

  else
  {
    v4 = *(this + 6);
  }

  return *(&v6 & 0xFFFFFFFFFFFFFFF7 | (8 * (*&v4[4 * a2] & 1))) + ((16 * *&v4[4 * a2]) & 0xFFFFFFFE0);
}

void re::ecs2::DynamicBoundingBoxComponent::ensureSerializedBoundingBoxData(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      v5 = *(v3 + 56);
      if (*(a1 + 384) == v5)
      {
        v6 = 32 * v5;
        if (!memcmp(*(a1 + 400), *(v3 + 72), 32 * v5))
        {
          v7 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 32 * v5;
      }

      re::DynamicArray<re::AABB>::resize((a1 + 368), v5);
      memcpy(*(a1 + 400), *(*(a1 + 96) + 72), v6);
      v7 = 1;
LABEL_12:
      if (*(a1 + 464) != v5)
      {
        re::DynamicArray<float>::resize(a1 + 448, v5);
        v7 = 1;
      }

      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, 0);
      if (FirstBitSet != -1)
      {
        for (i = FirstBitSet; i != -1; i = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, i + 1))
        {
          v11 = *(a1 + 464);
          if (v11 <= i)
          {
            v29[0] = 0;
            memset(v36, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v33 = 136315906;
            *&v33[4] = "operator[]";
            *&v33[12] = 1024;
            *&v33[14] = 789;
            *&v33[18] = 2048;
            *&v33[20] = i;
            v34 = 2048;
            *v35 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v12 = *(a1 + 480);
          v7 |= *(v12 + 4 * i) != i;
          *(v12 + 4 * i) = i;
        }
      }

      re::StackScratchAllocator::StackScratchAllocator(v36);
      *&v35[2] = 0;
      memset(&v33[8], 0, 20);
      *v33 = v36;
      re::DynamicArray<re::AABB>::setCapacity(v33, v5);
      ++*&v33[24];
      __s2 = 0;
      v29[1] = 0;
      v30 = 0;
      v31 = 0;
      v29[0] = v36;
      re::DynamicArray<int>::setCapacity(v29, v5);
      ++v31;
      v13 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, 0);
      if (v13 != -1)
      {
        v14 = v13;
        do
        {
          v15 = re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(a1, a2, v14);
          if (v15)
          {
            re::DynamicArray<re::AABB>::add(v33, v15);
            v28 = v14;
            re::DynamicArray<int>::add(v29, &v28);
          }

          v13 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, v14 + 1);
          v14 = v13;
        }

        while (v13 != -1);
      }

      v16 = *(a1 + 424);
      v17 = *&v33[16];
      v18 = *&v35[2];
      if (v16 == *&v33[16])
      {
        if (!v16)
        {
          goto LABEL_37;
        }

        v19 = *(a1 + 440);
        v20 = &v19[2 * v16];
        v21 = *&v35[2];
        while (1)
        {
          v22 = vceqq_f32(*v19, *v21);
          v22.i32[3] = v22.i32[2];
          if ((vminvq_u32(v22) & 0x80000000) == 0)
          {
            break;
          }

          v23 = vceqq_f32(v19[1], v21[1]);
          v23.i32[3] = v23.i32[2];
          if ((vminvq_u32(v23) & 0x80000000) == 0)
          {
            break;
          }

          v19 += 2;
          v21 += 2;
          if (v19 == v20)
          {
            goto LABEL_37;
          }
        }
      }

      if (*(a1 + 408))
      {
        if (*&v33[16])
        {
          re::DynamicArray<re::AABB>::copy((a1 + 408), *&v35[2], *&v33[16]);
          v13 = re::DynamicArray<re::AABB>::resize((a1 + 408), v17);
        }

        else
        {
          *(a1 + 424) = 0;
          ++*(a1 + 432);
        }
      }

      else if (*&v33[16])
      {
        re::DynamicArray<re::AABB>::setCapacity((a1 + 408), v17);
        ++*(a1 + 432);
        v13 = re::DynamicArray<re::AABB>::copy((a1 + 408), v18, v17);
      }

      v7 = 1;
LABEL_37:
      v24 = *(a1 + 504);
      v25 = v30;
      v26 = __s2;
      if (v24 == v30 && (v13 = memcmp(*(a1 + 520), __s2, 4 * v24), !v13))
      {
        if ((v7 & 1) == 0)
        {
LABEL_48:
          if (v29[0] && __s2)
          {
            (*(*v29[0] + 40))();
          }

          if (*v33)
          {
            if (*&v35[2])
            {
              (*(**v33 + 40))();
            }
          }

          re::StackScratchAllocator::~StackScratchAllocator(v36);
          return;
        }
      }

      else if (*(a1 + 488))
      {
        if (v25)
        {
          re::DynamicArray<float>::copy((a1 + 488), 0, v26, v25);
          re::DynamicArray<float>::resize(a1 + 488, v25);
        }

        else
        {
          *(a1 + 504) = 0;
          ++*(a1 + 512);
        }
      }

      else if (v25)
      {
        re::DynamicArray<int>::setCapacity((a1 + 488), v25);
        ++*(a1 + 512);
        re::DynamicArray<float>::copy((a1 + 488), 0, v26, v25);
      }

      v27 = *(*(a1 + 16) + 216);
      if (v27)
      {
        re::ecs2::NetworkComponent::markDirty(v27, a1);
      }

      goto LABEL_48;
    }
  }

  *(a1 + 384) = 0;
  ++*(a1 + 392);
  *(a1 + 424) = 0;
  ++*(a1 + 432);
  *(a1 + 464) = 0;
  ++*(a1 + 472);
  *(a1 + 504) = 0;
  ++*(a1 + 512);
  v8 = *(*(a1 + 16) + 216);
  if (v8)
  {

    re::ecs2::NetworkComponent::markDirty(v8, a1);
  }
}

void *re::DynamicArray<re::AABB>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::AABB>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = (v3[4] + 32 * v4);
      v7 = v5 + 1;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9 = vnegq_f32(v8);
      do
      {
        *v6 = v9;
        v6[1] = v8;
        v6 += 2;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::ecs2::DynamicBoundingBoxComponentStateImpl::DynamicBoundingBoxComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF44A0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

void re::ecs2::DynamicBoundingBoxComponentStateImpl::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3, void *a4)
{
  v8 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v8)
  {
    if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
    {
      *(v8 + 216) = 0;
      ++*(v8 + 224);
      v10 = *(v8 + 296);
      if (v10)
      {
        v11 = (v8 + 304);
      }

      else
      {
        v11 = *(v8 + 312);
      }

      v12 = *(v8 + 288);
      while (1)
      {
        v13 = v8 + 304;
        if ((v10 & 1) == 0)
        {
          v13 = *(v8 + 312);
        }

        if (v11 == (v13 + 8 * v12))
        {
          break;
        }

        *v11++ = 0;
        v10 = *(v8 + 296);
      }
    }
  }

  re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::didDependentComponentChange(a1, a2, a3);
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v24, a5, 0);
  v8 = v24;
  v9 = v25;
  v10 = v25;
  v24 = a4;
  v25 = v8;
  v26 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v25);
      v13 = *v12;
      v14 = *(*v12 + 16);
      v15 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v16 = v15;
      if (v15)
      {
        re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(v15);
      }

      v17 = *(v14 + 192);
      if (v13[30])
      {
        v18 = v13[49] == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18 || v17 == 0;
      v20 = (a3 + 32);
      if (!v19)
      {
        v20 = (a3 + 32);
        if (*(v17 + 40))
        {
          if (v16 || (v20 = (a3 + 32), !re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty((v13 + 29), 4u)))
          {
            v20 = (a3 + 40);
          }
        }
      }

      v21 = v24;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v21, v22, *v20);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
    }

    while (v25 != a5 || v26 != 0xFFFF || HIWORD(v26) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = *(*(a1 + 8) + 232);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v25, a5, 0);
  v9 = v25;
  v10 = v26;
  v11 = v26;
  v25 = a4;
  v26 = v9;
  v27 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v26);
      v14 = *v13;
      v15 = *(*(*v13 + 16) + 192);
      if (re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32)))
      {
        break;
      }

      v22 = *(v15 + 40);
      if (v22)
      {
        v23 = atomic_load((v22 + 896));
        if (v23 == 3)
        {
          v18 = v25;
          v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
          v20 = a3[2];
LABEL_11:
          v21 = a3[4];
LABEL_12:
          re::ecs2::ComponentBucketsBase::moveComponent(v20, v18, v19, v21);
          goto LABEL_14;
        }
      }

      re::AssetHandle::loadAsync((v15 + 32));
LABEL_14:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
      if (v26 == a5 && v27 == 0xFFFF && HIWORD(v27) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    BoundingBoxInputs = re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(v8, v14, v16);
    v18 = v25;
    v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
    v20 = a3[2];
    if (!BoundingBoxInputs)
    {
      goto LABEL_11;
    }

    v21 = a3[6];
    goto LABEL_12;
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1 + 8) + 232);
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
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v18);
      v13 = re::ecs2::EntityComponentCollection::getOrAdd((*(*v12 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(v13, v7);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::DynamicBoundingBoxSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  if (*(a1 + 232))
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

unint64_t re::ecs2::DynamicBoundingBoxSystem::willAddSceneToECSService(re::ecs2::DynamicBoundingBoxSystem *this, re::EventBus **a2)
{
  v7 = a2;
  v3 = a2[36];
  if (v3)
  {
    *(&v6 + 1) = v4;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 536, &v7, &v6);
    a2 = v7;
  }

  return re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::addScene(this + 296, a2);
}

uint64_t re::ecs2::DynamicBoundingBoxSystem::willRemoveSceneFromECSService(re::ecs2::DynamicBoundingBoxSystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v17 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v17);
  if (v3 != -1)
  {
    v4 = *(this + 45) + 16 * v3;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v17);
  }

  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 536, &v16);
  if (result)
  {
    if (*(v16 + 36))
    {
      re::EventBus::unsubscribe(*(v16 + 36), *result, *(result + 8));
    }

    return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 536, &v16);
  }

  return result;
}

void *re::ecs2::DynamicBoundingBoxSerializeComponentStateImpl::DynamicBoundingBoxSerializeComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF44E0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

BOOL re::ecs2::DynamicBoundingBoxSerializeComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  FirstBitSet = a5;
  v126 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 8) + 232) + 144);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v110, a5, 0);
  v91 = a4;
  v92 = v110;
  v93 = DWORD2(v110);
  if (v110 != FirstBitSet || DWORD2(v110) != 0xFFFFFFFFLL)
  {
    v10 = (a3 + 32);
    v86 = a3;
    v87 = FirstBitSet;
    v85 = v8;
    v89 = a3 + 32;
    v90 = (a3 + 48);
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v92);
      v12 = *v11;
      v13 = v10;
      if (*(*(*v11 + 16) + 192))
      {
        v13 = v10;
        if (*(v12 + 464))
        {
          v13 = v10;
          if (!*(v12 + 256))
          {
            break;
          }
        }
      }

LABEL_89:
      v81 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v92);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v91, v81, *v13);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v92);
      if (v92 == FirstBitSet && v93 == 0xFFFF && HIWORD(v93) == 0xFFFF)
      {
        return *(FirstBitSet + 40) != 0;
      }
    }

    inited = objc_initWeak(&location, 0);
    v110 = 0uLL;
    *&v111 = 0;
    *(&v111 + 1) = re::globalAllocators(inited)[2];
    *&v112 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset((v12 + 88), &location, 0, &v110);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v110);
    objc_destroyWeak(&location);
    location = 0;
    v15 = objc_initWeak(&v106, 0);
    v110 = 0uLL;
    *&v111 = 0;
    *(&v111 + 1) = re::globalAllocators(v15)[2];
    *&v112 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset((v12 + 144), &v106, 0, &v110);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v110);
    objc_destroyWeak(&v106);
    v105 = 0;
    v106 = 0;
    v16 = *(v12 + 16);
    v17 = *(v16 + 192);
    v103 = 0;
    v104 = 0;
    v102 = 0;
    v18 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v18)
    {
      v19 = *(v18 + 648);
      if (v19)
      {
        v20 = v19[16];
        v104 = v19[17];
        v105 = v20;
        v21 = v19[19];
        v102 = v19[20];
        v103 = v21;
        v22 = v19 + 9;
        v23 = v19 + 7;
        goto LABEL_14;
      }
    }

    else
    {
      v24 = re::AssetHandle::loadedAsset<re::MeshAsset>((v17 + 32));
      if (v24)
      {
        v20 = v24[143];
        v104 = v24[144];
        v105 = v20;
        v21 = v24[146];
        v102 = v24[147];
        v103 = v21;
        v22 = v24 + 138;
        v23 = v24 + 137;
LABEL_14:
        v25 = *v23;
        if (v20)
        {
          v26 = v21 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26 && v25 != 0)
        {
          v28 = *v22;
          v29 = objc_initWeak(&v101, (v8 + 8));
          v30 = re::globalAllocators(v29);
          v31 = (*(*v30[2] + 32))(v30[2], 224, 8);
          *(v31 + 160) = 0u;
          *(v31 + 176) = 0u;
          *(v31 + 128) = 0u;
          *(v31 + 144) = 0u;
          *v31 = 0u;
          *(v31 + 16) = 0u;
          *(v31 + 32) = 0u;
          *(v31 + 48) = 0u;
          *(v31 + 64) = 0u;
          *(v31 + 80) = 0u;
          *(v31 + 96) = 0u;
          *(v31 + 112) = 0u;
          *(v31 + 192) = 0u;
          *(v31 + 208) = 0u;
          *(v31 + 112) = 1;
          *(v31 + 120) = 0;
          *(v31 + 128) = 0;
          *(v31 + 168) = 0u;
          *(v31 + 152) = 0u;
          *(v31 + 184) = 1;
          *(v31 + 192) = 0;
          *(v31 + 200) = 0;
          v110 = 0uLL;
          *&v111 = 0;
          *(&v111 + 1) = re::globalAllocators(v31)[2];
          *&v112 = 0;
          re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset((v12 + 88), &v101, v31, &v110);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v110);
          objc_destroyWeak(&v101);
          v101 = 0;
          v32 = objc_initWeak(&v100, (v8 + 8));
          v33 = re::globalAllocators(v32);
          v34 = (*(*v33[2] + 32))(v33[2], 112, 8);
          *(v34 + 64) = 0u;
          *(v34 + 80) = 0u;
          *v34 = 0u;
          *(v34 + 16) = 0u;
          *(v34 + 32) = 0u;
          *(v34 + 48) = 0u;
          *(v34 + 96) = 0u;
          *(v34 + 72) = 1;
          *(v34 + 80) = 0;
          *(v34 + 88) = 0;
          v110 = 0uLL;
          *&v111 = 0;
          *(&v111 + 1) = re::globalAllocators(v34)[2];
          *&v112 = 0;
          re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset((v12 + 144), &v100, v34, &v110);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v110);
          objc_destroyWeak(&v100);
          v100 = 0;
          v35 = *(v12 + 96);
          v36 = *(v12 + 152);
          v88 = v36;
          re::DynamicArray<re::AABB>::operator=(*(v12 + 96) + 40, (v12 + 368));
          *(v35 + 160) = *(*(v12 + 96) + 72);
          v40 = *(v12 + 464);
          if (v40 == *(v12 + 384))
          {
            re::StackScratchAllocator::StackScratchAllocator(&v110);
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v94 = &v110;
            v95 = 0;
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v94, 0);
            v96 += 2;
            if ((v25 & 0x3F) != 0)
            {
              v41 = (v25 >> 6) + 1;
            }

            else
            {
              v41 = v25 >> 6;
            }

            v99 = v25;
            *&v123[0] = 0;
            re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v94, v41, v123);
            if (v40)
            {
              FirstBitSet = 0;
              v42 = 0;
              v43 = *(v28 + 8);
              a3 = v35 + 192;
              do
              {
                v44 = v40;
                v40 = *(v12 + 464);
                if (v40 <= FirstBitSet)
                {
                  goto LABEL_100;
                }

                v45 = *(*(v12 + 480) + 4 * FirstBitSet);
                if (*(v35 + 176) <= v45)
                {
                  v40 = v44;
                }

                else
                {
                  v46 = v35 + 192;
                  v40 = v44;
                  if ((*(v35 + 184) & 1) == 0)
                  {
                    v46 = *(v35 + 200);
                  }

                  *(v46 + 4 * v45) = (2 * FirstBitSet) | 1;
                  if (v43 <= v45)
                  {
                    LODWORD(v47) = v42;
                    while (1)
                    {
                      v47 = (v47 + 1);
                      if (v25 <= v47)
                      {
                        break;
                      }

                      v48 = *(v28 + 96 * v47);
                      v49 = *(v28 + 96 * v47 + 8);
                      v50 = v49 >= v48;
                      v51 = v49 - v48;
                      if (!v50)
                      {
                        v51 = 0;
                      }

                      v43 += v51;
                      v42 = v47;
                      if (v43 > v45)
                      {
                        goto LABEL_38;
                      }
                    }

                    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v25);
                    _os_crash();
                    __break(1u);
                    goto LABEL_99;
                  }

                  v47 = v42;
LABEL_38:
                  re::DynamicBitset<unsigned long long,64ul>::setBit(&v94, v47);
                }

                ++FirstBitSet;
              }

              while (FirstBitSet != v40);
            }

            v52 = v98;
            if (v96)
            {
              v52 = &v97;
            }

            if (v95)
            {
              v53 = 0;
              v54 = 8 * v95;
              do
              {
                v55 = *v52++;
                v56 = vcnt_s8(v55);
                v56.i16[0] = vaddlv_u8(v56);
                v53 += v56.u32[0];
                v54 -= 8;
              }

              while (v54);
            }

            else
            {
              v53 = 0;
            }

            v42 = *(v12 + 96);
            re::DynamicArray<re::AABB>::resize(v42, v53);
            *(v35 + 88) = *(v42 + 32);
            v109 = *(v35 + 152);
            v58 = v98;
            if (v96)
            {
              v58 = &v97;
            }

            v59 = v95;
            if ((v95 & 0x3FFFFFFFFFFFFFFLL) != 0)
            {
              v60 = v42;
              v61 = 0;
              while (1)
              {
                v63 = *v58++;
                v62 = v63;
                if (v63)
                {
                  break;
                }

                v61 -= 64;
                if (!--v59)
                {
                  goto LABEL_75;
                }
              }

              v64 = __clz(__rbit64(v62));
              if (v64 + 1 != v61)
              {
                v65 = 0;
                FirstBitSet = v64 - v61;
                v40 = v35 + 192;
                while (1)
                {
                  if (v25 <= FirstBitSet)
                  {
                    goto LABEL_102;
                  }

                  v66 = (v28 + 96 * FirstBitSet);
                  v67 = *v66;
                  v68 = v66[1];
                  if (v67 < v68)
                  {
                    break;
                  }

                  v69.i64[0] = 0x7F0000007FLL;
                  v69.i64[1] = 0x7F0000007FLL;
                  v70 = vnegq_f32(v69);
LABEL_70:
                  v42 = v65;
                  a3 = v60[2];
                  if (a3 <= v65)
                  {
                    goto LABEL_103;
                  }

                  v75 = (v60[4] + 32 * v65);
                  *v75 = v70;
                  v75[1] = v69;
                  v42 = *(v35 + 104);
                  if (v42 <= FirstBitSet)
                  {
                    goto LABEL_104;
                  }

                  v42 = v60;
                  v76 = v35 + 120;
                  if ((*(v35 + 112) & 1) == 0)
                  {
                    v76 = *(v35 + 128);
                  }

                  *(v76 + 4 * FirstBitSet) = (2 * v65++) | 1;
                  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v94, FirstBitSet + 1);
                  v60 = v42;
                  if (FirstBitSet == -1)
                  {
                    goto LABEL_75;
                  }
                }

                v42 = *(v35 + 176);
                if (v67 <= v42)
                {
                  a3 = *(v35 + 176);
                }

                else
                {
                  a3 = v67;
                }

                v69.i64[0] = 0x7F0000007FLL;
                v69.i64[1] = 0x7F0000007FLL;
                v70 = vnegq_f32(v69);
                while (a3 != v67)
                {
                  v71 = v35 + 192;
                  if ((*(v35 + 184) & 1) == 0)
                  {
                    v71 = *(v35 + 200);
                  }

                  v72 = (*(&v109 & 0xFFFFFFFFFFFFFFF7 | (8 * (*(v71 + 4 * v67) & 1))) + ((16 * *(v71 + 4 * v67)) & 0xFFFFFFFE0));
                  v70.i32[3] = 0;
                  v73 = *v72;
                  v74 = v72[1];
                  v73.i32[3] = 0;
                  v69.i32[3] = 0;
                  v70 = vminnmq_f32(v70, v73);
                  v74.i32[3] = 0;
                  v69 = vmaxnmq_f32(v69, v74);
                  if (v68 == ++v67)
                  {
                    goto LABEL_70;
                  }
                }

LABEL_99:
                v108 = 0;
                v124 = 0u;
                v125 = 0u;
                memset(v123, 0, sizeof(v123));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v115 = 136315906;
                v116 = "operator[]";
                v117 = 1024;
                v118 = 858;
                v119 = 2048;
                v120 = a3;
                v121 = 2048;
                v122 = v42;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_100:
                *&v109 = 0;
                v124 = 0u;
                v125 = 0u;
                memset(v123, 0, sizeof(v123));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v115 = 136315906;
                v116 = "operator[]";
                v117 = 1024;
                v118 = 789;
                v119 = 2048;
                v120 = FirstBitSet;
                v121 = 2048;
                v122 = v40;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_101:
                v94 = 0;
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v110 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v123[0]) = 136315906;
                *(v123 + 4) = "operator[]";
                WORD6(v123[0]) = 1024;
                *(v123 + 14) = 789;
                WORD1(v123[1]) = 2048;
                *(&v123[1] + 4) = v42;
                WORD6(v123[1]) = 2048;
                *(&v123[1] + 14) = v28;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_102:
                re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, FirstBitSet, v25);
                _os_crash();
                __break(1u);
LABEL_103:
                v108 = 0;
                v124 = 0u;
                v125 = 0u;
                memset(v123, 0, sizeof(v123));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v115 = 136315906;
                v116 = "operator[]";
                v117 = 1024;
                v118 = 789;
                v119 = 2048;
                v120 = v42;
                v121 = 2048;
                v122 = a3;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_104:
                v108 = 0;
                v124 = 0u;
                v125 = 0u;
                memset(v123, 0, sizeof(v123));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v115 = 136315906;
                v116 = "operator[]";
                v117 = 1024;
                v118 = 858;
                v119 = 2048;
                v120 = FirstBitSet;
                v121 = 2048;
                v122 = v42;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }
            }

LABEL_75:
            if (v94 && (v96 & 1) == 0)
            {
              (*(*v94 + 40))();
            }

            re::StackScratchAllocator::~StackScratchAllocator(&v110);
            a3 = v86;
            FirstBitSet = v87;
            v8 = v85;
          }

          re::DynamicArray<re::AABB>::operator=(*(v12 + 152), (v12 + 408));
          *(v88 + 48) = *(*(v12 + 152) + 32);
          v77 = *(v12 + 504);
          if (v77 == *(v12 + 424) && *(v12 + 504))
          {
            v42 = 0;
            v78 = 1;
            do
            {
              v28 = *(v12 + 504);
              if (v28 <= v42)
              {
                goto LABEL_101;
              }

              v79 = *(*(v12 + 520) + 4 * v42);
              if (*(v88 + 64) > v79)
              {
                v80 = v88 + 80;
                if ((*(v88 + 72) & 1) == 0)
                {
                  v80 = *(v88 + 88);
                }

                *(v80 + 4 * v79) = v78;
              }

              ++v42;
              v78 += 2;
            }

            while (v77 != v42);
          }
        }
      }
    }

    v10 = v89;
    v13 = v90;
    goto LABEL_89;
  }

  return *(FirstBitSet + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::DynamicBoundingBoxSerializeSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  if (a1[29])
  {
    re::StackScratchAllocator::StackScratchAllocator(v44);
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v38 = v44;
    v39 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
    v40 += 2;
    v5 = a1[68];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v43 = a1[68];
    v33[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v33[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v33);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[50] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 63));
    v34 = 1;
    v35 = 0;
    v36 = 0;
    v33[0] = v44;
    v33[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
    v34 += 2;
    v12 = a1[68];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v37 = a1[68];
    v45 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v38);
    v14 = v42;
    if (v40)
    {
      v14 = &v41;
    }

    v15 = v39;
    if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v33);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
    if (v33[0] && (v34 & 1) == 0)
    {
      (*(*v33[0] + 40))();
    }

    if (v38 && (v40 & 1) == 0)
    {
      (*(*v38 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v44);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

unint64_t re::ecs2::DynamicBoundingBoxSerializeSystem::willAddSceneToECSService(re::ecs2::DynamicBoundingBoxSerializeSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 58);
  v5 = *(this + 118);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 480);
    }

    else
    {
      v6 = *(this + 61);
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
    v7 = (this + 480);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 61);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 47);
  *&v47 = 0;
  v15 = *(this + 43);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
    v15 = *(this + 43);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 352))
  {
    v16 = this + 360;
  }

  else
  {
    v16 = *(this + 46);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 47);
  ++*(this + 96);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 47);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(v24, this + 336, v48[0]);
  *&v57[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, v48, v57);
  v25 = *(this + 47);
  v26 = *(this + 62);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 62) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 62) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 472))
    {
      v30 = this + 480;
    }

    else
    {
      v30 = *(this + 61);
    }

    *&v30[8 * *(this + 58) - 8] &= v28;
  }

  v31 = *(this + 47);
  v32 = *(this + 68);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 68) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 68) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 520))
    {
      v36 = this + 528;
    }

    else
    {
      v36 = *(this + 67);
    }

    *&v36[8 * *(this + 64) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  return result;
}

uint64_t re::ecs2::DynamicBoundingBoxSerializeSystem::willRemoveSceneFromECSService(re::ecs2::DynamicBoundingBoxSerializeSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v15);
  if (result != -1)
  {
    v4 = *(this + 50) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v15);
  }

  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1ABCA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABCA0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1ABCD8);
    qword_1EE1ABCD8 = &unk_1F5CF4838;
    __cxa_guard_release(&qword_1EE1ABCA0);
  }

  if ((_MergedGlobals_307 & 1) == 0)
  {
    v0 = re::introspect_AABB(1);
    if ((_MergedGlobals_307 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_307 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1ABCD8, 0);
      qword_1EE1ABCE8 = 0x2800000003;
      dword_1EE1ABCF0 = v2;
      word_1EE1ABCF4 = 0;
      *&xmmword_1EE1ABCF8 = 0;
      *(&xmmword_1EE1ABCF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1ABD08 = v1;
      unk_1EE1ABD10 = 0;
      qword_1EE1ABCD8 = &unk_1F5CF4838;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1ABCD8, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1ABCF8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_DynamicBoundingBoxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABD18, "DynamicBoundingBoxComponent");
    __cxa_guard_release(&qword_1EE1ABC88);
  }

  return &unk_1EE1ABD18;
}

void re::ecs2::initInfo_DynamicBoundingBoxComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0xB01568A72EB9FBEALL;
  v25[1] = "DynamicBoundingBoxComponent";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1ABC80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ABC80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1ABCA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_AABB(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_lastKnownBounds";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x15000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ABCB0 = v11;
      v12 = re::introspectionAllocator(v11);
      re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get();
      v13 = (*(*v12 + 32))(v12, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_serializedEstimatedBoxes";
      *(v13 + 16) = &qword_1EE1ABCD8;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x17000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1ABCB8 = v13;
      v14 = re::introspectionAllocator(v13);
      re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get();
      v15 = (*(*v14 + 32))(v14, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_serializedLastKnownBoxes";
      *(v15 + 16) = &qword_1EE1ABCD8;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x19800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ABCC0 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_serializedEstimatedBoxInstancePartIndices";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x1C000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ABCC8 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_serializedLastKnownBoxInstancePartIndices";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x1E800000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ABCD0 = v23;
      __cxa_guard_release(&qword_1EE1ABC80);
    }
  }

  *(this + 2) = 0x21000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1ABCA8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicBoundingBoxComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void *re::ecs2::allocInfo_DynamicBoundingBoxSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABDA8, "DynamicBoundingBoxSystem");
    __cxa_guard_release(&qword_1EE1ABC90);
  }

  return &unk_1EE1ABDA8;
}

void re::ecs2::initInfo_DynamicBoundingBoxSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xFA9333C51155E86ELL;
  v6[1] = "DynamicBoundingBoxSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x24800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DynamicBoundingBoxSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DynamicBoundingBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DynamicBoundingBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_DynamicBoundingBoxSerializeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABE38, "DynamicBoundingBoxSerializeSystem");
    __cxa_guard_release(&qword_1EE1ABC98);
  }

  return &unk_1EE1ABE38;
}

void re::ecs2::initInfo_DynamicBoundingBoxSerializeSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA5B4EDBF4D22C84ELL;
  v6[1] = "DynamicBoundingBoxSerializeSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x24000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DynamicBoundingBoxSerializeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DynamicBoundingBoxSerializeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DynamicBoundingBoxSerializeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSerializeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

void re::ecs2::DynamicBoundingBoxSystem::~DynamicBoundingBoxSystem(re::ecs2::DynamicBoundingBoxSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DynamicBoundingBoxComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DynamicBoundingBoxComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::DynamicBoundingBoxSerializeSystem::~DynamicBoundingBoxSerializeSystem(re::ecs2::DynamicBoundingBoxSerializeSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void **re::DynamicArray<re::AABB>::copy(void **this, char *__src, unint64_t a3)
{
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = memmove(this[4], __src, 32 * a3);
    }

    else
    {
      re::DynamicArray<re::AABB>::growCapacity(this, a3);
      v7 = v3[2];
      if (v7)
      {
        memmove(v3[4], __src, 32 * v7);
        v8 = v3[2];
      }

      else
      {
        v8 = 0;
      }

      this = memcpy(v3[4] + 32 * v8, &__src[32 * v7], 32 * (a3 - v7));
      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4680;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4680;
  a2[1] = v2;
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF46D8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF4730;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF4788;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF47E0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
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
        *v37 = &unk_1F5CF46D8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF4730;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF4788;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF47E0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF46D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF46D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4730;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4730;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4788;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4788;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF47E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF47E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionDynamicArray<re::AABB>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AABB>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AABB>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AABB>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AABB>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::AABB>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AABB>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::AABB>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AABB>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v11[0] = vnegq_f32(v8);
  v11[1] = v8;
  re::DynamicArray<re::AABB>::add(this, v11);
  v9 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::AABB>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AABB>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AABB>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::AABB>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::DynamicBoundingBoxComponent>(void *a1)
{
  bzero(a1, 0x210uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDC078;
  inited = objc_initWeak(a1 + 4, 0);
  a1[5] = 0;
  a1[9] = re::globalAllocators(inited)[2];
  a1[10] = 0;
  v3 = objc_initWeak(a1 + 11, 0);
  a1[12] = 0;
  a1[16] = re::globalAllocators(v3)[2];
  a1[17] = 0;
  v4 = objc_initWeak(a1 + 18, 0);
  a1[19] = 0;
  a1[23] = re::globalAllocators(v4)[2];
  *(a1 + 56) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 66) = 0;
  *(a1 + 31) = 0u;
  *(a1 + 29) = 0u;
  a1[35] = 0;
  a1[36] = 0;
  a1[34] = 0;
  *(a1 + 74) = 1;
  a1[38] = 0;
  a1[39] = 0;
  a1[41] = 0;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *(a1 + 21) = vnegq_f32(v5);
  *(a1 + 22) = v5;
  a1[46] = 0;
  a1[47] = 0;
  *(a1 + 98) = 0;
  a1[48] = 0;
  a1[65] = 0;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 108) = 0;
  *(a1 + 55) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 118) = 0;
  *(a1 + 30) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicBoundingBoxComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 7;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_PhysicsSimulationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABED0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABF10, "PhysicsSimulationComponent");
    __cxa_guard_release(&qword_1EE1ABED0);
  }

  return &unk_1EE1ABF10;
}

void re::ecs2::initInfo_PhysicsSimulationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x3A8A6133E7C4421ELL;
  v32[1] = "PhysicsSimulationComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&_MergedGlobals_308, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_308);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1ABED8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "reportKinematicStaticCollisions";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ABEE0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "reportKinematicKinematicCollisions";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1ABEE8 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "gravity";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ABEF0 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::IntrospectionInfo<re::Optional<float>>::get(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "fixedTimeStep";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x4000000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ABEF8 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_uint64_t(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "m_parentTimebaseID";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x5800000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1ABF00 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = re::introspect_PhysicsSolverIterations(1);
      v30 = (*(*v28 + 32))(v28, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "solverIterations";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x4800000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1ABF08 = v30;
      __cxa_guard_release(&_MergedGlobals_308);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ABED8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsSimulationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsSimulationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsSimulationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsSimulationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226PhysicsSimulationComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void re::ecs2::PhysicsSimulationComponent::~PhysicsSimulationComponent(re::ecs2::PhysicsSimulationComponent *this)
{
  *this = &unk_1F5CF48D0;
  v2 = *(this + 12);
  if (v2)
  {
    CFRelease(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
    *(this + 13) = 0;
  }

  objc_destroyWeak(this + 10);
  *(this + 10) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::PhysicsSimulationComponent::~PhysicsSimulationComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PhysicsSimulationComponent::removeFromSimulation(re::ecs2::PhysicsSimulationComponent *this)
{
  WeakRetained = objc_loadWeakRetained(this + 10);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*WeakRetained[6] + 144))(WeakRetained[6], 0);
    if (*(this + 13) && *(this + 11))
    {
      v4 = (*(*(v3 - 1) + 56))();
      v5 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v4);
      if (v5)
      {
        v6 = *(this + 2);
        if (v6)
        {
          v7 = v5;
          do
          {
            v8 = v6;
            v6 = *(v6 + 32);
          }

          while (v6);
          v9 = *(v8 + 24);
          if (v9)
          {
            v12[0] = 0;
            SceneDataEntity = makeSceneDataEntity(v9, v12, 0, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
            if (SceneDataEntity)
            {
              v11 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v11)
              {
                (*(*v7 + 72))(v7, *(this + 13), v11 + 32);
              }
            }
          }
        }
      }

      *(this + 11) = 0;
      CFRelease(*(this + 13));
      *(this + 13) = 0;
    }

    objc_destroyWeak(this + 10);
    *(this + 10) = 0;
  }
}