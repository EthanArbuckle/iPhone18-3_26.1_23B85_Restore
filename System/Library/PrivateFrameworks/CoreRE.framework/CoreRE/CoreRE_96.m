uint64_t re::ecs2::ComponentType<re::ecs2::ShadowScopeComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A26E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A26E0))
  {
    qword_1EE1A26D8 = re::ecs2::introspect_ShadowScopeComponent(0);
    __cxa_guard_release(&qword_1EE1A26E0);
  }

  return qword_1EE1A26D8;
}

__n128 re::ecs2::ComponentType<re::ecs2::ShadowScopeComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ShadowScopeComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6748;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::ShadowScopeComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ShadowScopeComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE67B8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6898;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE6920;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A26F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A26F0))
  {
    qword_1EE1A26E8 = re::ecs2::introspect_DynamicLightShadowComponent(0);
    __cxa_guard_release(&qword_1EE1A26F0);
  }

  return qword_1EE1A26E8;
}

__n128 re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::DynamicLightShadowComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6828;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::DynamicLightShadowComponent::~DynamicLightShadowComponent(re::ecs2::DynamicLightShadowComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::DynamicLightShadowComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::DynamicLightShadowComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE6920;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 72, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6A00;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE6A88;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2700))
  {
    qword_1EE1A26F8 = re::ecs2::introspect_MaterialRenderStateArrayComponent(0);
    __cxa_guard_release(&qword_1EE1A2700);
  }

  return qword_1EE1A26F8;
}

__n128 re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MaterialRenderStateArrayComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6990;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::MaterialRenderStateArrayComponent::~MaterialRenderStateArrayComponent(re::ecs2::MaterialRenderStateArrayComponent *this)
{
  *this = &unk_1F5CE6A00;
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CE6A00;
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::MaterialRenderStateArrayComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::MaterialRenderStateArrayComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE6A88;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginRefComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 7), 48, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6B68;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE6BF0;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2710))
  {
    qword_1EE1A2708 = re::ecs2::introspect_ClientWorldOriginRefComponent(0);
    __cxa_guard_release(&qword_1EE1A2710);
  }

  return qword_1EE1A2708;
}

__n128 re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientWorldOriginRefComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6AF8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::ClientWorldOriginRefComponent::~ClientWorldOriginRefComponent(re::ecs2::ClientWorldOriginRefComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::ClientWorldOriginRefComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ClientWorldOriginRefComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE6BF0;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ClientAnchorSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 96, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6CD0;
  *(v3 + 25) = 0;
  *(v3 + 32) = xmmword_1E3047670;
  *(v3 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v3 + 64) = xmmword_1E30476A0;
  *(v3 + 80) = xmmword_1E30474D0;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE6D58;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2720))
  {
    qword_1EE1A2718 = re::ecs2::introspect_ClientAnchorSyncComponent(0);
    __cxa_guard_release(&qword_1EE1A2720);
  }

  return qword_1EE1A2718;
}

__n128 re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientAnchorSyncComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6C60;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::ClientAnchorSyncComponent::~ClientAnchorSyncComponent(re::ecs2::ClientAnchorSyncComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::ClientAnchorSyncComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ClientAnchorSyncComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE6D58;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6E38;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE6EC0;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2730))
  {
    qword_1EE1A2728 = re::ecs2::introspect_PreviewSupportComponent(0);
    __cxa_guard_release(&qword_1EE1A2730);
  }

  return qword_1EE1A2728;
}

__n128 re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::PreviewSupportComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6DC8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::PreviewSupportComponent::~PreviewSupportComponent(re::ecs2::PreviewSupportComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::PreviewSupportComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::PreviewSupportComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE6EC0;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6FA0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7028;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2740))
  {
    qword_1EE1A2738 = re::ecs2::introspect_SelectableSceneContentIdentifierComponent(0);
    __cxa_guard_release(&qword_1EE1A2740);
  }

  return qword_1EE1A2738;
}

__n128 re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SelectableSceneContentIdentifierComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE6F30;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SelectableSceneContentIdentifierComponent::~SelectableSceneContentIdentifierComponent(re::ecs2::SelectableSceneContentIdentifierComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::SelectableSceneContentIdentifierComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SelectableSceneContentIdentifierComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7028;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::BillboardComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::BillboardComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::BillboardComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::BillboardComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::BillboardComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 96, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7108;
  result = 0.0078125;
  *(v3 + 32) = xmmword_1E3047680;
  *(v3 + 48) = xmmword_1E30476A0;
  *(v3 + 64) = xmmword_1E3047680;
  *(v3 + 80) = 1065353216;
  *(v3 + 84) = 1;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::BillboardComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7190;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::BillboardComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2750))
  {
    qword_1EE1A2748 = re::ecs2::introspect_BillboardComponent(0);
    __cxa_guard_release(&qword_1EE1A2750);
  }

  return qword_1EE1A2748;
}

__n128 re::ecs2::ComponentType<re::ecs2::BillboardComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::BillboardComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7098;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::BillboardComponent::~BillboardComponent(re::ecs2::BillboardComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::BillboardComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::BillboardComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7190;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 112, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD7A28;
  *(v3 + 32) = xmmword_1E3047670;
  *(v3 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v3 + 64) = xmmword_1E30476A0;
  *(v3 + 80) = xmmword_1E30474D0;
  *(v3 + 96) = 0;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7270;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2760))
  {
    qword_1EE1A2758 = re::ecs2::introspect_SceneSpaceRootComponent(0);
    __cxa_guard_release(&qword_1EE1A2760);
  }

  return qword_1EE1A2758;
}

__n128 re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneSpaceRootComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7200;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7270;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7350;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE73D8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2770))
  {
    qword_1EE1A2768 = re::ecs2::introspect_ImmersiveSpaceTrackerComponent(0);
    __cxa_guard_release(&qword_1EE1A2770);
  }

  return qword_1EE1A2768;
}

__n128 re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImmersiveSpaceTrackerComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE72E0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::ImmersiveSpaceTrackerComponent::~ImmersiveSpaceTrackerComponent(re::ecs2::ImmersiveSpaceTrackerComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE73D8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

id re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::doMakeComponent@<X0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 960, 0);
  bzero(v2, 0x3C0uLL);
  ArcSharedObject::ArcSharedObject(v2, 0);
  v2[2] = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE74B8;
  *(v2 + 26) = 0x3000100010001;
  *(v2 + 17) = 4;
  *(v2 + 36) = xmmword_1E30747A0;
  *(v2 + 52) = 0x3E4CCCCD3F800000;
  *(v2 + 60) = 0;
  *(v2 + 16) = 0;
  *(v2 + 34) = 1;
  *(v2 + 9) = re::ecs2::UILayerGeometryComponent::kInOutUVMinMax;
  *(v2 + 11) = xmmword_1E30747B0;
  *(v2 + 26) = 0;
  *(v2 + 108) = 0;
  *(v2 + 110) = 0x3000100010001;
  *(v2 + 59) = 4;
  *(v2 + 15) = xmmword_1E30747A0;
  v2[17] = 0x3E4CCCCD3F800000;
  *(v2 + 144) = 0;
  *(v2 + 37) = 0;
  *(v2 + 76) = 1;
  *(v2 + 10) = re::ecs2::UILayerGeometryComponent::kInOutUVMinMax;
  *(v2 + 11) = xmmword_1E30747B0;
  *(v2 + 48) = 0;
  re::GeomMesh::GeomMesh((v2 + 25), 0);
  *(v2 + 117) = 0u;
  result = objc_initWeak(v2 + 119, 0);
  *a1 = v2;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7540;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2780))
  {
    qword_1EE1A2778 = re::ecs2::introspect_UILayerGeometryComponent(0);
    __cxa_guard_release(&qword_1EE1A2780);
  }

  return qword_1EE1A2778;
}

__n128 re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UILayerGeometryComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7448;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::UILayerGeometryComponent::~UILayerGeometryComponent(re::ecs2::UILayerGeometryComponent *this)
{
  objc_destroyWeak(this + 119);
  *(this + 119) = 0;
  re::GeomMesh::~GeomMesh(this + 25);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  objc_destroyWeak(this + 119);
  *(this + 119) = 0;
  re::GeomMesh::~GeomMesh(this + 25);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::UILayerGeometryComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::UILayerGeometryComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7540;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::UIShadowConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7620;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE76A8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2790))
  {
    qword_1EE1A2788 = re::ecs2::introspect_UIShadowConfigurationComponent(0);
    __cxa_guard_release(&qword_1EE1A2790);
  }

  return qword_1EE1A2788;
}

__n128 re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIShadowConfigurationComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE75B0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::UIShadowConfigurationComponent::~UIShadowConfigurationComponent(re::ecs2::UIShadowConfigurationComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::UIShadowConfigurationComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::UIShadowConfigurationComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE76A8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

id re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::doMakeComponent@<X0>(ArcSharedObject **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::UIGroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 48, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7788;
  *(v3 + 32) = 0;
  result = objc_initWeak((v3 + 40), 0);
  *a1 = v2;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7810;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27A0))
  {
    qword_1EE1A2798 = re::ecs2::introspect_UIGroundingShadowComponent(0);
    __cxa_guard_release(&qword_1EE1A27A0);
  }

  return qword_1EE1A2798;
}

__n128 re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIGroundingShadowComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7718;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::UIGroundingShadowComponent::~UIGroundingShadowComponent(id *this)
{
  objc_destroyWeak(this + 5);
  this[5] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  objc_destroyWeak(this + 5);
  this[5] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::UIGroundingShadowComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::UIGroundingShadowComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7810;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 40, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE78F0;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7978;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27B0))
  {
    qword_1EE1A27A8 = re::ecs2::introspect_UIShadowComponent(0);
    __cxa_guard_release(&qword_1EE1A27B0);
  }

  return qword_1EE1A27A8;
}

__n128 re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::UIShadowComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7880;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::UIShadowComponent::~UIShadowComponent(re::ecs2::UIShadowComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::UIShadowComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::UIShadowComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7978;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::ImagePresentationComponent *re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::doMakeComponent@<X0>(re::ecs2::ImagePresentationComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 368, 0);
  result = re::ecs2::ImagePresentationComponent::ImagePresentationComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7A58;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27C0))
  {
    qword_1EE1A27B8 = re::ecs2::introspect_ImagePresentationComponent(0);
    __cxa_guard_release(&qword_1EE1A27C0);
  }

  return qword_1EE1A27B8;
}

__n128 re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImagePresentationComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE79E8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::ImagePresentationComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ImagePresentationComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7A58;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::ImagePresentationStatusComponent *re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::doMakeComponent@<X0>(re::ecs2::ImagePresentationStatusComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 168, 0);
  result = re::ecs2::ImagePresentationStatusComponent::ImagePresentationStatusComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7B38;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27D0))
  {
    qword_1EE1A27C8 = re::ecs2::introspect_ImagePresentationStatusComponent(0);
    __cxa_guard_release(&qword_1EE1A27D0);
  }

  return qword_1EE1A27C8;
}

__n128 re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ImagePresentationStatusComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7AC8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::ImagePresentationStatusComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ImagePresentationStatusComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7B38;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::SpatialMediaComponent *re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::doMakeComponent@<X0>(re::ecs2::SpatialMediaComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 112, 0);
  result = re::ecs2::SpatialMediaComponent::SpatialMediaComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7C18;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27E0))
  {
    qword_1EE1A27D8 = re::ecs2::introspect_SpatialMediaComponent(0);
    __cxa_guard_release(&qword_1EE1A27E0);
  }

  return qword_1EE1A27D8;
}

__n128 re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SpatialMediaComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7BA8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::SpatialMediaComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SpatialMediaComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7C18;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::SpatialMediaStatusComponent *re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::doMakeComponent@<X0>(re::ecs2::SpatialMediaStatusComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 240, 0);
  result = re::ecs2::SpatialMediaStatusComponent::SpatialMediaStatusComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7CF8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A27F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A27F0))
  {
    qword_1EE1A27E8 = re::ecs2::introspect_SpatialMediaStatusComponent(0);
    __cxa_guard_release(&qword_1EE1A27F0);
  }

  return qword_1EE1A27E8;
}

__n128 re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SpatialMediaStatusComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7C88;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::SpatialMediaStatusComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SpatialMediaStatusComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7CF8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::MXIComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::MXIComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::MXIComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::MXIComponent *re::ecs2::ComponentType<re::ecs2::MXIComponent>::doMakeComponent@<X0>(re::ecs2::MXIComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 800, 0);
  result = re::ecs2::MXIComponent::MXIComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::MXIComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7DD8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MXIComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2800))
  {
    qword_1EE1A27F8 = re::ecs2::introspect_MXIComponent(0);
    __cxa_guard_release(&qword_1EE1A2800);
  }

  return qword_1EE1A27F8;
}

__n128 re::ecs2::ComponentType<re::ecs2::MXIComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MXIComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7D68;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::MXIComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::MXIComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7DD8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::FrameCountComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 40, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7EB8;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE7F40;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2810))
  {
    qword_1EE1A2808 = re::ecs2::introspect_FrameCountComponent(0);
    __cxa_guard_release(&qword_1EE1A2810);
  }

  return qword_1EE1A2808;
}

__n128 re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::FrameCountComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7E48;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::FrameCountComponent::~FrameCountComponent(re::ecs2::FrameCountComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::FrameCountComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::FrameCountComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE7F40;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

float32x4_t re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::doMakeComponent@<Q0>(float32x4_t **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::CARETraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 64, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  v3[1].i64[0] = 0;
  v3[1].i8[8] = 0;
  v3->i64[0] = &unk_1F5CE8020;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v3[2] = vnegq_f32(result);
  v3[3] = result;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE80A8;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2820))
  {
    qword_1EE1A2818 = re::ecs2::introspect_CARETraceComponent(0);
    __cxa_guard_release(&qword_1EE1A2820);
  }

  return qword_1EE1A2818;
}

__n128 re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::CARETraceComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE7FB0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::CARETraceComponent::~CARETraceComponent(re::ecs2::CARETraceComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::CARETraceComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::CARETraceComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE80A8;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

double re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ClientWorldOriginOverrideComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 32, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8188;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CE8210;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A2830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2830))
  {
    qword_1EE1A2828 = re::ecs2::introspect_ClientWorldOriginOverrideComponent(0);
    __cxa_guard_release(&qword_1EE1A2830);
  }

  return qword_1EE1A2828;
}

