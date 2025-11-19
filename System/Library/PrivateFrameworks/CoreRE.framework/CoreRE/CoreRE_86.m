void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        v10 = *(v9 + 24);
        v11 = *(v9 + 16);
        *(v8 + 32) = 0u;
        v8 += 32;
        *(v8 - 16) = v11;
        *(v8 - 8) = v10;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_1, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + (v6 << 7) + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 7)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 7) + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 7)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = *a4;
  v8 = v7 + 16;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 60) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 24), a4 + 1);
  *(v7 + 72) = 0u;
  v7 += 72;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v7, a4 + 7);
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 7));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 7));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 7);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 120) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 7);
}

void re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 120) % *(v4 + 6));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 8) = v9[1];
        *(v8 + 16) = v9[2];
        *(v8 + 56) = 0;
        *(v8 + 40) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 60) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 24), v9 + 3);
        *(v8 + 72) = 0u;
        v8 += 72;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, v9 + 9);
        v2 = *(a2 + 32);
      }

      v5 += 128;
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 7), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_1, 4 * v10);
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

void *re::ecs2::allocInfo_ShadowProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_152, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_152))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F840, "ShadowProxyComponent");
    __cxa_guard_release(&_MergedGlobals_152);
  }

  return &unk_1EE19F840;
}

void re::ecs2::initInfo_ShadowProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x232AB817E529F1ELL;
  v10[1] = "ShadowProxyComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE19F838, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19F838);
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
      qword_1EE19F830 = v8;
      __cxa_guard_release(&qword_1EE19F838);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19F830;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::ecs2::ShadowProxyComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD41F0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 32) = result;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ShadowProxyComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD41F0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 32) = result;
  return result;
}

void re::ecs2::ShadowProxyComponent::~ShadowProxyComponent(re::ecs2::ShadowProxyComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

uint64_t re::internal::buildCollisionShapeAssetData(re::internal *this, re::CollisionShape *a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0x7FFFFFFFLL;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0x7FFFFFFFLL;
  v3 = re::globalAllocators(this);
  v4 = re::convertToSerializable(this, v9, v6, v3[2]);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v6);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
  return v4;
}

re **re::internal::buildCollisionShape(re *inited, __n128 a2)
{
  a2.n128_u64[0] = *(inited + 12);
  a2.n128_u32[2] = *(inited + 5);
  v9 = a2;
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited);
  v4 = (*(*v2 + 32))(v2, v3[2], &v9);
  v6 = re::internal::buildCollisionShapeAssetData(v4, v5);
  v7 = re::globalAllocators(v6);
  result = (*(*v7[2] + 32))(v7[2], 16, 8);
  *result = v6;
  result[1] = v4;
  return result;
}

re **re::internal::buildCollisionShape(re *inited)
{
  v8 = *(inited + 20);
  {
    inited = re::initCollision(inited);
  }

  v2 = re::globalAllocators(inited);
  v3 = (*(*v1 + 32))(v1, v2[2], &v8);
  v5 = re::internal::buildCollisionShapeAssetData(v3, v4);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 16, 8);
  *result = v5;
  result[1] = v3;
  return result;
}

{
  v1 = *(inited + 1);
  v2 = *(inited + 2);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 120))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v1 = *(inited + 1);
  v2 = *(inited + 3);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 128))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v10 = xmmword_1E3047670;
  v1 = *(inited + 6);
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v2 = xmmword_1E3047690;
    }

    else
    {
      if (v1 != 2)
      {
        goto LABEL_13;
      }

      v2 = xmmword_1E3047680;
    }
  }

  else
  {
    switch(v1)
    {
      case 3:
        v2 = xmmword_1E30476B0;
        break;
      case 4:
        v2 = xmmword_1E30476A0;
        break;
      case 5:
        v2 = xmmword_1E306DD20;
        break;
      default:
        goto LABEL_13;
    }
  }

  v10 = v2;
LABEL_13:
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 104))(v3, v4[2], &v10, 0.0);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v1 = *(inited + 1);
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited);
  v4 = (*(*v2 + 112))(v2, v3[2], v1);
  v6 = re::internal::buildCollisionShapeAssetData(v4, v5);
  v7 = re::globalAllocators(v6);
  result = (*(*v7[2] + 32))(v7[2], 16, 8);
  *result = v6;
  result[1] = v4;
  return result;
}

{
  v2 = *(inited + 2);
  v1 = *(inited + 3);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 40))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

re **re::internal::buildCollisionShape(re *inited, int8x16_t a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  a2.i32[0] = *(inited + 1);
  v8 = vmulq_n_f64(xmmword_1E306DD30, *a2.i32);
  *&v8.f64[0] = vcvt_f32_f64(v8);
  *&v9 = *a2.i32 * -0.433013;
  LODWORD(v10) = 0;
  v11 = vzip1q_s32(0, v8);
  v11.i32[2] = v9;
  a8.i32[1] = 1069709738;
  *a8.i32 = *a2.i32 * -0.5;
  v12 = *a2.i32 * 0.408248;
  *&v13 = *a2.i32 * 0.144338;
  *(&v10 + 1) = v12;
  *(&v10 + 1) = v13;
  *a2.i32 = *a2.i32 * 0.5;
  v21 = vextq_s8(vextq_s8(a8, a8, 4uLL), v8, 0xCuLL);
  v22 = vextq_s8(vextq_s8(a2, a2, 4uLL), v8, 0xCuLL);
  v23 = v10;
  v24 = v22;
  v25 = v11;
  v26 = v10;
  v27 = v11;
  v28 = v21;
  v29 = v10;
  v30 = v22;
  v31 = v21;
  v32 = v11;
  {
    inited = re::initCollision(inited);
  }

  v15 = re::globalAllocators(inited);
  v16 = (*(*v14 + 56))(v14, v15[2], &v21, 12);
  v18 = re::internal::buildCollisionShapeAssetData(v16, v17);
  v19 = re::globalAllocators(v18);
  result = (*(*v19[2] + 32))(v19[2], 16, 8);
  *result = v18;
  result[1] = v16;
  return result;
}

re **re::internal::buildCollisionShape(re *inited, double a2, double a3, double a4, double a5, __n128 a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = vmul_f32(*(inited + 4), 0x3F0000003F000000);
  a6.n128_u64[0] = vneg_f32(v6);
  v7 = a6;
  v7.n128_f32[2] = *(inited + 3) * 0.5;
  v8 = a6;
  v8.n128_u32[0] = v6.i32[0];
  v9 = v8;
  v9.n128_f32[2] = v7.n128_f32[2];
  v8.n128_f32[2] = -v7.n128_f32[2];
  a6.n128_f32[2] = -v7.n128_f32[2];
  LODWORD(v10) = 0;
  HIDWORD(v10) = v6.i32[1];
  v18[0] = v7;
  v18[1] = v9;
  v18[2] = v10;
  v18[3] = v9;
  v18[4] = v8;
  v18[5] = v10;
  v18[6] = v8;
  v18[7] = a6;
  v18[8] = v10;
  v18[9] = a6;
  v18[10] = v8;
  v18[11] = v7;
  {
    inited = re::initCollision(inited);
  }

  v12 = re::globalAllocators(inited);
  v13 = (*(*v11 + 56))(v11, v12[2], v18, 12);
  v15 = re::internal::buildCollisionShapeAssetData(v13, v14);
  v16 = re::globalAllocators(v15);
  result = (*(*v16[2] + 32))(v16[2], 16, 8);
  *result = v15;
  result[1] = v13;
  return result;
}

__n128 re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v11, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v12, v11);
    *(v8 + 8) = *a2;
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 48);
    *(v8 + 48) = *(a3 + 32);
    *(v8 + 64) = v10;
    *(v8 + 16) = result;
    *(v8 + 32) = v9;
    ++*(a1 + 40);
  }

  return result;
}

void re::internal::shadows::generateAABBsForCluster(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, re::MeshAsset *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1;
  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  v167 = 0x7FFFFFFFLL;
  v6 = *a1;
  v170[0].i64[0] = v6;
  if (!v6)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = 8 * v9;
      do
      {
        v171.i64[0] = *v10;
        v12 = *(v171.i64[0] + 256);
        v13 = xmmword_1E3047670;
        v14 = xmmword_1E3047680;
        v15 = xmmword_1E30476A0;
        v16 = xmmword_1E30474D0;
        if (v12)
        {
          v17 = *(v12 + 48);
          v18 = *(v12 + 52);
          v19 = v17 + v17;
          v20 = v18 + v18;
          v21 = *(v12 + 56);
          v22 = *(v12 + 60);
          v23 = v21 + v21;
          v24 = v17 * (v17 + v17);
          v25 = v18 * (v18 + v18);
          v26 = v21 * (v21 + v21);
          v27 = v19 * v18;
          v28 = v19 * v21;
          v29 = v20 * v21;
          v30 = v19 * v22;
          v31 = v20 * v22;
          v32 = v23 * v22;
          v33.i32[3] = 0;
          v33.f32[0] = 1.0 - (v25 + v26);
          v33.f32[1] = v27 + v32;
          v33.f32[2] = v28 - v31;
          v34.i32[3] = 0;
          v34.f32[0] = v27 - v32;
          v34.f32[1] = 1.0 - (v24 + v26);
          v34.f32[2] = v29 + v30;
          v35.i32[3] = 0;
          v35.f32[0] = v28 + v31;
          v35.f32[1] = v29 - v30;
          v35.f32[2] = 1.0 - (v24 + v25);
          v36 = *(v12 + 32);
          v13 = vmulq_n_f32(v33, v36.f32[0]);
          v15 = vmulq_laneq_f32(v35, v36, 2);
          v14 = vmulq_n_f32(v34, COERCE_FLOAT(HIDWORD(*(v12 + 32))));
          v16 = *(v12 + 64);
          HIDWORD(v16) = 1.0;
        }

        *buf = v13;
        v176 = v14;
        v177 = v15;
        v178 = v16;
        re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(&v164, &v171, buf);
        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    goto LABEL_59;
  }

  v148 = a1;
  *buf = xmmword_1E3047670;
  v176 = xmmword_1E3047680;
  v177 = xmmword_1E30476A0;
  v178 = xmmword_1E30474D0;
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(&v164, v170, buf);
  v7 = *(v6 + 32);
  if (v7)
  {
    if ((*(v7 + 304) & 0x80) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v6 + 32);
    }
  }

  else
  {
    v8 = 0;
  }

  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  if (!v164)
  {
    LODWORD(v39) = 0;
    goto LABEL_20;
  }

  v39 = v38 % DWORD2(v165);
  v40 = *(*(&v164 + 1) + 4 * v39);
  if (v40 == 0x7FFFFFFF)
  {
LABEL_20:
    v41 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v164, v39, v38);
    *(v41 + 8) = v8;
    *(v41 + 16) = xmmword_1E3047670;
    *(v41 + 32) = xmmword_1E3047680;
    *(v41 + 48) = xmmword_1E30476A0;
    *(v41 + 64) = xmmword_1E30474D0;
    ++HIDWORD(v167);
    goto LABEL_21;
  }

  while (*(v165 + 96 * v40 + 8) != v8)
  {
    LODWORD(v40) = *(v165 + 96 * v40) & 0x7FFFFFFF;
    if (v40 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v162.i64[1] = 0;
  v160 = 0u;
  v161 = 0u;
  v162.i32[0] = 0;
  *buf = v6;
  re::Queue<re::internal::AssetLoadItem *>::enqueue(&v160, buf);
  if (v161)
  {
    while (1)
    {
      v43 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&v160, v42);
      v44 = v43;
      v45 = *(v43 + 32);
      if (v45)
      {
        if ((*(v45 + 304) & 0x80) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = *(v43 + 32);
        }
      }

      else
      {
        v46 = 0;
      }

      v47 = *(v43 + 256);
      v48 = v164;
      if (v164)
      {
        v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) >> 27));
        v50 = (v49 ^ (v49 >> 31)) % DWORD2(v165);
        v51 = v165;
        v52 = *(*(&v164 + 1) + 4 * v50);
        if (v52 != 0x7FFFFFFF)
        {
          while (*(v165 + 96 * v52 + 8) != v46)
          {
            v52 = *(v165 + 96 * v52) & 0x7FFFFFFF;
            if (v52 == 0x7FFFFFFF)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        v51 = v165;
      }

LABEL_33:
      LODWORD(v52) = 0x7FFFFFFF;
LABEL_34:
      v54 = xmmword_1E3047680;
      v53 = xmmword_1E3047670;
      v56 = xmmword_1E30474D0;
      v55 = xmmword_1E30476A0;
      if (v6 != v43)
      {
        v54 = xmmword_1E3047680;
        v53 = xmmword_1E3047670;
        v56 = xmmword_1E30474D0;
        v55 = xmmword_1E30476A0;
        if (v47)
        {
          v57 = *(v47 + 48);
          v58 = *(v47 + 52);
          v59 = v57 + v57;
          v60 = v58 + v58;
          v61 = *(v47 + 56);
          v62 = *(v47 + 60);
          v63 = v61 + v61;
          v64 = v57 * (v57 + v57);
          v65 = v58 * (v58 + v58);
          v66 = v61 * (v61 + v61);
          v67 = v59 * v58;
          v68 = v59 * v61;
          v69 = v60 * v61;
          v70 = v59 * v62;
          v71 = v60 * v62;
          v72 = v63 * v62;
          v73.i32[3] = 0;
          v73.f32[0] = 1.0 - (v65 + v66);
          v73.f32[1] = v67 + v72;
          v73.f32[2] = v68 - v71;
          v74.i32[3] = 0;
          v74.f32[0] = v67 - v72;
          v74.f32[1] = 1.0 - (v64 + v66);
          v74.f32[2] = v69 + v70;
          v75.i32[3] = 0;
          v75.f32[0] = v68 + v71;
          v75.f32[1] = v69 - v70;
          v75.f32[2] = 1.0 - (v64 + v65);
          v76 = *(v47 + 32);
          v53 = vmulq_n_f32(v73, v76.f32[0]);
          v55 = vmulq_laneq_f32(v75, v76, 2);
          v54 = vmulq_n_f32(v74, COERCE_FLOAT(HIDWORD(*(v47 + 32))));
          v56 = *(v47 + 64);
          HIDWORD(v56) = 1.0;
        }
      }

      v77 = 0;
      v78 = (v51 + 96 * v52);
      v79 = v78[1];
      v80 = v78[2];
      v81 = v78[3];
      v82 = v78[4];
      v171 = v53;
      v172 = v54;
      v173 = v55;
      v174 = v56;
      do
      {
        *&buf[v77] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v171 + v77))), v80, *&v171.f32[v77 / 4], 1), v81, *(&v171 + v77), 2), v82, *(&v171 + v77), 3);
        v77 += 16;
      }

      while (v77 != 64);
      v83 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27));
      v84 = v83 ^ (v83 >> 31);
      if (v48)
      {
        v42 = v84 % DWORD2(v165);
        for (i = *(*(&v164 + 1) + 4 * v42); i != 0x7FFFFFFF; LODWORD(i) = *(v51 + 96 * i) & 0x7FFFFFFF)
        {
          if (*(v51 + 96 * i + 8) == v43)
          {
            goto LABEL_47;
          }
        }

        v152 = v178;
        v153 = v177;
        v154 = v176;
        v155 = *buf;
      }

      else
      {
        v152 = v178;
        v153 = v177;
        v154 = v176;
        v155 = *buf;
        LODWORD(v42) = 0;
      }

      v86 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v164, v42, v84);
      *(v86 + 8) = v44;
      *(v86 + 16) = v155;
      *(v86 + 32) = v154;
      *(v86 + 48) = v153;
      *(v86 + 64) = v152;
      ++HIDWORD(v167);
