uint64_t REEmptyShapeCreate()
{
  {
    re::initCollision(0);
  }

  v1 = *(*v0 + 88);

  return v1();
}

uint64_t REPlaneShapeCreate(re *inited, __n128 a2, float a3)
{
  {
    inited = re::initCollision(inited);
  }

  v5 = re::globalAllocators(inited)[2];
  v8 = a2;
  return (*(*v4 + 104))(v4, v5, &v8, a3);
}

uint64_t RESphereShapeCreate(re *inited, float a2)
{
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited)[2];
  v5 = *(*v3 + 112);
  v6.n128_f32[0] = a2;

  return v5(v3, v4, v6);
}

uint64_t RECollisionMeshCreate(re *inited, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = inited;
  {
    inited = re::initCollision(inited);
  }

  v13 = re::globalAllocators(inited);
  return (*(*v12 + 152))(v12, v13[2], v11, a2, a3, a4, a5, 1, a6, a5 / 3, 1);
}

uint64_t RECollisionMeshCreateFromSIMDPositions(re *inited, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = inited;
  {
    inited = re::initCollision(inited);
  }

  v13 = re::globalAllocators(inited);
  return (*(*v12 + 152))(v12, v13[2], v11, a2, 16, a3, a4, 1, a5, a6, 1);
}

uint64_t RECollisionMeshCreateWithFormatV2(re *inited, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = inited;
  {
    inited = re::initCollision(inited);
  }

  v17 = re::globalAllocators(inited);
  return (*(*v16 + 152))(v16, v17[2], v15, a2, a3, a4, a6, a5, a7, a8, 1);
}

void RECollisionMeshDestroy(_anonymous_namespace_ *a1)
{
  if (a1)
  {
    (**a1)(a1);

    v2();
  }
}

void *RECollisionMeshExtractIndices(void *result, char *__dst)
{
  v2 = *(result + 58);
  if (v2 == 2)
  {
    v7 = result[5];
    if (v7)
    {
      v8 = result[2];

      return memmove(__dst, v8, 4 * v7);
    }
  }

  else if (v2 == 1)
  {
    v3 = result[5];
    if (v3)
    {
      v4 = result[2];
      v5 = 2 * v3;
      do
      {
        v6 = *v4++;
        *__dst = v6;
        __dst += 4;
        v5 -= 2;
      }

      while (v5);
    }
  }

  else
  {
    re::internal::assertLog(4, __dst, "assertion failure: '%s' (%s:line %i) unknown index format", "!Unreachable code", "RECollisionMeshExtractIndices", 590);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

__n128 RECollisionMeshExtractVertexPositions(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[3])
  {
    v3 = 0;
    v4 = a1[1];
    do
    {
      v5 = v4 + a1[4] * v3;
      a3.n128_u64[0] = *v5;
      a3.n128_u32[2] = *(v5 + 8);
      *(a2 + 16 * v3++) = a3;
    }

    while (v3 < a1[3]);
  }

  result.n128_u64[0] = a3.n128_u64[0];
  result.n128_u32[2] = a3.n128_u32[2];
  return result;
}

uint64_t RECollisionMeshShapeCreate(re *inited)
{
  v1 = inited;
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited)[2];
  v4 = *(*v2 + 144);

  return v4(v2, v3, v1);
}

uint64_t RECollisionObjectCreate(re *inited)
{
  v1 = inited;
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited)[2];
  memset(v5, 0, 24);
  v5[3] = 0x3F80000000000000;
  return (*(*v2 + 168))(v2, v3, v1, v5, 0, 0);
}

uint64_t RECollisionObjectCreateWithOptions(re *this, uint64_t a2)
{
  v2 = this;
  if (a2)
  {
    v3 = *(a2 + 4);
    {
      this = re::initCollision(this);
    }

    v5 = re::globalAllocators(this)[2];
    memset(v7, 0, 24);
    v7[3] = 0x3F80000000000000;
    return (*(*v4 + 168))(v4, v5, v2, v7, v3, 0);
  }

  else
  {

    return RECollisionObjectCreate(this);
  }
}

void RECollisionObjectSetPose(re *a1, int8x16_t a2, float32x4_t a3)
{
  v10 = a2;
  v11 = a3;
  if (a2.i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF || (v3 = vcge_s32((*&vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL) & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL)), (v3.i8[0]) || (v3.i8[4] & 1) != 0 || (v4 = vmulq_f32(a3, a3), v5 = vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL))), v5 != 1.0) && fabsf(v5 + -1.0) > 0.00001)
  {
    v6 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid input to RECollisionObjectSetPose. Skipping.", v9, 2u);
    }
  }

  else
  {
    v7 = *(a1 + 2);
    v8 = v11;
    v7[1] = v10;
    v7[2] = v8;
    (*(*v7 + 64))(v7, &v10);
  }
}

void RECollisionObjectSetUniformScale(re *a1, int32x2_t a2)
{
  if ((a2.i32[0] & 0x7FFFFFFFu) < 0x7F800000)
  {
    v3 = vdupq_lane_s32(a2, 0);
    re::CollisionObject::setScale(a1, &v3);
  }

  else
  {
    v2 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3.i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "NaN or infinite input to RECollisionObjectSetUniformScale. Skipping.", &v3, 2u);
    }
  }
}

void RECollisionObjectSetScale(re *a1, int8x16_t a2)
{
  if (a2.i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF || (v2 = vcge_s32((vextq_s8(a2, a2, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL)), (v2.i8[0]) || (v2.i8[4])
  {
    v3 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4.i16[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "NaN or infinite input to RECollisionObjectSetUniformScale. Skipping.", &v4, 2u);
    }
  }

  else
  {
    v4 = a2;
    re::CollisionObject::setScale(a1, &v4);
  }
}

uint64_t RECollisionObjectSetGroupAndMask(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 32) != a2 || *(result + 36) != a3)
  {
    *(result + 32) = a2 | (a3 << 32);
    return (*(*result + 80))();
  }

  return result;
}

uint64_t RECollisionObjectSquaredDistanceToPoint(uint64_t a1, uint64_t a2, _OWORD *a3, __n128 a4)
{
  v6 = a4;
  v7 = 0u;
  result = (*(*a2 + 88))(a2, &v6, a1, &v7);
  *a3 = v7;
  return result;
}

_anonymous_namespace_ *RECollisionWorldCreate(re *inited)
{
  {
    inited = re::initCollision(inited);
  }

  v2 = re::globalAllocators(inited);
  v3 = (*(*v1 + 24))(v1, v2[2]);
  return v3;
}

void RECollisionWorldSetLockingNeeded()
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0)
  {
    physx::shdfnd::g_alwaysUseLocking = 1;
  }
}

re *RECollisionWorldDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t RECollisionWorldAddCollisionObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  *(a2 + 56) = v2;
  return (*(*v2 + 192))();
}

uint64_t RECollisionWorldRemoveCollisionObject(uint64_t a1, re::CollisionObject *a2)
{
  re::ContactSetCollection::remove((*(a1 + 128) + 72), a2);
  result = (*(**(a1 + 128) + 200))(*(a1 + 128), a2);
  *(a2 + 7) = 0;
  return result;
}

uint64_t RECollisionWorldGetCollisionObjectCount(_anonymous_namespace_ *a1, const re::CollisionWorld *a2)
{
  {
    v3 = (*(*a1 + 160))(a1);
    v4 = (*(*v3 + 56))(v3);
    v5 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(v4);
    v6 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(v4);
    if (!v6)
    {
      return 0;
    }

    v7 = (*(*v6 + 168))(v6);
    v8 = *(v7 + 24);
    if (!v8)
    {
      return 0;
    }

    v9 = 0;
    v10 = *(v7 + 40);
    v11 = &v10[v8];
    do
    {
      v12 = (*(*v5 + 32))(v5, *v10);
      if (v12)
      {
        v13 = v12;
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, v12, 0);
        if (v13 != v20 || v21 != 0xFFFFFFFFLL)
        {
          do
          {
            v15 = *(*(*(re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v20) + 16) + 56) + 128);
            v9 += (*(*v15 + 176))(v15);
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
          }

          while (v20 != v13 || v21 != 0xFFFF || WORD1(v21) != 0xFFFF);
        }
      }

      ++v10;
    }

    while (v10 != v11);
    return v9;
  }

  else
  {
    v18 = *(**(a1 + 16) + 176);

    return v18();
  }
}

_anonymous_namespace_ *anonymous namespace::isGlobalLegacyCollisionWorld(_anonymous_namespace_ *this, const re::CollisionWorld *a2)
{
  result = (*(*this + 160))(this, a2);
  if (result)
  {
    result = (*(*result + 56))(result);
    if (result)
    {
      result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(result);
      if (result)
      {
        result = (*(*result + 176))(result);
        if (result)
        {
          return (*(result + 7) == this);
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *RECollisionWorldGetCollisionObject(_anonymous_namespace_ *a1, const re::CollisionWorld *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  {
    v4 = (*(*a1 + 160))(a1);
    v5 = (*(*v4 + 56))(v4);
    v6 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(v5);
    result = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(v5);
    if (result)
    {
      v8 = (*(*result + 288))(result) + 120;
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v37, v8, 0);
      v9 = *&v37[0];
      v27 = *&v37[0];
      v28 = DWORD2(v37[0]);
      v10 = WORD4(v37[0]);
      v11 = HIWORD(DWORD2(v37[0]));
      if (v8 == *&v37[0] && WORD4(v37[0]) == 0xFFFF && v11 == 0xFFFF)
      {
        return 0;
      }

      else
      {
        while (1)
        {
          v14 = v11;
          v15 = *(v9 + 16);
          if (v15 <= v11)
          {
            v29 = 0;
            memset(v37, 0, sizeof(v37));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v30 = 136315906;
            *&v30[4] = "operator[]";
            v31 = 1024;
            v32 = 797;
            v33 = 2048;
            v34 = v14;
            v35 = 2048;
            v36 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v16 = *(*(v9 + 32) + 16 * v11) + 240 * v10;
          v17 = *(v16 + 200);
          if (v17)
          {
            break;
          }

LABEL_28:
          re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v27);
          v9 = v27;
          v10 = v28;
          v11 = HIWORD(v28);
          if (v27 == v8 && v28 == 0xFFFF && HIWORD(v28) == 0xFFFF)
          {
            return 0;
          }
        }

        v18 = *(v16 + 216);
        v19 = &v18[v17];
        while (1)
        {
          v20 = (*(*v6 + 32))(v6, *v18);
          if (v20)
          {
            v21 = v20;
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v37, v20, 0);
            *v30 = *&v37[0];
            *&v30[8] = DWORD2(v37[0]);
            if (v21 != *&v37[0] || DWORD2(v37[0]) != 0xFFFFFFFFLL)
            {
              break;
            }
          }

LABEL_27:
          if (++v18 == v19)
          {
            goto LABEL_28;
          }
        }

        while (1)
        {
          v23 = *(*(re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(v30) + 16) + 56);
          if ((*(**(v23 + 128) + 176))(*(v23 + 128)) > a2)
          {
            return (*(**(v23 + 128) + 184))(*(v23 + 128), a2);
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v30);
          if (*v30 == v21 && *&v30[8] == 0xFFFF && *&v30[10] == 0xFFFF)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  else
  {
    v26 = *(**(a1 + 16) + 184);

    return v26();
  }

  return result;
}

void RECollisionWorldInitDebugRenderer(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v17 = _Block_copy(v12);
  v13 = _Block_copy(v11);
  v14 = _Block_copy(v10);
  v15 = _Block_copy(v9);
  v16 = *(*a1 + 112);

  v16(a1, v17, v13, v14, v15);
}

_anonymous_namespace_ *RECollisionWorldDebugRenderingSetEnabled(_anonymous_namespace_ *a1, const re::CollisionWorld *a2)
{
  if (result)
  {
    v4 = (*(*a1 + 160))(a1);
    v5 = (*(*v4 + 56))(v4);
    v6 = *(*re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(v5) + 88);

    return v6();
  }

  return result;
}

uint64_t RECollisionWorldSetRenderingFromPhysicsTransform(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return (*(*a1 + 120))(a1, v6);
}

BOOL RECollisionWorldHasContactRayVsWorld(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return RECollisionWorldHasContactRayVsWorldWithFilter(a1, v4, -1, -1);
}

BOOL RECollisionWorldHasContactRayVsWorldWithFilter(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v12[0] = 2;
  v12[1] = a3;
  v12[2] = a4;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = 0;
  (*(*a1 + 56))(a1, a2, v12, v6);
  v4 = v10;
  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v6);
  if (v6[0] && (v7 & 1) == 0)
  {
    (*(*v6[0] + 40))();
  }

  return v4 != 0;
}

BOOL RECollisionWorldHasContactRayVsObject(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return RECollisionWorldHasContactRayVsObjectWithFilter(a1, v5, -1, -1, a3);
}

BOOL RECollisionWorldHasContactRayVsObjectWithFilter(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 0;
  v16 = 0;
  v13[0] = 2;
  v13[1] = a3;
  v13[2] = a4;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  re::CollisionObject::rayCast(a5, a2, v13, v7);
  v5 = v11;
  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v7);
  if (v7[0] && (v8 & 1) == 0)
  {
    (*(*v7[0] + 40))();
  }

  return v5 != 0;
}

uint64_t RECollisionWorldContactsObjectVsObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(a1 + 72, v4);
}

uint64_t RECollisionWorldGetContactsRayVsWorld(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return RECollisionWorldGetContactsRayVsWorldWithFilter(a1, v5, -1, -1, a3);
}

uint64_t RECollisionWorldGetContactsRayVsWorldWithFilter(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v17 = 0;
  v14[0] = 1;
  v14[1] = a3;
  v14[2] = a4;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 1;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v13 = 0;
  (*(*a1 + 56))(a1, a2, v14, v8);
  re::CollisionWorld::DEPRECATED_copyRayHitsToContactSetCollection(a5, v8, *(a2 + 32));
  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v8);
  result = v8[0];
  if (v8[0])
  {
    if ((v9 & 1) == 0)
    {
      return (*(*v8[0] + 40))();
    }
  }

  return result;
}

uint64_t RECollisionWorldGetClosestContactRayVsWorld(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  return RECollisionWorldGetClosestContactRayVsWorldWithFilter(a1, v5, -1, -1, a3);
}

uint64_t RECollisionWorldGetClosestContactRayVsWorldWithFilter(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = a3;
  v15[2] = a4;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  (*(*a1 + 56))(a1, a2, v15, v9);
  *(a5 + 32) = 0;
  ++*(a5 + 40);
  if (v13)
  {
    v7 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v9, 0);
    re::CollisionWorld::DEPRECATED_copyRayHitsToContactSet(a5, v7, *(a2 + 32));
  }

  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v9);
  result = v9[0];
  if (v9[0])
  {
    if ((v10 & 1) == 0)
    {
      return (*(*v9[0] + 40))();
    }
  }

  return result;
}

uint64_t RECollisionWorldGetContactsRayVsObject(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return RECollisionWorldGetContactsRayVsObjectWithFilter(a1, v6, -1, -1, a3, a4);
}

uint64_t RECollisionWorldGetContactsRayVsObjectWithFilter(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v16[0] = 1;
  v16[1] = a3;
  v16[2] = a4;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  re::CollisionObject::rayCast(a5, a2, v16, v10);
  *(a6 + 32) = 0;
  ++*(a6 + 40);
  if (v14)
  {
    v8 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v10, 0);
    re::CollisionWorld::DEPRECATED_copyRayHitsToContactSet(a6, v8, *(a2 + 32));
  }

  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v10);
  result = v10[0];
  if (v10[0])
  {
    if ((v11 & 1) == 0)
    {
      return (*(*v10[0] + 40))();
    }
  }

  return result;
}

void RECollisionWorldGetContactsObjectVsWorld(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = a1;
  a2[3] = 0;
}

float32x4_t *RECollisionWorldGetContactsObjectVsEntitySimulationAdHoc(_anonymous_namespace_ *a1, const re::ecs2::Entity *a2, uint64_t a3)
{
  if (result)
  {
    v6 = result;
    (*(**(a2 + 2) + 40))(&v44);
    v7 = 0;
    v8 = *&v45;
    v9 = v8 + v8;
    v10 = *(&v45 + 2);
    v11 = v10 + v10;
    v12 = v8 * (v8 + v8);
    v13 = *(&v45 + 1) * (*(&v45 + 1) + *(&v45 + 1));
    v14 = v10 * (v10 + v10);
    v15 = v9 * *(&v45 + 1);
    v16 = v9 * *(&v45 + 2);
    v17 = (*(&v45 + 1) + *(&v45 + 1)) * *(&v45 + 2);
    v18 = (*(&v45 + 1) + *(&v45 + 1)) * *(&v45 + 3);
    v19 = v11 * *(&v45 + 3);
    v20.i32[3] = 0;
    *v20.i32 = 1.0 - (v13 + v14);
    *&v20.i32[1] = (v9 * *(&v45 + 1)) + v19;
    *&v20.i32[2] = (v9 * *(&v45 + 2)) - v18;
    v21 = v9 * *(&v45 + 3);
    *&v22 = 1.0 - (v12 + v14);
    v23.i32[3] = 0;
    *v23.i32 = v15 - v19;
    v23.i32[1] = v22;
    *&v23.i32[2] = v17 + v21;
    v24.i32[3] = 0;
    *v24.i32 = v16 + v18;
    *&v24.i32[1] = v17 - v21;
    *&v24.i32[2] = 1.0 - (v12 + v13);
    v25 = v44;
    v25.i32[3] = 1.0;
    v26 = v6[11];
    v27 = v6[12];
    v28 = v6[13];
    v29 = v6[14];
    v46[0] = v20;
    v46[1] = v23;
    v46[2] = v24;
    v46[3] = v25;
    do
    {
      v47[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*&v46[v7])), v27, *v46[v7].i8, 1), v28, v46[v7], 2), v29, v46[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    v46[0] = 0u;
    v48 = 0u;
    v49 = xmmword_1E30474D0;
    re::decomposeScaleRotationTranslation<float>(v47, v46, &v49, &v48);
    v47[0] = v48;
    v47[1] = v49;
    v30 = *(a2 + 2);
    v31 = v49;
    v30[1] = v48;
    v30[2] = v31;
    (*(*v30 + 64))(v30, v47);
    (*(**(v6[1].i64[0] + 56) + 72))(*(v6[1].i64[0] + 56), a2, a3);
    v32 = *(a2 + 2);
    v33 = v45;
    v32[1] = v44;
    v32[2] = v33;
    result = (*(*v32 + 64))(v32, &v44);
    v34 = *(a3 + 32);
    if (v34)
    {
      v35 = 0;
      v36 = *(a3 + 16);
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
          LODWORD(v35) = *(a3 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v35) = 0;
    }

    if (v35 != v34)
    {
      v38 = *(a3 + 32);
      do
      {
        v39 = *(a3 + 16) + 144 * v35;
        v40 = *(v39 + 48);
        if (v40)
        {
          v41 = *(v39 + 64);
          v42 = 80 * v40;
          do
          {
            v41 += 80;
            v42 -= 80;
          }

          while (v42);
          v38 = *(a3 + 32);
        }

        if (v38 <= v35 + 1)
        {
          v43 = v35 + 1;
        }

        else
        {
          v43 = v38;
        }

        while (v43 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if ((*(*(a3 + 16) + 144 * v35) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v35) = v43;
LABEL_23:
        ;
      }

      while (v35 != v34);
    }
  }

  return result;
}

uint64_t anonymous namespace::physicsSimulationDataForEntity(_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  v3 = this;
  do
  {
    v4 = v3;
    v3 = *(v3 + 4);
  }

  while (v3);
  v5 = *(v4 + 3);
  if (!v5)
  {
    return 0;
  }

  re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(*(v4 + 3), a2);
  v6 = *(v5 + 56);
  if (!v6)
  {
    return 0;
  }

  v7 = (*(*v6 + 32))(v6);
  v8 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v7);
  if (!v8)
  {
    return 0;
  }

  return re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(v8, this);
}

float32x4_t *anonymous namespace::transformContactToWorldSpace(float32x4_t *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = result[2];
  v5 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*result, COERCE_FLOAT(*(a2 + 32))), v2, *(a2 + 32), 1), v4, *(a2 + 32), 2);
  v6 = *(a2 + 64);
  v7 = vmulq_f32(v5, v5);
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  if (v7.f32[0] != 1.0 && vabds_f32(1.0, v7.f32[0]) >= (((fabsf(v7.f32[0]) + 1.0) + 1.0) * 0.00001))
  {
    v7.f32[0] = sqrtf(v7.f32[0]);
    v5 = vdivq_f32(v5, vdupq_lane_s32(*v7.f32, 0));
    v6 = v6 / v7.f32[0];
  }

  v8 = result[1];
  v9 = result[2];
  v10 = result[3];
  v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*result, COERCE_FLOAT(*a2)), v8, *a2, 1), v9, *a2, 2));
  v12 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*result, COERCE_FLOAT(*(a2 + 16))), v8, *(a2 + 16), 1), v9, *(a2 + 16), 2));
  v3.i32[0] = *result;
  v2.i32[0] = v8.i32[0];
  v4.i32[0] = v9.i32[0];
  v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(a2 + 48))), v2, *(a2 + 48), 1), v4, *(a2 + 48), 2);
  *a2 = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
  *(a2 + 16) = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
  *(a2 + 32) = v5;
  *(a2 + 48) = v13;
  *(a2 + 64) = v6;
  return result;
}