__n128 re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::ClientWorldOriginOverrideComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CE8118;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::ClientWorldOriginOverrideComponent::~ClientWorldOriginOverrideComponent(re::ecs2::ClientWorldOriginOverrideComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneComponentCollection<re::ecs2::ClientWorldOriginOverrideComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::ClientWorldOriginOverrideComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CE8210;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

void *std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void re::ecs2::PolygonFrustumClipper::clipToFrustum(uint64_t *a1, uint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  a1[1] = *a1;
  v4 = (a2[1] - *a2) >> 5;
  std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::reserve(a1, v4 + 7);
  std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::reserve(a2, v4 + 7);
  v5 = 0;
  v6 = *a2;
  do
  {
    v7 = a2[1] - v6;
    v36 = v5;
    if (v7 != -32)
    {
      v10 = 0;
      v11 = 0;
      v12 = v7 >> 5;
      v37 = &re::ecs2::PolygonFrustumClipper::m_planes + v5;
      v13 = *(&re::ecs2::PolygonFrustumClipper::m_planes + v5);
      v14 = -1;
      do
      {
        v15 = v11;
        if (v12 == v10)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10;
        }

        v17 = v6 + 32 * v16;
        if (v13 > 2)
        {
          v11 = *(v17 + 12) > 0.0;
        }

        else
        {
          v18 = *(v17 + 4 * v13);
          v19 = *(v17 + 12);
          if (v37[4] == 1)
          {
            v11 = v18 < v19;
          }

          else
          {
            v11 = v18 > -v19;
          }
        }

        if (v14 == -1 && v11)
        {
          goto LABEL_19;
        }

        v20 = !v11;
        if (v12 != v10 && ((!v15 | v20) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (v15 != v11)
        {
          v21 = v15 | v20;
          v22 = (v21 & 1) == 0;
          v23 = (v21 & 1) != 0 ? v16 : v14;
          v24 = v22 ? v16 : v14;
          v25 = v6 + 32 * v23;
          v26 = v6 + 32 * v24;
          if (v13 == 3)
          {
            v27 = *(v26 + 12) / (*(v26 + 12) - *(v25 + 12));
          }

          else
          {
            v28 = *(v26 + 12);
            v29 = *(v26 + 4 * v13);
            v30 = *(v25 + 12);
            v31 = *(v25 + 4 * v13);
            v32 = (v28 + v29) / ((v28 + v29) - (v30 + v31));
            v27 = (v28 - v29) / ((v28 - v29) - (v30 - v31));
            if (v37[4] != 1)
            {
              v27 = v32;
            }
          }

          v33 = 0;
          v34 = *(v26 + 16);
          v38[0] = *v26;
          v38[1] = v34;
          do
          {
            *(v38 + v33) = *(v38 + v33) + (v27 * (*(v25 + v33) - *(v26 + v33)));
            v33 += 4;
          }

          while (v33 != 24);
          std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::push_back[abi:nn200100](a1, v38);
          if (v12 != v10 && v11)
          {
LABEL_19:
            std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::push_back[abi:nn200100](a1, v17);
          }
        }

        ++v10;
        v6 = *a2;
        v12 = (a2[1] - *a2) >> 5;
        v14 = v16;
      }

      while (v12 + 1 > v10);
    }

    *a2 = *a1;
    *a1 = v6;
    v8 = a2[1];
    a2[1] = a1[1];
    a1[1] = v8;
    v9 = a2[2];
    a2[2] = a1[2];
    a1[2] = v9;
    v6 = *a2;
    if (a2[1] == *a2)
    {
      break;
    }

    a1[1] = *a1;
    v5 = v36 + 16;
  }

  while (v36 != 96);
}

void std::vector<re::ecs2::PolygonFrustumClipper::Vertex>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::PolygonFrustumClipper::Vertex>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *re::ecs2::allocInfo_CARESortingService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_183, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_183))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2900, "CARESortingService");
    __cxa_guard_release(&_MergedGlobals_183);
  }

  return &unk_1EE1A2900;
}

void re::ecs2::initInfo_CARESortingService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE22FB2B0FA7B3404;
  v6[1] = "CARESortingService";
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
  *(this + 8) = &re::ecs2::initInfo_CARESortingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_MaterialParametersService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_184, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_184))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2998, "MaterialParametersService");
    __cxa_guard_release(&_MergedGlobals_184);
  }

  return &unk_1EE1A2998;
}

void re::initInfo_MaterialParametersService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x431BF85351479DC8;
  v6[1] = "MaterialParametersService";
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
  *(this + 8) = &re::initInfo_MaterialParametersService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::introspect_CameraMovementMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A2A30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A2A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2A38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A2A88, "CameraMovementMode", 4, 4, 1, 1);
      qword_1EE1A2A88 = &unk_1F5D0C658;
      qword_1EE1A2AC8 = &re::ecs2::introspect_CameraMovementMode(BOOL)::enumTable;
      dword_1EE1A2A98 = 9;
      __cxa_guard_release(&qword_1EE1A2A38);
    }

    if (_MergedGlobals_185)
    {
      break;
    }

    _MergedGlobals_185 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A2A88, a2);
    v33 = 0xB360269A940A05AELL;
    v34 = "CameraMovementMode";
    v37 = 208862;
    v38 = "int";
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
      v6 = qword_1EE1A2AC8;
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
      xmmword_1EE1A2AA8 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A2A30);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Fly";
      qword_1EE1A2A58 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Orbit";
      qword_1EE1A2A60 = v32;
      __cxa_guard_release(&qword_1EE1A2A30);
    }
  }
}

void *re::ecs2::allocInfo_CameraMovementComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2A40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2AD0, "CameraMovementComponent");
    __cxa_guard_release(&qword_1EE1A2A40);
  }

  return &unk_1EE1A2AD0;
}

void re::ecs2::initInfo_CameraMovementComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x488E787C685DE892;
  v21[1] = "CameraMovementComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1A2A48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2A48);
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
      qword_1EE1A2A68 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A2A70 = v12;
      v13 = re::introspectionAllocator(v12);
      re::ecs2::introspect_CameraMovementMode(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "mode";
      *(v15 + 16) = &qword_1EE1A2A88;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A2A78 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "moveSpeedMultiplier";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A2A80 = v19;
      __cxa_guard_release(&qword_1EE1A2A48);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A2A68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraMovementComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraMovementComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraMovementComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraMovementComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223CameraMovementComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::ecs2::allocInfo_CameraMovementSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2A50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2B60, "CameraMovementSystem");
    __cxa_guard_release(&qword_1EE1A2A50);
  }

  return &unk_1EE1A2B60;
}

void re::ecs2::initInfo_CameraMovementSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5BF0EA45CF417CC6;
  v6[1] = "CameraMovementSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_CameraMovementSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CameraMovementSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CameraMovementSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CameraMovementSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CameraMovementSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CameraMovementSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CameraMovementSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::CameraMovementSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CE8960;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::CameraMovementSystem>(_OWORD *a1)
{
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CE8960;
  return result;
}

__n128 re::ecs2::CameraMovementComponent::MayaModeParameters::computePose@<Q0>(float32x4_t *this@<X0>, uint64_t a2@<X8>)
{
  v4 = __sincosf_stret(this[2].f32[1] * 0.5);
  v5 = __sincosf_stret(this[2].f32[2] * 0.5);
  LODWORD(v6) = 0;
  HIDWORD(v6) = LODWORD(v5.__sinval);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(LODWORD(v4.__sinval), LODWORD(v4.__sinval)), LODWORD(v4.__sinval), 0xCuLL), vnegq_f32(v6)), LODWORD(v4.__sinval), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  result = vmlaq_n_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), LODWORD(v4.__sinval), v5.__cosval), v6, v4.__cosval);
  v8 = vmulq_f32(LODWORD(v4.__sinval), v6);
  v9 = -((v8.f32[2] + vaddv_f32(*v8.f32)) - (v5.__cosval * v4.__cosval));
  v10 = vextq_s8(vuzp1q_s32(result, result), result, 0xCuLL);
  v11 = vnegq_f32(result);
  v12 = vmulq_f32(result, xmmword_1E3080630);
  result.n128_f32[3] = v9;
  v14 = vmlaq_f32(v12, xmmword_1E306DD20, v10);
  v15 = vaddq_f32(v14, v14);
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v11), v16, v10);
  *a2 = vsubq_f32(this[1], vmulq_n_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v16, v9), xmmword_1E306DD20), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL)), this[2].f32[0]));
  *(a2 + 16) = result;
  return result;
}

void **re::ecs2::CameraMovementComponent::lookAt(void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[2];
  if (v5)
  {
    v6 = result;
    v7.i64[0] = a4;
    v7.i64[1] = a5;
    v8.i64[0] = a2;
    v8.i64[1] = a3;
    result[20] = a4;
    result[21] = a5;
    v9 = vsubq_f32(v7, v8);
    v10 = vmulq_f32(v9, v9);
    v10.f32[0] = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
    *(result + 44) = v10.i32[0];
    v20 = vdivq_f32(v9, vdupq_lane_s32(*v10.f32, 0));
    v11 = vmulq_f32(v20, xmmword_1E3047680);
    *(result + 45) = 1.5708 - acosf(v11.f32[2] + vaddv_f32(*v11.f32));
    v12 = v20;
    v12.i32[1] = 0;
    v13 = vmulq_f32(v12, v12);
    v14 = v12;
    v12.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v12.u32[0]);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v13.f32, *v13.f32)));
    v19 = vmulq_n_f32(v14, vmul_f32(*v13.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v13.f32, *v13.f32))).f32[0]);
    v15 = vmulq_f32(v19, xmmword_1E306DD20);
    v16 = acosf(v15.f32[2] + vaddv_f32(*v15.f32));
    v17 = vmulq_f32(vmlaq_f32(vmulq_f32(v19, xmmword_1E3080630), xmmword_1E306DD20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL)), xmmword_1E3047670);
    if ((v17.f32[1] + (v17.f32[2] + v17.f32[0])) >= 0.0)
    {
      v16 = -v16;
    }

    v6[11].f32[2] = v16;
    v18 = *(v5 + 32);
    if (!v18)
    {
      v18 = re::ecs2::EntityComponentCollection::add((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::ecs2::CameraMovementComponent::MayaModeParameters::computePose(v6 + 9, v21);
    v22[0].i64[0] = 0x3F8000003F800000;
    v22[0].i64[1] = 1065353216;
    v22[1] = v21[1];
    v22[2] = v21[0];
    re::ecs2::TransformComponent::setWorldSRT(v18, v22, 0);
    return re::ecs2::Component::markDirty(v18);
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::InputService>(uint64_t a1)
{
  {
    re::introspect<re::InputService>(BOOL)::info = re::introspect_InputService(0);
  }

  v2 = re::introspect<re::InputService>(BOOL)::info;
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

void **re::ecs2::CameraMovementComponent::rotateFlyModeImmediate(re::TransformService **this, float a2, float a3, const re::ecs2::Entity *a4)
{
  v7 = re::TransformService::transformServiceFromEntity(this[2], a4);
  if (v7)
  {
    re::TransformService::worldTransform(v7, this[2], 0, &v32);
    v8 = v33;
  }

  else
  {
    v32.i64[0] = 0x3F8000003F800000;
    v32.i64[1] = 1065353216;
    v34 = 0;
    v35 = 0;
    v8 = xmmword_1E30474D0;
  }

  v31 = v8;
  v9 = vrsqrte_f32(1065353216);
  v10 = vmul_f32(v9, vrsqrts_f32(1065353216, vmul_f32(v9, v9)));
  LODWORD(v29) = vmul_f32(v10, vrsqrts_f32(1065353216, vmul_f32(v10, v10))).u32[0];
  v27 = vmulq_n_f32(xmmword_1E3047680, v29);
  _KR00_8 = __sincosf_stret((a2 * -0.006) * 0.5);
  *v12.f32 = vmul_n_f32(*v27.f32, _KR00_8.__sinval);
  v12.i32[2] = vmuls_lane_f32(_KR00_8.__sinval, v27, 2);
  _Q5 = v31;
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), v31, 0xCuLL), vnegq_f32(v12)), v31, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v28 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v31, _KR00_8.__cosval), v12, v31, 3);
  __asm { FMLA            S0, S1, V5.S[3] }

  v31.i32[0] = _S0;
  v30 = vmulq_n_f32(xmmword_1E3047670, v29);
  v20 = __sincosf_stret((a3 * -0.006) * 0.5);
  *v21.i8 = vmul_n_f32(*v30.f32, v20.__sinval);
  v21.i32[2] = vmuls_lane_f32(v20.__sinval, v30, 2);
  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v28)), v21, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
  v23 = vmlaq_n_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21, v31.f32[0]), v28, v20.__cosval);
  v24 = vmulq_f32(v21, v28);
  v23.f32[3] = -((v24.f32[2] + vaddv_f32(*v24.f32)) - (v31.f32[0] * v20.__cosval));
  v33 = v23;
  v25 = *(this[2] + 32);
  re::ecs2::TransformComponent::setWorldSRT(v25, &v32, 0);
  return re::ecs2::Component::markDirty(v25);
}

