uint64_t re::ecs2::LightSystem::componentDidAactivateEventHandler(uint64_t a1, re::ecs2::ComponentTypeBase *a2, re::ecs2::LightSystem **a3)
{
  v3 = re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(a3[1], a2, a3);
  if (v3)
  {
    re::ecs2::Component::markDirty(v3);
  }

  return 0;
}

uint64_t re::ecs2::LightSystem::componentWillDeactivateEventHandler(uint64_t a1, re::ecs2::ComponentTypeBase *a2, re::ecs2::LightSystem **a3)
{
  v3 = re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(a3[1], a2, a3);
  if (v3)
  {
    re::ecs2::Component::markDirty(v3);
  }

  return 0;
}

uint64_t re::ecs2::LightSystem::willRemoveSceneFromECSService(re::ecs2::LightSystem *this, re::ecs2::Scene *a2)
{
  v107 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 3384, &v107);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v4, i);
        if (*(v107 + 36))
        {
          re::EventBus::unsubscribe(*(v107 + 36), *v7, *(v7 + 8));
        }
      }
    }
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 3384, &v107);
  v108 = v107;
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 70, &v108);
  if (v8 != -1)
  {
    v9 = *(this + 71) + 16 * v8;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 624, *(v9 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 672, *(v9 + 8));
    v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, *(v9 + 8));
    if (*v10)
    {
      v11 = v10;
      *v10 = 0;
      v12 = v10 + 1;
      v13 = *(v10[1] + 288);
      if (v13)
      {
        v14 = v10[12];
        if (v14)
        {
          for (j = 0; j != v14; ++j)
          {
            v16 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v11 + 7), j);
            re::EventBus::unsubscribe(v13, *v16, *(v16 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v11 + 7));
      v17 = 0;
      v18 = v11 + 3;
      do
      {
        v19 = v11[2];
        if (*v19)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v19, v18[v17]);
        }

        v18[v17++] = -1;
      }

      while (v17 != 4);
      *v12 = 0;
      v12[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 560, &v108);
  }

  v108 = v107;
  v20 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 125, &v108);
  if (v20 != -1)
  {
    v21 = *(this + 126) + 16 * v20;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1064, *(v21 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1112, *(v21 + 8));
    v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, *(v21 + 8));
    if (*v22)
    {
      v23 = v22;
      *v22 = 0;
      v24 = v22 + 1;
      v25 = *(v22[1] + 288);
      if (v25)
      {
        v26 = v22[12];
        if (v26)
        {
          for (k = 0; k != v26; ++k)
          {
            v28 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v23 + 7), k);
            re::EventBus::unsubscribe(v25, *v28, *(v28 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v23 + 7));
      v29 = 0;
      v30 = v23 + 3;
      do
      {
        v31 = v23[2];
        if (*v31)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v31, v30[v29]);
        }

        v30[v29++] = -1;
      }

      while (v29 != 4);
      *v24 = 0;
      v24[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1000, &v108);
  }

  v108 = v107;
  v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 180, &v108);
  if (v32 != -1)
  {
    v33 = *(this + 181) + 16 * v32;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1504, *(v33 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1552, *(v33 + 8));
    v34 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, *(v33 + 8));
    if (*v34)
    {
      v35 = v34;
      *v34 = 0;
      v36 = v34 + 1;
      v37 = *(v34[1] + 288);
      if (v37)
      {
        v38 = v34[12];
        if (v38)
        {
          for (m = 0; m != v38; ++m)
          {
            v40 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v35 + 7), m);
            re::EventBus::unsubscribe(v37, *v40, *(v40 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v35 + 7));
      v41 = 0;
      v42 = v35 + 3;
      do
      {
        v43 = v35[2];
        if (*v43)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v43, v42[v41]);
        }

        v42[v41++] = -1;
      }

      while (v41 != 4);
      *v36 = 0;
      v36[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1440, &v108);
  }

  v108 = v107;
  v44 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 235, &v108);
  if (v44 != -1)
  {
    v45 = *(this + 236) + 16 * v44;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1944, *(v45 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1992, *(v45 + 8));
    v46 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, *(v45 + 8));
    if (*v46)
    {
      v47 = v46;
      *v46 = 0;
      v48 = v46 + 1;
      v49 = *(v46[1] + 288);
      if (v49)
      {
        v50 = v46[12];
        if (v50)
        {
          for (n = 0; n != v50; ++n)
          {
            v52 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v47 + 7), n);
            re::EventBus::unsubscribe(v49, *v52, *(v52 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v47 + 7));
      v53 = 0;
      v54 = v47 + 3;
      do
      {
        v55 = v47[2];
        if (*v55)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v55, v54[v53]);
        }

        v54[v53++] = -1;
      }

      while (v53 != 4);
      *v48 = 0;
      v48[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1880, &v108);
  }

  v108 = v107;
  v56 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 290, &v108);
  if (v56 != -1)
  {
    v57 = *(this + 291) + 16 * v56;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2384, *(v57 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2432, *(v57 + 8));
    v58 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, *(v57 + 8));
    if (*v58)
    {
      v59 = v58;
      *v58 = 0;
      v60 = v58 + 1;
      v61 = *(v58[1] + 288);
      if (v61)
      {
        v62 = v58[12];
        if (v62)
        {
          for (ii = 0; ii != v62; ++ii)
          {
            v64 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v59 + 7), ii);
            re::EventBus::unsubscribe(v61, *v64, *(v64 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v59 + 7));
      v65 = 0;
      v66 = v59 + 3;
      do
      {
        v67 = v59[2];
        if (*v67)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v67, v66[v65]);
        }

        v66[v65++] = -1;
      }

      while (v65 != 4);
      *v60 = 0;
      v60[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 2320, &v108);
  }

  v108 = v107;
  v68 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 345, &v108);
  if (v68 != -1)
  {
    v69 = *(this + 346) + 16 * v68;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2824, *(v69 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2872, *(v69 + 8));
    v70 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, *(v69 + 8));
    if (*v70)
    {
      v71 = v70;
      *v70 = 0;
      v72 = v70 + 1;
      v73 = *(v70[1] + 288);
      if (v73)
      {
        v74 = v70[12];
        if (v74)
        {
          for (jj = 0; jj != v74; ++jj)
          {
            v76 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v71 + 7), jj);
            re::EventBus::unsubscribe(v73, *v76, *(v76 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v71 + 7));
      v77 = 0;
      v78 = v71 + 3;
      do
      {
        v79 = v71[2];
        if (*v79)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v79, v78[v77]);
        }

        v78[v77++] = -1;
      }

      while (v77 != 4);
      *v72 = 0;
      v72[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 2760, &v108);
  }

  v108 = v107;
  v80 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 400, &v108);
  if (v80 != -1)
  {
    v81 = *(this + 401) + 16 * v80;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 3264, *(v81 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 3312, *(v81 + 8));
    v82 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, *(v81 + 8));
    if (*v82)
    {
      v83 = v82;
      *v82 = 0;
      v84 = v82 + 1;
      v85 = *(v82[1] + 288);
      if (v85)
      {
        v86 = v82[12];
        if (v86)
        {
          for (kk = 0; kk != v86; ++kk)
          {
            v88 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v83 + 7), kk);
            re::EventBus::unsubscribe(v85, *v88, *(v88 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v83 + 7));
      v89 = 0;
      v90 = v83 + 3;
      do
      {
        v91 = v83[2];
        if (*v91)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v91, v90[v89]);
        }

        v90[v89++] = -1;
      }

      while (v89 != 4);
      *v84 = 0;
      v84[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 3200, &v108);
  }

  v108 = v107;
  v92 = *(v107 + 36);
  if (v92)
  {
    v93 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 360, &v108);
    if (v93)
    {
      re::EventBus::unsubscribe(v92, *v93, *(v93 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 360, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 312, v108);
  v108 = v107;
  v94 = *(v107 + 36);
  if (v94)
  {
    v95 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 800, &v108);
    if (v95)
    {
      re::EventBus::unsubscribe(v94, *v95, *(v95 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 800, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 752, v108);
  v108 = v107;
  v96 = *(v107 + 36);
  if (v96)
  {
    v97 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 1240, &v108);
    if (v97)
    {
      re::EventBus::unsubscribe(v96, *v97, *(v97 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1240, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1192, v108);
  v108 = v107;
  v98 = *(v107 + 36);
  if (v98)
  {
    v99 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 1680, &v108);
    if (v99)
    {
      re::EventBus::unsubscribe(v98, *v99, *(v99 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1680, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1632, v108);
  v108 = v107;
  v100 = *(v107 + 36);
  if (v100)
  {
    v101 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 2120, &v108);
    if (v101)
    {
      re::EventBus::unsubscribe(v100, *v101, *(v101 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2120, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2072, v108);
  v108 = v107;
  v102 = *(v107 + 36);
  if (v102)
  {
    v103 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 2560, &v108);
    if (v103)
    {
      re::EventBus::unsubscribe(v102, *v103, *(v103 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2560, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2512, v108);
  v108 = v107;
  v104 = *(v107 + 36);
  if (v104)
  {
    v105 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 3000, &v108);
    if (v105)
    {
      re::EventBus::unsubscribe(v104, *v105, *(v105 + 8));
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 3000, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2952, v108);
  result = *(this + 37);
  if (result)
  {
    return (*(*result + 88))(result, v107);
  }

  return result;
}

uint64_t re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(re::ecs2::LightSystem *this, re::ecs2::ComponentTypeBase *a2, re::ecs2::Entity *a3)
{
  if (re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == this)
  {
    v4 = &re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  else if (re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == this)
  {
    v4 = &re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  else
  {
    if (re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this)
    {
      return 0;
    }

    v4 = &re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  return re::ecs2::EntityComponentCollection::get((a2 + 48), *v4);
}

void *re::ecs2::allocInfo_LightSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6B00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6B08, "LightSystem");
    __cxa_guard_release(&qword_1EE1A6B00);
  }

  return &unk_1EE1A6B08;
}

void re::ecs2::initInfo_LightSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1CEFB079BB7258ALL;
  v6[1] = "LightSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xD6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_LightSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::LightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::LightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::LightSystem::~LightSystem(re::ecs2::LightSystem *this)
{
  re::ecs2::LightSystem::~LightSystem(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 3384);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 3144);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 3200);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3264);
  *(this + 413) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3312);
  *(this + 421) = 0;
  *(this + 3352) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3312);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3264);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 3200);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 3144);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3144);
  *(this + 368) = &unk_1F5CEE348;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3048);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 375);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 369);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2704);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2760);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2824);
  *(this + 358) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2872);
  *(this + 366) = 0;
  *(this + 182) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2872);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2824);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2760);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2704);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2704);
  *(this + 313) = &unk_1F5CEE388;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2608);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 320);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 314);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2264);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2320);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2384);
  *(this + 303) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2432);
  *(this + 311) = 0;
  *(this + 2472) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2432);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2384);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2320);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2264);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2264);
  *(this + 258) = &unk_1F5CEE3C8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2168);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 265);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 259);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1824);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1880);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1944);
  *(this + 248) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1992);
  *(this + 256) = 0;
  *(this + 127) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1992);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1944);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1880);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1824);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1824);
  *(this + 203) = &unk_1F5CEE408;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1728);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 210);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 204);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1384);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1440);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1504);
  *(this + 193) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1552);
  *(this + 201) = 0;
  *(this + 1592) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1552);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1504);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1440);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1384);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1384);
  *(this + 148) = &unk_1F5CEE448;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1288);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 155);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 149);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 944);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1000);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1064);
  *(this + 138) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1112);
  *(this + 146) = 0;
  *(this + 72) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1112);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1064);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1000);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 944);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 944);
  *(this + 93) = &unk_1F5CEE488;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 848);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 100);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 94);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 504);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 560);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 624);
  *(this + 83) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 672);
  *(this + 91) = 0;
  *(this + 712) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 672);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 624);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 560);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 504);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 504);
  *(this + 38) = &unk_1F5CEE4C8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v43 = *MEMORY[0x1E69E9840];
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    if (!*(v11 + 240) || re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
    {
      return;
    }

    v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::DynamicString::DynamicString(location, (v12 + 48));
    v14 = *(v12 + 128);
    v31 = *(v12 + 112);
    v32 = v14;
    v33[0] = *(v12 + 144);
    *(v33 + 12) = *(v12 + 156);
    v15 = *(v12 + 96);
    v29 = *(v12 + 80);
    v30 = v15;
    v16 = *(v12 + 208);
    v17 = *(v12 + 224);
    v39 = *(v12 + 256);
    v36 = v16;
    v37 = v17;
    v38 = *(v12 + 240);
    v18 = *(v12 + 192);
    v34 = *(v12 + 176);
    v35 = v18;
    v40 = *(v12 + 260);
    if (v40 == 1)
    {
      v41 = *(v12 + 261);
    }

    v42 = *(v12 + 262);
    re::DynamicString::operator=((v12 + 48), location);
    v19 = v30;
    *(v12 + 80) = v29;
    *(v12 + 96) = v19;
    *(v12 + 156) = *(v33 + 12);
    v20 = v33[0];
    *(v12 + 128) = v32;
    *(v12 + 144) = v20;
    *(v12 + 112) = v31;
    v21 = v35;
    *(v12 + 176) = v34;
    *(v12 + 192) = v21;
    *(v12 + 256) = v39;
    v22 = v38;
    *(v12 + 224) = v37;
    *(v12 + 240) = v22;
    *(v12 + 208) = v36;
    if (*(v12 + 260))
    {
      if ((v40 & 1) == 0)
      {
        *(v12 + 260) = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_21;
      }

      *(v12 + 260) = 1;
    }

    *(v12 + 261) = v41;
LABEL_21:
    *(v12 + 262) = v42;
    if (location[0])
    {
      if (location[1])
      {
        (*(*location[0] + 40))();
      }
    }

    return;
  }

  v25 = *(a2 + 8);
  v28 = 0u;
  v29 = 0u;
  *location = 0u;
  DWORD1(v29) = 0x7FFFFFFF;
  v23 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
  if (a3)
  {
    v24 = (a3 + 8);
  }

  else
  {
    v24 = 0;
  }

  objc_initWeak(location, v24);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v23, location);
  objc_destroyWeak(location);
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v35, a5, 0);
  v29 = a4;
  v30 = *&v35[0];
  v31 = DWORD2(v35[0]);
  if (*&v35[0] != a5 || DWORD2(v35[0]) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v30);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v12 + 16)) == 1)
      {
        break;
      }

      v26 = 1;