LABEL_47:
      v87 = *(v44 + 344);
      v88 = v161;
      if (v87)
      {
        v89 = *(v44 + 360);
        v90 = v160.u64[1];
        v91 = 8 * v87;
        do
        {
          v92 = *v89;
          v42 = v88 + 1;
          if (v88 + 1 >= v90)
          {
            re::Queue<re::internal::AssetLoadItem *>::growCapacity(&v160, v42);
            v90 = v160.u64[1];
            v88 = v161;
            v42 = v161 + 1;
          }

          *(v162.i64[1] + 8 * ((*(&v161 + 1) + v88) % v90)) = v92;
          *&v161 = v42;
          ++v162.i32[0];
          ++v89;
          v88 = v42;
          v91 -= 8;
        }

        while (v91);
        if (!v42)
        {
          break;
        }
      }

      else if (!v161)
      {
        break;
      }
    }
  }

  a1 = v160.i64[0];
  if (v160.i64[0] && v162.i64[1])
  {
    a1 = (*(*v160.i64[0] + 40))();
  }

  v5 = v148;
LABEL_59:
  v93 = v5[1].i64[1];
  if (!v93)
  {
    goto LABEL_90;
  }

  v94 = v5[2].i64[1];
  v95 = &v94[v93];
  v96.i64[0] = 0x7F0000007FLL;
  v96.i64[1] = 0x7F0000007FLL;
  v97.i64[0] = 0x7F0000007FLL;
  v97.i64[1] = 0x7F0000007FLL;
  v159 = v97;
  v98 = 1;
  v157 = v96;
  v158 = vnegq_f32(v96);
  v156 = v158;
  do
  {
    if (v164)
    {
      v99 = *v94;
      v100 = 0xBF58476D1CE4E5B9 * (*v94 ^ (*v94 >> 30));
      v101 = (0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) ^ ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) >> 31);
      v102 = *(*(&v164 + 1) + 4 * (v101 % DWORD2(v165)));
      if (v102 != 0x7FFFFFFF)
      {
        while (*(v165 + 96 * v102 + 8) != v99)
        {
          v102 = *(v165 + 96 * v102) & 0x7FFFFFFF;
          if (v102 == 0x7FFFFFFF)
          {
            goto LABEL_88;
          }
        }

        v103 = v99[24];
        if (v103)
        {
          v104 = *(v103 + 40);
          if (v104 && (v105 = atomic_load((v104 + 896)), v105 == 2))
          {
            v106 = *(*(&v164 + 1) + 4 * (v101 % DWORD2(v165)));
            if (v106 == 0x7FFFFFFF)
            {
LABEL_75:
              LODWORD(v106) = 0x7FFFFFFF;
            }

            else
            {
              while (*(v165 + 96 * v106 + 8) != v99)
              {
                v106 = *(v165 + 96 * v106) & 0x7FFFFFFF;
                if (v106 == 0x7FFFFFFF)
                {
                  goto LABEL_75;
                }
              }
            }

            v108 = v165 + 96 * v106;
            v160 = *(v108 + 16);
            v161 = *(v108 + 32);
            v162 = *(v108 + 48);
            v163 = *(v108 + 64);
            re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper(v99, v170);
            if (a4)
            {
              v109 = re::ecs2::EntityComponentCollection::get((v99 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v109)
              {
                v169 = v109[4];
                v110 = 0;
                v111 = *a3;
                v112 = a3[1];
                v113 = a3[2];
                v114 = a3[3];
                v171 = v160;
                v172 = v161;
                v173 = v162;
                v174 = v163;
                do
                {
                  *&buf[v110] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, COERCE_FLOAT(*(&v171 + v110))), v112, *&v171.f32[v110 / 4], 1), v113, *(&v171 + v110), 2), v114, *(&v171 + v110), 3);
                  v110 += 16;
                }

                while (v110 != 64);
                re::internal::shadows::calcCylShadowProxyLocalTransform(&v169, buf, &v171);
                re::MeshAsset::boundingBoxForModel(a4, 0, v168);
                re::AABB::transform(v168, &v171, v170);
              }
            }

            a1 = re::AABB::transform(v170, &v160, buf);
            v115 = v156;
            v118 = v157;
            v115.i32[3] = 0;
            v116 = *buf;
            v120 = v176;
            v121 = vcgtq_f32(*buf, v176);
            v117 = vsubq_f32(v176, *buf);
            v116.i32[3] = 0;
            v118.i32[3] = 0;
            v119 = vminnmq_f32(v115, v116);
            v120.i32[3] = 0;
            v121.i32[3] = v121.i32[2];
            v122 = vmaxvq_u32(v121);
            v116.i64[0] = 0x3F0000003F000000;
            v116.i64[1] = 0x3F0000003F000000;
            v123 = vmulq_f32(vaddq_f32(*buf, v176), v116);
            v124 = v122 < 0;
            if (v122 >= 0)
            {
              v125 = v123.i32[2];
            }

            else
            {
              v125 = 0;
            }

            if (v124)
            {
              v126 = 0;
            }

            else
            {
              v126 = v123.i64[0];
            }

            v127.i64[0] = v126;
            v127.i32[2] = v125;
            v156 = v119;
            v157 = vmaxnmq_f32(v118, v120);
            v117.i32[3] = 0;
            v128 = vmaxnmq_f32(v117, 0);
            v129 = vmulq_f32(v128, v128);
            v129.f32[0] = v129.f32[2] + vaddv_f32(*v129.f32);
            *v121.i32 = sqrtf(v129.f32[0]) * 0.5;
            v127.i32[3] = v121.i32[0];
            v130 = vdupq_lane_s32(*v121.i8, 0);
            v131 = vsubq_f32(v127, v130);
            v132 = vaddq_f32(v127, v130);
            v134 = v158;
            v133 = v159;
            v134.i32[3] = 0;
            v131.i32[3] = 0;
            v133.i32[3] = 0;
            v132.i32[3] = 0;
            v158 = vminnmq_f32(v134, v131);
            v159 = vmaxnmq_f32(v133, v132);
            v98 &= fabsf(v129.f32[0]) < 1.0e-10;
          }

          else
          {
            v107 = *re::ecsComponentsLogObjects(a1);
            a1 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v107, OS_LOG_TYPE_ERROR, "MeshShadowSystemHelpers.mm::generateAABBsForCluster(): encountered a null/unloaded mesh", buf, 2u);
            }
          }
        }
      }
    }

LABEL_88:
    ++v94;
  }

  while (v94 != v95);
  if ((v98 & 1) == 0)
  {
    v137 = vabsq_f32(*a2);
    v138 = v137.f32[1];
    v139 = fmaxf(fmaxf(v137.f32[0], v137.f32[2]), v137.f32[1]);
    v141 = v158;
    v140 = v159;
    v142 = vsubq_f32(v156, v158);
    v143 = vaddq_f32(v158, v142);
    v144 = vaddq_f32(v159, v142);
    v145 = vsubq_f32(v144, v157);
    if (v139 == v138)
    {
      v141.i32[1] = v143.i32[1];
      v140.i32[1] = v144.i32[1];
      LODWORD(v146) = 0;
      *(&v146 + 1) = 0;
      DWORD1(v146) = v145.i32[1];
    }

    else
    {
      v141.i32[2] = v143.i32[2];
      v140.i32[2] = v144.i32[2];
      *&v146 = 0;
      *(&v146 + 1) = v145.u32[2];
    }

    *a5 = v156;
    *(a5 + 16) = v157;
    *(a5 + 32) = v141;
    *(a5 + 48) = v140;
    *(a5 + 64) = v146;
  }

  else
  {
LABEL_90:
    v135.i64[0] = 0x7F0000007FLL;
    v135.i64[1] = 0x7F0000007FLL;
    v136 = vnegq_f32(v135);
    *a5 = v136;
    *(a5 + 16) = v135;
    *(a5 + 32) = v136;
    *(a5 + 48) = v135;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
  }

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v164);
}