void re::ecs2::CameraMovementSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (!v3)
  {
    return;
  }

  v4 = *(a3 + 216);
  v5 = v4 + 8 * v3;
  __asm { FMOV            V11.2S, #1.0 }

  while (1)
  {
    v11 = re::ecs2::SceneComponentTable::get((*v4 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = *(v11 + 384);
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = 0;
    v14 = *(v11 + 400);
    v15 = 8 * v12;
    do
    {
      v16 = *v14++;
      v17 = *(v16 + 16);
      if (*(v17 + 304))
      {
        v13 = v17;
      }

      v15 -= 8;
    }

    while (v15);
    if (!v13)
    {
      goto LABEL_13;
    }

    v18 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraMovementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    if (*(v18 + 25) != 1)
    {
      goto LABEL_13;
    }

    v20 = *(v18 + 192);
    v21 = CACurrentMediaTime();
    v22 = *(v19 + 192);
    *(v19 + 192) = v21;
    if (v20 == 0.0)
    {
      goto LABEL_13;
    }

    v23 = v21 - v22;
    v113 = v23;
    v24 = *(v19 + 16);
    do
    {
      v25 = v24;
      v24 = *(v24 + 32);
    }

    while (v24);
    v26 = (*(**(*(v25 + 24) + 56) + 32))(*(*(v25 + 24) + 56));
    v27 = re::ServiceLocator::serviceOrNull<re::InputService>(v26);
    if (!v27)
    {
      goto LABEL_13;
    }

    v28 = v27;
    if ((**v27)(v27) & 1) != 0 || ((*(*v28 + 16))(v28))
    {
      goto LABEL_13;
    }

    (*(*v28 + 32))(v122, v28);
    v30 = *(v19 + 32) + *(v19 + 32);
    v31 = v122[0];
    if ((v122[3] & 0x200000000) != 0)
    {
      v30 = v30 * 4.0;
    }

    v110 = v30;
    v32 = (v122[0] & 0x4000000) != 0 ? 1.0 : 0.0;
    v33 = (v122[0] & 0x400000) != 0 ? 1.0 : 0.0;
    v34 = re::TransformService::transformServiceFromEntity(*(v19 + 16), v29);
    if (v34)
    {
      re::TransformService::worldTransform(v34, *(v19 + 16), 0, &v118);
      v36.i32[0] = HIDWORD(v119);
      v37 = *&v119;
      v35.i32[0] = HIDWORD(v120);
      v38 = *&v120;
      v39 = v118;
      v40 = v121;
    }

    else
    {
      v118.i64[0] = 0x3F8000003F800000;
      v118.i64[1] = 1065353216;
      v38 = 0.0;
      v35.i32[0] = 1.0;
      v40 = 0uLL;
      v39 = xmmword_1E304F3C0;
      v36.i32[0] = 0;
      v37 = 0.0;
      v119 = 0;
      v120 = 0x3F80000000000000;
    }

    v41 = vdupq_n_s64(v31);
    v42.i32[3] = 0;
    v43 = vbic_s8(_D11, vmovn_s64(vceqzq_s64(vandq_s8(v41, xmmword_1E3080640))));
    v44 = vceqzq_s64(vandq_s8(v41, xmmword_1E3080650));
    *v44.f32 = vsub_f32(v43, vbic_s8(_D11, vmovn_s64(v44)));
    v44.f32[2] = -(v32 - v33);
    v45 = vmulq_n_f32(vmulq_n_f32(v44, v110), v113);
    v44.f32[0] = v37 + v37;
    v43.f32[0] = v36.f32[0] + v36.f32[0];
    v46 = v38 + v38;
    v47 = v37 * (v37 + v37);
    v48 = v36.f32[0] * (v36.f32[0] + v36.f32[0]);
    v49 = v38 * (v38 + v38);
    v36.f32[0] = v36.f32[0] * v44.f32[0];
    v50 = v38 * v44.f32[0];
    v51 = v38 * v43.f32[0];
    v44.f32[0] = v35.f32[0] * v44.f32[0];
    v43.f32[0] = v35.f32[0] * v43.f32[0];
    v35.f32[0] = v35.f32[0] * v46;
    v42.f32[0] = 1.0 - (v49 + v48);
    v42.f32[1] = v35.f32[0] + v36.f32[0];
    v42.f32[2] = v50 - v43.f32[0];
    v35.f32[0] = v36.f32[0] - v35.f32[0];
    v35.f32[1] = 1.0 - (v49 + v47);
    v35.f32[2] = v51 + v44.f32[0];
    v36.f32[0] = v43.f32[0] + v50;
    v36.f32[1] = v51 - v44.f32[0];
    v36.f32[2] = 1.0 - (v48 + v47);
    v52 = vaddq_f32(*(v19 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmulq_n_f32(v42, v39.f32[0]), v45.f32[0]), vmulq_n_f32(v35, v39.f32[1]), *v45.f32, 1), vmulq_laneq_f32(v36, v39, 2), v45, 2));
    *(v19 + 48) = v52;
    v121 = vaddq_f32(v40, v52);
    v53 = *(*(v19 + 16) + 256);
    re::ecs2::TransformComponent::setWorldSRT(v53, &v118, 0);
    re::ecs2::Component::markDirty(v53);
    *(v19 + 48) = vmulq_n_f32(*(v19 + 48), v113 * 0.015);
    (*(*v28 + 48))(v116, v28);
    if (v117 != 1 || ((*(*v28 + 144))(v28) & 1) != 0)
    {
      goto LABEL_13;
    }

    v54 = v116[0];
    v55 = *(v19 + 16);
    do
    {
      v56 = v55;
      v55 = *(v55 + 32);
    }

    while (v55);
    v57 = (*(**(*(v56 + 24) + 56) + 32))(*(*(v56 + 24) + 56));
    v58 = re::ServiceLocator::serviceOrNull<re::InputService>(v57);
    if (!v58)
    {
      break;
    }

    *v114.f32 = vcvt_f32_s32(v54);
    (*(*v58 + 32))(v123);
    v60 = v124;
    if ((v124 & 0x200000000) != 0)
    {
      v62 = re::TransformService::transformServiceFromEntity(*(v19 + 16), v59);
      if (v62)
      {
        re::TransformService::worldTransform(v62, *(v19 + 16), 0, &v129);
      }

      else
      {
        v129.i64[0] = 0x3F8000003F800000;
        v129.i64[1] = 1065353216;
        v130.i64[0] = 0;
        v130.i64[1] = 0x3F80000000000000;
        v131 = 0uLL;
      }

      if ((v60 & 0x100000000) != 0)
      {
        v63.i64[0] = 0;
        v63.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(-0.005, *v114.f32, 1));
      }

      else
      {
        *v63.f32 = vmul_f32(*v114.f32, 0x3BA3D70ABBA3D70ALL);
        v63.i32[2] = 0;
      }

      v64 = vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL);
      v65 = vnegq_f32(v130);
      v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL), v65), v63, v64);
      v67 = vaddq_f32(v66, v66);
      v68 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
      v69 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), v65), v68, v64);
      v131 = vaddq_f32(v131, vaddq_f32(vaddq_f32(v63, vmulq_laneq_f32(v68, v130, 3)), vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL)));
      v70 = *(*(v19 + 16) + 256);
      v71 = &v129;
      goto LABEL_59;
    }

    v61 = *(v19 + 28);
    if ((v124 & 0x100000000) == 0)
    {
      if (v61 == 1)
      {
        goto LABEL_51;
      }

      if (v61)
      {
        goto LABEL_13;
      }

LABEL_45:
      re::ecs2::CameraMovementComponent::rotateFlyModeImmediate(v19, v114.f32[0], v114.f32[1], v59);
      goto LABEL_13;
    }

    if (!v61)
    {
LABEL_51:
      v72 = re::TransformService::transformServiceFromEntity(*(v19 + 16), v59);
      v74 = v72;
      if (v72)
      {
        re::TransformService::worldTransform(v72, *(v19 + 16), 0, &v125);
        v76 = *&v126.i32[1];
        v75 = *v126.i32;
        v108 = *&v126.i32[3];
        v77 = *&v126.i32[2];
        v78 = v125;
      }

      else
      {
        v125.i64[0] = 0x3F8000003F800000;
        v125.i64[1] = 1065353216;
        v126.i64[0] = 0;
        v126.i64[1] = 0x3F80000000000000;
        v77 = 0.0;
        v108 = 1.0;
        v127 = 0uLL;
        v76 = 0.0;
        v75 = 0.0;
        v78 = xmmword_1E304F3C0;
      }

      v111 = v78;
      re::ecs2::CameraMovementComponent::rotateFlyModeImmediate(v19, v114.f32[0], v114.f32[1], v73);
      if (v74)
      {
        re::TransformService::worldTransform(v74, *(v19 + 16), 0, &v129);
        v125 = v129;
        v126 = v130;
        v127 = v131;
      }

      v79 = v75 * (v75 + v75);
      v80 = v76 * (v76 + v76);
      v81 = v77 * (v77 + v77);
      v82 = v76 * (v75 + v75);
      v83 = v77 * (v75 + v75);
      v84 = v77 * (v76 + v76);
      v85 = v108 * (v76 + v76);
      v86 = v108 * (v77 + v77);
      v87.i32[3] = 0;
      v87.f32[0] = 1.0 - (v81 + v80);
      v87.f32[1] = v86 + v82;
      v87.f32[2] = v83 - v85;
      v88 = v108 * (v75 + v75);
      v89.i32[3] = 0;
      v89.f32[0] = v82 - v86;
      v89.f32[1] = 1.0 - (v81 + v79);
      v89.f32[2] = v84 + v88;
      v90 = v80 + v79;
      v91.i32[3] = 0;
      v91.f32[0] = v85 + v83;
      v91.f32[1] = v84 - v88;
      v91.f32[2] = 1.0 - v90;
      v133.columns[0] = vmulq_n_f32(v87, v111.f32[0]);
      v133.columns[1] = vmulq_n_f32(v89, *vshrq_n_u64(v111, 0x20uLL).i32);
      v133.columns[2] = vmulq_laneq_f32(v91, v111, 2);
      v91.i32[0] = v126.i32[0];
      v92 = v91.f32[0] + v91.f32[0];
      v93 = *&v126.i32[2];
      v89.f32[0] = v93 + v93;
      v91.f32[0] = v91.f32[0] * (v91.f32[0] + v91.f32[0]);
      v94 = *&v126.i32[1] * (*&v126.i32[1] + *&v126.i32[1]);
      v95 = v93 * (v93 + v93);
      v96 = v92 * *&v126.i32[1];
      v87.f32[0] = v92 * *&v126.i32[2];
      v97 = (*&v126.i32[1] + *&v126.i32[1]) * *&v126.i32[2];
      v98 = v92 * *&v126.i32[3];
      v99 = (*&v126.i32[1] + *&v126.i32[1]) * *&v126.i32[3];
      v100.i32[3] = 0;
      v100.f32[0] = 1.0 - (v94 + v95);
      v100.f32[1] = v96 + (v89.f32[0] * *&v126.i32[3]);
      v100.f32[2] = v87.f32[0] - v99;
      v89.i32[3] = 0;
      v89.f32[0] = v96 - (v89.f32[0] * *&v126.i32[3]);
      v89.f32[1] = 1.0 - (v91.f32[0] + v95);
      v89.f32[2] = v97 + v98;
      v101.i32[3] = 0;
      v101.f32[0] = v87.f32[0] + v99;
      v101.f32[1] = v97 - v98;
      v101.f32[2] = 1.0 - (v91.f32[0] + v94);
      v115 = vmulq_n_f32(v100, v125.f32[0]);
      v109 = vmulq_n_f32(v89, v125.f32[1]);
      v112 = vmulq_laneq_f32(v101, v125, 2);
      v133.columns[3] = xmmword_1E30474D0;
      v134 = __invert_f4(v133);
      v102 = 0;
      v128 = v134;
      do
      {
        *(&v129 + v102 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115, COERCE_FLOAT(*&v128.columns[v102])), v109, *v128.columns[v102].f32, 1), v112, v128.columns[v102], 2), xmmword_1E30474D0, v128.columns[v102], 3);
        ++v102;
      }

      while (v102 != 4);
      v103 = vaddq_f32(v132, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v127.f32[0]), v130, *v127.f32, 1), v131, v127, 2));
      v127 = vdivq_f32(v103, vdupq_laneq_s32(v103, 3));
      v70 = *(*(v19 + 16) + 256);
      v71 = &v125;
LABEL_59:
      re::ecs2::TransformComponent::setWorldSRT(v70, v71, 0);
      re::ecs2::Component::markDirty(v70);
      goto LABEL_13;
    }

    if (v61 == 1)
    {
      goto LABEL_45;
    }

LABEL_13:
    v4 += 8;
    if (v4 == v5)
    {
      return;
    }
  }

  v104 = re::introspect<re::InputService>();
  re::StringID::invalid(&v128);
  re::internal::missingServiceErrorMessage(v104, &v128, &v129);
  re::DynamicString::~DynamicString(&v129);
  re::StringID::~StringID(&v128);
  v105 = re::introspect<re::InputService>();
  re::StringID::invalid(&v128);
  re::internal::missingServiceErrorMessage(v105, &v128, &v129);
  if (v129.i8[8])
  {
    v107 = v130.i64[0];
  }

  else
  {
    v107 = &v129.i8[9];
  }

  re::internal::assertLog(5, v106, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v107);
  re::DynamicString::~DynamicString(&v129);
  re::StringID::~StringID(&v128);
  _os_crash();
  __break(1u);
}

void re::ecs2::CameraMovementSystem::~CameraMovementSystem(re::ecs2::CameraMovementSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::unsafelyInplace<re::ecs2::CameraMovementComponent>(ArcSharedObject *a1)
{
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
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
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CDAE38;
  *(v1 + 28) = 0x3F80000000000000;
  *(v1 + 48) = 0u;
  *(v1 + 64) = xmmword_1E3074760;
  *(v1 + 80) = 1065353216;
  result = 0.0;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0xBF00000041200000;
  *(v1 + 136) = -1071644672;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0xBF00000041200000;
  *(v1 + 184) = -1071644672;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223CameraMovementComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::introspect<re::InputService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::InputService>(BOOL)::info = re::introspect_InputService(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[238];
}

void *re::ecs2::allocInfo_ImmersiveSpaceTrackerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_186, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_186))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2C08, "ImmersiveSpaceTrackerComponent");
    __cxa_guard_release(&_MergedGlobals_186);
  }

  return &unk_1EE1A2C08;
}

void re::ecs2::initInfo_ImmersiveSpaceTrackerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE194A93363A863E0;
  v10[1] = "ImmersiveSpaceTrackerComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A2C00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2C00);
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
      qword_1EE1A2BF8 = v8;
      __cxa_guard_release(&qword_1EE1A2C00);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A2BF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImmersiveSpaceTrackerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImmersiveSpaceTrackerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImmersiveSpaceTrackerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImmersiveSpaceTrackerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230ImmersiveSpaceTrackerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ImmersiveSpaceTrackerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7350;
}

void re::internal::defaultConstructV2<re::ecs2::ImmersiveSpaceTrackerComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE7350;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230ImmersiveSpaceTrackerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::DeformationSubsystem::willAddSystemToECSService(re::ecs2::DeformationSubsystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v5);
  *(this + 31) = result;
  return result;
}

double re::ecs2::DeformationSubsystem::willRemoveSystemFromECSService(re::ecs2::DeformationSubsystem *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void *re::ecs2::allocInfo_VisualProxyScopeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_187, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_187))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2CD0, "VisualProxyScopeComponent");
    __cxa_guard_release(&_MergedGlobals_187);
  }

  return &unk_1EE1A2CD0;
}

void re::ecs2::initInfo_VisualProxyScopeComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x37629D0D0C28E72ELL;
  v10[1] = "VisualProxyScopeComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A2CA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2CA8);
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
      qword_1EE1A2CA0 = v8;
      __cxa_guard_release(&qword_1EE1A2CA8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A2CA0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyScopeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyScopeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyScopeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyScopeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225VisualProxyScopeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::VisualProxyScopeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE4258;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::VisualProxyScopeComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE4258;
  *(v1 + 28) = 0;
}

void *re::ecs2::allocInfo_VisualProxyScopeTraceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2CB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2D60, "VisualProxyScopeTraceComponent");
    __cxa_guard_release(&qword_1EE1A2CB0);
  }

  return &unk_1EE1A2D60;
}

void re::ecs2::initInfo_VisualProxyScopeTraceComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x4F17B999577D45BCLL;
  v10[1] = "VisualProxyScopeTraceComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A2CC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2CC0);
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
      qword_1EE1A2CB8 = v8;
      __cxa_guard_release(&qword_1EE1A2CC0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A2CB8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyScopeTraceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyScopeTraceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyScopeTraceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyScopeTraceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230VisualProxyScopeTraceComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::VisualProxyScopeTraceComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  *v3 = &unk_1F5CE43C0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::VisualProxyScopeTraceComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CE43C0;
  *(v1 + 28) = 0;
}

void *re::ecs2::allocInfo_VisualProxyScopeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2CC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A2DF0, "VisualProxyScopeSystem");
    __cxa_guard_release(&qword_1EE1A2CC8);
  }

  return &unk_1EE1A2DF0;
}

void re::ecs2::initInfo_VisualProxyScopeSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA7D81F4D742C63AALL;
  v6[1] = "VisualProxyScopeSystem";
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
  *(this + 8) = &re::ecs2::initInfo_VisualProxyScopeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualProxyScopeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualProxyScopeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VisualProxyScopeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VisualProxyScopeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualProxyScopeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualProxyScopeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::VisualProxyScopeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CE8A08;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VisualProxyScopeSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CE8A08;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

