void re::internal::defaultConstruct<TetrahedronDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 4) = 1065353216;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<TetrahedronDescriptorParameters>(uint64_t result)
{
  *result = 1;
  *(result + 4) = 1065353216;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *allocInfo_ConeDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE1930B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1930B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193558, "ConeDescriptorParameters");
    __cxa_guard_release(&qword_1EE1930B8);
  }

  return &unk_1EE193558;
}

void initInfo_ConeDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0xA8553AB0F1149538;
  v17[1] = "ConeDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1930C0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE1930C0);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildConeOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193270 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193278 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1100000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193280 = v15;
      __cxa_guard_release(&qword_1EE1930C0);
    }
  }

  *(a1 + 2) = 0x1400000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193270;
  *(a1 + 9) = re::internal::defaultConstruct<ConeDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<ConeDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<ConeDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<ConeDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<ConeDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a3 + 12) = 65793;
  return result;
}

double re::internal::defaultConstructV2<ConeDescriptorParameters>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a1 + 12) = 65793;
  return result;
}

void *allocInfo_SphereDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE1930D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1930D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1935E8, "SphereDescriptorParameters");
    __cxa_guard_release(&qword_1EE1930D0);
  }

  return &unk_1EE1935E8;
}

void initInfo_SphereDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x62D795AD0F05048CLL;
  v17[1] = "SphereDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1930D8, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE1930D8);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildSphereOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193288 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0xC00000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193290 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xD00000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193298 = v15;
      __cxa_guard_release(&qword_1EE1930D8);
    }
  }

  *(a1 + 2) = 0x1000000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193288;
  *(a1 + 9) = re::internal::defaultConstruct<SphereDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<SphereDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<SphereDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<SphereDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

void re::internal::defaultConstruct<SphereDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 8;
  *(a3 + 4) = 1056964608;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<SphereDescriptorParameters>(uint64_t result)
{
  *result = 8;
  *(result + 4) = 1056964608;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *allocInfo_CapsuleDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE1930E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1930E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193678, "CapsuleDescriptorParameters");
    __cxa_guard_release(&qword_1EE1930E8);
  }

  return &unk_1EE193678;
}

void initInfo_CapsuleDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x6E24928FE34990CCLL;
  v17[1] = "CapsuleDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1930F0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE1930F0);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildCapsuleOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1932A0 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1400000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1932A8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1500000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1932B0 = v15;
      __cxa_guard_release(&qword_1EE1930F0);
    }
  }

  *(a1 + 2) = 0x1800000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE1932A0;
  *(a1 + 9) = re::internal::defaultConstruct<CapsuleDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<CapsuleDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<CapsuleDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<CapsuleDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<CapsuleDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 4;
  result = 2.00000047;
  *(a3 + 8) = 0x400000003F000000;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<CapsuleDescriptorParameters>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 4;
  result = 2.00000047;
  *(a1 + 8) = 0x400000003F000000;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *allocInfo_PyramidDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193708, "PyramidDescriptorParameters");
    __cxa_guard_release(&qword_1EE193100);
  }

  return &unk_1EE193708;
}

void initInfo_PyramidDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0xCF698AC4CB601812;
  v17[1] = "PyramidDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193108, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193108);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildPyramidOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1932B8 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1400000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1932C0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1500000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1932C8 = v15;
      __cxa_guard_release(&qword_1EE193108);
    }
  }

  *(a1 + 2) = 0x1800000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE1932B8;
  *(a1 + 9) = re::internal::defaultConstruct<PyramidDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<PyramidDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<PyramidDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<PyramidDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<PyramidDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 4) = result;
  *(a3 + 12) = 1065353216;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<PyramidDescriptorParameters>(uint64_t a1)
{
  *a1 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 4) = result;
  *(a1 + 12) = 1065353216;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *allocInfo_BoxDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193118))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193798, "BoxDescriptorParameters");
    __cxa_guard_release(&qword_1EE193118);
  }

  return &unk_1EE193798;
}

void initInfo_BoxDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x6F2DEA5BDE93D208;
  v17[1] = "BoxDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193120, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193120);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildBoxOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1932D0 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1C00000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1932D8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1D00000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1932E0 = v15;
      __cxa_guard_release(&qword_1EE193120);
    }
  }

  *(a1 + 2) = 0x2000000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE1932D0;
  *(a1 + 9) = re::internal::defaultConstruct<BoxDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<BoxDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<BoxDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<BoxDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<BoxDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x1000100010001;
  result = 0.0078125;
  *(a3 + 8) = xmmword_1E305B4C0;
  *(a3 + 24) = 257;
  *(a3 + 26) = 0;
  return result;
}

double re::internal::defaultConstructV2<BoxDescriptorParameters>(uint64_t a1)
{
  *a1 = 0x1000100010001;
  result = 0.0078125;
  *(a1 + 8) = xmmword_1E305B4C0;
  *(a1 + 24) = 257;
  *(a1 + 26) = 0;
  return result;
}

void *allocInfo_BoxWithRoundedCornersDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193130))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193828, "BoxWithRoundedCornersDescriptorParameters");
    __cxa_guard_release(&qword_1EE193130);
  }

  return &unk_1EE193828;
}

void initInfo_BoxWithRoundedCornersDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x67982B14680DB536;
  v17[1] = "BoxWithRoundedCornersDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193138, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193138);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildBoxWithRoundedCornersOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1932E8 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1932F0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2900000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1932F8 = v15;
      __cxa_guard_release(&qword_1EE193138);
    }
  }

  *(a1 + 2) = 0x2C00000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE1932E8;
  *(a1 + 9) = re::internal::defaultConstruct<BoxWithRoundedCornersDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<BoxWithRoundedCornersDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<BoxWithRoundedCornersDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<BoxWithRoundedCornersDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<BoxWithRoundedCornersDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x3000100010001;
  *(a3 + 8) = 4;
  *(a3 + 12) = xmmword_1E305B4D0;
  *(a3 + 28) = 1065353216;
  *&result = 16777473;
  *(a3 + 32) = 16777473;
  *(a3 + 36) = 1;
  *(a3 + 38) = 0;
  return result;
}

double re::internal::defaultConstructV2<BoxWithRoundedCornersDescriptorParameters>(uint64_t a1)
{
  *a1 = 0x3000100010001;
  *(a1 + 8) = 4;
  *(a1 + 12) = xmmword_1E305B4D0;
  *(a1 + 28) = 1065353216;
  *&result = 16777473;
  *(a1 + 32) = 16777473;
  *(a1 + 36) = 1;
  *(a1 + 38) = 0;
  return result;
}

void *allocInfo_ExtrudedTextDescriptorParameters(void)
{
  if ((atomic_load_explicit(&qword_1EE193148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193148))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1938B8, "ExtrudedTextDescriptorParameters");
    __cxa_guard_release(&qword_1EE193148);
  }

  return &unk_1EE1938B8;
}

void initInfo_ExtrudedTextDescriptorParameters(re::IntrospectionBase *a1)
{
  v17[0] = 0x9AF53A68A747B84ALL;
  v17[1] = "ExtrudedTextDescriptorParameters";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(a1 + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE193150, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_1EE193150);
    if (v4)
    {
      v5 = re::introspectionAllocator(v4);
      v6 = re::introspect_GeomBuildExtrudedTextOptions(1);
      v7 = (*(*v5 + 32))(v5, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "options";
      *(v7 + 16) = v6;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE193300 = v7;
      v8 = re::introspectionAllocator(v7);
      v10 = re::introspect_BOOL(1, v9);
      v11 = (*(*v8 + 32))(v8, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "splitMeshes";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x6800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE193308 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "decimate";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x6900000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE193310 = v15;
      __cxa_guard_release(&qword_1EE193150);
    }
  }

  *(a1 + 2) = 0x7000000008;
  *(a1 + 6) = 8;
  *(a1 + 14) = 0;
  *(a1 + 14) = 3;
  *(a1 + 8) = &qword_1EE193300;
  *(a1 + 9) = re::internal::defaultConstruct<ExtrudedTextDescriptorParameters>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<ExtrudedTextDescriptorParameters>;
  *(a1 + 13) = re::internal::defaultConstructV2<ExtrudedTextDescriptorParameters>;
  *(a1 + 14) = re::internal::defaultDestructV2<ExtrudedTextDescriptorParameters>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v16 = v18;
}

double re::internal::defaultConstruct<ExtrudedTextDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  re::DynamicString::setCapacity(v3, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 4) = result;
  *(v3 + 40) = 5;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0;
  *(v3 + 64) = 0;
  *(v3 + 65) = 4;
  *(v3 + 67) = 16843009;
  *(v3 + 71) = 0;
  return result;
}

double re::internal::defaultDestruct<ExtrudedTextDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<ExtrudedTextDescriptorParameters>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  re::DynamicString::setCapacity(v1, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 4) = result;
  *(v1 + 40) = 5;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0;
  *(v1 + 64) = 0;
  *(v1 + 65) = 4;
  *(v1 + 67) = 16843009;
  *(v1 + 71) = 0;
  return result;
}

double re::internal::defaultDestructV2<ExtrudedTextDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::MeshPrimitiveProvider::makeAsset(re::MeshPrimitiveProvider *this, const re::GeomBuildExtrudedTextOptions *a2)
{
  v125[5] = *MEMORY[0x1E69E9840];
  memset(v53, 0, sizeof(v53));
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v57 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  memset(v61, 0, sizeof(v61));
  v62 = 0x7FFFFFFFLL;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v52 = 0x7FFFFFFFLL;
  v94[0] = &unk_1F5CBB640;
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v95 = vnegq_f32(v3);
  v96 = v3;
  v99 = 0;
  v97 = v50;
  cf = 0;
  v100 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v34 = 0;
  v35 = 0;
  LODWORD(v37) = 0;
  v36 = 0;
  v45 = 0;
  v46 = 0;
  v49 = 0;
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(v41, 0, 36);
  LODWORD(v40) = 0;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  LODWORD(v30) = 16842752;
  BYTE4(v30) = 1;
  *(&v30 + 5) = 0;
  *(&v30 + 9) = 0;
  *(&v30 + 11) = 65793;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  DWORD1(v33) = 0x7FFFFFFF;
  if (*(this + 103) == 1)
  {
    v68[0] = 0;
    v66 = 0;
    v64 = 0;
    v65 = 0;
    v67 = 0;
    *&v111[32] = 0;
    memset(v111, 0, 28);
    re::buildExtrudedText(&v64, v111, this, v94);
    re::DynamicArray<re::GeomModelWithLods>::setCapacity(v53, v66);
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v55 + 1, *&v111[16]);
    if (v66)
    {
      v4 = v68[0];
      v5 = 736 * v66;
      while (1)
      {
        re::GeomModel::GeomModel(&v79);
        re::DynamicArray<re::GeomMesh>::resize(&v81, 1uLL);
        LODWORD(v114[0]) = 0;
        re::DynamicArray<unsigned int>::resize(&v83[1], 1uLL, v114);
        if (!v82)
        {
          break;
        }

        re::GeomMesh::operator=(v83[0], v4);
        re::GeomModelWithLods::GeomModelWithLods(v114);
        re::DynamicArray<re::GeomModel>::add(&v115, &v79);
        v6.n128_f64[0] = re::DynamicArray<re::GeomModelWithLods>::add(v53, v114);
        if (v120)
        {
          if (*&v121[16])
          {
            (*(*v120 + 40))(v6.n128_f64[0]);
          }

          *&v121[16] = 0;
          *v121 = 0;
          v120 = 0uLL;
          ++*&v121[8];
        }

        if (*&v117[8])
        {
          if (v119)
          {
            (*(**&v117[8] + 40))(v6);
          }

          v119 = 0;
          *&v117[16] = 0;
          *&v118 = 0;
          *&v117[8] = 0;
          ++DWORD2(v118);
        }

        re::DynamicArray<re::GeomModel>::deinit(&v115);
        if (*&v114[0] && (BYTE8(v114[0]) & 1) != 0)
        {
          (*(**&v114[0] + 40))();
        }

        re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v93);
        if (v90[32] == 1)
        {
          re::DynamicArray<re::GeomIndexMap>::deinit(&v91);
        }

        if (v88 == 1)
        {
          re::DynamicArray<re::GeomIndexMap>::deinit(&v89);
        }

        if (v83[1])
        {
          if (v87)
          {
            (*(*v83[1] + 40))();
          }

          v87 = 0;
          v84 = 0;
          v85 = 0;
          v83[1] = 0;
          ++v86;
        }

        re::DynamicArray<re::GeomMesh>::deinit(&v81);
        if (v79 && (BYTE8(v79) & 1) != 0)
        {
          (*(*v79 + 40))();
        }

        v4 += 736;
        v5 -= 736;
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      v63 = 0;
      *v117 = 0u;
      v116 = 0u;
      v115 = 0u;
      memset(v114, 0, sizeof(v114));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v104 = 136315906;
      *&v104[4] = "operator[]";
      v105 = 1024;
      v106 = 789;
      v107 = 2048;
      v108 = 0;
      v109 = 2048;
      v110 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_99:
      *v104 = 0;
      v82 = 0u;
      *v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *&v111[4] = "operator[]";
      *&v111[12] = 1024;
      *&v111[14] = 789;
      *&v111[18] = 2048;
      *&v111[20] = v4;
      *&v111[28] = 2048;
      *&v111[30] = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_100:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *v41, *&v41[16], *&v41[24], v42);
      _os_crash();
      __break(1u);
LABEL_101:
      re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
      goto LABEL_102;
    }

LABEL_28:
    if (*&v111[16])
    {
      v7 = 80 * *&v111[16];
      v8 = (*&v111[32] + 64);
      do
      {
        LODWORD(v83[0]) = *v8;
        v9 = *(v8 - 4);
        v10 = *(v8 - 3);
        v11 = *(v8 - 1);
        v81 = *(v8 - 2);
        v82 = v11;
        v79 = v9;
        v80 = v10;
        re::DynamicArray<re::GeomInstance>::add((&v55 + 8), &v79);
        v8 += 20;
        v7 -= 80;
      }

      while (v7);
    }

    re::makeMeshAssetDataFromGeomScene(v53, &v30, &v79);
    if (v79)
    {
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v34, &v79 + 8);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v38 + 8, &v82);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v41[8], &v85);
      re::DynamicArray<re::RigComponentConstraint>::operator=(&v42 + 8, v90);
      v46 = v91;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v47, v92);
    }

    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v79);
    if (*v111 && *&v111[32])
    {
      (*(**v111 + 40))();
    }

    v12 = &v64;