uint64_t RECollisionWorldGetContactsObjectVsSceneAdHoc(_anonymous_namespace_ *this, const re::ecs2::Scene *a2, uint64_t *a3)
{
  v4 = a2;
  if (*a3)
  {
    re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::clear(a3);
  }

  if (result)
  {
    v7 = result;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v63, result, 0);
    v57 = v63;
    v58 = DWORD2(v63);
    if (v7 != v63 || DWORD2(v63) != 0xFFFFFFFFLL)
    {
      v53 = v7;
      v54 = v4;
      do
      {
        v9 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v57);
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = v9;
          v12 = *(v10 + 56);
          (*(**(v4 + 2) + 40))(&v55);
          v13 = 0;
          v14 = *&v56;
          v15 = v14 + v14;
          v16 = *(&v56 + 2);
          v17 = v16 + v16;
          v18 = v14 * (v14 + v14);
          v19 = *(&v56 + 1) * (*(&v56 + 1) + *(&v56 + 1));
          v20 = v16 * (v16 + v16);
          v21 = v15 * *(&v56 + 1);
          v22 = v15 * *(&v56 + 2);
          v23 = (*(&v56 + 1) + *(&v56 + 1)) * *(&v56 + 2);
          v24 = (*(&v56 + 1) + *(&v56 + 1)) * *(&v56 + 3);
          v25 = v17 * *(&v56 + 3);
          v26.i32[3] = 0;
          *v26.i32 = 1.0 - (v19 + v20);
          *&v26.i32[1] = (v15 * *(&v56 + 1)) + v25;
          *&v26.i32[2] = (v15 * *(&v56 + 2)) - v24;
          v27 = v15 * *(&v56 + 3);
          v28 = 1.0 - (v18 + v20);
          HIDWORD(v29) = 0;
          *&v29 = v21 - v25;
          *(&v29 + 1) = v28;
          *(&v29 + 2) = v23 + v27;
          v30 = v23 - v27;
          HIDWORD(v31) = 0;
          *&v31 = v22 + v24;
          *(&v31 + 1) = v30;
          *(&v31 + 2) = 1.0 - (v18 + v19);
          v32 = v55;
          HIDWORD(v32) = 1.0;
          v33 = v11[11];
          v34 = v11[12];
          v35 = v11[13];
          v36 = v11[14];
          v59 = v26;
          v60 = v29;
          v61 = v31;
          v62 = v32;
          do
          {
            *(&v63 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v59 + v13))), v34, *&v59.i8[v13], 1), v35, *(&v59 + v13), 2), v36, *(&v59 + v13), 3);
            v13 += 16;
          }

          while (v13 != 64);
          v59 = 0u;
          v68 = 0u;
          v69 = xmmword_1E30474D0;
          re::decomposeScaleRotationTranslation<float>(&v63, &v59, &v69, &v68);
          v59 = v68;
          v60 = v69;
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          v66 = 0x7FFFFFFFLL;
          *&v67 = 0;
          re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::init(&v63, *a3, 3);
          v37 = *(v4 + 2);
          v38 = v60;
          *(v37 + 16) = v59;
          *(v37 + 32) = v38;
          (*(*v37 + 64))(v37, &v59);
          (*(*v12 + 72))(v12, v4, &v63);
          v39 = *(v4 + 2);
          v40 = v56;
          v39[1] = v55;
          v39[2] = v40;
          (*(*v39 + 64))(v39, &v55);
          v41 = v65;
          if (v65)
          {
            v42 = 0;
            v43 = v64;
            while (1)
            {
              v44 = *v43;
              v43 += 36;
              if (v44 < 0)
              {
                break;
              }

              if (v65 == ++v42)
              {
                LODWORD(v42) = v65;
                break;
              }
            }
          }

          else
          {
            LODWORD(v42) = 0;
          }

          if (v42 != v65)
          {
            v45 = v64;
            do
            {
              v46 = (v45 + 144 * v42);
              v47 = v46[6];
              if (v47)
              {
                v48 = v46[8];
                v49 = 80 * v47;
                do
                {
                  v48 += 80;
                  v49 -= 80;
                }

                while (v49);
              }

              re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(a3, v46 + 2);
              v45 = v64;
              if (v65 <= v42 + 1)
              {
                v50 = v42 + 1;
              }

              else
              {
                v50 = v65;
              }

              while (v50 - 1 != v42)
              {
                LODWORD(v42) = v42 + 1;
                if ((*(v64 + 144 * v42) & 0x80000000) != 0)
                {
                  goto LABEL_30;
                }
              }

              LODWORD(v42) = v50;
LABEL_30:
              ;
            }

            while (v42 != v41);
          }

          re::ContactSetCollection::~ContactSetCollection(&v63);
          v7 = v53;
          v4 = v54;
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v57);
      }

      while (v57 != v7 || v58 != 0xFFFF || HIWORD(v58) != 0xFFFF);
    }
  }

  return result;
}

uint64_t anonymous namespace::physicsSimulationsForScene(_anonymous_namespace_ *this, const re::ecs2::Scene *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(this, a2);
  v3 = (*(*v2 + 32))(v2);
  v4 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 32);

  return v5();
}

void RECollisionWorldGetContactsObjectVsActiveScenesAdHoc(uint64_t a1, const re::ecs2::Scene *a2, uint64_t *a3)
{
  if (*a3)
  {
    re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::clear(a3);
  }

  v6 = (*(*a1 + 168))(a1);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 40);
    v9 = &v8[v7];
    do
    {
      v10 = *v8;
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v20 = 0x7FFFFFFFLL;
      v21 = 0;
      re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::init(&v17, *a3, 3);
      RECollisionWorldGetContactsObjectVsSceneAdHoc(v10, a2, &v17);
      v11 = v19;
      if (v19)
      {
        v12 = 0;
        v13 = v18;
        while (1)
        {
          v14 = *v13;
          v13 += 36;
          if (v14 < 0)
          {
            break;
          }

          if (v19 == ++v12)
          {
            LODWORD(v12) = v19;
            break;
          }
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

      if (v12 != v19)
      {
        v15 = v18;
        do
        {
          re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::addNew(a3, (v15 + 144 * v12 + 16));
          v15 = v18;
          if (v19 <= v12 + 1)
          {
            v16 = v12 + 1;
          }

          else
          {
            v16 = v19;
          }

          while (v16 - 1 != v12)
          {
            LODWORD(v12) = v12 + 1;
            if ((*(v18 + 144 * v12) & 0x80000000) != 0)
            {
              goto LABEL_20;
            }
          }

          LODWORD(v12) = v16;
LABEL_20:
          ;
        }

        while (v12 != v11);
      }

      re::ContactSetCollection::~ContactSetCollection(&v17);
      ++v8;
    }

    while (v8 != v9);
  }
}

void RECollisionObjectMinRadianDistanceToRay(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = 0u;
  if ((*(*a3 + 96))(a3, a2, a1, &v5) > 0.0)
  {
    *a4 = v5;
  }
}

uint64_t RECollisionWorldGetContactsForSweepWithFilter(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v18[0] = a6;
  v18[1] = a7;
  v17[0] = a8;
  v17[1] = a9;
  v21 = 0;
  v20 = 0;
  v19[0] = 1;
  v19[1] = a3;
  v22 = 0;
  v19[2] = a4;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = 0;
  (*(*a1 + 64))(a1, a2, v18, v17, v19, v11);
  re::CollisionWorld::DEPRECATED_copyRayHitsToContactSetCollection(a5, v11, 1.0);
  re::BucketArray<re::CollisionCastHit,10ul>::deinit(v11);
  result = v11[0];
  if (v11[0])
  {
    if ((v12 & 1) == 0)
    {
      return (*(*v11[0] + 40))();
    }
  }

  return result;
}

uint64_t RECollisionCastConfigurationInitToDefault(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = 0xFFFFFFFF00000001;
  *(result + 20) = 0;
  *(result + 28) = 0;
  *(result + 12) = 0;
  return result;
}

uint64_t RECollisionCastConfigurationGetFilter(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *(result + 4);
  }

  if (a3)
  {
    *a3 = *(result + 8);
  }

  return result;
}

uint64_t RECollisionCastConfigurationSetFilter(uint64_t result, int a2, int a3)
{
  *(result + 4) = a2;
  *(result + 8) = a3;
  return result;
}

void RECollisionCastRayVsEntitySimulation(float32x4_t *a1, const re::ecs2::Entity *a2, _anonymous_namespace_ *this, uint64_t a4)
{
  if (v7)
  {
    v10 = v7;
    v12 = *a1;
    v11 = a1[1];
    v13 = vmulq_n_f32(v11, a1[2].f32[0]);
    v11.i64[0] = v7[11].i64[0];
    v8.i64[0] = v7[12].i64[0];
    v9.i64[0] = v7[13].i64[0];
    v11.i32[2] = v7[11].i32[2];
    v8.i32[2] = v7[12].i32[2];
    v9.i32[2] = v7[13].i32[2];
    v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, v13.f32[0]), v8, *v13.f32, 1), v9, v13, 2);
    v27 = 0;
    v15 = vaddq_f32(v7[14], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7[11], v12.f32[0]), v7[12], *v12.f32, 1), v7[13], v12, 2));
    v26 = 0;
    v16 = vdivq_f32(v15, vdupq_laneq_s32(v15, 3));
    v17 = vmulq_f32(v14, v14);
    v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
    v18 = vrsqrte_f32(v17.u32[0]);
    v19 = vmul_f32(v18, vrsqrts_f32(v17.u32[0], vmul_f32(v18, v18)));
    v22 = vmulq_n_f32(v14, vmul_f32(v19, vrsqrts_f32(v17.u32[0], vmul_f32(v19, v19))).f32[0]);
    v23 = v16;
    v20 = sqrtf(v17.f32[0]);
    v21 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v7);
    v24[0] = v23;
    v24[1] = v22;
    v25 = v20;
    (*(**(v21 + 56) + 56))(*(v21 + 56), v24, a2, a4);
  }
}

float32x4_t anonymous namespace::transformCollisionCastHitCollectionToWorldSpace(float32x4_t *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](a2, i);
      v7 = *(v6 + 32);
      v8 = vaddq_f32(a1[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*(v6 + 16))), a1[1], *(v6 + 16), 1), a1[2], *(v6 + 16), 2));
      *(v6 + 16) = vdivq_f32(v8, vdupq_laneq_s32(v8, 3));
      v9 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, v7.f32[0]), a1[1], *v7.f32, 1), a1[2], v7, 2);
      v10 = vmulq_f32(v9, v9);
      *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
      *v10.f32 = vrsqrte_f32(v11);
      *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
      result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
      *(v6 + 32) = result;
    }
  }

  return result;
}

uint64_t RECollisionCastRayVsScene(float32x2_t *a1, uint64_t a2, _anonymous_namespace_ *a3, uint64_t *a4)
{
  re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  if (result)
  {
    v10 = result;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v41, result, 0);
    v48 = v41;
    v49 = v42;
    if (v10 != v41 || v42 != 0xFFFFFFFFLL)
    {
      do
      {
        v12 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v48);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12;
          v15 = vmulq_n_f32(*a1[2].f32, a1[4].f32[0]);
          v16 = *(v12 + 176);
          v17 = *(v12 + 192);
          v18 = *(v12 + 208);
          v19 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2);
          v20 = *(v13 + 56);
          v21 = vaddq_f32(*(v12 + 224), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*a1->f32)), v17, *a1, 1), v18, *a1->f32, 2));
          v22 = vmulq_f32(v19, v19);
          v22.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
          v23 = vdivq_f32(v21, vdupq_laneq_s32(v21, 3));
          *v21.f32 = vrsqrte_f32(v22.u32[0]);
          *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v21.f32, *v21.f32)));
          v35 = vmulq_n_f32(v19, vmul_f32(*v21.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v21.f32, *v21.f32))).f32[0]);
          v36 = v23;
          v24 = *a4;
          v41 = 0;
          v42 = 0;
          v43 = 1;
          v45 = 0;
          v46 = 0;
          v25 = sqrtf(v22.f32[0]);
          v44 = 0;
          v47 = 0;
          re::BucketArray<re::CollisionCastHit,10ul>::init(&v41, v24, 1uLL);
          v37[0] = v36;
          v37[1] = v35;
          v38 = v25;
          v39 = 0;
          v40 = 0;
          (*(*v20 + 56))(v20, v37, a2, &v41);
          v26 = v46;
          if (v46)
          {
            v27 = 0;
            do
            {
              v28 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](&v41, v27);
              v29 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
              *v29 = *v28;
              v30 = v28[4];
              v32 = v28[1];
              v31 = v28[2];
              v29[3] = v28[3];
              v29[4] = v30;
              v29[1] = v32;
              v29[2] = v31;
              ++v27;
            }

            while (v26 != v27);
          }

          re::BucketArray<re::CollisionCastHit,10ul>::deinit(&v41);
          if (v41 && (v43 & 1) == 0)
          {
            (*(*v41 + 40))();
          }
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v48);
      }

      while (v48 != v10 || v49 != 0xFFFF || HIWORD(v49) != 0xFFFF);
    }
  }

  return result;
}

void RECollisionCastRayVsActiveScenes(_OWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  v8 = (*(*a3 + 168))(a3);
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = *(v8 + 40);
    v11 = &v10[v9];
    do
    {
      v12 = *v10;
      re::StackScratchAllocator::StackScratchAllocator(v28);
      v22[0] = 0;
      v22[1] = 0;
      v23 = 1;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 0;
      re::BucketArray<re::CollisionCastHit,10ul>::init(v22, v28, 1uLL);
      v13 = a1[1];
      v21[0] = *a1;
      v21[1] = v13;
      v21[2] = a1[2];
      RECollisionCastRayVsScene(v21, a2, v12, v22);
      v14 = v26;
      if (v26)
      {
        v15 = 0;
        do
        {
          v16 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v22, v15);
          v17 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
          *v17 = *v16;
          v18 = v16[4];
          v20 = v16[1];
          v19 = v16[2];
          v17[3] = v16[3];
          v17[4] = v18;
          v17[1] = v20;
          v17[2] = v19;
          ++v15;
        }

        while (v14 != v15);
      }

      re::BucketArray<re::CollisionCastHit,10ul>::deinit(v22);
      if (v22[0])
      {
        if ((v23 & 1) == 0)
        {
          (*(*v22[0] + 40))();
        }
      }

      re::StackScratchAllocator::~StackScratchAllocator(v28);
      ++v10;
    }

    while (v10 != v11);
  }
}

uint64_t RECollisionCastConvexVsWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v10[0] = a5;
  v10[1] = a6;
  v9[0] = a7;
  v9[1] = a8;
  return (*(*a3 + 64))(a3, a1, v10, v9, a2, a4);
}

double RECollisionCastConvexVsEntitySimulation(uint64_t a1, const re::ecs2::Entity *a2, _anonymous_namespace_ *this, uint64_t a4, __n128 a5, float32x4_t a6, __n128 a7, float32x4_t a8)
{
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *(v11 + 16);
    v16 = a6;
    v17 = (v16.f32[0] + v16.f32[0]) * v16.f32[0];
    v18 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], *a6.f32, 1);
    v19 = vmuls_lane_f32(a6.f32[2] + a6.f32[2], a6, 2);
    v20 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], *v16.f32, 1);
    v21 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], v16, 2);
    v22 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], a6, 2);
    v23 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], v16, 3);
    v24 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], a6, 3);
    v25 = vmuls_lane_f32(a6.f32[2] + a6.f32[2], a6, 3);
    v26.i32[3] = 0;
    *v26.i32 = 1.0 - (v18 + v19);
    *&v26.i32[1] = v20 + v25;
    v16.i32[3] = 0;
    *&v26.i32[2] = v21 - v24;
    HIDWORD(v27) = 0;
    *&v27 = v20 - v25;
    *(&v27 + 1) = 1.0 - (v17 + v19);
    *(&v27 + 2) = v22 + v23;
    v16.f32[0] = v21 + v24;
    v16.f32[1] = v22 - v23;
    v16.f32[2] = 1.0 - (v17 + v18);
    v28 = a5;
    v28.n128_u32[3] = 1.0;
    v29 = *(v11 + 176);
    v30 = *(v11 + 192);
    v31 = *(v11 + 208);
    v32 = *(v11 + 224);
    v60 = v26;
    v61 = v27;
    v62 = v16;
    v63 = v28;
    do
    {
      v64[v14 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v60 + v14))), v30, *&v60.i8[v14], 1), v31, *(&v60 + v14), 2), v32, *(&v60 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
    v60 = 0u;
    v65 = 0u;
    v66 = xmmword_1E30474D0;
    re::decomposeScaleRotationTranslation<float>(v64, &v60, &v66, &v65);
    v33 = 0;
    v55 = v65;
    v57 = v66;
    v34 = a8;
    v35 = (v34.f32[0] + v34.f32[0]) * v34.f32[0];
    v36 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], *a8.f32, 1);
    v37 = vmuls_lane_f32(a8.f32[2] + a8.f32[2], a8, 2);
    v38 = vmuls_lane_f32(v34.f32[0] + v34.f32[0], *v34.f32, 1);
    v39 = vmuls_lane_f32(v34.f32[0] + v34.f32[0], v34, 2);
    v40 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], a8, 2);
    v41 = vmuls_lane_f32(v34.f32[0] + v34.f32[0], v34, 3);
    v42 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], a8, 3);
    v43 = vmuls_lane_f32(a8.f32[2] + a8.f32[2], a8, 3);
    v44.i32[3] = 0;
    *v44.i32 = 1.0 - (v36 + v37);
    *&v44.i32[1] = v38 + v43;
    *&v44.i32[2] = v39 - v42;
    v34.i32[3] = 0;
    v34.f32[0] = v38 - v43;
    v34.f32[1] = 1.0 - (v35 + v37);
    v34.f32[2] = v40 + v41;
    *&v45 = 1.0 - (v35 + v36);
    v46.f32[0] = v39 + v42;
    v46.f32[1] = v40 - v41;
    v46.i64[1] = v45;
    v47 = v46;
    v48 = a7;
    v48.n128_u32[3] = 1.0;
    v49 = v13[11];
    v50 = v13[12];
    v51 = v13[13];
    v52 = v13[14];
    v60 = v44;
    v61 = v34;
    v62 = v47;
    v63 = v48;
    do
    {
      v64[v33 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*(&v60 + v33))), v50, *&v60.i8[v33], 1), v51, *(&v60 + v33), 2), v52, *(&v60 + v33), 3);
      v33 += 16;
    }

    while (v33 != 64);
    v60 = 0u;
    v65 = 0u;
    v66 = xmmword_1E30474D0;
    re::decomposeScaleRotationTranslation<float>(v64, &v60, &v66, &v65);
    v53 = *(v15 + 56);
    v64[0] = v55;
    v64[1] = v57;
    v60 = v65;
    v61 = v66;
    (*(*v53 + 64))(v53, a1, v64, &v60, a2, a4);
  }

  return result;
}