BOOL re::ecs2::VisualProxyScopeSystemStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, re::ecs2::ComponentBucketsBase **a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v8 = v20;
  v9 = v21;
  v10 = v21;
  v20 = a4;
  v21 = v8;
  v22 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v13 = *(v12 + 176);
      v14 = v13 == 0;
      if (v13 && (*(v12 + 32) & 1) == 0)
      {
        v14 = *(v12 + 184) == -1;
      }

      if (*(v12 + 32))
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }

      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v17 = v20;
      v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a3, v17, v18, v16);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

BOOL re::ecs2::VisualProxyScopeSystemStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      {
        v14 = v19;
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v14, v15, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::anonymous namespace::requiredMeshAssetsLoaded(re::ecs2::_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  v3 = *(this + 24);
  if (!v3 || (result = re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(v3, a2), result))
  {
    v5 = *(this + 43);
    if (v5)
    {
      v6 = *(this + 45);
      v7 = 8 * v5 - 8;
      do
      {
        v8 = *v6++;
        if (result)
        {
          v9 = v7 == 0;
        }

        else
        {
          v9 = 1;
        }

        v7 -= 8;
      }

      while (!v9);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v262 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 8);
  v8 = re::ecs2::SceneComponentTable::get((v7 + 200), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v8)
  {
    v9 = *(v8 + 384);
    if (v9)
    {
      v10 = *(v8 + 400);
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        ++*(v12 + 28);
        v11 -= 8;
      }

      while (v11);
    }
  }

  v13 = *(a1 + 8);
  v14 = *(*(v13 + 232) + 112);
  if (v14)
  {
    v15 = re::RenderFrameBox::get((v14 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v13 = *(a1 + 8);
  }

  else
  {
    v15 = 0;
  }

  v208 = 0;
  v206 = 0u;
  v207 = 0u;
  v209 = 0x7FFFFFFFLL;
  v201 = v15[49];
  v197 = (*(**(v13 + 256) + 24))(*(v13 + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v215, a5, 0);
  v203 = a4;
  v204 = v215[0];
  v205 = v215[1];
  if (v215[0] == a5 && LODWORD(v215[1]) == 0xFFFFFFFFLL)
  {
    goto LABEL_180;
  }

  v196 = a1;
  v16 = &unk_1EE187000;
  v199 = v15;
  do
  {
    v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v203);
    v18 = *(v17 + 176);
    (*(*v197 + 8))(v215);
    if (LOBYTE(v215[0]))
    {
      v19 = v215[1];
    }

    else
    {
      v19 = 0;
    }

    memset(&v215[1], 0, 20);
    *&v216[0] = 0;
    v215[0] = v201;
    re::DynamicArray<re::CameraView>::setCapacity(v215, 0);
    ++LODWORD(v215[3]);
    *(&v217[0] + 1) = 0;
    memset(v216 + 8, 0, 24);
    LODWORD(v217[0]) = 0;
    v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
    v21 = v20 ^ (v20 >> 31);
    if (!v206)
    {
      LODWORD(v22) = 0;
LABEL_20:
      v24 = re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v206, v22, v21);
      *(v24 + 16) = v215[0];
      v25 = v24 + 16;
      *(v24 + 8) = v19;
      v215[0] = 0;
      *(v24 + 24) = *&v215[1];
      *&v215[1] = 0u;
      *(v24 + 40) = 1;
      *(v24 + 48) = v216[0];
      *(v24 + 64) = v216[1];
      *(v24 + 88) = *(&v217[0] + 1);
      memset(v216, 0, sizeof(v216));
      *(&v217[0] + 1) = 0;
      ++LODWORD(v215[3]);
      ++LODWORD(v217[0]);
      *(v24 + 80) = 1;
      ++HIDWORD(v209);
      goto LABEL_22;
    }

    v22 = v21 % DWORD2(v207);
    v23 = *(*(&v206 + 1) + 4 * v22);
    if (v23 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    while (*(v207 + 104 * v23 + 8) != v19)
    {
      LODWORD(v23) = *(v207 + 104 * v23) & 0x7FFFFFFF;
      if (v23 == 0x7FFFFFFF)
      {
        goto LABEL_20;
      }
    }

    v25 = v207 + 104 * v23 + 16;
LABEL_22:
    re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit(v216 + 8);
    re::DynamicArray<re::CameraView>::deinit(v215);
    if (*(v17 + 32))
    {
      v26 = *(v18 + 16);
      v27 = *(v17 + 16);
      re::ecs2::VisualCopyHelper::makeVisualCopyEntity(v27, v25 + 40, v7, *(*(v196 + 8) + 232), v17 + 88, &v245);
      v215[3] = *(v17 + 160);
      *&v216[0] = 0;
      v28 = re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(v215, v17 + 136);
      *(&v216[0] + 1) = v26;
      *&v216[1] = v245.i64[0];
      if (v245.i64[0])
      {
        v28 = (v245.i64[0] + 8);
      }

      v29 = re::globalAllocators(v28)[2];
      *&v249[24] = v29;
      *&v249[32] = 0;
      if (v29)
      {
        v30 = (*(*v29 + 32))(v29, 64, 0);
      }

      else
      {
        v30 = 0;
      }

      *v30 = &unk_1F5CE8B58;
      *(v30 + 32) = v215[3];
      *(v30 + 40) = 0;
      re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(v30 + 8, v215);
      *(v30 + 48) = *(v216 + 8);
      *&v216[1] = 0;
      *&v249[32] = v30;
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v15 + 507), v249);
      re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(v249);
      if (*&v216[1])
      {

        *&v216[1] = 0;
      }

      re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(v215);
      re::ecs2::EntityComponentCollection::remove((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v245.i64[0])
      {
      }

      goto LABEL_134;
    }

    v31 = *(v17 + 176);
    v32 = *(v17 + 16);
    re::CameraView::CameraView(v215, v201);
    if (*(v17 + 40) == 1)
    {
      WeakRetained = objc_loadWeakRetained((v17 + 48));
      v34 = WeakRetained - 8;
      if (!WeakRetained)
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v200 = v34;
    v35 = 1.0;
    if ((*(v17 + 32) & 1) == 0)
    {
      if (v32 && *(v32 + 344))
      {
        v36 = **(v32 + 360);
        v37 = (*(**(v7 + 56) + 32))(*(v7 + 56));
        v38 = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v37);
        if (v38)
        {
          LODWORD(v35) = (*(*v38 + 24))(v38, v36);
        }
      }

      else
      {
        if (re::ecs2::VisualProxyComponent::log(void)::onceToken != -1)
        {
          dispatch_once(&re::ecs2::VisualProxyComponent::log(void)::onceToken, &__block_literal_global_15);
        }

        v39 = re::ecs2::VisualProxyComponent::log(void)::log;
        if (os_log_type_enabled(re::ecs2::VisualProxyComponent::log(void)::log, OS_LOG_TYPE_DEBUG))
        {
          *v249 = 0;
          _os_log_debug_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEBUG, "Error: VisualProxyCaptureComponent attached to childless entity, which broke app-structure assumption.", v249, 2u);
        }
      }
    }

    v40 = *(v196 + 8);
    v41 = v15[49];
    v42 = *(v17 + 184);
    memset(v216, 0, 24);
    *(&v216[1] + 1) = 0x3F80000000000000;
    re::DynamicString::format(v41, "snapshotCamera_%u", v249, v42);
    re::DynamicString::operator=(v215, v249);
    if (*v249 && (v249[8] & 1) != 0)
    {
      (*(**v249 + 40))();
    }

    v229[41] = 0;
    v231 = 0u;
    v232 = 0;
    v43 = *(v17 + 80);
    if (v43)
    {
      v44 = *(*(v40 + 232) + 160);
      if (v44)
      {
        v45 = *v44;
      }

      else
      {
        v45 = 0;
      }

      CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(v45);
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(CGColorSpaceFromWorkingColorGamut, kCGRenderingIntentDefault, v43, 0);
      Components = CGColorGetComponents(CopyByMatchingToColorSpace);
      v192 = Components[2];
      v193 = *Components;
      Alpha = CGColorGetAlpha(CopyByMatchingToColorSpace);
      v50.f64[0] = v192;
      v50.f64[1] = Alpha;
      v231 = vcvt_hight_f32_f64(vcvt_f32_f64(v193), v50);
      CGColorRelease(CopyByMatchingToColorSpace);
      CGColorSpaceRelease(CGColorSpaceFromWorkingColorGamut);
    }

    v233 = 0;
    v235 = 1;
    v234 = 0;
    if (v35 > 0.01 && v35 < 1.0)
    {
      v236 = 1.0 / v35;
    }

    v243 = 1 << v42;
    v238 = xmmword_1E3063230;
    v239 = xmmword_1E3047670;
    v240 = xmmword_1E3047680;
    v241 = xmmword_1E30476A0;
    v242 = xmmword_1E30474D0;
    v237 = 4;
    v229[40] = 1;
    if (v200)
    {
      v51 = re::ecs2::EntityComponentCollection::get((v200 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v51)
      {
        v52 = v51;
        re::TextureHandle::metalTexture((v31 + 32), v249);
        v53 = *v249;
        v54 = [*v249 width];
        re::TextureHandle::metalTexture((v31 + 32), &v245);
        v55 = v245.i64[0];
        v56 = [v245.i64[0] height];
        if (v55)
        {
        }

        if (v53)
        {
        }

        re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v52, 0, v249);
        v216[0] = *v249;
        v216[1] = *&v249[16];
        v57 = (*(v52 + 36) * 3.1416) / 180.0;
        v15 = v199;
        if (*(v52 + 40))
        {
          v58 = tanf(v57 * 0.5);
          v59 = atanf(v58 / (v54 / v56));
          v57 = v59 + v59;
        }

        re::Projection::setPerspective(v217, *(v52 + 28), *(v52 + 32), v57, v54 / v56, 1);
        goto LABEL_115;
      }
    }

    v60 = (*(**(v7 + 56) + 32))(*(v7 + 56));
    v61 = re::ServiceLocator::service<re::TransformService>(v60);
    re::TransformService::worldTransform(v61, v32, 0, v212);
    PerspectiveCameraInScene = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v7);
    if (PerspectiveCameraInScene)
    {
      re::ecs2::PerspectiveCameraComponent::calculateProjection(PerspectiveCameraInScene, v249, 1.0);
LABEL_72:
      v65 = atan2f((*&v249[20] - *&v249[24]) * 0.5, *&v249[4]);
      v66 = v65 + v65;
      goto LABEL_73;
    }

    OrthographicCameraInScene = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(v7);
    if (OrthographicCameraInScene)
    {
      re::ecs2::OrthographicCameraComponent::calculateProjection(OrthographicCameraInScene, v249, 1.0);
      goto LABEL_72;
    }

    CustomMatrixCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(v7);
    if (CustomMatrixCameraInScene)
    {
      re::ecs2::CustomMatrixCameraComponent::calculateProjection(CustomMatrixCameraInScene, 0, v249);
      goto LABEL_72;
    }

    v66 = 65.0;
LABEL_73:
    re::TextureHandle::metalTexture((v31 + 32), v249);
    v67 = *v249;
    v68 = [*v249 width];
    re::TextureHandle::metalTexture((v31 + 32), &v245);
    v69 = v245.i64[0];
    v70 = [v245.i64[0] height];
    if (v69)
    {
    }

    if (v67)
    {
    }

    *v249 = 0;
    *&v249[4] = xmmword_1E30806D0;
    *&v249[20] = 0xBDCCCCCD3DCCCCCDLL;
    v249[28] = 0;
    *&v249[32] = xmmword_1E30476A0;
    LODWORD(v250) = 1;
    *(&v250 + 1) = 0;
    v251 = 0;
    v252 = 0;
    v257 = 0;
    re::Projection::setPerspective(v249, 0.1, 1000.0, v66, v68 / v70, 1);
    v71 = *v213.i32;
    v72 = v71 + v71;
    v73 = *&v213.i32[2];
    v74 = v73 + v73;
    v75 = v71 * (v71 + v71);
    v76 = *&v213.i32[1] * (*&v213.i32[1] + *&v213.i32[1]);
    v77 = v73 * (v73 + v73);
    v78 = v72 * *&v213.i32[1];
    v79 = v72 * *&v213.i32[2];
    v80 = (*&v213.i32[1] + *&v213.i32[1]) * *&v213.i32[2];
    v81 = v72 * *&v213.i32[3];
    v82 = (*&v213.i32[1] + *&v213.i32[1]) * *&v213.i32[3];
    v83.i32[3] = 0;
    v83.f32[0] = 1.0 - (v76 + v77);
    v83.f32[1] = v78 + (v74 * *&v213.i32[3]);
    v83.f32[2] = v79 - v82;
    v84.i32[3] = 0;
    v84.f32[0] = v78 - (v74 * *&v213.i32[3]);
    v84.f32[1] = 1.0 - (v75 + v77);
    v84.f32[2] = v80 + v81;
    v85.i32[3] = 0;
    v85.f32[0] = v79 + v82;
    v85.f32[1] = v80 - v81;
    v85.f32[2] = 1.0 - (v75 + v76);
    v245 = vmulq_n_f32(v83, *v212);
    v246 = vmulq_n_f32(v84, *(v212 + 1));
    v247 = vmulq_laneq_f32(v85, *v212, 2);
    v86 = v214;
    HIDWORD(v86) = 1.0;
    v248 = v86;
    re::ecs2::MeshComponentHelper::computeEntityMeshBounds(v32, 1, &v245, 1, &v210);
    v87 = vcgtq_f32(v210, v211);
    v87.i32[3] = v87.i32[2];
    v15 = v199;
    if ((vmaxvq_u32(v87) & 0x80000000) != 0)
    {
      if (re::ecs2::VisualProxyComponent::log(void)::onceToken != -1)
      {
        dispatch_once(&re::ecs2::VisualProxyComponent::log(void)::onceToken, &__block_literal_global_15);
      }

      v124 = re::ecs2::VisualProxyComponent::log(void)::log;
      if (os_log_type_enabled(re::ecs2::VisualProxyComponent::log(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v245.i16[0] = 0;
        _os_log_debug_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_DEBUG, "Empty BBox on the entity; will return an empty render.", &v245, 2u);
      }
    }

    else
    {
      v88.i64[0] = 0x3F0000003F000000;
      v88.i64[1] = 0x3F0000003F000000;
      v194 = vmulq_f32(vaddq_f32(v210, v211), v88);
      v89 = vsubq_f32(v211, v210);
      v90 = vmulq_f32(v89, v89);
      v91 = sqrtf(v90.f32[2] + vaddv_f32(*v90.f32)) * 0.5;
      v92 = atan2f((*&v249[20] - *&v249[24]) * 0.5, *&v249[4]);
      v93 = tanf((v92 + v92) * 0.5);
      v94.i64[0] = 0;
      v94.i32[3] = 0;
      *&v94.i32[2] = v91 / v93;
      v95 = vextq_s8(vuzp1q_s32(v213, v213), v213, 0xCuLL);
      v96 = vnegq_f32(v213);
      v97 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL), v96), v94, v95);
      v98 = vaddq_f32(v97, v97);
      v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
      v100 = vaddq_f32(v94, vmulq_laneq_f32(v99, v213, 3));
      v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), v96), v99, v95);
      v102 = vaddq_f32(v194, vaddq_f32(v100, vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL)));
      v103 = vsubq_f32(v102, v194);
      v104 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), xmmword_1E30661D0), xmmword_1E30476A0, v103);
      v105 = vmulq_f32(v104, v104);
      v106 = fabsf(v105.f32[1] + (v105.f32[2] + v105.f32[0]));
      v107 = 3212836864;
      if (v106 >= 1.0e-10)
      {
        v107 = 0;
      }

      v108 = 0x3F80000000000000;
      if (v106 < 1.0e-10)
      {
        v108 = 0;
      }

      v109.i64[0] = v108;
      v109.i64[1] = v107;
      v110 = vmulq_f32(v103, v103);
      *&v111 = v110.f32[2] + vaddv_f32(*v110.f32);
      *v110.f32 = vrsqrte_f32(v111);
      *v110.f32 = vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32)));
      v112 = vmulq_n_f32(v103, vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32))).f32[0]);
      v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
      v114 = vmlaq_f32(vmulq_f32(v113, vnegq_f32(v109)), v112, vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL));
      v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
      v116 = vmulq_f32(v114, v114);
      *&v117 = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
      *v116.f32 = vrsqrte_f32(v117);
      *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32)));
      v118 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32))).f32[0]);
      v119 = v118.f32[1];
      v120 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL), vnegq_f32(v112)), v118, v113);
      v121 = v112.f32[2] + vaddq_f32(v118, v120).f32[0];
      if (v121 >= 0.0)
      {
        v120.f32[0] = sqrtf(v121 + 1.0);
        v118.f32[0] = v120.f32[0] + v120.f32[0];
        v125 = vrecpe_f32(COERCE_UNSIGNED_INT(v120.f32[0] + v120.f32[0]));
        v126 = vmul_f32(v125, vrecps_f32(COERCE_UNSIGNED_INT(v120.f32[0] + v120.f32[0]), v125));
        v127 = vmul_f32(v126, vrecps_f32(COERCE_UNSIGNED_INT(v120.f32[0] + v120.f32[0]), v126)).f32[0];
        v120.f32[0] = (v120.f32[1] - v112.f32[1]) * v127;
        v122 = (v112.f32[0] - v118.f32[2]) * v127;
        v112.f32[0] = (v118.f32[1] - v120.f32[2]) * v127;
        v123 = v118.f32[0] * 0.25;
      }

      else if (v118.f32[0] < v112.f32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v118, v120))).u8[0] & 1) != 0)
      {
        v118.f32[0] = 1.0 - v118.f32[0];
        v128 = v120.f32[0] < v112.f32[2];
        v129 = v120.f32[0] < v112.f32[2];
        v130 = sqrtf(v112.f32[2] + (v118.f32[0] - v120.f32[0]));
        *&v131 = v130 + v130;
        v132 = vrecpe_f32(v131);
        v133 = vmul_f32(v132, vrecps_f32(v131, v132));
        v134 = vmul_f32(v133, vrecps_f32(v131, v133)).f32[0];
        v135 = (v112.f32[0] + v118.f32[2]) * v134;
        v136 = (v112.f32[1] + v120.f32[1]) * v134;
        v137 = *&v131 * 0.25;
        v138 = (v118.f32[1] - v120.f32[2]) * v134;
        v120.f32[0] = sqrtf((v118.f32[0] - v112.f32[2]) + v120.f32[0]);
        v120.f32[0] = v120.f32[0] + v120.f32[0];
        *v118.f32 = vrecpe_f32(v120.u32[0]);
        *v118.f32 = vmul_f32(*v118.f32, vrecps_f32(v120.u32[0], *v118.f32));
        v139 = vmul_f32(*v118.f32, vrecps_f32(v120.u32[0], *v118.f32)).f32[0];
        v140 = (v119 + v120.f32[2]) * v139;
        v141 = v120.f32[0] * 0.25;
        v142 = (v112.f32[1] + v120.f32[1]) * v139;
        v123 = (v112.f32[0] - v118.f32[2]) * v139;
        if (v128)
        {
          v120.f32[0] = v135;
        }

        else
        {
          v120.f32[0] = v140;
        }

        if (v129)
        {
          v122 = v136;
        }

        else
        {
          v122 = v141;
        }

        if (v129)
        {
          v112.f32[0] = v137;
        }

        else
        {
          v112.f32[0] = v142;
        }

        if (v129)
        {
          v123 = v138;
        }
      }

      else
      {
        v120.f32[0] = sqrtf(v118.f32[0] + ((1.0 - v120.f32[0]) - v112.f32[2]));
        v120.f32[0] = v120.f32[0] + v120.f32[0];
        *v118.f32 = vrecpe_f32(v120.u32[0]);
        *v118.f32 = vmul_f32(*v118.f32, vrecps_f32(v120.u32[0], *v118.f32));
        v118.f32[0] = vmul_f32(*v118.f32, vrecps_f32(v120.u32[0], *v118.f32)).f32[0];
        v120.f32[0] = v120.f32[0] * 0.25;
        v122 = (v119 + v120.f32[2]) * v118.f32[0];
        v112.f32[0] = (v112.f32[0] + v118.f32[2]) * v118.f32[0];
        v123 = (v120.f32[1] - v112.f32[1]) * v118.f32[0];
      }

      v120.f32[1] = v122;
      v120.i64[1] = __PAIR64__(LODWORD(v123), v112.u32[0]);
      v216[0] = v102;
      v216[1] = v120;
    }

    v217[2] = *&v249[32];
    v217[3] = v250;
    v218 = v251;
    v217[0] = *v249;
    v217[1] = *&v249[16];
    if (v219)
    {
      if ((v252 & 1) == 0)
      {
        v219 = 0;
        goto LABEL_109;
      }
    }

    else
    {
      if ((v252 & 1) == 0)
      {
        goto LABEL_109;
      }

      v219 = 1;
    }

    v220 = v253;
    v221 = v254;
    v222 = v255;
    v223 = v256;