LABEL_48:
    v16 = re::DynamicArray<re::GeomMesh>::deinit(v12);
    goto LABEL_87;
  }

  if (a2)
  {
    *&v115 = 0;
    memset(v114, 0, 28);
    v68[0] = 0;
    v66 = 0;
    v64 = 0;
    v65 = 0;
    v67 = 0;
    re::buildExtrudedText(v114, this, v94);
    v13 = LODWORD(v114[1]);
    re::DynamicArray<float>::resize(&v64, LODWORD(v114[1]));
    v4 = v66;
    if (v13)
    {
      v14 = 0;
      v15 = v68[0];
      while (v4 != v14)
      {
        *(v15 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_99;
    }

LABEL_42:
    re::makeMeshAssetDataWithGeomMeshArray(v115, *&v114[1], v68[0], v4, 0, &v30, &v79);
    if (v79)
    {
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v34, &v79 + 8);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v38 + 8, &v82);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v41[8], &v85);
      re::DynamicArray<re::RigComponentConstraint>::operator=(&v42 + 8, v90);
      v46 = v91;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v47, v92);
    }

    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v79);
    if (v64 && v68[0])
    {
      (*(*v64 + 40))();
    }

    v12 = v114;
    goto LABEL_48;
  }

  re::GeomMesh::GeomMesh(&v79, 0);
  re::buildExtrudedText(&v79, this, v94, v17);
  re::GeomModel::GeomModel(v114);
  re::DynamicArray<re::GeomMesh>::add(&v115, &v79);
  LODWORD(v64) = 0;
  re::DynamicArray<unsigned int>::resize(&v117[8], 1uLL, &v64);
  re::GeomModelWithLods::GeomModelWithLods(&v64);
  re::DynamicString::operator=(&v64, v114);
  re::DynamicArray<re::GeomModel>::add(v68, v114);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v125);
  if (BYTE4(v122) == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v123);
  }

  if (v120 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v120 + 8);
  }

  if (*&v117[8])
  {
    if (v119)
    {
      (*(**&v117[8] + 40))();
    }

    v119 = 0;
    *&v117[16] = 0;
    *&v118 = 0;
    *&v117[8] = 0;
    ++DWORD2(v118);
  }

  re::DynamicArray<re::GeomMesh>::deinit(&v115);
  if (*&v114[0] && (BYTE8(v114[0]) & 1) != 0)
  {
    (*(**&v114[0] + 40))();
  }

  memset(v114, 0, 28);
  v115 = 0u;
  v116 = 0u;
  *&v117[8] = 0u;
  v118 = 0u;
  *v117 = 0;
  LODWORD(v119) = 0;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  v122 = 0x7FFFFFFFLL;
  re::DynamicArray<re::GeomModelWithLods>::add(v114, &v64);
  *v111 = xmmword_1E3047670;
  *&v111[16] = xmmword_1E3047680;
  *&v111[32] = xmmword_1E30476A0;
  v112 = xmmword_1E30474D0;
  v113 = 0;
  v18 = re::DynamicArray<re::GeomInstance>::add((&v115 + 8), v111);
  if (v74)
  {
    if (v78)
    {
      (*(*v74 + 40))(v18);
    }

    v78 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    ++v77;
  }

  if (v69)
  {
    if (v73)
    {
      (*(*v69 + 40))(v18);
    }

    v73 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    ++v72;
  }

  re::DynamicArray<re::GeomModel>::deinit(v68);
  if (v64 && (v65 & 1) != 0)
  {
    (*(*v64 + 40))();
  }

  v20 = v53[0];
  if (v53[0] && *&v114[0] && v53[0] != *&v114[0])
  {
    goto LABEL_100;
  }

  v53[0] = *&v114[0];
  *&v114[0] = v20;
  v21 = v55;
  *&v55 = v115;
  *&v115 = v21;
  ++DWORD2(v114[1]);
  ++v54;
  v22 = *&v53[1];
  *&v53[1] = *(v114 + 8);
  *(v114 + 8) = v22;
  if (*(&v55 + 1) && *(&v115 + 1) && *(&v55 + 1) != *(&v115 + 1))
  {
    goto LABEL_101;
  }

  *(&v55 + 1) = *(&v115 + 1);
  *(&v115 + 1) = *(&v21 + 1);
  v23 = v58;
  *&v58 = *&v117[8];
  *&v117[8] = v23;
  ++*v117;
  ++v57;
  v24 = v56;
  v56 = v116;
  v116 = v24;
  if (*(&v58 + 1) && *&v117[16] && *(&v58 + 1) != *&v117[16])
  {
LABEL_102:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
  }

  *(&v58 + 1) = *&v117[16];
  *&v117[16] = *(&v23 + 1);
  v25 = v59;
  v59 = v118;
  v118 = v25;
  v26 = *v61;
  *v61 = v120;
  *&v120 = v26;
  LODWORD(v119) = v119 + 1;
  ++v60;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v61[8], &v120 + 8);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v120 + 1);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v117[16]);
  if (*(&v115 + 1))
  {
    if (*&v117[8])
    {
      (*(**(&v115 + 1) + 40))();
    }

    *&v117[8] = 0;
    v116 = 0uLL;
    *(&v115 + 1) = 0;
    ++*v117;
  }

  re::DynamicArray<re::GeomModelWithLods>::deinit(v114);
  re::makeMeshAssetDataFromGeomScene(v53, &v30, v114);
  if (LOBYTE(v114[0]) == 1)
  {
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v34, v114 + 8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v38 + 8, &v116);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v41[8], &v118);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v42 + 8, v121);
    v46 = v123;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v47, &v124);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v114);
  re::GeomMesh::~GeomMesh(&v79);
LABEL_87:
  v27 = re::globalAllocators(v16);
  v28 = (*(*v27[2] + 32))(v27[2], 1272, 8);
  re::MeshAsset::MeshAsset(v28, &v34);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v31);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v47);
  if (*(&v42 + 1))
  {
    if (v45)
    {
      (*(**(&v42 + 1) + 40))();
    }

    v45 = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    ++v44;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v41[8]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v38 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(&v34);
  v94[0] = &unk_1F5CBB640;
  if (cf)
  {
    CFRelease(cf);
  }

  re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::deinit(v50);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v61[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v58 + 8);
  if (*(&v55 + 1))
  {
    if (v58)
    {
      (*(**(&v55 + 1) + 40))();
    }

    *&v58 = 0;
    v56 = 0uLL;
    *(&v55 + 1) = 0;
    ++v57;
  }

  re::DynamicArray<re::GeomModelWithLods>::deinit(v53);
  return v28;
}

void *re::DynamicArray<re::GeomModelWithLods>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomModelWithLods>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x98uLL))
        {
          v2 = 152 * a2;
          result = (*(*result + 32))(result, 152 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 152, a2);
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
        v10 = v8 + 152 * v9;
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
          v11[8] = 0;
          *(v11 + 14) = 0;
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[5] = v16;
          *(v8 + 40) = 0;
          v17 = v11[6];
          v11[6] = *(v8 + 48);
          *(v8 + 48) = v17;
          v18 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v18;
          ++*(v8 + 56);
          ++*(v11 + 14);
          v11[13] = 0;
          v11[10] = 0;
          v11[11] = 0;
          v11[9] = 0;
          *(v11 + 24) = 0;
          v19 = *(v8 + 80);
          v11[9] = *(v8 + 72);
          *(v8 + 72) = 0;
          v11[10] = v19;
          *(v8 + 80) = 0;
          v20 = v11[11];
          v11[11] = *(v8 + 88);
          *(v8 + 88) = v20;
          v21 = v11[13];
          v11[13] = *(v8 + 104);
          *(v8 + 104) = v21;
          ++*(v8 + 96);
          ++*(v11 + 24);
          v11[18] = 0;
          v11[15] = 0;
          v11[16] = 0;
          v11[14] = 0;
          *(v11 + 34) = 0;
          v22 = *(v8 + 120);
          v11[14] = *(v8 + 112);
          *(v8 + 112) = 0;
          v11[15] = v22;
          *(v8 + 120) = 0;
          v23 = v11[16];
          v11[16] = *(v8 + 128);
          *(v8 + 128) = v23;
          v24 = v11[18];
          v11[18] = *(v8 + 144);
          *(v8 + 144) = v24;
          ++*(v8 + 136);
          ++*(v11 + 34);
          re::DynamicArray<unsigned long>::deinit(v8 + 112);
          re::DynamicArray<unsigned long>::deinit(v8 + 72);
          re::DynamicArray<re::GeomModel>::deinit(v8 + 32);
          re::DynamicString::deinit(v8);
          v11 += 19;
          v8 += 152;
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

void re::DynamicArray<re::GeomMesh>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v7 = 736 * a2;
    v8 = a2;
    do
    {
      re::GeomMesh::~GeomMesh((*(a1 + 32) + v7));
      ++v8;
      v7 += 736;
    }

    while (v8 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::GeomMesh>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 736 * v4;
      do
      {
        re::GeomMesh::GeomMesh((*(a1 + 32) + v6), 0);
        v6 += 736;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<unsigned int>::resize(void *result, unint64_t a2, int *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<int>::setCapacity(result, a2);
      v5 = v4[2];
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 0;
      v9 = *a3;
      v10 = vdupq_n_s64(v7 - 1);
      v11 = (v4[4] + 4 * v5 + 8);
      do
      {
        v12 = vdupq_n_s64(v8);
        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049620)));
        if (vuzp1_s16(v13, *v10.i8).u8[0])
        {
          *(v11 - 2) = v9;
        }

        if (vuzp1_s16(v13, *&v10).i8[2])
        {
          *(v11 - 1) = v9;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049640)))).i32[1])
        {
          *v11 = v9;
          v11[1] = v9;
        }

        v8 += 4;
        v11 += 4;
      }

      while (((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v8);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

uint64_t re::DynamicArray<re::GeomModel>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomModel>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 248 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v10 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v11;
  v12 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  v13 = *(a2 + 80);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = v13;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v14 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v14;
  v15 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v15;
  ++*(a2 + 96);
  ++*(v5 + 96);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(v5 + 112, (a2 + 112));
  result = re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(v5 + 160, (a2 + 160));
  *(v5 + 240) = 0;
  *(v5 + 232) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 208) = 0;
  v17 = *(a2 + 216);
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 216) = v17;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v18 = *(v5 + 224);
  *(v5 + 224) = *(a2 + 224);
  *(a2 + 224) = v18;
  v19 = *(v5 + 240);
  *(v5 + 240) = *(a2 + 240);
  *(a2 + 240) = v19;
  ++*(a2 + 232);
  ++*(v5 + 232);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::DynamicArray<re::GeomModelWithLods>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomModelWithLods>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 152 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  v14 = *(a2 + 80);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  v16 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v16;
  ++*(a2 + 96);
  ++*(v5 + 96);
  *(v5 + 144) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 112) = 0;
  *(v5 + 136) = 0;
  v17 = *(a2 + 120);
  *(v5 + 112) = *(a2 + 112);
  *(v5 + 120) = v17;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v18 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 128) = v18;
  v19 = *(v5 + 144);
  *(v5 + 144) = *(a2 + 144);
  *(a2 + 144) = v19;
  ++*(a2 + 136);
  ++*(v5 + 136);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::GeomInstance>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomInstance>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = *a2;
  result = *(a2 + 16);
  v7 = *(a2 + 32);
  v8 = *(a2 + 64);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 64) = v8;
  *(v5 + 16) = result;
  *(v5 + 32) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_BYTE *re::Result<re::MeshAssetData,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit((a1 + 176));
    re::DynamicArray<unsigned long>::deinit((a1 + 128));
    re::DynamicArray<re::MeshAssetSkeleton>::deinit((a1 + 88));
    re::DynamicArray<re::MeshAssetInstance>::deinit((a1 + 48));
    re::DynamicArray<re::MeshAssetModel>::deinit((a1 + 8));
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::MeshPrimitiveProvider::init(re::MeshPrimitiveProvider *this, re::AssetProviderRegistry *a2, re::internal::AssetTypeRegistry *a3)
{
  v5 = re::globalAllocators(this);
  v6 = (*(*v5[2] + 32))(v5[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v6 = &unk_1F5CBB750;
  if ((atomic_load_explicit(&qword_1EE193168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193168))
  {
    qword_1EE193160 = re::internal::getOrCreateInfo("TubeDescriptorParameters", allocInfo_TubeDescriptorParameters, initInfo_TubeDescriptorParameters, &unk_1EE193068, 0);
    __cxa_guard_release(&qword_1EE193168);
  }

  qword_1EE187BA0 = qword_1EE193160;
  v6[3] = a2;
  v6[4] = &Tube::providerType;
  *v6 = &unk_1F5CBB690;
  v47 = v6;
  re::AssetProviderRegistry::registerAssetProvider(this, &v47);

  v47 = 0;
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v9, 0);
  *v9 = &unk_1F5CBB8A0;
  if ((atomic_load_explicit(&qword_1EE193178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193178))
  {
    qword_1EE193170 = re::internal::getOrCreateInfo("PlaneDescriptorParameters", allocInfo_PlaneDescriptorParameters, initInfo_PlaneDescriptorParameters, &unk_1EE193080, 0);
    __cxa_guard_release(&qword_1EE193178);
  }

  qword_1EE187B90 = qword_1EE193170;
  v9[3] = a2;
  v9[4] = &Plane::providerType;
  *v9 = &unk_1F5CBB7E0;
  v46 = v9;
  re::AssetProviderRegistry::registerAssetProvider(this, &v46);

  v46 = 0;
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v12, 0);
  *v12 = &unk_1F5CBB9F0;
  if ((atomic_load_explicit(&qword_1EE193188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193188))
  {
    qword_1EE193180 = re::internal::getOrCreateInfo("CylinderDescriptorParameters", allocInfo_CylinderDescriptorParameters, initInfo_CylinderDescriptorParameters, &unk_1EE193098, 0);
    __cxa_guard_release(&qword_1EE193188);
  }

  qword_1EE187840 = qword_1EE193180;
  v12[3] = a2;
  v12[4] = &Cylinder::providerType;
  *v12 = &unk_1F5CBB930;
  v45 = v12;
  re::AssetProviderRegistry::registerAssetProvider(this, &v45);

  v45 = 0;
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v15, 0);
  *v15 = &unk_1F5CBBB40;
  if ((atomic_load_explicit(&qword_1EE193198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193198))
  {
    qword_1EE193190 = re::internal::getOrCreateInfo("TetrahedronDescriptorParameters", allocInfo_TetrahedronDescriptorParameters, initInfo_TetrahedronDescriptorParameters, &unk_1EE1930B0, 0);
    __cxa_guard_release(&qword_1EE193198);
  }

  qword_1EE188338 = qword_1EE193190;
  v15[3] = a2;
  v15[4] = &Tetrahedron::providerType;
  *v15 = &unk_1F5CBBA80;
  v44 = v15;
  re::AssetProviderRegistry::registerAssetProvider(this, &v44);

  v44 = 0;
  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v18, 0);
  *v18 = &unk_1F5CBBC90;
  if ((atomic_load_explicit(&qword_1EE1931A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931A8))
  {
    qword_1EE1931A0 = re::internal::getOrCreateInfo("ConeDescriptorParameters", allocInfo_ConeDescriptorParameters, initInfo_ConeDescriptorParameters, &unk_1EE1930C8, 0);
    __cxa_guard_release(&qword_1EE1931A8);
  }

  qword_1EE187BB0 = qword_1EE1931A0;
  v18[3] = a2;
  v18[4] = &Cone::providerType;
  *v18 = &unk_1F5CBBBD0;
  v43 = v18;
  re::AssetProviderRegistry::registerAssetProvider(this, &v43);

  v43 = 0;
  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v21, 0);
  *v21 = &unk_1F5CBBDE0;
  if ((atomic_load_explicit(&qword_1EE1931B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931B8))
  {
    qword_1EE1931B0 = re::internal::getOrCreateInfo("SphereDescriptorParameters", allocInfo_SphereDescriptorParameters, initInfo_SphereDescriptorParameters, &unk_1EE1930E0, 0);
    __cxa_guard_release(&qword_1EE1931B8);
  }

  qword_1EE187870 = qword_1EE1931B0;
  v21[3] = a2;
  v21[4] = &Sphere::providerType;
  *v21 = &unk_1F5CBBD20;
  v42 = v21;
  re::AssetProviderRegistry::registerAssetProvider(this, &v42);

  v42 = 0;
  v23 = re::globalAllocators(v22);
  v24 = (*(*v23[2] + 32))(v23[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v24, 0);
  *v24 = &unk_1F5CBBF30;
  if ((atomic_load_explicit(&qword_1EE1931C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931C8))
  {
    qword_1EE1931C0 = re::internal::getOrCreateInfo("CapsuleDescriptorParameters", allocInfo_CapsuleDescriptorParameters, initInfo_CapsuleDescriptorParameters, &unk_1EE1930F8, 0);
    __cxa_guard_release(&qword_1EE1931C8);
  }

  qword_1EE187860 = qword_1EE1931C0;
  v24[3] = a2;
  v24[4] = &Capsule::providerType;
  *v24 = &unk_1F5CBBE70;
  v41 = v24;
  re::AssetProviderRegistry::registerAssetProvider(this, &v41);

  v41 = 0;
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v27, 0);
  *v27 = &unk_1F5CBC080;
  if ((atomic_load_explicit(&qword_1EE1931D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931D8))
  {
    qword_1EE1931D0 = re::internal::getOrCreateInfo("PyramidDescriptorParameters", allocInfo_PyramidDescriptorParameters, initInfo_PyramidDescriptorParameters, &unk_1EE193110, 0);
    __cxa_guard_release(&qword_1EE1931D8);
  }

  qword_1EE187850 = qword_1EE1931D0;
  v27[3] = a2;
  v27[4] = &Pyramid::providerType;
  *v27 = &unk_1F5CBBFC0;
  v40 = v27;
  re::AssetProviderRegistry::registerAssetProvider(this, &v40);

  v40 = 0;
  v29 = re::globalAllocators(v28);
  v30 = (*(*v29[2] + 32))(v29[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v30, 0);
  *v30 = &unk_1F5CBC1D0;
  if ((atomic_load_explicit(&qword_1EE1931E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931E8))
  {
    qword_1EE1931E0 = re::internal::getOrCreateInfo("BoxDescriptorParameters", allocInfo_BoxDescriptorParameters, initInfo_BoxDescriptorParameters, &unk_1EE193128, 0);
    __cxa_guard_release(&qword_1EE1931E8);
  }

  qword_1EE187BC0 = qword_1EE1931E0;
  v30[3] = a2;
  v30[4] = &Box::providerType;
  *v30 = &unk_1F5CBC110;
  v39 = v30;
  re::AssetProviderRegistry::registerAssetProvider(this, &v39);

  v39 = 0;
  v32 = re::globalAllocators(v31);
  v33 = (*(*v32[2] + 32))(v32[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v33, 0);
  *v33 = &unk_1F5CBC320;
  if ((atomic_load_explicit(&qword_1EE1931F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1931F8))
  {
    qword_1EE1931F0 = re::internal::getOrCreateInfo("BoxWithRoundedCornersDescriptorParameters", allocInfo_BoxWithRoundedCornersDescriptorParameters, initInfo_BoxWithRoundedCornersDescriptorParameters, &unk_1EE193140, 0);
    __cxa_guard_release(&qword_1EE1931F8);
  }

  qword_1EE1882E8 = qword_1EE1931F0;
  v33[3] = a2;
  v33[4] = &BoxWithRoundedCorners::providerType;
  *v33 = &unk_1F5CBC260;
  v38 = v33;
  re::AssetProviderRegistry::registerAssetProvider(this, &v38);

  v38 = 0;
  v35 = re::globalAllocators(v34);
  v36 = (*(*v35[2] + 32))(v35[2], 40, 8);
  ArcSharedObject::ArcSharedObject(v36, 0);
  *v36 = &unk_1F5CBC470;
  if ((atomic_load_explicit(&qword_1EE193208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193208))
  {
    qword_1EE193200 = re::internal::getOrCreateInfo("ExtrudedTextDescriptorParameters", allocInfo_ExtrudedTextDescriptorParameters, initInfo_ExtrudedTextDescriptorParameters, &unk_1EE193158, 0);
    __cxa_guard_release(&qword_1EE193208);
  }

  qword_1EE188328 = qword_1EE193200;
  v36[3] = a2;
  v36[4] = &ExtrudedText::providerType;
  *v36 = &unk_1F5CBC3B0;
  v37 = v36;
  re::AssetProviderRegistry::registerAssetProvider(this, &v37);
}

uint64_t re::MeshPrimitiveProvider::makeDescriptor@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  *&v16 = Tube::providerType;
  *(&v16 + 1) = strlen(Tube::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  *&v16 = v10;
  *(&v16 + 1) = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 18);
  LODWORD(v16) = *a1;
  *(&v16 + 4) = *(a1 + 4);
  HIDWORD(v16) = v12;
  v17 = v13;
  v18 = v14;
  v19 = a2;
  v20 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187BA0, &v16, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v17 = Plane::providerType;
  v18 = strlen(Plane::providerType);
  v9 = re::DynamicString::operator=(a4, &v17);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v17 = v10;
  v18 = v11;
  re::DynamicString::operator=((a4 + 112), &v17);
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  v14 = *(a1 + 24);
  v15 = *(a1 + 8);
  v17 = *a1;
  v18 = v15;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = a2;
  v23 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187B90, &v17, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  *&v16 = Cylinder::providerType;
  *(&v16 + 1) = strlen(Cylinder::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  *&v16 = v10;
  *(&v16 + 1) = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 20);
  LODWORD(v16) = *a1;
  *(&v16 + 4) = *(a1 + 4);
  HIDWORD(v16) = v12;
  v17 = v13;
  v18 = v14;
  v19 = a2;
  v20 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187840, &v16, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v16 = Capsule::providerType;
  v17 = strlen(Capsule::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v16 = v10;
  v17 = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 16);
  v13 = *(a1 + 18);
  v14 = *(a1 + 8);
  v16 = *a1;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  v20 = a2;
  v21 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187860, &v16, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  *&v16 = Pyramid::providerType;
  *(&v16 + 1) = strlen(Pyramid::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  *&v16 = v10;
  *(&v16 + 1) = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 18);
  LODWORD(v16) = *a1;
  *(&v16 + 4) = *(a1 + 4);
  HIDWORD(v16) = v12;
  v17 = v13;
  v18 = v14;
  v19 = a2;
  v20 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187850, &v16, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v15 = Box::providerType;
  *&v16 = strlen(Box::providerType);
  v9 = re::DynamicString::operator=(a4, &v15);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v15 = v10;
  *&v16 = v11;
  re::DynamicString::operator=((a4 + 112), &v15);
  v12 = *(a1 + 24);
  v13 = *(a1 + 26);
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = v12;
  v18 = v13;
  v19 = a2;
  v20 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187BC0, &v15, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v17 = BoxWithRoundedCorners::providerType;
  *v18 = strlen(BoxWithRoundedCorners::providerType);
  v9 = re::DynamicString::operator=(a4, &v17);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v17 = v10;
  *v18 = v11;
  re::DynamicString::operator=((a4 + 112), &v17);
  v12 = *(a1 + 8);
  v13 = *(a1 + 28);
  v14 = *(a1 + 36);
  v15 = *(a1 + 38);
  v17 = *a1;
  *v18 = v12;
  *&v18[4] = *(a1 + 12);
  v19 = v13;
  v20 = *(a1 + 32);
  v21 = v14;
  v22 = v15;
  v23 = a2;
  v24 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE1882E8, &v17, 0);
}

uint64_t re::MeshPrimitiveProvider::makeDescriptor@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v16 = Tetrahedron::providerType;
  v17 = strlen(Tetrahedron::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v16 = v10;
  v17 = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 8) | (*(a1 + 10) << 16);
  v13 = 0x100000000;
  if (!a2)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if (!a3)
  {
    v14 = 0;
  }

  v16 = *a1;
  v17 = v14 | v13 | v12;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE188338, &v16, 0);
}

{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v16 = Sphere::providerType;
  v17 = strlen(Sphere::providerType);
  v9 = re::DynamicString::operator=(a4, &v16);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v16 = v10;
  v17 = v11;
  re::DynamicString::operator=((a4 + 112), &v16);
  v12 = *(a1 + 8) | (*(a1 + 10) << 16);
  v13 = 0x100000000;
  if (!a2)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if (!a3)
  {
    v14 = 0;
  }

  v16 = *a1;
  v17 = v14 | v13 | v12;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187870, &v16, 0);
}

uint64_t re::MeshPrimitiveProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  *&v13 = Cone::providerType;
  *(&v13 + 1) = strlen(Cone::providerType);
  v9 = re::DynamicString::operator=(a4, &v13);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  *&v13 = v10;
  *(&v13 + 1) = v11;
  re::DynamicString::operator=((a4 + 112), &v13);
  v13 = *a1;
  v14 = a2;
  v15 = a3;
  return re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE187BB0, &v13, 0);
}

uint64_t *re::MeshPrimitiveProvider::makeDescriptor@<X0>(re::MeshPrimitiveProvider *this@<X0>, const re::GeomBuildExtrudedTextOptions *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v8 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v33 = ExtrudedText::providerType;
  v34 = strlen(ExtrudedText::providerType);
  v9 = re::DynamicString::operator=(a4, &v33);
  v10 = *re::MeshAsset::assetType(v9);
  v11 = strlen(v10);
  v33 = v10;
  v34 = v11;
  v12 = re::DynamicString::operator=((a4 + 112), &v33);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v13 = re::DynamicString::setCapacity(&v33, 0);
  *(&v37 + 1) = 0;
  v38 = 0uLL;
  re::DynamicString::setCapacity(&v37, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *&v39 = _D0;
  BYTE8(v39) = 5;
  v40 = 0uLL;
  v41 = 0x1010101000400;
  re::DynamicString::operator=(&v33, this);
  re::DynamicString::operator=(&v37, (this + 32));
  v19 = *(this + 5);
  v39 = *(this + 4);
  v40 = v19;
  v41 = *(this + 12);
  LOBYTE(v42) = v5;
  HIBYTE(v42) = a3;
  re::DynamicString::DynamicString(v27, &v33);
  re::DynamicString::DynamicString(v28, &v37);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE188328, v27, 0);
  if (v28[0])
  {
    if (v28[1])
    {
      (*(*v28[0] + 40))();
    }

    memset(v28, 0, sizeof(v28));
  }

  if (*&v27[0])
  {
    if (BYTE8(v27[0]))
    {
      (*(**&v27[0] + 40))();
    }

    memset(v27, 0, sizeof(v27));
  }

  if (v37)
  {
    if (BYTE8(v37))
    {
      (*(*v37 + 40))(v37, v38, v20, v21, v22, v23, v24, v25);
    }

    v37 = 0u;
    v38 = 0u;
  }

  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))(v33, v35, v20, v21, v22, v23, v24, v25);
    }
  }

  return result;
}