uint64_t RECollisionCastConvexVsScene(uint64_t a1, uint64_t a2, _anonymous_namespace_ *a3, unint64_t a4, __n128 a5, float32x4_t a6, __n128 a7, float32x4_t a8)
{
  re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  if (result)
  {
    v14 = result;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v79, result, 0);
    v81 = v79;
    v82 = v80;
    if (v14 != v79 || v80 != 0xFFFFFFFFLL)
    {
      v16 = a6;
      v17 = (v16.f32[0] + v16.f32[0]) * v16.f32[0];
      v18 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], *a6.f32, 1);
      v19 = vmuls_lane_f32(a6.f32[2] + a6.f32[2], a6, 2);
      v20 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], *v16.f32, 1);
      v21 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], v16, 2);
      v22 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], a6, 2);
      v23 = vmuls_lane_f32(v16.f32[0] + v16.f32[0], v16, 3);
      v24 = vmuls_lane_f32(a6.f32[1] + a6.f32[1], a6, 3);
      v25 = vmuls_lane_f32(a6.f32[2] + a6.f32[2], a6, 3);
      v26.i32[3] = 0;
      *v26.i32 = 1.0 - (v18 + v19);
      *&v26.i32[1] = v20 + v25;
      *&v26.i32[2] = v21 - v24;
      v27.i32[3] = 0;
      v27.f32[0] = v20 - v25;
      v27.f32[1] = 1.0 - (v17 + v19);
      v27.f32[2] = v22 + v23;
      v67 = v27;
      v68 = v26;
      *&v28 = 1.0 - (v17 + v18);
      *&v29 = v21 + v24;
      *(&v29 + 1) = v22 - v23;
      *(&v29 + 1) = v28;
      v66 = v29;
      v30 = a5;
      v30.n128_u32[3] = 1.0;
      v70 = v30;
      v31 = a8;
      *&v29 = (v31.f32[0] + v31.f32[0]) * v31.f32[0];
      v32 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], *a8.f32, 1);
      v27.f32[0] = vmuls_lane_f32(a8.f32[2] + a8.f32[2], a8, 2);
      v33 = vmuls_lane_f32(v31.f32[0] + v31.f32[0], *v31.f32, 1);
      v34 = vmuls_lane_f32(v31.f32[0] + v31.f32[0], v31, 2);
      v35 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], a8, 2);
      v36 = vmuls_lane_f32(a8.f32[1] + a8.f32[1], a8, 3);
      v37 = vmuls_lane_f32(a8.f32[2] + a8.f32[2], a8, 3);
      v26.i32[3] = 0;
      *v26.i32 = 1.0 - (v32 + v27.f32[0]);
      *&v26.i32[1] = v33 + v37;
      *&v26.i32[2] = v34 - v36;
      v30.n128_f32[0] = vmuls_lane_f32(v31.f32[0] + v31.f32[0], v31, 3);
      v16.i32[3] = 0;
      v16.f32[0] = v33 - v37;
      v16.f32[1] = 1.0 - (*&v29 + v27.f32[0]);
      v16.f32[2] = v35 + v30.n128_f32[0];
      v64 = v16;
      v65 = v26;
      *&v38 = 1.0 - (*&v29 + v32);
      *&v29 = v34 + v36;
      *(&v29 + 1) = v35 - v30.n128_f32[0];
      *(&v29 + 1) = v38;
      v63 = v29;
      v39 = a7;
      v39.n128_u32[3] = 1.0;
      v72 = v39;
      do
      {
        v40 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v81);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v40;
          v43 = 0;
          v44 = *(v41 + 56);
          v45 = *(v40 + 176);
          v46 = *(v40 + 192);
          v47 = *(v40 + 208);
          v48 = *(v40 + 224);
          v83 = v68;
          v84 = v67;
          v85 = v66;
          v86 = v70;
          do
          {
            *(&v79 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v83 + v43))), v46, *&v83.i8[v43], 1), v47, *(&v83 + v43), 2), v48, *(&v83 + v43), 3);
            v43 += 16;
          }

          while (v43 != 64);
          v83 = 0u;
          v88[0] = xmmword_1E30474D0;
          v87[0] = 0u;
          re::decomposeScaleRotationTranslation<float>(&v79, &v83, v88, v87);
          v49 = 0;
          v76 = v87[0];
          v78 = v88[0];
          v50 = v42[11];
          v51 = v42[12];
          v52 = v42[13];
          v53 = v42[14];
          v83 = v65;
          v84 = v64;
          v85 = v63;
          v86 = v72;
          do
          {
            *(&v79 + v49) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v83 + v49))), v51, *&v83.i8[v49], 1), v52, *(&v83 + v49), 2), v53, *(&v83 + v49), 3);
            v49 += 16;
          }

          while (v49 != 64);
          v83 = 0u;
          v88[0] = xmmword_1E30474D0;
          v87[0] = 0u;
          re::decomposeScaleRotationTranslation<float>(&v79, &v83, v88, v87);
          v73 = v87[0];
          v74 = v88[0];
          re::StackScratchAllocator::StackScratchAllocator(&v79);
          v83 = 0uLL;
          v84.i32[0] = 1;
          v85 = 0uLL;
          v84.i64[1] = 0;
          v86.n128_u32[0] = 0;
          re::BucketArray<re::CollisionCastHit,10ul>::init(&v83, &v79, 1uLL);
          v88[0] = v76;
          v88[1] = v78;
          v87[0] = v73;
          v87[1] = v74;
          (*(*v44 + 64))(v44, a1, v88, v87, a2, &v83);
          v54 = *(&v85 + 1);
          if (*(&v85 + 1))
          {
            v55 = 0;
            do
            {
              v56 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](&v83, v55);
              v57 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
              *v57 = *v56;
              v58 = v56[4];
              v60 = v56[1];
              v59 = v56[2];
              v57[3] = v56[3];
              v57[4] = v58;
              v57[1] = v60;
              v57[2] = v59;
              ++v55;
            }

            while (v54 != v55);
          }

          re::BucketArray<re::CollisionCastHit,10ul>::deinit(&v83);
          if (v83.i64[0] && (v84.i8[0] & 1) == 0)
          {
            (*(*v83.i64[0] + 40))(v83.i64[0], v85);
          }

          re::StackScratchAllocator::~StackScratchAllocator(&v79);
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v81);
      }

      while (v81 != v14 || v82 != 0xFFFF || HIWORD(v82) != 0xFFFF);
    }
  }

  return result;
}

void RECollisionCastConvexVsActiveScenes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __n128 a5, float32x4_t a6, __n128 a7, float32x4_t a8)
{
  re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  v12 = (*(*a3 + 168))(a3);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 40);
    v15 = &v14[v13];
    do
    {
      v16 = *v14;
      re::StackScratchAllocator::StackScratchAllocator(v34);
      v28[0] = 0;
      v28[1] = 0;
      v29 = 1;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v33 = 0;
      re::BucketArray<re::CollisionCastHit,10ul>::init(v28, v34, 1uLL);
      RECollisionCastConvexVsScene(a1, a2, v16, v28, a5, a6, a7, a8);
      v17 = v32;
      if (v32)
      {
        v18 = 0;
        do
        {
          v19 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v28, v18);
          v20 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
          *v20 = *v19;
          v21 = v19[4];
          v23 = v19[1];
          v22 = v19[2];
          v20[3] = v19[3];
          v20[4] = v21;
          v20[1] = v23;
          v20[2] = v22;
          ++v18;
        }

        while (v17 != v18);
      }

      re::BucketArray<re::CollisionCastHit,10ul>::deinit(v28);
      if (v28[0])
      {
        if ((v29 & 1) == 0)
        {
          (*(*v28[0] + 40))();
        }
      }

      re::StackScratchAllocator::~StackScratchAllocator(v34);
      ++v14;
    }

    while (v14 != v15);
  }
}

uint64_t RECollisionCastHitCollectionCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 56, 8);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *v2 = 0u;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  return v2;
}

re *RECollisionCastHitCollectionDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v1);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

unint64_t RECollisionCastHitCollectionGetByIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  else
  {
    return re::BucketArray<re::CollisionCastHit,10ul>::operator[](a1, a2);
  }
}

__n128 *RECollisionCastHitCollectionAddHit(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, float a5)
{
  v8 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a1);
  *v8 = 0;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 2139095039;
  *(v8 + 52) = 0xFFFFFFFF00000000;
  *(v8 + 64) = 0;
  v10 = *(a1 + 40);
  if (v10)
  {
    result = re::BucketArray<re::CollisionCastHit,10ul>::operator[](a1, v10 - 1);
    result->n128_u64[0] = a2;
    result[1] = a3;
    result[2] = a4;
    result[3].n128_f32[0] = a5;
  }

  else
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t REContactSetCreate(re *inited)
{
  {
    inited = re::initCollision(inited);
  }

  v1 = re::globalAllocators(inited);
  v2 = (*(*v1[2] + 32))(v1[2], 128, 16);
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *v2 = 0u;
  *(v2 + 28) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 55) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *v2 = 0;
  *(v2 + 8) = 0;
  re::DynamicArray<re::RigSplineIKJoint>::setCapacity((v2 + 16), 0);
  ++*(v2 + 40);
  return v2;
}

re *REContactSetDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::ContactSet::~ContactSet(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t REContactSetHasContact(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = 80 * v1;
  for (i = (*(a1 + 48) + 64); *i > 0.0; i += 20)
  {
    v4 = vmulq_f32(*(i - 4), *(i - 4));
    if ((v4.f32[2] + vaddv_f32(*v4.f32)) != 0.0)
    {
      break;
    }

    v2 -= 80;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t re::ContactSet::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 48) + 80 * a2;
}

uint64_t REContactSetCollectionCreate(re *inited)
{
  {
    inited = re::initCollision(inited);
  }

  v1 = re::globalAllocators(inited);
  v2 = (*(*v1[2] + 32))(v1[2], 56, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0x7FFFFFFFLL;
  *(v2 + 48) = 0;
  return v2;
}

re *REContactSetCollectionDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::ContactSetCollection::~ContactSetCollection(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void REContactSetCollectionClear(uint64_t a1)
{
  if (*a1)
  {
    re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::clear(a1);
  }
}

BOOL REContactSetCollectionContains(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (v5 == v7)
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 8) + 4 * ((v7 ^ v5) % v3));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = 0x7FFFFFFFLL;
  while (1)
  {
    v12 = v10 + 144 * v8;
    v15 = *(v12 + 16);
    v13 = v12 + 16;
    v14 = v15;
    if (v15 == a2 && *(v13 + 8) == a3)
    {
      break;
    }

    if (v14 == a3 && *(v13 + 8) == a2)
    {
      break;
    }

    v8 = *(v10 + 144 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return v11 != 0x7FFFFFFF;
    }
  }

  v11 = v8;
  return v11 != 0x7FFFFFFF;
}

uint64_t REContactSetCollectionGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return re::HashSetBase<re::Pair<re::CollisionObject *,re::CollisionObject *,false>,re::ContactSet,re::ContactSetCollection::Key,re::ContactSetCollection::Hash,re::ContactSetCollection::EqualTo,false,false>::tryGet(a1, v4);
}

uint64_t REContactSetCollectionGetIterator@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 16);
    while (1)
    {
      v5 = *v4;
      v4 += 36;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(result + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  *(a2 + 24) = v2;
  return result;
}

BOOL REContactSetCollectionIteratorNext(_DWORD *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = a1[2] + 1;
  do
  {
    v4 = v3;
    a1[2] = v3;
    if (v3 >= v2)
    {
      break;
    }

    v5 = *(*(v1 + 16) + 144 * v3++);
  }

  while ((v5 & 0x80000000) == 0);
  return a1[6] != v4;
}

uint64_t REContactSetCollectionIteratorCurrent(_DWORD *a1)
{
  v1 = a1[2];
  if (v1 == a1[6])
  {
    return 0;
  }

  else
  {
    return *(*a1 + 16) + 144 * v1 + 16;
  }
}

BOOL REContactSetIteratorNext(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = 15;
  if (*v1 == *a1)
  {
    v3 = 14;
  }

  v4 = v1[v3];
  a1[1] = v4;
  return v2 != a1[2] || v4 != a1[3];
}

uint64_t REContactSetIteratorCurrent(uint64_t *a1)
{
  v2 = *a1;
  v4 = a1 + 1;
  result = a1[1];
  if (v2 == v4[1] && result == a1[3])
  {
    return 0;
  }

  return result;
}

uint64_t REPortalServiceQueryEntityCopyWorldRoot(uint64_t a1)
{
  v1 = (*(*a1 + 8))(v5);
  if (LOBYTE(v5[0]))
  {
    v2 = v5[1];
  }

  else
  {
    v2 = 0;
  }

  re::make::shared::object<re::ecs2::SharedWorldRootToken>(v1, &v4);
  result = v4;
  *(v4 + 24) = v2;
  return result;
}

BOOL REPortalSetContains(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = *(*(a1 + 8) + 4 * ((v3 ^ (v3 >> 31)) % v2));
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 24 * v4 + 16) == a2)
  {
    return 1;
  }

  do
  {
    LODWORD(v4) = *(v6 + 24 * v4 + 8) & 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
  }

  while (v4 != 0x7FFFFFFF && *(v6 + 24 * v4 + 16) != a2);
  return result;
}

uint64_t REPortalSetBegin(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = 0;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3;
      v3 += 6;
      if (v4 < 0)
      {
        break;
      }

      ++v2;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t REPortalSetIteratorNext(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 2);
  v4 = *(result + 32);
  if (v4 <= v3 + 1)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = *(result + 32);
  }

  while (++v3 < v4)
  {
    if ((*(*(result + 16) + 24 * v3 + 8) & 0x80000000) != 0)
    {
      goto LABEL_8;
    }
  }

  v3 = v5;
LABEL_8:
  v6 = v3 | (*(a1 + 3) << 32);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void re::make::shared::object<re::ecs2::SharedWorldRootToken>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 32, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5D2DBE8;
  *a2 = v4;
}

void re::ecs2::SharedWorldRootToken::~SharedWorldRootToken(re::ecs2::SharedWorldRootToken *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double REMeshCompileOptionsCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 88, 8);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2DC68;
  *(v2 + 32) = 0;
  *(v2 + 26) = 257;
  *(v2 + 28) = 1;
  *(v2 + 33) = 16842752;
  *(v2 + 29) = 0;
  *(v2 + 37) = 1;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 76) = 0x7FFFFFFF;
  return result;
}

uint64_t REMeshCompileOptionsSetAttributeCompressionType(uint64_t a1, char *a2, unsigned __int8 a3, float a4)
{
  v15 = 0;
  v16 = a2;
  v6 = a3;
  v13 = 0;
  v14 = 0;
  v7 = re::Hash<re::DynamicString>::operator()(&v17, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 40, &v16, v7, &v13);
  v9 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v10 = re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 40, v14, v13);
    v11 = v16;
    *(v10 + 40) = v6;
    *(v10 + 44) = a4;
    ++*(a1 + 80);
  }

  else
  {
    ++*(a1 + 80);
    v12 = *(a1 + 56) + 56 * v9;
    *(v12 + 40) = v6;
    *(v12 + 44) = a4;
  }

  return result;
}

BOOL REMeshCompileOptionsGetAttributeCompressionType(uint64_t a1, char *a2, _BYTE *a3, _DWORD *a4)
{
  v13 = a2;
  v7 = re::Hash<re::DynamicString>::operator()(v11, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 40, &v13, v7, v11);
  v8 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v9 = *(a1 + 56) + 56 * v12;
    *a3 = *(v9 + 40);
    *a4 = *(v9 + 44);
  }

  return v8 != 0x7FFFFFFF;
}

void REMeshCompileOptionsClearAttributeCompressionType(uint64_t a1, char *a2)
{
  v14 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v11, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 40, &v14, v3, v11);
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 56);
    v6 = *(v5 + 56 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 48) + 4 * v11[2]) = v6;
      v4 = v12;
    }

    else
    {
      *(v5 + 56 * v13) = *(v5 + 56 * v13) & 0x80000000 | v6;
    }

    v7 = (v5 + 56 * v4);
    v8 = *v7;
    if (*v7 < 0)
    {
      *v7 = v8 & 0x7FFFFFFF;
      re::DynamicString::deinit((v7 + 2));
      v9 = v12;
      v5 = *(a1 + 56);
      v8 = *(v5 + 56 * v12);
      v4 = v12;
    }

    else
    {
      v9 = v4;
    }

    *(v5 + 56 * v9) = *(a1 + 76) | v8 & 0x80000000;
    --*(a1 + 68);
    v10 = *(a1 + 80) + 1;
    *(a1 + 76) = v4;
    *(a1 + 80) = v10;
  }
}

uint64_t REAssetManagerMeshMemoryAssetCreateWithOptions(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v28 = 0;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  v27 = 0;
  if (a3)
  {
    v6 = a3;
    re::DynamicArray<re::GeomMesh>::setCapacity(v25, a3);
    do
    {
      v8 = *a2++;
      re::DynamicArray<re::GeomMesh>::add(v25, (v8 + 24));
      --v6;
    }

    while (v6);
  }

  LODWORD(v22[0]) = 16842752;
  BYTE4(v22[0]) = 1;
  *(v22 + 5) = 0;
  *(&v22[1] + 1) = 0;
  *(&v22[1] + 3) = 65793;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  DWORD1(v24) = 0x7FFFFFFF;
  if (a4)
  {
    v22[0] = *(a4 + 24);
    *(v22 + 7) = *(a4 + 31);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v23, a4 + 40);
  }

  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v28, v26, 0, v22, v20);
  v10 = v20[0];
  v11 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v12 = (*(*v11[2] + 32))(v11[2], 1272, 8);
  v13 = v12;
  if (v10 == 1)
  {
    v14 = re::MeshAsset::MeshAsset(v12, &v21);
  }

  else
  {
    re::MeshAsset::MeshAsset(v12);
  }

  v15 = re::MeshAsset::assetType(v14);
  (*(*a1 + 424))(v19, a1, v13, v15, 0, 0, 0);
  v16 = v19[0];
  if (v19[0])
  {
    v17 = (v19[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v19);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v20);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v23);
  re::DynamicArray<re::GeomMesh>::deinit(v25);
  return v16;
}

uint64_t REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  if (v16[0] == 1)
  {
    v8 = re::globalAllocators(MeshAssetDataHelper);
    v9 = (*(*v8[2] + 32))(v8[2], 1272, 8);
    v10 = re::MeshAsset::MeshAsset(v9, &v17);
    v11 = re::MeshAsset::assetType(v10);
    (*(*a1 + 424))(v15, a1, v9, v11, 1, 0, 0);
    v12 = v15[0];
    if (v15[0])
    {
      v13 = (v15[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v15);
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v16);
  return v12;
}

uint64_t anonymous namespace::makeMeshAssetDataHelper(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a6;
  v12 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  memset(v69, 0, sizeof(v69));
  v70 = 0x7FFFFFFFLL;
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_68;
    }

    v41 = a7;
    if (!a7)
    {
      goto LABEL_68;
    }

    v40 = 0;
    goto LABEL_49;
  }

  v13 = a3;
  v14 = re::DynamicArray<re::ModelWithLodsDescriptor>::setCapacity(&v60, a3);
  v15 = 0;
  v16 = 0;
  v57 = v13;
  do
  {
    v17 = *(a2 + 8 * v15);
    v59 = v17;
    if (v17)
    {
      v14 = (v17 + 8);
    }

    v71 = 0u;
    v72 = 0u;
    re::DynamicString::setCapacity(&v71, 0);
    v73 = 0uLL;
    DWORD2(v74) = 0;
    *&v74 = 0;
    v81 = 0;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    *&v78[4] = 0u;
    v79 = 0u;
    v80 = 0;
    re::DynamicString::operator=(&v71, (v17 + 208));
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(&v73, &v59);
    v18 = v61;
    if (v61 >= *(&v60 + 1))
    {
      re::DynamicArray<re::ModelWithLodsDescriptor>::growCapacity(&v60, v61 + 1);
      v18 = v61;
    }

    v19 = v63 + 152 * v18;
    re::DynamicString::DynamicString(v19, &v71);
    *(v19 + 32) = 0;
    *(v19 + 64) = 0;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    if (v73)
    {
      v20 = v9;
      v21 = v74;
      *(v19 + 32) = v73;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v19 + 32), v21);
      ++*(v19 + 56);
      v22 = v74;
      v23 = *(v19 + 48);
      if (v74 >= v23)
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v19 + 32), v74);
        v30 = v75;
        v31 = *(v19 + 48);
        v32 = *(v19 + 64);
        if (v31)
        {
          v33 = 8 * v31;
          do
          {
            v34 = *v30++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v32++, v34);
            v33 -= 8;
          }

          while (v33);
          v32 = *(v19 + 64);
          v31 = *(v19 + 48);
          v30 = v75;
        }

        if (v31 != v22)
        {
          v35 = &v30[v31];
          v36 = &v32[v31];
          v37 = 8 * v22 - 8 * v31;
          do
          {
            v38 = *v35;
            *v36 = *v35;
            if (v38)
            {
              v39 = (v38 + 8);
            }

            ++v35;
            ++v36;
            v37 -= 8;
          }

          while (v37);
        }
      }

      else
      {
        v24 = *(v19 + 64);
        if (v74)
        {
          v25 = v75;
          v26 = 8 * v74;
          do
          {
            v27 = *v25++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v24++, v27);
            v26 -= 8;
          }

          while (v26);
          v24 = *(v19 + 64);
          v23 = *(v19 + 48);
        }

        if (v22 != v23)
        {
          v28 = &v24[v22];
          v29 = 8 * v23 - 8 * v22;
          do
          {
            if (*v28)
            {

              *v28 = 0;
            }

            ++v28;
            v29 -= 8;
          }

          while (v29);
        }
      }

      *(v19 + 48) = v22;
      v9 = v20;
      v13 = v57;
    }

    re::DynamicArray<float>::DynamicArray(v19 + 72, &v75 + 1);
    re::DynamicArray<float>::DynamicArray(v19 + 112, &v78[12]);
    ++v61;
    ++v62;
    if (*&v78[12])
    {
      if (v81)
      {
        (*(**&v78[12] + 40))();
      }

      v81 = 0;
      v79 = 0uLL;
      *&v78[12] = 0;
      ++v80;
    }

    if (*(&v75 + 1))
    {
      if (*&v78[4])
      {
        (*(**(&v75 + 1) + 40))();
      }

      *&v78[4] = 0;
      v76 = 0uLL;
      *(&v75 + 1) = 0;
      ++v77;
    }

    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v73);
    v14 = v71;
    if (v71 && (BYTE8(v71) & 1) != 0)
    {
      v14 = (*(*v71 + 40))();
    }

    if (v59)
    {
    }

    v15 = ++v16;
  }

  while (v16 < v13);
  v40 = v64;
  if (v9 && a7)
  {
    v8 = a8;
    v12 = a1;
    v41 = a7;
LABEL_49:
    if (v40 < v41)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v63 + 1, v41);
    }

    v42 = 0;
    v43 = 1;
    do
    {
      v44 = *(v9 + 8 * v42);
      *&v71 = v44;
      if (v44)
      {
        v45 = (v44 + 8);
      }

      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v63 + 1, &v71);
      if (v71)
      {
      }

      v42 = v43++;
    }

    while (v42 < v41);
    goto LABEL_68;
  }

  v8 = a8;
  v12 = a1;
  if (v64 < v13)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v63 + 1, v13);
  }

  v46 = 1;
  do
  {
    v71 = xmmword_1E3047670;
    v72 = xmmword_1E3047680;
    v73 = xmmword_1E30476A0;
    v74 = xmmword_1E30474D0;
    LODWORD(v75) = v46 - 1;
    re::make::shared::object<re::ShareableInternal<re::GeomInstance>,re::GeomInstance>(&v71, &v59);
    v47 = *(&v64 + 1);
    if (*(&v64 + 1) >= v64)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(&v63 + 1, *(&v64 + 1) + 1);
      v47 = *(&v64 + 1);
    }

    v48 = v59;
    *(v66 + 8 * v47) = v59;
    if (v48)
    {
      v49 = (v48 + 8);
      ++*(&v64 + 1);
      ++v65;
      if (v59)
      {
      }
    }

    else
    {
      *(&v64 + 1) = v47 + 1;
      ++v65;
    }

    v50 = v46++;
  }

  while (v50 < v13);