LABEL_109:
    if (v224)
    {
      if (v257)
      {
        goto LABEL_114;
      }

      v224 = 0;
    }

    else if (v257)
    {
      v224 = 1;
LABEL_114:
      v225 = v258;
      v226 = v259;
      v227 = v260;
      v228 = v261;
    }

LABEL_115:
    v143 = *(v25 + 16);
    if (v143 >= *(v25 + 8))
    {
      re::DynamicArray<re::CameraView>::growCapacity(v25, v143 + 1);
      v143 = *(v25 + 16);
    }

    re::CameraView::CameraView((*(v25 + 32) + 1552 * v143), v215);
    ++*(v25 + 16);
    ++*(v25 + 24);
    *v249 = 65290051;
    re::TextureHandle::metalTexture((v31 + 32), &v245);
    if (v215[1])
    {
      v144 = v215[2];
    }

    else
    {
      v144 = (v215 | 9);
    }

    re::RenderFrame::specifyScopeLane(v15, v249, &v245, v144);
    if (v245.i64[0])
    {
    }

    re::TextureHandle::metalTexture((v31 + 32), v212);
    *&v249[24] = *(v17 + 160);
    *&v249[32] = 0;
    re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(v249, v17 + 136);
    *&v249[40] = v212[0];
    v145 = re::globalAllocators(*&v249[40])[2];
    v246.i64[1] = v145;
    v247.i64[0] = 0;
    if (v145)
    {
      v146 = (*(*v145 + 32))(v145, 56, 0);
    }

    else
    {
      v146 = 0;
    }

    v16 = &unk_1EE187000;
    *v146 = &unk_1F5CE8B00;
    v146[4] = *&v249[24];
    v146[5] = 0;
    re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>((v146 + 1), v249);
    v146[6] = *&v249[40];
    *&v249[40] = 0;
    v247.i64[0] = v146;
    re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v15 + 507), &v245);
    re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(&v245);
    if (*&v249[40])
    {

      *&v249[40] = 0;
    }

    re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(v249);
    if (v212[0])
    {
    }

    if (v200)
    {
    }

    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v244);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v230);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(v229);
    if (v215[0] && (v215[1] & 1) != 0)
    {
      (*(*v215[0] + 40))();
    }

LABEL_134:
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v204);
  }

  while (v204 != a5 || v205 != 0xFFFF || HIWORD(v205) != 0xFFFF);
  v147 = v208;
  if (v208)
  {
    v148 = 0;
    v149 = v207;
    v150 = v207;
    while (1)
    {
      v151 = *v150;
      v150 += 26;
      if (v151 < 0)
      {
        break;
      }

      if (v208 == ++v148)
      {
        LODWORD(v148) = v208;
        break;
      }
    }

    if (v208 != v148)
    {
      v152 = &unk_1EE187000;
      v202 = v208;
      do
      {
        v153 = v149 + 104 * v148;
        v154 = re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(*(a3 + 8), *(v153 + 8), v199, &v245);
        if (*(v153 + 32))
        {
          v215[0] = v245.i64[0] >> 1;
          v155 = **(re::RenderFrameData::stream((v199 + 33), v215) + 48);
          v154 = (*(v155 + 544))();
          v156 = *(a3 + 8);
          v157 = *(*(v152 + 463) + 16);
          if (*(v156 + 224) > v157)
          {
            v158 = *(*(v156 + 240) + 8 * v157);
            if (v158)
            {
              v159 = *(v158 + 384);
              if (v159)
              {
                v160 = *(v158 + 400);
                v161 = 8 * v159;
                do
                {
                  v162 = *v160++;
                  v163 = *(v162 + 16);
                  re::ecs2::EntityComponentCollection::remove((v163 + 48), v16[431]);
                  re::ecs2::EntityComponentCollection::remove((v163 + 48), *(v152 + 463));
                  v154 = re::ecs2::EntityComponentCollection::getOrAdd((v163 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  *(v154 + 7) = 0;
                  v161 -= 8;
                }

                while (v161);
              }
            }
          }
        }

        if (*(v153 + 72))
        {
          v203 = v245.i64[0] >> 1;
          v164 = re::RenderFrameData::stream((v199 + 33), &v203);
          re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v164, &v210, v215);
          if (HIDWORD(v215[1]) == 0x7FFFFFFF)
          {
            v165 = *(*(v164 + 48) + 8);
            v166 = (*(*v165 + 32))(v165, 56, 8);
            *v166 = 0;
            *(v166 + 8) = 0;
            *(v166 + 16) = 1;
            *(v166 + 32) = 0;
            *(v166 + 40) = 0;
            *(v166 + 24) = 0;
            *(v166 + 48) = 0;
            v167 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::init(v166, v165, 1uLL);
            *&v249[24] = re::globalAllocators(v167)[2];
            *v249 = &unk_1F5CE8BF0;
            *&v249[8] = v165;
            *&v249[32] = v249;
            v215[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul> *>::__handle[abi:nn200100];
            v215[1] = v166;
            *(&v216[1] + 1) = *&v249[24];
            *&v217[0] = 0;
            re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(v216, v249);
            v168 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v164, &v210, v215);
            if (*&v217[0])
            {
              v212[0] = v215;
              (*(**&v217[0] + 16))(*&v217[0], v212);
            }

            re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v216);
            if (v215[0])
            {
              (v215[0])(0, v215, 0, 0, 0);
            }

            re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v249);
          }

          else
          {
            v168 = (*(v164 + 16) + 96 * HIDWORD(v215[1]) + 16);
          }

          v171 = *(v153 + 56);
          v170 = *(v153 + 64);
          v172 = *(v153 + 72);
          *(v153 + 56) = 0;
          *(v153 + 64) = 0;
          *(v153 + 72) = 0;
          v173 = *(v153 + 88);
          *(v153 + 88) = 0;
          ++*(v153 + 80);
          v174 = *(v169 + 40);
          v175 = *(v169 + 8);
          if (v174 + 1 > 4 * v175)
          {
            re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::setBucketsCapacity(v169, (v174 + 4) >> 2);
            v175 = *(v169 + 8);
          }

          if (v175 <= v174 >> 2)
          {
            v212[0] = 0;
            v217[0] = 0u;
            memset(v216, 0, sizeof(v216));
            memset(v215, 0, sizeof(v215));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v249 = 136315906;
            *&v249[4] = "operator[]";
            *&v249[12] = 1024;
            *&v249[14] = 858;
            *&v249[18] = 2048;
            *&v249[20] = v174 >> 2;
            *&v249[28] = 2048;
            *&v249[30] = v175;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_194:
            re::internal::assertLog(4, v179, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash();
            __break(1u);
          }

          if (*(v169 + 16))
          {
            v176 = v169 + 24;
          }

          else
          {
            v176 = *(v169 + 32);
          }

          v177 = *(v176 + 8 * (v174 >> 2));
          ++*(v169 + 40);
          ++*(v169 + 48);
          v178 = v177 + 40 * (v174 & 3);
          *v178 = v171;
          v215[0] = 0;
          *(v178 + 8) = v170;
          v215[1] = 0;
          *(v178 + 16) = v172;
          v215[2] = 0;
          *(v178 + 32) = v173;
          *&v216[0] = 0;
          LODWORD(v215[3]) = 2;
          *(v178 + 24) = 1;
          re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit(v215);
          v180 = *(v169 + 40);
          if (!v180)
          {
            goto LABEL_194;
          }

          v154 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v169, v180 - 1);
          v16 = &unk_1EE187000;
          v147 = v202;
          v152 = &unk_1EE187000;
        }

        if (v245.i8[0])
        {
          if (v245.i8[0])
          {
          }
        }

        if (v208 <= v148 + 1)
        {
          v181 = v148 + 1;
        }

        else
        {
          v181 = v208;
        }

        v149 = v207;
        while (v181 - 1 != v148)
        {
          LODWORD(v148) = v148 + 1;
          if ((*(v207 + 104 * v148) & 0x80000000) != 0)
          {
            goto LABEL_179;
          }
        }

        LODWORD(v148) = v181;
LABEL_179:
        ;
      }

      while (v148 != v147);
    }
  }

LABEL_180:
  v182 = re::ecs2::SceneComponentTable::get((*(a3 + 8) + 200), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v182)
  {
    v183 = *(v182 + 384);
    if (v183)
    {
      v184 = *(v182 + 400);
      v185 = 8 * v183;
      do
      {
        if (*(*v184 + 28) >= 31)
        {
          re::ecs2::EntityComponentCollection::remove((*(*v184 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        }

        v184 += 8;
        v185 -= 8;
      }

      while (v185);
    }
  }

  v186 = re::ecs2::SceneComponentTable::get((*(a3 + 8) + 200), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v186)
  {
    v187 = *(v186 + 384);
    if (v187)
    {
      v188 = *(v186 + 400);
      v189 = 8 * v187;
      do
      {
        if (*(*v188 + 25) == 1)
        {
          *(*v188 + 25) = 0;
        }

        v188 += 8;
        v189 -= 8;
      }

      while (v189);
    }
  }

  v190 = *(a5 + 40) != 0;
  re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(&v206);
  return v190;
}

uint64_t *re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
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
          re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit(v6 + v4 + 56);
          re::DynamicArray<re::CameraView>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 104;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

re::ecs2::VisualProxyScopeSystem *re::ecs2::VisualProxyScopeSystem::VisualProxyScopeSystem(re::ecs2::VisualProxyScopeSystem *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CE8A48;
  v3 = v2 + 296;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CE8A08;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  v9[1] = 1;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v9[0] = v10;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 312), v9);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 96) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 64) = 0;
  *(this + 130) = 1;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 57, 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 63, 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  return this;
}