void anonymous namespace::BuildSupport::setFont(_anonymous_namespace_::BuildSupport *this, CFTypeRef cf, unint64_t a3)
{
  *(this + 10) = cf;
  *(this + 11) = a3;
  v5 = *(this + 48);
  v6 = ((a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9 + v5) ^ a3;
  if (cf)
  {
    CFRetain(cf);
  }

  v7 = *(this + 7);
  *(this + 36) = v5;
  *(this + 7) = cf;
  *(this + 8) = v6;
  if (v7)
  {

    CFRelease(v7);
  }
}

void anonymous namespace::BuildSupport::setGlyphIndex(_anonymous_namespace_::BuildSupport *this, uint64_t a2)
{
  v2 = a2;
  *(this + 12) = a2;
  v4 = *(this + 10);
  v5 = ((*(this + 11) << 6) + a2 + (*(this + 11) >> 2) - 0x61C8864680B583E9) ^ *(this + 11);
  if (v4)
  {
    CFRetain(*(this + 10));
  }

  v6 = *(this + 7);
  *(this + 36) = v2;
  *(this + 7) = v4;
  *(this + 8) = v5;
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t anonymous namespace::BuildSupport::cachedGlyph(_anonymous_namespace_::BuildSupport *this)
{
  v1 = *(this + 6);
  re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::internal::FontNameAndGlyphIndexCacheKey>(v3, v1, this + 56, *(this + 8));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16) + 816 * v4 + 32;
  }
}

uint64_t anonymous namespace::BuildSupport::storeGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::internal::FontNameAndGlyphIndexCacheKey>(&v11, v4, a1 + 56, *(a1 + 64));
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(v4 + 16) + 816 * HIDWORD(v12) + 32;
  }

  v5 = re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(v4, v12, v11);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = *(a1 + 72);
  if (v6)
  {
    CFRetain(v6);
  }

  *(v5 + 32) = 0;
  v8 = v5 + 32;
  *(v8 + 8) = 0;
  bzero((v8 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((v8 + 16));
  *(v8 + 728) = 0;
  re::GeomMesh::copy(a2, v8);
  v9 = *(a2 + 752);
  *(v8 + 736) = *(a2 + 736);
  *(v8 + 752) = v9;
  ++*(v4 + 40);
  return v8;
}

__n128 anonymous namespace::BuildSupport::finalBounds(_anonymous_namespace_::BuildSupport *this, const AABB *a2)
{
  result = *&a2->var0.var0.var0.var0;
  v3 = *&a2->var1.var0.var1[1];
  *(this + 1) = *&a2->var0.var0.var0.var0;
  *(this + 2) = v3;
  return result;
}

BOOL re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::internal::FontNameAndGlyphIndexCacheKey>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v8 = a4 % *(a2 + 24);
  v9 = *(*(a2 + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::internal::FontNameAndGlyphIndexCacheKey::operator==(*(a2 + 16) + 816 * v9 + 8, a3);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(a2 + 16);
  v12 = *(v11 + 816 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::internal::FontNameAndGlyphIndexCacheKey::operator==(v11 + 816 * v12 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(a2 + 16);
      v12 = *(v11 + 816 * v13) & 0x7FFFFFFF;
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
  *v5 = a4;
  *(v5 + 8) = v8;
  *(v5 + 12) = v6;
  *(v5 + 16) = v9;
  return result;
}

uint64_t re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::init(v30, v9, v8);
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
          if (v14)
          {
            v16 = 0;
            v17 = 816 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(a1, *(v13 + v16 + 800) % *(a1 + 24));
                v20 = v19;
                v21 = *(v13 + v16 + 8);
                v22 = *(v13 + v16 + 16);
                *(v19 + 8) = v21;
                *(v19 + 16) = v22;
                *(v19 + 24) = *(v13 + v16 + 24);
                if (v21)
                {
                  *(v13 + v16 + 8) = 0;
                  *(v18 + 16) = 0;
                  *(v18 + 24) = 0;
                }

                re::GeomMesh::GeomMesh(v19 + 32, v18 + 32);
                v23 = *(v18 + 784);
                *(v20 + 768) = *(v18 + 768);
                *(v20 + 784) = v23;
              }

              v16 += 816;
            }

            while (v17 != v16);
          }

          re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::deinit(v30);
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
    v25 = *(v24 + 816 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 816 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 816 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 800) = a3;
  ++*(a1 + 28);
  return v24 + 816 * v5;
}

void re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 816 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

re::GeomModel *re::GeomModel::GeomModel(re::GeomModel *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v2 = re::DynamicString::setCapacity(this, 1uLL);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0;
  v3 = re::DynamicArray<re::GeomMesh>::setCapacity(this + 4, 1uLL);
  ++*(this + 14);
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 9) = 0;
  re::DynamicArray<int>::setCapacity(this + 9, 1uLL);
  ++*(this + 24);
  *(this + 112) = 0;
  *(this + 160) = 0;
  *(this + 30) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 58) = 0;
  return this;
}

void *re::DynamicArray<re::GeomMesh>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomMesh>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x2E0uLL))
        {
          v2 = 736 * a2;
          result = (*(*result + 32))(result, 736 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 736, a2);
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
        v10 = 736 * v9;
        v11 = v7;
        do
        {
          re::GeomMesh::GeomMesh(v11, v8);
          re::GeomMesh::~GeomMesh(v8);
          v8 += 92;
          v11 += 736;
          v10 -= 736;
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

re::GeomModelWithLods *re::GeomModelWithLods::GeomModelWithLods(re::GeomModelWithLods *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v2 = re::DynamicString::setCapacity(this, 1uLL);
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0;
  v3 = re::DynamicArray<re::GeomModel>::setCapacity(this + 4, 1uLL);
  ++*(this + 14);
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 9) = 0;
  v4 = re::DynamicArray<int>::setCapacity(this + 9, 1uLL);
  ++*(this + 24);
  *(this + 18) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 14) = 0;
  re::DynamicArray<int>::setCapacity(this + 14, 1uLL);
  ++*(this + 34);
  return this;
}

void *re::DynamicArray<re::GeomModel>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomModel>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF8uLL))
        {
          v2 = 248 * a2;
          result = (*(*result + 32))(result, 248 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 248, a2);
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
        v10 = 248 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::GeomModel>(v8, v11);
          v8 += 248;
          v11 += 248;
          v10 -= 248;
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

double re::ObjectHelper::move<re::GeomModel>(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 8);
  *a2 = *a1;
  *a1 = 0;
  v5 = *(a1 + 16);
  *(a1 + 24) = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  *(a2 + 64) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v8 = a1 + 32;
  v9 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a2 + 40) = v9;
  *(a1 + 40) = 0;
  v10 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v10;
  v11 = *(a2 + 64);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 64) = v11;
  ++*(a1 + 56);
  ++*(a2 + 56);
  *(a2 + 104) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  v12 = a1 + 72;
  v13 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a2 + 80) = v13;
  *(a1 + 80) = 0;
  v14 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = v14;
  v15 = *(a2 + 104);
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 104) = v15;
  ++*(a1 + 96);
  ++*(a2 + 96);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a2 + 112, (a1 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a2 + 160, (a1 + 160));
  *(a2 + 240) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  v16 = *(a1 + 216);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 216) = v16;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v17 = *(a2 + 224);
  *(a2 + 224) = *(a1 + 224);
  *(a1 + 224) = v17;
  v18 = *(a2 + 240);
  *(a2 + 240) = *(a1 + 240);
  *(a1 + 240) = v18;
  ++*(a1 + 232);
  ++*(a2 + 232);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(a1 + 208);
  if (*(a1 + 160) == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(a1 + 168);
  }

  if (*(a1 + 112) == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(a1 + 120);
  }

  re::DynamicArray<unsigned long>::deinit(v12);
  re::DynamicArray<re::GeomMesh>::deinit(v8);

  return re::DynamicString::deinit(a1);
}

uint64_t re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 == 1)
  {
    *(result + 40) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 32) = 0;
    v3 = *(a2 + 2);
    *(result + 8) = *(a2 + 1);
    *(result + 16) = v3;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v4 = *(result + 24);
    *(result + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(result + 40);
    *(result + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    ++*(a2 + 8);
    ++*(result + 32);
  }

  return result;
}

uint64_t re::DynamicArray<re::GeomModel>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 248 * v4;
        do
        {
          v7 = v3 + v5;
          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v3 + v5 + 208);
          if (*(v3 + v5 + 160) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v7 + 168);
          }

          if (*(v7 + 112) == 1)
          {
            re::DynamicArray<re::GeomIndexMap>::deinit(v3 + v5 + 120);
          }

          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 72);
          re::DynamicArray<re::GeomMesh>::deinit(v3 + v5 + 32);
          re::DynamicString::deinit((v3 + v5));
          v5 += 248;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(uint64_t a1)
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
        do
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v3);
          v3 += 6;
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