LABEL_26:
      v27 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v30);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a3, v29, v27, v26);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v30);
      if (v30 == a5 && v31 == 0xFFFF && HIWORD(v31) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v30);
    v14 = *v13;
    v15 = *(*v13 + 16);
    memset(v35, 0, sizeof(v35));
    re::DynamicString::setCapacity(v35, 0);
    v39 = 0u;
    memset(v40, 0, 20);
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    *&v40[20] = 0x412000003C23D70ALL;
    v47 = 0;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    *v45 = v15[39];
    re::DynamicString::format("%s_%llu", &v32, v15[37], *v45);
    re::DynamicString::operator=(v35, &v32);
    if (v32 && (v33 & 1) != 0)
    {
      (*(*v32 + 40))();
    }

    v16 = *(v14 + 280);
    v17 = *(v14 + 288);
    v32 = *(v14 + 272);
    v34 = v17;
    v33 = v16;
    *&v18 = re::ColorGamut3F::as(&v32, *(a6 + 28), 1);
    DWORD2(v18) = v19;
    *v40 = v18;
    *&v40[16] = *(v14 + 28);
    *&v45[8] = *(v14 + 32);
    *&v40[20] = 1008981770;
    *&v40[24] = *&v45[8];
    v20 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v21 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    LOBYTE(v47) = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
    if (HIBYTE(v47) == 1 && *(a6 + 24) == 1)
    {
      HIBYTE(v47) = *(a6 + 25);
    }

    if (v47 == 1 && *(a6 + 26) == 1)
    {
      LOBYTE(v47) = *(a6 + 27);
    }

    re::DynamicString::operator=((v14 + 48), v35);
    v22 = v37;
    *(v14 + 80) = v36;
    *(v14 + 96) = v22;
    *(v14 + 156) = *&v40[12];
    v23 = *v40;
    *(v14 + 128) = v39;
    *(v14 + 144) = v23;
    *(v14 + 112) = v38;
    *(v14 + 256) = *&v45[16];
    v24 = *v45;
    *(v14 + 224) = v44;
    *(v14 + 240) = v24;
    v25 = v43;
    *(v14 + 192) = v42;
    *(v14 + 208) = v25;
    *(v14 + 176) = v41;
    if (*(v14 + 260))
    {
      if ((v45[20] & 1) == 0)
      {
        *(v14 + 260) = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if ((v45[20] & 1) == 0)
      {
        goto LABEL_22;
      }

      *(v14 + 260) = 1;
    }

    *(v14 + 261) = v46;
LABEL_22:
    *(v14 + 262) = v47;
    if (*&v35[0] && (BYTE8(v35[0]) & 1) != 0)
    {
      (*(**&v35[0] + 40))();
    }

    v26 = 3;
    goto LABEL_26;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PointLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v54 = *buf;
  v55 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v52 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v54);
      v13 = *v12;
      v14 = *(*v12 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
      v15 = v60;
      *(v13 + 80) = *buf;
      *(v13 + 96) = v15;
      v16 = v62;
      *(v13 + 112) = v61;
      *(v13 + 128) = v16;
      if (v56[0] == 1)
      {
        v22 = v57;
        v23 = *(v13 + 36);
        *(v13 + 248) = v57 * *(v13 + 32);
        *(v13 + 160) = *(v13 + 28) * powf(v22, v23);
      }

      v24 = 0;
      v20.i64[0] = *(v13 + 80);
      v18.i64[0] = *(v13 + 96);
      v19.i64[0] = *(v13 + 112);
      v25 = vzip1q_s32(v20, v19);
      v20.i32[2] = *(v13 + 88);
      v19.i32[2] = *(v13 + 120);
      v21.i32[0] = *(v13 + 104);
      v26 = vzip1q_s32(v25, v18);
      v18.i32[2] = v21.i32[0];
      v58[0] = v26;
      v58[1] = vzip2q_s32(v25, vdupq_lane_s32(*v18.f32, 1));
      v58[2] = vzip1q_s32(vzip2q_s32(v20, v19), v21);
      do
      {
        *&buf[v24 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v58[v24])), v18, *&v58[v24], 1), v19, v58[v24], 2);
        ++v24;
      }

      while (v24 != 3);
      v27.i32[3] = v61.i32[3];
      v28 = vcgeq_f32(v52, vabdq_f32(xmmword_1E30476A0, v61));
      v29 = vandq_s8(vandq_s8(vcgeq_f32(v52, vabdq_f32(xmmword_1E3047680, v60)), vcgeq_f32(v52, vabdq_f32(xmmword_1E3047670, *buf))), v28);
      v29.i32[3] = v29.i32[2];
      if ((vminvq_u32(v29) & 0x80000000) == 0)
      {
        if ((atomic_exchange(&re::ecs2::PointLightComponentStateImpl::processUpdatingComponent(re::ecs2::PointLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v30 = *re::ecsComponentsLogObjects(v17);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
          }
        }

        v29.i64[0] = *(v13 + 80);
        v27.i64[0] = *(v13 + 96);
        v28.i64[0] = *(v13 + 112);
        v29.i32[2] = *(v13 + 88);
        v27.i32[2] = *(v13 + 104);
        v28.i32[2] = *(v13 + 120);
        v31 = vmulq_f32(v29, v29);
        *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        *v31.f32 = vrsqrte_f32(v32);
        *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
        v33 = vmulq_n_f32(v29, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
        v34 = vmulq_f32(v27, v33);
        v35 = vmulq_f32(v33, v33);
        v36 = vmulq_f32(v28, v33);
        *v35.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8)));
        v37 = vsubq_f32(v27, vmulq_n_f32(v33, (v34.f32[2] + vaddv_f32(*v34.f32)) / *&v35.i32[1]));
        v38 = vmulq_f32(v37, v37);
        *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        *v38.f32 = vrsqrte_f32(v39);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
        v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
        v41 = vsubq_f32(v28, vmulq_n_f32(v33, *v35.i32 / *&v35.i32[1]));
        v42 = vmulq_f32(v28, v40);
        v43 = vmulq_f32(v40, v40);
        *v42.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v43.i8), vzip2_s32(*v42.i8, *v43.i8)));
        v44 = vsubq_f32(v41, vmulq_n_f32(v40, vdiv_f32(*v42.i8, vdup_lane_s32(*v42.i8, 1)).f32[0]));
        v45 = vmulq_f32(v44, v44);
        *v43.i32 = v45.f32[2] + vaddv_f32(*v45.f32);
        *v45.f32 = vrsqrte_f32(v43.u32[0]);
        *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32)));
        *(v13 + 80) = v33.i64[0];
        *(v13 + 88) = v33.i32[2];
        *(v13 + 96) = v40.i64[0];
        *(v13 + 104) = v40.i32[2];
        v46 = vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
        *(v13 + 112) = v46.i64[0];
        *(v13 + 120) = v46.i32[2];
      }

      v47 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v47)
      {
        v48 = v47;
        re::DynamicArray<re::PointLightInfo>::add(v47 + 168, (v13 + 48));
        if (*(v13 + 263) == 1)
        {
          v49 = re::DynamicArray<re::DynamicLightShadowInfo>::add(v48 + 248, buf);
          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))(v49);
            }
          }
        }
      }

      v50 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v54);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v50, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v54);
    }

    while (v54 != a5 || v55 != 0xFFFF || HIWORD(v55) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v25 = *(a2 + 8);
    v28 = 0u;
    v29 = 0u;
    *location = 0u;
    DWORD1(v29) = 0x7FFFFFFF;
    v23 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
    if (a3)
    {
      v24 = (a3 + 8);
    }

    else
    {
      v24 = 0;
    }

    objc_initWeak(location, v24);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v23, location);
    objc_destroyWeak(location);
    return;
  }

  v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (!*(v11 + 240) || re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    return;
  }

  v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::DynamicString::DynamicString(location, (v12 + 48));
  v14 = *(v12 + 128);
  v31 = *(v12 + 112);
  v32 = v14;
  v33[0] = *(v12 + 144);
  *(v33 + 12) = *(v12 + 156);
  v15 = *(v12 + 96);
  v29 = *(v12 + 80);
  v30 = v15;
  v16 = *(v12 + 208);
  v17 = *(v12 + 224);
  *&v38[12] = *(v12 + 252);
  v36 = v16;
  v37 = v17;
  *v38 = *(v12 + 240);
  v18 = *(v12 + 192);
  v34 = *(v12 + 176);
  v35 = v18;
  v39 = *(v12 + 268);
  if (v39 == 1)
  {
    v40 = *(v12 + 269);
  }

  v41 = *(v12 + 270);
  v42 = *(v12 + 272);
  v43 = *(v12 + 280);
  re::DynamicString::operator=((v12 + 48), location);
  v19 = v30;
  *(v12 + 80) = v29;
  *(v12 + 96) = v19;
  *(v12 + 156) = *(v33 + 12);
  v20 = v33[0];
  *(v12 + 128) = v32;
  *(v12 + 144) = v20;
  *(v12 + 112) = v31;
  v21 = v35;
  *(v12 + 176) = v34;
  *(v12 + 192) = v21;
  *(v12 + 252) = *&v38[12];
  v22 = *v38;
  *(v12 + 224) = v37;
  *(v12 + 240) = v22;
  *(v12 + 208) = v36;
  if ((*(v12 + 268) & 1) == 0)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_21;
    }

    *(v12 + 268) = 1;
LABEL_20:
    *(v12 + 269) = v40;
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_20;
  }

  *(v12 + 268) = 0;