void re::ecs2::VisualProxyScopeSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v4 = a1[28];
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    if (a1[29])
    {
      re::ecs2::BasicComponentStates<re::ecs2::VisualProxyCaptureComponent>::update(a1 + 42, &v6, 0);
      v5 = *(a1[29] + 112);
      if (v5)
      {
        *(v5 + 1796) = 0;
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 301, v6, v7);
      _os_crash();
      __break(1u);
    }
  }
}

void re::ecs2::BasicComponentStates<re::ecs2::VisualProxyCaptureComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  re::StackScratchAllocator::StackScratchAllocator(v35);
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v29 = v35;
  v30 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v29, 0);
  v31 += 2;
  v6 = a1[26];
  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v34 = a1[26];
  v24[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v29, v7, v24);
  v8 = *(a2 + 8);
  v9 = *(v8 + 200);
  if (v9)
  {
    v10 = *(v8 + 216);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      v24[0] = v12;
      v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 7, v24);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v29, *(a1[8] + 16 * v13 + 8));
      v11 -= 8;
    }

    while (v11);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v29, (a1 + 21));
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v24[0] = v35;
  v24[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v24, 0);
  v25 += 2;
  v14 = a1[26];
  if ((v14 & 0x3F) != 0)
  {
    v15 = (v14 >> 6) + 1;
  }

  else
  {
    v15 = v14 >> 6;
  }

  v28 = a1[26];
  v36 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v24, v15, &v36);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 21), &v29);
  v16 = v33;
  if (v31)
  {
    v16 = &v32;
  }

  v17 = v30;
  if ((v30 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 0;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      if (v20)
      {
        break;
      }

      v18 -= 64;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }

    v21 = __clz(__rbit64(v19));
    if (v21 + 1 != v18)
    {
      FirstBitSet = v21 - v18;
      do
      {
        v23 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, FirstBitSet);
        if (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::update(v23, a2, a3))
        {
          re::DynamicBitset<unsigned long long,64ul>::setBit(v24, FirstBitSet);
        }

        else
        {
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v24, FirstBitSet);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v29, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_23:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 21), v24);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  if (v24[0] && (v25 & 1) == 0)
  {
    (*(*v24[0] + 40))();
  }

  if (v29 && (v31 & 1) == 0)
  {
    (*(*v29 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v35);
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::VisualProxyCaptureComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v35 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v35);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v35);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v35);
    v13 = v35;
    goto LABEL_43;
  }

LABEL_17:
  v35 = 0u;
  *&v36 = 0;
  v37 = 0u;
  v38 = 0u;
  *(&v36 + 1) = -1;
  v39 = 0;
  v40 = 1;
  v41 = 0uLL;
  v42 = 0uLL;
  v14 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::addUninitialized(a1);
  v15 = v36;
  *(v14 + 48) = 0;
  *(v14 + 16) = v15;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v14 + 56, &v38 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v35);
  v17 = *(a1 + 40);
  if (!v17)
  {
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v18 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v17 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::init(v18, a1, v43);
  v34 = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v34);
  v19 = *(a1 + 40);
  v20 = *(a1 + 160);
  if ((v19 & 0x3F) != 0)
  {
    v21 = (v19 >> 6) + 1;
  }

  else
  {
    v21 = v19 >> 6;
  }

  *(a1 + 160) = v19;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v21, &v35);
  if (v19 && v20 > v19)
  {
    v22 = 63;
    v23 = *(a1 + 160) & 0x3FLL;
    if (v23 && v23 != 63)
    {
      v22 = ~(-1 << v23);
    }

    if (*(a1 + 136))
    {
      v24 = a1 + 144;
    }

    else
    {
      v24 = *(a1 + 152);
    }

    *(v24 + 8 * *(a1 + 128) - 8) &= v22;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 208);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 208) = v25;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v27, &v35);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 208) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 184))
    {
      v30 = a1 + 192;
    }

    else
    {
      v30 = *(a1 + 200);
    }

    *(v30 + 8 * *(a1 + 176) - 8) &= v28;
  }

  v13 = v34;
LABEL_43:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v32 = *(a1 + 216);
    v33 = *(v43 + 376);
    LOWORD(v35) = 257;
    DWORD1(v35) = 1023969417;
    BYTE8(v35) = 0;
    re::ecs2::System::setTaskOptions(v32, v33, &v35);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::ecs2::VisualProxyScopeSystem::willRemoveSceneFromECSService(re::ecs2::VisualProxyScopeSystem *this, re::ecs2::Scene *a2)
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::VisualProxyCaptureComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

void re::ecs2::VisualProxyScopeSystem::~VisualProxyScopeSystem(re::ecs2::VisualProxyScopeSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CE8A08;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CE8A08;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::CameraView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x610uLL))
        {
          v2 = 1552 * a2;
          result = (*(*result + 32))(result, 1552 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1552, a2);
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
        v10 = 1552 * v9;
        v11 = v7;
        do
        {
          re::CameraView::CameraView(v11, v8);
          re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v8 + 1184);
          re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v8 + 624);
          re::DynamicArray<re::RenderGraphFileProvider>::deinit(v8 + 576);
          re::DynamicString::deinit(v8);
          v8 = (v8 + 1552);
          v11 += 1552;
          v10 -= 1552;
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

uint64_t re::CameraView::CameraView(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 8);
  *a1 = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  v10 = *(a2 + 96);
  v9 = *(a2 + 112);
  v11 = *(a2 + 80);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v10;
  *(a1 + 112) = v9;
  *(a1 + 80) = v11;
  *(a1 + 64) = *(a2 + 64);
  LODWORD(v5) = *(a2 + 144);
  *(a1 + 144) = v5;
  if (v5 == 1)
  {
    v12 = *(a2 + 160);
    v13 = *(a2 + 176);
    v14 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v14;
    *(a1 + 160) = v12;
    *(a1 + 176) = v13;
  }

  v15 = *(a2 + 224);
  *(a1 + 224) = v15;
  if (v15 == 1)
  {
    v16 = *(a2 + 240);
    v17 = *(a2 + 256);
    v18 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v18;
    *(a1 + 240) = v16;
    *(a1 + 256) = v17;
  }

  v19 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v19;
  v21 = *(a2 + 368);
  v20 = *(a2 + 384);
  v22 = *(a2 + 352);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v21;
  *(a1 + 384) = v20;
  *(a1 + 352) = v22;
  *(a1 + 336) = *(a2 + 336);
  v23 = *(a2 + 416);
  *(a1 + 416) = v23;
  if (v23 == 1)
  {
    v24 = *(a2 + 432);
    v25 = *(a2 + 448);
    v26 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v26;
    *(a1 + 432) = v24;
    *(a1 + 448) = v25;
  }

  v27 = *(a2 + 496);
  *(a1 + 496) = v27;
  if (v27 == 1)
  {
    v28 = *(a2 + 512);
    v29 = *(a2 + 528);
    v30 = *(a2 + 560);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = v30;
    *(a1 + 512) = v28;
    *(a1 + 528) = v29;
  }

  *(a1 + 608) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  *(a1 + 600) = 0;
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a1 + 584) = *(a2 + 584);
  *(a2 + 584) = 0;
  v31 = *(a1 + 592);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = v31;
  v32 = *(a1 + 608);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = v32;
  ++*(a2 + 600);
  ++*(a1 + 600);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 656) = 0;
  *(a1 + 624) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  *(a1 + 632) = 0;
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a1 + 632) = *(a2 + 632);
  *(a2 + 632) = 0;
  v33 = *(a1 + 640);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 640) = v33;
  v34 = *(a1 + 656);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = v34;
  ++*(a2 + 648);
  ++*(a1 + 648);
  *(a1 + 672) = *(a2 + 672);
  v35 = *(a2 + 688);
  v36 = *(a2 + 704);
  v37 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 704) = v36;
  *(a1 + 720) = v37;
  *(a1 + 688) = v35;
  v38 = *(a2 + 752);
  v39 = *(a2 + 768);
  v40 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v40;
  *(a1 + 752) = v38;
  *(a1 + 768) = v39;
  v42 = *(a2 + 848);
  v41 = *(a2 + 864);
  v43 = *(a2 + 832);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 848) = v42;
  *(a1 + 864) = v41;
  *(a1 + 832) = v43;
  *(a1 + 816) = *(a2 + 816);
  LODWORD(v34) = *(a2 + 896);
  *(a1 + 896) = v34;
  if (v34 == 1)
  {
    v44 = *(a2 + 912);
    v45 = *(a2 + 928);
    v46 = *(a2 + 960);
    *(a1 + 944) = *(a2 + 944);
    *(a1 + 960) = v46;
    *(a1 + 912) = v44;
    *(a1 + 928) = v45;
  }

  v47 = *(a2 + 976);
  *(a1 + 976) = v47;
  if (v47 == 1)
  {
    v48 = *(a2 + 992);
    v49 = *(a2 + 1008);
    v50 = *(a2 + 1024);
    *(a1 + 1040) = *(a2 + 1040);
    *(a1 + 1008) = v49;
    *(a1 + 1024) = v50;
    *(a1 + 992) = v48;
  }

  v51 = *(a2 + 1056);
  v52 = *(a2 + 1072);
  v53 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v53;
  *(a1 + 1072) = v52;
  *(a1 + 1056) = v51;
  v54 = *(a2 + 1120);
  v55 = *(a2 + 1136);
  v56 = *(a2 + 1152);
  *(a1 + 1165) = *(a2 + 1165);
  *(a1 + 1152) = v56;
  *(a1 + 1136) = v55;
  *(a1 + 1120) = v54;
  *(a1 + 1208) = *(a2 + 1208);
  *(a1 + 1216) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 1184, a2 + 1184);
  *(a1 + 1232) = *(a2 + 1232);
  v57 = *(a2 + 1248);
  *(a1 + 1248) = v57;
  if (v57 == 1)
  {
    v58 = *(a2 + 1264);
    *(a1 + 1280) = *(a2 + 1280);
    *(a1 + 1264) = v58;
  }

  v59 = *(a2 + 1296);
  *(a1 + 1296) = v59;
  if (v59 == 1)
  {
    *(a1 + 1312) = *(a2 + 1312);
    v60 = *(a2 + 1328);
    v61 = *(a2 + 1344);
    v62 = *(a2 + 1360);
    *(a1 + 1376) = *(a2 + 1376);
    *(a1 + 1360) = v62;
    *(a1 + 1344) = v61;
    *(a1 + 1328) = v60;
    v63 = *(a2 + 1392);
    *(a1 + 1392) = v63;
    if (v63 == 1)
    {
      v64 = *(a2 + 1408);
      v65 = *(a2 + 1424);
      v66 = *(a2 + 1440);
      *(a1 + 1456) = *(a2 + 1456);
      *(a1 + 1440) = v66;
      *(a1 + 1424) = v65;
      *(a1 + 1408) = v64;
    }

    v67 = *(a2 + 1472);
    *(a1 + 1472) = v67;
    if (v67 == 1)
    {
      v68 = *(a2 + 1488);
      v69 = *(a2 + 1504);
      v70 = *(a2 + 1520);
      *(a1 + 1536) = *(a2 + 1536);
      *(a1 + 1520) = v70;
      *(a1 + 1504) = v69;
      *(a1 + 1488) = v68;
    }
  }

  return a1;
}

uint64_t re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        v6 = (v3 + 8);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 1);
          if (v7)
          {

            *(v6 - 1) = 0;
          }

          v6 += 2;
          v5 -= 16;
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

re::CameraView *re::CameraView::CameraView(re::CameraView *this, re::Allocator *a2)
{
  v4 = (this + 340);
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *this = a2;
  re::DynamicString::setCapacity(this, 0);
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0x3F80000000000000;
  *(this + 16) = 0;
  *(this + 68) = xmmword_1E30806D0;
  *(this + 84) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 92) = 0;
  *(this + 6) = xmmword_1E30476A0;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 64) = 0;
  *(this + 144) = 0;
  *(this + 224) = 0;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 41) = 0x3F80000000000000;
  *(this + 84) = 0;
  *v4 = xmmword_1E30806D0;
  *(this + 356) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 364) = 0;
  *(this + 23) = xmmword_1E30476A0;
  *(this + 96) = 1;
  *(this + 49) = 0;
  *(this + 200) = 0;
  *(this + 416) = 0;
  *(this + 496) = 0;
  *(this + 76) = 0;
  *(this + 150) = 0;
  *(this + 584) = 0u;
  *(this + 72) = a2;
  re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(this + 72, 0);
  ++*(this + 150);
  *(this + 308) = 0;
  *(this + 82) = 0;
  *(this + 632) = 0u;
  *(this + 162) = 0;
  *(this + 78) = a2;
  v5 = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(this + 78, 0);
  ++*(this + 162);
  *(this + 42) = 0u;
  *(this + 173) = 0;
  *(this + 87) = 0x1000101000001;
  *(this + 352) = 0;
  *(this + 708) = 0x13F800000;
  *(this + 716) = 134217472;
  *(this + 724) = 134217472;
  *(this + 732) = 0;
  *(this + 92) = -1;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 204) = 0;
  v4[30] = xmmword_1E30806D0;
  *(this + 836) = 0xBDCCCCCD3DCCCCCDLL;
  *(this + 844) = 0;
  *(this + 53) = xmmword_1E30476A0;
  *(this + 216) = 1;
  *(this + 109) = 0;
  *(this + 440) = 0;
  *(this + 896) = 0;
  *(this + 976) = 0;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 144) = -1;
  *(this + 145) = -1;
  *(this + 292) = 0;
  *(this + 586) = 1;
  *(this + 1174) = 0;
  *(this + 294) = -1;
  *(this + 1180) = 0;
  *(this + 151) = re::globalAllocators(v5)[2];
  *(this + 152) = 0;
  *(this + 1296) = 0;
  *(this + 1248) = 0;
  *(this + 77) = 0u;
  return this;
}

void *re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(v5, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 3) = 0u;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v13;
          *v12 = 0;
          v11[4] = v12[3];
          v12[3] = 0;
          v15 = v11[2];
          v14 = v11[3];
          v16 = v12[2];
          v11[2] = v12[1];
          v11[3] = v16;
          v12[1] = v15;
          v12[2] = v14;
          *(v11 + 10) = *(v12 + 8);
          re::DynamicString::deinit(v12);
          v11 += 6;
          v8 = v12 + 5;
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

void *re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(v5, a2);
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
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = v8[3];
          v12 = v8[1];
          *v11 = *v8;
          *v8 = 0;
          v13 = v8[2];
          v8[3] = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          v8[1] = v15;
          v8[2] = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = v8[4];
          v8[4] = 0;
          v11[7] = v8[7];
          v8[7] = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = v8[6];
          v11[5] = v8[5];
          v11[6] = v18;
          v8[5] = v17;
          v8[6] = v16;
          re::DynamicString::deinit((v8 + 4));
          re::DynamicString::deinit(v8);
          v11 += 8;
          v8 += 8;
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

uint64_t re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