uint64_t re::DynamicArray<re::GeomIndexMap>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        v6 = (v3 + 16);
        while (1)
        {
          v7 = *(v6 - 4);
          if (v7 == 2)
          {
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v6);
          }

          else if (v7 == 1)
          {
            re::DynamicArray<unsigned long>::deinit(v6);
          }

          else
          {
            if (*(v6 - 4))
            {
              re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
              result = _os_crash();
              __break(1u);
              return result;
            }

            *v6 = 0;
          }

          v6 += 20;
          v5 -= 80;
          if (!v5)
          {
            result = *a1;
            v3 = *(a1 + 32);
            break;
          }
        }
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

uint64_t re::DynamicArray<re::GeomMesh>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::GeomMesh>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  result = re::GeomMesh::GeomMesh(*(a1 + 32) + 736 * v4, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::DynamicArray<re::GeomMesh>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomMesh>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomMesh>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::GeomSkeleton>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 160 * v4;
        do
        {
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v3 + v5 + 112));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 88));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 64));
          re::FixedArray<CoreIKTransform>::deinit((v3 + v5 + 40));
          re::FixedArray<re::StringID>::deinit((v3 + v5 + 16));
          re::StringID::destroyString((v3 + v5));
          v5 += 160;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<re::GeomModelWithLods>::deinit(uint64_t a1)
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
        v5 = 152 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 112);
          re::DynamicArray<unsigned long>::deinit(v3 + 72);
          re::DynamicArray<re::GeomModel>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 152);
          v5 -= 152;
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

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(uint64_t a1)
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
        v5 = 208 * v4;
        v6 = v3 + 168;
        do
        {
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v6);
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v6 - 40);
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v6 - 80);
          re::DynamicArray<unsigned long>::deinit(v6 - 120);
          re::DynamicArray<unsigned long>::deinit(v6 - 160);
          v6 += 208;
          v5 -= 208;
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

uint64_t re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 40;
          v5 -= 40;
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

uint64_t re::DynamicArray<re::MeshAssetSkeleton>::deinit(uint64_t a1)
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
          re::FixedArray<CoreIKTransform>::deinit(v3 + 11);
          re::FixedArray<CoreIKTransform>::deinit(v3 + 8);
          re::FixedArray<CoreIKTransform>::deinit(v3 + 5);
          re::FixedArray<re::StringID>::deinit(v3 + 2);
          re::StringID::destroyString(v3);
          v3 += 14;
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

uint64_t re::DynamicArray<re::MeshAssetInstance>::deinit(uint64_t a1)
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
        v5 = 96 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 96);
          v5 -= 96;
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

uint64_t re::DynamicArray<re::MeshAssetModel>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = v4 << 9;
        do
        {
          re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v3 + v5 + 472);
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v3 + v5 + 432);
          re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v3 + v5 + 392);
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v3 + v5 + 352);
          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v3 + v5 + 312);
          re::DynamicArray<re::MeshLodLevelInfo>::deinit(v3 + v5 + 272);
          re::DynamicArray<re::MeshAssetSkeleton>::deinit(v3 + v5 + 232);
          re::DynamicArray<re::MeshAssetPart>::deinit(v3 + v5 + 192);
          re::DynamicArray<re::MeshAssetSkinningData>::deinit(v3 + v5 + 152);
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v3 + v5 + 112);
          re::StringID::destroyString((v3 + v5));
          v5 += 512;
        }

        while (v6 != v5);
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

uint64_t re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(uint64_t a1)
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
          re::FixedArray<CoreIKTransform>::deinit(v3 + 10);
          re::FixedArray<CoreIKTransform>::deinit(v3 + 7);
          re::FixedArray<CoreIKTransform>::deinit(v3 + 4);
          re::StringID::destroyString((v3 + 2));
          re::StringID::destroyString(v3);
          v3 += 14;
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

uint64_t re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(uint64_t a1)
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
        do
        {
          re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v3 + 2);
          re::StringID::destroyString(v3);
          v3 = (v3 + 48);
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

void *re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 32 * v2;
      v5 = (result[2] + 8);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        v5 += 4;
        v4 -= 32;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshLodLevelInfo>::deinit(uint64_t a1)
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
        v6 = v3 + 8;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 48;
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

uint64_t re::DynamicArray<re::MeshAssetPart>::deinit(uint64_t a1)
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
        v5 = v4 << 8;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + 200));
          re::StringID::destroyString((v3 + 72));
          re::DynamicArray<re::MeshAssetBuffer>::deinit(v3);
          v3 += 256;
          v5 -= 256;
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

uint64_t re::DynamicArray<re::MeshAssetBuffer>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 32);
          re::DynamicString::deinit(v3);
          v3 = (v3 + 80);
          v5 -= 80;
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

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::deinit(uint64_t a1)
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
        v6 = (v3 + 56);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 3);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 6);
          v6 += 18;
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

uint64_t re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(uint64_t a1)
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
        do
        {
          re::FixedArray<re::BlendShapeDefinition>::deinit(v3 + 2);
          re::StringID::destroyString(v3);
          v3 = (v3 + 56);
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

void *re::FixedArray<re::BlendShapeDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 136 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 112));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 88));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 64));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 40));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 16));
        re::StringID::destroyString((v5 + v4));
        v4 += 136;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::GeomMesh>::deinit(uint64_t a1)
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
        v5 = 736 * v4;
        do
        {
          re::GeomMesh::~GeomMesh(v3);
          v3 += 92;
          v5 -= 736;
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

void *re::DynamicArray<re::GeomModel>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomModel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomModel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::GeomModelWithLods>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomModelWithLods>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomModelWithLods>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::GeomInstance>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigSplineIKJoint>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

double re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::deinit(uint64_t *a1)
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
          v9 = *(v6 + v4 + 8);
          if (v9)
          {
            CFRelease(v9);
            *(v8 + 8) = 0;
          }

          re::GeomMesh::~GeomMesh((v8 + 32));
          v3 = *(a1 + 8);
        }

        v4 += 816;
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

void Tube::~Tube(Tube *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<TubeDescriptorParameters,re::GeomBuildTubeOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v60, v10, v11);
    goto LABEL_17;
  }

  v55 = 0x3EC000003F800000;
  v54 = 65544;
  v56 = 1056964608;
  v57 = 257;
  v58 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<TubeDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v60;
    v19 = v61;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v59 == 1)
  {
    re::buildTube(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65 = 136315906;
      *v66 = "operator[]";
      *&v66[8] = 1024;
      *&v66[10] = 789;
      *&v66[14] = 2048;
      *&v66[16] = v15;
      *&v66[24] = 2048;
      *&v66[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65 = 136315906;
      *v66 = "operator[]";
      *&v66[8] = 1024;
      *&v66[10] = 789;
      *&v66[14] = 2048;
      *&v66[16] = 0;
      *&v66[24] = 2048;
      *&v66[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v60) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v60);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildTube(v53, &v54);
  }

LABEL_21:
  v65 = 16842752;
  v66[0] = 1;
  *&v66[1] = 0;
  *&v66[5] = 0;
  *&v66[7] = 65793;
  v67 = 0u;
  memset(&v66[12], 0, 32);
  DWORD1(v67) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v65, &v60);
  v21 = v60;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v60 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v60);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v66[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<TubeDescriptorParameters,re::GeomBuildTubeOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<TubeDescriptorParameters,re::GeomBuildTubeOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v14 = 65544;
  v15 = 0x3EC000003F800000;
  v16 = 1056964608;
  v17 = 257;
  v18 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<TubeDescriptorParameters>(a2, &v14))
  {
    v5 = "";
    if (v19)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v20)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v14);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))(v11, v13);
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Tube::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 16))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 17))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 18))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%f/%d; %f:%f/%d;%s%s%s", a2, *(a1 + 1), a1[1], *(a1 + 2), *(a1 + 3), *a1, v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<TubeDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193168, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193168);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193160 = re::internal::getOrCreateInfo("TubeDescriptorParameters", allocInfo_TubeDescriptorParameters, initInfo_TubeDescriptorParameters, &unk_1EE193068, 0);
      __cxa_guard_release(&qword_1EE193168);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193160;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

re *re::internal::destroyPersistent<re::MeshAsset>(re *result, uint64_t a2, void (***a3)(void))
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

void Plane::~Plane(Plane *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<PlaneDescriptorParameters,re::GeomBuildPlaneOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v64, v10, v11);
    goto LABEL_17;
  }

  LODWORD(v59[0]) = 65537;
  WORD2(v59[0]) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v59[1] = _D0;
  v60 = 0;
  v61 = 257;
  v62 = 2;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<PlaneDescriptorParameters>(a2, v59);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v23 = v64;
    v24 = v65;
    *a4 = 0;
    *(a4 + 8) = v23;
    *(a4 + 24) = v24;
    return result;
  }

  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v54 = 0;
  v55[0] = 0;
  v57 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  if (v63 == 1)
  {
    re::buildPlane(v55, v59);
    v18 = v56;
    re::DynamicArray<float>::resize(v51, v56);
    if (v18)
    {
      v19 = 0;
      v20 = v52;
      v21 = v54;
      while (v20 != v19)
      {
        *(v21 + 4 * v19) = v19;
        if (v18 == ++v19)
        {
          goto LABEL_21;
        }
      }

      *&v46 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v69 = 136315906;
      *v70 = "operator[]";
      *&v70[8] = 1024;
      *&v70[10] = 789;
      *&v70[14] = 2048;
      *&v70[16] = v20;
      *&v70[24] = 2048;
      *&v70[26] = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v46 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v69 = 136315906;
      *v70 = "operator[]";
      *&v70[8] = 1024;
      *&v70[10] = 789;
      *&v70[14] = 2048;
      *&v70[16] = 0;
      *&v70[24] = 2048;
      *&v70[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v55, 1uLL);
    LODWORD(v64) = 0;
    re::DynamicArray<unsigned int>::resize(v51, 1uLL, &v64);
    if (!v56)
    {
      goto LABEL_35;
    }

    re::buildPlane(v58, v59);
  }

LABEL_21:
  v69 = 16842752;
  v70[0] = 1;
  *&v70[1] = 0;
  *&v70[5] = 0;
  *&v70[7] = 65793;
  v71 = 0u;
  memset(&v70[12], 0, 32);
  DWORD1(v71) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v58, v56, v54, v52, 0, &v69, &v64);
  v26 = v64;
  v27 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v28 = (*(*v27[2] + 32))(v27[2], 1272, 8);
  v29 = v28;
  if (v26 == 1)
  {
    v30 = re::MeshAsset::MeshAsset(v28, &v64 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v28);
  }

  v31 = a1[3];
  *&v46 = re::MeshAsset::assetType(v30);
  v32 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v31, &v46);
  v33 = (*(**v32 + 128))(*v32);
  v34 = *v32;
  v35 = re::MeshAsset::assetType(v33);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v50, 2056, a3, *v35);
  if ((*(*v34 + 24))(v34, v29, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
    if (*(a2 + 120))
    {
      v37 = *(a2 + 128);
    }

    else
    {
      v37 = (a2 + 121);
    }

    LOBYTE(v49) = 0;
    BYTE8(v49) = 0;
    v42 = v46;
    v43 = v47;
    v44 = v48;
    *(a4 + 56) = v49;
    *a4 = 1;
    *(a4 + 8) = v42;
    *(a4 + 24) = v43;
    *(a4 + 32) = v44;
    *(a4 + 40) = v29;
    *(a4 + 48) = 0;
  }

  else
  {
    v38 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v29);
    v39 = v46;
    v40 = v47;
    v41 = v48;
    *a4 = 0;
    *(a4 + 8) = v39;
    *(a4 + 24) = v40;
    *(a4 + 32) = v41;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v64);
  v45 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v70[12]);
  if (v51[0] && v54)
  {
    (*(*v51[0] + 40))(v45);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v55);
}

__n128 anonymous namespace::PrimitiveProvider<PlaneDescriptorParameters,re::GeomBuildPlaneOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<PlaneDescriptorParameters,re::GeomBuildPlaneOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LODWORD(v18[0]) = 65537;
  WORD2(v18[0]) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v18[1] = _D0;
  v19 = 0;
  v20 = 257;
  v21 = 2;
  if (re::AssetLoadDescriptor::getIntrospectableData<PlaneDescriptorParameters>(a2, v18))
  {
    v10 = "";
    if (v22)
    {
      v11 = " split";
    }

    else
    {
      v11 = "";
    }

    if (!v23)
    {
      v10 = " full";
    }

    re::DynamicString::format("%s%s", &v16, v11, v10);
    (*(*a1 + 120))(&v13, a1, v18);
    re::DynamicString::operator+(&v13, &v16, v15);
    re::DynamicString::operator=(a3, v15);
    if (*&v15[0])
    {
      if (BYTE8(v15[0]))
      {
        (*(**&v15[0] + 40))();
      }

      memset(v15, 0, sizeof(v15));
    }

    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))();
      }
    }
  }

  else
  {
    v16 = "<mangled>";
    v17 = 9;
    return re::DynamicString::operator=(a3, &v16);
  }

  return result;
}