LABEL_68:
  if (a4 && a5)
  {
    if (v67 < a5)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(&v66 + 1, a5);
    }

    do
    {
      v51 = *a4;
      *&v71 = v51;
      if (v51)
      {
        v52 = (v51 + 8);
      }

      re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v66 + 1, &v71);
      if (v71)
      {
      }

      ++a4;
      --a5;
    }

    while (a5);
  }

  LODWORD(v71) = 16842752;
  BYTE4(v71) = 1;
  *(&v71 + 5) = 0;
  *(&v71 + 9) = 0;
  *(&v71 + 11) = 65793;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  DWORD1(v74) = 0x7FFFFFFF;
  v76 = 0u;
  v77 = 0;
  *v78 = 0x7FFFFFFFLL;
  if (v8)
  {
    *&v71 = *(v8 + 24);
    *(&v71 + 7) = *(v8 + 31);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(&v72, v8 + 40);
  }

  re::makeMeshAssetDataFromDescriptor(&v60, &v71, v12);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v75);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v72);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v69[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v66 + 8);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v63 + 8);
  return re::DynamicArray<re::ModelWithLodsDescriptor>::deinit(&v60);
}

uint64_t REAssetManagerMeshAssetCreateFromModelsAndSkeletonsWithOptionsNullable(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (v18[0] == 1)
  {
    v10 = re::globalAllocators(MeshAssetDataHelper);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = re::MeshAsset::MeshAsset(v11, &v19);
    v13 = re::MeshAsset::assetType(v12);
    (*(*a1 + 424))(v17, a1, v11, v13, 1, 0, 0);
    v14 = v17[0];
    if (v17[0])
    {
      v15 = (v17[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v17);
  }

  else
  {
    v14 = 0;
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v18);
  return v14;
}

_BYTE *REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (v23[0] == 1)
  {
    v11 = re::globalAllocators(MeshAssetDataHelper);
    v12 = (*(*v11[2] + 32))(v11[2], 1272, 8);
    re::MeshAsset::MeshAsset(v12, &v24);
    v13 = *(a1 + 776);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError_block_invoke;
    v21[3] = &unk_1E8722F50;
    v22[1] = a1;
    v22[2] = v12;
    v14 = v22;
    v22[0] = v9;
    v15 = v9;
    v16 = v21;
  }

  else
  {
    v13 = *(a1 + 776);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError_block_invoke_2;
    block[3] = &unk_1E8722F78;
    v14 = &v20;
    v20 = v9;
    v17 = v9;
    v16 = block;
  }

  dispatch_async(v13, v16);

  return re::Result<re::MeshAssetData,re::DetailedError>::~Result(v23);
}

void __REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError_block_invoke(re::MeshAsset *a1)
{
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = re::MeshAsset::assetType(a1);
  (*(*v2 + 424))(v6, v2, v3, v4, 1, 0, 0);
  if (v6[0])
  {
    v5 = (v6[0] + 8);
  }

  (*(*(a1 + 4) + 16))();
  re::AssetHandle::~AssetHandle(v6);
}

void REAssetManagerMeshAssetCreateFromModelsWithOptionsAsync(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __REAssetManagerMeshAssetCreateFromModelsWithOptionsAsync_block_invoke;
  v11[3] = &unk_1E8722FA0;
  v12 = v9;
  v10 = v9;
  REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError(a1, a2, a3, a4, v11);
}

double REMeshAssetDescriptorCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 192, 8);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2DCB0;
  result = 0.0;
  *(v2 + 168) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 184) = 0;
  *(v2 + 180) = 0x7FFFFFFF;
  return result;
}

uint64_t REMeshAssetDescriptorGetLodCountForModel(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 56) + 152 * a2 + 48);
  }
}

uint64_t REMeshAssetDescriptorAddModel(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v20 = a2;
  if (a2)
  {
    a1 = (a2 + 8);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  re::DynamicString::setCapacity(&v7, 0);
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v19 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  re::DynamicString::operator=(&v7, (a2 + 208));
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v11, &v20);
  v4.n128_f64[0] = re::DynamicArray<re::ModelWithLodsDescriptor>::add((v3 + 24), &v7);
  v5 = *(v3 + 5);
  if (*(&v16 + 1))
  {
    if (v19)
    {
      (*(**(&v16 + 1) + 40))(v4.n128_f64[0]);
    }

    v19 = 0;
    v17 = 0uLL;
    *(&v16 + 1) = 0;
    ++v18;
  }

  if (*(&v13 + 1))
  {
    if (v16)
    {
      (*(**(&v13 + 1) + 40))(v4);
    }

    *&v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v11);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  if (a2)
  {
  }

  return (v5 - 1);
}

uint64_t REMeshAssetDescriptorAddModelWithLods(_DWORD *a1, int a2, uint64_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = a3;
    if (a3)
    {
      LODWORD(v6) = a2;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      re::DynamicString::setCapacity(&v13, 0);
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      v25 = 0;
      v19 = 0u;
      v20 = 0u;
      v21 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      re::DynamicString::operator=(&v13, (*v4 + 208));
      v6 = v6;
      do
      {
        v7 = *v4;
        v12 = v7;
        if (v7)
        {
          v8 = (v7 + 8);
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v17, &v12);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v17, &v12);
        }

        ++v4;
        --v6;
      }

      while (v6);
      v9.n128_f64[0] = re::DynamicArray<re::ModelWithLodsDescriptor>::add((a1 + 6), &v13);
      v10 = a1[10];
      if (*(&v22 + 1))
      {
        if (v25)
        {
          (*(**(&v22 + 1) + 40))(v9.n128_f64[0]);
        }

        v25 = 0;
        v23 = 0uLL;
        *(&v22 + 1) = 0;
        ++v24;
      }

      if (*(&v19 + 1))
      {
        if (v22)
        {
          (*(**(&v19 + 1) + 40))(v9);
        }

        *&v22 = 0;
        v20 = 0uLL;
        *(&v19 + 1) = 0;
        ++v21;
      }

      v3 = (v10 - 1);
      re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v17);
      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))(v13);
      }
    }
  }

  return v3;
}

void *REMeshAssetDescriptorSetScreenCoverageLodTransitionThresholdsForModel(void *result, unsigned int a2, const void *a3)
{
  if (result[5] > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = result[7] + 152 * a2;
    v6 = *(v5 + 48);
    if (v6)
    {
      v8 = (v6 - 1);
      re::DynamicArray<float>::resize(v5 + 112, v8);
      if (v3[5] <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(v3[7] + 152 * v4 + 144);

      return memcpy(v9, a3, 4 * v8);
    }
  }

  return result;
}

void *REMeshAssetDescriptorSetViewDepthLodTransitionThresholdsForModel(void *result, unsigned int a2, const void *a3)
{
  if (result[5] > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = result[7] + 152 * a2;
    v6 = *(v5 + 48);
    if (v6)
    {
      v8 = (v6 - 1);
      re::DynamicArray<float>::resize(v5 + 72, v8);
      if (v3[5] <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(v3[7] + 152 * v4 + 104);

      return memcpy(v9, a3, 4 * v8);
    }
  }

  return result;
}

uint64_t REMeshAssetDescriptorAddInstance(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) <= *(a2 + 96))
  {
    return 0xFFFFFFFFLL;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = a2;
  v5 = (a2 + 8);
  re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((a1 + 64), v7);
  if (v7[0])
  {
  }

  return (*(a1 + 80) - 1);
}

uint64_t REMeshAssetDescriptorAddSkeleton(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 24);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a2 + 24) >> 31) ^ (*(a2 + 24) >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 18), (a2 + 24), (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v15);
  if (HIDWORD(v15[0]) == 0x7FFFFFFF)
  {
    LODWORD(v15[0]) = a1[15];
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 18), v4, v15);
    *&v15[0] = a2;
    v6 = (a2 + 8);
    re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(a1 + 13, v15);
    if (*&v15[0])
    {
    }

    return (*(a1 + 30) - 1);
  }

  else
  {
    v8 = a1[20] + 32 * HIDWORD(v15[0]);
    v9 = (a2 + 8);
    v11 = *(v8 + 24);
    v10 = (v8 + 24);
    v7 = v11;
    if (a1[15] <= v11)
    {
      memset(v15, 0, sizeof(v15));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = a1[17];
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = a2;
    if (v13)
    {

      return *v10;
    }
  }

  return v7;
}

uint64_t REMeshAssetDescriptorGetModel(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v2 = *(a1 + 56) + 152 * a2;
  if (!*(v2 + 48))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return **(v2 + 64);
}

uint64_t REMeshAssetDescriptorGetModelForLodLevel(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 56) + 152 * a2;
  if (*(v3 + 48) <= a3)
  {
    return 0;
  }

  else
  {
    return *(*(v3 + 64) + 8 * a3);
  }
}

uint64_t REMeshAssetDescriptorGetInstance(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 80) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 96) + 8 * a2);
  }
}

uint64_t REMeshAssetDescriptorGetSkeleton(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 120) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 136) + 8 * a2);
  }
}

uint64_t AssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v55[0]) = 16842752;
  BYTE4(v55[0]) = 1;
  *(v55 + 5) = 0;
  *(&v55[1] + 1) = 0;
  *(&v55[1] + 3) = 65793;
  memset(v56, 0, sizeof(v56));
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  DWORD1(v57) = 0x7FFFFFFF;
  v59 = 0;
  v60 = 0x7FFFFFFFLL;
  if (a3)
  {
    v55[0] = *(a3 + 24);
    *(v55 + 7) = *(a3 + 31);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v56, a3 + 40);
  }

  MeshAssetDataFromDescriptor = re::makeMeshAssetDataFromDescriptor((a2 + 24), v55, v51);
  if (v51[0] == 1)
  {
    v50 = 0;
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    if (v53)
    {
      MeshAssetDataFromDescriptor = re::DynamicArray<re::AssetHandle>::setCapacity(v48, v53);
      if (v53)
      {
        v10 = 0;
        v11 = v54;
        v12 = 112 * v53;
        do
        {
          re::StringID::StringID(&v40, v11);
          re::FixedArray<re::StringID>::FixedArray(v41, &v11[1]);
          re::FixedArray<unsigned int>::FixedArray(&v42, &v11[2].var1);
          v13 = re::FixedArray<re::GenericSRT<float>>::FixedArray(&v45, &v11[4]);
          v14 = re::globalAllocators(v13);
          v15 = (*(*v14[2] + 32))(v14[2], 272, 8);
          v16 = re::SkeletonAsset::SkeletonAsset(v15, &v40);
          v38 = 0;
          v39 = 0;
          if (a5)
          {
            v17 = re::DynamicString::format("%s_skeleton%i", &v36, a5, v10);
            if (v36.var1)
            {
              v18 = v37;
            }

            else
            {
              v18 = &v36.var1 + 1;
            }

            v19 = re::SkeletonAsset::assetType(v17);
            (*(*a1 + 440))(&v34, a1, v15, v19, v18, 0, a4, 1);
            v20 = v38;
            v38 = v34;
            v34 = v20;
            v21 = v39;
            v39 = v35;
            v35 = v21;
            re::AssetHandle::~AssetHandle(&v34);
            if (*&v36.var0 && (v36.var1 & 1) != 0)
            {
              (*(**&v36.var0 + 40))();
            }
          }

          else
          {
            v22 = re::SkeletonAsset::assetType(v16);
            if (a4)
            {
              (*(*a1 + 424))(&v36, a1, v15, v22, 0, 0, 1);
            }

            else
            {
              (*(*a1 + 424))(&v36, a1, v15, v22, 0, 0, 0);
            }

            v23 = v38;
            v38 = v36;
            v36 = v23;
            v24 = v39;
            v39 = v37;
            v37 = v24;
            re::AssetHandle::~AssetHandle(&v36);
          }

          re::DynamicArray<re::AssetHandle>::add(v48, &v38);
          re::AssetHandle::~AssetHandle(&v38);
          if (v45)
          {
            if (v46)
            {
              (*(*v45 + 40))();
              v46 = 0;
              v47 = 0;
            }

            v45 = 0;
          }

          if (v42)
          {
            if (v43)
            {
              (*(*v42 + 40))();
              v43 = 0;
              v44 = 0;
            }

            v42 = 0;
          }

          MeshAssetDataFromDescriptor = re::FixedArray<re::StringID>::deinit(v41);
          if (v40)
          {
            if (v40)
            {
            }
          }

          v11 += 7;
          v10 = (v10 + 1);
          v12 -= 112;
        }

        while (v12);
      }
    }

    v25 = re::globalAllocators(MeshAssetDataFromDescriptor);
    v26 = (*(*v25[2] + 32))(v25[2], 1272, 8);
    v27 = re::MeshAsset::MeshAsset(v26, &v52);
    v28 = re::DynamicArray<re::AssetHandle>::operator=(v27 + 264, v48);
    v40 = 0uLL;
    v41[0] = 0;
    if (a5)
    {
      v29 = re::MeshAsset::assetType(v28);
      (*(*a1 + 440))(&v36, a1, v26, v29, a5, 0, a4, 1);
    }

    else
    {
      v31 = re::MeshAsset::assetType(v28);
      if (a4)
      {
        (*(*a1 + 424))(&v36, a1, v26, v31, 0, 0, 1);
      }

      else
      {
        (*(*a1 + 424))(&v36, a1, v26, v31, 0, 0, 0);
      }
    }

    v30 = *&v36.var0;
    v40 = v36;
    v36 = 0;
    v41[0] = v37;
    v37 = 0;
    re::AssetHandle::~AssetHandle(&v36);
    if (v30)
    {
      v32 = (v30 + 8);
    }

    re::AssetHandle::~AssetHandle(&v40);
    re::DynamicArray<re::AssetHandle>::deinit(v48);
  }

  else
  {
    v30 = 0;
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v51);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v58);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v56);
  return v30;
}

uint64_t REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 56);
  v6 = *(a4 + 32);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  if (v7)
  {
    if (v6)
    {
      v8 = *(a4 + 40);
    }

    else
    {
      v8 = a4 + 33;
    }
  }

  else
  {
    v8 = 0;
  }

  return AssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptions(a1, a2, a3, v5, v8);
}

double REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsync(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  LODWORD(v28[0]) = 16842752;
  BYTE4(v28[0]) = 1;
  *(v28 + 5) = 0;
  *(&v28[1] + 1) = 0;
  *(&v28[1] + 3) = 65793;
  memset(v29, 0, sizeof(v29));
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  DWORD1(v30) = 0x7FFFFFFF;
  v32 = 0;
  v33 = 0x7FFFFFFFLL;
  if (a3)
  {
    v28[0] = *(a3 + 24);
    *(v28 + 7) = *(a3 + 31);
    re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v29, a3 + 40);
  }

  re::makeMeshAssetDataFromDescriptor((a2 + 24), v28, v25);
  if (v25[0] == 1)
  {
    v8 = re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v24, v27);
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 1272, 8);
    re::MeshAsset::MeshAsset(v10, &v26);
    v11 = *(a1 + 776);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsync_block_invoke;
    block[3] = &unk_1F5D2DC28;
    v21 = a1;
    v22 = v10;
    v12 = v11;
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v23, v24);
    v20 = v7;
    v13 = v7;
    dispatch_async(v12, block);

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v23);
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v24);
  }

  else
  {
    v14 = *(a1 + 776);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsync_block_invoke_3;
    v17[3] = &unk_1E8722F78;
    v18 = v7;
    v15 = v7;
    dispatch_async(v14, v17);
  }

  re::Result<re::MeshAssetData,re::DetailedError>::~Result(v25);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29);
}

void __REAssetManagerMeshAssetCreateFromMeshAssetDescriptorAndOptionsAsync_block_invoke(re::MeshAsset *a1)
{
  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v4 = re::MeshAsset::assetType(a1);
  (*(*v2 + 424))(v26, v2, v3, v4, 1, 0, 0);
  if (v26[0])
  {
    v5 = (v26[0] + 8);
  }

  v6 = *(a1 + 6);
  v7 = *(a1 + 9);
  if (*(v6 + 272) < v7)
  {
    re::DynamicArray<re::AssetHandle>::setCapacity((v6 + 264), v7);
    v7 = *(a1 + 9);
  }

  if (v7)
  {
    v8 = *(a1 + 11);
    v9 = 112 * v7;
    do
    {
      re::StringID::StringID(&v18, v8);
      re::FixedArray<re::StringID>::FixedArray(v19, &v8[1]);
      re::FixedArray<unsigned int>::FixedArray(&v20, &v8[2].var1);
      v10 = re::FixedArray<re::GenericSRT<float>>::FixedArray(&v23, &v8[4]);
      v11 = re::globalAllocators(v10);
      v12 = (*(*v11[2] + 32))(v11[2], 272, 8);
      v13 = re::SkeletonAsset::SkeletonAsset(v12, &v18);
      v14 = *(a1 + 5);
      v15 = re::SkeletonAsset::assetType(v13);
      (*(*v14 + 424))(v17, v14, v12, v15, 0, 0, 0);
      re::DynamicArray<re::AssetHandle>::add((*(a1 + 6) + 264), v17);
      re::AssetHandle::~AssetHandle(v17);
      if (v23)
      {
        if (v24)
        {
          (*(*v23 + 40))();
          v24 = 0;
          v25 = 0;
        }

        v23 = 0;
      }

      if (v20)
      {
        if (v21)
        {
          (*(*v20 + 40))();
          v21 = 0;
          v22 = 0;
        }

        v20 = 0;
      }

      v16 = re::FixedArray<re::StringID>::deinit(v19);
      if (*&v18.var0)
      {
        if (*&v18.var0)
        {
        }
      }

      v8 += 7;
      v9 -= 112;
    }

    while (v9);
  }

  (*(*(a1 + 4) + 16))();
  re::AssetHandle::~AssetHandle(v26);
}