void *re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_0,void ()(re::FrameCount const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CE8B00;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_0,void ()(re::FrameCount const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CE8B00;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_0,void ()(re::FrameCount const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 48);
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v2);
  if (v2)
  {
  }
}

void *re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_0,void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CE8B00;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>((a2 + 1), a1 + 8);
  a2[6] = *(a1 + 48);
  return a2;
}

void *re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_0,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CE8B00;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>((a2 + 1), a1 + 8);
  a2[6] = *(a1 + 48);
  *(a1 + 48) = 0;
  return a2;
}

void *re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_1,void ()(re::FrameCount const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CE8B58;
  v2 = a1[7];
  if (v2)
  {

    a1[7] = 0;
  }

  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_1,void ()(re::FrameCount const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CE8B58;
  v2 = a1[7];
  if (v2)
  {

    a1[7] = 0;
  }

  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_1,void ()(re::FrameCount const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    re::ecs2::Entity::setParentInternal(*(a1 + 56), v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = 0;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v3);
  if (v3)
  {
  }
}

void *re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_1,void ()(re::FrameCount const&)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5CE8B58;
  a2[4] = a1[4];
  a2[5] = 0;
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>((a2 + 1), (a1 + 1));
  v4 = a1[7];
  a2[6] = a1[6];
  a2[7] = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::$_1,void ()(re::FrameCount const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8B58;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = 0;
  re::FunctionBase<24ul,void ()(NS::SharedPtr<MTL::Texture>)>::operator=<24ul>(a2 + 8, a1 + 8);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 56) = 0;
  return a2;
}

void re::Projection::setPerspective(re::Projection *this, float a2, float a3, float a4, float a5, int a6)
{
  *this = 0;
  *(this + 12) = a6;
  *(this + 1) = a2;
  *(this + 2) = a3;
  v9 = tanf(a4 * 0.5);
  *(this + 5) = v9 * a2;
  *(this + 6) = -(v9 * a2);
  *(this + 3) = -((v9 * a2) * a5);
  *(this + 4) = (v9 * a2) * a5;
  re::Projection::cullingProjectionMatrix(this, v12);
  if ((*(this + 80) & 1) == 0)
  {
    *(this + 80) = 1;
  }

  v10 = v12[1];
  *(this + 6) = v12[0];
  *(this + 7) = v10;
  v11 = v12[3];
  *(this + 8) = v12[2];
  *(this + 9) = v11;
  if ((*(this + 160) & 1) == 0)
  {
    re::Projection::decompose(this, v12);
  }
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225VisualProxyScopeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230VisualProxyScopeTraceComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 7;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 48;
            do
            {
              if ((*(v17 - 48) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 48) % *(a1 + 24));
                v19 = *(v17 - 40);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 24);
                *(v18 + 16) = *(v17 - 32);
                *(v18 + 24) = v20;
                *(v17 - 32) = 0;
                *(v17 - 24) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v17 - 16);
                *(v17 - 16) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *v17;
                *v17 = v22;
                ++*(v17 - 8);
                ++*(v18 + 40);
                *(v18 + 88) = 0;
                *(v18 + 64) = 0;
                *(v18 + 72) = 0;
                *(v18 + 56) = 0;
                *(v18 + 80) = 0;
                v23 = *(v17 + 16);
                *(v18 + 56) = *(v17 + 8);
                *(v18 + 64) = v23;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v24 = *(v18 + 72);
                *(v18 + 72) = *(v17 + 24);
                *(v17 + 24) = v24;
                v25 = *(v18 + 88);
                *(v18 + 88) = *(v17 + 40);
                *(v17 + 40) = v25;
                ++*(v17 + 32);
                ++*(v18 + 80);
              }

              v17 += 104;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 104 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 104 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 104 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 96) = a3;
  ++*(a1 + 28);
  return v26 + 104 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::VisualProxyScopeSystemStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent> *,re::ecs2::ComponentBuckets<re::ecs2::VisualProxyCaptureComponent>::BucketIteration,void *)::VisualProxyPerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 104 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_135, 4 * v10);
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

void *re::DynamicArray<re::CameraView>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::CameraView>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CameraView>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::CameraView *re::CameraView::CameraView(re::CameraView *this, const re::CameraView *a2)
{
  v4 = re::DynamicString::DynamicString(this, a2);
  v5 = *(a2 + 3);
  *(v4 + 2) = *(a2 + 2);
  *(v4 + 3) = v5;
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  v8 = *(a2 + 5);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 6) = v7;
  *(v4 + 7) = v6;
  *(v4 + 5) = v8;
  *(v4 + 4) = *(a2 + 4);
  v9 = *(a2 + 144);
  *(v4 + 144) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 10);
    v11 = *(a2 + 11);
    v12 = *(a2 + 13);
    *(this + 12) = *(a2 + 12);
    *(this + 13) = v12;
    *(this + 10) = v10;
    *(this + 11) = v11;
  }

  v13 = *(a2 + 224);
  *(this + 224) = v13;
  if (v13 == 1)
  {
    v14 = *(a2 + 15);
    v15 = *(a2 + 16);
    v16 = *(a2 + 18);
    *(this + 17) = *(a2 + 17);
    *(this + 18) = v16;
    *(this + 15) = v14;
    *(this + 16) = v15;
  }

  v17 = *(a2 + 20);
  *(this + 19) = *(a2 + 19);
  *(this + 20) = v17;
  v19 = *(a2 + 23);
  v18 = *(a2 + 24);
  v20 = *(a2 + 22);
  *(this + 200) = *(a2 + 200);
  *(this + 23) = v19;
  *(this + 24) = v18;
  *(this + 22) = v20;
  *(this + 21) = *(a2 + 21);
  v21 = *(a2 + 416);
  *(this + 416) = v21;
  if (v21 == 1)
  {
    v22 = *(a2 + 27);
    v23 = *(a2 + 28);
    v24 = *(a2 + 30);
    *(this + 29) = *(a2 + 29);
    *(this + 30) = v24;
    *(this + 27) = v22;
    *(this + 28) = v23;
  }

  v25 = *(a2 + 496);
  *(this + 496) = v25;
  if (v25 == 1)
  {
    v26 = *(a2 + 32);
    v27 = *(a2 + 33);
    v28 = *(a2 + 35);
    *(this + 34) = *(a2 + 34);
    *(this + 35) = v28;
    *(this + 32) = v26;
    *(this + 33) = v27;
  }

  re::DynamicArray<re::RenderGraphFileProvider>::DynamicArray(this + 576, a2 + 72);
  *(this + 308) = *(a2 + 308);
  re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(this + 624, a2 + 78);
  *(this + 42) = *(a2 + 42);
  v29 = *(a2 + 43);
  v30 = *(a2 + 44);
  v31 = *(a2 + 45);
  *(this + 92) = *(a2 + 92);
  *(this + 44) = v30;
  *(this + 45) = v31;
  *(this + 43) = v29;
  v32 = *(a2 + 47);
  v33 = *(a2 + 48);
  v34 = *(a2 + 50);
  *(this + 49) = *(a2 + 49);
  *(this + 50) = v34;
  *(this + 47) = v32;
  *(this + 48) = v33;
  v36 = *(a2 + 53);
  v35 = *(a2 + 54);
  v37 = *(a2 + 52);
  *(this + 440) = *(a2 + 440);
  *(this + 53) = v36;
  *(this + 54) = v35;
  *(this + 52) = v37;
  *(this + 51) = *(a2 + 51);
  v38 = *(a2 + 896);
  *(this + 896) = v38;
  if (v38 == 1)
  {
    v39 = *(a2 + 57);
    v40 = *(a2 + 58);
    v41 = *(a2 + 60);
    *(this + 59) = *(a2 + 59);
    *(this + 60) = v41;
    *(this + 57) = v39;
    *(this + 58) = v40;
  }

  v42 = *(a2 + 976);
  *(this + 976) = v42;
  if (v42 == 1)
  {
    v43 = *(a2 + 62);
    v44 = *(a2 + 63);
    v45 = *(a2 + 64);
    *(this + 65) = *(a2 + 65);
    *(this + 63) = v44;
    *(this + 64) = v45;
    *(this + 62) = v43;
  }

  v46 = *(a2 + 66);
  v47 = *(a2 + 67);
  v48 = *(a2 + 68);
  *(this + 69) = *(a2 + 69);
  *(this + 68) = v48;
  *(this + 67) = v47;
  *(this + 66) = v46;
  v49 = *(a2 + 70);
  v50 = *(a2 + 71);
  v51 = *(a2 + 72);
  *(this + 1165) = *(a2 + 1165);
  *(this + 72) = v51;
  *(this + 71) = v50;
  *(this + 70) = v49;
  *(this + 151) = *(a2 + 151);
  *(this + 152) = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(this + 1184, a2 + 1184);
  *(this + 77) = *(a2 + 77);
  v52 = *(a2 + 1248);
  *(this + 1248) = v52;
  if (v52 == 1)
  {
    v53 = *(a2 + 79);
    *(this + 80) = *(a2 + 80);
    *(this + 79) = v53;
  }

  v54 = *(a2 + 1296);
  *(this + 1296) = v54;
  if (v54 == 1)
  {
    *(this + 82) = *(a2 + 82);
    v55 = *(a2 + 83);
    v56 = *(a2 + 84);
    v57 = *(a2 + 85);
    *(this + 688) = *(a2 + 688);
    *(this + 85) = v57;
    *(this + 84) = v56;
    *(this + 83) = v55;
    v58 = *(a2 + 1392);
    *(this + 1392) = v58;
    if (v58 == 1)
    {
      v59 = *(a2 + 88);
      v60 = *(a2 + 89);
      v61 = *(a2 + 90);
      *(this + 91) = *(a2 + 91);
      *(this + 90) = v61;
      *(this + 89) = v60;
      *(this + 88) = v59;
    }

    v62 = *(a2 + 1472);
    *(this + 1472) = v62;
    if (v62 == 1)
    {
      v63 = *(a2 + 93);
      v64 = *(a2 + 94);
      v65 = *(a2 + 95);
      *(this + 96) = *(a2 + 96);
      *(this + 95) = v65;
      *(this + 94) = v64;
      *(this + 93) = v63;
    }
  }

  return this;
}

uint64_t re::DynamicArray<re::RenderGraphFileProvider>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RenderGraphFileProvider>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::RenderGraphFileProvider>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(a1, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = a1[2];
    v17 = a1[4];
    if (v16)
    {
      v18 = (v15 + 48 * v16);
      v19 = (v17 + 8);
      v20 = (v15 + 8);
      do
      {
        *(v19 - 1) = *(v20 - 1);
        v21 = re::DynamicString::operator=(v19, v20);
        *(v21 + 8) = v20[8];
        v19 = (v21 + 48);
        v22 = v20 + 10;
        v20 += 12;
      }

      while (v22 != v18);
      v17 = a1[4];
      v16 = a1[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = (v15 + 48 * v4);
      v24 = (48 * v16) | 8;
      v25 = (v15 + v24);
      v26 = (v17 + v24);
      do
      {
        *(v26 - 1) = *(v25 - 1);
        v27 = re::DynamicString::DynamicString(v26, v25);
        *(v27 + 8) = v25[8];
        v28 = v25 + 10;
        v25 += 12;
        v26 = (v27 + 48);
      }

      while (v28 != v23);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = (v7 + 48 * v4);
      v9 = (v6 + 8);
      v10 = (v7 + 8);
      do
      {
        *(v9 - 1) = *(v10 - 1);
        v11 = re::DynamicString::operator=(v9, v10);
        *(v11 + 8) = v10[8];
        v9 = (v11 + 48);
        v12 = v10 + 10;
        v10 += 12;
      }

      while (v12 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v13 = 48 * v5 - 48 * v4;
      v14 = (v6 + 48 * v4 + 8);
      do
      {
        re::DynamicString::deinit(v14);
        v14 = (v14 + 48);
        v13 -= 48;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

uint64_t re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::CameraView::PickupScopeLane>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::CameraView::PickupScopeLane>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= *(a1 + 16))
  {
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *>(&v13, *(a2 + 32), (*(a2 + 32) + (*(a1 + 16) << 6)), *(a1 + 32));
    v8 = *(a1 + 16);
    if (v8 != v4)
    {
      v9 = *(a2 + 32) + (v8 << 6);
      v10 = *(a1 + 32) + (v8 << 6);
      v11 = (v4 << 6) - (v8 << 6);
      do
      {
        re::DynamicString::DynamicString(v10, v9);
        re::DynamicString::DynamicString((v10 + 32), (v9 + 32));
        v9 += 64;
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *>(&v12, *(a2 + 32), (*(a2 + 32) + (v4 << 6)), *(a1 + 32));
    v5 = *(a1 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 32) + (v4 << 6);
      v7 = (v5 << 6) - (v4 << 6);
      do
      {
        re::DynamicString::deinit((v6 + 32));
        re::DynamicString::deinit(v6);
        v6 += 64;
        v7 -= 64;
      }

      while (v7);
    }
  }

  *(a1 + 16) = v4;
}

re::DynamicString *std::__copy_impl::operator()[abi:nn200100]<re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *,re::CameraView::PickupScopeLane *>(int a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicString::operator=((this + 32), (v5 + 32));
      v5 = (v5 + 64);
      this = (this + 64);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

re *re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(uint64_t a1, uint64_t *a2, re *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(a1, a2, &v8);
  if (HIDWORD(v9) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 96 * HIDWORD(v9) + 16);
  }

  v6 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::allocEntry(a1, v9, v8);
  *(v6 + 8) = *a2;
  result = re::RenderFrameDataArrayWrapper::RenderFrameDataArrayWrapper((v6 + 16), a3);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  return re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(a1, a2, v3, a3);
}

uint64_t re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v7 = result;
  v8 = a3 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = std::type_info::operator==[abi:nn200100](*(*(result + 16) + 96 * v9 + 8), *a2);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 96 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = std::type_info::operator==[abi:nn200100](*(v11 + 96 * v12 + 8), *a2);
      if (result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 96 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v9;
  return result;
}

void *re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 160, 0);
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

uint64_t re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::init(v9, v4, a2);
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
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::move(a1, v9);
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::deinit(v9);
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

re *re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::move(re *result, uint64_t a2)
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
        v8 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 6));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        result = re::RenderFrameDataArrayWrapper::RenderFrameDataArrayWrapper((v8 + 16), (*(a2 + 16) + v5 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

void re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_135, 4 * v10);
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

double re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v3);
        if (v6 < 0)
        {
          v7 = v5 + v3;
          *(v5 + v3) = v6 & 0x7FFFFFFF;
          v8 = (v5 + v3 + 16);
          v9 = *(v5 + v3 + 80);
          if (v9)
          {
            v11 = v5 + v3 + 16;
            (*(*v9 + 16))(v9, &v11);
          }

          re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v7 + 48);
          if (*v8)
          {
            (*v8)(0, v8, 0, 0, 0);
          }
        }

        ++v4;
        v3 += 96;
      }

      while (v4 < *(a1 + 8));
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