uint64_t re::internal::shadows::isEntityAMeshReceiver(re::internal::shadows *this, re::ecs2::Entity *a2, const re::AssetHandle *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    if (*(v5 + 41) == 1 && (*(v5 + 42) & 3) != 0)
    {
      return 1;
    }
  }

  else
  {
    v8 = *(this + 24);
    v9 = *(v8 + 72);
    if (v9)
    {
      v10 = (*(v8 + 88) + 8);
      v11 = 24 * v9;
      while (*v10 != *(a2 + 1))
      {
        v10 += 3;
        v11 -= 24;
        if (!v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t re::internal::shadows::removeParamsFromMaterialParameterBlock(uint64_t this, re::MaterialManager *a2, re::MaterialManager *a3)
{
  if ((re::internal::shadows::g_enablePatchShadows & 1) == 0)
  {
    v3 = a3;
    v5 = this;
    this = re::MaterialManager::getSystemMaterialParameterBlock(a2, this);
    if (this)
    {
      v6 = this;
      v12 = 0x1658E0C3A20A4B09;
      re::MaterialParameterBlock::removeConstant(this, &v12, 16);
      v12 = 0x7DDA5D55C0FC4FA9;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 4);
      v12 = 0x5FE82A114F627B09;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 4);
      v11 = 0x568E6F2D267C8FA7;
      re::MaterialParameterBlock::removeBinding(v6, &v11);
      v10 = 0xAB2491DDDDEEE62;
      v11 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v10);
      v9 = 0x5FCB768A20041405;
      v10 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v9);
      v8 = 0x5FCB768A200DAF65;
      v9 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v8);
      v8 = 0;
      v12 = 0x34C6B4FED1749A95;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 1);
      v7 = 0x49245BDA69D27475;
      this = re::MaterialParameterBlock::removeBinding(v6, &v7);
      v7 = 0;
      if (v3)
      {
        this = re::MaterialParameterBlock::isEmpty(v6);
        if (this)
        {
          return re::MaterialManager::removeSystemMaterialParameterBlock(a2, v5);
        }
      }
    }
  }

  return this;
}

double re::internal::shadows::setParamsOnMaterialParameterBlock(uint64_t a1, uint64_t a2, re::RenderManager **this)
{
  v4 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(this, a1);
  v5 = *(a2 + 88);
  v23[0] = *(a2 + 80);
  v23[1] = v5;
  v22 = 0x1658E0C3A20A4B09;
  re::MaterialParameterBlock::setConstant(v4, &v22, 0x10uLL, v23, 33, v21);
  v21[0] = 0;
  v6 = cos(*(a2 + 52) * 3.14159265 / 180.0);
  *&v22 = v6;
  v23[0] = 0x7DDA5D55C0FC4FA9;
  re::MaterialParameterBlock::setConstant(v4, v23, 4uLL, &v22, 1, v20);
  v20[0] = 0;
  LODWORD(v22) = 0;
  v23[0] = 0x5FE82A114F627B09;
  re::MaterialParameterBlock::setConstant(v4, v23, 4uLL, &v22, 7, v19);
  v19[0] = 0;
  v17 = 0x568E6F2D267C8FA7;
  re::MaterialParameterBlock::setBinding(v4, &v17, "rendergraph", "ProjectiveMeshShadowMapTexture", 2, v18);
  v18[0] = 0;
  v15 = 0xAB2491DDDDEEE62;
  re::MaterialParameterBlock::setBinding(v4, &v15, "rendergraph", "TiledShadowDepthPrepassDepthAsColorTexture", 2, v16);
  v16[0] = 0;
  v13 = 0x5FCB768A20041405;
  re::MaterialParameterBlock::setBinding(v4, &v13, "rendergraph", "compositedSceneUnderstandingShadowsColor", 2, v14);
  v14[0] = 0;
  v11 = 0x5FCB768A200DAF65;
  re::MaterialParameterBlock::setBinding(v4, &v11, "rendergraph", "compositedSceneUnderstandingShadowsDepth", 2, v12);
  v12[0] = 0;
  v9 = 0x49245BDA69D27475;
  re::MaterialParameterBlock::setBinding(v4, &v9, "rendergraph", "MeshShadowMipDescriptionBuffer", 3, v10);
  v10[0] = 0;
  LOBYTE(v22) = 1;
  v23[0] = 0x34C6B4FED1749A95;
  return re::MaterialParameterBlock::setConstant(v4, v23, 1uLL, &v22, 2, &v8);
}

float32x2_t *re::internal::shadows::buildCylindricalProxyMesh@<X0>(uint64_t a1@<X0>, re::GeomMesh *a2@<X8>)
{
  v3 = *(a1 + 4);
  v20 = *a1 * 0.5;
  v26 = 1;
  v25 = 16843009;
  v21[0] = *(a1 + 12);
  v23 = v20;
  v24 = v20;
  v22 = v3;
  v21[1] = *(a1 + 8);
  v4 = re::GeomMesh::GeomMesh(a2, 0);
  re::buildCylinder(v4, v21);
  v5 = 0;
  v6.i32[0] = 0;
  v6.f32[1] = v20;
  v6.i32[2] = 0;
  v6.i32[3] = 1.0;
  v7 = vrsqrte_f32(1065353216);
  *&v8 = vmul_f32(v7, vrsqrts_f32(1065353216, vmul_f32(v7, v7)));
  v9 = vmulq_n_f32(xmmword_1E30476A0, vmul_f32(*&v8, vrsqrts_f32(1065353216, vmul_f32(*&v8, *&v8))).f32[0]);
  v10 = vmulq_f32(v9, v9).f32[0];
  v11 = vmuls_lane_f32(v9.f32[1], *v9.f32, 1);
  v12 = vmuls_lane_f32(v9.f32[2], v9, 2);
  v13 = vmuls_lane_f32(v9.f32[0], *v9.f32, 1);
  v14 = vmuls_lane_f32(v9.f32[0], v9, 2);
  v15 = vmuls_lane_f32(v9.f32[1], v9, 2);
  v16 = v9.f32[1] + v14;
  *&v8 = v14 - v9.f32[1];
  *&v17 = v10 + ((1.0 - v10) * -0.000000043711);
  *(&v17 + 1) = v9.f32[2] + v13;
  HIDWORD(v18) = 0;
  *(&v17 + 1) = v8;
  HIDWORD(v8) = 0;
  *&v8 = v13 - v9.f32[2];
  *(&v8 + 1) = v11 + ((1.0 - v11) * -0.000000043711);
  *(&v8 + 2) = v9.f32[0] + v15;
  *&v18 = v16;
  *(&v18 + 1) = v15 - v9.f32[0];
  *(&v18 + 2) = v12 + ((1.0 - v12) * -0.000000043711);
  v27[0] = v17;
  v27[1] = v8;
  v27[2] = v18;
  v27[3] = xmmword_1E30474D0;
  do
  {
    *(&v28 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(v27[v5])), xmmword_1E3047680, *&v27[v5], 1), xmmword_1E30476A0, v27[v5], 2), v6, v27[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return re::transform(a2, &v28);
}

void re::internal::shadows::regenerateShadowProxy(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, __n128 a6)
{
  v119 = *MEMORY[0x1E69E9840];
  if (*(a1 + 45) == 1)
  {
    re::internal::shadows::buildCylindricalProxyMesh(a1, &v106);
    goto LABEL_40;
  }

  v75 = *(a1 + 36) + -0.5;
  v8 = *(a1 + 28);
  a6.n128_f32[0] = *(a1 + 24) * 0.5;
  a4.n128_f32[0] = v8 * 0.5;
  v74 = a4;
  v9 = *(a1 + 16) * 0.5;
  *&v71 = *(a1 + 32) + -0.5;
  v73 = *(a1 + 20) * 0.5;
  v105 = 0;
  v103 = 0;
  v102[0] = 0;
  v102[1] = 0;
  v104 = 0;
  a3.n128_f32[0] = -a6.n128_f32[0];
  a3.n128_u32[1] = v71;
  v10 = a3;
  v10.n128_f32[2] = v9;
  v68 = v9;
  v70 = a6.n128_f32[0];
  a6.n128_u32[1] = v71;
  v106 = v10;
  v11 = a6;
  v11.n128_f32[2] = v9;
  *v76 = v11;
  a6.n128_f32[2] = -v9;
  v116[0] = a6;
  a3.n128_f32[2] = -v9;
  *v111 = a3;
  re::DynamicArray<re::Vector3<float>>::add(v102, &v106);
  re::DynamicArray<re::Vector3<float>>::add(v102, v76);
  re::DynamicArray<re::Vector3<float>>::add(v102, v116);
  v12 = re::DynamicArray<re::Vector3<float>>::add(v102, v111);
  v12.n128_f32[0] = -(v8 * 0.5);
  v12.n128_f32[1] = v75;
  v13 = v12;
  v13.n128_f32[2] = v73;
  v12.n128_f32[2] = -v73;
  v106 = v13;
  *v76 = v12;
  v14 = v74;
  v14.n128_f32[1] = v75;
  v15 = v14;
  v15.n128_f32[2] = -v73;
  v116[0] = v15;
  v14.n128_f32[2] = v73;
  *v111 = v14;
  re::DynamicArray<re::Vector3<float>>::add(v102, &v106);
  re::DynamicArray<re::Vector3<float>>::add(v102, v76);
  re::DynamicArray<re::Vector3<float>>::add(v102, v116);
  re::DynamicArray<re::Vector3<float>>::add(v102, v111);
  v16 = *(a1 + 12);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *&v71 - v75;
    v19 = v70 - v74.n128_f32[0];
    v20 = v68 - v73;
    do
    {
      v21 = v16;
      v22 = v17 / v16;
      v23 = *(a1 + 40);
      v69 = v75 + (powf(v22, v23) * v18);
      v24 = v74;
      v24.n128_f32[0] = v74.n128_f32[0] + (v22 * v19);
      v72 = v24;
      v25 = ++v17 / v21;
      v26 = powf(v25, v23);
      v27 = v72;
      v28.n128_f32[0] = v74.n128_f32[0] + (v25 * v19);
      v29.n128_f32[0] = -(v74.n128_f32[0] + (v22 * v19));
      v29.n128_f32[1] = v69;
      v30 = v29;
      v30.n128_f32[2] = v73 + (v22 * v20);
      v106 = v30;
      v27.n128_f32[1] = v69;
      v31 = v27;
      v31.n128_f32[2] = v73 + (v22 * v20);
      *v76 = v31;
      v29.n128_f32[2] = -v31.n128_f32[2];
      v116[0] = v29;
      v27.n128_f32[2] = -v31.n128_f32[2];
      v29.n128_f32[0] = -v28.n128_f32[0];
      v29.n128_f32[1] = v75 + (v26 * v18);
      *v111 = v27;
      v32 = v29;
      v32.n128_f32[2] = v73 + (v25 * v20);
      v28.n128_f32[1] = v29.n128_f32[1];
      v33 = v28;
      v33.n128_f32[2] = v32.n128_f32[2];
      v100 = v33;
      v101 = v32;
      v29.n128_f32[2] = -v32.n128_f32[2];
      v28.n128_f32[2] = -v32.n128_f32[2];
      v98 = v28;
      v99 = v29;
      re::DynamicArray<re::Vector3<float>>::add(v102, &v106);
      re::DynamicArray<re::Vector3<float>>::add(v102, v76);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v100);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v101);
      re::DynamicArray<re::Vector3<float>>::add(v102, v76);
      re::DynamicArray<re::Vector3<float>>::add(v102, v111);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v98);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v100);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v106);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v101);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v99);
      re::DynamicArray<re::Vector3<float>>::add(v102, v116);
      re::DynamicArray<re::Vector3<float>>::add(v102, v111);
      re::DynamicArray<re::Vector3<float>>::add(v102, v116);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v99);
      re::DynamicArray<re::Vector3<float>>::add(v102, &v98);
      v16 = *(a1 + 12);
    }

    while (v17 < v16);
  }

  bzero(v76, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v77, 1uLL);
  LODWORD(v80) = v80 + 1;
  re::internal::GeomAttributeManager::GeomAttributeManager(v82);
  re::internal::GeomAttributeManager::addAttribute(v82, "vertexPosition", 1, 7);
  v35 = v103;
  LODWORD(v76[1]) = v103;
  v89 = v103;
  if (v91)
  {
    v36 = v92;
    v37 = 8 * v91;
    do
    {
      v38 = *v36++;
      (*(*v38 + 80))(v38, v89);
      v37 -= 8;
    }

    while (v37);
    v35 = v103;
  }

  if (v79 > (v35 >> 2))
  {
    v39 = v97;
    if (v97)
    {
      v40 = 0;
      do
      {
        v41 = re::internal::GeomAttributeContainer::attributeByIndex(v96, v40);
        re::internal::accessFaceVaryingAttributeSubmesh(v41, v42);
        ++v40;
      }

      while (v39 != v40);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v77, (v35 >> 2));
  v93 = v35 >> 2;
  if (v94)
  {
    v43 = v95;
    v44 = 8 * v94;
    do
    {
      v45 = *v43++;
      (*(*v45 + 80))(v45, v93);
      v44 -= 8;
    }

    while (v44);
  }

  if (v103)
  {
    LODWORD(v46) = 0;
    v47 = v79;
    while (1)
    {
      v48 = v46 >> 2;
      if (v47 <= v48)
      {
        break;
      }

      v49 = (v81 + 16 * v48);
      v50 = *v49;
      v51 = v49[3];
      if (v50 != -1 && v51 != -1)
      {
        v53 = v97;
        if (v97)
        {
          v54 = 0;
          do
          {
            v55 = re::internal::GeomAttributeContainer::attributeByIndex(v96, v54);
            re::internal::accessFaceVaryingAttributeSubmesh(v55, v56);
            ++v54;
          }

          while (v53 != v54);
          v47 = v79;
        }
      }

      if (v47 <= v48)
      {
        goto LABEL_54;
      }

      v57 = v81 + 16 * v48;
      *v57 = v46;
      *(v57 + 4) = vorr_s8(vdup_n_s32(v46), 0x200000001);
      *(v57 + 12) = v46 | 3;
      v46 = (v46 + 4);
      if (v103 <= v46)
      {
        goto LABEL_30;
      }
    }

    *v111 = 0;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v106 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v116[0].n128_u32[0] = 136315906;
    *(v116[0].n128_u64 + 4) = "operator[]";
    v116[0].n128_u16[6] = 1024;
    *(&v116[0].n128_u32[3] + 2) = 797;
    v116[1].n128_u16[1] = 2048;
    *(v116[1].n128_u64 + 4) = v46 >> 2;
    v116[1].n128_u16[6] = 2048;
    *(&v116[1].n128_u64[1] + 6) = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    *v111 = 0;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v106 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v116[0].n128_u32[0] = 136315906;
    *(v116[0].n128_u64 + 4) = "operator[]";
    v116[0].n128_u16[6] = 1024;
    *(&v116[0].n128_u32[3] + 2) = 789;
    v116[1].n128_u16[1] = 2048;
    *(v116[1].n128_u64 + 4) = v46 >> 2;
    v116[1].n128_u16[6] = 2048;
    *(&v116[1].n128_u64[1] + 6) = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v101.n128_u64[0] = 0;
    v117 = 0u;
    v118 = 0u;
    memset(v116, 0, sizeof(v116));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 621;
    v112 = 2048;
    v113 = v47;
    v114 = 2048;
    v115 = v47;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_30:
  re::GeomMesh::GeomMesh(&v106, 0);
  re::GeomMesh::operator=(&v106, &v76[1]);
  re::GeomMesh::setName(&v106, v76[0]);
  re::GeomMesh::freeName(v76);
  v58 = re::GeomMesh::modifyVertexPositions(&v106);
  if (v103)
  {
    v60 = 0;
    v47 = v59;
    while (v60 != v59)
    {
      *(v58 + 16 * v60) = *(v105 + 16 * v60);
      if (v103 <= ++v60)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_55;
  }

LABEL_34:
  re::GeomMesh::freeName(v76);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v82);
  if (v77 && v81)
  {
    (*(*v77 + 40))();
  }

  if (v102[0] && v105)
  {
    (*(*v102[0] + 40))();
  }

LABEL_40:
  v116[0].n128_u32[0] = 16842752;
  v116[0].n128_u8[4] = 1;
  *(&v116[0].n128_u32[1] + 1) = 0;
  *(&v116[0].n128_u16[4] + 1) = 0;
  *(&v116[0].n128_u32[2] + 3) = 65793;
  v117 = 0u;
  memset(&v116[1], 0, 32);
  DWORD1(v117) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(&v106, 1uLL, 0, 0, v76);
  v62 = LOBYTE(v76[0]);
  v63 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v64 = (*(*v63[2] + 32))(v63[2], 1272, 8);
  v65 = v64;
  if (v62 == 1)
  {
    v66 = re::MeshAsset::MeshAsset(v64, &v76[1]);
  }

  else
  {
    re::MeshAsset::MeshAsset(v64);
  }

  v67 = re::MeshAsset::assetType(v66);
  (*(*a2 + 424))(a2, v65, v67, 0, 2, 0);
  if (LOBYTE(v76[0]) == 1)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v90);
    if (v84)
    {
      if (v88)
      {
        (*(*v84 + 40))();
      }

      v88 = 0;
      v85 = 0;
      v86 = 0;
      v84 = 0;
      ++v87;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v83);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v81);
    re::DynamicArray<re::MeshAssetModel>::deinit(&v76[1]);
  }

  else if (v78 && (v79 & 1) != 0)
  {
    (*(*v78 + 40))();
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v116[1]);
  re::GeomMesh::~GeomMesh(&v106);
}