void *re::Shareable<re::MeshCompileOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DC68;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 5);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::MeshCompileOptions>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DC68;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 5);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *re::Shareable<re::MeshAssetDescriptor>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DCB0;
  v2 = (a1 + 8);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 18);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 13));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::ModelWithLodsDescriptor>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::MeshAssetDescriptor>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2DCB0;
  v2 = (a1 + 8);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 18);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 13));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::ModelWithLodsDescriptor>::deinit((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *REAnchorShadowMarkerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REAnchorShadowMarkerAddToAnchorEntity(uint64_t a1, __n128 a2, __n128 a3)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v5 = result;
  if (!result)
  {
    v5 = re::ecs2::EntityComponentCollection::add((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorShadowMarker,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v10 = a3;
    v11 = a2;
    result = re::ecs2::AnchorShadowMarker::Plane::operator==((v5 + 32), &v10);
    v6 = v11;
    *(v5 + 32) = v10;
    *(v5 + 48) = v6;
    *(v5 + 25) = 1;
  }

  v7 = *(v5 + 112);
  *(v5 + 112) = 1;
  if ((v7 & 1) == 0)
  {
    return re::ecs2::Component::enqueueMarkDirty(v5);
  }

  return result;
}

uint64_t REAnchorShadowMarkerSetPointAndNormal(uint64_t a1, __n128 a2, __n128 a3)
{
  v8 = a3;
  v9 = a2;
  result = re::ecs2::AnchorShadowMarker::Plane::operator==((a1 + 32), &v8);
  if ((result & 1) == 0)
  {
    v7 = v9;
    *(a1 + 32) = v8;
    *(a1 + 48) = v7;
    *(a1 + 25) = 1;
    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v5 = *(a1 + 25);
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  *(a1 + 25) = 1;
  if ((v5 & 1) == 0)
  {
    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

void REAnchorShadowMarkerSetFloorPlane(uint64_t a1, __n128 a2, __n128 a3)
{
  v5 = a3;
  v6 = a2;
  re::ecs2::AnchorShadowMarker::setFloorPlane(a1, &v6, &v5);
  if (v4)
  {

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

uint64_t REAnchorShadowMarkerSetPlaneExists(uint64_t this, int a2)
{
  if (*(this + 25) != a2)
  {
    *(this + 25) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REAudioGeneratorAssetCreateWithRenderBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = re::globalAllocators(v5);
  v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
  *(v7 + 8) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 1117126656;
  *(v7 + 68) = vdup_n_s32(0x62616464u);
  *(v7 + 76) = 1650549860;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *v7 = *a2;
  re::Optional<re::DynamicString>::operator=((v7 + 8), (a2 + 8));
  v8 = _Block_copy(v5);
  if (*(v7 + 56) == 1)
  {
    v9 = *(v7 + 48);
    *(v7 + 48) = v8;
  }

  else
  {
    *(v7 + 48) = v8;
    *(v7 + 56) = 1;
  }

  v10 = re::AudioGeneratorAsset::assetType(v8);
  (*(*a1 + 424))(v14, a1, v7, v10, 0, 0, 0);
  v11 = v14[0];
  if (v14[0])
  {
    v12 = (v14[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v14);

  return v11;
}

uint64_t REAudioGeneratorAssetCreate(re *a1, uint64_t a2, int a3, float a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  *(v9 + 8) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 68) = vdup_n_s32(0x62616464u);
  *(v9 + 76) = 1650549860;
  *(v9 + 96) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *v9 = a3;
  *(v9 + 64) = a4;
  v10 = *(a2 + 16);
  *(v9 + 68) = *a2;
  *(v9 + 84) = v10;
  v11 = re::AudioGeneratorAsset::assetType(v9);
  (*(*a1 + 424))(v15, a1, v9, v11, 0, 0, 0);
  v12 = v15[0];
  if (v15[0])
  {
    v13 = (v15[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v15);
  return v12;
}

uint64_t REAudioGeneratorAssetGetSupportedFileExtensions()
{
  if (qword_1EE1C4CD8 != -1)
  {
    dispatch_once(&qword_1EE1C4CD8, &__block_literal_global_69);
  }

  return _MergedGlobals_590;
}

void __REAudioGeneratorAssetGetSupportedFileExtensions_block_invoke()
{
  _MergedGlobals_590 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v0 = CFStringCreateWithCString(0, "reaudiogenerator", 0x8000100u);
  CFArrayAppendValue(_MergedGlobals_590, v0);

  CFRelease(v0);
}

void REAudioGeneratorAssetSetLayoutTag(uint64_t a1, int a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  if (v10 && (v4 = atomic_load((v10 + 896)), v4 == 2))
  {
    v5 = atomic_load((v10 + 896));
    if (v5 == 2)
    {
      ++*(v10 + 276);
      v6 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(&v9);
      if (v6)
      {
        *v6 = a2;
      }
    }
  }

  else
  {
    v7 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot set layoutTag when asset is not yet loaded.", v8, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v9);
}

uint64_t REAudioGeneratorAssetGetLayoutTag(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  if (v8 && (v2 = atomic_load((v8 + 896)), v2 == 2))
  {
    v3 = *re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(&v7);
  }

  else
  {
    v4 = *re::audioLogObjects(v1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot get layoutTag when asset is not yet loaded.", v6, 2u);
    }

    v3 = 4294901760;
  }

  re::AssetHandle::~AssetHandle(&v7);
  return v3;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(re::AudioGeneratorAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::AudioGeneratorAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

void REAudioGeneratorAssetSetComponentDescription(uint64_t a1, __int128 *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v11);
  if (v12 && (v4 = atomic_load(v12 + 224), v4 == 2))
  {
    v5 = atomic_load(v12 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v11);
      ++*(v12 + 69);
      v6 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(&v11);
      if (v6)
      {
        v7 = *a2;
        *(v6 + 84) = *(a2 + 4);
        *(v6 + 68) = v7;
        v8 = v12;
        *(v12 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v8);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v12);
      }
    }
  }

  else
  {
    v9 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot set component description when asset is not yet loaded.", v10, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v11);
}

void REAudioGeneratorAssetGetComponentDescription(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v8);
  if (v9 && (v4 = atomic_load((v9 + 896)), v4 == 2))
  {
    v5 = re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(&v8);
    *a2 = *(v5 + 68);
    *(a2 + 16) = *(v5 + 84);
  }

  else
  {
    v6 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot get component description when asset is not yet loaded.", v7, 2u);
    }

    *a2 = xmmword_1E3094140;
    *(a2 + 16) = 0;
  }

  re::AssetHandle::~AssetHandle(&v8);
}

void REAudioGeneratorAssetSetReferenceLevel(uint64_t a1, float a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v10);
  if (v11 && (v4 = atomic_load(v11 + 224), v4 == 2))
  {
    v5 = atomic_load(v11 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v10);
      ++*(v11 + 69);
      v6 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(&v10);
      if (v6)
      {
        *(v6 + 64) = a2;
        v7 = v11;
        *(v11 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v11);
      }
    }
  }

  else
  {
    v8 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot set reference level when asset is not yet loaded.", v9, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

float REAudioGeneratorAssetGetReferenceLevel(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  if (v8 && (v2 = atomic_load((v8 + 896)), v2 == 2))
  {
    v3 = *(re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(&v7) + 64);
  }

  else
  {
    v4 = *re::audioLogObjects(v1);
    v3 = 0.0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot get reference level when asset is not yet loaded.", v6, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
  return v3;
}

CFTypeRef REAudioGeneratorAssetGetType(re::AudioGeneratorAsset *a1)
{
  v1 = re::AudioGeneratorAsset::assetType(a1);
  v2 = CFStringCreateWithCString(0, *v1, 0x8000100u);

  return CFAutorelease(v2);
}

void REAudioGeneratorAssetSetMissedPlayStrategy(uint64_t a1, char a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v10);
  if (v11 && (v4 = atomic_load(v11 + 224), v4 == 2))
  {
    v5 = atomic_load(v11 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v10);
      ++*(v11 + 69);
      v6 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(&v10);
      if (v6)
      {
        *(v6 + 88) = a2;
        v7 = v11;
        *(v11 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v11);
      }
    }
  }

  else
  {
    v8 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot set input mode when asset is not yet loaded.", v9, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

uint64_t REAudioGeneratorAssetGetMissedPlayStrategy(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(v3) + 88);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

void REAudioGeneratorAssetSetMaximumAlignmentLatency(uint64_t a1, double a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v10);
  if (v11 && (v4 = atomic_load(v11 + 224), v4 == 2))
  {
    v5 = atomic_load(v11 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v10);
      ++*(v11 + 69);
      v6 = re::AssetHandle::loadedAsset<re::AudioGeneratorAsset>(&v10);
      if (v6)
      {
        *(v6 + 96) = a2;
        v7 = v11;
        *(v11 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v11);
      }
    }
  }

  else
  {
    v8 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[CoreRE] [REAudioGeneratorAsset] Cannot set input mode when asset is not yet loaded.", v9, 2u);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

double REAudioGeneratorAssetGetMaximumAlignmentLatency(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::AudioGeneratorAsset>(v3) + 96);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

void *RERenderOptionsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REEntityIsVisible(re::ecs2::RenderOptionsComponent *this, const re::ecs2::Entity *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v6 = this;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  if (!*(v7 + 3))
  {
    goto LABEL_13;
  }

  v8 = this;
  do
  {
    v9 = v8;
    v8 = *(v8 + 4);
  }

  while (v8);
  if (!*(*(v9 + 3) + 56))
  {
    goto LABEL_13;
  }

  v10 = this;
  do
  {
    v11 = v10;
    v10 = *(v10 + 4);
  }

  while (v10);
  v12 = (*(**(*(v11 + 3) + 56) + 32))(*(*(v11 + 3) + 56));
  v13 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(v12);
  if (v13)
  {
    v14 = v13;
    v15 = this;
    do
    {
      v16 = v15;
      v15 = *(v15 + 4);
    }

    while (v15);
    (*(**(*(v16 + 3) + 56) + 248))(*(*(v16 + 3) + 56));
    v18 = (*(*v14 + 16))(v14);
    return *re::ecs2::RenderOptions::forEntity(&v18, this);
  }

  else
  {
LABEL_13:

    return re::ecs2::RenderOptionsComponent::calculateVisibilityAgainstHierarchy(this, a2, a3, a4, a5);
  }
}

uint64_t RERenderOptionsComponentOverrideEnableCullingTo(uint64_t this, char a2, char a3)
{
  *(this + 49) = a3;
  if ((*(this + 38) & 1) == 0)
  {
    *(this + 38) = 1;
  }

  *(this + 39) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetEnableCullingOverride(uint64_t this)
{
  *(this + 49) = 0;
  if (*(this + 38) == 1)
  {
    *(this + 38) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetEnableCullingOverride(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[38];
  if (result == 1)
  {
    *a2 = a1[39];
    if (a3)
    {
      *a3 = a1[49];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideDoubleSidedTo(uint64_t this, char a2, char a3)
{
  *(this + 33) = a3;
  if ((*(this + 26) & 1) == 0)
  {
    *(this + 26) = 1;
  }

  *(this + 27) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetDoubleSidedOverride(uint64_t this)
{
  *(this + 33) = 0;
  if (*(this + 26) == 1)
  {
    *(this + 26) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetDoubleSidedOverride(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[26];
  if (result == 1)
  {
    *a2 = a1[27];
    if (a3)
    {
      *a3 = a1[33];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideCastsShadowsTo(uint64_t this, char a2, char a3)
{
  *(this + 50) = a3;
  if ((*(this + 40) & 1) == 0)
  {
    *(this + 40) = 1;
  }

  *(this + 41) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetCastsShadowsOverride(uint64_t this)
{
  *(this + 50) = 0;
  if (*(this + 40) == 1)
  {
    *(this + 40) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetCastsShadowsOverride(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[40];
  if (result == 1)
  {
    *a2 = a1[41];
    if (a3)
    {
      *a3 = a1[50];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideWindingOrderTo(uint64_t this, int a2, char a3)
{
  *(this + 34) = a3;
  if ((*(this + 28) & 1) == 0)
  {
    *(this + 28) = 1;
  }

  *(this + 29) = a2 != 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetWindingOrderOverride(uint64_t this)
{
  *(this + 34) = 0;
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetWindingOrderOverride(unsigned __int8 *a1, BOOL *a2, _BYTE *a3)
{
  result = a1[28];
  if (result == 1)
  {
    *a2 = a1[29] != 0;
    if (a3)
    {
      *a3 = a1[34];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideWindingOrderToReverse(uint64_t this, char a2, char a3)
{
  *(this + 34) = a3;
  *(this + 32) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetOverrideWindingOrderToReverse(uint64_t this)
{
  *(this + 34) = 0;
  *(this + 32) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetOverrideWindingOrderToReverse(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a2 = *(a1 + 32);
  if (a3)
  {
    *a3 = *(a1 + 34);
  }

  return 1;
}

uint64_t RERenderOptionsComponentOverrideTechniqueQualityLevelBiasTo(uint64_t this, __int16 a2, char a3)
{
  *(this + 52) = a3;
  if ((*(this + 44) & 1) == 0)
  {
    *(this + 44) = 1;
  }

  *(this + 46) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetTechniqueQualityLevelBiasOverride(uint64_t this)
{
  *(this + 52) = 0;
  if (*(this + 44) == 1)
  {
    *(this + 44) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetTechniqueQualityLevelBiasOverride(uint64_t a1, _WORD *a2, _BYTE *a3)
{
  result = *(a1 + 44);
  if (result == 1)
  {
    *a2 = *(a1 + 46);
    if (a3)
    {
      *a3 = *(a1 + 52);
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideEnablePortalCrossingTo(uint64_t this, char a2, char a3)
{
  *(this + 51) = a3;
  if ((*(this + 42) & 1) == 0)
  {
    *(this + 42) = 1;
  }

  *(this + 43) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentUnsetEnablePortalCrossingOverride(uint64_t this)
{
  *(this + 51) = 0;
  if (*(this + 42) == 1)
  {
    *(this + 42) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetEnablePortalCrossingOverride(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[42];
  if (result == 1)
  {
    *a2 = a1[43];
    if (a3)
    {
      *a3 = a1[51];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideOccupancyBehavior(uint64_t this, char a2, char a3)
{
  *(this + 35) = a3;
  if ((*(this + 30) & 1) == 0)
  {
    *(this + 30) = 1;
  }

  *(this + 31) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetOccupancyBehavior(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[30];
  if (result == 1)
  {
    *a2 = a1[31];
    if (a3)
    {
      *a3 = a1[35];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentOverrideMeshAttributes(uint64_t this, char a2, char a3)
{
  *(this + 35) = a3;
  if ((*(this + 30) & 1) == 0)
  {
    *(this + 30) = 1;
  }

  *(this + 31) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetMeshAttributes(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  result = a1[30];
  if (result == 1)
  {
    *a2 = a1[31];
    if (a3)
    {
      *a3 = a1[35];
    }
  }

  return result;
}

uint64_t RERenderOptionsComponentSetCullingEnabled(uint64_t this, char a2, char a3)
{
  *(this + 49) = a3;
  if ((*(this + 38) & 1) == 0)
  {
    *(this + 38) = 1;
  }

  *(this + 39) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderOptionsComponentGetCullingEnabled(uint64_t a1)
{
  v1 = *(a1 + 38);
  if (v1 == 1)
  {
    v2 = *(a1 + 39);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1 | ((v1 & 1) == 0);
}

uint64_t RERenderOptionsComponentGetCullingInherited(uint64_t a1)
{
  if (*(a1 + 38) == 1)
  {
    v1 = *(a1 + 49);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void RECustomMaterialInstanceCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 24, 8);
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2DD18;
}

void CustomMaterial::~CustomMaterial(CustomMaterial *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *REImageBasedReflectionContentComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void RECameraViewDescriptorsComponentSetEnvironmentRasterizationRateMap(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, void *a3, unsigned int a4)
{
  v7 = a3;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      goto LABEL_7;
    }

    v12 = v7;
    v11 = v7;
    v10 = (ViewDescriptor + 264);
  }

  else
  {
    v12 = v7;
    v9 = v7;
    v10 = (ViewDescriptor + 256);
  }

  NS::SharedPtr<MTL::Texture>::operator=(v10, &v12);
  if (v12)
  {
  }

LABEL_7:
  re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t RECameraViewDescriptorsComponentSetControllerMaskTexture(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 textureType] != 3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v5 = "Texture must be a 2D array. Please file a radar if you need provide left/right masks via separate textures.";
    v6 = buf;
    goto LABEL_28;
  }

  if ([v3 arrayLength] >= 3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = 0;
    v5 = "Texture may have at most 2 layers.";
    v6 = &v13;
    goto LABEL_28;
  }

  if ([v3 pixelFormat] != 13)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 0;
    v5 = "Texture pixel format must be 'MTLPixelFormatR8Uint'.";
    v6 = &v12;
    goto LABEL_28;
  }

  if (([v3 usage] & 2) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = 0;
    v5 = "Texture does not have 'MTLTextureUsageShaderWrite' flag set.";
    v6 = &v11;
    goto LABEL_28;
  }

  if ([v3 storageMode])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v10 = 0;
    v5 = "Texture does not have 'MTLStorageModeShared' flag set.";
    v6 = &v10;
    goto LABEL_28;
  }

  if (![v3 compressionType])
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v5 = "Texture must not be compressed. Lossy or otherwise.";
    v6 = &v9;
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
  }

LABEL_10:

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t (***RECameraViewDescriptorsComponentPostEncodeCallback(re::ecs2::CameraViewDescriptorsComponent *a1, re::ecs2::CameraViewDescriptorsComponent *a2, void *a3))(void)
{
  v5 = a3;
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(a1, a2);
  v7 = _Block_copy(v5);

  result = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable((ViewDescriptor + 41));
  ViewDescriptor[41] = &unk_1F5D2DD60;
  ViewDescriptor[42] = v7;
  ViewDescriptor[45] = ViewDescriptor + 41;
  return result;
}

void re::internal::Callable<RECameraViewDescriptorsComponentPostEncodeCallback::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<RECameraViewDescriptorsComponentPostEncodeCallback::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2DD60;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<RECameraViewDescriptorsComponentPostEncodeCallback::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a2 = &unk_1F5D2DD60;
  a2[1] = v2;
  return a2;
}

void *RERenderGraphFileProviderArrayComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RERenderGraphFileProviderArrayComponentAdd(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v10);
  re::AssetHandle::AssetHandle(v9, v10);
  v7 = re::ecs2::RenderGraphFileProviderArrayComponent::add(a1, v9, a3, a4);
  re::AssetHandle::~AssetHandle(v9);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v10);
  return v7;
}

uint64_t RERenderGraphFileProviderArrayComponentRemove(uint64_t this, uint64_t a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    v3 = (*(this + 72) + 72);
    v4 = 80 * v2;
    while (*(v3 - 1) != a2)
    {
      v3 += 80;
      v4 -= 80;
      if (!v4)
      {
        return re::ecs2::Component::enqueueMarkDirty(this);
      }
    }

    *v3 = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t RERenderGraphFileProviderArrayComponentRemoveAll(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = 0;
    v3 = 80 * v1 - 80;
    v4 = *(this + 72);
    v5 = vdupq_n_s64(v3 / 0x50);
    v6 = (v3 / 0x50 + 16) & 0x7FFFFFFFFFFFFF0;
    do
    {
      v7 = vdupq_n_s64(v2);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
      {
        v4[72] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
      {
        v4[152] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E3049640)))), *&v5).i8[2])
      {
        v4[232] = 1;
        v4[312] = 1;
      }

      v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E3049660)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
      {
        v4[392] = 1;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
      {
        v4[472] = 1;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E305F210))))).i8[6])
      {
        v4[552] = 1;
        v4[632] = 1;
      }

      v10 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E30903F0)));
      if (vuzp1_s8(vuzp1_s16(v10, *v5.i8), *v5.i8).u8[0])
      {
        v4[712] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v5), *&v5).i8[1])
      {
        v4[792] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E30903E0)))), *&v5).i8[2])
      {
        v4[872] = 1;
        v4[952] = 1;
      }

      v11 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E30903D0)));
      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i32[1])
      {
        v4[1032] = 1;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(v11, *&v5)).i8[5])
      {
        v4[1112] = 1;
      }

      if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1E30903C0))))).i8[6])
      {
        v4[1192] = 1;
        v4[1272] = 1;
      }

      v2 += 16;
      v4 += 1280;
    }

    while (v6 != v2);
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

void RERenderGraphFileProviderArrayComponentSetRenderGraph(uint64_t a1, unint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a3, v6);
  re::AssetHandle::AssetHandle(v5, v6);
  re::ecs2::RenderGraphFileProviderArrayComponent::setRenderGraph(a1, a2, v5);
  re::AssetHandle::~AssetHandle(v5);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v6);
}

unint64_t RERenderGraphFileProviderArrayComponentGetRenderGraph(re::ecs2::RenderGraphFileProviderArrayComponent *a1, unint64_t a2)
{
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t RERenderGraphFileProviderArrayComponentSetTypeScope(re::ecs2::RenderGraphFileProviderArrayComponent *a1, unint64_t a2, const char *a3)
{
  re::ecs2::RenderGraphFileProviderArrayComponent::setTypeScope(a1, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

unint64_t RERenderGraphFileProviderArrayComponentGetTypeScope(re::ecs2::RenderGraphFileProviderArrayComponent *a1, unint64_t a2)
{
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E696AEC0];
    if (*(v3 + 32))
    {
      v5 = *(v3 + 40);
    }

    else
    {
      v5 = v3 + 33;
    }

    return [v4 stringWithUTF8String:v5];
  }

  return result;
}

uint64_t RERenderGraphFileProviderArrayComponentSetOrder(re::ecs2::RenderGraphFileProviderArrayComponent *a1, unint64_t a2, int a3)
{
  re::ecs2::RenderGraphFileProviderArrayComponent::setOrder(a1, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

unint64_t RERenderGraphFileProviderArrayComponentGetOrder(re::ecs2::RenderGraphFileProviderArrayComponent *a1, unint64_t a2)
{
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(a1, a2);
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t RESceneAddRenderGraphFileProviderArray(uint64_t a1)
{
  v12[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v12, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v2 = SceneDataEntity;
  v3 = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4 = *(SceneDataEntity + 49);
  if (!*(SceneDataEntity + 49))
  {
    goto LABEL_7;
  }

  v5 = (re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
  v6 = *(SceneDataEntity + 13);
  v7 = vld1q_dup_s16(v5);
  v8 = 1;
  while (1)
  {
    v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
    v9.i16[0] = vmaxvq_u16(v9);
    if (v9.i32[0])
    {
      break;
    }

    v8 -= 8;
    ++v6;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  if (v9.u16[0] - v8 >= *(SceneDataEntity + 48))
  {
LABEL_7:
    re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v3 = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  v10 = re::ecs2::EntityComponentCollection::get((v2 + 48), v3);
  *(v10 + 80) = 1;

  return re::ecs2::Component::enqueueMarkDirty(v10);
}

void RESceneRemoveRenderGraphFileProviderArray(uint64_t a1)
{
  v4[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v4, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  if (SceneDataEntity)
  {
    v2 = re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    v3 = (SceneDataEntity + 48);

    re::ecs2::EntityComponentCollection::remove(v3, v2);
  }
}

void RESceneRenderGraphFileProviderArrayMarkDirty(uint64_t a1)
{
  v6[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v6, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  if (SceneDataEntity)
  {
    v2 = SceneDataEntity;
    v3 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 27);
      if (v5)
      {

        re::ecs2::NetworkComponent::markDirty(v5, v4);
      }
    }
  }
}

uint64_t RESceneRenderGraphFileProviderArrayAdd(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  LOBYTE(v12[0]) = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v12, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v8 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, v12);
  re::AssetHandle::AssetHandle(v11, v12);
  v9 = re::ecs2::RenderGraphFileProviderArrayComponent::add(v8, v11, a3, a4);
  re::AssetHandle::~AssetHandle(v11);
  re::ecs2::Component::enqueueMarkDirty(v8);
  re::AssetHandle::~AssetHandle(v12);
  return v9;
}

uint64_t RESceneRenderGraphFileProviderArrayRemove(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v9, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = (*(v4 + 72) + 72);
    v7 = 80 * v5;
    while (*(v6 - 1) != a2)
    {
      v6 += 80;
      v7 -= 80;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    *v6 = 1;
  }

LABEL_7:

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t RESceneRenderGraphFileProviderArrayRemoveAll(uint64_t a1)
{
  v16[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v16, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v2 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = 0;
    v5 = 80 * v3 - 80;
    v6 = *(v2 + 72);
    v7 = v5;
    v8 = (v5 / 0x50 + 16) & 0x7FFFFFFFFFFFFF0;
    v9 = vdupq_n_s64(v7 / 0x50);
    do
    {
      v10 = vdupq_n_s64(v4);
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v11, *v9.i8), *v9.i8).u8[0])
      {
        v6[72] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v9), *&v9).i8[1])
      {
        v6[152] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E3049640)))), *&v9).i8[2])
      {
        v6[232] = 1;
        v6[312] = 1;
      }

      v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E3049660)));
      if (vuzp1_s8(*&v9, vuzp1_s16(v12, *&v9)).i32[1])
      {
        v6[392] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v12, *&v9)).i8[5])
      {
        v6[472] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E305F210))))).i8[6])
      {
        v6[552] = 1;
        v6[632] = 1;
      }

      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E30903F0)));
      if (vuzp1_s8(vuzp1_s16(v13, *v9.i8), *v9.i8).u8[0])
      {
        v6[712] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v13, *&v9), *&v9).i8[1])
      {
        v6[792] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E30903E0)))), *&v9).i8[2])
      {
        v6[872] = 1;
        v6[952] = 1;
      }

      v14 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E30903D0)));
      if (vuzp1_s8(*&v9, vuzp1_s16(v14, *&v9)).i32[1])
      {
        v6[1032] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v14, *&v9)).i8[5])
      {
        v6[1112] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_1E30903C0))))).i8[6])
      {
        v6[1192] = 1;
        v6[1272] = 1;
      }

      v4 += 16;
      v6 += 1280;
    }

    while (v8 != v4);
  }

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