LABEL_21:
  *(v12 + 270) = v41;
  *(v12 + 272) = v42;
  NS::SharedPtr<MTL::Buffer>::operator=((v12 + 280), &v43);
  if (v43)
  {

    v43 = 0;
  }

  if (location[0])
  {
    if (location[1])
    {
      (*(*location[0] + 40))();
    }
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v39, a5, 0);
  v33 = a4;
  v34 = *&v39[0];
  v35 = DWORD2(v39[0]);
  if (*&v39[0] != v6 || DWORD2(v39[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v34);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        v12 = v6;
        v13 = v9;
        v14 = a3;
        v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v34);
        v16 = *v15;
        v17 = *(*v15 + 16);
        memset(v39, 0, sizeof(v39));
        re::DynamicString::setCapacity(v39, 0);
        v43 = 0u;
        memset(v44, 0, 20);
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        *&v44[20] = 0x412000003C23D70ALL;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v48 = 0u;
        memset(v49, 0, sizeof(v49));
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        *v49 = v17[39];
        re::DynamicString::format("%s_%llu", &v36, v17[37], *v49);
        re::DynamicString::operator=(v39, &v36);
        if (v36 && (v37 & 1) != 0)
        {
          (*(*v36 + 40))();
        }

        v18 = *(v16 + 296);
        v19 = *(v16 + 304);
        v36 = *(v16 + 288);
        v38 = v19;
        v37 = v18;
        *&v20 = re::ColorGamut3F::as(&v36, *(a6 + 28), 1);
        DWORD2(v20) = v21;
        *v44 = v20;
        *&v44[16] = *(v16 + 28);
        v22 = *(v16 + 32);
        *&v49[8] = vextq_s8(v22, v22, 8uLL);
        *&v44[20] = 1008981770;
        *&v44[24] = v22.i32[2];
        LOBYTE(v51) = 0;
        v23 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v24 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        HIBYTE(v51) = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
        if (v52 == 1 && *(a6 + 24) == 1)
        {
          v52 = *(a6 + 25);
        }

        a3 = v14;
        if (HIBYTE(v51) == 1 && *(a6 + 26) == 1)
        {
          HIBYTE(v51) = *(a6 + 27);
        }

        re::DynamicString::operator=((v16 + 48), v39);
        v25 = v41;
        *(v16 + 80) = v40;
        *(v16 + 96) = v25;
        *(v16 + 156) = *&v44[12];
        v26 = *v44;
        *(v16 + 128) = v43;
        *(v16 + 144) = v26;
        *(v16 + 112) = v42;
        *(v16 + 252) = *&v49[12];
        v27 = *v49;
        *(v16 + 224) = v48;
        *(v16 + 240) = v27;
        v28 = v47;
        *(v16 + 192) = v46;
        *(v16 + 208) = v28;
        *(v16 + 176) = v45;
        v9 = v13;
        v6 = v12;
        if (*(v16 + 268))
        {
          if (v49[28])
          {
            *(v16 + 269) = v50;
          }

          else
          {
            *(v16 + 268) = 0;
          }
        }

        else if (v49[28])
        {
          *(v16 + 268) = 1;
          *(v16 + 269) = v50;
        }

        *(v16 + 270) = v51;
        *(v16 + 272) = v52;
        NS::SharedPtr<MTL::Buffer>::operator=((v16 + 280), &v53);
        if (v53)
        {

          v53 = 0;
        }

        if (*&v39[0] && (BYTE8(v39[0]) & 1) != 0)
        {
          (*(**&v39[0] + 40))();
        }

        v29 = 3;
      }

      else
      {
        v29 = 1;
      }

      v30 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v34);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a3, v33, v30, v29);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v34);
    }

    while (v34 != v6 || v35 != 0xFFFF || HIWORD(v35) != 0xFFFF);
  }

  return *(v6 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::SpotLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v76 = *MEMORY[0x1E69E9840];
  v62 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v64 = *buf;
  v65 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v61 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v64);
      v12 = *v11;
      v13 = *(*v11 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v13, 0, buf);
      v14 = v73;
      *(v12 + 80) = *buf;
      *(v12 + 96) = v14;
      v15 = v75;
      *(v12 + 112) = v74;
      *(v12 + 128) = v15;
      if (v70[0] == 1)
      {
        v21 = v71;
        v22 = *(v12 + 44);
        *(v12 + 248) = v71 * *(v12 + 40);
        *(v12 + 160) = *(v12 + 28) * powf(v21, v22);
        v23 = v21 * *(v12 + 164);
        v24 = v21 * *(v12 + 168);
        v25 = tanf(*(v12 + 256) * 0.5);
        v26 = 1.0 / v25;
        if (v24 == INFINITY)
        {
          v27 = -v23;
          DWORD1(v28) = 0;
          *(&v28 + 1) = 0;
          *&v28 = 1.0 / v25;
          v29.i32[0] = 0;
          v29.i64[1] = 0;
          v29.f32[1] = v26;
          v30 = xmmword_1E3085330;
        }

        else
        {
          DWORD1(v28) = 0;
          *(&v28 + 1) = 0;
          *&v28 = 1.0 / v25;
          v29.i32[0] = 0;
          v29.i64[1] = 0;
          v29.f32[1] = v26;
          v27 = (v23 * v24) / (v23 - v24);
          *&v30 = 0;
          *(&v30 + 2) = v24 / (v23 - v24);
          HIDWORD(v30) = -1.0;
        }

        *&v31 = 0;
        *(&v31 + 1) = LODWORD(v27);
        *buf = v28;
        v73 = v29;
        v74 = v30;
        v75 = v31;
        re::Projection::makeReverseDepth(buf, &v66);
        v32 = v67;
        *(v12 + 176) = v66;
        *(v12 + 192) = v32;
        v17.i64[1] = v68.i64[1];
        v18 = v69;
        *(v12 + 208) = v68;
        *(v12 + 224) = v18;
      }

      v33 = 0;
      v19.i64[0] = *(v12 + 80);
      v17.i64[0] = *(v12 + 96);
      v18.i64[0] = *(v12 + 112);
      v34 = vzip1q_s32(v19, v18);
      v19.i32[2] = *(v12 + 88);
      v18.i32[2] = *(v12 + 120);
      v20.i32[0] = *(v12 + 104);
      v35 = vzip1q_s32(v34, v17);
      v17.i32[2] = v20.i32[0];
      v66 = v35;
      v67 = vzip2q_s32(v34, vdupq_lane_s32(*v17.f32, 1));
      v68 = vzip1q_s32(vzip2q_s32(v19, v18), v20);
      do
      {
        *&buf[v33] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v66 + v33))), v17, *&v66.i8[v33], 1), v18, *(&v66 + v33), 2);
        v33 += 16;
      }

      while (v33 != 48);
      v36.i32[3] = HIDWORD(v74);
      v37 = vcgeq_f32(v61, vabdq_f32(xmmword_1E30476A0, v74));
      v38 = vandq_s8(vandq_s8(vcgeq_f32(v61, vabdq_f32(xmmword_1E3047680, v73)), vcgeq_f32(v61, vabdq_f32(xmmword_1E3047670, *buf))), v37);
      v38.i32[3] = v38.i32[2];
      if ((vminvq_u32(v38) & 0x80000000) == 0)
      {
        if ((atomic_exchange(&re::ecs2::SpotLightComponentStateImpl::processUpdatingComponent(re::ecs2::SpotLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v39 = *re::ecsComponentsLogObjects(v16);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
          }
        }

        v38.i64[0] = *(v12 + 80);
        v36.i64[0] = *(v12 + 96);
        v37.i64[0] = *(v12 + 112);
        v38.i32[2] = *(v12 + 88);
        v36.i32[2] = *(v12 + 104);
        v37.i32[2] = *(v12 + 120);
        v40 = vmulq_f32(v38, v38);
        *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
        *v40.f32 = vrsqrte_f32(v41);
        *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
        v42 = vmulq_n_f32(v38, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
        v43 = vmulq_f32(v36, v42);
        v44 = vmulq_f32(v42, v42);
        v45 = vmulq_f32(v37, v42);
        *v44.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v44.i8), vzip2_s32(*v45.i8, *v44.i8)));
        v46 = vsubq_f32(v36, vmulq_n_f32(v42, (v43.f32[2] + vaddv_f32(*v43.f32)) / *&v44.i32[1]));
        v47 = vmulq_f32(v46, v46);
        *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
        *v47.f32 = vrsqrte_f32(v48);
        *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
        v49 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
        v50 = vsubq_f32(v37, vmulq_n_f32(v42, *v44.i32 / *&v44.i32[1]));
        v51 = vmulq_f32(v37, v49);
        v52 = vmulq_f32(v49, v49);
        *v51.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v51.i8, *v52.i8), vzip2_s32(*v51.i8, *v52.i8)));
        v53 = vsubq_f32(v50, vmulq_n_f32(v49, vdiv_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).f32[0]));
        v54 = vmulq_f32(v53, v53);
        *v52.i32 = v54.f32[2] + vaddv_f32(*v54.f32);
        *v54.f32 = vrsqrte_f32(v52.u32[0]);
        *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32)));
        *(v12 + 80) = v42.i64[0];
        *(v12 + 88) = v42.i32[2];
        *(v12 + 96) = v49.i64[0];
        *(v12 + 104) = v49.i32[2];
        v55 = vmulq_n_f32(v53, vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32))).f32[0]);
        *(v12 + 112) = v55.i64[0];
        *(v12 + 120) = v55.i32[2];
      }

      v56 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v13, v62);
      if (v56)
      {
        v57 = v56;
        re::DynamicArray<re::SpotLightInfo>::add(v56 + 128, (v12 + 48));
        if (*(v12 + 272) == 1)
        {
          v58 = re::DynamicArray<re::DynamicLightShadowInfo>::add(v57 + 248, buf);
          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))(v58);
            }
          }
        }
      }

      v59 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v59, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v64);
    }

    while (v64 != a5 || v65 != 0xFFFF || HIWORD(v65) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v11 || re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
    {
      return;
    }

    v12 = v11;
    v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (*(v12 + 32) == 1)
    {
      re::DynamicString::DynamicString(location, (v12 + 208));
      v14 = *(v12 + 288);
      v31 = *(v12 + 272);
      v32 = v14;
      *v33 = *(v12 + 304);
      *&v33[12] = *(v12 + 316);
      v15 = *(v12 + 256);
      v29 = *(v12 + 240);
      v30 = v15;
      v35 = *(v12 + 340);
      if (v35 == 1)
      {
        v36 = *(v12 + 341);
      }

      LOWORD(v37) = *(v12 + 342);
      v34 = vrev64_s32(*(v13 + 28));
      if (v35)
      {
        if ((*(v13 + 36) & 1) == 0)
        {
          v35 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        if ((*(v13 + 36) & 1) == 0)
        {
          goto LABEL_26;
        }

        v35 = 1;
      }

      v36 = *(v13 + 37);
LABEL_26:
      *&v33[20] = *(v13 + 40);
      *(&v37 + 2) = *(v13 + 48);
      LOBYTE(v37) = *(v13 + 38);
      BYTE6(v37) = *(v13 + 52);
      re::DynamicString::operator=((v12 + 208), location);
      v20 = v30;
      *(v12 + 240) = v29;
      *(v12 + 256) = v20;
      *(v12 + 316) = *&v33[12];
      v21 = *v33;
      *(v12 + 288) = v32;
      *(v12 + 304) = v21;
      *(v12 + 272) = v31;
      *(v12 + 332) = v34;
      if (*(v12 + 340))
      {
        if ((v35 & 1) == 0)
        {
          *(v12 + 340) = 0;
LABEL_38:
          *(v12 + 342) = v37;
          *(v12 + 345) = *(&v37 + 3);
          goto LABEL_43;
        }
      }

      else
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_38;
        }

        *(v12 + 340) = 1;
      }

      *(v12 + 341) = v36;
      goto LABEL_38;
    }

    re::DynamicString::DynamicString(location, (v12 + 48));
    v18 = *(v12 + 128);
    v31 = *(v12 + 112);
    v32 = v18;
    *v33 = *(v12 + 144);
    *&v33[12] = *(v12 + 156);
    v19 = *(v12 + 96);
    v29 = *(v12 + 80);
    v30 = v19;
    v35 = *(v12 + 180);
    if (v35 == 1)
    {
      v36 = *(v12 + 181);
    }

    v37 = *(v12 + 182);
    v38 = *(v12 + 198);
    v34 = vrev64_s32(*(v13 + 28));
    if (v35)
    {
      if ((*(v13 + 36) & 1) == 0)
      {
        v35 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if ((*(v13 + 36) & 1) == 0)
      {
        goto LABEL_32;
      }

      v35 = 1;
    }

    v36 = *(v13 + 37);
LABEL_32:
    *&v33[20] = *(v13 + 40);
    *(&v37 + 6) = *(v13 + 48);
    BYTE2(v37) = *(v13 + 38);
    BYTE3(v37) = *(v13 + 52);
    re::DynamicString::operator=((v12 + 48), location);
    v22 = *&v33[12];
    v23 = v32;
    *(v12 + 112) = v31;
    *(v12 + 128) = v23;
    *(v12 + 144) = *v33;
    *(v12 + 156) = v22;
    v24 = v30;
    *(v12 + 80) = v29;
    *(v12 + 96) = v24;
    *(v12 + 172) = v34;
    if (*(v12 + 180))
    {
      if ((v35 & 1) == 0)
      {
        *(v12 + 180) = 0;
LABEL_42:
        *(v12 + 182) = v37;
        *(v12 + 198) = v38;
LABEL_43:
        if (location[0])
        {
          if (location[1])
          {
            (*(*location[0] + 40))();
          }
        }

        return;
      }
    }

    else
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_42;
      }

      *(v12 + 180) = 1;
    }

    *(v12 + 181) = v36;
    goto LABEL_42;
  }

  v25 = *(a2 + 8);
  v28 = 0u;
  v29 = 0u;
  *location = 0u;
  DWORD1(v29) = 0x7FFFFFFF;
  v16 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
  if (a3)
  {
    v17 = (a3 + 8);
  }

  else
  {
    v17 = 0;
  }

  objc_initWeak(location, v17);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v16, location);
  objc_destroyWeak(location);
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v37 = a4;
  v38 = v43;
  v39 = DWORD2(v43);
  if (v43 != a5 || DWORD2(v43) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v38);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        break;
      }

      v22 = 1;