double re::internal::shadows::calcCylShadowProxyLocalTransform@<D0>(float32x2_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  *v6.i32 = re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(a1, a2);
  v7 = 0;
  v8 = a2[1];
  v9 = a2[2];
  v10 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v11 = (v10.f32[2] + vaddv_f32(*v10.f32)) <= 0.0;
  v12 = -1.0;
  if (!v11)
  {
    v12 = 1.0;
  }

  v13 = vmulq_f32(v8, v8);
  v14 = vmulq_f32(v9, v9);
  v15 = vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8));
  v16 = vextq_s8(v13, v13, 8uLL);
  *v16.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v16.i8, *&vextq_s8(v14, v14, 8uLL)), v15));
  v17 = vmulq_n_f32(vextq_s8(v6, v16, 0xCuLL), v12);
  v19.i32[0] = 0;
  v19.f32[1] = a1->f32[1] * -0.5;
  *&v18 = 0;
  v19.i32[2] = 0;
  v19.i32[3] = 1.0;
  LODWORD(v20) = 0;
  HIDWORD(v20) = v6.i32[0];
  *(&v18 + 1) = v6.u32[0];
  v34 = a1->u32[0];
  v35 = v20;
  v36 = v18;
  v37 = xmmword_1E30474D0;
  do
  {
    *(&v38 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v34 + v7))), xmmword_1E3047680, *(&v34 + v7), 1), xmmword_1E30476A0, *(&v34 + v7), 2), v19, *(&v34 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v21 = 0;
  v22 = v17.f32[1];
  v23 = v17.f32[2];
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v23 / v22;
  LODWORD(v29) = 0;
  *(&v29 + 1) = v28;
  v34 = xmmword_1E3047670;
  v35 = v29;
  v36 = xmmword_1E30476A0;
  v37 = xmmword_1E30474D0;
  do
  {
    *(&v38 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v34 + v21))), v25, *(&v34 + v21), 1), v26, *(&v34 + v21), 2), v27, *(&v34 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  result = *v38.i64;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  *a3 = v38;
  a3[1] = v31;
  a3[2] = v32;
  a3[3] = v33;
  return result;
}

float re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(float32x2_t *a1, float32x4_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL))), vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vextq_s8(vextq_s8(v2, v2, 0xCuLL), v2, 8uLL)));
  v5 = vaddv_f32(*v4.f32);
  v6 = -1.0;
  if ((v4.f32[2] + v5) > 0.0)
  {
    v6 = 1.0;
  }

  v7 = vmulq_f32(*a2, *a2);
  v8 = vmulq_f32(v2, v2);
  v9 = vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8));
  v10 = vextq_s8(v7, v7, 8uLL);
  *v10.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v10.f32, *&vextq_s8(v8, v8, 8uLL)), v9));
  v11 = vmulq_f32(v3, v3);
  v10.i32[2] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v13 = vmulq_n_f32(v10, v6);
  v12 = v13.f32[2];
  *v13.f32 = vmul_f32(*a1, *v13.f32);
  if (v13.f32[0] < v13.f32[1])
  {
    v13.f32[0] = v13.f32[1];
  }

  v13.f32[0] = (v13.f32[0] * 0.0039062) * 27.0;
  if (fabsf(v13.f32[2]) <= 0.00000011921)
  {
    v12 = 1.0;
  }

  return v13.f32[0] / v12;
}

__n128 re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper@<Q0>(re::ecs2::DynamicBoundingBoxComponent *this@<X0>, float32x4_t *a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (!v7 || (v8 = *(v7 + 352), *a2 = *(v7 + 336), a2[1] = v8, result = vcgtq_f32(*a2, a2[1]), result.n128_u32[3] = result.n128_u32[2], result.n128_u32[0] = vmaxvq_u32(result), (result.n128_u32[0] & 0x80000000) != 0))
  {
    v10 = *(this + 24);
    if (v10 && (v11 = re::AssetHandle::loadedAsset<re::MeshAsset>((v10 + 32))) != 0 && (v12 = v11, v11[79]))
    {
      v13 = v11[73];
      v14 = v11[71];
      v15 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v15)
      {
        v13 = *(v15 + 208);
        v14 = *(v15 + 192);
      }

      re::ecs2::MeshComponent::updateStaticBoundingBoxData(v10, *(v10 + 16), 0);
      v16 = *(v10 + 304);
      if (v16)
      {
        v17 = v16 + 104;
      }

      else
      {
        v17 = 0;
      }

      v18 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v18)
      {
        v17 = *(v18 + 160) + 48;
      }

      v20 = *(v17 + 24);
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      v22 = vnegq_f32(v21);
      *a2 = v22;
      a2[1] = v21;
      if (v20)
      {
        v23 = 0;
        v24 = v12[79];
        while (v14 != v23)
        {
          v25 = *(v13 + 8 * v23);
          v3 = WORD1(v25);
          v4 = *(v24 + 88);
          if (v4 <= WORD1(v25))
          {
            goto LABEL_25;
          }

          v26 = *(*(v24 + 104) + 16 * WORD1(v25));
          v33 = *v17;
          v3 = *(v17 + 24);
          if (v3 <= v23)
          {
            goto LABEL_26;
          }

          v31 = v22;
          v32 = v21;
          v27 = v17 + 40;
          if ((*(v17 + 32) & 1) == 0)
          {
            v27 = *(v17 + 48);
          }

          re::AABB::transform((*(&v33 & 0xFFFFFFFFFFFFFFF7 | (8 * (*(v27 + 4 * v23) & 1))) + ((16 * *(v27 + 4 * v23)) & 0xFFFFFFFE0)), (v26 + 144 * v25 + 32), &v42);
          v29 = v31;
          v28 = v32;
          v29.i32[3] = 0;
          result = v42;
          v30 = v43;
          result.n128_u32[3] = 0;
          v28.i32[3] = 0;
          v30.i32[3] = 0;
          v22 = vminnmq_f32(v29, result);
          v21 = vmaxnmq_f32(v28, v30);
          *a2 = v22;
          a2[1] = v21;
          if (v20 == ++v23)
          {
            return result;
          }
        }

        re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v14);
        _os_crash();
        __break(1u);
LABEL_25:
        *&v33 = 0;
        v46 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 797;
        v38 = 2048;
        v39 = v3;
        v40 = 2048;
        v41 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_26:
        v46 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 866;
        v38 = 2048;
        v39 = v23;
        v40 = 2048;
        v41 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      result.n128_u64[0] = 0x7F0000007FLL;
      result.n128_u64[1] = 0x7F0000007FLL;
      *a2 = vnegq_f32(result);
      a2[1] = result;
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 96 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v27, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + 80) % *(a1 + 24));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                v19 = *(v13 + 32);
                v20 = *(v13 + 64);
                *(v17 + 48) = *(v13 + 48);
                *(v17 + 64) = v20;
                *(v17 + 16) = v18;
                *(v17 + 32) = v19;
              }

              v13 += 96;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v27);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 96 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 96 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 96 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 80) = a3;
  ++*(a1 + 28);
  return v21 + 96 * v5;
}