re *re::RenderFrameDataArrayWrapper::RenderFrameDataArrayWrapper(re *a1, re *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 1) = 0;
  v4 = re::globalAllocators(a1)[2];
  *(a1 + 7) = v4;
  *(a1 + 8) = 0;
  v11[3] = v4;
  v11[4] = 0;
  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(v11, a1 + 32);
  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(a1 + 32, a2 + 32);
  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(a2 + 32, v11);
  re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v11);
  if (a1 != a2)
  {
    v5 = *a1;
    v6 = *a2;
    if (*a1 && v6)
    {
      v11[0] = 0;
      v11[1] = 0;
      v6(2, a2, v11, 0, 0);
      (*a1)(2, a1, a2, 0, 0);
      (v11[0])(2, v11, a1, 0, 0);
      v6 = v11[0];
      if (v11[0])
      {
        v7 = v11;
        v8 = 0;
        v9 = 0;
LABEL_10:
        v6(v8, v7, v9, 0, 0);
      }
    }

    else if (v5)
    {
      v5(2, a1, a2, 0, 0);
    }

    else if (v6)
    {
      v8 = 2;
      v7 = a2;
      v9 = a1;
      goto LABEL_10;
    }
  }

  return a1;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::VisualProxyHighFidelityHandlerData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v4, i);
        re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit(v7);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::VisualProxyHighFidelityHandlerData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8BF0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::VisualProxyHighFidelityHandlerData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8BF0;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 2)
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

  return *(v3 + 8 * (a2 >> 2)) + 40 * (a2 & 3);
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 224);
  v7 = a1[3];
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v7);
  if (*(v8 + 40))
  {
    v9 = (*(*v6 + 24))(v6, a2, a1, v7, v8, a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  v11 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v10);
  if (*(v11 + 40))
  {
    v9 = v9 | (*(*v6 + 32))(v6, a2, a1, v10, v11, a3);
  }

  v12 = a1[6];
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v12);
  if (*(v13 + 40))
  {
    return v9 | (*(*v6 + 40))(v6, a2, a1, v12, v13, a3);
  }

  return v9;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CE8C58;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CE8CB0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CE8D08;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CE8D60;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CE8C58;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CE8CB0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CE8D08;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CE8D60;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8C58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8C58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8CB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8CB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8D08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8D08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE8D60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE8D60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VisualProxyCaptureComponent>,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 112 * (v2 & 3);
}

re::audio::ColorPaletteEditorMaterial *re::audio::ColorPaletteEditorMaterial::ColorPaletteEditorMaterial(re::audio::ColorPaletteEditorMaterial *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  v7 = this + 48;
  v9[0] = xmmword_1E3080E50;
  v9[1] = xmmword_1E3080E60;
  v9[2] = xmmword_1E3080E70;
  v9[3] = xmmword_1E3080E80;
  v9[4] = xmmword_1E3080E90;
  v9[5] = xmmword_1E3080EA0;
  v9[6] = xmmword_1E3080EB0;
  v9[7] = xmmword_1E3080EC0;
  v9[8] = xmmword_1E3080ED0;
  v9[9] = xmmword_1E3080EE0;
  v9[10] = xmmword_1E3080EF0;
  v9[11] = xmmword_1E3080F00;
  v9[12] = xmmword_1E3080F10;
  v9[13] = xmmword_1E3080F20;
  v9[14] = xmmword_1E3080F30;
  v9[15] = xmmword_1E3080F40;
  v9[16] = xmmword_1E3080F50;
  v9[17] = xmmword_1E3080F60;
  v9[18] = xmmword_1E3080F70;
  v9[19] = xmmword_1E3080F80;
  v9[20] = xmmword_1E3080F90;
  v9[21] = xmmword_1E3080FA0;
  v9[22] = xmmword_1E3080FB0;
  v9[23] = xmmword_1E3080FC0;
  v9[24] = xmmword_1E3080FD0;
  v9[25] = xmmword_1E3080FE0;
  v9[26] = xmmword_1E3080FF0;
  v9[27] = xmmword_1E3081000;
  v9[28] = xmmword_1E3081010;
  v9[29] = xmmword_1E3081020;
  v9[30] = xmmword_1E3081030;
  v9[31] = xmmword_1E3081040;
  v9[32] = xmmword_1E3081050;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(this, v9, v10, 0x21uLL);
  std::vector<BOOL>::resize(v7, (*(this + 1) - *this) >> 4, 1);
  return this;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if ((v7 << 6) > 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7 << 7;
      if (v9 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = v9;
      }

      if (!v10)
      {
        v13 = v4 + v5;
        v14 = *a1;
        if (v4 < 1)
        {
          LODWORD(v12) = 0;
          v11 = 0;
        }

        else
        {
          v15 = v4 >> 6;
          if (v4 >= 0x40)
          {
            memmove(0, *a1, 8 * v15);
          }

          v11 = (8 * v15);
          v12 = v4 & 0x3F;
          if (v12)
          {
            *(8 * v15) = *(8 * v15) & ~(0xFFFFFFFFFFFFFFFFLL >> -v12) | v14[v15] & (0xFFFFFFFFFFFFFFFFLL >> -v12);
          }

          v14 = *a1;
        }

        *a1 = 0;
        *(a1 + 8) = v13;
        *(a1 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }

        goto LABEL_27;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
LABEL_14:
        std::string::__throw_length_error[abi:nn200100]();
      }
    }

    __dst = 0;
    v17 = 0;
    v18 = 0;
    std::vector<BOOL>::__vallocate[abi:nn200100](&__dst, v10);
  }

  v11 = (*a1 + 8 * (v4 >> 6));
  v12 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
LABEL_27:
  __dst = v11;
  LODWORD(v17) = v12;
  if (a3)
  {
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&__dst, v5);
  }

  else
  {
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&__dst, v5);
  }
}

re::audio::ColorPaletteARKitMaterial *re::audio::ColorPaletteARKitMaterial::ColorPaletteARKitMaterial(re::audio::ColorPaletteARKitMaterial *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 6) = 0;
  v7 = this + 48;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v9[0] = xmmword_1E3081060;
  v9[1] = xmmword_1E3081060;
  v9[2] = xmmword_1E3081070;
  v9[3] = xmmword_1E3081080;
  v9[4] = xmmword_1E3081090;
  v9[5] = xmmword_1E30810A0;
  v9[6] = xmmword_1E30810B0;
  v9[7] = xmmword_1E30810C0;
  v9[8] = xmmword_1E30810D0;
  v9[9] = xmmword_1E30810E0;
  v9[10] = xmmword_1E30810F0;
  v9[11] = xmmword_1E3081100;
  v9[12] = xmmword_1E3081110;
  v9[13] = xmmword_1E3081120;
  v9[14] = xmmword_1E3081130;
  v9[15] = xmmword_1E3081140;
  v9[16] = xmmword_1E3081150;
  v9[17] = xmmword_1E3081160;
  v9[18] = xmmword_1E3081170;
  v9[19] = xmmword_1E3081180;
  v9[20] = xmmword_1E3081190;
  v9[21] = xmmword_1E30811A0;
  v9[22] = xmmword_1E30811B0;
  v9[23] = xmmword_1E30811C0;
  v9[24] = xmmword_1E30811D0;
  v9[25] = xmmword_1E30811E0;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(this, v9, v10, 0x1AuLL);
  std::vector<BOOL>::resize(v7, (*(this + 1) - *this) >> 4, 1);
  return this;
}

re::audio::ColorPaletteARKitClassification *re::audio::ColorPaletteARKitClassification::ColorPaletteARKitClassification(re::audio::ColorPaletteARKitClassification *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(this + 2) = _Q0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  v7 = this + 48;
  v9[0] = xmmword_1E30811F0;
  v9[1] = xmmword_1E3060D30;
  v9[2] = xmmword_1E3071540;
  v9[3] = xmmword_1E3081200;
  v9[4] = xmmword_1E3081210;
  v9[5] = xmmword_1E3081220;
  v9[6] = xmmword_1E3081230;
  v9[7] = xmmword_1E3081240;
  v9[8] = xmmword_1E3081250;
  v9[9] = xmmword_1E3081260;
  v9[10] = xmmword_1E3081270;
  v9[11] = xmmword_1E3081280;
  v9[12] = xmmword_1E3081290;
  v9[13] = xmmword_1E30812A0;
  v9[14] = xmmword_1E30812B0;
  v9[15] = xmmword_1E30812C0;
  v9[16] = xmmword_1E30812D0;
  v9[17] = xmmword_1E30812E0;
  v9[18] = xmmword_1E30812F0;
  v9[19] = xmmword_1E3081300;
  v9[20] = xmmword_1E3081310;
  v9[21] = xmmword_1E3081320;
  v9[22] = xmmword_1E3081330;
  v9[23] = xmmword_1E3081340;
  v9[24] = xmmword_1E3081350;
  v9[25] = xmmword_1E3081360;
  v9[26] = xmmword_1E3081370;
  v9[27] = xmmword_1E3081380;
  v9[28] = xmmword_1E3081390;
  v9[29] = xmmword_1E30813A0;
  v9[30] = xmmword_1E30813B0;
  v9[31] = xmmword_1E30813C0;
  v9[32] = xmmword_1E30813D0;
  v9[33] = xmmword_1E30813E0;
  v9[34] = xmmword_1E30813F0;
  v9[35] = xmmword_1E3081400;
  v9[36] = xmmword_1E3081410;
  v9[37] = xmmword_1E3081420;
  v9[38] = xmmword_1E3081430;
  v9[39] = xmmword_1E3081440;
  v9[40] = xmmword_1E3081450;
  v9[41] = xmmword_1E3081460;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(this, v9, v10, 0x2AuLL);
  std::vector<BOOL>::resize(v7, (*(this + 1) - *this) >> 4, 1);
  return this;
}

void *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A2EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2EE0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A2FF8);
    qword_1EE1A2FF8 = &unk_1F5CE8F90;
    __cxa_guard_release(&qword_1EE1A2EE0);
  }

  if ((_MergedGlobals_188 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    v3 = re::introspect_AudioSourceSyncState(1);
    if ((_MergedGlobals_188 & 1) == 0)
    {
      v4 = v3;
      _MergedGlobals_188 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A2FF8, 0);
      qword_1EE1A3008 = 0x3000000007;
      dword_1EE1A3010 = v5;
      word_1EE1A3014 = 0;
      *&xmmword_1EE1A3018 = 0;
      *(&xmmword_1EE1A3018 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A3028 = v2;
      unk_1EE1A3030 = 0;
      qword_1EE1A3038 = v4;
      unk_1EE1A3040 = 0;
      qword_1EE1A2FF8 = &unk_1F5CE8F90;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&qword_1EE1A2FF8, &v22);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A3018 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_AudioPlayerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2E90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3098, "AudioPlayerComponent");
    __cxa_guard_release(&qword_1EE1A2E90);
  }

  return &unk_1EE1A3098;
}

void re::ecs2::initInfo_AudioPlayerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x913565130F19710CLL;
  v42[1] = "AudioPlayerComponent";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1A2E88, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A2E88);
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
      qword_1EE1A2FA8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "syncStatesByToken";
      *(v11 + 16) = &qword_1EE1A2FF8;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A2FB0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "registeredAssets";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x8000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A2FB8 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_uint64_t(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "sharedEntityID";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x16000000007;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A2FC0 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::introspect_AudioParameterChange(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "gainChange";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0xB80000000BLL;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A2FC8 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_float(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "rolloffFactor";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x1480000000CLL;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1A2FD0 = v26;
      v27 = re::introspectionAllocator(v26);
      v28 = re::audio::introspect_AudioSourceDirectivityConfiguration(1);
      v29 = (*(*v27 + 32))(v27, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "directivityConfig";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xA80000000DLL;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1A2FD8 = v29;
      v30 = re::introspectionAllocator(v29);
      v31 = re::introspect_AudioParameterChange(1);
      v32 = (*(*v30 + 32))(v30, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "reverbLevelChange";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0xE80000000ELL;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A2FE0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = re::introspect_AudioParameterChange(1);
      v35 = (*(*v33 + 32))(v33, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "directLevelChange";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x1180000000FLL;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1A2FE8 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = v36;
      v38 = qword_1EE1A2EC8;
      if (!qword_1EE1A2EC8)
      {
        v38 = re::ecs2::v1::allocInfo_AudioPlayerComponent(v36);
        qword_1EE1A2EC8 = v38;
        re::ecs2::v1::initInfo_AudioPlayerComponent(v38, v39);
      }

      v40 = (*(*v37 + 32))(v37, 64, 8);
      *v40 = 6;
      *(v40 + 8) = 2;
      *(v40 + 16) = v38;
      *(v40 + 24) = 0;
      *(v40 + 32) = re::ecs2::AudioPlayerComponent_upgradeVersion1;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      qword_1EE1A2FF0 = v40;
      __cxa_guard_release(&qword_1EE1A2E88);
    }
  }

  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1A2FA8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioPlayerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioPlayerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioPlayerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioPlayerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220AudioPlayerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v41 = v43;
}

void *re::ecs2::allocInfo_AudioPlayerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A2E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A2E98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3128, "AudioPlayerSystem");
    __cxa_guard_release(&qword_1EE1A2E98);
  }

  return &unk_1EE1A3128;
}

void re::ecs2::initInfo_AudioPlayerSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x73CC591B6CA5568CLL;
  v6[1] = "AudioPlayerSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioPlayerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioPlayerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioPlayerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioPlayerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioPlayerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioPlayerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioPlayerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AudioPlayerSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(a3 + 416);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 376);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 336);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a3 + 232));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AudioPlayerSystem>(uint64_t a1)
{
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::deinit(a1 + 416);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 376);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 336);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 232));

  re::ecs2::System::~System(a1);
}

re::ecs2::AudioPlayerComponent *re::ecs2::AudioPlayerComponent::AudioPlayerComponent(re::ecs2::AudioPlayerComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE8DB8;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0x7FFFFFFFLL;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 116) = 0x7FFFFFFFLL;
  *(v2 + 160) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0;
  *(v2 + 152) = 0;
  *(v2 + 168) = 1;
  *(v2 + 172) = xmmword_1E30814D0;
  *(v2 + 188) = 1065353216;
  *(v2 + 192) = 0;
  *(v2 + 200) = 1;
  *(v2 + 208) = 0;
  *(v2 + 212) = 0;
  *(v2 + 216) = 1065353216;
  *(v2 + 224) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(v2 + 232) = _D1;
  *(v2 + 240) = 0;
  *(v2 + 248) = 1;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0;
  *(v2 + 264) = 1065353216;
  *(v2 + 272) = 0;
  *(v2 + 280) = _D1;
  *(v2 + 288) = 0;
  *(v2 + 296) = 1;
  *(v2 + 304) = 0;
  *(v2 + 308) = 0;
  *(v2 + 312) = 1065353216;
  *(v2 + 320) = 0;
  *(v2 + 328) = 1065353216;
  *(v2 + 336) = 0;
  *(v2 + 344) = 1;
  *(v2 + 432) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 352) = 0u;
  re::DynamicString::setCapacity(this + 51, 0);
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 59) = 0x7FFFFFFF00000000;
  *(this + 120) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 130) = 0;
  *(this + 524) = 0x7FFFFFFFLL;
  *(this + 67) = 0;
  v8 = *(this + 42);
  *(this + 42) = 0;

  *(this + 45) = 0;
  *(this + 46) = 0;
  return this;
}