LABEL_60:
      v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v38);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a3, v37, v34, v22);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v38);
      if (v38 == a5 && v39 == 0xFFFF && HIWORD(v39) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v38);
    v13 = *v12;
    v14 = *(*v12 + 16);
    v15 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v16 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v17 = v16;
    if (*(v13 + 32) == 1)
    {
      v43 = 0uLL;
      v44 = 0uLL;
      re::DynamicString::setCapacity(&v43, 0);
      v48 = 0u;
      memset(v49, 0, 20);
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      *&v49[20] = 0x412000003C23D70ALL;
      v50 = 0;
      v51 = 0;
      v53[0] = 1;
      *&v53[2] = 1065353216;
      v53[6] = 1;
      re::DynamicString::format("%s_%llu", &v40, v14[37], v14[39]);
      re::DynamicString::operator=(&v43, &v40);
      if (v40 && (v41 & 1) != 0)
      {
        (*(*v40 + 40))();
      }

      v18 = *(v13 + 360);
      v19 = *(v13 + 368);
      v40 = *(v13 + 352);
      v42 = v19;
      v41 = v18;
      *&v20 = re::ColorGamut3F::as(&v40, *(a6 + 28), 1);
      DWORD2(v20) = v21;
      *v49 = v20;
      *&v49[16] = *(v13 + 28);
      if (!(v17 | v15))
      {
        v50 = 0;
        goto LABEL_36;
      }

      if (!v15)
      {
        v27 = 0x40A000003F800000;
        if (v17)
        {
          v27 = *(v17 + 28);
        }

        v50 = vrev64_s32(v27);
LABEL_36:
        re::DynamicString::operator=((v13 + 208), &v43);
        v29 = v48;
        *(v13 + 272) = v47;
        *(v13 + 288) = v29;
        *(v13 + 304) = *v49;
        *(v13 + 316) = *&v49[12];
        v30 = v46;
        *(v13 + 240) = v45;
        *(v13 + 256) = v30;
        *(v13 + 332) = v50;
        if (*(v13 + 340))
        {
          if ((v51 & 1) == 0)
          {
            *(v13 + 340) = 0;
LABEL_42:
            *(v13 + 342) = *v53;
            *(v13 + 345) = *&v53[3];
            goto LABEL_56;
          }
        }

        else
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_42;
          }

          *(v13 + 340) = 1;
        }

        *(v13 + 341) = v52;
        goto LABEL_42;
      }

      v50 = vrev64_s32(*(v15 + 28));
      if (v51)
      {
        if ((*(v15 + 36) & 1) == 0)
        {
          v51 = 0;
LABEL_35:
          *&v49[20] = *(v15 + 40);
          v53[0] = *(v15 + 38);
          *&v53[2] = *(v15 + 48);
          v53[6] = *(v15 + 52);
          goto LABEL_36;
        }
      }

      else
      {
        if ((*(v15 + 36) & 1) == 0)
        {
          goto LABEL_35;
        }

        v51 = 1;
      }

      v52 = *(v15 + 37);
      goto LABEL_35;
    }

    v43 = 0uLL;
    v44 = 0uLL;
    re::DynamicString::setCapacity(&v43, 0);
    v48 = 0u;
    memset(v49, 0, 20);
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    *&v49[20] = 0x412000003C23D70ALL;
    v50 = 0;
    v51 = 0;
    *v53 = 16842752;
    *&v53[6] = 1065353216;
    *&v53[10] = 0;
    re::DynamicString::format("%s_%llu", &v40, v14[37], v14[39]);
    re::DynamicString::operator=(&v43, &v40);
    if (v40 && (v41 & 1) != 0)
    {
      (*(*v40 + 40))();
    }

    v23 = *(v13 + 360);
    v24 = *(v13 + 368);
    v40 = *(v13 + 352);
    v42 = v24;
    v41 = v23;
    *&v25 = re::ColorGamut3F::as(&v40, *(a6 + 28), 1);
    DWORD2(v25) = v26;
    *v49 = v25;
    *&v49[16] = *(v13 + 28);
    v53[0] = (v17 | v15) != 0;
    if (!(v17 | v15))
    {
      v50 = 0;
      goto LABEL_49;
    }

    if (!v15)
    {
      v28 = 0x40A000003F800000;
      if (v17)
      {
        v28 = *(v17 + 28);
      }

      v50 = vrev64_s32(v28);
      goto LABEL_47;
    }

    v50 = vrev64_s32(*(v15 + 28));
    if (v51)
    {
      if ((*(v15 + 36) & 1) == 0)
      {
        v51 = 0;
LABEL_46:
        *&v49[20] = *(v15 + 40);
        v53[2] = *(v15 + 38);
        *&v53[6] = *(v15 + 48);
        v53[3] = *(v15 + 52);
LABEL_47:
        if (*(a6 + 24))
        {
          v53[0] = *(a6 + 25);
        }

LABEL_49:
        *&v53[10] = v14[39];
        re::DynamicString::operator=((v13 + 48), &v43);
        v31 = *&v49[12];
        v32 = v48;
        *(v13 + 112) = v47;
        *(v13 + 128) = v32;
        *(v13 + 144) = *v49;
        *(v13 + 156) = v31;
        v33 = v46;
        *(v13 + 80) = v45;
        *(v13 + 96) = v33;
        *(v13 + 172) = v50;
        if (*(v13 + 180))
        {
          if ((v51 & 1) == 0)
          {
            *(v13 + 180) = 0;
LABEL_55:
            *(v13 + 182) = *v53;
            *(v13 + 198) = *&v53[16];
LABEL_56:
            if (v43 && (BYTE8(v43) & 1) != 0)
            {
              (*(*v43 + 40))();
            }

            v22 = 3;
            goto LABEL_60;
          }
        }

        else
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_55;
          }

          *(v13 + 180) = 1;
        }

        *(v13 + 181) = v52;
        goto LABEL_55;
      }
    }

    else
    {
      if ((*(v15 + 36) & 1) == 0)
      {
        goto LABEL_46;
      }

      v51 = 1;
    }

    v52 = *(v15 + 37);
    goto LABEL_46;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DirectionalLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v93 = *buf;
  v94 = *&buf[8];
  v11 = *buf == a5 && *&buf[8] == 0xFFFFFFFFLL;
  if (!v11)
  {
    v91 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v93);
      v13 = *v12;
      v14 = *(*v12 + 16);
      v15 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v15)
      {
        v16 = v15;
        if (*(v13 + 32) == 1)
        {
          re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
          v18 = 0;
          v19 = v99;
          *(v13 + 240) = *buf;
          *(v13 + 256) = v19;
          v25.i64[1] = v100.i64[1];
          v22 = v101;
          *(v13 + 272) = v100;
          *(v13 + 288) = v22;
          v21.i64[0] = *(v13 + 240);
          v25.i64[0] = *(v13 + 256);
          v22.i64[0] = *(v13 + 272);
          v20 = vzip1q_s32(v21, v22);
          v21.i32[2] = *(v13 + 248);
          v22.i32[2] = *(v13 + 280);
          v23.i32[0] = *(v13 + 264);
          v24 = vzip1q_s32(v20, v25);
          v25.i32[2] = v23.i32[0];
          v95 = v24;
          v96 = vzip2q_s32(v20, vdupq_lane_s32(*v25.f32, 1));
          v97 = vzip1q_s32(vzip2q_s32(v21, v22), v23);
          do
          {
            *&buf[v18] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v95 + v18))), v25, *&v95.i8[v18], 1), v22, *(&v95 + v18), 2);
            v18 += 16;
          }

          while (v18 != 48);
          v26.i32[3] = v100.i32[3];
          v27 = vcgeq_f32(v91, vabdq_f32(xmmword_1E30476A0, v100));
          v28 = vandq_s8(vandq_s8(vcgeq_f32(v91, vabdq_f32(xmmword_1E3047680, v99)), vcgeq_f32(v91, vabdq_f32(xmmword_1E3047670, *buf))), v27);
          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) == 0)
          {
            if ((atomic_exchange(&_MergedGlobals_237, 1u) & 1) == 0)
            {
              v29 = *re::ecsComponentsLogObjects(v17);
              v17 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v17)
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
              }
            }

            v28.i64[0] = *(v13 + 240);
            v26.i64[0] = *(v13 + 256);
            v27.i64[0] = *(v13 + 272);
            v28.i32[2] = *(v13 + 248);
            v26.i32[2] = *(v13 + 264);
            v27.i32[2] = *(v13 + 280);
            v30 = vmulq_f32(v28, v28);
            *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
            *v30.f32 = vrsqrte_f32(v31);
            *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
            v32 = vmulq_n_f32(v28, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
            v33 = vmulq_f32(v26, v32);
            v34 = vmulq_f32(v32, v32);
            v35 = vmulq_f32(v27, v32);
            *v34.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v34.i8), vzip2_s32(*v35.i8, *v34.i8)));
            v36 = vsubq_f32(v26, vmulq_n_f32(v32, (v33.f32[2] + vaddv_f32(*v33.f32)) / *&v34.i32[1]));
            v37 = vmulq_f32(v36, v36);
            *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
            *v37.f32 = vrsqrte_f32(v38);
            *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
            v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
            v40 = vsubq_f32(v27, vmulq_n_f32(v32, *v34.i32 / *&v34.i32[1]));
            v41 = vmulq_f32(v27, v39);
            v42 = vmulq_f32(v39, v39);
            *v41.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v42.i8), vzip2_s32(*v41.i8, *v42.i8)));
            v43 = vsubq_f32(v40, vmulq_n_f32(v39, vdiv_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)).f32[0]));
            v44 = vmulq_f32(v43, v43);
            *v42.i32 = v44.f32[2] + vaddv_f32(*v44.f32);
            *v44.f32 = vrsqrte_f32(v42.u32[0]);
            *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v44.f32, *v44.f32)));
            *(v13 + 240) = v32.i64[0];
            *(v13 + 248) = v32.i32[2];
            *(v13 + 256) = v39.i64[0];
            *(v13 + 264) = v39.i32[2];
            v45 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v44.f32, *v44.f32))).f32[0]);
            *(v13 + 272) = v45.i64[0];
            *(v13 + 280) = v45.i32[2];
          }

          v46 = *(v16 + 96);
          v47 = *(v16 + 104);
          if (v47 >= v46)
          {
            v48 = v47 + 1;
            if (v46 < v47 + 1)
            {
              if (*(v16 + 88))
              {
                v49 = 2 * v46;
                v11 = v46 == 0;
                v50 = 8;
                if (!v11)
                {
                  v50 = v49;
                }

                if (v50 <= v48)
                {
                  v51 = v48;
                }

                else
                {
                  v51 = v50;
                }

                re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity((v16 + 88), v51);
              }

              else
              {
                re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity((v16 + 88), v48);
                ++*(v16 + 112);
              }
            }

            v47 = *(v16 + 104);
          }

          v82 = re::DynamicString::DynamicString((*(v16 + 120) + 144 * v47), (v13 + 208));
          v83 = *(v13 + 256);
          *(v82 + 2) = *(v13 + 240);
          *(v82 + 3) = v83;
          v84 = *(v13 + 272);
          v85 = *(v13 + 288);
          v86 = *(v13 + 304);
          *(v82 + 108) = *(v13 + 316);
          *(v82 + 5) = v85;
          *(v82 + 6) = v86;
          *(v82 + 4) = v84;
          *(v82 + 124) = *(v13 + 332);
          v87 = *(v13 + 340);
          *(v82 + 132) = v87;
          if (v87 == 1)
          {
            *(v82 + 133) = *(v13 + 341);
          }

          v88 = *(v13 + 342);
          *(v82 + 137) = *(v13 + 345);
          *(v82 + 134) = v88;
          ++*(v16 + 104);
          ++*(v16 + 112);
        }

        else
        {
          re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
          v53 = 0;
          v54 = v99;
          *(v13 + 80) = *buf;
          *(v13 + 96) = v54;
          v60.i64[1] = v100.i64[1];
          v57 = v101;
          *(v13 + 112) = v100;
          *(v13 + 128) = v57;
          v56.i64[0] = *(v13 + 80);
          v60.i64[0] = *(v13 + 96);
          v57.i64[0] = *(v13 + 112);
          v55 = vzip1q_s32(v56, v57);
          v56.i32[2] = *(v13 + 88);
          v57.i32[2] = *(v13 + 120);
          v58.i32[0] = *(v13 + 104);
          v59 = vzip1q_s32(v55, v60);
          v60.i32[2] = v58.i32[0];
          v95 = v59;
          v96 = vzip2q_s32(v55, vdupq_lane_s32(*v60.f32, 1));
          v97 = vzip1q_s32(vzip2q_s32(v56, v57), v58);
          do
          {
            *&buf[v53] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v95 + v53))), v60, *&v95.i8[v53], 1), v57, *(&v95 + v53), 2);
            v53 += 16;
          }

          while (v53 != 48);
          v61.i32[3] = v100.i32[3];
          v62 = vcgeq_f32(v91, vabdq_f32(xmmword_1E30476A0, v100));
          v63 = vandq_s8(vandq_s8(vcgeq_f32(v91, vabdq_f32(xmmword_1E3047680, v99)), vcgeq_f32(v91, vabdq_f32(xmmword_1E3047670, *buf))), v62);
          v63.i32[3] = v63.i32[2];
          if ((vminvq_u32(v63) & 0x80000000) == 0)
          {
            if ((atomic_exchange(byte_1EE1A6AF9, 1u) & 1) == 0)
            {
              v64 = *re::ecsComponentsLogObjects(v52);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
              }
            }

            v63.i64[0] = *(v13 + 80);
            v61.i64[0] = *(v13 + 96);
            v62.i64[0] = *(v13 + 112);
            v63.i32[2] = *(v13 + 88);
            v61.i32[2] = *(v13 + 104);
            v62.i32[2] = *(v13 + 120);
            v65 = vmulq_f32(v63, v63);
            *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
            *v65.f32 = vrsqrte_f32(v66);
            *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
            v67 = vmulq_n_f32(v63, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
            v68 = vmulq_f32(v61, v67);
            v69 = vmulq_f32(v67, v67);
            v70 = vmulq_f32(v62, v67);
            *v69.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v69, v69, 8uLL)), vadd_f32(vzip1_s32(*v70.i8, *v69.i8), vzip2_s32(*v70.i8, *v69.i8)));
            v71 = vsubq_f32(v61, vmulq_n_f32(v67, (v68.f32[2] + vaddv_f32(*v68.f32)) / *&v69.i32[1]));
            v72 = vmulq_f32(v71, v71);
            *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
            *v72.f32 = vrsqrte_f32(v73);
            *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
            v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
            v75 = vsubq_f32(v62, vmulq_n_f32(v67, *v69.i32 / *&v69.i32[1]));
            v76 = vmulq_f32(v62, v74);
            v77 = vmulq_f32(v74, v74);
            *v76.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), vadd_f32(vzip1_s32(*v76.i8, *v77.i8), vzip2_s32(*v76.i8, *v77.i8)));
            v78 = vsubq_f32(v75, vmulq_n_f32(v74, vdiv_f32(*v76.i8, vdup_lane_s32(*v76.i8, 1)).f32[0]));
            v79 = vmulq_f32(v78, v78);
            *v77.i32 = v79.f32[2] + vaddv_f32(*v79.f32);
            *v79.f32 = vrsqrte_f32(v77.u32[0]);
            *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v77.u32[0], vmul_f32(*v79.f32, *v79.f32)));
            *(v13 + 80) = v67.i64[0];
            *(v13 + 88) = v67.i32[2];
            *(v13 + 96) = v74.i64[0];
            *(v13 + 104) = v74.i32[2];
            v80 = vmulq_n_f32(v78, vmul_f32(*v79.f32, vrsqrts_f32(v77.u32[0], vmul_f32(*v79.f32, *v79.f32))).f32[0]);
            *(v13 + 112) = v80.i64[0];
            *(v13 + 120) = v80.i32[2];
          }

          re::DynamicArray<re::DirectionalLightInfo>::add((v16 + 48), (v13 + 48));
          if (*(v13 + 182) == 1)
          {
            v81 = re::DynamicArray<re::DynamicLightShadowInfo>::add(v16 + 248, buf);
            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))(v81);
              }
            }
          }
        }
      }

      v89 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v93);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v89, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v93);
    }

    while (v93 != a5 || v94 != 0xFFFF || HIWORD(v94) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v46, a5, 0);
  v43 = *&v46[0];
  v44 = DWORD2(v46[0]);
  if (*&v46[0] != a5 || DWORD2(v46[0]) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v43);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        break;
      }

      v30 = 1;