void RESceneRenderGraphFileProviderArraySetRenderGraph(uint64_t a1, unint64_t a2, uint64_t a3)
{
  LOBYTE(v8[0]) = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v8, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v6 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a3, v8);
  re::AssetHandle::AssetHandle(v7, v8);
  re::ecs2::RenderGraphFileProviderArrayComponent::setRenderGraph(v6, a2, v7);
  re::AssetHandle::~AssetHandle(v7);
  re::ecs2::Component::enqueueMarkDirty(v6);
  re::AssetHandle::~AssetHandle(v8);
}

unint64_t RESceneRenderGraphFileProviderArrayGetRenderGraph(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v6, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(v4, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t RESceneRenderGraphFileProviderArraySetTypeScope(uint64_t a1, unint64_t a2, const char *a3)
{
  v8[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v8, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v6 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::RenderGraphFileProviderArrayComponent::setTypeScope(v6, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(v6);
}

unint64_t RESceneRenderGraphFileProviderArrayGetTypeScope(uint64_t a1, unint64_t a2)
{
  v9[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v9, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(v4, a2);
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E696AEC0];
    if (*(v6 + 32))
    {
      v8 = *(v6 + 40);
    }

    else
    {
      v8 = v6 + 33;
    }

    return [v7 stringWithUTF8String:v8];
  }

  return result;
}

uint64_t RESceneRenderGraphFileProviderArraySetOrder(uint64_t a1, unint64_t a2, int a3)
{
  v8[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v8, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v6 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::RenderGraphFileProviderArrayComponent::setOrder(v6, a2, a3);

  return re::ecs2::Component::enqueueMarkDirty(v6);
}

unint64_t RESceneRenderGraphFileProviderArrayGetOrder(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v6, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v4 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  result = re::ecs2::RenderGraphFileProviderArrayComponent::entry(v4, a2);
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

re::MaterialParameterBlock *REMaterialAssetCreateMaterialParameterBlock(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  if (!v8[1])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "REMaterialAssetCreateMaterialParameterBlock was called with a NULL material handle. This will crash in the future.", buf, 2u);
    }
  }

  *buf = a2;
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(buf, &v6);
  v4 = v6;
  re::AssetHandle::~AssetHandle(v8);
  return v4;
}

void REMaterialAssetSetBool(uint64_t a1, const char *a2, char a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setBool(*(v5 + 1784), a2, a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetBool(uint64_t a1, char *a2, BOOL *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v28);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v28);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v25);
    if ((BYTE4(v26) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 2))
    {
      *a3 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v25);
    }

    else
    {
      v7 = *(v6 + 1776);
      if (a2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[1];
          if (v9)
          {
            v10 = (a2 + 2);
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }

          v8 &= ~0x8000000000000000;
        }
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = v8;
      re::MaterialParameterTable::handle((v7 + 304), &v21, &v22);
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v21 = 0;
      if ((BYTE4(v23) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v25, 2))
      {
        v13 = *(*(v6 + 1776) + 16);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        if (a2)
        {
          v15 = *a2;
          if (*a2)
          {
            v16 = a2[1];
            if (v16)
            {
              v17 = (a2 + 2);
              do
              {
                v15 = 31 * v15 + v16;
                v18 = *v17++;
                v16 = v18;
              }

              while (v18);
            }

            v15 &= ~0x8000000000000000;
          }
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = v15;
        re::MaterialParameterTable::handle((v13 + 248), &v20, &v22);
        v25 = v22;
        v27 = v24;
        v26 = v23;
        v20 = 0;
        if ((BYTE4(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 2))
        {
          *a3 = re::MaterialParameterTable::BOOLValue(v13 + 248, &v25);
          v12 = 1;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v12 = 0;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *a3 = re::MaterialParameterTable::BOOLValue(*(v6 + 1776) + 304, &v25);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v28);
  return v12;
}

void REMaterialAssetSetFloat(uint64_t a1, const char *a2, float a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setFloat(*(v5 + 1784), a2, a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void REMaterialAssetLoadedSetFloat(uint64_t a1, const char *a2, float a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setFloat(*(v5 + 1784), a2, a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetFloat(uint64_t a1, char *a2, float *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v29);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v26);
    if ((BYTE4(v27) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 1))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v26);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v22, &v23);
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v22 = 0;
      if ((BYTE4(v24) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v26, 1))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v21, &v23);
        v26 = v23;
        v28 = v25;
        v27 = v24;
        v21 = 0;
        if ((BYTE4(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 1))
        {
          *a3 = re::MaterialParameterTable::floatValue(v14 + 248, &v26);
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v7 = re::MaterialParameterTable::floatValue(*(v6 + 1776) + 304, &v26);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v29);
  return v13;
}

void REMaterialAssetSetInt(uint64_t a1, const char *a2, int a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setInt(*(v5 + 1784), a2, a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetInt(uint64_t a1, char *a2, _DWORD *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v28);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v28);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v25);
    if ((BYTE4(v26) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 3))
    {
      *a3 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v25);
    }

    else
    {
      v7 = *(v6 + 1776);
      if (a2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[1];
          if (v9)
          {
            v10 = (a2 + 2);
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }

          v8 &= ~0x8000000000000000;
        }
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = v8;
      re::MaterialParameterTable::handle((v7 + 304), &v21, &v22);
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v21 = 0;
      if ((BYTE4(v23) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v25, 3))
      {
        v13 = *(*(v6 + 1776) + 16);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        if (a2)
        {
          v15 = *a2;
          if (*a2)
          {
            v16 = a2[1];
            if (v16)
            {
              v17 = (a2 + 2);
              do
              {
                v15 = 31 * v15 + v16;
                v18 = *v17++;
                v16 = v18;
              }

              while (v18);
            }

            v15 &= ~0x8000000000000000;
          }
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = v15;
        re::MaterialParameterTable::handle((v13 + 248), &v20, &v22);
        v25 = v22;
        v27 = v24;
        v26 = v23;
        v20 = 0;
        if ((BYTE4(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 3))
        {
          *a3 = re::MaterialParameterTable::intValue(v13 + 248, &v25);
          v12 = 1;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v12 = 0;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *a3 = re::MaterialParameterTable::intValue(*(v6 + 1776) + 304, &v25);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v28);
  return v12;
}

void REMaterialAssetSetUInt(uint64_t a1, const char *a2, int a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setUint(*(v5 + 1784), a2, a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetUInt(uint64_t a1, char *a2, _DWORD *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v28);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v28);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v25);
    if ((BYTE4(v26) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 7))
    {
      *a3 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v25);
    }

    else
    {
      v7 = *(v6 + 1776);
      if (a2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[1];
          if (v9)
          {
            v10 = (a2 + 2);
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }

          v8 &= ~0x8000000000000000;
        }
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = v8;
      re::MaterialParameterTable::handle((v7 + 304), &v21, &v22);
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v21 = 0;
      if ((BYTE4(v23) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v25, 7))
      {
        v13 = *(*(v6 + 1776) + 16);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        if (a2)
        {
          v15 = *a2;
          if (*a2)
          {
            v16 = a2[1];
            if (v16)
            {
              v17 = (a2 + 2);
              do
              {
                v15 = 31 * v15 + v16;
                v18 = *v17++;
                v16 = v18;
              }

              while (v18);
            }

            v15 &= ~0x8000000000000000;
          }
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = v15;
        re::MaterialParameterTable::handle((v13 + 248), &v20, &v22);
        v25 = v22;
        v27 = v24;
        v26 = v23;
        v20 = 0;
        if ((BYTE4(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 7))
        {
          *a3 = re::MaterialParameterTable::intValue(v13 + 248, &v25);
          v12 = 1;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v12 = 0;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *a3 = re::MaterialParameterTable::intValue(*(v6 + 1776) + 304, &v25);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v28);
  return v12;
}

void REMaterialAssetSetFloat2F(uint64_t a1, char *a2, double a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setVector2F(*(v5 + 1784), a2, *&a3, v6);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetFloat2F(uint64_t a1, char *a2, uint64_t *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v28);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v28);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v25);
    if ((BYTE4(v26) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 32))
    {
      *a3 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v25);
    }

    else
    {
      v7 = *(v6 + 1776);
      if (a2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[1];
          if (v9)
          {
            v10 = (a2 + 2);
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }

          v8 &= ~0x8000000000000000;
        }
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = v8;
      re::MaterialParameterTable::handle((v7 + 304), &v21, &v22);
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v21 = 0;
      if ((BYTE4(v23) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v25, 32))
      {
        v13 = *(*(v6 + 1776) + 16);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        if (a2)
        {
          v15 = *a2;
          if (*a2)
          {
            v16 = a2[1];
            if (v16)
            {
              v17 = (a2 + 2);
              do
              {
                v15 = 31 * v15 + v16;
                v18 = *v17++;
                v16 = v18;
              }

              while (v18);
            }

            v15 &= ~0x8000000000000000;
          }
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = v15;
        re::MaterialParameterTable::handle((v13 + 248), &v20, &v22);
        v25 = v22;
        v27 = v24;
        v26 = v23;
        v20 = 0;
        if ((BYTE4(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 32))
        {
          *a3 = re::MaterialParameterTable::vector2FValue(v13 + 248, &v25);
          v12 = 1;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v12 = 0;
          if (!v13)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *a3 = re::MaterialParameterTable::vector2FValue(*(v6 + 1776) + 304, &v25);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v28);
  return v12;
}

void REMaterialAssetSetInt2(uint64_t a1, char *a2, double a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setInt2(*(v5 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetInt2(uint64_t a1, char *a2, double *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v29);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v26);
    if ((BYTE4(v27) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 4))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v26);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v22, &v23);
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v22 = 0;
      if ((BYTE4(v24) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v26, 4))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v21, &v23);
        v26 = v23;
        v28 = v25;
        v27 = v24;
        v21 = 0;
        if ((BYTE4(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 4))
        {
          *a3 = re::MaterialParameterTable::int2Value(v14 + 248, &v26);
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v7 = re::MaterialParameterTable::int2Value(*(v6 + 1776) + 304, &v26);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v29);
  return v13;
}

void REMaterialAssetSetUInt2(uint64_t a1, char *a2, double a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v5)
  {
    re::MaterialParameterBlock::setUint2(*(v5 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetUInt2(uint64_t a1, char *a2, double *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v29);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v26);
    if ((BYTE4(v27) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 8))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v26);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v22, &v23);
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v22 = 0;
      if ((BYTE4(v24) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v26, 8))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v21, &v23);
        v26 = v23;
        v28 = v25;
        v27 = v24;
        v21 = 0;
        if ((BYTE4(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 8))
        {
          *a3 = re::MaterialParameterTable::int2Value(v14 + 248, &v26);
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v7 = re::MaterialParameterTable::int2Value(*(v6 + 1776) + 304, &v26);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v29);
  return v13;
}

void REMaterialAssetSetFloat3F(uint64_t a1, const re::MaterialAsset *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v12);
  ++*(v13 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v12);
  if (v4)
  {
    v6 = v4;
    v8 = *(v6 + 223);
    if (v7)
    {
      re::MaterialParameterBlock::setColorGamut3F(v8, a2, a3.n128_u32[0] | (a3.n128_u32[1] << 32), a3.n128_u32[2], v11);
      v11[0] = 0;
    }

    else
    {
      re::MaterialParameterBlock::setVector3F(v8, a2, a3.n128_i64[0], a3.n128_i64[1], v10);
      v10[0] = 0;
    }
  }

  re::AssetHandle::~AssetHandle(&v12);
}

uint64_t anonymous namespace::warnIfColorParameter(_anonymous_namespace_ *this, const re::MaterialAsset *a2, const char *a3, const char *a4, const char *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(v13, (this + 40));
  v9 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v13);
  if ((re::MaterialDefinitionAsset::getOriginalConstantParameterType(v9, a2) & 0xFE) == 0x14)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((re::MaterialAsset::getOriginalConstantParameterType(this, a2) & 0xFE) != 0x14)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
LABEL_10:
    *buf = 136315394;
    v15 = a3;
    v16 = 2080;
    v17 = a4;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "%s was called for a Color parameter. To get the right color space context for the color value, %s should be used instead.", buf, 0x16u);
  }

LABEL_11:

  v11 = 1;
LABEL_13:
  re::AssetHandle::~AssetHandle(v13);
  return v11;
}

uint64_t REMaterialAssetGetFloat3F(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v51);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v51);
  v7 = v5;
  if (v5)
  {
    re::MaterialParameterBlock::handle(*(v7 + 1784), a2, &v48);
    if ((BYTE4(v49) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v48, 33))
    {
      if (v8)
      {
        v45 = re::MaterialParameterBlock::colorGamut3FValue(*(v7 + 1784), &v48);
        LODWORD(v46) = v9;
        BYTE4(v46) = v10;
        goto LABEL_44;
      }

      *a3 = *re::ShaderGraphMaterial::getConstant(*(v7 + 1784), &v48);
LABEL_37:
      v7 = 1;
      goto LABEL_46;
    }

    v11 = *(v7 + 1776);
    if (a2)
    {
      v12 = *a2;
      if (*a2)
      {
        v13 = a2[1];
        if (v13)
        {
          v14 = a2 + 2;
          do
          {
            v12 = 31 * v12 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        v12 &= ~0x8000000000000000;
      }
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v44 = v12;
    re::MaterialParameterTable::handle((v11 + 304), &v44, &v45);
    v48 = v45;
    v49 = v46;
    v50 = v47;
    v44 = 0;
    if ((BYTE4(v46) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v48, 33))
    {
      if (v8)
      {
        re::MaterialAsset::tryGetOriginalColorGamut3FParameterValue(v7, a2, &v45);
        if (v45 == 1)
        {
          v7 = 1;
          v16 = (&v45 + 4);
LABEL_45:
          *&v33 = re::ColorGamut3F::as(v16, 0, 1);
          DWORD2(v33) = v34;
          *a3 = v33;
          goto LABEL_46;
        }

        re::MaterialParameterTable::vector3FValue(*(v7 + 1776) + 304, &v48);
        *a3 = v30;
        *(a3 + 8) = v31;
        v32 = *(v7 + 1784);
        if (v32)
        {
          v32 = *(v32 + 968);
          if (v32)
          {
            v32 = *(v32 + 160);
            if (v32)
            {
              LOBYTE(v32) = *v32;
            }
          }
        }

        v45 = v30;
        LODWORD(v46) = v31;
        BYTE4(v46) = v32;
LABEL_44:
        v7 = 1;
        v16 = &v45;
        goto LABEL_45;
      }

      re::MaterialParameterTable::vector3FValue(*(v7 + 1776) + 304, &v48);
      *a3 = v26;
      *(a3 + 8) = v27;
      goto LABEL_37;
    }

    v17 = *(*(v7 + 1776) + 16);
    if (v17)
    {
      v18 = (v17 + 8);
    }

    if (a2)
    {
      v19 = *a2;
      if (*a2)
      {
        v20 = a2[1];
        if (v20)
        {
          v21 = a2 + 2;
          do
          {
            v19 = 31 * v19 + v20;
            v22 = *v21++;
            v20 = v22;
          }

          while (v22);
        }

        v19 &= ~0x8000000000000000;
      }
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v43 = v19;
    re::MaterialParameterTable::handle((v17 + 248), &v43, &v45);
    v48 = v45;
    v50 = v47;
    v49 = v46;
    v43 = 0;
    if ((BYTE4(v46) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v48, 33))
    {
      if (v8)
      {
        re::AssetHandle::AssetHandle(&v45, (v7 + 40));
        v23 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(&v45);
        re::MaterialDefinitionAsset::tryGetOriginalColorGamut3FParameterValue(v23, a2, v41);
        if (v41[0] == 1)
        {
          v7 = 1;
          *&v24 = re::ColorGamut3F::as(&v42, 0, 1);
          DWORD2(v24) = v25;
          *a3 = v24;
          re::AssetHandle::~AssetHandle(&v45);
        }

        else
        {
          re::AssetHandle::~AssetHandle(&v45);
          re::MaterialParameterTable::vector3FValue(v17 + 248, &v48);
          *a3 = v36;
          *(a3 + 8) = v37;
          v38 = *(v7 + 1784);
          if (v38)
          {
            v38 = *(v38 + 968);
            if (v38)
            {
              v38 = *(v38 + 160);
              if (v38)
              {
                LOBYTE(v38) = *v38;
              }
            }
          }

          v45 = v36;
          LODWORD(v46) = v37;
          BYTE4(v46) = v38;
          v7 = 1;
          *&v39 = re::ColorGamut3F::as(&v45, 0, 1);
          DWORD2(v39) = v40;
          *a3 = v39;
        }
      }

      else
      {
        re::MaterialParameterTable::vector3FValue(v17 + 248, &v48);
        *a3 = v28;
        *(a3 + 8) = v29;
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v17)
    {
    }
  }

LABEL_46:
  re::AssetHandle::~AssetHandle(v51);
  return v7;
}

void REMaterialAssetSetColor3F(uint64_t a1, char *a2, uint64_t a3, __n128 a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  ++*(v10 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v9);
  if (v6)
  {
    re::MaterialParameterBlock::setColorGamut3F(*(v6 + 1784), a2, a4.n128_u32[0] | (a4.n128_u32[1] << 32), a4.n128_u32[2] | (a3 << 32), v8);
    v8[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

uint64_t REMaterialAssetGetColor3F(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v42);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v42);
  if (v7)
  {
    v8 = v7;
    re::MaterialParameterBlock::handle(*(v7 + 1784), a2, &v39);
    if ((BYTE4(v40) & 7) != 0)
    {
      if (re::MaterialParameterHandle::isParameterType(&v39, 20))
      {
        *&v9 = re::MaterialParameterBlock::colorGamut3FValue(v8[223], &v39);
        DWORD2(v9) = v10;
        *a3 = v9;
        *a4 = v11;
LABEL_21:
        v12 = 1;
        goto LABEL_22;
      }

      if (re::MaterialParameterHandle::isParameterType(&v39, 33))
      {
        *a3 = *re::ShaderGraphMaterial::getConstant(v8[223], &v39);
LABEL_20:
        *a4 = 0;
        goto LABEL_21;
      }
    }

    re::MaterialAsset::tryGetOriginalColorGamut3FParameterValue(v8, a2, v37);
    if (v37[0] == 1)
    {
      v13 = BYTE12(v38);
      *a3 = v38;
      *a4 = v13;
      goto LABEL_21;
    }

    v14 = v8[222];
    if (a2)
    {
      v15 = *a2;
      if (*a2)
      {
        v16 = a2[1];
        if (v16)
        {
          v17 = (a2 + 2);
          do
          {
            v15 = 31 * v15 + v16;
            v18 = *v17++;
            v16 = v18;
          }

          while (v18);
        }

        v15 &= ~0x8000000000000000;
      }
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v34 = v15;
    re::MaterialParameterTable::handle((v14 + 304), &v34, v35);
    v39 = v35[0];
    v40 = *&v35[1];
    v41 = v36;
    v34 = 0;
    if ((v35[1] & 0x700000000) != 0 && re::MaterialParameterHandle::isParameterType(&v39, 33))
    {
      re::MaterialParameterTable::vector3FValue(v8[222] + 304, &v39);
      *a3 = v19;
      *(a3 + 8) = v20;
      goto LABEL_20;
    }

    re::AssetHandle::AssetHandle(v33, (v8 + 5));
    v22 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v33);
    re::MaterialDefinitionAsset::tryGetOriginalColorGamut3FParameterValue(v22, a2, v35);
    if (LOBYTE(v35[0]) == 1)
    {
      v38 = *(v35 + 4);
      v23 = v35[2];
      *a3 = *(v35 + 4);
      *a4 = v23;
      v12 = 1;
    }

    else
    {
      v24 = *(v8[222] + 16);
      if (v24)
      {
        v25 = (v24 + 8);
      }

      if (a2)
      {
        v26 = *a2;
        if (*a2)
        {
          v27 = a2[1];
          if (v27)
          {
            v28 = (a2 + 2);
            do
            {
              v26 = 31 * v26 + v27;
              v29 = *v28++;
              v27 = v29;
            }

            while (v29);
          }

          v26 &= ~0x8000000000000000;
        }
      }

      else
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v32 = v26;
      re::MaterialParameterTable::handle((v24 + 248), &v32, v35);
      v39 = v35[0];
      v41 = v36;
      v40 = *&v35[1];
      v32 = 0;
      if ((v35[1] & 0x700000000) != 0 && re::MaterialParameterHandle::isParameterType(&v39, 33))
      {
        re::MaterialParameterTable::vector3FValue(v24 + 248, &v39);
        *a3 = v30;
        *(a3 + 8) = v31;
        *a4 = 0;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      if (v24)
      {
      }
    }

    re::AssetHandle::~AssetHandle(v33);
  }

  else
  {
    v12 = 0;
  }

LABEL_22:
  re::AssetHandle::~AssetHandle(v42);
  return v12;
}

void REMaterialAssetSetInt3(uint64_t a1, char *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v4)
  {
    re::MaterialParameterBlock::setInt3(*(v4 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetInt3(uint64_t a1, char *a2, _OWORD *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v30);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v30);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v27);
    if ((BYTE4(v28) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 5))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v27);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v23, &v24);
      v27 = v24;
      v28 = v25;
      v29 = v26;
      v23 = 0;
      if ((BYTE4(v25) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v27, 5))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v22 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v22, &v24);
        v27 = v24;
        v29 = v26;
        v28 = v25;
        v22 = 0;
        if ((BYTE4(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 5))
        {
          *&v20 = re::MaterialParameterTable::int3Value(v14 + 248, &v27);
          *a3 = v20;
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *&v7 = re::MaterialParameterTable::int3Value(*(v6 + 1776) + 304, &v27);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v30);
  return v13;
}

void REMaterialAssetSetUInt3(uint64_t a1, char *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v4)
  {
    re::MaterialParameterBlock::setUint3(*(v4 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetUInt3(uint64_t a1, char *a2, _OWORD *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v30);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v30);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v27);
    if ((BYTE4(v28) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 9))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v27);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v23, &v24);
      v27 = v24;
      v28 = v25;
      v29 = v26;
      v23 = 0;
      if ((BYTE4(v25) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v27, 9))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v22 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v22, &v24);
        v27 = v24;
        v29 = v26;
        v28 = v25;
        v22 = 0;
        if ((BYTE4(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 9))
        {
          *&v20 = re::MaterialParameterTable::int3Value(v14 + 248, &v27);
          *a3 = v20;
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *&v7 = re::MaterialParameterTable::int3Value(*(v6 + 1776) + 304, &v27);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v30);
  return v13;
}

void REMaterialAssetSetFloat4F(uint64_t a1, const re::MaterialAsset *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v14);
  ++*(v15 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v14);
  if (v4)
  {
    v6 = v4;
    v8 = *(v6 + 223);
    if (v7)
    {
      v11 = a3;
      v12 = 0;
      re::MaterialParameterBlock::setColorGamut4F(v8, a2, &v11, v13);
      v13[0] = 0;
    }

    else
    {
      re::MaterialParameterBlock::setVector4F(v8, a2, a3.n128_i64[0], a3.n128_i64[1], v10);
      v10[0] = 0;
    }
  }

  re::AssetHandle::~AssetHandle(&v14);
}

uint64_t REMaterialAssetGetFloat4F(uint64_t a1, unsigned __int8 *a2, float32x4_t *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v63);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v63);
  if (v5)
  {
    v7 = v5;
    re::MaterialParameterBlock::handle(*(v7 + 223), a2, &v60);
    if ((BYTE4(v61) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v60, 34))
    {
      if (v8)
      {
        re::MaterialParameterBlock::colorGamut4FValue(*(v7 + 223), &v60, v57);
        if (!v57[16])
        {
          v11 = *v57;
          goto LABEL_60;
        }

        re::ColorHelpers::computeGamutTransformMatrix(v57[16], 0, v64);
        v9 = *&v57[12];
        v10 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v64, *v57), *&v64[16], *&v57[4]), v65, *&v57[8]);
        v10.i32[3] = 0;
        v11 = vmaxnmq_f32(v10, 0);
LABEL_21:
        v11.i32[3] = v9;
LABEL_60:
        *a3 = v11;
        goto LABEL_61;
      }

      Constant = re::ShaderGraphMaterial::getConstant(*(v7 + 223), &v60);
      v29 = Constant[1];
      a3->i64[0] = *Constant;
      a3->i64[1] = v29;
      goto LABEL_61;
    }

    v12 = *(v7 + 222);
    if (a2)
    {
      v13 = *a2;
      if (*a2)
      {
        v14 = a2[1];
        if (v14)
        {
          v15 = a2 + 2;
          do
          {
            v13 = 31 * v13 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v13 &= ~0x8000000000000000;
      }
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v59 = v13;
    re::MaterialParameterTable::handle((v12 + 304), &v59, v64);
    v59 = 0;
    v60 = *v64;
    v61 = *&v64[8];
    v62 = v64[24];
    if ((v64[12] & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v60, 34))
    {
      if (v8)
      {
        re::MaterialAsset::tryGetOriginalColorGamut4FParameterValue(v7, a2, v57);
        if (v57[0] != 1)
        {
          v32 = re::MaterialParameterTable::vector4FValue(*(v7 + 222) + 304, &v60);
          a3->i64[0] = v32;
          *&a3->u32[2] = v33;
          v34 = *(v7 + 223);
          if (v34 && (v35 = *(v34 + 968)) != 0 && (v36 = *(v35 + 160)) != 0)
          {
            v37 = *v36;
          }

          else
          {
            v37 = 0;
          }

          v38.i64[0] = v32;
          *&v38.u32[2] = vzip1_s32(v33, HIDWORD(*&v33));
          if (v37)
          {
            v51 = v38;
            re::ColorHelpers::computeGamutTransformMatrix(v37, 0, v64);
            v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v64, v51.f32[0]), *&v64[16], *v51.f32, 1), v65, v51, 2);
            v39.i32[3] = 0;
            v40 = vmaxnmq_f32(v39, 0);
            v40.i32[3] = v51.i32[3];
            v38 = v40;
          }

          *a3 = v38;
          goto LABEL_61;
        }

        if (!v58)
        {
          v11 = *&v57[4];
          goto LABEL_60;
        }

        re::ColorHelpers::computeGamutTransformMatrix(v58, 0, v64);
        v9 = *&v57[16];
        v18 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v64, *&v57[4]), *&v64[16], *&v57[8]), v65, *&v57[12]);
        v18.i32[3] = 0;
        v11 = vmaxnmq_f32(v18, 0);
        goto LABEL_21;
      }

      a3->i64[0] = re::MaterialParameterTable::vector4FValue(*(v7 + 222) + 304, &v60);
      a3->i64[1] = v30;