uint64_t Plane::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  if (*(a1 + 20))
  {
    v2 = "";
  }

  else
  {
    v2 = " noUV";
  }

  if (*(a1 + 21))
  {
    v3 = "";
  }

  else
  {
    v3 = " noNorm";
  }

  return re::DynamicString::format("%fx%f; %dx%d; r=%f/%d;%s%s", a2, *(a1 + 2), *(a1 + 3), *a1, a1[1], *(a1 + 4), a1[2], v2, v3);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<PlaneDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193178, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193178);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193170 = re::internal::getOrCreateInfo("PlaneDescriptorParameters", allocInfo_PlaneDescriptorParameters, initInfo_PlaneDescriptorParameters, &unk_1EE193080, 0);
      __cxa_guard_release(&qword_1EE193178);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193170;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Cylinder::~Cylinder(Cylinder *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<CylinderDescriptorParameters,re::GeomBuildCylinderOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v59, v10, v11);
    goto LABEL_17;
  }

  v54 = 65544;
  v55 = 0x3F0000003F800000;
  v56 = 0x10101013F000000;
  v57 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<CylinderDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v59;
    v19 = v60;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v58 == 1)
  {
    re::buildCylinder(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v64 = 136315906;
      *v65 = "operator[]";
      *&v65[8] = 1024;
      *&v65[10] = 789;
      *&v65[14] = 2048;
      *&v65[16] = v15;
      *&v65[24] = 2048;
      *&v65[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v64 = 136315906;
      *v65 = "operator[]";
      *&v65[8] = 1024;
      *&v65[10] = 789;
      *&v65[14] = 2048;
      *&v65[16] = 0;
      *&v65[24] = 2048;
      *&v65[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v59) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v59);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildCylinder(v53, &v54);
  }

LABEL_21:
  v64 = 16842752;
  v65[0] = 1;
  *&v65[1] = 0;
  *&v65[5] = 0;
  *&v65[7] = 65793;
  v66 = 0u;
  memset(&v65[12], 0, 32);
  DWORD1(v66) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v64, &v59);
  v21 = v59;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v59 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v59);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v65[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<CylinderDescriptorParameters,re::GeomBuildCylinderOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<CylinderDescriptorParameters,re::GeomBuildCylinderOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v13 = 65544;
  v14 = 0x3F0000003F800000;
  v15 = 0x10101013F000000;
  v16 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<CylinderDescriptorParameters>(a2, &v13))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v13);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Cylinder::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 16))
  {
    v3 = " capTop";
  }

  else
  {
    v3 = "";
  }

  v4 = " capBottom";
  if (!*(a1 + 16))
  {
    v4 = "";
  }

  if (*(a1 + 18))
  {
    v5 = "";
  }

  else
  {
    v5 = " noUV";
  }

  if (*(a1 + 19))
  {
    v6 = "";
  }

  else
  {
    v6 = " noNorm";
  }

  if (*(a1 + 20))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%fx%f:%f; %dx%d;%s%s%s%s%s", a2, *(a1 + 1), *(a1 + 2), *(a1 + 3), *a1, a1[1], v3, v4, v5, v6, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<CylinderDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193188, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193188);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193180 = re::internal::getOrCreateInfo("CylinderDescriptorParameters", allocInfo_CylinderDescriptorParameters, initInfo_CylinderDescriptorParameters, &unk_1EE193098, 0);
      __cxa_guard_release(&qword_1EE193188);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193180;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Tetrahedron::~Tetrahedron(Tetrahedron *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<TetrahedronDescriptorParameters,re::GeomBuildTetrahedronOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v58, v10, v11);
    goto LABEL_17;
  }

  LOWORD(v54) = 1;
  HIDWORD(v54) = 1065353216;
  v55 = 257;
  v56 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<TetrahedronDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v58;
    v19 = v59;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v57 == 1)
  {
    re::buildTetrahedron(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = v15;
      *&v64[24] = 2048;
      *&v64[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = 0;
      *&v64[24] = 2048;
      *&v64[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v58) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v58);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildTetrahedron(v53, &v54);
  }

LABEL_21:
  v63 = 16842752;
  v64[0] = 1;
  *&v64[1] = 0;
  *&v64[5] = 0;
  *&v64[7] = 65793;
  v65 = 0u;
  memset(&v64[12], 0, 32);
  DWORD1(v65) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v63, &v58);
  v21 = v58;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v58 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v58);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v64[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<TetrahedronDescriptorParameters,re::GeomBuildTetrahedronOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<TetrahedronDescriptorParameters,re::GeomBuildTetrahedronOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LOWORD(v14) = 1;
  HIDWORD(v14) = 1065353216;
  v15 = 257;
  v16 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<TetrahedronDescriptorParameters>(a2, &v14))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v14);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))(v11, v13);
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Tetrahedron::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 8))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 9))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 10))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%f/%d;%s%s%s", a2, *(a1 + 1), *a1, v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<TetrahedronDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193198, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193198);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193190 = re::internal::getOrCreateInfo("TetrahedronDescriptorParameters", allocInfo_TetrahedronDescriptorParameters, initInfo_TetrahedronDescriptorParameters, &unk_1EE1930B0, 0);
      __cxa_guard_release(&qword_1EE193198);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193190;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Cone::~Cone(Cone *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<ConeDescriptorParameters,re::GeomBuildConeOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v58, v10, v11);
    goto LABEL_17;
  }

  v54 = 65544;
  v55 = 0x3F0000003F800000;
  v56 = 65793;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<ConeDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v58;
    v19 = v59;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v57 == 1)
  {
    re::buildCone(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = v15;
      *&v64[24] = 2048;
      *&v64[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = 0;
      *&v64[24] = 2048;
      *&v64[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v58) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v58);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildCone(v53, &v54);
  }

LABEL_21:
  v63 = 16842752;
  v64[0] = 1;
  *&v64[1] = 0;
  *&v64[5] = 0;
  *&v64[7] = 65793;
  v65 = 0u;
  memset(&v64[12], 0, 32);
  DWORD1(v65) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v63, &v58);
  v21 = v58;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v58 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v58);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v64[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<ConeDescriptorParameters,re::GeomBuildConeOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<ConeDescriptorParameters,re::GeomBuildConeOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v14 = 65544;
  v15 = 0x3F0000003F800000;
  v16 = 65793;
  if (re::AssetLoadDescriptor::getIntrospectableData<ConeDescriptorParameters>(a2, &v14))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v14);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))(v11, v13);
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Cone::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  v3 = " cap";
  if (!*(a1 + 12))
  {
    v3 = "";
  }

  if (*(a1 + 13))
  {
    v4 = "";
  }

  else
  {
    v4 = " noUV";
  }

  if (*(a1 + 14))
  {
    v5 = "";
  }

  else
  {
    v5 = " noNorm";
  }

  if (*(a1 + 15))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%f/%d; %f/%d;%s%s%s%s", a2, *(a1 + 2), *a1, *(a1 + 1), a1[1], v3, v4, v5, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<ConeDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931A8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931A8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931A0 = re::internal::getOrCreateInfo("ConeDescriptorParameters", allocInfo_ConeDescriptorParameters, initInfo_ConeDescriptorParameters, &unk_1EE1930C8, 0);
      __cxa_guard_release(&qword_1EE1931A8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931A0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Sphere::~Sphere(Sphere *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<SphereDescriptorParameters,re::GeomBuildSphereOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v58, v10, v11);
    goto LABEL_17;
  }

  LOWORD(v54) = 8;
  HIDWORD(v54) = 1056964608;
  v55 = 257;
  v56 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<SphereDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v58;
    v19 = v59;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v57 == 1)
  {
    re::buildSphere(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = v15;
      *&v64[24] = 2048;
      *&v64[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = 0;
      *&v64[24] = 2048;
      *&v64[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v58) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v58);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildSphere(v53, &v54);
  }

LABEL_21:
  v63 = 16842752;
  v64[0] = 1;
  *&v64[1] = 0;
  *&v64[5] = 0;
  *&v64[7] = 65793;
  v65 = 0u;
  memset(&v64[12], 0, 32);
  DWORD1(v65) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v63, &v58);
  v21 = v58;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v58 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v58);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v64[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<SphereDescriptorParameters,re::GeomBuildSphereOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<SphereDescriptorParameters,re::GeomBuildSphereOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LOWORD(v14) = 8;
  HIDWORD(v14) = 1056964608;
  v15 = 257;
  v16 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<SphereDescriptorParameters>(a2, &v14))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v14);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))(v11, v13);
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Sphere::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 8))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 9))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 10))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%f/%d;%s%s%s", a2, *(a1 + 1), *a1, v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<SphereDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931B8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931B8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931B0 = re::internal::getOrCreateInfo("SphereDescriptorParameters", allocInfo_SphereDescriptorParameters, initInfo_SphereDescriptorParameters, &unk_1EE1930E0, 0);
      __cxa_guard_release(&qword_1EE1931B8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931B0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Capsule::~Capsule(Capsule *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<CapsuleDescriptorParameters,re::GeomBuildCapsuleOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v58, v10, v11);
    goto LABEL_17;
  }

  LODWORD(v54[0]) = 65544;
  WORD2(v54[0]) = 4;
  v54[1] = 0x400000003F000000;
  v55 = 257;
  v56 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<CapsuleDescriptorParameters>(a2, v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v58;
    v19 = v59;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v57 == 1)
  {
    re::buildCapsule(v50, v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = v15;
      *&v64[24] = 2048;
      *&v64[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      *v64 = "operator[]";
      *&v64[8] = 1024;
      *&v64[10] = 789;
      *&v64[14] = 2048;
      *&v64[16] = 0;
      *&v64[24] = 2048;
      *&v64[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v58) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v58);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::buildCapsule(v53, v54);
  }

LABEL_21:
  v63 = 16842752;
  v64[0] = 1;
  *&v64[1] = 0;
  *&v64[5] = 0;
  *&v64[7] = 65793;
  v65 = 0u;
  memset(&v64[12], 0, 32);
  DWORD1(v65) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v63, &v58);
  v21 = v58;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v58 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v58);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v64[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<CapsuleDescriptorParameters,re::GeomBuildCapsuleOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<CapsuleDescriptorParameters,re::GeomBuildCapsuleOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LODWORD(v14[0]) = 65544;
  WORD2(v14[0]) = 4;
  v14[1] = 0x400000003F000000;
  v15 = 257;
  v16 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<CapsuleDescriptorParameters>(a2, v14))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, v14);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))(v11, v13);
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Capsule::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 16))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 17))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 18))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%d; %f/%d; %f/%d;%s%s%s", a2, *a1, *(a1 + 2), a1[2], *(a1 + 3), a1[1], v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<CapsuleDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931C8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931C8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931C0 = re::internal::getOrCreateInfo("CapsuleDescriptorParameters", allocInfo_CapsuleDescriptorParameters, initInfo_CapsuleDescriptorParameters, &unk_1EE1930F8, 0);
      __cxa_guard_release(&qword_1EE1931C8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931C0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Pyramid::~Pyramid(Pyramid *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<PyramidDescriptorParameters,re::GeomBuildPyramidOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v63, v10, v11);
    goto LABEL_17;
  }

  LOWORD(v59) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(&v59 + 4) = _D0;
  HIDWORD(v59) = 1065353216;
  v60 = 257;
  v61 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<PyramidDescriptorParameters>(a2, &v59);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v23 = v63;
    v24 = v64;
    *a4 = 0;
    *(a4 + 8) = v23;
    *(a4 + 24) = v24;
    return result;
  }

  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v54 = 0;
  v55[0] = 0;
  v57 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  if (v62 == 1)
  {
    re::buildPyramid(v55, &v59);
    v18 = v56;
    re::DynamicArray<float>::resize(v51, v56);
    if (v18)
    {
      v19 = 0;
      v20 = v52;
      v21 = v54;
      while (v20 != v19)
      {
        *(v21 + 4 * v19) = v19;
        if (v18 == ++v19)
        {
          goto LABEL_21;
        }
      }

      *&v46 = 0;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      *v69 = "operator[]";
      *&v69[8] = 1024;
      *&v69[10] = 789;
      *&v69[14] = 2048;
      *&v69[16] = v20;
      *&v69[24] = 2048;
      *&v69[26] = v20;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v46 = 0;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      *v69 = "operator[]";
      *&v69[8] = 1024;
      *&v69[10] = 789;
      *&v69[14] = 2048;
      *&v69[16] = 0;
      *&v69[24] = 2048;
      *&v69[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v55, 1uLL);
    LODWORD(v63) = 0;
    re::DynamicArray<unsigned int>::resize(v51, 1uLL, &v63);
    if (!v56)
    {
      goto LABEL_35;
    }

    re::buildPyramid(v58, &v59);
  }

LABEL_21:
  v68 = 16842752;
  v69[0] = 1;
  *&v69[1] = 0;
  *&v69[5] = 0;
  *&v69[7] = 65793;
  v70 = 0u;
  memset(&v69[12], 0, 32);
  DWORD1(v70) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v58, v56, v54, v52, 0, &v68, &v63);
  v26 = v63;
  v27 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v28 = (*(*v27[2] + 32))(v27[2], 1272, 8);
  v29 = v28;
  if (v26 == 1)
  {
    v30 = re::MeshAsset::MeshAsset(v28, &v63 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v28);
  }

  v31 = a1[3];
  *&v46 = re::MeshAsset::assetType(v30);
  v32 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v31, &v46);
  v33 = (*(**v32 + 128))(*v32);
  v34 = *v32;
  v35 = re::MeshAsset::assetType(v33);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v50, 2056, a3, *v35);
  if ((*(*v34 + 24))(v34, v29, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
    if (*(a2 + 120))
    {
      v37 = *(a2 + 128);
    }

    else
    {
      v37 = (a2 + 121);
    }

    LOBYTE(v49) = 0;
    BYTE8(v49) = 0;
    v42 = v46;
    v43 = v47;
    v44 = v48;
    *(a4 + 56) = v49;
    *a4 = 1;
    *(a4 + 8) = v42;
    *(a4 + 24) = v43;
    *(a4 + 32) = v44;
    *(a4 + 40) = v29;
    *(a4 + 48) = 0;
  }

  else
  {
    v38 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v29);
    v39 = v46;
    v40 = v47;
    v41 = v48;
    *a4 = 0;
    *(a4 + 8) = v39;
    *(a4 + 24) = v40;
    *(a4 + 32) = v41;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v63);
  v45 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69[12]);
  if (v51[0] && v54)
  {
    (*(*v51[0] + 40))(v45);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v55);
}

__n128 anonymous namespace::PrimitiveProvider<PyramidDescriptorParameters,re::GeomBuildPyramidOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<PyramidDescriptorParameters,re::GeomBuildPyramidOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v19[0] = 1;
  __asm { FMOV            V0.2S, #1.0 }

  v20 = _D0;
  v21 = 1065353216;
  v22 = 257;
  v23 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<PyramidDescriptorParameters>(a2, v19))
  {
    v10 = "";
    if (v24)
    {
      v11 = " split";
    }

    else
    {
      v11 = "";
    }

    if (!v25)
    {
      v10 = " full";
    }

    re::DynamicString::format("%s%s", &v16, v11, v10);
    (*(*a1 + 120))(&v13, a1, v19);
    re::DynamicString::operator+(&v13, &v16, v15);
    re::DynamicString::operator=(a3, v15);
    if (*&v15[0])
    {
      if (BYTE8(v15[0]))
      {
        (*(**&v15[0] + 40))();
      }

      memset(v15, 0, sizeof(v15));
    }

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

  else
  {
    v16 = "<mangled>";
    v17 = 9;
    return re::DynamicString::operator=(a3, &v16);
  }

  return result;
}

uint64_t Pyramid::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 16))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 17))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 18))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%fx%fx%f/%d;%s%s%s", a2, *(a1 + 1), *(a1 + 2), *(a1 + 3), *a1, v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<PyramidDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931D8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931D8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931D0 = re::internal::getOrCreateInfo("PyramidDescriptorParameters", allocInfo_PyramidDescriptorParameters, initInfo_PyramidDescriptorParameters, &unk_1EE193110, 0);
      __cxa_guard_release(&qword_1EE1931D8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931D0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void Box::~Box(Box *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<BoxDescriptorParameters,re::GeomBuildBoxOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v59, v10, v11);
    goto LABEL_17;
  }

  v54 = 0x1000100010001;
  v55 = xmmword_1E305B4C0;
  v56 = 257;
  v57 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<BoxDescriptorParameters>(a2, &v54);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v59;
    v19 = v60;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v49 = 0;
  v50[0] = 0;
  v52 = 0;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v48 = 0;
  if (v58 == 1)
  {
    re::buildBox(v50, &v54);
    v13 = v51;
    re::DynamicArray<float>::resize(v46, v51);
    if (v13)
    {
      v14 = 0;
      v15 = v47;
      v16 = v49;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v41 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v64 = 136315906;
      *v65 = "operator[]";
      *&v65[8] = 1024;
      *&v65[10] = 789;
      *&v65[14] = 2048;
      *&v65[16] = v15;
      *&v65[24] = 2048;
      *&v65[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v41 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v64 = 136315906;
      *v65 = "operator[]";
      *&v65[8] = 1024;
      *&v65[10] = 789;
      *&v65[14] = 2048;
      *&v65[16] = 0;
      *&v65[24] = 2048;
      *&v65[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v50, 1uLL);
    LODWORD(v59) = 0;
    re::DynamicArray<unsigned int>::resize(v46, 1uLL, &v59);
    if (!v51)
    {
      goto LABEL_35;
    }

    re::internal::buildBoxHelper(v53, &v59, &v54);
  }

LABEL_21:
  v64 = 16842752;
  v65[0] = 1;
  *&v65[1] = 0;
  *&v65[5] = 0;
  *&v65[7] = 65793;
  v66 = 0u;
  memset(&v65[12], 0, 32);
  DWORD1(v66) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v53, v51, v49, v47, 0, &v64, &v59);
  v21 = v59;
  v22 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v23 = (*(*v22[2] + 32))(v22[2], 1272, 8);
  v24 = v23;
  if (v21 == 1)
  {
    v25 = re::MeshAsset::MeshAsset(v23, &v59 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v23);
  }

  v26 = a1[3];
  *&v41 = re::MeshAsset::assetType(v25);
  v27 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v26, &v41);
  v28 = (*(**v27 + 128))(*v27);
  v29 = *v27;
  v30 = re::MeshAsset::assetType(v28);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v45, 2056, a3, *v30);
  if ((*(*v29 + 24))(v29, v24, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    if (*(a2 + 120))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = (a2 + 121);
    }

    LOBYTE(v44) = 0;
    BYTE8(v44) = 0;
    v37 = v41;
    v38 = v42;
    v39 = v43;
    *(a4 + 56) = v44;
    *a4 = 1;
    *(a4 + 8) = v37;
    *(a4 + 24) = v38;
    *(a4 + 32) = v39;
    *(a4 + 40) = v24;
    *(a4 + 48) = 0;
  }

  else
  {
    v33 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v24);
    v34 = v41;
    v35 = v42;
    v36 = v43;
    *a4 = 0;
    *(a4 + 8) = v34;
    *(a4 + 24) = v35;
    *(a4 + 32) = v36;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v59);
  v40 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v65[12]);
  if (v46[0] && v49)
  {
    (*(*v46[0] + 40))(v40);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v50);
}