LABEL_28:
      v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v43);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a3, a4, v40, v30);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v43);
      if (v43 == a5 && v44 == 0xFFFF && HIWORD(v44) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v43);
    v13 = *v12;
    v14 = *(*v12 + 16);
    v15 = *(*v12 + 48);
    v16 = *(*v12 + 52);
    v17 = tanf(*(*v12 + 32) * 0.5);
    memset(v46, 0, sizeof(v46));
    re::DynamicString::setCapacity(v46, 0);
    v50 = 0u;
    memset(v51, 0, 20);
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    *&v51[20] = 0x412000003C23D70ALL;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v56 = v14[39];
    re::DynamicString::format("%s_%llu", &v61, v14[37], *v56);
    re::DynamicString::operator=(v46, &v61);
    if (v61 && (BYTE8(v61) & 1) != 0)
    {
      (*(*v61 + 40))(v61, v62);
    }

    v19 = v15 / v16;
    v20 = *(v13 + 312);
    v21 = *(v13 + 320);
    *&v61 = *(v13 + 304);
    BYTE12(v61) = v21;
    DWORD2(v61) = v20;
    *&v22 = re::ColorGamut3F::as(&v61, *(a6 + 28), 1);
    DWORD2(v22) = v23;
    *v51 = v22;
    *&v51[16] = *(v13 + 28);
    *&v56[8] = *(v13 + 40);
    *&v51[20] = (v16 * 0.5) / v17;
    LOBYTE(v58) = 1;
    v24 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v25 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v59 = v24 != 0;
    HIBYTE(v58) = v25 != 0;
    if (v24)
    {
      *&v56[24] = *(v24 + 28);
      v26 = *&v51[20];
      v27 = *&v51[20] + *(v13 + 40);
      v28 = 1.0 / tanf(*(v13 + 32) * 0.5);
      v29 = v28 / v19;
      if (v27 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *&v56[24] = 0;
      v26 = *&v51[20];
      v27 = *&v51[20] + *(v13 + 40);
      v28 = 1.0 / tanf(*(v13 + 32) * 0.5);
      v29 = v28 / v19;
      if (v27 != INFINITY)
      {
LABEL_15:
        DWORD1(v32) = 0;
        *(&v32 + 1) = 0;
        *&v32 = v28 / v19;
        LODWORD(v33) = 0;
        *(&v33 + 1) = 0;
        *(&v33 + 1) = v28;
        v31 = (v26 * v27) / (v26 - v27);
        *&v34 = 0;
        *(&v34 + 2) = v27 / (v26 - v27);
        HIDWORD(v34) = -1.0;
LABEL_16:
        *&v35 = 0;
        *(&v35 + 1) = LODWORD(v31);
        v61 = v32;
        v62 = v33;
        v63 = v34;
        v64 = v35;
        re::Projection::makeReverseDepth(&v61, v45);
        v52 = v45[0];
        v53 = v45[1];
        v54 = v45[2];
        v55 = v45[3];
        re::DynamicString::operator=((v13 + 64), v46);
        v36 = v48;
        *(v13 + 96) = v47;
        *(v13 + 112) = v36;
        *(v13 + 172) = *&v51[12];
        v37 = *v51;
        *(v13 + 144) = v50;
        *(v13 + 160) = v37;
        *(v13 + 128) = v49;
        *(v13 + 268) = *&v56[12];
        v38 = *v56;
        *(v13 + 240) = v55;
        *(v13 + 256) = v38;
        v39 = v54;
        *(v13 + 208) = v53;
        *(v13 + 224) = v39;
        *(v13 + 192) = v52;
        if (*(v13 + 284))
        {
          if ((v56[28] & 1) == 0)
          {
            *(v13 + 284) = 0;
LABEL_22:
            *(v13 + 286) = v58;
            *(v13 + 288) = v59;
            NS::SharedPtr<MTL::Buffer>::operator=((v13 + 296), &v60);
            if (v60)
            {

              v60 = 0;
            }

            if (*&v46[0] && (BYTE8(v46[0]) & 1) != 0)
            {
              (*(**&v46[0] + 40))();
            }

            v30 = 3;
            goto LABEL_28;
          }
        }

        else
        {
          if ((v56[28] & 1) == 0)
          {
            goto LABEL_22;
          }

          *(v13 + 284) = 1;
        }

        *(v13 + 285) = v57;
        goto LABEL_22;
      }
    }

    v31 = -v26;
    v32 = LODWORD(v29);
    LODWORD(v33) = 0;
    *(&v33 + 1) = 0;
    *(&v33 + 1) = v28;
    v34 = xmmword_1E3085330;
    goto LABEL_16;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::FrustumLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&buf, a5, 0);
  v53 = buf.i64[0];
  v54 = buf.i32[2];
  if (buf.i64[0] != a5 || buf.u32[2] != 0xFFFFFFFFLL)
  {
    v51 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v53);
      v13 = *v12;
      v14 = *(*v12 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v14, 0, v55);
      v16 = 0;
      *&v17 = 0;
      DWORD2(v17) = *(v13 + 180);
      HIDWORD(v17) = 1.0;
      v18 = v55[0];
      v19 = v55[1];
      v20 = v55[2];
      v21 = v55[3];
      v56 = xmmword_1E3047670;
      v57 = xmmword_1E3047680;
      v58 = xmmword_1E30476A0;
      v59 = v17;
      do
      {
        *(&buf + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v56 + v16))), v19, *&v56.i8[v16], 1), v20, *(&v56 + v16), 2), v21, *(&v56 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v22 = 0;
      v23 = buf;
      v24 = v61;
      v25 = v62;
      v26 = v63;
      *(v13 + 96) = buf;
      *(v13 + 112) = v24;
      *(v13 + 128) = v25;
      *(v13 + 144) = v26;
      v27 = vzip1q_s32(v23, v25);
      v56 = vzip1q_s32(v27, v24);
      v57 = vzip2q_s32(v27, vdupq_lane_s32(*v24.f32, 1));
      v58 = vzip1q_s32(vzip2q_s32(v23, v25), vdupq_laneq_s32(v24, 2));
      do
      {
        *(&buf + v22) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v56 + v22))), v24, *&v56.i8[v22], 1), v25, *(&v56 + v22), 2);
        v22 += 16;
      }

      while (v22 != 48);
      v28.i32[3] = v62.i32[3];
      v29 = vcgeq_f32(v51, vabdq_f32(xmmword_1E30476A0, v62));
      v30 = vandq_s8(vandq_s8(vcgeq_f32(v51, vabdq_f32(xmmword_1E3047680, v61)), vcgeq_f32(v51, vabdq_f32(xmmword_1E3047670, buf))), v29);
      v30.i32[3] = v30.i32[2];
      if ((vminvq_u32(v30) & 0x80000000) == 0)
      {
        if ((atomic_exchange(re::ecs2::FrustumLightComponentStateImpl::processUpdatingComponent(re::ecs2::FrustumLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v31 = *re::ecsComponentsLogObjects(v15);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            buf.i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", &buf, 2u);
          }
        }

        v30.i64[0] = *(v13 + 96);
        v28.i64[0] = *(v13 + 112);
        v29.i64[0] = *(v13 + 128);
        v30.i32[2] = *(v13 + 104);
        v28.i32[2] = *(v13 + 120);
        v29.i32[2] = *(v13 + 136);
        v32 = vmulq_f32(v30, v30);
        *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
        *v32.f32 = vrsqrte_f32(v33);
        *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
        v34 = vmulq_n_f32(v30, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
        v35 = vmulq_f32(v28, v34);
        v36 = vmulq_f32(v34, v34);
        v37 = vmulq_f32(v29, v34);
        *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vadd_f32(vzip1_s32(*v37.i8, *v36.i8), vzip2_s32(*v37.i8, *v36.i8)));
        v38 = vsubq_f32(v28, vmulq_n_f32(v34, (v35.f32[2] + vaddv_f32(*v35.f32)) / *&v36.i32[1]));
        v39 = vmulq_f32(v38, v38);
        *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
        *v39.f32 = vrsqrte_f32(v40);
        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
        v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
        v42 = vsubq_f32(v29, vmulq_n_f32(v34, *v36.i32 / *&v36.i32[1]));
        v43 = vmulq_f32(v29, v41);
        v44 = vmulq_f32(v41, v41);
        *v43.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8)));
        v45 = vsubq_f32(v42, vmulq_n_f32(v41, vdiv_f32(*v43.i8, vdup_lane_s32(*v43.i8, 1)).f32[0]));
        v46 = vmulq_f32(v45, v45);
        *v44.i32 = v46.f32[2] + vaddv_f32(*v46.f32);
        *v46.f32 = vrsqrte_f32(v44.u32[0]);
        *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v46.f32, *v46.f32)));
        *(v13 + 96) = v34.i64[0];
        *(v13 + 104) = v34.i32[2];
        *(v13 + 112) = v41.i64[0];
        *(v13 + 120) = v41.i32[2];
        v47 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v46.f32, *v46.f32))).f32[0]);
        *(v13 + 128) = v47.i64[0];
        *(v13 + 136) = v47.i32[2];
      }

      v48 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v48)
      {
        re::DynamicArray<re::SpotLightInfo>::add(v48 + 128, (v13 + 64));
      }

      v49 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v53);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v49, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v53);
    }

    while (v53 != a5 || v54 != 0xFFFF || HIWORD(v54) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 320 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 320 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 320 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 320 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v9, a1, *a2, *(a2 + 8), *(a2 + 16));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 320 * HIDWORD(v10) + 32;
  }

  v6 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, v10, v9);
  v7 = *(a2 + 16);
  *(v6 + 8) = *a2;
  *(v6 + 24) = v7;
  result = re::LightInfoArrays::LightInfoArrays(v6 + 32, a3);
  ++*(a1 + 40);
  return result;
}