re::ecs2::PhysicsSystem *re::ecs2::PhysicsSystem::PhysicsSystem(re::ecs2::PhysicsSystem *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CD4278;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 256, 8);
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = &unk_1F5CD4308;
  *(v4 + 24) = 1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  *(v4 + 48) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 144) = 1;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 225) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  v37 = v4;
  *(v4 + 248) = &unk_1F5CF4958;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 280, 8);
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = &unk_1F5CD44F0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 56) = 0;
  *(v6 + 48) = 0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 144) = 1;
  *(v6 + 168) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0;
  *(v6 + 192) = 1;
  *(v6 + 225) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 248) = &unk_1F5CEDE68;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  *&v43[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v43[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v38 = v43;
  *&v38[8] = 2;
  v7 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v6 + 256), v38);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 304, 8);
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 296) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 264) = 0u;
  *(v9 + 280) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 1;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0;
  *(v9 + 192) = 1;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 225) = 0u;
  *(v9 + 248) = &unk_1F5CD59F0;
  *v9 = &unk_1F5CD5A58;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0x7FFFFFFF00000000;
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 280, 8);
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 248) = 0u;
  *(v11 + 264) = 0u;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = &unk_1F5CD46D8;
  *(v11 + 24) = 1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 56) = 0;
  *(v11 + 48) = 0;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 144) = 1;
  *(v11 + 184) = 0;
  *(v11 + 168) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 192) = 1;
  *(v11 + 225) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  v12 = re::ecs2::RigidBodyComponentStateImpl::RigidBodyComponentStateImpl((v11 + 248));
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 256, 8);
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 216) = 0u;
  *(v14 + 232) = 0u;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = &unk_1F5CD48C0;
  *(v14 + 24) = 1;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 56) = 0;
  *(v14 + 48) = 0;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 144) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 184) = 0;
  *(v14 + 192) = 1;
  *(v14 + 225) = 0u;
  *(v14 + 216) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 248) = &unk_1F5CD6930;
  v15 = re::globalAllocators(v14);
  v16 = (*(*v15[2] + 32))(v15[2], 280, 8);
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  *(v16 + 136) = 0u;
  *(v16 + 152) = 0u;
  *(v16 + 168) = 0u;
  *(v16 + 184) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 232) = 0u;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = &unk_1F5CD4AA8;
  *(v16 + 24) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 56) = 0;
  *(v16 + 48) = 0;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 144) = 1;
  *(v16 + 168) = 0u;
  *(v16 + 152) = 0u;
  *(v16 + 184) = 0;
  *(v16 + 192) = 1;
  *(v16 + 225) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 248) = &unk_1F5CD5350;
  *(v16 + 256) = 0;
  *(v16 + 264) = 0;
  *(v16 + 272) = 0;
  *&v43[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v43[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v38 = v43;
  *&v38[8] = 2;
  v17 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v16 + 256), v38);
  v18 = re::globalAllocators(v17);
  v19 = (*(*v18[2] + 32))(v18[2], 280, 8);
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0u;
  *(v19 + 136) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 168) = 0u;
  *(v19 + 184) = 0u;
  *(v19 + 200) = 0u;
  *(v19 + 216) = 0u;
  *(v19 + 232) = 0u;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v19 = &unk_1F5CD4C90;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 56) = 0;
  *(v19 + 48) = 0;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 144) = 1;
  *(v19 + 168) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 184) = 0;
  *(v19 + 192) = 1;
  *(v19 + 225) = 0u;
  *(v19 + 216) = 0u;
  *(v19 + 200) = 0u;
  *(v19 + 248) = &unk_1F5CD5390;
  *(v19 + 256) = 0;
  *(v19 + 264) = 0;
  *(v19 + 272) = 0;
  *&v43[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v43[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v38 = v43;
  *&v38[8] = 2;
  v20 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v19 + 256), v38);
  v21 = re::globalAllocators(v20);
  v22 = (*(*v21[2] + 32))(v21[2], 280, 8);
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0u;
  *(v22 + 136) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = &unk_1F5CD4E78;
  *(v22 + 24) = 1;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 56) = 0;
  *(v22 + 48) = 0;
  *(v22 + 112) = 0u;
  *(v22 + 128) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 144) = 1;
  *(v22 + 168) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 184) = 0;
  *(v22 + 192) = 1;
  *(v22 + 225) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 248) = &unk_1F5CD53D0;
  *(v22 + 256) = 0;
  *(v22 + 264) = 0;
  *(v22 + 272) = 0;
  *&v43[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v43[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v38 = v43;
  *&v38[8] = 2;
  v23 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v22 + 256), v38);
  v24 = re::globalAllocators(v23);
  v25 = (*(*v24[2] + 32))(v24[2], 264, 8);
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 8) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0u;
  *(v25 + 104) = 0u;
  *(v25 + 120) = 0u;
  *(v25 + 136) = 0u;
  *(v25 + 152) = 0u;
  *(v25 + 168) = 0u;
  *(v25 + 184) = 0u;
  *(v25 + 200) = 0u;
  *(v25 + 216) = 0u;
  *(v25 + 232) = 0u;
  *(v25 + 24) = 1;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 144) = 1;
  *(v25 + 184) = 0;
  *(v25 + 168) = 0u;
  *(v25 + 152) = 0u;
  *(v25 + 192) = 1;
  *(v25 + 225) = 0u;
  *(v25 + 200) = 0u;
  *(v25 + 216) = 0u;
  *(v25 + 248) = &unk_1F5CFFF98;
  *(v25 + 256) = 0;
  *v25 = &unk_1F5CD2FA8;
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 280, 8);
  *(v27 + 24) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0u;
  *(v27 + 120) = 0u;
  *(v27 + 136) = 0u;
  *(v27 + 152) = 0u;
  *(v27 + 168) = 0u;
  *(v27 + 184) = 0u;
  *(v27 + 200) = 0u;
  *(v27 + 216) = 0u;
  *(v27 + 232) = 0u;
  *v27 = &unk_1F5CD5060;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 56) = 0;
  *(v27 + 48) = 0;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 144) = 1;
  *(v27 + 184) = 0;
  *(v27 + 168) = 0u;
  *(v27 + 152) = 0u;
  *(v27 + 192) = 1;
  *(v27 + 225) = 0u;
  *(v27 + 200) = 0u;
  *(v27 + 216) = 0u;
  *(v27 + 248) = &unk_1F5CF79D0;
  *(v27 + 256) = 0;
  *(v27 + 264) = 0;
  *(v27 + 272) = 0;
  *v38 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *&v43[0] = v38;
  *(&v43[0] + 1) = 1;
  v28 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v27 + 256), v43);
  if (!*(this + 37))
  {
    *(this + 38) = 10;
    *(this + 39) = v28;
    if (!v28)
    {
      goto LABEL_12;
    }

    *(v28 + 3) = 0u;
    *(v28 + 4) = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 2) = 0u;
    *v28 = 0u;
  }

  if (*(this + 38) != 10)
  {
LABEL_11:
    re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  v30 = *(this + 39);
  *v30 = v37;
  v30[1] = v6;
  v30[2] = v9;
  v30[3] = v11;
  v30[4] = v14;
  v30[5] = v16;
  v30[6] = v19;
  v30[7] = v22;
  v30[8] = v25;
  v30[9] = v27;
  v31 = *(this + 38);
  if (*(this + 38))
  {
    v32 = 0;
    while (1)
    {
      v33 = *(*(this + 39) + 8 * v32);
      v34 = (*(*v33 + 16))(v33);
      v35 = *(this + 41);
      if (v35 <= v32)
      {
        break;
      }

      *(*(this + 42) + 8 * v32++) = v34;
      if (v32 >= *(this + 38))
      {
        return this;
      }
    }

    memset(v43, 0, sizeof(v43));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    *&v38[14] = 468;
    v39 = 2048;
    v40 = v32;
    v41 = 2048;
    v42 = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  return this;
}

void re::ecs2::PhysicsSystem::~PhysicsSystem(re::ecs2::PhysicsSystem *this)
{
  v1 = this;
  v2 = *(this + 38);
  if (v2)
  {
    v3 = *(this + 39);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = re::globalAllocators(this)[2];
        (**v5)(v5);
        this = (*(*v6 + 40))(v6, v5);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  re::FixedArray<CoreIKTransform>::deinit(v1 + 40);
  v7 = v1[37];
  if (v7)
  {
    if (v1[38])
    {
      (*(*v7 + 40))(v7, v1[39]);
      v1[38] = 0;
      v1[39] = 0;
    }

    v1[37] = 0;
  }

  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v1 + 28);

  re::ecs2::System::~System(v1);
}

{
  re::ecs2::PhysicsSystem::~PhysicsSystem(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    v4 = (*(*v2 + 32))(*(this + 7), a2);
    if (re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v4))
    {
      (*(*v2 + 248))(v2);
      v5 = (*(*v2 + 40))(v2);
      re::ecs2::SystemRegistry::getSystem<re::ecs2::PhysicsSystem>(v5, &v7);
      v6 = v7;
      if (v7)
      {
        if (!*(v7 + 35) || (re::ecs2::PhysicsSystem::ecsToSim(v7, this, 0), (v6 = v7) != 0))
        {
        }
      }
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info = re::ecs2::introspect_PhysicsSimulationService(0);
  }

  v2 = re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info;
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

void *re::ecs2::SystemRegistry::getSystem<re::ecs2::PhysicsSystem>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = &unk_1EE187000;
  {
    v8 = a2;
    v9 = a1;
    v3 = &unk_1EE187000;
    v7 = v6;
    a2 = v8;
    a1 = v9;
    if (v7)
    {
      re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::internal::getOrCreateInfo("PhysicsSystem", re::ecs2::allocInfo_PhysicsSystem, re::ecs2::initInfo_PhysicsSystem, &re::internal::introspectionInfoStorage<re::ecs2::PhysicsSystem>, 0);
      v3 = &unk_1EE187000;
      a2 = v8;
      a1 = v9;
    }
  }

  v4 = (v3[158] + 32);

  return re::ecs2::SystemRegistry::getSystem(a1, v4, a2);
}

uint64_t re::ecs2::PhysicsSystem::ecsToSim(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2, re::PhysicsSimulation *a3)
{
  (*(**(this + 35) + 56))(*(this + 35), 1);
  result = (*(**(this + 35) + 32))(*(this + 35), a2);
  if (result)
  {
    v7 = result;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v16, result, 0);
    if (v7 != v16 || v17 != 0xFFFFFFFFLL)
    {
      do
      {
        v9 = *(re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v16) + 16);
        if (v9)
        {
          re::PhysicsSimulation::deleteConstraintsMarkedForDeletion(v9);
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
      }

      while (v16 != v7 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
    }
  }

  v12 = *(this + 38);
  if (v12)
  {
    v13 = *(this + 39);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      result = (*(*v15 + 56))(v15, a2, a3);
      v14 -= 8;
    }

    while (v14);
  }

  if (!a3)
  {
    return (*(**(this + 35) + 48))(*(this + 35));
  }

  return result;
}

void re::ecs2::PhysicsSystem::willAddSystemToECSService(re::ecs2::PhysicsSystem *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v2);
  *(this + 35) = v3;
  if (v3)
  {
    *(this + 272) = (*(*v3 + 16))(v3);
    v4 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 36) = re::ServiceLocator::service<re::TransformService>(v4);
    v5 = *(this + 38);
    if (v5)
    {
      v6 = *(this + 39);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        (*(*v8 + 24))(v8, this);
        v7 -= 8;
      }

      while (v7);
    }

    v9 = (*(**(this + 5) + 32))(*(this + 5));
    v10 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v9);
    if (v10)
    {
      *&buf = this;
      *(&buf + 1) = re::ecs2::PhysicsSystem::onComponentUpdated;
      v22 = 0;
      v23 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::PhysicsSystem>(re::ecs2::PhysicsSystem *,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v10 + 88, &buf);
    }

    re::Defaults::BOOLValue("disableNonAuthoritativePhysics", v11, v20);
    if (v20[0] == 1)
    {
      re::ecs2::PhysicsSystem::s_disableNonAuthoritativePhysics = v20[1];
      v14 = *re::physicsLogObjects(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (re::ecs2::PhysicsSystem::s_disableNonAuthoritativePhysics)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "disableNonAuthoritativePhysics overriden via Defaults (%s)", &buf, 0xCu);
      }
    }

    re::Defaults::floatValue("networkPhysicsInterpStep", v13, v18);
    if (v18[0] == 1)
    {
      re::ecs2::PhysicsSystem::s_networkInterpStep = v19;
      v17 = *re::physicsLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = *&re::ecs2::PhysicsSystem::s_networkInterpStep;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "networkPhysicsInterpStep overriden via Defaults (%f)", &buf, 0xCu);
      }
    }
  }
}