__n128 anonymous namespace::PrimitiveProvider<BoxDescriptorParameters,re::GeomBuildBoxOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<BoxDescriptorParameters,re::GeomBuildBoxOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v13 = 0x1000100010001;
  v14 = xmmword_1E305B4C0;
  v15 = 257;
  v16 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<BoxDescriptorParameters>(a2, &v13))
  {
    v5 = "";
    if (v17)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v18)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v13);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t Box::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 24))
  {
    v3 = "";
  }

  else
  {
    v3 = " noUV";
  }

  if (*(a1 + 25))
  {
    v4 = "";
  }

  else
  {
    v4 = " noNorm";
  }

  if (*(a1 + 26))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%fx%fx%f; %dx%dx%d; r=%f/%d;%s%s%s", a2, *(a1 + 3), *(a1 + 4), *(a1 + 5), *a1, a1[1], a1[2], *(a1 + 2), a1[3], v3, v4, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<BoxDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931E8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931E8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931E0 = re::internal::getOrCreateInfo("BoxDescriptorParameters", allocInfo_BoxDescriptorParameters, initInfo_BoxDescriptorParameters, &unk_1EE193128, 0);
      __cxa_guard_release(&qword_1EE1931E8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931E0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void BoxWithRoundedCorners::~BoxWithRoundedCorners(BoxWithRoundedCorners *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::PrimitiveProvider<BoxWithRoundedCornersDescriptorParameters,re::GeomBuildBoxWithRoundedCornersOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  if (strcmp(v8, v9))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v63, v10, v11);
    goto LABEL_17;
  }

  v55 = 0x3000100010001;
  v56 = 4;
  v57 = xmmword_1E305B4D0;
  v58 = 1065353216;
  v59 = 16777473;
  v60 = 1;
  v61 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<BoxWithRoundedCornersDescriptorParameters>(a2, &v55);
  if ((Introspectable & 1) == 0)
  {
LABEL_17:
    v18 = v63;
    v19 = v64;
    *a4 = 0;
    *(a4 + 8) = v18;
    *(a4 + 24) = v19;
    return result;
  }

  v54 = 0;
  v51[1] = 0;
  v52 = 0;
  v50 = 0;
  v51[0] = 0;
  v53 = 0;
  v47[1] = 0;
  v48 = 0;
  v47[0] = 0;
  v49 = 0;
  if (v62 == 1)
  {
    re::buildBoxWithRoundedCorners(v51, &v55);
    v13 = v52;
    re::DynamicArray<float>::resize(v47, v52);
    if (v13)
    {
      v14 = 0;
      v15 = v48;
      v16 = v50;
      while (v15 != v14)
      {
        *(v16 + 4 * v14) = v14;
        if (v13 == ++v14)
        {
          goto LABEL_21;
        }
      }

      *&v42 = 0;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      *v69 = "operator[]";
      *&v69[8] = 1024;
      *&v69[10] = 789;
      *&v69[14] = 2048;
      *&v69[16] = v15;
      *&v69[24] = 2048;
      *&v69[26] = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      *&v42 = 0;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      *v69 = "operator[]";
      *&v69[8] = 1024;
      *&v69[10] = 789;
      *&v69[14] = 2048;
      *&v69[16] = 0;
      *&v69[24] = 2048;
      *&v69[26] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  else
  {
    re::DynamicArray<re::GeomMesh>::resize(v51, 1uLL);
    LODWORD(v63) = 0;
    re::DynamicArray<unsigned int>::resize(v47, 1uLL, &v63);
    if (!v52)
    {
      goto LABEL_35;
    }

    v20 = v54;
  }

LABEL_21:
  v68 = 16842752;
  v69[0] = 1;
  *&v69[1] = 0;
  *&v69[5] = 0;
  *&v69[7] = 65793;
  v70 = 0u;
  memset(&v69[12], 0, 32);
  DWORD1(v70) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v54, v52, v50, v48, 0, &v68, &v63);
  v22 = v63;
  v23 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v24 = (*(*v23[2] + 32))(v23[2], 1272, 8);
  v25 = v24;
  if (v22 == 1)
  {
    v26 = re::MeshAsset::MeshAsset(v24, &v63 + 8);
  }

  else
  {
    re::MeshAsset::MeshAsset(v24);
  }

  v27 = a1[3];
  *&v42 = re::MeshAsset::assetType(v26);
  v28 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v27, &v42);
  v29 = (*(**v28 + 128))(*v28);
  v30 = *v28;
  v31 = re::MeshAsset::assetType(v29);
  re::AssetSignpost::ScopeGuard::ScopeGuard(v46, 2056, a3, *v31);
  if ((*(*v30 + 24))(v30, v25, 0, 0))
  {
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46);
    if (*(a2 + 120))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = (a2 + 121);
    }

    LOBYTE(v45) = 0;
    BYTE8(v45) = 0;
    v38 = v42;
    v39 = v43;
    v40 = v44;
    *(a4 + 56) = v45;
    *a4 = 1;
    *(a4 + 8) = v38;
    *(a4 + 24) = v39;
    *(a4 + 32) = v40;
    *(a4 + 40) = v25;
    *(a4 + 48) = 0;
  }

  else
  {
    v34 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v25);
    v35 = v42;
    v36 = v43;
    v37 = v44;
    *a4 = 0;
    *(a4 + 8) = v35;
    *(a4 + 24) = v36;
    *(a4 + 32) = v37;
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v46);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v63);
  v41 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69[12]);
  if (v47[0] && v50)
  {
    (*(*v47[0] + 40))(v41);
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v51);
}

__n128 anonymous namespace::PrimitiveProvider<BoxWithRoundedCornersDescriptorParameters,re::GeomBuildBoxWithRoundedCornersOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<BoxWithRoundedCornersDescriptorParameters,re::GeomBuildBoxWithRoundedCornersOptions>::getDescription(uint64_t a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v13 = 0x3000100010001;
  v14 = 4;
  v15 = xmmword_1E305B4D0;
  v16 = 1065353216;
  v17 = 16777473;
  v18 = 1;
  v19 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<BoxWithRoundedCornersDescriptorParameters>(a2, &v13))
  {
    v5 = "";
    if (v20)
    {
      v6 = " split";
    }

    else
    {
      v6 = "";
    }

    if (!v21)
    {
      v5 = " full";
    }

    re::DynamicString::format("%s%s", &v11, v6, v5);
    (*(*a1 + 120))(&v8, a1, &v13);
    re::DynamicString::operator+(&v8, &v11, v10);
    re::DynamicString::operator=(a3, v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  else
  {
    v11 = "<mangled>";
    v12 = 9;
    return re::DynamicString::operator=(a3, &v11);
  }

  return result;
}

uint64_t BoxWithRoundedCorners::describe@<X0>(unsigned __int16 *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v2 = "";
  if (*(a1 + 35))
  {
    v3 = "";
  }

  else
  {
    v3 = " disCorner";
  }

  if (*(a1 + 36))
  {
    v4 = "";
  }

  else
  {
    v4 = "noClamp";
  }

  if (*(a1 + 37))
  {
    v5 = " normUV";
  }

  else
  {
    v5 = "";
  }

  v6 = " reflUV";
  if (!*(a1 + 38))
  {
    v6 = "";
  }

  if (*(a1 + 32))
  {
    v7 = "";
  }

  else
  {
    v7 = " noUV";
  }

  if (*(a1 + 33))
  {
    v8 = "";
  }

  else
  {
    v8 = " noNorm";
  }

  if (*(a1 + 34))
  {
    v2 = " merge";
  }

  return re::DynamicString::format("%fx%fx%f; %dx%dx%d; %f/%d; %f/%d;%s%s%s%s%s%s%s", a2, *(a1 + 5), *(a1 + 6), *(a1 + 7), *a1, a1[1], a1[2], *(a1 + 3), a1[3], *(a1 + 4), a1[4], v3, v4, v5, v6, v7, v8, v2);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<BoxWithRoundedCornersDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE1931F8, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE1931F8);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE1931F0 = re::internal::getOrCreateInfo("BoxWithRoundedCornersDescriptorParameters", allocInfo_BoxWithRoundedCornersDescriptorParameters, initInfo_BoxWithRoundedCornersDescriptorParameters, &unk_1EE193140, 0);
      __cxa_guard_release(&qword_1EE1931F8);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE1931F0;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void ExtrudedText::~ExtrudedText(ExtrudedText *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t ExtrudedText::load@<X0>(ExtrudedText *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, const re::CancellationToken *a4@<X4>, uint64_t a5@<X2>, uint64_t a6@<X8>)
{
  if (*(a2 + 8))
  {
    v10 = *(a2 + 2);
  }

  else
  {
    v10 = a2 + 9;
  }

  v11 = (*(*this + 32))(this);
  v12 = strcmp(v10, v11);
  if (v12)
  {
    v13 = (*(*this + 32))(this);
    if (*(a2 + 8))
    {
      v14 = *(a2 + 2);
    }

    else
    {
      v14 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v49, v13, v14);
    v31 = v49;
    v32 = v50;
    v33 = v51;
    *a6 = 0;
    *(a6 + 8) = v31;
    *(a6 + 24) = v32;
    *(a6 + 32) = v33;
  }

  else
  {
    *(&v49 + 1) = 0;
    v50 = 0;
    v51 = 0;
    v15 = re::DynamicString::setCapacity(&v49, 0);
    *(&v52 + 1) = 0;
    v53 = 0uLL;
    re::DynamicString::setCapacity(&v52, 0);
    __asm { FMOV            V0.2S, #1.0 }

    v54 = _D0;
    v55 = 5;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 4;
    v60 = 16843009;
    v61 = 0;
    Introspectable = re::AssetLoadDescriptor::getIntrospectableData<ExtrudedTextDescriptorParameters>(a2, &v49);
    if (Introspectable)
    {
      Asset = re::MeshPrimitiveProvider::makeAsset(&v49, v62);
      v23 = *(this + 3);
      *&v44 = re::MeshAsset::assetType(Asset);
      v24 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v23, &v44);
      v25 = (*(**v24 + 128))(*v24);
      v26 = *v24;
      v27 = re::MeshAsset::assetType(v25);
      re::AssetSignpost::ScopeGuard::ScopeGuard(v48, 2056, a5, *v27);
      if ((*(*v26 + 24))(v26, Asset, 0, 0))
      {
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v48);
        if (*(a2 + 120))
        {
          v29 = *(a2 + 16);
        }

        else
        {
          v29 = a2 + 121;
        }

        LOBYTE(v47) = 0;
        BYTE8(v47) = 0;
        v41 = v44;
        v42 = v45;
        v43 = v46;
        *(a6 + 56) = v47;
        *a6 = 1;
        *(a6 + 8) = v41;
        *(a6 + 24) = v42;
        *(a6 + 32) = v43;
        *(a6 + 40) = Asset;
        *(a6 + 48) = 0;
      }

      else
      {
        v37 = re::internal::destroyPersistent<re::MeshAsset>("load", 505, Asset);
        v38 = v44;
        v39 = v45;
        v40 = v46;
        *a6 = 0;
        *(a6 + 8) = v38;
        *(a6 + 24) = v39;
        *(a6 + 32) = v40;
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v48);
      }
    }

    else
    {
      v34 = v44;
      v35 = v45;
      v36 = v46;
      *a6 = 0;
      *(a6 + 8) = v34;
      *(a6 + 24) = v35;
      *(a6 + 32) = v36;
    }

    if (v52)
    {
      if (BYTE8(v52))
      {
        (*(*v52 + 40))();
      }

      v52 = 0u;
      v53 = 0u;
    }

    result = v49;
    if (v49 && (BYTE8(v49) & 1) != 0)
    {
      return (*(*v49 + 40))();
    }
  }

  return result;
}

__n128 anonymous namespace::PrimitiveProvider<ExtrudedTextDescriptorParameters,re::GeomBuildExtrudedTextOptions>::resolveChild@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

re::DynamicString *anonymous namespace::PrimitiveProvider<ExtrudedTextDescriptorParameters,re::GeomBuildExtrudedTextOptions>::getDescription(_anonymous_namespace_ *a1, re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = re::DynamicString::setCapacity(&v20, 0);
  *(&v24 + 1) = 0;
  v25 = 0uLL;
  re::DynamicString::setCapacity(&v24, 0);
  __asm { FMOV            V0.2S, #1.0 }

  v26 = _D0;
  v27 = 5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 4;
  v32 = 16843009;
  v33 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<ExtrudedTextDescriptorParameters>(a2, &v20))
  {
    v12 = "";
    if (v34)
    {
      v13 = " split";
    }

    else
    {
      v13 = "";
    }

    if (!v35)
    {
      v12 = " full";
    }

    re::DynamicString::format("%s%s", &v18, v13, v12);
    (*(*a1 + 120))(&v15, a1, &v20);
    re::DynamicString::operator+(&v15, &v18, v17);
    re::DynamicString::operator=(a3, v17);
    if (*&v17[0])
    {
      if (BYTE8(v17[0]))
      {
        (*(**&v17[0] + 40))();
      }

      memset(v17, 0, sizeof(v17));
    }

    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    if (v18 && (v19 & 1) != 0)
    {
      (*(*v18 + 40))();
    }
  }

  else
  {
    v18 = "<mangled>";
    v19 = 9;
    re::DynamicString::operator=(a3, &v18);
  }

  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))();
    }

    v24 = 0u;
    v25 = 0u;
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

uint64_t ExtrudedText::describe@<X0>(const re::GeomBuildExtrudedTextOptions *a1@<X1>, re::DynamicString *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E871AC68[v3];
  }

  v5 = *(a1 + 97);
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E871AC98[v5];
  }

  v7 = *(a1 + 98);
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E871ACC0[v7];
  }

  if (*(a1 + 5))
  {
    v9 = *(a1 + 6);
  }

  else
  {
    v9 = a1 + 41;
  }

  v10 = " noSides";
  v11 = "";
  if (*(a1 + 99))
  {
    v10 = "";
  }

  if (*(a1 + 100))
  {
    v12 = "";
  }

  else
  {
    v12 = " noBack";
  }

  v13 = " noUV";
  if (*(a1 + 101))
  {
    v13 = "";
  }

  if (*(a1 + 102))
  {
    v14 = "";
  }

  else
  {
    v14 = " noNorm";
  }

  if (*(a1 + 1))
  {
    v15 = *(a1 + 2);
  }

  else
  {
    v15 = a1 + 9;
  }

  if (*(a1 + 103))
  {
    v11 = "instanceGlyphs";
  }

  return re::DynamicString::format("%s;%fx%f/%d;(%f,%f)x(%f,%f);%s;%s;%s;%s%s%s%s;%s;%s", a2, v9, *(a1 + 16), *(a1 + 17), *(a1 + 72), *(a1 + 20), *(a1 + 21), *(a1 + 22), *(a1 + 23), v4, v6, v8, v10, v12, v13, v14, v15, v11);
}

re::DynamicString *anonymous namespace::PrimitiveProvider<ExtrudedTextDescriptorParameters,re::GeomBuildExtrudedTextOptions>::load@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v8 = *(a2 + 16);
  }

  else
  {
    v8 = (a2 + 9);
  }

  v9 = (*(*a1 + 32))(a1);
  v10 = strcmp(v8, v9);
  if (v10)
  {
    v11 = (*(*a1 + 32))(a1);
    if (*(a2 + 8))
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2 + 9;
    }

    result = re::DynamicString::format("Expected scheme '%s', got '%s'", &v79, v11, v12);
    v25 = v79;
    v26 = v80;
    *a4 = 0;
    *(a4 + 8) = v25;
    *(a4 + 24) = v26;
    return result;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  v13 = re::DynamicString::setCapacity(&v64, 0);
  *(&v68 + 1) = 0;
  v69 = 0uLL;
  re::DynamicString::setCapacity(&v68, 0);
  __asm { FMOV            V0.2S, #1.0 }

  v70 = _D0;
  v71 = 5;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 4;
  v76 = 16843009;
  v77 = 0;
  Introspectable = re::AssetLoadDescriptor::getIntrospectableData<ExtrudedTextDescriptorParameters>(a2, &v64);
  if (Introspectable)
  {
    v63 = 0;
    v60[1] = 0;
    v61 = 0;
    v59 = 0;
    v60[0] = 0;
    v62 = 0;
    v56[1] = 0;
    v57 = 0;
    v56[0] = 0;
    v58 = 0;
    if (v78 == 1)
    {
      re::buildExtrudedText(v60, &v64, 0);
      v20 = v61;
      re::DynamicArray<float>::resize(v56, v61);
      if (v20)
      {
        v21 = 0;
        v22 = v57;
        v23 = v59;
        while (v22 != v21)
        {
          *(v23 + 4 * v21) = v21;
          if (v20 == ++v21)
          {
            goto LABEL_20;
          }
        }

        *&v51 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v84 = 136315906;
        *v85 = "operator[]";
        *&v85[8] = 1024;
        *&v85[10] = 789;
        *&v85[14] = 2048;
        *&v85[16] = v22;
        *&v85[24] = 2048;
        *&v85[26] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *&v51 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v84 = 136315906;
        *v85 = "operator[]";
        *&v85[8] = 1024;
        *&v85[10] = 789;
        *&v85[14] = 2048;
        *&v85[16] = 0;
        *&v85[24] = 2048;
        *&v85[26] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::resize(v60, 1uLL);
      LODWORD(v79) = 0;
      re::DynamicArray<unsigned int>::resize(v56, 1uLL, &v79);
      if (!v61)
      {
        goto LABEL_41;
      }

      re::buildExtrudedText(v63, &v64, 0, v29);
    }

LABEL_20:
    v84 = 16842752;
    v85[0] = 1;
    *&v85[1] = 0;
    *&v85[5] = 0;
    *&v85[7] = 65793;
    v86 = 0u;
    memset(&v85[12], 0, 32);
    DWORD1(v86) = 0x7FFFFFFF;
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v63, v61, v59, v57, 0, &v84, &v79);
    v31 = v79;
    v32 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v33 = (*(*v32[2] + 32))(v32[2], 1272, 8);
    v34 = v33;
    if (v31 == 1)
    {
      v35 = re::MeshAsset::MeshAsset(v33, &v79 + 8);
    }

    else
    {
      re::MeshAsset::MeshAsset(v33);
    }

    v36 = a1[3];
    *&v51 = re::MeshAsset::assetType(v35);
    v37 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v36, &v51);
    v38 = (*(**v37 + 128))(*v37);
    v39 = *v37;
    v40 = re::MeshAsset::assetType(v38);
    re::AssetSignpost::ScopeGuard::ScopeGuard(v55, 2056, a3, *v40);
    if ((*(*v39 + 24))(v39, v34, 0, 0))
    {
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v55);
      if (*(a2 + 120))
      {
        v42 = *(a2 + 128);
      }

      else
      {
        v42 = (a2 + 121);
      }

      LOBYTE(v54) = 0;
      BYTE8(v54) = 0;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      *(a4 + 56) = v54;
      *a4 = 1;
      *(a4 + 8) = v47;
      *(a4 + 24) = v48;
      *(a4 + 32) = v49;
      *(a4 + 40) = v34;
      *(a4 + 48) = 0;
    }

    else
    {
      v43 = re::internal::destroyPersistent<re::MeshAsset>("load", 116, v34);
      v44 = v51;
      v45 = v52;
      v46 = v53;
      *a4 = 0;
      *(a4 + 8) = v44;
      *(a4 + 24) = v45;
      *(a4 + 32) = v46;
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v55);
    }

    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v79);
    v50 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v85[12]);
    if (v56[0] && v59)
    {
      (*(*v56[0] + 40))(v50);
    }

    re::DynamicArray<re::GeomMesh>::deinit(v60);
  }

  else
  {
    v27 = v79;
    v28 = v80;
    *a4 = 0;
    *(a4 + 8) = v27;
    *(a4 + 24) = v28;
  }

  if (v68)
  {
    if (BYTE8(v68))
    {
      (*(*v68 + 40))();
    }

    v68 = 0u;
    v69 = 0u;
  }

  result = v64;
  if (v64 && (v65 & 1) != 0)
  {
    return (*(*v64 + 40))();
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<ExtrudedTextDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193208, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193208);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193200 = re::internal::getOrCreateInfo("ExtrudedTextDescriptorParameters", allocInfo_ExtrudedTextDescriptorParameters, initInfo_ExtrudedTextDescriptorParameters, &unk_1EE193158, 0);
      __cxa_guard_release(&qword_1EE193208);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193200;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void *re::allocInfo_RealityFileAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_54, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_54))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193968, "RealityFileAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_54);
  }

  return &unk_1EE193968;
}