void *re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 0;
    v3 = 312 * *result;
    do
    {
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v1[v2 / 8 + 36]);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(&v1[v2 / 8 + 31]);
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v1[v2 / 8 + 26]);
      re::DynamicArray<re::SpotLightInfo>::deinit(&v1[v2 / 8 + 21]);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(&v1[v2 / 8 + 16]);
      re::DynamicArray<re::DirectionalLightInfo>::deinit(&v1[v2 / 8 + 11]);
      result = re::DynamicArray<unsigned long>::deinit(&v1[v2 / 8 + 6]);
      v2 += 312;
    }

    while (v3 != v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, *(v17 - 8) % *(a1 + 24));
                v19 = *(v17 - 8);
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 24) = v19;
                re::LightInfoArrays::LightInfoArrays(v18 + 32, v17);
              }

              v17 += 320;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(v26);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 320 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 320 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 320 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 320 * v4;
}

double re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 40;
          re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v6 + v4 + 280);
          re::DynamicArray<re::RectAreaLightInfo>::deinit(v8 + 240);
          re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v8 + 200);
          re::DynamicArray<re::SpotLightInfo>::deinit(v8 + 160);
          re::DynamicArray<re::RectAreaLightInfo>::deinit(v8 + 120);
          re::DynamicArray<re::DirectionalLightInfo>::deinit(v8 + 80);
          re::DynamicArray<unsigned long>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 320;
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

uint64_t re::LightInfoArrays::LightInfoArrays(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(result + 32);
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v5 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v6;
  v7 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  ++*(a2 + 72);
  ++*(result + 72);
  *(result + 120) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v9 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  v10 = *(result + 120);
  *(result + 120) = *(a2 + 120);
  *(a2 + 120) = v10;
  ++*(a2 + 112);
  ++*(result + 112);
  *(result + 160) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 128) = 0;
  *(result + 152) = 0;
  v11 = *(a2 + 136);
  *(result + 128) = *(a2 + 128);
  *(result + 136) = v11;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v12 = *(result + 144);
  *(result + 144) = *(a2 + 144);
  *(a2 + 144) = v12;
  v13 = *(result + 160);
  *(result + 160) = *(a2 + 160);
  *(a2 + 160) = v13;
  ++*(a2 + 152);
  ++*(result + 152);
  *(result + 200) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 168) = 0;
  *(result + 192) = 0;
  v14 = *(a2 + 176);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v15 = *(result + 184);
  *(result + 184) = *(a2 + 184);
  *(a2 + 184) = v15;
  v16 = *(result + 200);
  *(result + 200) = *(a2 + 200);
  *(a2 + 200) = v16;
  ++*(a2 + 192);
  ++*(result + 192);
  *(result + 240) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 208) = 0;
  *(result + 232) = 0;
  v17 = *(a2 + 216);
  *(result + 208) = *(a2 + 208);
  *(result + 216) = v17;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v18 = *(result + 224);
  *(result + 224) = *(a2 + 224);
  *(a2 + 224) = v18;
  v19 = *(result + 240);
  *(result + 240) = *(a2 + 240);
  *(a2 + 240) = v19;
  ++*(a2 + 232);
  ++*(result + 232);
  *(result + 280) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 248) = 0;
  *(result + 272) = 0;
  v20 = *(a2 + 256);
  *(result + 248) = *(a2 + 248);
  *(result + 256) = v20;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  v21 = *(result + 264);
  *(result + 264) = *(a2 + 264);
  *(a2 + 264) = v21;
  v22 = *(result + 280);
  *(result + 280) = *(a2 + 280);
  *(a2 + 280) = v22;
  ++*(a2 + 272);
  ++*(result + 272);
  return result;
}

uint64_t re::DynamicArray<re::AmbientLightInfo>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void *re::DynamicArray<re::DirectionalLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
        v10 = v8 + 160 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          *(v11 + 124) = *(v8 + 124);
          LODWORD(v13) = *(v8 + 132);
          *(v11 + 132) = v13;
          if (v13 == 1)
          {
            *(v11 + 133) = *(v8 + 133);
          }

          v20 = *(v8 + 134);
          *(v11 + 75) = *(v8 + 150);
          *(v11 + 134) = v20;
          re::DynamicString::deinit(v8);
          v8 += 160;
          v11 += 20;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = v8 + 144 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          *(v11 + 124) = *(v8 + 124);
          LODWORD(v13) = *(v8 + 132);
          *(v11 + 132) = v13;
          if (v13 == 1)
          {
            *(v11 + 133) = *(v8 + 133);
          }

          v20 = *(v8 + 134);
          *(v11 + 137) = *(v8 + 137);
          *(v11 + 134) = v20;
          re::DynamicString::deinit(v8);
          v8 += 144;
          v11 += 18;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::SpotLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SpotLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
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
        v10 = v8 + 240 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v21 = *(v8 + 176);
          v20 = *(v8 + 192);
          v22 = *(v8 + 160);
          *(v11 + 204) = *(v8 + 204);
          *(v11 + 11) = v21;
          *(v11 + 12) = v20;
          *(v11 + 10) = v22;
          v23 = *(v8 + 144);
          *(v11 + 8) = *(v8 + 128);
          *(v11 + 9) = v23;
          LODWORD(v13) = *(v8 + 220);
          *(v11 + 220) = v13;
          if (v13 == 1)
          {
            *(v11 + 221) = *(v8 + 221);
          }

          v24 = *(v8 + 222);
          *(v11 + 224) = *(v8 + 224);
          *(v11 + 111) = v24;
          v11[29] = *(v8 + 232);
          *(v8 + 232) = 0;
          re::DynamicString::deinit(v8);
          v8 += 240;
          v11 += 30;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::PointLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PointLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
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
        v10 = v8 + 224 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v21 = *(v8 + 176);
          v20 = *(v8 + 192);
          v22 = *(v8 + 160);
          *(v11 + 52) = *(v8 + 208);
          *(v11 + 11) = v21;
          *(v11 + 12) = v20;
          *(v11 + 10) = v22;
          v23 = *(v8 + 144);
          *(v11 + 8) = *(v8 + 128);
          *(v11 + 9) = v23;
          LODWORD(v13) = *(v8 + 212);
          *(v11 + 212) = v13;
          if (v13 == 1)
          {
            *(v11 + 213) = *(v8 + 213);
          }

          *(v11 + 107) = *(v8 + 214);
          re::DynamicString::deinit(v8);
          v8 += 224;
          v11 += 28;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::RectAreaLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RectAreaLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = v8 + 144 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v20 = *(v8 + 128);
          *(v11 + 136) = *(v8 + 136);
          v11[16] = v20;
          re::DynamicString::deinit(v8);
          v8 += 144;
          v11 += 18;
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

void *re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
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
        v10 = v8 + 224 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          v16 = *(v8 + 112);
          v18 = *(v8 + 64);
          v17 = *(v8 + 80);
          *(v11 + 6) = *(v8 + 96);
          *(v11 + 7) = v16;
          *(v11 + 4) = v18;
          *(v11 + 5) = v17;
          v19 = *(v8 + 128);
          v20 = *(v8 + 144);
          v21 = *(v8 + 160);
          *(v11 + 172) = *(v8 + 172);
          *(v11 + 9) = v20;
          *(v11 + 10) = v21;
          *(v11 + 8) = v19;
          v22 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v22;
          LODWORD(v13) = *(v8 + 188);
          *(v11 + 188) = v13;
          if (v13 == 1)
          {
            *(v11 + 189) = *(v8 + 189);
          }

          v23 = *(v8 + 192);
          *(v11 + 52) = *(v8 + 208);
          *(v11 + 12) = v23;
          re::DynamicString::deinit(v8);
          v8 += 224;
          v11 += 28;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicLightShadowInfo>::deinit(uint64_t a1)
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
        v5 = 224 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 224);
          v5 -= 224;
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

uint64_t re::DynamicArray<re::RectAreaLightInfo>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 144);
          v5 -= 144;
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

uint64_t re::DynamicArray<re::SpotLightInfo>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        do
        {
          v6 = *(v3 + 29);
          if (v6)
          {

            *(v3 + 29) = 0;
          }

          re::DynamicString::deinit(v3);
          v3 = (v3 + 240);
          v5 -= 240;
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

uint64_t re::DynamicArray<re::DirectionalLightInfo>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 160);
          v5 -= 160;
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

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, void *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
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
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31)) % *(a1 + 24));
                *(v20 + 8) = *v18;
                *(v20 + 16) = *(v18 + 8);
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
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
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