LABEL_61:
      v17 = 1;
      goto LABEL_66;
    }

    v19 = *(*(v7 + 222) + 16);
    if (v19)
    {
      v20 = (v19 + 8);
    }

    if (a2)
    {
      v21 = *a2;
      if (*a2)
      {
        v22 = a2[1];
        if (v22)
        {
          v23 = a2 + 2;
          do
          {
            v21 = 31 * v21 + v22;
            v24 = *v23++;
            v22 = v24;
          }

          while (v24);
        }

        v21 &= ~0x8000000000000000;
      }
    }

    else
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v56 = v21;
    re::MaterialParameterTable::handle((v19 + 248), &v56, v64);
    v60 = *v64;
    v62 = v64[24];
    v61 = *&v64[8];
    v56 = 0;
    if ((v64[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v60, 34))
    {
      v17 = 0;
      if (!v19)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (v8)
    {
      re::AssetHandle::AssetHandle(v57, (v7 + 40));
      v25 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v57);
      re::MaterialDefinitionAsset::tryGetOriginalColorGamut4FParameterValue(v25, a2, v53);
      if (v53[0] == 1)
      {
        if (v55)
        {
          re::ColorHelpers::computeGamutTransformMatrix(v55, 0, v64);
          v26 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v64, v54.f32[0]), *&v64[16], v54.f32[1]), v65, v54.f32[2]);
          v26.i32[3] = 0;
          v27 = vmaxnmq_f32(v26, 0);
          v27.i32[3] = v54.i32[3];
        }

        else
        {
          v27 = v54;
        }

        *a3 = v27;
        re::AssetHandle::~AssetHandle(v57);
      }

      else
      {
        re::AssetHandle::~AssetHandle(v57);
        v41 = re::MaterialParameterTable::vector4FValue(v19 + 248, &v60);
        a3->i64[0] = v41;
        *&a3->u32[2] = v42;
        v43 = *(v7 + 223);
        if (v43 && (v44 = *(v43 + 968)) != 0 && (v45 = *(v44 + 160)) != 0)
        {
          v46 = *v45;
        }

        else
        {
          v46 = 0;
        }

        v47.i64[0] = v41;
        *&v47.u32[2] = vzip1_s32(v42, HIDWORD(*&v42));
        if (v46)
        {
          v52 = v47;
          re::ColorHelpers::computeGamutTransformMatrix(v46, 0, v64);
          v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v64, v52.f32[0]), *&v64[16], *v52.f32, 1), v65, v52, 2);
          v48.i32[3] = 0;
          v49 = vmaxnmq_f32(v48, 0);
          v49.i32[3] = v52.i32[3];
          v47 = v49;
        }

        *a3 = v47;
      }
    }

    else
    {
      a3->i64[0] = re::MaterialParameterTable::vector4FValue(v19 + 248, &v60);
      a3->i64[1] = v31;
    }

    v17 = 1;
    if (v19)
    {
LABEL_65:
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_66:
  re::AssetHandle::~AssetHandle(v63);
  return v17;
}

void REMaterialAssetSetColor4F(uint64_t a1, char *a2, char a3, __n128 a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v12);
  ++*(v13 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v12);
  if (v6)
  {
    v7 = *(v6 + 1784);
    v9 = a4;
    v10 = a3;
    re::MaterialParameterBlock::setColorGamut4F(v7, a2, &v9, v11);
    v11[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v12);
}

uint64_t REMaterialAssetGetColor4F(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v40);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v40);
  if (v7)
  {
    v8 = v7;
    re::MaterialParameterBlock::handle(*(v7 + 1784), a2, &v37);
    if ((BYTE4(v38) & 7) != 0)
    {
      if (re::MaterialParameterHandle::isParameterType(&v37, 21))
      {
        re::MaterialParameterBlock::colorGamut4FValue(v8[223], &v37, v32);
        *a3 = *v32;
        v9 = v32[16];
LABEL_10:
        *a4 = v9;
LABEL_22:
        v10 = 1;
        goto LABEL_23;
      }

      if (re::MaterialParameterHandle::isParameterType(&v37, 34))
      {
        Constant = re::ShaderGraphMaterial::getConstant(v8[223], &v37);
        v12 = Constant[1];
        *a3 = *Constant;
        *(a3 + 8) = v12;
LABEL_21:
        *a4 = 0;
        goto LABEL_22;
      }
    }

    re::MaterialAsset::tryGetOriginalColorGamut4FParameterValue(v8, a2, v34);
    if (v34[0] == 1)
    {
      v9 = v36;
      *a3 = v35;
      goto LABEL_10;
    }

    v13 = v8[222];
    if (a2)
    {
      v14 = *a2;
      if (*a2)
      {
        v15 = a2[1];
        if (v15)
        {
          v16 = (a2 + 2);
          do
          {
            v14 = 31 * v14 + v15;
            v17 = *v16++;
            v15 = v17;
          }

          while (v17);
        }

        v14 &= ~0x8000000000000000;
      }
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v31 = v14;
    re::MaterialParameterTable::handle((v13 + 304), &v31, v32);
    v37 = *v32;
    v38 = *&v32[8];
    v39 = v33;
    v31 = 0;
    if ((v32[12] & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v37, 34))
    {
      *a3 = re::MaterialParameterTable::vector4FValue(v8[222] + 304, &v37);
      *(a3 + 8) = v18;
      goto LABEL_21;
    }

    re::AssetHandle::AssetHandle(v30, (v8 + 5));
    v20 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v30);
    re::MaterialDefinitionAsset::tryGetOriginalColorGamut4FParameterValue(v20, a2, v32);
    if (v32[0] == 1)
    {
      v35 = *&v32[4];
      v21 = v32[20];
      v36 = *&v32[20];
      *a3 = *&v32[4];
      *a4 = v21;
      v10 = 1;
    }

    else
    {
      v22 = *(v8[222] + 16);
      if (v22)
      {
        v23 = (v22 + 8);
      }

      if (a2)
      {
        v24 = *a2;
        if (*a2)
        {
          v25 = a2[1];
          if (v25)
          {
            v26 = (a2 + 2);
            do
            {
              v24 = 31 * v24 + v25;
              v27 = *v26++;
              v25 = v27;
            }

            while (v27);
          }

          v24 &= ~0x8000000000000000;
        }
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v29 = v24;
      re::MaterialParameterTable::handle((v22 + 248), &v29, v32);
      v37 = *v32;
      v39 = v33;
      v38 = *&v32[8];
      v29 = 0;
      if ((v32[12] & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v37, 34))
      {
        *a3 = re::MaterialParameterTable::vector4FValue(v22 + 248, &v37);
        *(a3 + 8) = v28;
        *a4 = 0;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (v22)
      {
      }
    }

    re::AssetHandle::~AssetHandle(v30);
  }

  else
  {
    v10 = 0;
  }

LABEL_23:
  re::AssetHandle::~AssetHandle(v40);
  return v10;
}

void REMaterialAssetSetInt4(uint64_t a1, char *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v4)
  {
    re::MaterialParameterBlock::setInt4(*(v4 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetInt4(uint64_t a1, char *a2, __n128 *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v29);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v26);
    if ((BYTE4(v27) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 6))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v26);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v22, &v23);
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v22 = 0;
      if ((BYTE4(v24) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v26, 6))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v21, &v23);
        v26 = v23;
        v28 = v25;
        v27 = v24;
        v21 = 0;
        if ((BYTE4(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 6))
        {
          *a3 = re::MaterialParameterTable::int4Value(v14 + 248, &v26);
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v7 = re::MaterialParameterTable::int4Value(*(v6 + 1776) + 304, &v26);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v29);
  return v13;
}

void REMaterialAssetSetUInt4(uint64_t a1, char *a2, __n128 a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  ++*(v8 + 276);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v7);
  if (v4)
  {
    re::MaterialParameterBlock::setUint4(*(v4 + 1784), a2, v6, a3);
    v6[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

uint64_t REMaterialAssetGetUInt4(uint64_t a1, char *a2, __n128 *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v29);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v29);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v26);
    if ((BYTE4(v27) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 10))
    {
      v7 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v26);
    }

    else
    {
      v8 = *(v6 + 1776);
      if (a2)
      {
        v9 = *a2;
        if (*a2)
        {
          v10 = a2[1];
          if (v10)
          {
            v11 = (a2 + 2);
            do
            {
              v9 = 31 * v9 + v10;
              v12 = *v11++;
              v10 = v12;
            }

            while (v12);
          }

          v9 &= ~0x8000000000000000;
        }
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v22 = v9;
      re::MaterialParameterTable::handle((v8 + 304), &v22, &v23);
      v26 = v23;
      v27 = v24;
      v28 = v25;
      v22 = 0;
      if ((BYTE4(v24) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v26, 10))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v21, &v23);
        v26 = v23;
        v28 = v25;
        v27 = v24;
        v21 = 0;
        if ((BYTE4(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v26, 10))
        {
          *a3 = re::MaterialParameterTable::int4Value(v14 + 248, &v26);
          v13 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v7 = re::MaterialParameterTable::int4Value(*(v6 + 1776) + 304, &v26);
    }

    *a3 = v7;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v29);
  return v13;
}

void REMaterialAssetSetFloat2x2F(uint64_t a1, char *a2, double a3, double a4)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  ++*(v10 + 276);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v9);
  if (v7)
  {
    re::MaterialParameterBlock::setMatrix2x2F(*(v7 + 1784), a2, *&a3, *&a4, v8);
    v8[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

uint64_t REMaterialAssetGetFloat2x2F(uint64_t a1, char *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v30);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v30);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v27);
    if ((BYTE4(v28) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 48))
    {
      *a3 = *re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v27);
    }

    else
    {
      v7 = *(v6 + 1776);
      if (a2)
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = a2[1];
          if (v9)
          {
            v10 = (a2 + 2);
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }

          v8 &= ~0x8000000000000000;
        }
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v8;
      re::MaterialParameterTable::handle((v7 + 304), &v23, &v24);
      v27 = v24;
      v28 = v25;
      v29 = v26;
      v23 = 0;
      if ((BYTE4(v25) & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v27, 48))
      {
        v14 = *(*(v6 + 1776) + 16);
        if (v14)
        {
          v15 = (v14 + 8);
        }

        if (a2)
        {
          v16 = *a2;
          if (*a2)
          {
            v17 = a2[1];
            if (v17)
            {
              v18 = (a2 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }

            v16 &= ~0x8000000000000000;
          }
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v22 = v16;
        re::MaterialParameterTable::handle((v14 + 248), &v22, &v24);
        v27 = v24;
        v29 = v26;
        v28 = v25;
        v22 = 0;
        if ((BYTE4(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v27, 48))
        {
          *a3 = re::MaterialParameterTable::vector4FValue(v14 + 248, &v27);
          *(a3 + 8) = v20;
          v12 = 1;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v12 = 0;
          if (!v14)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      *a3 = re::MaterialParameterTable::vector4FValue(*(v6 + 1776) + 304, &v27);
      *(a3 + 8) = v13;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v30);
  return v12;
}

void REMaterialAssetSetFloat3x3F(uint64_t a1, char *a2, __n128 a3, __n128 a4, __n128 a5)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v13);
  ++*(v14 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v13);
  if (v6)
  {
    v7 = *(v6 + 1784);
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a5;
    re::MaterialParameterBlock::setMatrix3x3F(v7, a2, v11, v12);
    v12[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v13);
}

uint64_t REMaterialAssetGetFloat3x3F(uint64_t a1, char *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v46);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v46);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v43);
    if ((BYTE4(v44) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v43, 49))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v43);
      v8 = *(Constant + 8);
      v9 = *(Constant + 24);
      v10 = *(Constant + 16);
      v11 = *(Constant + 40);
      v12 = *(Constant + 32);
      *a3 = *Constant;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v12;
      *(a3 + 40) = v11;
    }

    else
    {
      v13 = *(v6 + 1776);
      if (a2)
      {
        v14 = *a2;
        if (*a2)
        {
          v15 = a2[1];
          if (v15)
          {
            v16 = (a2 + 2);
            do
            {
              v14 = 31 * v14 + v15;
              v17 = *v16++;
              v15 = v17;
            }

            while (v17);
          }

          v14 &= ~0x8000000000000000;
        }
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = v14;
      re::MaterialParameterTable::handle((v13 + 304), &v42, &v39);
      v42 = 0;
      v43 = v39;
      v44 = *v40;
      v45 = v40[16];
      if ((v40[4] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v43, 49))
      {
        v25 = *(*(v6 + 1776) + 16);
        if (v25)
        {
          v26 = (v25 + 8);
        }

        if (a2)
        {
          v27 = *a2;
          if (*a2)
          {
            v28 = a2[1];
            if (v28)
            {
              v29 = (a2 + 2);
              do
              {
                v27 = 31 * v27 + v28;
                v30 = *v29++;
                v28 = v30;
              }

              while (v30);
            }

            v27 &= ~0x8000000000000000;
          }
        }

        else
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v38 = v27;
        re::MaterialParameterTable::handle((v25 + 248), &v38, &v39);
        v43 = v39;
        v45 = v40[16];
        v44 = *v40;
        v38 = 0;
        if ((v40[4] & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v43, 49))
        {
          re::MaterialParameterTable::matrix3x3FValue(v25 + 248, &v43, &v39, v31, v32, v33);
          v34 = v39;
          v35 = *&v40[8];
          v36 = v41;
          *(a3 + 8) = *v40;
          *a3 = v34;
          *(a3 + 24) = DWORD2(v35);
          *(a3 + 16) = v35;
          *(a3 + 40) = DWORD2(v36);
          *(a3 + 32) = v36;
          v18 = 1;
          if (!v25)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v18 = 0;
          if (!v25)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      re::MaterialParameterTable::matrix3x3FValue(*(v6 + 1776) + 304, &v43, &v39, v19, v20, v21);
      v22 = v39;
      v23 = *&v40[8];
      v24 = v41;
      *(a3 + 8) = *v40;
      *a3 = v22;
      *(a3 + 24) = DWORD2(v23);
      *(a3 + 16) = v23;
      *(a3 + 40) = DWORD2(v24);
      *(a3 + 32) = v24;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v46);
  return v18;
}

void REMaterialAssetSetFloat4x4F(uint64_t a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v15);
  ++*(v16 + 276);
  v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v15);
  if (v7)
  {
    v8 = *(v7 + 1784);
    v13[0] = a3;
    v13[1] = a4;
    v13[2] = a5;
    v13[3] = a6;
    re::MaterialParameterBlock::setMatrix4x4F(v8, a2, v13, v14);
    v14[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v15);
}

uint64_t REMaterialAssetGetFloat4x4F(uint64_t a1, char *a2, _OWORD *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v36);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v36);
  if (v5)
  {
    v6 = v5;
    re::MaterialParameterBlock::handle(*(v5 + 1784), a2, &v33);
    if ((BYTE4(v34) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v33, 50))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v6 + 1784), &v33);
      v8 = *Constant;
      v9 = Constant[1];
      v10 = Constant[2];
      v11 = Constant[3];
    }

    else
    {
      v12 = *(v6 + 1776);
      if (a2)
      {
        v13 = *a2;
        if (*a2)
        {
          v14 = a2[1];
          if (v14)
          {
            v15 = (a2 + 2);
            do
            {
              v13 = 31 * v13 + v14;
              v16 = *v15++;
              v14 = v16;
            }

            while (v16);
          }

          v13 &= ~0x8000000000000000;
        }
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v32 = v13;
      re::MaterialParameterTable::handle((v12 + 304), &v32, v29);
      v32 = 0;
      v33 = *v29;
      v34 = *&v29[8];
      v35 = v29[24];
      if ((v29[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(&v33, 50))
      {
        v18 = *(*(v6 + 1776) + 16);
        if (v18)
        {
          v19 = (v18 + 8);
        }

        if (a2)
        {
          v20 = *a2;
          if (*a2)
          {
            v21 = a2[1];
            if (v21)
            {
              v22 = (a2 + 2);
              do
              {
                v20 = 31 * v20 + v21;
                v23 = *v22++;
                v21 = v23;
              }

              while (v23);
            }

            v20 &= ~0x8000000000000000;
          }
        }

        else
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v28 = v20;
        re::MaterialParameterTable::handle((v18 + 248), &v28, v29);
        v33 = *v29;
        v35 = v29[24];
        v34 = *&v29[8];
        v28 = 0;
        if ((v29[12] & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v33, 50))
        {
          re::MaterialParameterTable::matrix4x4FValue(v18 + 248, &v33, v29);
          v24 = *&v29[16];
          v25 = v30;
          v26 = v31;
          *a3 = *v29;
          a3[1] = v24;
          a3[2] = v25;
          a3[3] = v26;
          v17 = 1;
          if (!v18)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v17 = 0;
          if (!v18)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      re::MaterialParameterTable::matrix4x4FValue(*(v6 + 1776) + 304, &v33, v29);
      v8 = *v29;
      v9 = *&v29[16];
      v10 = v30;
      v11 = v31;
    }

    *a3 = v8;
    a3[1] = v9;
    a3[2] = v10;
    a3[3] = v11;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_32:
  re::AssetHandle::~AssetHandle(v36);
  return v17;
}

void REMaterialAssetSetTextureFromAsset(uint64_t a1, const char *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v11);
  re::AssetAPIHelper::assetHandleCreate(a3, v10);
  v5 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v10);
  if (v5)
  {
    v6 = v5;
    ++*(v12 + 276);
    v7 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v11);
    if (v7)
    {
      v8 = *(v7 + 1784);
      if (v8)
      {
        re::MaterialParameterBlock::setTextureHandle(v8, a2, (v6 + 8), v9);
        v9[0] = 0;
      }
    }
  }

  re::AssetHandle::~AssetHandle(v10);
  re::AssetHandle::~AssetHandle(&v11);
}

void REMaterialAssetSetTexture(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, &v13);
  ++*(v14 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v13);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 1784);
    v11 = v5;
    v9 = v5;
    re::TextureManager::registerTexture(*(*(v8 + 968) + 56), &v11, v12);
    if (v11)
    {
    }

    re::MaterialParameterBlock::setTextureHandle(*(v7 + 1784), a2, v12, v10);
    v10[0] = 0;
    re::TextureHandle::invalidate(v12);
  }

  re::AssetHandle::~AssetHandle(&v13);
}