void re::initInfo_RealityFileAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xB2FC42FECB8E66C6;
  v14[1] = "RealityFileAssetLoadDescriptorParameters";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE193950, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE193950);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RealityFileDescriptor(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "realityFileDescriptor";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE193958 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicString>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "archiveEntrySpecifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x4800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE193960 = v12;
      __cxa_guard_release(&qword_1EE193950);
    }
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE193958;
  *(this + 9) = re::internal::defaultConstruct<re::RealityFileAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RealityFileAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::RealityFileAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::RealityFileAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::internal::defaultConstruct<re::RealityFileAssetLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v6 = re::DynamicString::setCapacity((v3 + 40), 0);
  *(v3 + 72) = 0u;
  v3 += 72;
  *(v3 + 16) = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  return result;
}

double re::internal::defaultDestruct<re::RealityFileAssetLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 72));
  re::DynamicString::deinit((a3 + 40));

  return re::DynamicString::deinit((a3 + 8));
}

void *re::internal::defaultConstructV2<re::RealityFileAssetLoadDescriptorParameters>(uint64_t a1)
{
  v1 = a1;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  v4 = re::DynamicString::setCapacity((v1 + 40), 0);
  *(v1 + 72) = 0u;
  v1 += 72;
  *(v1 + 16) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  return result;
}

double re::internal::defaultDestructV2<re::RealityFileAssetLoadDescriptorParameters>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 72));
  re::DynamicString::deinit((a1 + 40));

  return re::DynamicString::deinit((a1 + 8));
}

uint64_t re::RealityFileAssetLoadDescriptorFactory::make@<X0>(char *a1@<X0>, re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v13 = "RealityFileAsset";
  v14 = 16;
  re::DynamicString::operator=(a3, &v13);
  re::DynamicString::operator=((a3 + 112), a2);
  LOBYTE(v8) = *a1;
  re::DynamicString::DynamicString(v9, (a1 + 8));
  re::DynamicString::DynamicString(v10, (a1 + 40));
  re::DynamicString::DynamicString(v11, (a1 + 72));
  v12 = *(a1 + 104);
  re::AssetLoadDescriptor::setIntrospectableData(a3, re::RealityFileAssetProvider::s_loadDescriptorParametersIntrospect, &v8, 0);
  if (v11[0])
  {
    if (v11[1])
    {
      (*(*v11[0] + 40))(v11[0]);
    }

    memset(v11, 0, sizeof(v11));
  }

  if (v10[0])
  {
    if (v10[1])
    {
      (*(*v10[0] + 40))(v10[0]);
    }

    memset(v10, 0, sizeof(v10));
  }

  if (v9[0])
  {
    if (v9[1])
    {
      (*(*v9[0] + 40))(v9[0]);
    }

    memset(v9, 0, sizeof(v9));
  }

  if (*(a3 + 80) <= 8uLL)
  {
    re::DynamicArray<BOOL>::setCapacity((a3 + 72), 9uLL);
  }

  v13 = &unk_1F5D0A7B0;
  v14 = a3 + 72;
  v15 = 0;
  off_1F5D0A7C0(&v13, a1 + 104, 1uLL);
  return (*(v13 + 2))(&v13, a1 + 112, 8);
}

uint64_t re::RealityFileAssetProvider::RealityFileAssetProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBA768;
  v13 = re::globalAllocators(v12);
  *(a1 + 48) = v13[2];
  *(a1 + 56) = 0;
  v14 = re::globalAllocators(v13);
  *(a1 + 88) = v14[2];
  *(a1 + 96) = 0;
  v15 = re::globalAllocators(v14);
  *(a1 + 128) = v15[2];
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  v16 = re::DynamicString::setCapacity((a1 + 144), 0);
  *a1 = &unk_1F5CBC510;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0x7FFFFFFFLL;
  v17 = &unk_1EE187000;
  {
    v17 = &unk_1EE187000;
    if (v16)
    {
      re::introspect<re::RealityFileAssetLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("RealityFileAssetLoadDescriptorParameters", re::allocInfo_RealityFileAssetLoadDescriptorParameters, re::initInfo_RealityFileAssetLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::RealityFileAssetLoadDescriptorParameters>, 0);
      v17 = &unk_1EE187000;
    }
  }

  re::RealityFileAssetProvider::s_loadDescriptorParametersIntrospect = v17[169];
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = a5;
  *(a1 + 224) = a6;
  v18 = re::globalAllocators(v16);
  v19 = v18[2];
  v32[0] = &unk_1F5CBC5B0;
  v32[1] = a1;
  v33 = v19;
  v34 = v32;
  v20 = re::globalAllocators(v18)[2];
  v29[0] = &unk_1F5CBC618;
  v29[1] = a1;
  v30 = v20;
  v31 = v29;
  v27 = v33;
  v28 = 0;
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator=<24ul>(v26, v32);
  v24 = 0;
  v25 = 0;
  v22[3] = v30;
  v22[4] = 0;
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator=<24ul>(v22, v29);
  re::RawAssetProvider::init(a1, "RealityFileAsset", a3, v26, v23, v22);
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(v22);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(v23);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v26);
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(v29);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(v32);
  return a1;
}

uint64_t re::RawAssetProvider::init(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = __s;
  v12[1] = strlen(__s);
  re::DynamicString::operator=((a1 + 144), v12);
  *(a1 + 184) = a3;
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator=<24ul>(a1 + 24, a4);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::operator=<24ul>(a1 + 64, a5);

  return re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator=<24ul>(a1 + 104, a6);
}

void re::RealityFileAssetProvider::~RealityFileAssetProvider(re::RealityFileAssetProvider *this)
{
  *this = &unk_1F5CBC510;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 29);
  *this = &unk_1F5CBA768;
  re::DynamicString::deinit((this + 144));
  re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(this + 104);
  re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(this + 64);
  re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityFileAssetProvider::~RealityFileAssetProvider(this);

  JUMPOUT(0x1E6906520);
}

id anonymous namespace::makeError(_anonymous_namespace_ *this, const __CFString *a2, uint64_t a3, const char *a4)
{
  re::WrappedError::make(@"RERealityFileErrorDomain", 0, this, &v6);
  v4 = v6;

  return v4;
}

_BYTE *anonymous namespace::readRealityFileAssetLoadDescriptorParametersCFError(_anonymous_namespace_ *this, const re::AssetLoadDescriptor *a2)
{
  if (v28[0])
  {
    re::Ok<re::RealityFileAssetLoadDescriptorParameters &,re::RealityFileAssetLoadDescriptorParameters>(v15, v29);
    *this = 1;
    *(this + 8) = v15[0];
    *(this + 2) = v16;
    v6 = v18;
    v7 = v19;
    *(this + 24) = v17;
    v18 = 0;
    v16 = 0;
    v17 = 0uLL;
    *(this + 5) = v6;
    *(this + 6) = v7;
    v8 = v21;
    *(this + 7) = v20;
    *(this + 8) = v8;
    v9 = v22;
    v10 = v23;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    *(this + 9) = v9;
    *(this + 10) = v10;
    v11 = v26;
    *(this + 12) = v25;
    *(this + 13) = v11;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    *(this + 11) = v24;
    *(this + 7) = v27;
  }

  else
  {
    if (v29[8])
    {
      v12 = *&v30[7];
    }

    else
    {
      v12 = v30;
    }

    *this = 0;
    *(this + 1) = Error;
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v28);
}

_BYTE *re::Result<re::RealityFileAssetLoadDescriptorParameters,__CFError *>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 80));
    re::DynamicString::deinit((a1 + 48));
    re::DynamicString::deinit((a1 + 16));
  }

  return a1;
}

__n128 anonymous namespace::getAssetDescriptor(uint64_t a1, re::RealityFile *this, uint64_t a3)
{
  if (*(a3 + 80))
  {
    v6 = *(a3 + 88);
  }

  else
  {
    v6 = (a3 + 81);
  }

  AssetDescriptorWithEntryName = re::RealityFile::findAssetDescriptorWithEntryName(this, v6);
  if (AssetDescriptorWithEntryName)
  {
    *a1 = 1;
    *(a1 + 8) = AssetDescriptorWithEntryName;
  }

  else
  {
    if (*(a3 + 80))
    {
      v9 = *(a3 + 88);
    }

    else
    {
      v9 = a3 + 81;
    }

    re::DynamicString::format("Failed to find an asset with archive entry name %s in the reality file.", &v12, v9);
    result = v12;
    v10 = v13;
    v11 = v14;
    *a1 = 0;
    *(a1 + 8) = result;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
  }

  return result;
}

re::DynamicString *re::RealityFileAssetProvider::load@<X0>(re::RealityFileAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  v106 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v11 = *(a2 + 2);
  }

  else
  {
    v11 = a2 + 9;
  }

  v12 = strcmp(v11, "RealityFileAsset");
  if (v12)
  {
    v14 = v69;
    v15 = v70;
    v16 = v71;
    *a5 = 0;
    *(a5 + 8) = v14;
    *(a5 + 24) = v15;
    *(a5 + 32) = v16;
    return result;
  }

  if (v69)
  {
    re::RealityFileRegistry::getOrMountRealityFile((&v69 + 8), *(this + 24), *(this + 27), *(this + 28), v96);
    if ((v96[0] & 1) == 0)
    {
      v21 = re::WrappedError::localizedDescription(&v97);
      v22 = *v72;
      v23 = *&v72[16];
      v24 = v73;
      *a5 = 0;
      *(a5 + 8) = v22;
      *(a5 + 24) = v23;
      *(a5 + 32) = v24;
LABEL_78:
      re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v96);
      return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(&v69);
    }

    v17 = v97;
    if (v97)
    {
      v18 = v97 + 8;
    }

    if (*(a2 + 120))
    {
      v19 = *(a2 + 16);
    }

    else
    {
      v19 = a2 + 121;
    }

    v95 = re::internal::AssetTypeRegistry::assetTypeWithName(*(this + 25), v19);
    v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v95 ^ (v95 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v95 ^ (v95 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(this + 232, &v95, v25 ^ (v25 >> 31), v72);
    if (*&v72[12] == 0x7FFFFFFF)
    {
      if (v93[0])
      {
        v27 = 0;
LABEL_19:
        v29 = *(a2 + 15);
        v30 = v29 >> 1;
        if ((v29 & 1) == 0)
        {
          v30 = v29 >> 1;
        }

        if (v30)
        {
          if (v95)
          {
            v31 = v94[0];
            re::RealityFile::getInputStreamSources(v17, v94[0], v87);
            v32 = (*(*v31 + 40))(v31);
            if (v87[0])
            {
              if (v89)
              {
                v67 = *(this + 25);
                v68 = v32;
                v85 = 0;
                memset(v84, 0, sizeof(v84));
                v86 = 0x7FFFFFFFLL;
                if (v27)
                {
                  v32 = (*(**v27 + 40))(*v27, &v69 + 8, v84);
                }

                v33 = v90 & 1;
                v34 = v92;
                if (v90)
                {
                  v35 = &v91;
                }

                else
                {
                  v35 = v92;
                }

                v36 = *v35;
                if (*v35)
                {
                  v66 = v90 & 1;
                  v32 = (v36 + 8);
                  v33 = v66;
                  v37 = v92;
                  v38 = v90 & 1;
                }

                else
                {
                  v38 = v90 & 1;
                  v37 = v92;
                }

                v49 = v34 + 1;
                if (v33)
                {
                  v49 = &v92;
                }

                if (v38)
                {
                  v37 = &v91;
                }

                v83[0] = v49;
                v83[1] = &v37[v89] - v49;
                v82[0] = &unk_1F5CB9630;
                v82[1] = a3;
                v80 = 0;
                v81 = 0;
                v79 = 0;
                v50 = v95;
                v104 = re::globalAllocators(v32)[2];
                v51 = (*(*v104 + 32))(v104, 96, 0);
                *v51 = &unk_1F5CBC680;
                v51[1] = &v79;
                v51[2] = v83;
                v51[3] = v67;
                v51[4] = 0;
                v51[5] = 0;
                v51[6] = v50;
                v51[7] = v82;
                v51[8] = v84;
                v51[9] = a4;
                v51[10] = v68;
                v51[11] = &v80;
                v105 = v51;
                (*(*v36 + 48))(&v77, v36, v103);
                re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v103);
                if (v77)
                {
                  if (v27)
                  {
                    v52 = (*(**v27 + 48))(v72);
                    if ((v72[0] & 1) == 0)
                    {
                      v53 = *re::assetsLogObjects(v52);
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        if (v72[16])
                        {
                          v65 = v73;
                        }

                        else
                        {
                          v65 = &v72[17];
                        }

                        *buf = 136315394;
                        *&buf[4] = v68;
                        *&buf[12] = 2080;
                        *&buf[14] = v65;
                        _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, "Post reality file load processing failed asset path '%s': %s", buf, 0x16u);
                      }

                      if (v72[0] & 1) == 0 && *&v72[8] && (v72[16])
                      {
                        (*(**&v72[8] + 40))();
                      }
                    }
                  }

                  re::DynamicString::DynamicString(buf, (a2 + 112));
                  v54 = v80;
                  v55 = v81;
                  v100 = v80;
                  v101 = v81;
                  if (v81)
                  {
                    v56 = (v81 + 8);
                    v54 = v100;
                    v55 = v101;
                  }

                  BYTE8(v102) = 1;
                  v57 = *&buf[16];
                  v58 = v99;
                  v59 = *buf;
                  v60 = *&buf[8];
                  v99 = 0;
                  memset(buf, 0, sizeof(buf));
                  v101 = 0;
                  *&v102 = v79;
                  v76 = v102;
                  *a5 = 1;
                  *(a5 + 24) = v57;
                  *(a5 + 32) = v58;
                  *&v72[16] = 0;
                  v73 = 0;
                  *(a5 + 8) = v59;
                  *(a5 + 16) = v60;
                  *v72 = 0uLL;
                  *(a5 + 40) = v54;
                  *(a5 + 48) = v55;
                  v74 = v54;
                  v75 = 0;
                  *(a5 + 56) = v102;
                  re::types::Ok<re::AssetLoadResult>::~Ok(v72);
                  re::types::Ok<re::AssetLoadResult>::~Ok(buf);
                }

                else
                {
                  v61 = re::WrappedError::localizedDescription(&v78);
                  v62 = *v72;
                  v63 = *&v72[16];
                  v64 = v73;
                  *a5 = 0;
                  *(a5 + 8) = v62;
                  *(a5 + 24) = v63;
                  *(a5 + 32) = v64;
                }

                if ((v77 & 1) == 0)
                {
                }

                if (v81)
                {
                }

                re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v84);
              }

              else
              {
                re::DynamicString::format("Zero input streams were opened for asset '%s'.", v72, v32);
                v45 = *v72;
                v46 = *&v72[16];
                v47 = v73;
                *a5 = 0;
                *(a5 + 8) = v45;
                *(a5 + 24) = v46;
                *(a5 + 32) = v47;
              }
            }

            else
            {
              v41 = re::WrappedError::localizedDescription(&v88);
              if (v27)
              {
                (*(**v27 + 32))(*v27, v17, &v69 + 8, a4, v72);
              }

              else
              {
                re::DynamicString::DynamicString(buf, v72);
                *a5 = 0;
                v48 = v99;
                *(a5 + 8) = *buf;
                *(a5 + 32) = v48;
                *(a5 + 16) = *&buf[8];
              }

              if (*v72 && (v72[8] & 1) != 0)
              {
                (*(**v72 + 40))();
              }
            }

            if (v87[0] == 1)
            {
              re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&v88);
            }

            else
            {
            }

            goto LABEL_76;
          }

          if (v29)
          {
            v40 = *(a2 + 16);
          }

          else
          {
            v40 = a2 + 121;
          }

          re::DynamicString::format("Could not find an AssetType registered with name '%s'.", v72, v40);
        }

        else
        {
        }

        v42 = *v72;
        v43 = *&v72[16];
        v44 = v73;
        *a5 = 0;
        *(a5 + 8) = v42;
        *(a5 + 24) = v43;
        *(a5 + 32) = v44;