unint64_t re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0xF)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE298;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE298;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v31, a5, 0);
  v26 = *&v31[0];
  v27 = DWORD2(v31[0]);
  if (*&v31[0] != a5 || DWORD2(v31[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v26);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v12 + 16)) == 1)
      {
        v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v26);
        v14 = *v13;
        v15 = *(*v13 + 16);
        memset(v31, 0, sizeof(v31));
        re::DynamicString::setCapacity(v31, 0);
        v35 = 0u;
        memset(v36, 0, 20);
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        *&v36[20] = 0x412000003C23D70ALL;
        v37 = 0;
        v38 = 0;
        re::DynamicString::format("%s_%llu", &v28, *(v15 + 296), *(v15 + 312));
        re::DynamicString::operator=(v31, &v28);
        if (v28 && (v29 & 1) != 0)
        {
          (*(*v28 + 40))();
        }

        v16 = *(v14 + 200);
        v17 = *(v14 + 208);
        v28 = *(v14 + 192);
        v30 = v17;
        v29 = v16;
        *&v18 = re::ColorGamut3F::as(&v28, *(a6 + 28), 1);
        DWORD2(v18) = v19;
        *v36 = v18;
        *&v36[16] = *(v14 + 28);
        v37 = *(v14 + 32);
        v38 = *(v14 + 40);
        re::DynamicString::operator=((v14 + 48), v31);
        v20 = *&v36[12];
        v21 = v35;
        *(v14 + 112) = v34;
        *(v14 + 128) = v21;
        *(v14 + 144) = *v36;
        *(v14 + 156) = v20;
        v22 = v33;
        *(v14 + 80) = v32;
        *(v14 + 96) = v22;
        *(v14 + 176) = v37;
        *(v14 + 184) = v38;
        if (*&v31[0] && (BYTE8(v31[0]) & 1) != 0)
        {
          (*(**&v31[0] + 40))();
        }

        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a3, a4, v24, v23);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
    }

    while (v26 != a5 || v27 != 0xFFFF || HIWORD(v27) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a5, 0);
  v21 = a4;
  v22 = v24[0].i64[0];
  v23 = v24[0].i32[2];
  if (v24[0].i64[0] != a5 || v24[0].u32[2] != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v22);
      v14 = *v13;
      v15 = *(*v13 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v15, 0, v24);
      v16 = v24[1];
      v14[5] = v24[0];
      v14[6] = v16;
      v17 = v24[3];
      v14[7] = v24[2];
      v14[8] = v17;
      v18 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v15, v11);
      if (v18)
      {
        re::DynamicArray<re::RectAreaLightInfo>::add(v18 + 208, &v14[3]);
      }

      v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v21, v19, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v11, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v7 + 16), a3);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = *a2 - 8;
  if (!*a2)
  {
    v5 = 0;
  }

  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = *(a1 + 24);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 8) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_10:
    v13 = re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::addAsMove(a1, v9, v7, a2, a2);
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 24 * v13;
    return v12 + 16;
  }

  v11 = *(a1 + 16);
  while (*(v11 + 24 * v10 + 16) != v4)
  {
    LODWORD(v10) = *(v11 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }

  v12 = v11 + 24 * v10;
  return v12 + 16;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v25);
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
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(unsigned __int16 *a1)
{
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 8 * a1[4];
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v27, a5, 0);
  v11 = v27;
  v12 = v28;
  v13 = v28;
  v27 = a4;
  v28 = v11;
  v29 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v28);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v15 + 16)) == 1)
      {
        v16 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v28);
        v17 = *v16;
        v18 = *(*v16 + 72);
        v19 = *(*v16 + 80);
        v30 = *(*v16 + 64);
        v32 = v19;
        v31 = v18;
        *&v20 = re::ColorGamut3F::as(&v30, *(a6 + 28), 1);
        DWORD2(v20) = v21;
        v22 = *(v17 + 28);
        *(v17 + 32) = v20;
        *(v17 + 48) = v22;
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = v27;
      v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v28);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a3, v24, v25, v23);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v28);
    }

    while (v28 != a5 || v29 != 0xFFFF || HIWORD(v29) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v21, a5, 0);
  v11 = v21;
  v12 = v22;
  v13 = v22;
  v21 = a4;
  v22 = v11;
  v23 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v22);
      v16 = *v15;
      v17 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, *(*v15 + 16), v10);
      if (v17)
      {
        re::DynamicArray<re::AmbientLightInfo>::add(v17 + 8, v16 + 32);
      }

      v18 = v21;
      v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v84[2] = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v70, a5, 0);
  v58 = v70;
  v59 = DWORD2(v70);
  if (v70 != a5 || DWORD2(v70) != 0xFFFFFFFFLL)
  {
    *&v11 = 1.0 / tanf(0.7854);
    v55 = v11;
    LODWORD(v12) = 0;
    HIDWORD(v12) = v11;
    v54 = v12;
    while (1)
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v58);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v13 + 16)) == 1)
      {
        break;
      }

      v34 = 1;
LABEL_58:
      v52 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v58);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a3, a4, v52, v34);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v58);
      if (v58 == a5 && v59 == 0xFFFF && HIWORD(v59) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v14 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v58);
    v15 = *v14;
    v16 = *(*v14 + 16);
    v17 = *(v16 + 296);
    v18 = *(v15 + 872);
    v19 = *(v15 + 880);
    *&v70 = *(v15 + 864);
    BYTE12(v70) = v19;
    DWORD2(v70) = v18;
    v20 = re::ColorGamut3F::as(&v70, *(a6 + 28), 1);
    *&v22 = v20;
    DWORD2(v22) = v21;
    v57 = v22;
    v23 = *(v15 + 32);
    v24 = *(v15 + 28);
    if (v24 <= 3)
    {
      if (v24 >= 2)
      {
        if ((v24 - 2) >= 2)
        {
          goto LABEL_62;
        }

        v70 = 0u;
        v71 = 0u;
        re::DynamicString::setCapacity(&v70, 0);
        v75 = 0u;
        memset(v76, 0, 20);
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        *&v76[20] = 0x412000003C23D70ALL;
        *&v80[22] = 0;
        memset(&v77[4], 0, 32);
        v78 = 0u;
        v79 = 0u;
        memset(v80, 0, 21);
        re::DynamicString::operator=(&v70, &v64);
        *v76 = v57;
        *&v76[16] = v23;
        v25 = *(v15 + 40);
        v26 = -0.01;
        v27 = xmmword_1E3085330;
        if (v25 != INFINITY)
        {
          v26 = (v25 * 0.01) / (0.01 - v25);
          *&v27 = 0;
          *(&v27 + 2) = v25 / (0.01 - v25);
          HIDWORD(v27) = -1.0;
        }

        *&v28 = 0;
        *(&v28 + 1) = LODWORD(v26);
        v66 = v55;
        v67 = v54;
        v68 = v27;
        v69 = v28;
        re::Projection::makeReverseDepth(&v66, &v60);
        *&v77[4] = v60;
        *&v77[20] = v61;
        v78 = v62;
        v79 = v63;
        *v80 = *(v16 + 312);
        v29 = *(v15 + 40);
        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        *&v80[8] = v29;
        *&v80[16] = *(v15 + 60);
        v80[22] = 0;
        v80[23] = *(v15 + 28) == 2;
        re::DynamicString::operator=((v15 + 464), &v70);
        v30 = v75;
        *(v15 + 528) = v74;
        *(v15 + 544) = v30;
        *(v15 + 560) = *v76;
        *(v15 + 572) = *&v76[12];
        v31 = v73;
        *(v15 + 496) = v72;
        *(v15 + 512) = v31;
        v32 = v79;
        *(v15 + 624) = v78;
        *(v15 + 640) = v32;
        *(v15 + 656) = *v80;
        *(v15 + 672) = *&v80[16];
        v33 = *&v77[20];
        *(v15 + 592) = *&v77[4];
        *(v15 + 608) = v33;
        if (*(v15 + 676))
        {
          if ((v80[20] & 1) == 0)
          {
            *(v15 + 676) = 0;
LABEL_38:
            *(v15 + 678) = *&v80[22];
            goto LABEL_51;
          }
        }

        else
        {
          if ((v80[20] & 1) == 0)
          {
            goto LABEL_38;
          }

          *(v15 + 676) = 1;
        }

        *(v15 + 677) = v80[21];
        goto LABEL_38;
      }

      v70 = 0u;
      v71 = 0u;
      re::DynamicString::setCapacity(&v70, 0);
      v75 = 0u;
      memset(v76, 0, 20);
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      *&v76[20] = 0x412000003C23D70ALL;
      *v77 = 0;
      v77[8] = 0;
      *&v77[10] = 16842752;
      *&v77[16] = 1065353216;
      *&v77[20] = 0;
      re::DynamicString::operator=(&v70, &v64);
      *v76 = v57;
      *&v76[16] = v23;
      v37 = *(v15 + 40);
      if (v37 < 0.0)
      {
        v37 = 0.0;
      }

      *v77 = v37;
      *&v77[4] = *(v15 + 60);
      v77[10] = *(v15 + 28) == 0;
      *&v77[20] = *(v16 + 312);
      if (v37 == 0.0)
      {
        v77[10] = 0;
      }

      re::DynamicString::operator=((v15 + 64), &v70);
      v38 = v75;
      *(v15 + 128) = v74;
      *(v15 + 144) = v38;
      *(v15 + 160) = *v76;
      *(v15 + 172) = *&v76[12];
      v39 = v73;
      *(v15 + 96) = v72;
      *(v15 + 112) = v39;
      *(v15 + 188) = *v77;
      if (*(v15 + 196))
      {
        if ((v77[8] & 1) == 0)
        {
          *(v15 + 196) = 0;
LABEL_34:
          *(v15 + 198) = *&v77[10];
          *(v15 + 214) = *&v77[26];
          goto LABEL_51;
        }
      }

      else
      {
        if ((v77[8] & 1) == 0)
        {
          goto LABEL_34;
        }

        *(v15 + 196) = 1;
      }

      *(v15 + 197) = v77[9];
      goto LABEL_34;
    }

    if ((v24 - 4) >= 2)
    {
      if (v24 == 6)
      {
        *(v15 + 832) = v22;
        *(v15 + 848) = v23 * 683.0;
LABEL_54:
        if (v64 && (v65 & 1) != 0)
        {
          (*(*v64 + 40))();
        }

        v34 = 3;
        goto LABEL_58;
      }

      if (v24 != 7)
      {
LABEL_62:
        re::internal::assertLog(5, v21, "assertion failure: '%s' (%s:line %i) Invalid light type %d.", "!Unreachable code", "processDirtyComponent", 655, *(v15 + 28));
        _os_crash();
        __break(1u);
      }

      v70 = 0u;
      v71 = 0u;
      re::DynamicString::setCapacity(&v70, 0);
      v75 = 0u;
      memset(v76, 0, 20);
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      *&v76[20] = 0x412000003C23D70ALL;
      *&v77[4] = 0;
      v77[12] = 0;
      re::DynamicString::operator=(&v70, &v64);
      *v76 = v57;
      *&v76[16] = v23;
      *&v77[4] = *(v15 + 48);
      v77[12] = *(v15 + 56);
      re::DynamicString::operator=((v15 + 688), &v70);
      v35 = v75;
      *(v15 + 752) = v74;
      *(v15 + 768) = v35;
      *(v15 + 784) = *v76;
      *(v15 + 796) = *&v76[12];
      v36 = v73;
      *(v15 + 720) = v72;
      *(v15 + 736) = v36;
      *(v15 + 816) = *&v77[4];
      *(v15 + 824) = v77[12];
LABEL_51:
      if (v70 && (BYTE8(v70) & 1) != 0)
      {
        (*(*v70 + 40))();
      }

      goto LABEL_54;
    }

    v70 = 0u;
    v71 = 0u;
    re::DynamicString::setCapacity(&v70, 0);
    v75 = 0u;
    memset(v76, 0, 20);
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    *&v76[20] = 0x412000003C23D70ALL;
    v82 = 0;
    v83 = 0;
    v84[0] = 0;
    memset(&v77[4], 0, 32);
    v78 = 0u;
    v79 = 0u;
    memset(v80, 0, sizeof(v80));
    re::DynamicString::operator=(&v70, &v64);
    *v76 = v57;
    *&v76[16] = v23;
    v40 = *(v15 + 40);
    v41 = 1.0 / tanf(((*(v15 + 36) * 3.1416) / 180.0) * 0.5);
    DWORD1(v42) = 0;
    *(&v42 + 1) = 0;
    *&v42 = v41;
    LODWORD(v43) = 0;
    *(&v43 + 1) = 0;
    *(&v43 + 1) = v41;
    if (v40 == INFINITY)
    {
      v44 = -0.01;
      v45 = xmmword_1E3085330;
    }

    else
    {
      v44 = (v40 * 0.01) / (0.01 - v40);
      *&v45 = 0;
      *(&v45 + 2) = v40 / (0.01 - v40);
      HIDWORD(v45) = -1.0;
    }

    *&v46 = 0;
    *(&v46 + 1) = LODWORD(v44);
    v66 = v42;
    v67 = v43;
    v68 = v45;
    v69 = v46;
    re::Projection::makeReverseDepth(&v66, &v60);
    *&v77[4] = v60;
    *&v77[20] = v61;
    v78 = v62;
    v79 = v63;
    *v80 = *(v16 + 312);
    v47 = *(v15 + 40);
    if (v47 < 0.0)
    {
      v47 = 0.0;
    }

    *&v80[8] = v47;
    *&v80[24] = *(v15 + 60);
    HIBYTE(v82) = 0;
    v83 = *(v15 + 28) == 4;
    re::DynamicString::operator=((v15 + 224), &v70);
    v48 = v75;
    *(v15 + 288) = v74;
    *(v15 + 304) = v48;
    *(v15 + 320) = *v76;
    *(v15 + 332) = *&v76[12];
    v49 = v73;
    *(v15 + 256) = v72;
    *(v15 + 272) = v49;
    v50 = v79;
    *(v15 + 384) = v78;
    *(v15 + 400) = v50;
    *(v15 + 416) = *v80;
    *(v15 + 428) = *&v80[12];
    v51 = *&v77[20];
    *(v15 + 352) = *&v77[4];
    *(v15 + 368) = v51;
    if (*(v15 + 444))
    {
      if ((v80[28] & 1) == 0)
      {
        *(v15 + 444) = 0;
        goto LABEL_49;
      }
    }

    else
    {
      if ((v80[28] & 1) == 0)
      {
        goto LABEL_49;
      }

      *(v15 + 444) = 1;
    }

    *(v15 + 445) = v81;