uint64_t re::ServiceLocator::service<re::TransformService>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::TransformService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::TransformService>(0);
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

uint64_t re::ecs2::PhysicsSystem::onComponentUpdated(re::ecs2::PhysicsSystem *this, re::NetworkSystem *a2, re::ecs2::Component *a3)
{
  if (!*(a3 + 2))
  {
    return 0;
  }

  v4 = (*(*a3 + 40))(a3, a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  do
  {
    {
      v25 = v5;
      v6 = &unk_1EE187000;
      v11 = v10;
      v5 = v25;
      if (v11)
      {
        re::introspect<re::ecs2::TransformComponent>(BOOL)::info = re::ecs2::introspect_TransformComponent(0);
        v6 = &unk_1EE187000;
        v5 = v25;
      }
    }

    if (v5 == v6[115])
    {
      v20 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v20)
      {
        v21 = *(a3 + 2);
        v22 = *(a3 + 4);
        *(v20 + 48) = *(a3 + 3);
        *(v20 + 64) = v22;
        *(v20 + 32) = v21;
LABEL_37:
        re::ecs2::Component::markDirty(v20);
        return 0;
      }

      v20 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v20)
      {
        return 0;
      }

      v23 = *(v20 + 124) + 1;
LABEL_36:
      *(v20 + 124) = v23;
      goto LABEL_37;
    }

    v7 = *(v5 + 56);
    if (!v7)
    {
      break;
    }

    v8 = *(v5 + 64);
    while (1)
    {
      v9 = *v8;
      if (**v8 == 1 && v9[10] == 3)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    v5 = *(v9 + 2);
  }

  while (v5);
LABEL_15:
  if (*(a3 + 2))
  {
    v12 = (*(*a3 + 40))(a3);
    v13 = (*(*v12 + 48))(v12);
    v14 = &unk_1EE187000;
    while (1)
    {
      {
        v26 = v13;
        v14 = &unk_1EE187000;
        v19 = v18;
        v13 = v26;
        if (v19)
        {
          re::introspect<re::ecs2::MotionStateComponent>(BOOL)::info = re::ecs2::introspect_MotionStateComponent(0);
          v14 = &unk_1EE187000;
          v13 = v26;
        }
      }

      if (v13 == v14[106])
      {
        break;
      }

      v15 = *(v13 + 56);
      if (v15)
      {
        for (i = *(v13 + 64); ; ++i)
        {
          v17 = *i;
          if (**i == 1 && v17[10] == 3)
          {
            break;
          }

          if (!--v15)
          {
            return 0;
          }
        }

        v13 = *(v17 + 2);
        if (v13)
        {
          continue;
        }
      }

      return 0;
    }

    v20 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v20)
    {
      v23 = *(a3 + 80);
      if (*(v20 + 124) != v23)
      {
        goto LABEL_36;
      }
    }
  }

  return 0;
}

void re::ecs2::PhysicsSystem::willAddSceneToECSService(re::ecs2::PhysicsSystem *this, unint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = *(this + 35);
  if (v3)
  {
    v5 = (*(*v3 + 64))(v3);
    v6 = *(this + 38);
    if (v6)
    {
      v7 = *(this + 39);
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        v5 = (*(*v9 + 40))(v9, a2);
        v8 -= 8;
      }

      while (v8);
    }

    v59[0] = 0;
    v59[1] = 0;
    v60 = 1;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v64 = 0;
    v10 = *(a2 + 288);
    if (v10)
    {
      v88 = re::globalAllocators(v5)[2];
      v11 = (*(*v88 + 32))(v88, 32, 0);
      *v11 = &unk_1F5CD5248;
      v11[1] = this;
      v11[2] = re::ecs2::PhysicsSystem::onPhysicsOriginActivated;
      v11[3] = 0;
      v89 = v11;
      v12 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v87, re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v14 = v13;
      v15 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v15 = v12;
      v15[1] = v14;
      v16 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v87);
      v85 = re::globalAllocators(v16)[2];
      v17 = (*(*v85 + 32))(v85, 32, 0);
      *v17 = &unk_1F5CD52A0;
      v17[1] = this;
      v17[2] = re::ecs2::PhysicsSystem::onPhysicsOriginDeactivated;
      v17[3] = 0;
      v86 = v17;
      v18 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v84, re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v20 = v19;
      v21 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v21 = v18;
      v21[1] = v20;
      v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v84);
      v23 = *(this + 41);
      if (v23)
      {
        v24 = *(this + 42);
        v25 = 8 * v23;
        do
        {
          v26 = *v24;
          if (*(this + 272) == 1)
          {
            v82 = re::globalAllocators(v22)[2];
            v83 = 0;
            v27 = (*(*v82 + 32))(v82, 32, 0);
            *v27 = &unk_1F5CD5248;
            v27[1] = this;
            v27[2] = re::ecs2::PhysicsSystem::OnEventEnsurePhysicsSystemActive;
            v27[3] = 0;
            v83 = v27;
            v28 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v81, v26, 0);
            v30 = v29;
            v31 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
            *v31 = v28;
            v31[1] = v30;
            v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v81);
          }

          v79 = re::globalAllocators(v22)[2];
          v80 = 0;
          v32 = (*(*v79 + 32))(v79, 32, 0);
          *v32 = &unk_1F5CD52A0;
          v32[1] = this;
          v32[2] = re::ecs2::PhysicsSystem::onDeactivatePhysicsSubsystemComponent;
          v32[3] = 0;
          v80 = v32;
          v33 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v78, v26, 0);
          v35 = v34;
          v36 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
          *v36 = v33;
          v36[1] = v35;
          v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v78);
          ++v24;
          v25 -= 8;
        }

        while (v25);
      }

      v76 = re::globalAllocators(v22)[2];
      v37 = (*(*v76 + 32))(v76, 32, 0);
      *v37 = &unk_1F5CD52F8;
      v37[1] = this;
      v37[2] = re::ecs2::PhysicsSystem::onEntityReparented;
      v37[3] = 0;
      v77 = v37;
      v38 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v10, 0, v75, 0, 0);
      v40 = v39;
      v41 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v41 = v38;
      v41[1] = v40;
      v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v75);
      v43 = 0;
      v74[0] = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
      v74[1] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      do
      {
        v44 = v74[v43];
        v72 = re::globalAllocators(v42)[2];
        v73 = 0;
        v45 = (*(*v72 + 32))(v72, 32, 0);
        *v45 = &unk_1F5CD5248;
        v45[1] = this;
        v45[2] = re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentDidActivateEvent>;
        v45[3] = 0;
        v73 = v45;
        v46 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v71, v44, 0);
        v48 = v47;
        v49 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
        *v49 = v46;
        v49[1] = v48;
        v50 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v71);
        v69 = re::globalAllocators(v50)[2];
        v70 = 0;
        v51 = (*(*v69 + 32))(v69, 32, 0);
        *v51 = &unk_1F5CD52A0;
        v51[1] = this;
        v51[2] = re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentWillDeactivateEvent>;
        v51[3] = 0;
        v70 = v51;
        v52 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v68, v44, 0);
        v54 = v53;
        v55 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
        *v55 = v52;
        v55[1] = v54;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v68);
        ++v43;
      }

      while (v43 != 2);
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v65, this + 224, a2, v56 ^ (v56 >> 31));
      if (HIDWORD(v66) == 0x7FFFFFFF)
      {
        v57 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(this + 224, v66, v65);
        *(v57 + 16) = 0;
        v57 += 16;
        *(v57 - 8) = a2;
        *(v57 + 8) = 0;
        *(v57 + 16) = 1;
        *(v57 + 32) = 0;
        *(v57 + 40) = 0;
        *(v57 + 24) = 0;
        *(v57 + 48) = 0;
        re::BucketArray<RESubscriptionHandle,8ul>::swap(v57, v59);
        ++*(this + 66);
      }
    }

    re::BucketArray<RESubscriptionHandle,16ul>::deinit(v59);
    if (v59[0] && (v60 & 1) == 0)
    {
      (*(*v59[0] + 40))();
    }

    v58 = *(a2 + 376);
    re::ecs2::System::setTaskEnabled(this, v58, 1);

    re::ecs2::System::queueToRun(this, v58, 0.0);
  }
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsOriginActivated(re::ecs2::PhysicsSystem *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  re::ecs2::PhysicsSystem::onPhysicsOriginChanged(a1, *(v2 + 24), 0);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsOriginDeactivated(re::ecs2::PhysicsSystem *a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::PhysicsSystem::onPhysicsOriginChanged(a1, v5, v6);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::OnEventEnsurePhysicsSystemActive(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v4 = *(*(v3 + 24) + 376);
  re::ecs2::System::setTaskEnabled(a1, v4, 1);
  re::ecs2::System::queueToRun(a1, v4, 0.0);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onDeactivatePhysicsSubsystemComponent(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[38];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (a1[41] == v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(a3 + 8) == *(a1[42] + 8 * v4))
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }

    v5 = *(a1[39] + 8 * v4);
    (*(*v5 + 88))(v5);
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onEntityReparented(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((*(a3 + 8) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    v6 = v5;
    re::ecs2::RigidBodyComponent::teleport(v5);
    re::ecs2::Component::markDirty(v6);
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    (*(*v7 + 56))(v7, 1);
    v8 = *a3;
    v9 = *(a3 + 8);
    v10 = *(v9 + 32);
    v11 = re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(*(a1 + 280), v8);
    if (v11 != re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(*(a1 + 280), v10))
    {
      v12 = *(a1 + 304);
      if (v12)
      {
        v13 = *(a1 + 312);
        v14 = 8 * v12;
        do
        {
          v15 = *v13++;
          (*(*v15 + 80))(v15, v9);
          v14 -= 8;
        }

        while (v14);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 387) & 1) == 0)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      v4 = *(a1 + 312);
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;
        (*(*v6 + 80))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 387) & 1) == 0)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      v4 = *(a1 + 312);
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;
        (*(*v6 + 80))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return 0;
}

void re::ecs2::PhysicsSystem::willRemoveSystemFromECSService(re::ecs2::PhysicsSystem *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v2);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 46))
    {
      v5 = 0;
      do
      {
        v6 = (*(v4 + 48) + 32 * v5);
        if (*v6 == this)
        {
          if (!*(v4 + 108))
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v4 + 44, v5);
            continue;
          }

          v12[0] = 0;
          v7 = *v6;
          v14 = *(v6 + 1);
          v13 = v7;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v4 + 392), v12);
        }

        ++v5;
      }

      while (v5 < *(v4 + 46));
    }
  }

  *(this + 35) = 0;
  v8 = *(this + 38);
  if (v8)
  {
    v9 = *(this + 39);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      (*(*v11 + 32))(v11);
      v10 -= 8;
    }

    while (v10);
  }
}

uint64_t re::ecs2::PhysicsSystem::willRemoveSceneFromECSService(re::ecs2::PhysicsSystem *this, uint64_t a2)
{
  v4 = *(this + 38);
  if (v4)
  {
    v5 = *(this + 39);
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      (*(*v7 + 48))(v7, a2);
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *(this + 35);
  if (v8)
  {
    (*(*v8 + 72))(v8, a2);
  }

  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  result = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v20, this + 224, a2, v10);
  if (v22 != 0x7FFFFFFF)
  {
    v12 = *(a2 + 288);
    if (v12)
    {
      v13 = *(this + 30) + 80 * v22;
      v14 = *(v13 + 56);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v16 = re::BucketArray<RESubscriptionHandle,16ul>::operator[](v13 + 16, i);
          re::EventBus::unsubscribe(v12, *v16, *(v16 + 8));
        }
      }
    }

    result = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v20, this + 224, a2, v10);
    v17 = v22;
    if (v22 != 0x7FFFFFFF)
    {
      v18 = *(this + 30);
      v19 = *(v18 + 80 * v22) & 0x7FFFFFFF;
      if (v23 == 0x7FFFFFFF)
      {
        *(*(this + 29) + 4 * v21) = v19;
      }

      else
      {
        *(v18 + 80 * v23) = *(v18 + 80 * v23) & 0x80000000 | v19;
      }

      result = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(v18, v17);
      *(*(this + 30) + 80 * v17) = *(*(this + 30) + 80 * v17) & 0x80000000 | *(this + 65);
      *(this + 65) = v17;
      --*(this + 63);
      ++*(this + 66);
    }
  }

  return result;
}