LABEL_76:
        if (v17)
        {
        }

        goto LABEL_78;
      }

      re::DynamicString::DynamicString(v72, v94);
      *a5 = 0;
      v39 = v73;
      *(a5 + 8) = *v72;
      *(a5 + 32) = v39;
      *(a5 + 16) = *&v72[8];
    }

    else
    {
      v27 = (*(this + 31) + 32 * *&v72[12] + 16);
      if (v93[0])
      {
        goto LABEL_19;
      }

      (*(**v27 + 32))(*v27, v17, &v69 + 8, a4, v94, AssetDescriptor);
      if (v93[0])
      {
        goto LABEL_76;
      }
    }

    if (v94[0])
    {
      if (v94[1])
      {
        (*(*v94[0] + 40))();
      }

      memset(v94, 0, sizeof(v94));
    }

    goto LABEL_76;
  }

  re::DynamicString::DynamicString(v72, (&v69 + 8));
  *a5 = 0;
  v20 = v73;
  *(a5 + 8) = *v72;
  *(a5 + 32) = v20;
  *(a5 + 16) = *&v72[8];
  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(&v69);
}

uint64_t *anonymous namespace::readRealityFileAssetLoadDescriptorParameters(_anonymous_namespace_ *this, const re::AssetLoadDescriptor *a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = re::DynamicString::setCapacity(&v33, 0);
  *(&v37 + 1) = 0;
  v38 = 0uLL;
  v5 = re::DynamicString::setCapacity(&v37, 0);
  *(&v39 + 1) = 0;
  v40 = 0uLL;
  re::DynamicString::setCapacity(&v39, 0);
  v41[0] = 0;
  v42 = 1;
  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v19)
    {
      re::introspect<re::RealityFileAssetLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("RealityFileAssetLoadDescriptorParameters", re::allocInfo_RealityFileAssetLoadDescriptorParameters, re::initInfo_RealityFileAssetLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::RealityFileAssetLoadDescriptorParameters>, 0);
      v6 = &unk_1EE187000;
    }
  }

  IntrospectableData = re::AssetLoadDescriptor::getIntrospectableData(a2, v6[169], &v32, 0);
  if (IntrospectableData)
  {
    v8 = *(a2 + 11);
    if (v8)
    {
      v9 = *(a2 + 13);
      *&v20 = &unk_1F5D0B130;
      *(&v20 + 1) = v9;
      v21 = v8;
      off_1F5D0B140(&v20, v41, 1uLL);
      (*(v20 + 16))(&v20, &v42, 8);
    }

    else
    {
      v41[0] = 0;
      v42 = 1;
    }

    re::Ok<re::RealityFileAssetLoadDescriptorParameters &,re::RealityFileAssetLoadDescriptorParameters>(&v20, &v32);
    *this = 1;
    *(this + 8) = v20;
    *(this + 2) = *(&v20 + 1);
    v12 = v22;
    v13 = v23;
    *(this + 24) = v21;
    v22 = 0;
    *(&v20 + 1) = 0;
    v21 = 0uLL;
    *(this + 5) = v12;
    *(this + 6) = v13;
    v14 = v25;
    *(this + 7) = v24;
    *(this + 8) = v14;
    v15 = v26;
    v16 = v27;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    *(this + 9) = v15;
    *(this + 10) = v16;
    v17 = v30;
    *(this + 12) = v29;
    *(this + 13) = v17;
    v27 = 0;
    v29 = 0;
    v30 = 0;
    *(this + 11) = v28;
    *(this + 7) = v31;
  }

  else
  {
    v10 = v20;
    v11 = v21;
    *this = 0;
    *(this + 8) = v10;
    *(this + 24) = v11;
  }

  if (v39)
  {
    if (BYTE8(v39))
    {
      (*(*v39 + 40))();
    }

    v40 = 0u;
    v39 = 0u;
  }

  if (v37)
  {
    if (BYTE8(v37))
    {
      (*(*v37 + 40))();
    }

    v38 = 0u;
    v37 = 0u;
  }

  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

_BYTE *re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 80));
    re::DynamicString::deinit((a1 + 48));
    v2 = 16;
  }

  else
  {
    v2 = 8;
  }

  re::DynamicString::deinit(&a1[v2]);
  return a1;
}

_BYTE *re::RealityFileAssetProvider::transformDescriptor@<X0>(uint64_t a1@<X1>, const re::SourceLoadDescriptorTransform *a2@<X2>, uint64_t a3@<X8>)
{
  (*(*a2 + 32))(a2);
  if (v66[0])
  {
    re::RealityFileDescriptor::transform(v67, a2, v62);
    if (v62[0])
    {
      v28[0] = v62[8];
      re::DynamicString::DynamicString(&v29, &v63);
      re::DynamicString::DynamicString(v31, v65);
      re::DynamicString::DynamicString(v32, &v68);
      v33 = 0;
      v34 = 1;
      re::RealityFileAssetLoadDescriptorFactory::make(v28, (a1 + 112), &v18);
      v35[0] = 1;
      v6 = v18;
      v7 = v19;
      v18 = 0;
      v8 = *(&v19 + 1);
      v9 = v20;
      v19 = 0u;
      v20 = 0u;
      ++v22;
      ++v25;
      v10 = v27;
      v11 = *&v26[16];
      v27 = 0u;
      LOBYTE(v50) = 1;
      v52 = v8;
      v53 = v9;
      v38 = 0;
      v39 = 0;
      *&v51 = v6;
      *(&v51 + 1) = v7;
      v36 = 0;
      v37 = 0;
      v40 = 0;
      v12 = v21;
      v21 = 0u;
      v54 = v12;
      v41 = 0u;
      v43 = 0u;
      v13 = v23;
      v14 = v24;
      v23 = 0u;
      v24 = 0u;
      v56 = v13;
      v57 = v14;
      v44 = 0u;
      v42 = 2;
      v45 = 2;
      v55 = 1;
      v58 = 1;
      v15 = *v26;
      memset(v26, 0, sizeof(v26));
      v59 = v15;
      v46 = 0u;
      v48 = 0;
      v49 = 0;
      v61 = v10;
      v60 = v11;
      v47 = 0;
      *a3 = 1;
      re::Optional<re::AssetLoadDescriptor>::Optional(a3 + 8, &v50);
      re::Optional<re::AssetLoadDescriptor>::~Optional(&v50);
      re::Optional<re::AssetLoadDescriptor>::~Optional(v35);
      if (*&v26[8])
      {
        if (v26[16])
        {
          (*(**&v26[8] + 40))();
        }

        *&v26[8] = 0u;
        v27 = 0u;
      }

      if (*(&v23 + 1))
      {
        if (*v26)
        {
          (*(**(&v23 + 1) + 40))();
        }

        *v26 = 0;
        v24 = 0uLL;
        *(&v23 + 1) = 0;
        ++v25;
      }

      if (*(&v20 + 1))
      {
        if (v23)
        {
          (*(**(&v20 + 1) + 40))();
        }

        *&v23 = 0;
        v21 = 0uLL;
        *(&v20 + 1) = 0;
        ++v22;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      if (v32[0])
      {
        if (v32[1])
        {
          (*(*v32[0] + 40))();
        }

        memset(v32, 0, sizeof(v32));
      }

      if (v31[0])
      {
        if (v31[1])
        {
          (*(*v31[0] + 40))();
        }

        memset(v31, 0, sizeof(v31));
      }

      if (v29 && (v30 & 1) != 0)
      {
        (*(*v29 + 40))();
      }
    }

    else
    {
      v35[0] = 0;
      LOBYTE(v50) = 0;
      *a3 = 1;
      re::Optional<re::AssetLoadDescriptor>::Optional(a3 + 8, &v50);
      re::Optional<re::AssetLoadDescriptor>::~Optional(&v50);
      re::Optional<re::AssetLoadDescriptor>::~Optional(v35);
    }

    if (v62[0] == 1)
    {
      if (v65[0])
      {
        if (v65[1])
        {
          (*(*v65[0] + 40))();
        }

        memset(v65, 0, sizeof(v65));
      }

      if (v63 && (v64 & 1) != 0)
      {
        (*(*v63 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::DynamicString(&v50, v67);
    *a3 = 0;
    v16 = v52;
    *(a3 + 8) = v50;
    *(a3 + 32) = v16;
    *(a3 + 16) = v51;
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v66);
}

_BYTE *re::RealityFileAssetProvider::getSource@<X0>(os_unfair_lock_s **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (v17[0])
  {
    hasURL = re::RealityFileDescriptor::hasURL(v18, this[27]);
    if (hasURL)
    {
      re::RealityFileDescriptor::getURL(v18, this[27], this[28], v15);
      if (v15[0])
      {
        LOBYTE(v12) = 1;
        re::DynamicString::DynamicString(&v13, &v15[8]);
        v6 = v13;
        v13 = 0u;
        v7 = v14;
        v14 = 0u;
        *(a3 + 16) = v6;
        *(a3 + 32) = v7;
        *a3 = 1;
        *(a3 + 8) = 1;
      }

      else
      {
        re::DynamicString::DynamicString(&v12, &v15[8]);
        *a3 = 0;
        *(a3 + 8) = v12;
        *(a3 + 32) = v14;
        *(a3 + 16) = v13;
      }

      if (*&v15[8] && (v15[16] & 1) != 0)
      {
        (*(**&v15[8] + 40))();
      }
    }

    else
    {
      v8 = *v15;
      v9 = *&v15[16];
      v10 = v16;
      *a3 = 0;
      *(a3 + 8) = v8;
      *(a3 + 24) = v9;
      *(a3 + 32) = v10;
    }
  }

  else
  {
    re::DynamicString::DynamicString(v15, v18);
    *a3 = 0;
    *(a3 + 8) = *v15;
    *(a3 + 32) = v16;
    *(a3 + 16) = *&v15[8];
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v17);
}

double re::RealityFileAssetProvider::getFileName@<D0>(re::RealityFileAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 64))(&v18);
  if (v18 == 1)
  {
    v4 = MEMORY[0x1E695DFF8];
    if (BYTE8(v20))
    {
      v5 = v21;
    }

    else
    {
      v5 = &v20 + 9;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
    v7 = [v4 URLWithString:v6];

    v8 = [v7 lastPathComponent];
    v9 = [v8 UTF8String];
    v10 = v15;
    v15 = 0uLL;
    v11 = v16;
    v12 = v17;
    v16 = 0;
    v17 = 0;
    *a2 = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;

    if (v18)
    {
      if (v19 != 1)
      {
        return result;
      }

      v14 = &v20;
    }

    else
    {
      v14 = &v19;
    }
  }

  else
  {
    *a2 = v18;
    v14 = &v19;
    *(a2 + 8) = v19;
    *(a2 + 32) = v21;
    *(a2 + 16) = v20;
    v21 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  return re::DynamicString::deinit(v14);
}

_BYTE *re::RealityFileAssetProvider::getDescription(re::RealityFileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  if ((v22[0] & 1) == 0)
  {
    v5 = "mangled";
    v6 = 7;
LABEL_8:
    v20 = v5;
    v21[0] = v6;
    re::DynamicString::operator=(a3, &v20);
    return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v22);
  }

  if (v23 > 1u)
  {
    switch(v23)
    {
      case 2u:
        v4 = "Bundle";
        goto LABEL_14;
      case 3u:
        v4 = "MemoryFileID";
        goto LABEL_14;
      case 4u:
        v4 = "NameAlias";
LABEL_14:
        v20 = v4;
        v21[0] = strlen(v4);
        re::DynamicString::operator=(a3, &v20);
        goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!v23)
  {
    v5 = "None";
    v6 = 4;
    goto LABEL_8;
  }

  if (v23 == 1)
  {
    v4 = "URL";
    goto LABEL_14;
  }

LABEL_15:
  v7 = v24[0];
  if (v24[0])
  {
    v8 = v24[0] >> 1;
  }

  else
  {
    v8 = LOBYTE(v24[0]) >> 1;
  }

  if (v8)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v7)
    {
      v9 = v24[1];
    }

    else
    {
      v9 = v24 + 1;
    }

    re::DynamicString::append(a3, v9, v8);
  }

  v10 = v25[0];
  if (v25[0])
  {
    v11 = v25[0] >> 1;
  }

  else
  {
    v11 = LOBYTE(v25[0]) >> 1;
  }

  if (v11)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v10)
    {
      v12 = v25[1];
    }

    else
    {
      v12 = v25 + 1;
    }

    re::DynamicString::append(a3, v12, v11);
  }

  v13 = v26[0];
  if (v26[0])
  {
    v14 = v26[0] >> 1;
  }

  else
  {
    v14 = LOBYTE(v26[0]) >> 1;
  }

  if (v14)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v13)
    {
      v15 = v26[1];
    }

    else
    {
      v15 = v26 + 1;
    }

    re::DynamicString::append(a3, v15, v14);
  }

  if (v27 != 1)
  {
    re::DynamicString::format("<textureDownsampleLevel%d>", &v20, v27);
    v16 = v21[0] & 1;
    if (v21[0])
    {
      v17 = v21[1];
    }

    else
    {
      v17 = v21 + 1;
    }

    if (v21[0])
    {
      v18 = v21[0] >> 1;
    }

    else
    {
      v18 = LOBYTE(v21[0]) >> 1;
    }

    re::DynamicString::append(a3, v17, v18);
    if (v20 && v16)
    {
      (*(*v20 + 40))();
    }
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v22);
}

_BYTE *re::RealityFileAssetProvider::getAssetPathForRelease@<X0>(re::RealityFileAssetProvider *a1@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (v29[0])
  {
    re::RealityFileAssetProvider::getFileName(a1, &v26);
    if (v26 != 1)
    {
      v10 = v23;
      v11 = v24;
      v12 = v25;
      *a3 = 0;
      *(a3 + 8) = v10;
      *(a3 + 24) = v11;
      *(a3 + 32) = v12;
      v9 = &v27;
      goto LABEL_24;
    }

    re::DynamicString::operator+(&v23, &v31, &v20);
    if (v28[0])
    {
      v6 = v28[1];
    }

    else
    {
      v6 = v28 + 1;
    }

    if (v21)
    {
      v7 = *&v22[7];
    }

    else
    {
      v7 = v22;
    }

    re::DynamicString::format("reality:%s/%s", &v17, v6, v7);
    re::DynamicString::DynamicString(&v14, &v17);
    *a3 = 1;
    *(a3 + 8) = v14;
    v8 = v17;
    *(a3 + 32) = v16;
    *(a3 + 16) = v15;
    if (v8 && (v18 & 1) != 0)
    {
      (*(*v8 + 40))(v8, v19);
    }

    if (v20 && (v21 & 1) != 0)
    {
      (*(*v20 + 40))();
    }

    if (v23 && (BYTE8(v23) & 1) != 0)
    {
      (*(*v23 + 40))();
    }

    if ((v26 & 1) == 0)
    {
      v9 = &v27;
      goto LABEL_24;
    }

    if (v27 == 1)
    {
      v9 = (&v27 + 8);
LABEL_24:
      re::DynamicString::deinit(v9);
    }
  }

  else
  {
    re::DynamicString::DynamicString(&v26, &v30);
    *a3 = 0;
    *(a3 + 8) = v26;
    *(a3 + 32) = v28[0];
    *(a3 + 16) = v27;
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v29);
}