void REMaterialAssetClearParameter(uint64_t a1, const char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v4);
  ++*(v5 + 276);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v4);
  if (v3)
  {
    re::MaterialParameterBlock::removeParameter(*(v3 + 1784), a2);
  }

  re::AssetHandle::~AssetHandle(&v4);
}

id REMaterialAssetGetMTLTexture(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v39);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v39);
  if (!v3 || (v4 = v3, (v5 = *(v3 + 1784)) == 0))
  {
    v9 = 0;
    goto LABEL_40;
  }

  re::MaterialParameterBlock::handle(v5, a2, &v36);
  v6 = BYTE4(v37[0]);
  if ((v37[0] & 0x700000000) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v36, 64);
    if ((v6 & 0x10) == 0 && isParameterType)
    {
      re::MaterialParameterBlock::textureHandleValue(*(v4 + 1784), &v36, &v32);
      re::TextureHandle::unsynchronizedMetalTexture(&v32, &v35);
      v8 = v35;
      v9 = v8;
      if (v8)
      {
      }

      re::TextureHandle::invalidate(&v32);
      goto LABEL_40;
    }
  }

  v10 = *(v4 + 1776);
  if (a2)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = a2[1];
      if (v12)
      {
        v13 = (a2 + 2);
        do
        {
          v11 = 31 * v11 + v12;
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }

      v11 &= ~0x8000000000000000;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v31 = v11;
  re::MaterialParameterTable::handle((v10 + 304), &v31, &v32);
  v36 = v32;
  *v37 = v33;
  v38 = v34;
  v31 = 0;
  v15 = BYTE4(v33);
  if ((BYTE4(v33) & 7) != 0)
  {
    v16 = re::MaterialParameterHandle::isParameterType(&v36, 64);
    if ((v15 & 0x10) == 0 && v16)
    {
      v17 = re::TextureHandleTable::textureHandleAt((*(v4 + 1776) + 984), LOWORD(v37[0]));
      re::TextureHandle::unsynchronizedMetalTexture(v17, &v32);
      v18 = v32;
      v9 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  v19 = *(*(v4 + 1776) + 16);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  if (a2)
  {
    v21 = *a2;
    if (*a2)
    {
      v22 = a2[1];
      if (v22)
      {
        v23 = (a2 + 2);
        do
        {
          v21 = 31 * v21 + v22;
          v24 = *v23++;
          v22 = v24;
        }

        while (v24);
      }

      v21 &= ~0x8000000000000000;
    }
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v30 = v21;
  re::MaterialParameterTable::handle((v19 + 248), &v30, &v32);
  v36 = v32;
  v38 = v34;
  *v37 = v33;
  v30 = 0;
  v25 = BYTE4(v33);
  if ((BYTE4(v33) & 7) != 0)
  {
    v26 = re::MaterialParameterHandle::isParameterType(&v36, 64);
    v9 = 0;
    if ((v25 & 0x10) == 0 && v26)
    {
      v27 = re::TextureHandleTable::textureHandleAt((v19 + 928), LOWORD(v37[0]));
      re::TextureHandle::unsynchronizedMetalTexture(v27, &v32);
      v28 = v32;
      v9 = v28;
      if (v28)
      {
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v19)
  {
    v18 = (v19 + 8);
LABEL_39:
  }

LABEL_40:
  re::AssetHandle::~AssetHandle(v39);

  return v9;
}

uint64_t REMaterialAssetGetTextureAsset(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v21);
  v4 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v21);
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = REMaterialAssetGetMTLTexture(a1, a2);
  v6 = v5;

  if (!v5)
  {
    v4 = 0;
LABEL_25:
    re::AssetHandle::~AssetHandle(v21);
    return v4;
  }

  v8 = *(v4 + 1944);
  if (!v8)
  {
LABEL_22:
    v4 = 0;
LABEL_23:

    goto LABEL_25;
  }

  v9 = *(v4 + 1960);
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 1);
    if (!v12)
    {
      v7 = re::TextureAsset::assetType(v7);
      goto LABEL_18;
    }

    v13 = *(v12 + 280);
    v7 = re::TextureAsset::assetType(v7);
    if (v13 != v7)
    {
      goto LABEL_18;
    }

    v7 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v11);
    if (!v7)
    {
      goto LABEL_18;
    }

    v14 = v7;
    if (*(v7 + 120))
    {
      break;
    }

    if (*(v7 + 112) == v5)
    {
      goto LABEL_26;
    }

    re::TextureHandle::unsynchronizedMetalTexture((v7 + 8), &v20);
    v15 = v20;
    if (v20 == v5)
    {
      v16 = 1;
      if (v20)
      {
        goto LABEL_14;
      }
    }

    else
    {
      re::TextureHandle::unsynchronizedMetalTexture((v14 + 96), &v19);
      v7 = v19;
      v16 = v19 == v5;
      if (v19)
      {
      }

      if (v15)
      {
LABEL_14:
      }
    }

    if (v16)
    {
LABEL_26:
      v4 = *v11;
      goto LABEL_23;
    }

LABEL_18:
    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  v18 = std::__throw_bad_variant_access[abi:nn200100]();
  return REMaterialAssetSetBuffer(v18);
}

void REMaterialAssetSetBuffer(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, &v14);
  ++*(v15 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v14);
  if (v6)
  {
    v7 = *(v6 + 1784);
    v8 = v5;
    v9[0] = v5;
    v10 = 0;
    v11 = 0;
    v12 = [v5 length];
    re::MaterialParameterBlock::setBuffer(v7, a2, v9, v13);
    v13[0] = 0;
    if (v10 != -1)
    {
      (off_1F5D2DDE0[v10])(&v16, v9);
    }

    v10 = -1;
    if (v5)
    {
    }
  }

  re::AssetHandle::~AssetHandle(&v14);
}

id REMaterialAssetGetBuffer(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v33);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v33);
  if (!v3)
  {
    v13 = 0;
    goto LABEL_34;
  }

  v4 = v3;
  re::MaterialParameterBlock::handle(*(v3 + 1784), a2, &v30);
  v5 = BYTE4(v31[0]);
  if ((v31[0] & 0x700000000) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v30, 128);
    if ((v5 & 0x10) == 0 && isParameterType)
    {
      v7 = *re::MaterialParameterBlock::bufferValue(*(v4 + 1784), &v30);
LABEL_18:
      v13 = v7;
      goto LABEL_34;
    }
  }

  v8 = *(v4 + 1776);
  if (a2)
  {
    v9 = *a2;
    if (*a2)
    {
      v10 = a2[1];
      if (v10)
      {
        v11 = (a2 + 2);
        do
        {
          v9 = 31 * v9 + v10;
          v12 = *v11++;
          v10 = v12;
        }

        while (v12);
      }

      v9 &= ~0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v9;
  re::MaterialParameterTable::handle((v8 + 304), &v26, &v27);
  v30 = v27;
  *v31 = v28;
  v32 = v29;
  v26 = 0;
  v14 = BYTE4(v28);
  if ((BYTE4(v28) & 7) != 0)
  {
    v15 = re::MaterialParameterHandle::isParameterType(&v30, 128);
    if ((v14 & 0x10) == 0 && v15)
    {
      v7 = *re::BufferTable::bufferAt((*(v4 + 1776) + 568), LOWORD(v31[0]));
      goto LABEL_18;
    }
  }

  v16 = *(*(v4 + 1776) + 16);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  if (a2)
  {
    v18 = *a2;
    if (*a2)
    {
      v19 = a2[1];
      if (v19)
      {
        v20 = (a2 + 2);
        do
        {
          v18 = 31 * v18 + v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }

      v18 &= ~0x8000000000000000;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = v18;
  re::MaterialParameterTable::handle((v16 + 248), &v25, &v27);
  v30 = v27;
  v32 = v29;
  *v31 = v28;
  v25 = 0;
  v22 = BYTE4(v28);
  if ((BYTE4(v28) & 7) != 0)
  {
    v23 = re::MaterialParameterHandle::isParameterType(&v30, 128);
    v13 = 0;
    if ((v22 & 0x10) == 0 && v23)
    {
      v13 = *re::BufferTable::bufferAt((v16 + 512), LOWORD(v31[0]));
    }

    if (v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v13 = 0;
    if (v16)
    {
LABEL_33:
    }
  }

LABEL_34:
  re::AssetHandle::~AssetHandle(v33);

  return v13;
}

void REMaterialAssetSetSampler(uint64_t a1, char *a2, void *a3)
{
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, &v11);
  ++*(v12 + 276);
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v11);
  if (v6)
  {
    v7 = *(v6 + 1784);
    v9 = v5;
    v8 = v5;
    re::MaterialParameterBlock::setSampler(v7, a2, &v9, v10);
    v10[0] = 0;
    if (v5)
    {
    }
  }

  re::AssetHandle::~AssetHandle(&v11);
}

id REMaterialAssetGetSampler(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v33);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v33);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_37;
  }

  v4 = v3;
  re::MaterialParameterBlock::handle(*(v3 + 1784), a2, &v30);
  v5 = BYTE4(v31[0]);
  if ((v31[0] & 0x700000000) != 0)
  {
    isParameterType = re::MaterialParameterHandle::isParameterType(&v30, 192);
    if ((v5 & 0x10) == 0 && isParameterType)
    {
      re::MaterialParameterBlock::samplerValue(*(v4 + 1784), &v30, &v27);
      v7 = v27;
      v8 = v27;
      if (!v27)
      {
        goto LABEL_37;
      }

LABEL_36:

      goto LABEL_37;
    }
  }

  v9 = *(v4 + 1776);
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = (a2 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v10;
  re::MaterialParameterTable::handle((v9 + 304), &v26, &v27);
  v30 = v27;
  *v31 = v28;
  v32 = v29;
  v26 = 0;
  v14 = BYTE4(v28);
  if ((BYTE4(v28) & 7) != 0)
  {
    v15 = re::MaterialParameterHandle::isParameterType(&v30, 192);
    if ((v14 & 0x10) == 0 && v15)
    {
      v7 = *re::SamplerTable::samplerAt((*(v4 + 1776) + 1096), LOWORD(v31[0]));
      goto LABEL_37;
    }
  }

  v16 = *(*(v4 + 1776) + 16);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  if (a2)
  {
    v18 = *a2;
    if (*a2)
    {
      v19 = a2[1];
      if (v19)
      {
        v20 = (a2 + 2);
        do
        {
          v18 = 31 * v18 + v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }

      v18 &= ~0x8000000000000000;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = v18;
  re::MaterialParameterTable::handle((v16 + 248), &v25, &v27);
  v30 = v27;
  v32 = v29;
  *v31 = v28;
  v25 = 0;
  v22 = BYTE4(v28);
  if ((BYTE4(v28) & 7) == 0)
  {
    v7 = 0;
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v23 = re::MaterialParameterHandle::isParameterType(&v30, 192);
  v7 = 0;
  if ((v22 & 0x10) == 0 && v23)
  {
    v7 = *re::SamplerTable::samplerAt((v16 + 1040), LOWORD(v31[0]));
  }

  if (v16)
  {
LABEL_35:
    v8 = (v16 + 8);
    goto LABEL_36;
  }

LABEL_37:
  re::AssetHandle::~AssetHandle(v33);

  return v7;
}

uint64_t REMaterialAssetGetSamplerNameBoundToTexture(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v10);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v10);
  if (v3)
  {
    v13 = a2;
    v4 = re::Hash<re::DynamicString>::operator()(v11, a2);
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v3 + 208, &v13, v4, v11);
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }

    v5 = *(v3 + 224) + 160 * v12;
    v6 = *(v5 + 88);
    v7 = v6 >> 1;
    if ((v6 & 1) == 0)
    {
      v7 = v6 >> 1;
    }

    if (!v7)
    {
LABEL_8:
      v3 = 0;
    }

    else
    {
      v8 = v5 + 40;
      if (v6)
      {
        v3 = *(v8 + 56);
      }

      else
      {
        v3 = v8 + 49;
      }
    }
  }

  re::AssetHandle::~AssetHandle(v10);
  return v3;
}

char *REMaterialAssetCopySamplerDescriptor(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v3)
  {
    v9 = a2;
    v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>((v3 + 256), &v9, v4, v6);
    if (v7 == 0x7FFFFFFF)
    {
      v3 = 0;
    }

    else
    {
      re::OptionalMaterialSamplerData::makeSamplerData((*(v3 + 34) + 152 * v7 + 40), v6);
      re::MaterialSamplerData::makeDescriptor(v6, &v9);
      v3 = v9;
      if (v9)
      {
      }
    }
  }

  re::AssetHandle::~AssetHandle(v8);

  return v3;
}

BOOL REMaterialAssetBindTextureToSamplerWithDefaultArray(uint64_t a1, char *a2, char *a3, void *a4)
{
  v7 = a4;
  re::AssetAPIHelper::assetHandleCreate(a1, &v26);
  v24 = v7;
  v8 = v7;
  re::MaterialSamplerData::fromDescriptor(&v24, v25);
  if (v7)
  {
  }

  ++*(v27 + 276);
  v9 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v26);
  if (v9)
  {
    v10 = *(v9 + 1784);
    if (a2)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = a2[1];
        if (v12)
        {
          v13 = (a2 + 2);
          do
          {
            v11 = 31 * v11 + v12;
            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
        }

        v11 &= ~0x8000000000000000;
      }
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v23 = v11;
    if (a3)
    {
      v16 = *a3;
      if (*a3)
      {
        v17 = a3[1];
        if (v17)
        {
          v18 = (a3 + 2);
          do
          {
            v16 = 31 * v16 + v17;
            v19 = *v18++;
            v17 = v19;
          }

          while (v19);
        }

        v16 &= ~0x8000000000000000;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = v16;
    v20 = re::MaterialSamplerData::hash(v25);
    v15 = re::MaterialParameterBlock::bindTextureToSampler(v10, &v23, &v22, v20);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v15 = 0;
  }

  re::AssetHandle::~AssetHandle(&v26);

  return v15;
}

BOOL REMaterialAssetUnbindTextureFromSamplers(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v12);
  ++*(v13 + 276);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(&v12);
  if (v3)
  {
    v4 = *(v3 + 1784);
    if (a2)
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = a2[1];
        if (v6)
        {
          v7 = (a2 + 2);
          do
          {
            v5 = 31 * v5 + v6;
            v8 = *v7++;
            v6 = v8;
          }

          while (v8);
        }

        v5 &= ~0x8000000000000000;
      }
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = v5;
    v9 = re::MaterialParameterBlock::unbindTextureFromSamplers(v4, &v11);
    v11 = 0;
  }

  else
  {
    v9 = 0;
  }

  re::AssetHandle::~AssetHandle(&v12);
  return v9;
}

id REMaterialDefinitionAssetCopyTextureParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v5);
  if (v2)
  {
    v3 = v2;
    appendKeySet(v2 + 2424, v1);
    appendKeySet(v3 + 2448, v1);
  }

  re::AssetHandle::~AssetHandle(v5);

  return v1;
}

void appendKeySet(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = 32 * v4;
    do
    {
      re::DynamicString::DynamicString(&v9, v5);
      if (v10)
      {
        v7 = *&v11[7];
      }

      else
      {
        v7 = v11;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      [v3 addObject:v8];

      if (v9 && (v10 & 1) != 0)
      {
        (*(*v9 + 40))();
      }

      v5 = (v5 + 32);
      v6 -= 32;
    }

    while (v6);
  }
}

id REMaterialDefinitionAssetCopyBufferParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v4);
  if (v2)
  {
    appendKeySet(v2 + 2400, v1);
  }

  re::AssetHandle::~AssetHandle(v4);

  return v1;
}

id REMaterialDefinitionAssetCopyConstantParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v6);
  getValidMaterialDefinitionFromDefinitionAsset(&v5, v2);
  v3 = v5;
  if (v2 && v5)
  {
    buildConstantDictionaryFromParameters(v2 + 2376, v5 + 248, v1);
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

LABEL_6:
  re::AssetHandle::~AssetHandle(v6);

  return v1;
}

void getValidMaterialDefinitionFromDefinitionAsset(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 744);
    if (v3)
    {
      v4 = (v3 + 8);
    }

    v5 = *(v3 + 120);
    if (v5)
    {
      v6 = (v3 + 8);
      v5 = v3;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }
}

void buildConstantDictionaryFromParameters(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = 32 * v6;
    do
    {
      re::StringID::StringID(&v15, v7);
      v17 = v15 >> 1;
      v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a2 + 200), &v17);
      if (v9 == -1)
      {
        v17 = 0;
        if (v15)
        {
          if (v15)
          {
          }
        }
      }

      else
      {
        v10 = v9;
        v11 = *(a2 + 208);
        v17 = 0;
        if (v15)
        {
          if (v15)
          {
          }
        }

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v11 + 16 * v10 + 10)];
        if (*(v7 + 8))
        {
          v13 = *(v7 + 16);
        }

        else
        {
          v13 = v7 + 9;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
        [v5 setObject:v12 forKey:v14];
      }

      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }
}

id REMaterialDefinitionAssetCopySamplerParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v4);
  if (v2)
  {
    appendKeySet(v2 + 2472, v1);
  }

  re::AssetHandle::~AssetHandle(v4);

  return v1;
}

id REMaterialAssetCopyTextureParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(v2 + 1776) + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (*(v4 + 120))
    {
      v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v3 + 40));
      appendKeySet(v6 + 2424, v1);
      appendKeySet(v6 + 2448, v1);
    }
  }

  re::AssetHandle::~AssetHandle(v8);

  return v1;
}

id REMaterialAssetCopyBufferParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(v2 + 1776) + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (*(v4 + 120))
    {
      v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v3 + 40));
      appendKeySet(v6 + 2400, v1);
    }
  }

  re::AssetHandle::~AssetHandle(v8);

  return v1;
}

id REMaterialAssetCopyConstantParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(v2 + 1776) + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (*(v4 + 120))
    {
      v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v3 + 40));
      buildConstantDictionaryFromParameters(v6 + 2376, v4 + 248, v1);
    }
  }

  re::AssetHandle::~AssetHandle(v8);

  return v1;
}

id REMaterialAssetCopySamplerParameters(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v1 = objc_opt_new();
  v2 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v8);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(v2 + 1776) + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    if (*(v4 + 120))
    {
      v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>((v3 + 40));
      appendKeySet(v6 + 2472, v1);
    }
  }

  re::AssetHandle::~AssetHandle(v8);

  return v1;
}