void re::ecs2::PhysicsSystem::onPhysicsOriginChanged(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2, re::ecs2::PhysicsOriginComponent *a3)
{
  v127 = a3;
  (*(**(this + 35) + 56))(*(this + 35), 1);
  v5 = (*(**(this + 35) + 32))(*(this + 35), a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  re::StackScratchAllocator::StackScratchAllocator(v126);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v125 = 0x7FFFFFFFLL;
  if (v127)
  {
    v7 = &v127;
  }

  else
  {
    v7 = 0;
  }

  re::internal::findPhysicsOrigin(a2, v7, v127 != 0, *(this + 36), &v132);
  v121 = v132;
  v133 = __invert_f4(v132);
  v112 = v133.columns[1];
  v113 = v133.columns[0];
  v120[0] = v133.columns[0];
  v120[1] = v133.columns[1];
  v110 = v133.columns[3];
  v111 = v133.columns[2];
  v120[2] = v133.columns[2];
  v120[3] = v133.columns[3];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v132, v6, 0);
  v118 = v132.columns[0].i64[0];
  LODWORD(v119) = v132.columns[0].i32[2];
  if (v6 == v132.columns[0].i64[0] && v132.columns[0].u32[2] == 0xFFFFFFFFLL)
  {
    goto LABEL_108;
  }

  v108 = a2;
  v109 = this;
  do
  {
    v8 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v118);
    v9 = v8;
    v10 = *(v8 + 112);
    if (v10 != v121.columns[0].f32[0] && vabds_f32(v10, v121.columns[0].f32[0]) >= (((fabsf(v10) + fabsf(v121.columns[0].f32[0])) + 1.0) * 0.00001) || (v11 = *(v8 + 116), v11 != v121.columns[0].f32[1]) && vabds_f32(v11, v121.columns[0].f32[1]) >= (((fabsf(v11) + fabsf(v121.columns[0].f32[1])) + 1.0) * 0.00001) || (v12 = *(v8 + 120), v12 != v121.columns[0].f32[2]) && vabds_f32(v12, v121.columns[0].f32[2]) >= (((fabsf(v12) + fabsf(v121.columns[0].f32[2])) + 1.0) * 0.00001) || (v13 = *(v8 + 124), v13 != v121.columns[0].f32[3]) && vabds_f32(v13, v121.columns[0].f32[3]) >= (((fabsf(v13) + fabsf(v121.columns[0].f32[3])) + 1.0) * 0.00001) || (v14 = *(v8 + 128), v14 != v121.columns[1].f32[0]) && vabds_f32(v14, v121.columns[1].f32[0]) >= (((fabsf(v14) + fabsf(v121.columns[1].f32[0])) + 1.0) * 0.00001) || (v15 = *(v8 + 132), v15 != v121.columns[1].f32[1]) && vabds_f32(v15, v121.columns[1].f32[1]) >= (((fabsf(v15) + fabsf(v121.columns[1].f32[1])) + 1.0) * 0.00001) || (v16 = *(v8 + 136), v16 != v121.columns[1].f32[2]) && vabds_f32(v16, v121.columns[1].f32[2]) >= (((fabsf(v16) + fabsf(v121.columns[1].f32[2])) + 1.0) * 0.00001) || (v17 = *(v8 + 140), v17 != v121.columns[1].f32[3]) && vabds_f32(v17, v121.columns[1].f32[3]) >= (((fabsf(v17) + fabsf(v121.columns[1].f32[3])) + 1.0) * 0.00001) || (v18 = *(v8 + 144), v18 != v121.columns[2].f32[0]) && vabds_f32(v18, v121.columns[2].f32[0]) >= (((fabsf(v18) + fabsf(v121.columns[2].f32[0])) + 1.0) * 0.00001) || (v19 = *(v8 + 148), v19 != v121.columns[2].f32[1]) && vabds_f32(v19, v121.columns[2].f32[1]) >= (((fabsf(v19) + fabsf(v121.columns[2].f32[1])) + 1.0) * 0.00001) || (v20 = *(v8 + 152), v20 != v121.columns[2].f32[2]) && vabds_f32(v20, v121.columns[2].f32[2]) >= (((fabsf(v20) + fabsf(v121.columns[2].f32[2])) + 1.0) * 0.00001) || (v21 = *(v8 + 156), v21 != v121.columns[2].f32[3]) && vabds_f32(v21, v121.columns[2].f32[3]) >= (((fabsf(v21) + fabsf(v121.columns[2].f32[3])) + 1.0) * 0.00001) || (v22 = *(v8 + 160), v22 != v121.columns[3].f32[0]) && vabds_f32(v22, v121.columns[3].f32[0]) >= (((fabsf(v22) + fabsf(v121.columns[3].f32[0])) + 1.0) * 0.00001) || (v23 = *(v8 + 164), v23 != v121.columns[3].f32[1]) && vabds_f32(v23, v121.columns[3].f32[1]) >= (((fabsf(v23) + fabsf(v121.columns[3].f32[1])) + 1.0) * 0.00001) || (v24 = *(v8 + 168), v24 != v121.columns[3].f32[2]) && vabds_f32(v24, v121.columns[3].f32[2]) >= (((fabsf(v24) + fabsf(v121.columns[3].f32[2])) + 1.0) * 0.00001) || (v25 = *(v8 + 172), v25 != v121.columns[3].f32[3]) && vabds_f32(v25, v121.columns[3].f32[3]) >= (((fabsf(v25) + fabsf(v121.columns[3].f32[3])) + 1.0) * 0.00001))
    {
      v26 = 0;
      v27 = *(v8 + 128);
      v28 = *(v8 + 144);
      v29 = *(v8 + 160);
      v128 = *(v8 + 112);
      v129 = v27;
      v130 = v28;
      v131 = v29;
      do
      {
        v132.columns[v26 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v128 + v26 * 4))), v112, *&v128.f32[v26], 1), v111, *(&v128 + v26 * 4), 2), v110, *(&v128 + v26 * 4), 3);
        v26 += 4;
      }

      while (v26 != 16);
      v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
      v31 = v30 ^ (v30 >> 31);
      if (v122)
      {
        v32 = v31 % DWORD2(v123);
        v33 = *(*(&v122 + 1) + 4 * v32);
        if (v33 != 0x7FFFFFFF)
        {
          while (*(v123 + 96 * v33 + 8) != v8)
          {
            LODWORD(v33) = *(v123 + 96 * v33) & 0x7FFFFFFF;
            if (v33 == 0x7FFFFFFF)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_49;
        }

LABEL_46:
        v114 = v132.columns[3];
        v115 = v132.columns[2];
        v116 = v132.columns[1];
        v117 = v132.columns[0];
      }

      else
      {
        v114 = v132.columns[3];
        v115 = v132.columns[2];
        v116 = v132.columns[1];
        v117 = v132.columns[0];
        LODWORD(v32) = 0;
      }

      v34 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v122, v32, v31);
      *(v34 + 8) = v9;
      *(v34 + 16) = v117;
      *(v34 + 32) = v116;
      *(v34 + 48) = v115;
      *(v34 + 64) = v114;
      ++HIDWORD(v125);
LABEL_49:
      re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v9, &v121);
    }

    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v118);
  }

  while (v118 != v6 || v119 != 0xFFFF || WORD1(v119) != 0xFFFF);
  if (HIDWORD(v123))
  {
    v35 = *(this + 35);
    v36 = (*(*v35 + 24))(v35);
    v37 = a2;
    v38 = (*(*v35 + 40))(v35, a2);
    v118 = v36;
    v119 = v38;
    v39 = *(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    v40 = *(a2 + 28);
    if (v40 > v39)
    {
      v41 = *(*(a2 + 30) + 8 * v39);
      if (v41)
      {
        v42 = *(v41 + 384);
        if (v42)
        {
          v43 = *(v41 + 400);
          v44 = &v43[v42];
          v45 = DWORD2(v123);
          v46 = v122;
          v47 = v123;
          do
          {
            v48 = *v43;
            v49 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v43 + 16));
            if (v46)
            {
              v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) >> 27));
              v51 = *(*(&v46 + 1) + 4 * ((v50 ^ (v50 >> 31)) % v45));
              if (v51 != 0x7FFFFFFF)
              {
                while (*(v47 + 96 * v51 + 8) != v49)
                {
                  v51 = *(v47 + 96 * v51) & 0x7FFFFFFF;
                  if (v51 == 0x7FFFFFFF)
                  {
                    goto LABEL_65;
                  }
                }

                v52 = *(v48 + 96);
                if (v52)
                {
                  re::internal::getPhysicsOriginFromTransform(*(v48 + 16), *(v109 + 36), v120, &v132);
                  v53 = *(v52 + 16);
                  v128 = v132.columns[2];
                  v129 = v132.columns[1];
                  v54 = v132.columns[1];
                  v53[1] = v132.columns[2];
                  v53[2] = v54;
                  (*(v53->i64[0] + 64))(v53, &v128);
                  v128 = vdupq_lane_s32(*v132.columns[0].f32, 0);
                  re::CollisionObject::setScale(v52, &v128);
                }
              }
            }

LABEL_65:
            ++v43;
          }

          while (v43 != v44);
          v37 = v108;
          v40 = *(v108 + 28);
        }
      }
    }

    v55 = *(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v55)
    {
      v56 = *(*(v37 + 30) + 8 * v55);
      if (v56)
      {
        v57 = *(v56 + 384);
        if (v57)
        {
          v58 = *(v56 + 400);
          v59 = 8 * v57;
          do
          {
            v60 = *v58;
            v61 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v58 + 16));
            v62 = re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(&v122, v61);
            if (v62)
            {
              v63 = *(v60 + 336);
              if (v63)
              {
                v64 = v62;
                v65.i64[0] = (*(*v63 + 216))(v63);
                v65.i64[1] = v66;
                v67.i64[0] = *v64;
                v68.i64[0] = *(v64 + 16);
                v69.i64[0] = *(v64 + 32);
                v67.i32[2] = *(v64 + 8);
                v68.i32[2] = *(v64 + 24);
                v69.i32[2] = *(v64 + 40);
                v132.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v65.f32[0]), v68, *v65.f32, 1), v69, v65, 2);
                (*(*v63 + 224))(v63, &v132);
                v70.i64[0] = (*(*v63 + 232))(v63);
                v70.i64[1] = v71;
                v72.i64[0] = *v64;
                v73.i64[0] = *(v64 + 16);
                v74.i64[0] = *(v64 + 32);
                v72.i32[2] = *(v64 + 8);
                v73.i32[2] = *(v64 + 24);
                v74.i32[2] = *(v64 + 40);
                v132.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v70.f32[0]), v73, *v70.f32, 1), v74, v70, 2);
                (*(*v63 + 240))(v63, &v132);
                (*(*v63 + 312))(v63);
              }
            }

            ++v58;
            v59 -= 8;
          }

          while (v59);
          v40 = *(v37 + 28);
        }
      }
    }

    v75 = *(re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v75)
    {
      v76 = *(*(v37 + 30) + 8 * v75);
      if (v76)
      {
        v77 = *(v76 + 384);
        if (v77)
        {
          v78 = *(v76 + 400);
          v79 = &v78[v77];
          v80 = DWORD2(v123);
          v81 = v122;
          v82 = v123;
          do
          {
            v83 = *v78;
            v84 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v78 + 16));
            if (v81)
            {
              v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
              v86 = *(*(&v81 + 1) + 4 * ((v85 ^ (v85 >> 31)) % v80));
              if (v86 != 0x7FFFFFFF)
              {
                while (*(v82 + 96 * v86 + 8) != v84)
                {
                  v86 = *(v82 + 96 * v86) & 0x7FFFFFFF;
                  if (v86 == 0x7FFFFFFF)
                  {
                    goto LABEL_87;
                  }
                }

                v87 = *(v83 + 80);
                if (v87)
                {
                  v88 = *(v83 + 16);
                  v89 = *(v87 + 136);
                  re::internal::getPhysicsOriginFromTransform(v88, *(v109 + 36), v120, &v132);
                  v90 = *(v89 + 16);
                  v128 = v132.columns[2];
                  v129 = v132.columns[1];
                  v91 = v132.columns[1];
                  v90[1] = v132.columns[2];
                  v90[2] = v91;
                  (*(v90->i64[0] + 64))(v90, &v128);
                  v128 = vdupq_lane_s32(*v132.columns[0].f32, 0);
                  re::CollisionObject::setScale(v89, &v128);
                }
              }
            }

LABEL_87:
            ++v78;
          }

          while (v78 != v79);
          v37 = v108;
          v40 = *(v108 + 28);
        }
      }
    }

    v92 = *(re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v92)
    {
      v93 = *(*(v37 + 30) + 8 * v92);
      if (v93)
      {
        v94 = *(v93 + 384);
        if (v94)
        {
          v95 = *(v93 + 400);
          v96 = 8 * v94;
          do
          {
            v97 = *v95;
            v98 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *&(*v95)[2]);
            v99 = re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(&v122, v98);
            if (v99)
            {
              v100.i64[0] = *v99;
              v101.i64[0] = *(v99 + 16);
              v102.i64[0] = *(v99 + 32);
              v100.i32[2] = *(v99 + 8);
              v101.i32[2] = *(v99 + 24);
              v102.i32[2] = *(v99 + 40);
              v103 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*v97[16].f32)), v101, v97[16], 1), v102, *v97[16].f32, 2);
              *v97[16].f32 = v103;
              v103.i64[0] = *v99;
              v101.i64[0] = *(v99 + 16);
              v102.i64[0] = *(v99 + 32);
              v103.i32[2] = *(v99 + 8);
              v101.i32[2] = *(v99 + 24);
              v102.i32[2] = *(v99 + 40);
              *v97[20].f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*v97[20].f32)), v101, v97[20], 1), v102, *v97[20].f32, 2);
            }

            ++v95;
            v96 -= 8;
          }

          while (v96);
        }
      }
    }

    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v132, v6, 0);
    if (v6 != v132.columns[0].i64[0] || v132.columns[0].u32[2] != 0xFFFFFFFFLL)
    {
      do
      {
        v105 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v132);
        re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v105, &v121);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v132);
      }

      while (v132.columns[0].i64[0] != v6 || v132.columns[0].u16[4] != 0xFFFF || v132.columns[0].u16[5] != 0xFFFF);
    }
  }