LABEL_49:
    *(v15 + 446) = v82;
    *(v15 + 448) = v83;
    NS::SharedPtr<MTL::Buffer>::operator=((v15 + 456), v84);
    if (v84[0])
    {

      v84[0] = 0;
    }

    goto LABEL_51;
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v36 = a4;
  v37 = v43;
  v38 = v44;
  if (v43 != a5 || v44 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v37);
      v14 = *v13;
      v15 = *(*v13 + 16);
      v16 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v15, v11);
      if (v16)
      {
        v17 = v16;
        v19 = re::TransformService::worldMatrix(*(a1 + 192), v15, 0, &v39);
        v20 = *(v14 + 28);
        if (v20 > 3)
        {
          if ((v20 - 4) >= 2)
          {
            if (v20 == 6)
            {
              re::DynamicArray<re::AmbientLightInfo>::add(v17 + 8, v14 + 832);
            }

            else
            {
              if (v20 != 7)
              {
LABEL_27:
                re::internal::assertLog(5, v18, v19, "assertion failure: '%s' (%s:line %i) Invalid light type %d.", "!Unreachable code", "processUpdatingComponent", 555, *(v14 + 28));
                _os_crash();
                __break(1u);
              }

              v25 = v40;
              *(v14 + 720) = v39;
              *(v14 + 736) = v25;
              v26 = v42;
              *(v14 + 752) = v41;
              *(v14 + 768) = v26;
              re::DynamicArray<re::RectAreaLightInfo>::add(v17 + 208, (v14 + 688));
            }

            goto LABEL_23;
          }

          v30 = v40;
          *(v14 + 256) = v39;
          *(v14 + 272) = v30;
          v31 = v42;
          *(v14 + 288) = v41;
          *(v14 + 304) = v31;
          re::DynamicArray<re::SpotLightInfo>::add(v17 + 128, (v14 + 224));
          if (*(v14 + 448) == 1)
          {
            v32 = *(v17 + 248);
            v23 = v17 + 248;
            goto LABEL_19;
          }
        }

        else
        {
          if (v20 >= 2)
          {
            if ((v20 - 2) >= 2)
            {
              goto LABEL_27;
            }

            v21 = v40;
            *(v14 + 496) = v39;
            *(v14 + 512) = v21;
            v22 = v42;
            *(v14 + 528) = v41;
            *(v14 + 544) = v22;
            re::DynamicArray<re::PointLightInfo>::add(v17 + 168, (v14 + 464));
            if (*(v14 + 679) != 1)
            {
              goto LABEL_23;
            }

            v24 = *(v17 + 248);
            v23 = v17 + 248;
            goto LABEL_19;
          }

          v27 = v40;
          *(v14 + 96) = v39;
          *(v14 + 112) = v27;
          v28 = v42;
          *(v14 + 128) = v41;
          *(v14 + 144) = v28;
          re::DynamicArray<re::DirectionalLightInfo>::add((v17 + 48), (v14 + 64));
          if (*(v14 + 198) == 1)
          {
            v29 = *(v17 + 248);
            v23 = v17 + 248;
LABEL_19:
            v33 = re::DynamicArray<re::DynamicLightShadowInfo>::add(v23, &v43);
            if (v43 && (v44 & 1) != 0)
            {
              (*(*v43 + 40))(v33);
            }
          }
        }
      }

LABEL_23:
      v34 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v37);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v36, v34, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v37);
    }

    while (v37 != a5 || v38 != 0xFFFF || HIWORD(v38) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

void *re::DynamicArray<re::DirectionalLightInfo>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::DirectionalLightInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(a1, 0, *a2, v4);
      re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(a1, *(a2 + 8));
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
    }
  }

  else if (v4)
  {
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(a1, v4);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

char *re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(char *result, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 1);
  if (v7 + 1 <= a2)
  {
    v16 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v17) = 136315906;
    *(&v17 + 4) = "copy";
    WORD6(v17) = 1024;
    HIWORD(v17) = 678;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 682, v7, a2, v4, v16, v17);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_21;
  }

  if (v7 >= v8)
  {
    if (result[16])
    {
      v14 = result + 24;
    }

    else
    {
      v14 = *(result + 4);
    }

    result = memmove(&v14[8 * a2], __src, 8 * a4);
  }

  else
  {
    re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::growCapacity(result, a2 + a4);
    v10 = v6[1];
    v11 = v10 - a2;
    v12 = *(v6 + 4);
    if (v12)
    {
      v13 = (v6 + 3);
    }

    else
    {
      v13 = v6[4];
    }

    if (v10 != a2)
    {
      memmove(&v13[8 * a2], __src, 8 * v11);
      v12 = *(v6 + 4);
    }

    if (v12)
    {
      v15 = (v6 + 3);
    }

    else
    {
      v15 = v6[4];
    }

    result = memcpy(&v15[8 * v6[1]], &__src[8 * v11], 8 * (v4 - v11));
    v6[1] = v8;
  }

  *(v6 + 4) += 2;
  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEE508;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE560;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE5B8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE610;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEE508;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEE560;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEE5B8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEE610;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE508;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE508;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE560;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE560;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE5B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE5B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE610;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE610;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEE668;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE6C0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE718;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE770;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CEE668;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEE6C0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEE718;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEE770;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE668;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE668;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE6C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE6C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE718;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE718;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE770;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE770;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEE7C8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE820;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE878;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE8D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CEE7C8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEE820;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEE878;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEE8D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE7C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE7C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE820;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE878;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE878;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE8D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE8D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEE928;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE980;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE9D8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEEA30;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CEE928;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEE980;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEE9D8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEEA30;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE928;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE928;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE980;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE980;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE9D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE9D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEA30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEA30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEEA88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEEAE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEEB38;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEEB90;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEEA88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEEAE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEEB38;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEEB90;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEA88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEA88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEAE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEAE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEB38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEB38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEB90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEB90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEEBE8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEEC40;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEEC98;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEECF0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEEBE8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEEC40;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEEC98;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEECF0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RectAreaLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEBE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEBE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEC40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEC40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEC98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEC98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEECF0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEECF0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEED48;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEEDA0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEEDF8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEEE50;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CEED48;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEEDA0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEEDF8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEEE50;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEED48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEED48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEDA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEDA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEDF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEDF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEE50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEE50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a2 - 8;
  if (!*a2)
  {
    v5 = 0;
  }

  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = (v6 ^ (v6 >> 31)) % v2;
  v8 = *(a1 + 8);
  v9 = *(v8 + 4 * v7);
  if (v9 == 0x7FFFFFFF)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (*(v11 + 24 * v9 + 16) != v4)
  {
    while (1)
    {
      v12 = v9;
      v13 = *(v11 + 24 * v9 + 8);
      v9 = v13 & 0x7FFFFFFF;
      if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v11 + 24 * v9 + 16) == v4)
      {
        *(v11 + 24 * v12 + 8) = *(v11 + 24 * v12 + 8) & 0x80000000 | *(v11 + 24 * v9 + 8) & 0x7FFFFFFF;
        goto LABEL_12;
      }
    }
  }

  *(v8 + 4 * v7) = *(v11 + 24 * v9 + 8) & 0x7FFFFFFF;
LABEL_12:
  v14 = *(a1 + 16);
  v15 = v14 + 24 * v9;
  v16 = *(v15 + 8);
  if (v16 < 0)
  {
    *(v15 + 8) = v16 & 0x7FFFFFFF;
    objc_destroyWeak((v15 + 16));
    *(v15 + 16) = 0;
    v14 = *(a1 + 16);
  }

  v17 = *(a1 + 40);
  *(v14 + 24 * v9 + 8) = *(v14 + 24 * v9 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v9;
  *(a1 + 40) = v17 + 1;
  return 1;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEEA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEEA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEF00;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEF00;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEF58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEF58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEFB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEFB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF008;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF060;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF060;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::handleSceneEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 8, *(v4 + 24));
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = (a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    objc_initWeak(&location, v7);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::remove(v6, &location);
    objc_destroyWeak(&location);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF0B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>,REEventHandlerResult (re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF0B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 72 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 72 * v13) = *(v5 + 72 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if ((*v6 & 0x80000000) != 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v6 + 2);
      v5 = *(a1 + 16);
      v8 = *(v5 + 72 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 72 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, _WORD *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, &re::kInvalidLightGroupId, 0, &v5);
  if (HIDWORD(v6) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v6, v5);
    *(result + 8) = 0;
    *(result + 16) = *a2;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (*(result + 316))
  {
LABEL_2:

    return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v3 + 288, a2);
  }

  v4 = *(result + 16);
  v5 = result + 8 * v4;
  v6 = *a2;
  if (!v4)
  {
LABEL_12:
    *(v5 + 32) = v6;
    *(result + 16) = v4 + 1;
    ++*(result + 24);
    return result;
  }

  v7 = 8 * v4;
  v8 = (result + 32);
  v9 = (result + 32);
  while (*v9 != v6)
  {
    ++v9;
    v7 -= 8;
    if (!v7)
    {
      v9 = (v5 + 32);
      break;
    }
  }

  if (v9 == &v8[v4])
  {
    if (v4 <= 0x1F)
    {
      goto LABEL_12;
    }

    v10 = *result;
    if (!*result)
    {
    }

    if (!*(v3 + 288))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v3 + 288, v10, 64);
    }

    v11 = *(v3 + 16);
    if (!v11)
    {
LABEL_29:
      *(v3 + 16) = 0;
      ++*(v3 + 24);
      goto LABEL_2;
    }

    v12 = v3 + 8 * v11 + 32;
    while (1)
    {
      v13 = 0xBF58476D1CE4E5B9 * (*v8 ^ (*v8 >> 30));
      v14 = (0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31);
      v15 = *(v3 + 312);
      if (v15)
      {
        v16 = v14 % v15;
        v17 = *(*(v3 + 296) + 4 * (v14 % v15));
        if (v17 != 0x7FFFFFFF)
        {
          v18 = *(v3 + 304);
          while (*(v18 + 16 * v17 + 8) != *v8)
          {
            v17 = *(v18 + 16 * v17) & 0x7FFFFFFF;
            if (v17 == 0x7FFFFFFF)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

LABEL_27:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(v3 + 288, v16, v14, v8, v8);
      ++*(v3 + 328);
LABEL_28:
      if (++v8 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  return result;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(uint64_t a1)
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
      v4 = 0;
      v5 = 16 * v3;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
        }

        v4 += 16;
      }

      while (v5 != v4);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(uint64_t a1)
{
  if (*(a1 + 288))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit((a1 + 288));
  }

  *(a1 + 16) = 0;
  ++*(a1 + 24);
  *a1 = 0;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit((a1 + 288));
  *(a1 + 16) = 0;
  ++*(a1 + 24);
  return a1;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::checkRenderOptionChanges(uint64_t result, void *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v7 = result;
  v8 = a2[39];
  v28 = v8;
  if (*(a4 + 316))
  {
    result = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(a4 + 288, &v28);
    if (result)
    {
      return result;
    }

    v8 = a2[39];
    goto LABEL_10;
  }

  v9 = *(a4 + 16);
  v10 = a4 + 8 * v9 + 32;
  if (v9)
  {
    v11 = 8 * v9;
    v12 = (a4 + 32);
    while (*v12 != v8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = v10;
  }

  if (v12 == v10)
  {
LABEL_10:
    v28 = v8;
    re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a4, &v28);
    result = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v13 = result;
      v14 = *re::ecs2::RenderOptions::forEntity(a3, a2);
      v15 = 24;
      while (1)
      {
        result = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v15), v13);
        if (result != -1 && (v16 & 0xFFFFFF00000000) != 0)
        {
          break;
        }

        v15 += 8;
        if (v15 == 56)
        {
          result = -1;
          break;
        }
      }

      if ((*(v7 + 32) != result) != v14)
      {
        v18 = 24;
        v19 = 0xFFFFFFFFLL;
        do
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v18), v13);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v23 = v20;
            v19 = v21;
            goto LABEL_28;
          }

          v18 += 8;
        }

        while (v18 != 56);
        v23 = -1;
LABEL_28:
        result = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(v7, v23, v19, 0);
      }
    }

    v24 = a2[43];
    if (v24)
    {
      v25 = a2[45];
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        result = re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::checkRenderOptionChanges(v7, v27, a3, a4);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}