LABEL_108:
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v122);
  re::StackScratchAllocator::~StackScratchAllocator(v126);
}

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(unsigned __int16 *a1)
{
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 272 * a1[4];
}

uint64_t re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(re::ecs2::PhysicsSimulationMapping *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  result = *this;
  if (result)
  {
    if (*(this + 1))
    {
      result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(result, &v4);
      if (result)
      {
        return re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(*(this + 1), *(result + 24));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v6 + 16;
  }
}

uint64_t re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(re::ecs2::PhysicsSimulationService *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = (*(*this + 24))(this);
  v8 = (*(*this + 40))(this, v6);
  v10[0] = v7;
  v10[1] = v8;
  return re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v10, a2);
}

uint64_t re::ecs2::PhysicsSystem::update(uint64_t result, uint64_t a2, void *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = result;
    if (*(result + 280))
    {
      v5 = *&a2;
      re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v68);
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v67, 3043, v3);
      v64 = a3;
      v6 = a3[25];
      if (v6)
      {
        v7 = a3[27];
        v8 = &v7[v6];
        v9 = v5;
        while (1)
        {
          v10 = *(v3 + 328);
          if (v10)
          {
            break;
          }

LABEL_11:
          (*(**(v3 + 280) + 56))(*(v3 + 280), 0);
LABEL_12:
          if (++v7 == v8)
          {
            goto LABEL_47;
          }
        }

        v11 = *v7;
        v12 = *(v3 + 336);
        v13 = 8 * v10;
        while (1)
        {
          v14 = *(*v12 + 16);
          if ((*v7)[28] > v14)
          {
            v15 = *((*v7)[30] + 8 * v14);
            if (v15)
            {
              if (*(v15 + 384))
              {
                break;
              }
            }
          }

          v12 += 8;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_11;
          }
        }

        v16 = physx::shdfnd::g_isLockingEnabled;
        v66 = physx::shdfnd::g_alwaysUseLocking;
        if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
        {
          physx::shdfnd::g_isLockingEnabled = 0;
        }

        v65 = v16;
        re::ecs2::PhysicsSystem::ecsToSim(v3, v11, 0);
        v17 = *(v3 + 272);
        v18 = (*(**(v3 + 280) + 32))(*(v3 + 280), v11);
        v19 = v18;
        if (v17 == 1)
        {
          if (v18)
          {
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v69, v18, 0);
            v73 = v69;
            v74 = DWORD2(v69);
            if (v19 != v69 || DWORD2(v69) != 0xFFFFFFFFLL)
            {
              do
              {
                v21 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v73);
                v22 = *(v21 + 16);
                if (v22)
                {
                  v23 = v21;
                  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v72, 7000, v3);
                  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v71);
                  v25 = *(v23 + 40);
                  if (v25)
                  {
                    *&v69 = v3;
                    *(&v69 + 1) = v11;
                    v70 = 0;
                    objc_copyWeak(&v70, (v23 + 56));
                    *(v25 + 8) = v69;
                    re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=((v25 + 24), &v70);
                    objc_destroyWeak(&v70);
                  }

                  hasCollisionEventSubscriptions = re::CollisionEventDelegate::hasCollisionEventSubscriptions(v11[36], v24);
                  v27 = *(v22 + 7);
                  LOBYTE(v69) = hasCollisionEventSubscriptions;
                  (*(*v27 + 216))(v27, &v69);
                  re::PhysicsSimulation::update(v22, v9);
                  re::ProfilerTimeGuard<(re::ProfilerStatistic)19>::end(v71);
                  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v72);
                }

                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v73);
              }

              while (v73 != v19 || v74 != 0xFFFF || HIWORD(v74) != 0xFFFF);
            }

            (*(**(v3 + 280) + 48))(*(v3 + 280));
          }
        }

        else if (v18)
        {
          if (*(v18 + 40))
          {
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v69, v18, 0);
            v73 = v69;
            v74 = DWORD2(v69);
            v30 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v73);
            v31 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v30);
            if (v31)
            {
              v32 = *(v3 + 304);
              if (!v32)
              {
LABEL_45:
                if (physx::shdfnd::g_isLockingEnabled != ((v66 | v65) & 1))
                {
                  physx::shdfnd::g_isLockingEnabled = (v66 | v65) & 1;
                }

                goto LABEL_12;
              }

              v33 = v31;
              v34 = *(v3 + 312);
              v35 = 8 * v32;
              do
              {
                v36 = *v34++;
                (*(*v36 + 64))(v36, v33, v11);
                v35 -= 8;
              }

              while (v35);
            }
          }
        }

        v37 = *(v3 + 304);
        if (v37)
        {
          v38 = *(v3 + 312);
          v39 = 8 * v37;
          do
          {
            v40 = *v38++;
            (*(*v40 + 72))(v40, v11);
            v39 -= 8;
          }

          while (v39);
        }

        goto LABEL_45;
      }

LABEL_47:
      if (*(v3 + 272))
      {
        v41 = a3[2];
        v42 = (*(**(v3 + 40) + 104))(*(v3 + 40), v64[2]);
        if (v42)
        {
          v43 = v42;
          v44 = re::ecs2::System::taskHandle(v3, v41);
          if (v44 != -1)
          {
            re::DynamicBitset<unsigned long long,64ul>::setBit(v43 + 344, v44);
          }
        }

        v45 = (*(**(v3 + 40) + 304))(*(v3 + 40), v41);
        v46 = *(v45 + 200);
        if (v46)
        {
          v47 = 0;
          v48 = *(v45 + 216);
          v49 = v48 + 8 * v46;
          v50 = 3.4028e38;
          do
          {
            v51 = *(v3 + 328);
            if (v51)
            {
              v52 = *(v3 + 336);
              v53 = 8 * v51;
              while (1)
              {
                v54 = *(*v52 + 16);
                if (*(*v48 + 224) > v54)
                {
                  v55 = *(*(*v48 + 240) + 8 * v54);
                  if (v55)
                  {
                    if (*(v55 + 384))
                    {
                      break;
                    }
                  }
                }

                v52 += 8;
                v53 -= 8;
                if (!v53)
                {
                  goto LABEL_78;
                }
              }

              v56 = (*(**(v3 + 280) + 32))(*(v3 + 280));
              if (v56)
              {
                v57 = v56;
                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v69, v56, 0);
                if (v57 != v69 || DWORD2(v69) != 0xFFFFFFFFLL)
                {
                  do
                  {
                    v59 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v69);
                    v60 = *(v59 + 16);
                    if (v60)
                    {
                      if ((*(*v60 + 104))(*(v59 + 16)))
                      {
                        v61 = *(v60 + 888);
                        if (v50 > (*(v60 + 68) - v61))
                        {
                          v50 = *(v60 + 68) - v61;
                        }
                      }
                    }

                    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v69);
                  }

                  while (v69 != v57 || WORD4(v69) != 0xFFFF || WORD5(v69) != 0xFFFF);
                }
              }

              v47 = 1;
            }

LABEL_78:
            v48 += 8;
          }

          while (v48 != v49);
          re::ecs2::System::setTaskEnabled(v3, v41, v47 & 1);
          if (v50 != 3.4028e38)
          {
            re::ecs2::System::queueToRun(v3, v41, v50);
          }
        }

        else
        {
          re::ecs2::System::setTaskEnabled(v3, v41, 0);
        }
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v67);
      return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v68);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_PhysicsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_153, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_153))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F8D8, "PhysicsSystem");
    __cxa_guard_release(&_MergedGlobals_153);
  }

  return &unk_1EE19F8D8;
}

void re::ecs2::initInfo_PhysicsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x21255BB4348EC66CLL;
  v6[1] = "PhysicsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PhysicsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PhysicsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PhysicsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4308;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4308;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v2);
  }
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4390;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD43E8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4440;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4498;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4390;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD43E8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4440;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4498;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD43E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD43E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4440;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4440;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4498;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4498;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD44F0;
  a1[31] = &unk_1F5CEDE68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD44F0;
  a1[31] = &unk_1F5CEDE68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::ColliderComponent::removeFromSimulation(v2);
  }
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4578;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD45D0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4628;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4680;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4578;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD45D0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4628;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4680;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4578;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4578;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD45D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD45D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD46D8;
  a1[31] = &unk_1F5CF7D80;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD46D8;
  a1[31] = &unk_1F5CF7D80;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a3;
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v9);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v5 + 8));
  v7 = *(v6 + 48);
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v6 + 16) + 8, v7);
  if (*(v8 + 40))
  {
    v9[0] = 0;
    v9[1] = 0;
    re::ecs2::RigidBodyComponentStateImpl::simToECS(a1 + 248, a2, v9, v6, v7, v8);
  }
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::RigidBodyComponent::removeFromSimulation(v2);
  }
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4760;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD47B8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4810;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4868;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4760;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD47B8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4810;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4868;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4760;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4760;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD47B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD47B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4810;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4810;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4868;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4868;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD48C0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD48C0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

re *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v3 = result;
    for (i = *(result + 18); i; --i)
    {
      result = re::ecs2::ForceEffectComponent::removeDefinitionLast(v3, *(v3 + 80));
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4948;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD49A0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD49F8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4A50;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4948;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD49A0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD49F8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4A50;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4948;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4948;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD49A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD49A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD49F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD49F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4A50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4A50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4AA8;
  a1[31] = &unk_1F5CD5350;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4AA8;
  a1[31] = &unk_1F5CD5350;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3 + 16, 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::registerScene(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
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
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v40);
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
  v14 = *(a1 + 48);
  *&v47 = 0;
  v15 = *(a1 + 16);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
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

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
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
  v23 = *(a1 + 48);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::init(v24, a1 + 8, v48[0]);
  *&v57[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), v48, v57);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 3; j != 7; ++j)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(v7[2], v7[j], v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {

    re::ecs2::BallSocketJointComponent::removeFromSimulation(v2);
  }
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::BallSocketJointComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 3;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(a2[2], a2[v6], v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      ++v6;
    }

    while (v6 != 7);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::BallSocketJointComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD4B30;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD4B88;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4BE0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4C38;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CD4B30;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD4B88;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD4BE0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD4C38;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BallSocketJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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