uint64_t re::DynamicArray<re::DynamicArray<re::RigDataValue>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      result = re::DynamicArray<re::RigDataValue>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

void re::DynamicArray<re::StringID>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 16 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 16);
      v4 -= 16;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

_OWORD *re::internal::RayCaster::cast@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(**a1 + 56))(*a1, a2, a1 + 2, a1 + 6);
  v6 = a1[11];
  if (v6)
  {
    result = re::BucketArray<re::CollisionCastHit,10ul>::operator[]((a1 + 6), 0);
    v7 = result[3];
    *(a3 + 48) = result[2];
    *(a3 + 64) = v7;
    *(a3 + 80) = result[4];
    v8 = result[1];
    *(a3 + 16) = *result;
    *(a3 + 32) = v8;
    LOBYTE(v6) = 1;
  }

  *a3 = v6;
  return result;
}

uint64_t *re::internal::getSRTFromRDV@<X0>(re::internal *this@<X0>, void *a2@<X8>)
{
  v27[0] = "scale";
  v27[1] = 5;
  re::RigDataValue::attributeValue(this, v27, v28);
  v6 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v29, v5);
  v7 = *v6;
  v8 = v6[1];
  v22[0] = "rotation";
  v22[1] = 8;
  re::RigDataValue::attributeValue(this, v22, v23);
  v10 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v24, v9);
  v11 = *v10;
  v12 = v10[1];
  v17[0] = "translation";
  v17[1] = 11;
  re::RigDataValue::attributeValue(this, v17, v18);
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v19, v13);
  v15 = *result;
  v16 = result[1];
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v15;
  a2[5] = v16;
  if ((v18[0] & 1) == 0)
  {
    result = v20;
    if (v20)
    {
      if (v21)
      {
        result = (*(*v20 + 40))();
      }
    }
  }

  if ((v23[0] & 1) == 0)
  {
    result = v25;
    if (v25)
    {
      if (v26)
      {
        result = (*(*v25 + 40))();
      }
    }
  }

  if ((v28[0] & 1) == 0)
  {
    result = v30;
    if (v30)
    {
      if (v31)
      {
        return (*(*v30 + 40))(v30, v32);
      }
    }
  }

  return result;
}

void re::internal::makeRigDataValue(re::Allocator **a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  re::RigEnvironment::lookupRigDataType(a1[2], a2, v13);
  v10[0] = v13[8];
  re::StringID::StringID(&v11, &v14);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(v12, v15);
  v6 = a1[1];
  v5 = a1[2];
  v7 = *a1;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 88) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = -1;
  *(a3 + 184) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 272) = 0;
  *(a3 + 264) = 0;
  *(a3 + 232) = &str_67;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  re::RigDataValue::init(a3, v7, v5, v10, v6);
  v8 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v12);
  if (v11)
  {
    if (v11)
    {
    }
  }

  if (v13[0] == 1)
  {
    v9 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v15);
    if (*&v14.var0)
    {
      if (*&v14.var0)
      {
      }
    }
  }
}

unint64_t re::internal::makeModelSpaceJointPoseRDV@<X0>(re::Allocator **a1@<X0>, _anonymous_namespace_ *a2@<X1>, const char *a3@<X2>, re::RigDataValue *a4@<X8>)
{
  v25 = 164778;
  v26 = "SRT";
  re::internal::makeRigDataValue(a1, &v25, a4);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v24[0] = a3;
  v24[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointScale(a2, v24, &v25);
  v8 = v26;
  v19[0] = a3;
  v19[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointRotation(a2, v19, v20);
  v9 = v21;
  v14[0] = a3;
  v14[1] = strlen(a3);
  re::RigHierarchy::getModelSpaceJointTranslation(a2, v14, v15);
  v10 = v16;
  if (v15[0] & 1) == 0 && v17 && (v18)
  {
    (*(*v17 + 40))();
  }

  if (v20[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  if (v25 & 1) == 0 && v27 && (v28)
  {
    (*(*v27 + 40))(v27, v29);
  }

  v11 = re::RigDataValue::attributeValue(a4, 0);
  *(v11 + 96) = 2;
  *(v11 + 176) = v8;
  v12 = re::RigDataValue::attributeValue(a4, 1uLL);
  *(v12 + 96) = 2;
  *(v12 + 176) = v9;
  result = re::RigDataValue::attributeValue(a4, 2uLL);
  *(result + 96) = 2;
  *(result + 176) = v10;
  return result;
}

unint64_t re::internal::makeLocalSpaceJointPoseRDV@<X0>(re::Allocator **a1@<X0>, _anonymous_namespace_ *a2@<X1>, const re::RigHierarchy *a3@<X2>, re::RigDataValue *a4@<X8>)
{
  v14 = 164778;
  v15 = "SRT";
  re::internal::makeRigDataValue(a1, &v14, a4);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v8 = re::RigDataValue::attributeValue(a4, 0);
  v9 = v14;
  *(v8 + 96) = 2;
  *(v8 + 176) = v9;
  v10 = re::RigDataValue::attributeValue(a4, 1uLL);
  v11 = v15;
  *(v10 + 96) = 2;
  *(v10 + 176) = v11;
  result = re::RigDataValue::attributeValue(a4, 2uLL);
  v13 = v16;
  *(result + 96) = 2;
  *(result + 176) = v13;
  return result;
}

uint64_t anonymous namespace::getLocalSpaceJointPoseEvalSRT@<X0>(_anonymous_namespace_ *this@<X0>, const re::RigHierarchy *__s@<X1>, void *a3@<X8>)
{
  v18[0] = __s;
  v18[1] = strlen(__s);
  re::RigHierarchy::getLocalSpaceJointScale(this, v18, v19);
  *a3 = v20;
  v13[0] = __s;
  v13[1] = strlen(__s);
  re::RigHierarchy::getLocalSpaceJointRotation(this, v13, v14);
  a3[1] = v15;
  v8[0] = __s;
  v8[1] = strlen(__s);
  result = re::RigHierarchy::getLocalSpaceJointTranslation(this, v8, v9);
  a3[2] = v10;
  if ((v9[0] & 1) == 0)
  {
    result = v11;
    if (v11)
    {
      if (v12)
      {
        result = (*(*v11 + 40))();
      }
    }
  }

  if ((v14[0] & 1) == 0)
  {
    result = v16;
    if (v16)
    {
      if (v17)
      {
        result = (*(*v16 + 40))();
      }
    }
  }

  if ((v19[0] & 1) == 0)
  {
    result = v21;
    if (v21)
    {
      if (v22)
      {
        return (*(*v21 + 40))(v21, v23);
      }
    }
  }

  return result;
}

re::RigHierarchy *re::internal::transferPose(re::RigHierarchy *this, const re::RigHierarchy *a2, re::RigHierarchy *a3)
{
  if (*(this + 27))
  {
    v4 = this;
    v5 = 0;
    do
    {
      v6 = *(re::RigHierarchy::jointName(v4, v5) + 8);
      v7 = strlen(v6);
      v8[0] = v6;
      v8[1] = v7;
      this = re::RigHierarchy::setLocalSpaceJointTransform(a2, v8, v12, v9);
      if ((v9[0] & 1) == 0)
      {
        this = v10;
        if (v10)
        {
          if (BYTE8(v10))
          {
            this = (*(*v10 + 40))();
          }

          v11 = 0u;
          v10 = 0u;
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 27));
  }

  return this;
}

unint64_t re::RigHierarchy::jointName(re::RigHierarchy *this, unint64_t a2)
{
  if (*(this + 27) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 29) + 16 * a2;
}

re::RigDataValue *re::internal::transferPose(re::RigDataValue *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  if (*(this + 32))
  {
    v4 = this;
    v5 = 0;
    do
    {
      *&v8 = 0x3F8000003F800000;
      *(&v8 + 1) = 1065353216;
      v9 = 0;
      v10 = 0x3F80000000000000;
      v11 = 0;
      v12 = 0;
      v6 = re::RigDataValue::attributeValue(v4, v5);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v6, &v8);
      v7 = re::RigDataValue::attributeValue(a2, v5);
      this = re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v7, &v8);
      ++v5;
    }

    while (v5 < *(v4 + 32));
  }

  return this;
}

__n128 re::internal::transferPose(re::RigDataValue *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      *&v11 = 0x3F8000003F800000;
      *(&v11 + 1) = 1065353216;
      v12.n128_u64[0] = 0;
      v12.n128_u64[1] = 0x3F80000000000000;
      v13 = 0uLL;
      v6 = re::RigDataValue::attributeValue(this, v5);
      re::RigDataValue::getRuntimeValue<re::GenericSRT<float>>(v6, &v11);
      v7 = *(a2 + 8);
      if (v7 <= v5)
      {
        v14 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        v18 = 468;
        v19 = 2048;
        v20 = v5;
        v21 = 2048;
        v22 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      result = v12;
      v9 = v13;
      v10 = (*(a2 + 16) + v4);
      v10->n128_u32[2] = DWORD2(v13);
      v10->n128_u64[0] = v9;
      v10[1] = result;
      ++v5;
      v4 += 32;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

_OWORD *re::internal::transferPose(_OWORD *result, re::RigDataValue *this)
{
  if (*(result + 1))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(v3 + 2) + v4);
      v7 = *(v6 + 2);
      v8 = *(v6 + 3);
      v9 = *v6;
      *&v11 = 0x3F8000003F800000;
      *(&v11 + 1) = 1065353216;
      v12 = v7;
      v13 = v8;
      v14 = v9;
      v10 = re::RigDataValue::attributeValue(this, v5);
      result = re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v10, &v11);
      ++v5;
      v4 += 32;
    }

    while (v5 < *(v3 + 1));
  }

  return result;
}

void anonymous namespace::getEvalSRTFromRDV(_anonymous_namespace_ *this, const re::RigDataValue *a2)
{
  v4 = re::RigDataValue::attributeValue(a2, 0);
  v5 = v4;
  if (*(v4 + 96) == 1)
  {
    v6 = *(v4 + 16);
    LODWORD(v16) = 7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v6 + 243), &v16);
    v16 = v6[245] - 1;
    re::DynamicArray<unsigned long>::add(v6 + 36, &v16);
    re::DynamicArray<re::Vector3<float>>::add((v6 + 76), v5 + 7);
    v7 = (v6[40] + 8 * v6[38] - 8);
  }

  else
  {
    v7 = (v4 + 176);
  }

  *this = *v7;
  v8 = re::RigDataValue::attributeValue(a2, 1uLL);
  v9 = v8;
  if (*(v8 + 96) == 1)
  {
    v10 = *(v8 + 16);
    LODWORD(v16) = 5;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v16);
    v16 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v16);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = (v8 + 176);
  }

  *(this + 1) = *v11;
  v12 = re::RigDataValue::attributeValue(a2, 2uLL);
  v13 = v12;
  if (*(v12 + 96) == 1)
  {
    v14 = *(v12 + 16);
    LODWORD(v16) = 7;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v16);
    v16 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v16);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = (v12 + 176);
  }

  *(this + 2) = *v15;
}

void re::internal::makePoseFromRig(re::Allocator **a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v9 = MEMORY[0x1E6903C40](a3);
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = MEMORY[0x1E6903C50](a3, i);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
    }
  }
}

void re::internal::makeModelSpacePoseForRayTracingJoints(re::Allocator **a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  CoreIKFootPlacementSolverGetGenericSolver();
  ConstraintCount = CoreIKGenericSolverGetConstraintCount();
  if (ConstraintCount)
  {
    v10 = ConstraintCount;
    for (i = 0; i != v10; ++i)
    {
      MEMORY[0x1E69038A0](a3, i);
      if (CoreIKFootPlacementConstraintIsRayTracing())
      {
        ConstraintTargetName = CoreIKGenericSolverGetConstraintTargetName();
        re::internal::makeModelSpaceJointPoseRDV(a1, a2, ConstraintTargetName, v13);
        re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
        re::RigDataValue::~RigDataValue(v13);
      }
    }
  }
}

void re::internal::makePose(re::Allocator **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[37] = *MEMORY[0x1E69E9840];
  v10[0] = 158357486;
  v10[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v10, a3);
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  for (; a2; --a2)
  {
    v8 = 164778;
    v9 = "SRT";
    re::internal::makeRigDataValue(a1, &v8, v10);
    if (v8)
    {
      if (v8)
      {
      }
    }

    re::DynamicArray<re::RigDataValue>::add(a3 + 240, v10);
    re::RigDataValue::~RigDataValue(v10);
  }
}

void re::internal::makeSourcePose(re::Allocator **a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a4);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v9 = MEMORY[0x1E6903C20](a3);
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = MEMORY[0x1E6903C30](a3, i);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a4 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
    }
  }
}

double re::internal::bindCallbackOutputToNodeOutputPose(re::RigHierarchy *a1, re::RigDataValue *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  v29 = 0x7FFFFFFFLL;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v32 = 0x7FFFFFFFLL;
  memset(v33, 0, sizeof(v33));
  v49 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  re::RigHierarchy::jointDescription(a1, a2, &v25);
  re::RigHierarchy::init(v28, *(a4 + 16), *a4, *(a4 + 8), v27, v26);
  re::internal::transferPose(a1, v28, v8);
  v9 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v10 = 0;
    do
    {
      v11 = re::RigHierarchy::jointName(v28, v10);
      re::StringID::StringID(&v23, v11);
      v12 = re::RigDataValue::attributeValue(a2, v10);
      re::RigDataValue::RigDataValue(v50, v12);
      v13 = strlen(__s);
      v18[0] = __s;
      v18[1] = v13;
      re::RigHierarchy::setLocalSpaceJointTransform(v28, v18, v22, v19);
      if ((v19[0] & 1) == 0 && v20)
      {
        if (BYTE8(v20))
        {
          (*(*v20 + 40))();
        }

        v21 = 0u;
        v20 = 0u;
      }

      re::RigDataValue::~RigDataValue(v50);
      if (v23)
      {
        if (v23)
        {
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v15 = *(a3 + 184);
  v16 = *v28;
  *(v15 + 16) = *&v28[16];
  *v15 = v16;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 24), &v28[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 72), v30);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v15 + 120, v33);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v15 + 160, &v35[1]);
  re::DynamicArray<re::StringID>::operator=(v15 + 200, &v37 + 1);
  re::DynamicArray<unsigned long>::operator=(v15 + 240, &v40 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v15 + 280, &v43 + 1);
  re::DynamicArray<unsigned long>::operator=(v15 + 320, &v46 + 1);
  if (v25 && v26)
  {
    (*(*v25 + 40))();
  }

  if (*(&v46 + 1))
  {
    if (v49)
    {
      (*(**(&v46 + 1) + 40))();
    }

    v49 = 0;
    v47 = 0uLL;
    *(&v46 + 1) = 0;
    ++v48;
  }

  if (*(&v43 + 1))
  {
    if (v46)
    {
      (*(**(&v43 + 1) + 40))();
    }

    *&v46 = 0;
    v44 = 0uLL;
    *(&v43 + 1) = 0;
    ++v45;
  }

  if (*(&v40 + 1))
  {
    if (v43)
    {
      (*(**(&v40 + 1) + 40))();
    }

    *&v43 = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    ++v42;
  }

  re::DynamicArray<re::StringID>::deinit(&v37 + 8);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v35[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v33);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v30);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v28[24]);
}

double re::internal::bindCallbackOutputToNodeOutputPose(re::RigHierarchy *a1, re::RigDataValue *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  v24 = 0x7FFFFFFFLL;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0x7FFFFFFFLL;
  memset(v28, 0, sizeof(v28));
  v43 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v31 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  re::RigHierarchy::jointDescription(a1, a2, &v20);
  re::RigHierarchy::init(v23, *(a4 + 16), *a4, *(a4 + 8), v22, v21);
  re::internal::transferPose(a1, v23, v10);
  v11 = MEMORY[0x1E6903C40](a3);
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; ++i)
    {
      v14 = MEMORY[0x1E6903C50](a3, i);
      v15 = re::RigDataValue::attributeValue(a2, i);
      re::RigDataValue::RigDataValue(v49, v15);
      v16 = strlen(v14);
      v44[0] = v14;
      v44[1] = v16;
      re::RigHierarchy::setLocalSpaceJointTransform(v23, v44, v48, v45);
      if ((v45[0] & 1) == 0 && v46)
      {
        if (BYTE8(v46))
        {
          (*(*v46 + 40))();
        }

        v47 = 0u;
        v46 = 0u;
      }

      re::RigDataValue::~RigDataValue(v49);
    }
  }

  v17 = *(a5 + 184);
  v18 = *v23;
  *(v17 + 16) = *&v23[16];
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), &v23[24]);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), v25);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v28);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, &v30[1]);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, &v32[1]);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, &v34 + 1);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, &v37 + 1);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, &v40 + 1);
  if (v20 && v21)
  {
    (*(*v20 + 40))();
  }

  if (*(&v40 + 1))
  {
    if (v43)
    {
      (*(**(&v40 + 1) + 40))();
    }

    v43 = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0;
    ++v42;
  }

  if (*(&v37 + 1))
  {
    if (v40)
    {
      (*(**(&v37 + 1) + 40))();
    }

    *&v40 = 0;
    v38 = 0uLL;
    *(&v37 + 1) = 0;
    ++v39;
  }

  if (*(&v34 + 1))
  {
    if (v37)
    {
      (*(**(&v34 + 1) + 40))();
    }

    *&v37 = 0;
    v35 = 0uLL;
    *(&v34 + 1) = 0;
    ++v36;
  }

  re::DynamicArray<re::StringID>::deinit(&v32[1]);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(&v30[1]);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v28);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v23[24]);
}

void re::internal::makePoseFromRigHierarchy(re::Allocator **a1@<X0>, re::RigHierarchy *a2@<X1>, uint64_t a3@<X8>)
{
  v13[37] = *MEMORY[0x1E69E9840];
  v13[0] = 158357486;
  v13[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v13, a3);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v7 = *(a2 + 27);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = re::RigHierarchy::jointName(a2, i);
      re::StringID::StringID(&v11, v9);
      re::internal::makeLocalSpaceJointPoseRDV(a1, a2, v12, v13);
      re::DynamicArray<re::RigDataValue>::add(a3 + 240, v13);
      re::RigDataValue::~RigDataValue(v13);
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::internal::updateOutputBasedOnSolveResult(int a1, uint64_t a2, _OWORD *a3, re::RigDataValue *this)
{
  if (a1 == 2)
  {
LABEL_4:

    return re::internal::transferPose(a3, this);
  }

  if (a1 != 1)
  {
    if (a1)
    {
      re::internal::assertLog(4, a2, a3, this, "assertion failure: '%s' (%s:line %i) Unexpected Solve Result", "!Unreachable code", "updateOutputBasedOnSolveResult", 269, v4, v5);
      result = _os_crash();
      __break(1u);
      return result;
    }

    goto LABEL_4;
  }

  return re::RigDataValue::operator=(this, a2);
}

void *re::EvaluationTree::init(re::EvaluationTree *this, re::Allocator *a2)
{
  v6 = a2;
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 1, &v6);
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(this + 41, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 81, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 121, &v6);
  re::DynamicRegisterIdTable::initArrays<re::Allocator *&>(this + 161, &v6);
  re::BucketArray<re::EvaluationBranchGroupData,8ul>::init(this + 1608, v6, 1uLL);
  v3 = this + 1664;
  v4 = 8;
  do
  {
    *v3 = v6;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(v3, 0);
    ++*(v3 + 6);
    v3 += 40;
    --v4;
  }

  while (v4);
  *(this + 248) = v6;
  re::DynamicArray<re::EvaluationCallbackData>::setCapacity(this + 248, 0);
  ++*(this + 502);
  *(this + 253) = v6;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 253, 0);
  ++*(this + 512);
  return result;
}

uint64_t *re::BucketArray<re::EvaluationBranchGroupData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::EvaluationBranchGroupData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::DynamicRegisterIdTable::deinit(re::DynamicRegisterIdTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 240);

  return re::DynamicArray<unsigned long>::deinit(this + 280);
}

void *re::EvaluationTree::setupEvaluationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  (*(*a3 + 32))(&v13, a3, a2, a1);
  v10 = v13;
  if (v13 == 1)
  {
    re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(a5, a2, a4);
    re::FixedArray<re::GenericSRT<float>>::init<>(a5 + 24, a2, a4[17]);
    re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(a5 + 27, a2, a4 + 18);
    result = re::FixedArray<re::GenericSRT<float>>::init<>(a5 + 51, a2, a4[35]);
    v12 = v13;
    *a6 = 1;
    if (v12)
    {
      return result;
    }
  }

  else
  {
    *(a6 + 8) = v14;
    *(a6 + 24) = v15;
    *(a6 + 48) = v17;
    *(a6 + 32) = v16;
    v17 = 0;
    v15 = 0;
    v16 = 0uLL;
    *a6 = v10;
  }

  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void re::FixedRegisterTable::initSize<re::SliceRegisterIdTable>(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  re::FixedArray<int>::init<>(a1, a2, a3[1]);
  re::FixedArray<int>::init<>(a1 + 3, a2, a3[3]);
  re::FixedArray<int>::init<>(a1 + 6, a2, a3[5]);
  re::FixedArray<re::Matrix3x3<float>>::init<>(a1 + 9, a2, a3[7]);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 12, a2, a3[9]);
  re::FixedArray<re::Quaternion<float>>::init<>(a1 + 15, a2, a3[11]);
  re::FixedArray<re::Vector2<float>>::init<>(a1 + 18, a2, a3[13]);
  v6 = a3[15];

  re::FixedArray<re::Vector3<float>>::init<>(a1 + 21, a2, v6);
}

void re::EvaluationTree::createInputRegister(void *a1@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  LODWORD(v6) = 7;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v6);
  v6 = a1[245] - 1;
  re::DynamicArray<unsigned long>::add(a1 + 36, &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 76), a2);
  *a3 = *(a1[40] + 8 * a1[38] - 8);
  LODWORD(v6) = 5;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v6);
  v6 = a1[235] - 1;
  re::DynamicArray<unsigned long>::add(a1 + 26, &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 66), a2 + 1);
  a3[1] = *(a1[30] + 8 * a1[28] - 8);
  LODWORD(v6) = 7;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v6);
  v6 = a1[245] - 1;
  re::DynamicArray<unsigned long>::add(a1 + 36, &v6);
  re::DynamicArray<re::Vector3<float>>::add((a1 + 76), a2 + 2);
  a3[2] = *(a1[40] + 8 * a1[38] - 8);
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 56) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 72) + 32 * a2;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 296) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 312) + 32 * a2;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 256) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 272) + 32 * a2;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 216) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 232) + 32 * a2;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 136) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 152) + 32 * a2;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 176) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 192) + 32 * a2;
}

unint64_t re::EvaluationTree::extractRotation(void *a1, uint64_t a2)
{
  v7 = 34;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v7);
  v4 = a1[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v4) + 8) = a2;
  v7 = 35;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v7);
  v5 = a1[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v5) + 8) = v4;
  return v5;
}

unint64_t re::EvaluationTree::extractScale(void *a1, uint64_t a2)
{
  v7 = 34;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v7);
  v4 = a1[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v4) + 8) = a2;
  v7 = 36;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v7);
  v5 = a1[245] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v5) + 8) = v4;
  return v5;
}

unint64_t re::EvaluationTree::constructMatrix4x4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 39;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 223), &v13);
  v8 = a1[225] - 1;
  v9 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a1 + 208), v8);
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = 40;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 228), &v13);
  v10 = a1[230] - 1;
  v11 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a1 + 208), v10);
  *(v11 + 8) = v8;
  *(v11 + 16) = a4;
  return v10;
}

unint64_t re::EvaluationTree::transformDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 42;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v9);
  v6 = *(a1 + 1960) - 1;
  v7 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v6);
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return v6;
}

uint64_t re::DynamicEvaluationRegisterTable::evaluationRegister<float>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 96) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 112) + 32 * a2;
}

uint64_t re::EvaluationTree::additiveBlend@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v27 = 25;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v10 = a1[245] - 1;
  v11 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v10);
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  *a4 = v10;
  v12 = a2[1];
  v13 = a3[1];
  v27 = 24;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v27);
  v14 = a1[235] - 1;
  v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v14);
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  a4[1] = v14;
  v16 = *a2;
  v19 = a2 + 1;
  v17 = a2[1];
  v18 = v19[1];
  v20 = a3[2];
  v27 = 30;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v21 = a1[245] - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v21);
  *(v22 + 8) = v17;
  *(v22 + 16) = v20;
  v27 = 25;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v23 = a1[245] - 1;
  v24 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v23);
  *(v24 + 8) = v16;
  *(v24 + 16) = v21;
  v27 = 8;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v27);
  v25 = a1[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
  *(result + 8) = v18;
  *(result + 16) = v23;
  a4[2] = v25;
  return result;
}

void *re::EvaluationTree::lerp@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = *a3;
  v22 = 11;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v22);
  v12 = a1[245] - 1;
  v13 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v12);
  v13[1] = v10;
  v13[2] = v11;
  v13[3] = a4;
  *a5 = v12;
  v14 = a2[1];
  v15 = a3[1];
  v22 = 12;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v22);
  v16 = a1[235] - 1;
  v17 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v16);
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = a4;
  a5[1] = v16;
  v18 = a2[2];
  v19 = a3[2];
  v22 = 11;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v22);
  v20 = a1[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v20);
  result[1] = v18;
  result[2] = v19;
  result[3] = a4;
  a5[2] = v20;
  return result;
}

uint64_t re::EvaluationTree::registerCallbackFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v140 = *MEMORY[0x1E69E9840];
  v8 = 0uLL;
  v130 = 0u;
  v131 = 0u;
  v9 = (a1 + 1984);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v10 = *(a1 + 2000);
  v11 = *(a1 + 1992);
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*v9)
      {
        v13 = 2 * v11;
        v14 = v11 == 0;
        v15 = 8;
        if (!v14)
        {
          v15 = v13;
        }

        if (v15 <= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        re::DynamicArray<re::EvaluationCallbackData>::setCapacity((a1 + 1984), v16);
      }

      else
      {
        re::DynamicArray<re::EvaluationCallbackData>::setCapacity(v9, v12);
        ++*(a1 + 2008);
      }

      v8 = 0uLL;
    }

    v10 = *(a1 + 2000);
  }

  v103 = v9;
  v17 = *(a1 + 2016) + 448 * v10;
  *v17 = v8;
  *(v17 + 16) = v8;
  *(v17 + 8) = *(&v104 + 1);
  *(&v104 + 1) = 0;
  *&v105 = 0;
  v18 = *(v17 + 24);
  *(v17 + 24) = *(&v105 + 1);
  *(&v105 + 1) = v18;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = v106;
  *&v106 = 0;
  *(v17 + 40) = *(&v106 + 1);
  *(&v106 + 1) = 0;
  v19 = *(v17 + 48);
  *(v17 + 48) = v107;
  *&v107 = v19;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 56) = *(&v107 + 1);
  *(&v107 + 1) = 0;
  *(v17 + 64) = v108;
  *&v108 = 0;
  v20 = *(v17 + 72);
  *(v17 + 72) = *(&v108 + 1);
  *(&v108 + 1) = v20;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 80) = v109;
  *&v109 = 0;
  *(v17 + 88) = *(&v109 + 1);
  *(&v109 + 1) = 0;
  v21 = *(v17 + 96);
  *(v17 + 96) = v110;
  *&v110 = v21;
  *(v17 + 104) = 0;
  *(v17 + 112) = 0;
  *(v17 + 120) = 0;
  *(v17 + 104) = *(&v110 + 1);
  *(&v110 + 1) = 0;
  *(v17 + 112) = v111;
  *&v111 = 0;
  v22 = *(v17 + 120);
  *(v17 + 120) = *(&v111 + 1);
  *(&v111 + 1) = v22;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 128) = v112;
  *&v112 = 0;
  *(v17 + 136) = *(&v112 + 1);
  *(&v112 + 1) = 0;
  v23 = *(v17 + 144);
  *(v17 + 144) = v113;
  *&v113 = v23;
  *(v17 + 152) = 0;
  *(v17 + 160) = 0;
  *(v17 + 168) = 0;
  *(v17 + 152) = *(&v113 + 1);
  *(&v113 + 1) = 0;
  *(v17 + 160) = v114;
  *&v114 = 0;
  v24 = *(v17 + 168);
  *(v17 + 168) = *(&v114 + 1);
  *(&v114 + 1) = v24;
  *(v17 + 176) = 0;
  *(v17 + 184) = 0;
  *(v17 + 192) = 0;
  *(v17 + 176) = v115;
  *&v115 = 0;
  *(v17 + 184) = *(&v115 + 1);
  *(&v115 + 1) = 0;
  v25 = *(v17 + 192);
  *(v17 + 192) = v116;
  *&v116 = v25;
  *(v17 + 200) = 0;
  *(v17 + 208) = 0;
  *(v17 + 216) = 0;
  *(v17 + 200) = *(&v116 + 1);
  *(&v116 + 1) = 0;
  *(v17 + 208) = v117;
  *&v117 = 0;
  v26 = *(v17 + 216);
  *(v17 + 216) = *(&v117 + 1);
  *(&v117 + 1) = v26;
  *(v17 + 224) = 0;
  *(v17 + 232) = 0;
  *(v17 + 240) = 0;
  *(v17 + 224) = v118;
  *&v118 = 0;
  *(v17 + 232) = *(&v118 + 1);
  *(&v118 + 1) = 0;
  v27 = *(v17 + 240);
  *(v17 + 240) = v119;
  *&v119 = v27;
  *(v17 + 248) = 0;
  *(v17 + 256) = 0;
  *(v17 + 264) = 0;
  *(v17 + 248) = *(&v119 + 1);
  *(&v119 + 1) = 0;
  *(v17 + 256) = v120;
  *&v120 = 0;
  v28 = *(v17 + 264);
  *(v17 + 264) = *(&v120 + 1);
  *(&v120 + 1) = v28;
  *(v17 + 272) = 0;
  *(v17 + 280) = 0;
  *(v17 + 288) = 0;
  *(v17 + 272) = v121;
  *&v121 = 0;
  *(v17 + 280) = *(&v121 + 1);
  *(&v121 + 1) = 0;
  v29 = *(v17 + 288);
  *(v17 + 288) = v122;
  *&v122 = v29;
  *(v17 + 296) = 0;
  *(v17 + 304) = 0;
  *(v17 + 312) = 0;
  *(v17 + 296) = *(&v122 + 1);
  *(&v122 + 1) = 0;
  *(v17 + 304) = v123;
  *&v123 = 0;
  v30 = *(v17 + 312);
  *(v17 + 312) = *(&v123 + 1);
  *(&v123 + 1) = v30;
  *(v17 + 320) = 0;
  *(v17 + 328) = 0;
  *(v17 + 336) = 0;
  *(v17 + 320) = v124;
  *&v124 = 0;
  *(v17 + 328) = *(&v124 + 1);
  *(&v124 + 1) = 0;
  v31 = *(v17 + 336);
  *(v17 + 336) = v125;
  *&v125 = v31;
  *(v17 + 344) = 0;
  *(v17 + 352) = 0;
  *(v17 + 360) = 0;
  *(v17 + 344) = *(&v125 + 1);
  *(&v125 + 1) = 0;
  *(v17 + 352) = v126;
  *&v126 = 0;
  v32 = *(v17 + 360);
  *(v17 + 360) = *(&v126 + 1);
  *(&v126 + 1) = v32;
  *(v17 + 368) = 0;
  *(v17 + 376) = 0;
  *(v17 + 384) = 0;
  *(v17 + 368) = v127;
  *&v127 = 0;
  *(v17 + 376) = *(&v127 + 1);
  *(&v127 + 1) = 0;
  v33 = *(v17 + 384);
  *(v17 + 384) = v128;
  *&v128 = v33;
  *(v17 + 392) = 0;
  *(v17 + 400) = 0;
  *(v17 + 408) = 0;
  *(v17 + 392) = *(&v128 + 1);
  *(&v128 + 1) = 0;
  *(v17 + 400) = v129;
  *&v129 = 0;
  v34 = *(v17 + 408);
  *(v17 + 408) = *(&v129 + 1);
  *(&v129 + 1) = v34;
  *(v17 + 416) = 0;
  *(v17 + 424) = 0;
  *(v17 + 432) = 0;
  *(v17 + 416) = v130;
  *&v130 = 0;
  *(v17 + 424) = *(&v130 + 1);
  *(&v130 + 1) = 0;
  v35 = *(v17 + 432);
  *(v17 + 432) = v131;
  *&v131 = v35;
  *(v17 + 440) = *(&v131 + 1);
  ++*(a1 + 2000);
  ++*(a1 + 2008);
  re::EvaluationCallbackData::~EvaluationCallbackData(&v104);
  v100 = *(a1 + 2000);
  v36 = *(a1 + 2016) + 448 * v100;
  *(v36 - 448) = a2;
  *(v36 - 8) = a4;
  v37 = *(a1 + 1984);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 440), v37, *(a3 + 8));
  v38 = (v36 - 416);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 416), v37, *(a3 + 24));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 392), v37, *(a3 + 40));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 368), v37, *(a3 + 56));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 344), v37, *(a3 + 72));
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 320), v37, *(a3 + 88));
  v101 = (v36 - 296);
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 296), v37, *(a3 + 104));
  v102 = (v36 - 272);
  v39 = re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 272), v37, *(a3 + 120));
  if (!*(v36 - 440))
  {
    v41 = *(a3 + 8);
    if (!v41)
    {
      goto LABEL_19;
    }
  }

  v42 = *(a3 + 8);
  if (*(v36 - 432) != v42)
  {
LABEL_155:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_156;
  }

  if (v42)
  {
    v39 = memmove(*(v36 - 424), *a3, 8 * v42);
  }

LABEL_19:
  if (!*v38)
  {
    v43 = *(a3 + 24);
    if (!v43)
    {
      goto LABEL_25;
    }
  }

  v44 = *(a3 + 24);
  if (*(v36 - 408) != v44)
  {
LABEL_156:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_157;
  }

  if (v44)
  {
    v39 = memmove(*(v36 - 400), *(a3 + 16), 8 * v44);
  }

LABEL_25:
  if (!*(v36 - 392))
  {
    v45 = *(a3 + 40);
    if (!v45)
    {
      goto LABEL_31;
    }
  }

  v46 = *(a3 + 40);
  if (*(v36 - 384) != v46)
  {
LABEL_157:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_158;
  }

  if (v46)
  {
    v39 = memmove(*(v36 - 376), *(a3 + 32), 8 * v46);
  }

LABEL_31:
  if (!*(v36 - 368))
  {
    v47 = *(a3 + 56);
    if (!v47)
    {
      goto LABEL_37;
    }
  }

  v48 = *(a3 + 56);
  if (*(v36 - 360) != v48)
  {
LABEL_158:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_159;
  }

  if (v48)
  {
    v39 = memmove(*(v36 - 352), *(a3 + 48), 8 * v48);
  }

LABEL_37:
  if (!*(v36 - 344))
  {
    v49 = *(a3 + 72);
    if (!v49)
    {
      goto LABEL_43;
    }
  }

  v50 = *(a3 + 72);
  if (*(v36 - 336) != v50)
  {
LABEL_159:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_160;
  }

  if (v50)
  {
    v39 = memmove(*(v36 - 328), *(a3 + 64), 8 * v50);
  }

LABEL_43:
  if (!*(v36 - 320))
  {
    v51 = *(a3 + 88);
    if (!v51)
    {
      goto LABEL_49;
    }
  }

  v52 = *(a3 + 88);
  if (*(v36 - 312) != v52)
  {
LABEL_160:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_161;
  }

  if (v52)
  {
    v39 = memmove(*(v36 - 304), *(a3 + 80), 8 * v52);
  }

LABEL_49:
  if (!*v101)
  {
    v53 = *(a3 + 104);
    if (!v53)
    {
      goto LABEL_55;
    }
  }

  v54 = *(a3 + 104);
  if (*(v36 - 288) != v54)
  {
LABEL_161:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
    goto LABEL_162;
  }

  if (v54)
  {
    v39 = memmove(*(v36 - 280), *(a3 + 96), 8 * v54);
  }

LABEL_55:
  if (!*v102)
  {
    v55 = *(a3 + 120);
    if (!v55)
    {
      goto LABEL_61;
    }
  }

  v56 = *(a3 + 120);
  if (*(v36 - 264) != v56)
  {
LABEL_162:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
LABEL_163:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash();
    __break(1u);
  }

  if (v56)
  {
    memmove(*(v36 - 256), *(a3 + 112), 8 * v56);
  }

LABEL_61:
  v57 = re::FixedArray<re::EvaluationSRT>::init<>((v36 - 248), *v103, *(a3 + 136));
  if (!*(v36 - 248))
  {
    v59 = *(a3 + 136);
    if (!v59)
    {
      goto LABEL_67;
    }
  }

  v60 = *(a3 + 136);
  if (*(v36 - 240) != v60)
  {
    goto LABEL_163;
  }

  if (v60)
  {
    memmove(*(v36 - 232), *(a3 + 128), 24 * v60);
  }

LABEL_67:
  v61 = &v132;
  v62 = v100 - 1;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 224), *(a1 + 1984), *(a3 + 152));
  if (*(a3 + 152))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1664), &v104);
      v65 = *(a1 + 1680);
      v66 = v65 - 1;
      if (!v65)
      {
        break;
      }

      *(*(a1 + 1696) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 216);
      if (v38 <= v63)
      {
        goto LABEL_126;
      }

      *(*(v36 - 208) + 8 * v63) = v66;
      v67 = *(a3 + 152);
      if (v67 <= v63)
      {
        goto LABEL_127;
      }

      *(*(a3 + 144) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 152))
      {
        goto LABEL_73;
      }
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v67);
    _os_crash();
    __break(1u);
    goto LABEL_128;
  }

LABEL_73:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 200), *(a1 + 1984), *(a3 + 168));
  if (*(a3 + 168))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1704), &v104);
      v69 = *(a1 + 1720);
      v66 = v69 - 1;
      if (!v69)
      {
        break;
      }

      *(*(a1 + 1736) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 192);
      if (v38 <= v63)
      {
        goto LABEL_129;
      }

      *(*(v36 - 184) + 8 * v63) = v66;
      v70 = *(a3 + 168);
      if (v70 <= v63)
      {
        goto LABEL_130;
      }

      *(*(a3 + 160) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 168))
      {
        goto LABEL_79;
      }
    }

LABEL_128:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v70);
    _os_crash();
    __break(1u);
    goto LABEL_131;
  }

LABEL_79:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 176), *(a1 + 1984), *(a3 + 184));
  if (*(a3 + 184))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1744), &v104);
      v72 = *(a1 + 1760);
      v66 = v72 - 1;
      if (!v72)
      {
        break;
      }

      *(*(a1 + 1776) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 168);
      if (v38 <= v63)
      {
        goto LABEL_132;
      }

      *(*(v36 - 160) + 8 * v63) = v66;
      v73 = *(a3 + 184);
      if (v73 <= v63)
      {
        goto LABEL_133;
      }

      *(*(a3 + 176) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 184))
      {
        goto LABEL_85;
      }
    }

LABEL_131:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_132:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_133:
    re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v73);
    _os_crash();
    __break(1u);
    goto LABEL_134;
  }

LABEL_85:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 152), *(a1 + 1984), *(a3 + 200));
  if (*(a3 + 200))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1784), &v104);
      v75 = *(a1 + 1800);
      v66 = v75 - 1;
      if (!v75)
      {
        break;
      }

      *(*(a1 + 1816) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 144);
      if (v38 <= v63)
      {
        goto LABEL_135;
      }

      *(*(v36 - 136) + 8 * v63) = v66;
      v76 = *(a3 + 200);
      if (v76 <= v63)
      {
        goto LABEL_136;
      }

      *(*(a3 + 192) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 200))
      {
        goto LABEL_91;
      }
    }

LABEL_134:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_136:
    re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v76);
    _os_crash();
    __break(1u);
    goto LABEL_137;
  }

LABEL_91:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 128), *(a1 + 1984), *(a3 + 216));
  if (*(a3 + 216))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1824), &v104);
      v78 = *(a1 + 1840);
      v66 = v78 - 1;
      if (!v78)
      {
        break;
      }

      *(*(a1 + 1856) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 120);
      if (v38 <= v63)
      {
        goto LABEL_138;
      }

      *(*(v36 - 112) + 8 * v63) = v66;
      v79 = *(a3 + 216);
      if (v79 <= v63)
      {
        goto LABEL_139;
      }

      *(*(a3 + 208) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 216))
      {
        goto LABEL_97;
      }
    }

LABEL_137:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_138:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_139:
    re::internal::assertLog(6, v77, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v79);
    _os_crash();
    __break(1u);
    goto LABEL_140;
  }

LABEL_97:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 104), *(a1 + 1984), *(a3 + 232));
  if (*(a3 + 232))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v104);
      v81 = *(a1 + 1880);
      v66 = v81 - 1;
      if (!v81)
      {
        break;
      }

      *(*(a1 + 1896) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 96);
      if (v38 <= v63)
      {
        goto LABEL_141;
      }

      *(*(v36 - 88) + 8 * v63) = v66;
      v82 = *(a3 + 232);
      if (v82 <= v63)
      {
        goto LABEL_142;
      }

      *(*(a3 + 224) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 232))
      {
        goto LABEL_103;
      }
    }

LABEL_140:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_142:
    re::internal::assertLog(6, v80, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v82);
    _os_crash();
    __break(1u);
    goto LABEL_143;
  }

LABEL_103:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 80), *(a1 + 1984), *(a3 + 248));
  if (*(a3 + 248))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1904), &v104);
      v84 = *(a1 + 1920);
      v66 = v84 - 1;
      if (!v84)
      {
        break;
      }

      *(*(a1 + 1936) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 72);
      if (v38 <= v63)
      {
        goto LABEL_144;
      }

      *(*(v36 - 64) + 8 * v63) = v66;
      v85 = *(a3 + 248);
      if (v85 <= v63)
      {
        goto LABEL_145;
      }

      *(*(a3 + 240) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 248))
      {
        goto LABEL_109;
      }
    }

LABEL_143:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_145:
    re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v85);
    _os_crash();
    __break(1u);
    goto LABEL_146;
  }

LABEL_109:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>((v36 - 56), *(a1 + 1984), *(a3 + 264));
  if (*(a3 + 264))
  {
    v63 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v104);
      v87 = *(a1 + 1960);
      v66 = v87 - 1;
      if (!v87)
      {
        break;
      }

      *(*(a1 + 1976) + 32 * v66 + 8) = v62;
      v38 = *(v36 - 48);
      if (v38 <= v63)
      {
        goto LABEL_147;
      }

      *(*(v36 - 40) + 8 * v63) = v66;
      v88 = *(a3 + 264);
      if (v88 <= v63)
      {
        goto LABEL_148;
      }

      *(*(a3 + 256) + 8 * v63++) = v66;
      if (v63 >= *(a3 + 264))
      {
        goto LABEL_115;
      }
    }

LABEL_146:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 789;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_148:
    re::internal::assertLog(6, v86, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v63, v88);
    _os_crash();
    __break(1u);
    goto LABEL_149;
  }

LABEL_115:
  result = re::FixedArray<re::EvaluationSRT>::init<>((v36 - 32), *v103, *(a3 + 280));
  if (*(a3 + 280))
  {
    v90 = 0;
    v66 = 0;
    while (1)
    {
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v104);
      v91 = *(a1 + 1960) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v91) + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        break;
      }

      *(*(v36 - 16) + v90) = v91;
      v93 = *(a3 + 280);
      if (v93 <= v66)
      {
        goto LABEL_150;
      }

      *(*(a3 + 272) + v90) = v91;
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v104);
      v94 = *(a1 + 1880) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(a1 + 1664, v94) + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        goto LABEL_151;
      }

      *(*(v36 - 16) + v90 + 8) = v94;
      v96 = *(a3 + 280);
      if (v96 <= v66)
      {
        goto LABEL_152;
      }

      *(*(a3 + 272) + v90 + 8) = v94;
      LODWORD(v104) = 76;
      v105 = 0uLL;
      *(&v104 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v104);
      v97 = *(a1 + 1960) - 1;
      result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v97);
      *(result + 8) = v62;
      v61 = *(v36 - 24);
      if (v61 <= v66)
      {
        goto LABEL_153;
      }

      *(*(v36 - 16) + v90 + 16) = v97;
      v99 = *(a3 + 280);
      if (v99 <= v66)
      {
        goto LABEL_154;
      }

      *(*(a3 + 272) + v90 + 16) = v97;
      ++v66;
      v90 += 24;
      if (v66 >= *(a3 + 280))
      {
        return result;
      }
    }

LABEL_149:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_150:
    re::internal::assertLog(6, v92, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v93);
    _os_crash();
    __break(1u);
LABEL_151:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_152:
    re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v96);
    _os_crash();
    __break(1u);
LABEL_153:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v132 = 136315906;
    v133 = "operator[]";
    v134 = 1024;
    v135 = 468;
    v136 = 2048;
    v137 = v66;
    v138 = 2048;
    v139 = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, v98, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v66, v99);
    _os_crash();
    __break(1u);
    goto LABEL_155;
  }

  return result;
}

void *re::FixedArray<re::EvaluationSRT>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = 24 * a3;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 != 1)
  {
    result = memset(result, 255, v5 - 24);
    v7 = (v7 + v5 - 24);
  }

  v7[1] = -1;
  v7[2] = -1;
  *v7 = -1;
  return result;
}

uint64_t re::EvaluationTree::appendEvaluationCommand(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * a2];
  if (a4)
  {
    v8 = v7 + 10;
    v9 = a4;
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 >= 8)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_5;
      }
    }

LABEL_27:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "appendEvaluationCommand", 1008, v10, v20, v21);
    _os_crash();
    __break(1u);
  }

LABEL_5:
  v12 = *(v7 + 8);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v13 = a1 + 1904;
        LODWORD(v22) = a2;
        v23 = 0uLL;
        *(&v22 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 1904), &v22);
        v14 = 1920;
      }

      else
      {
        if (v12 != 7)
        {
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "appendEvaluationCommand", 1018, v12);
          result = _os_crash();
          __break(1u);
          return result;
        }

        v13 = a1 + 1944;
        LODWORD(v22) = a2;
        v23 = 0uLL;
        *(&v22 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v22);
        v14 = 1960;
      }
    }

    else if (v12 == 4)
    {
      v13 = a1 + 1824;
      LODWORD(v22) = a2;
      v23 = 0uLL;
      *(&v22 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1824), &v22);
      v14 = 1840;
    }

    else
    {
      v13 = a1 + 1864;
      LODWORD(v22) = a2;
      v23 = 0uLL;
      *(&v22 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v22);
      v14 = 1880;
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = a1 + 1744;
      LODWORD(v22) = a2;
      v23 = 0uLL;
      *(&v22 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1744), &v22);
      v14 = 1760;
    }

    else
    {
      v13 = a1 + 1784;
      LODWORD(v22) = a2;
      v23 = 0uLL;
      *(&v22 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1784), &v22);
      v14 = 1800;
    }
  }

  else if (v12)
  {
    v13 = a1 + 1704;
    LODWORD(v22) = a2;
    v23 = 0uLL;
    *(&v22 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 1704), &v22);
    v14 = 1720;
  }

  else
  {
    v13 = a1 + 1664;
    LODWORD(v22) = a2;
    v23 = 0uLL;
    *(&v22 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 1664), &v22);
    v14 = 1680;
  }

  v15 = *(a1 + v14);
  v16 = v15 - 1;
  if (v4)
  {
    v17 = 32 * v15 - 24;
    while (*(v13 + 16) > v16)
    {
      v18 = *a3++;
      *(*(v13 + 32) + v17) = v18;
      v17 += 8;
      if (!--v4)
      {
        return v16;
      }
    }

    v20 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v21) = 136315906;
    *(&v21 + 4) = "operator[]";
    WORD6(v21) = 1024;
    HIWORD(v21) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  return v16;
}

uint64_t re::EvaluationTree::getInputValue<re::Vector3<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    while (a1[118] > v3)
    {
      a2 = *(a1[120] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_4;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_4:
  v4 = a1[40];
  v5 = a1[38];
  v6 = (v4 + 8 * v5);
  if (v5)
  {
    v7 = a1[40];
    do
    {
      v8 = v5 >> 1;
      v9 = &v7[v5 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v5 += ~(v5 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v5);
  }

  else
  {
    v7 = a1[40];
  }

  if (v7 == v6 || *v7 != a2)
  {
    return 0;
  }

  v12 = (v7 - v4) >> 3;
  if (a1[78] <= v12)
  {
    goto LABEL_18;
  }

  *a3 = *(a1[80] + 16 * v12);
  return 1;
}

uint64_t re::EvaluationTree::getInputValue<re::Quaternion<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    while (a1[108] > v3)
    {
      a2 = *(a1[110] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_4;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_4:
  v4 = a1[30];
  v5 = a1[28];
  v6 = (v4 + 8 * v5);
  if (v5)
  {
    v7 = a1[30];
    do
    {
      v8 = v5 >> 1;
      v9 = &v7[v5 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v5 += ~(v5 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v5);
  }

  else
  {
    v7 = a1[30];
  }

  if (v7 == v6 || *v7 != a2)
  {
    return 0;
  }

  v12 = (v7 - v4) >> 3;
  if (a1[68] <= v12)
  {
    goto LABEL_18;
  }

  *a3 = *(a1[70] + 16 * v12);
  return 1;
}

unint64_t re::EvaluationTree::getCallbackData(re::EvaluationTree *this, unint64_t a2)
{
  if (*(this + 250) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 252) + 448 * a2;
}

void *re::EvaluationTree::resolveAliasRegisters(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, a3, a4);

  return re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, a3, a4);
}

void *re::EvaluationTree::resolveAliasRegistersForType<int>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4, a2, a3[1]);
  if (a3[1])
  {
    v8 = 0;
    v9 = *a3;
    v10 = a4[2];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 664) > v12)
        {
          v11 = *(*(a1 + 680) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[1] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < a3[1]);
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 3, a2, *(a3 + 24));
  if (*(a3 + 24))
  {
    v8 = 0;
    v9 = *(a3 + 16);
    v10 = a4[5];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 704) > v12)
        {
          v11 = *(*(a1 + 720) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[4] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 24));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 3, a2, *(a3 + 32));
  if (*(a3 + 32))
  {
    v8 = 0;
    v9 = *(a3 + 40);
    v10 = a4[5];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 704) > v12)
        {
          v11 = *(*(a1 + 720) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[4] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 32));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<float>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 6, a2, *(a3 + 40));
  if (*(a3 + 40))
  {
    v8 = 0;
    v9 = *(a3 + 32);
    v10 = a4[8];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 744) > v12)
        {
          v11 = *(*(a1 + 760) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[7] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 40));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 6, a2, *(a3 + 56));
  if (*(a3 + 56))
  {
    v8 = 0;
    v9 = *(a3 + 64);
    v10 = a4[8];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 744) > v12)
        {
          v11 = *(*(a1 + 760) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[7] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 56));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 9, a2, *(a3 + 56));
  if (*(a3 + 56))
  {
    v8 = 0;
    v9 = *(a3 + 48);
    v10 = a4[11];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 784) > v12)
        {
          v11 = *(*(a1 + 800) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[10] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 56));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 9, a2, *(a3 + 80));
  if (*(a3 + 80))
  {
    v8 = 0;
    v9 = *(a3 + 88);
    v10 = a4[11];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 784) > v12)
        {
          v11 = *(*(a1 + 800) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[10] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 80));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 12, a2, *(a3 + 72));
  if (*(a3 + 72))
  {
    v8 = 0;
    v9 = *(a3 + 64);
    v10 = a4[14];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 824) > v12)
        {
          v11 = *(*(a1 + 840) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[13] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 72));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 12, a2, *(a3 + 104));
  if (*(a3 + 104))
  {
    v8 = 0;
    v9 = *(a3 + 112);
    v10 = a4[14];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 824) > v12)
        {
          v11 = *(*(a1 + 840) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[13] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 104));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 15, a2, *(a3 + 88));
  if (*(a3 + 88))
  {
    v8 = 0;
    v9 = *(a3 + 80);
    v10 = a4[17];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 864) > v12)
        {
          v11 = *(*(a1 + 880) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[16] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 88));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 15, a2, *(a3 + 128));
  if (*(a3 + 128))
  {
    v8 = 0;
    v9 = *(a3 + 136);
    v10 = a4[17];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 864) > v12)
        {
          v11 = *(*(a1 + 880) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[16] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 128));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 18, a2, *(a3 + 104));
  if (*(a3 + 104))
  {
    v8 = 0;
    v9 = *(a3 + 96);
    v10 = a4[20];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 904) > v12)
        {
          v11 = *(*(a1 + 920) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[19] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 104));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 18, a2, *(a3 + 152));
  if (*(a3 + 152))
  {
    v8 = 0;
    v9 = *(a3 + 160);
    v10 = a4[20];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 904) > v12)
        {
          v11 = *(*(a1 + 920) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[19] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 152));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 21, a2, *(a3 + 120));
  if (*(a3 + 120))
  {
    v8 = 0;
    v9 = *(a3 + 112);
    v10 = a4[23];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 944) > v12)
        {
          v11 = *(*(a1 + 960) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[22] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 120));
  }

  return result;
}

{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 21, a2, *(a3 + 176));
  if (*(a3 + 176))
  {
    v8 = 0;
    v9 = *(a3 + 184);
    v10 = a4[23];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 944) > v12)
        {
          v11 = *(*(a1 + 960) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[22] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 176));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegisters(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType(a1, a2, *(a3 + 128), *(a3 + 136), a5);
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, (a3 + 144), a6);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, a3 + 144, a6);
  re::EvaluationTree::resolveAliasRegistersForType(a1, a2, *(a3 + 272), *(a3 + 280), a7);
  re::SliceRegisterTable::operator=<re::FixedRegisterTable>(a8, a4);
  v16 = a5[1];
  a8[16] = a5[2];
  a8[17] = v16;
  result = re::SliceRegisterTable::operator=<re::FixedRegisterTable>(a8 + 18, a6);
  v18 = a7[1];
  a8[34] = a7[2];
  a8[35] = v18;
  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = re::FixedArray<re::EvaluationSRT>::init<>(a5, a2, a4);
  if (a4)
  {
    v10 = 0;
    v11 = a5[2];
    while (1)
    {
      v12 = (a3 + 24 * v10);
      v13 = *v12;
      v14 = *v12 - 0x7FFFFFFFFFFFFFFFLL;
      if (v14 >= 0)
      {
        break;
      }

LABEL_6:
      if (a5[1] <= v10)
      {
        goto LABEL_20;
      }

      v15 = (v11 + 24 * v10);
      *v15 = v13;
      v16 = v12[1];
      v17 = v16 - 0x7FFFFFFFFFFFFFFFLL;
      if (v16 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (a1[108] > v17)
        {
          v16 = *(a1[110] + 8 * v17);
          v17 = v16 - 0x7FFFFFFFFFFFFFFFLL;
          if (v16 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_10;
          }
        }

LABEL_18:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_19:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_20:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_10:
      if (a5[1] <= v10)
      {
        goto LABEL_21;
      }

      v15[1] = v16;
      v18 = v12[2];
      v19 = v18 - 0x7FFFFFFFFFFFFFFFLL;
      if (v18 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (a1[118] > v19)
        {
          v18 = *(a1[120] + 8 * v19);
          v19 = v18 - 0x7FFFFFFFFFFFFFFFLL;
          if (v18 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_19;
      }

LABEL_14:
      if (a5[1] <= v10)
      {
        goto LABEL_22;
      }

      v15[2] = v18;
      if (++v10 == a4)
      {
        return result;
      }
    }

    while (a1[118] > v14)
    {
      v13 = *(a1[120] + 8 * v14);
      v14 = v13 - 0x7FFFFFFFFFFFFFFFLL;
      if (v13 - 0x7FFFFFFFFFFFFFFFLL < 0)
      {
        goto LABEL_6;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegisters(re::EvaluationTree *this, re::Allocator *a2, const re::EvaluationCallbackData *a3, re::EvaluationCallbackData *a4)
{
  *a4 = *a3;
  *(a4 + 55) = *(a3 + 55);
  re::EvaluationTree::resolveAliasRegistersForType<int>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<float>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType(this, a2, *(a3 + 27), *(a3 + 26), a4 + 25);
  re::EvaluationTree::resolveAliasRegistersForType<int>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<float>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(this, a2, a3 + 224, a4 + 28);
  v9 = *(a3 + 53);
  v8 = *(a3 + 54);

  return re::EvaluationTree::resolveAliasRegistersForType(this, a2, v8, v9, a4 + 52);
}

void *re::EvaluationTree::resolveAliasRegistersForType<int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4, a2, *(a3 + 8));
  if (*(a3 + 8))
  {
    v8 = 0;
    v9 = *(a3 + 16);
    v10 = a4[2];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        while (*(a1 + 664) > v12)
        {
          v11 = *(*(a1 + 680) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_6;
          }
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_10:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_6:
      if (a4[1] <= v8)
      {
        goto LABEL_10;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 8));
  }

  return result;
}

uint64_t *re::BucketArray<re::EvaluationBranchGroupData,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 5568, 0);
        result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(v1, v7 + 1);
    *(v1 + 4) += 2;
    return result;
  }

  v2 = *(result + 1);
  if (*(result + 16))
  {
    v4 = v2 + 1;
    if (v4 < 3)
    {
      return result;
    }

    v6 = 4;
    goto LABEL_12;
  }

  v3 = *(result + 3);
  v5 = v2 >= v3;
  v4 = v2 + 1;
  v5 = !v5 || v3 >= v4;
  if (!v5)
  {
    v6 = 2 * v3;
LABEL_12:
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    return re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(result, v8);
  }

  return result;
}

void *re::DynamicArray<re::EvaluationCallbackData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EvaluationCallbackData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1C0uLL))
        {
          v2 = 448 * a2;
          result = (*(*result + 32))(result, 448 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 448, a2);
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
        v10 = 448 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::moveConstruct<re::EvaluationCallbackData>(v11, v8);
          re::EvaluationCallbackData::~EvaluationCallbackData(v8);
          v8 = (v8 + 448);
          v11 += 56;
          v10 -= 448;
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

void *re::ObjectHelper::moveConstruct<re::EvaluationCallbackData>(void *result, void *a2)
{
  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[2];
  result[1] = a2[1];
  result[2] = v2;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  v4 = a2[5];
  result[4] = a2[4];
  result[5] = v4;
  a2[4] = 0;
  a2[5] = 0;
  v5 = result[6];
  result[6] = a2[6];
  a2[6] = v5;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  v6 = a2[8];
  result[7] = a2[7];
  result[8] = v6;
  a2[7] = 0;
  a2[8] = 0;
  v7 = result[9];
  result[9] = a2[9];
  a2[9] = v7;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  v8 = a2[11];
  result[10] = a2[10];
  result[11] = v8;
  a2[10] = 0;
  a2[11] = 0;
  v9 = result[12];
  result[12] = a2[12];
  a2[12] = v9;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  v10 = a2[14];
  result[13] = a2[13];
  result[14] = v10;
  a2[13] = 0;
  a2[14] = 0;
  v11 = result[15];
  result[15] = a2[15];
  a2[15] = v11;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  v12 = a2[17];
  result[16] = a2[16];
  result[17] = v12;
  a2[16] = 0;
  a2[17] = 0;
  v13 = result[18];
  result[18] = a2[18];
  a2[18] = v13;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  v14 = a2[20];
  result[19] = a2[19];
  result[20] = v14;
  a2[19] = 0;
  a2[20] = 0;
  v15 = result[21];
  result[21] = a2[21];
  a2[21] = v15;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  v16 = a2[23];
  result[22] = a2[22];
  result[23] = v16;
  a2[22] = 0;
  a2[23] = 0;
  v17 = result[24];
  result[24] = a2[24];
  a2[24] = v17;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  v18 = a2[26];
  result[25] = a2[25];
  result[26] = v18;
  a2[25] = 0;
  a2[26] = 0;
  v19 = result[27];
  result[27] = a2[27];
  a2[27] = v19;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  v20 = a2[29];
  result[28] = a2[28];
  result[29] = v20;
  a2[28] = 0;
  a2[29] = 0;
  v21 = result[30];
  result[30] = a2[30];
  a2[30] = v21;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  v22 = a2[32];
  result[31] = a2[31];
  result[32] = v22;
  a2[31] = 0;
  a2[32] = 0;
  v23 = result[33];
  result[33] = a2[33];
  a2[33] = v23;
  result[34] = 0;
  result[35] = 0;
  result[36] = 0;
  v24 = a2[35];
  result[34] = a2[34];
  result[35] = v24;
  a2[34] = 0;
  a2[35] = 0;
  v25 = result[36];
  result[36] = a2[36];
  a2[36] = v25;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  v26 = a2[38];
  result[37] = a2[37];
  result[38] = v26;
  a2[37] = 0;
  a2[38] = 0;
  v27 = result[39];
  result[39] = a2[39];
  a2[39] = v27;
  result[40] = 0;
  result[41] = 0;
  result[42] = 0;
  v28 = a2[41];
  result[40] = a2[40];
  result[41] = v28;
  a2[40] = 0;
  a2[41] = 0;
  v29 = result[42];
  result[42] = a2[42];
  a2[42] = v29;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  v30 = a2[44];
  result[43] = a2[43];
  result[44] = v30;
  a2[43] = 0;
  a2[44] = 0;
  v31 = result[45];
  result[45] = a2[45];
  a2[45] = v31;
  result[46] = 0;
  result[47] = 0;
  result[48] = 0;
  v32 = a2[47];
  result[46] = a2[46];
  result[47] = v32;
  a2[46] = 0;
  a2[47] = 0;
  v33 = result[48];
  result[48] = a2[48];
  a2[48] = v33;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  v34 = a2[50];
  result[49] = a2[49];
  result[50] = v34;
  a2[49] = 0;
  a2[50] = 0;
  v35 = result[51];
  result[51] = a2[51];
  a2[51] = v35;
  result[52] = 0;
  result[53] = 0;
  result[54] = 0;
  v36 = a2[53];
  result[52] = a2[52];
  result[53] = v36;
  a2[52] = 0;
  a2[53] = 0;
  v37 = result[54];
  result[54] = a2[54];
  a2[54] = v37;
  result[55] = a2[55];
  return result;
}

void *re::FixedArray<re::EvaluationRegisterId<int>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = 8 * a3;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 != 1)
  {
    result = memset(result, 255, v5 - 8);
    v7 = (v7 + v5 - 8);
  }

  *v7 = -1;
  return result;
}

uint64_t re::RigGraphOperatorDefinition::init(unint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t a5, unint64_t a6, const char **a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::StringID::operator=(a1, a3);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(v12 + 2, *a2, a4);
  v30 = a5;
  v13 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>(a1 + 5, *a2, a5);
  if (a4)
  {
    v14 = 0;
    v15 = 16;
    while (1)
    {
      v16 = a7;
      v17 = *a7;
      v18 = *(v16 + 8);
      v34 = 0;
      v35 = &str_67;
      v36 = 0;
      v37 = &str_67;
      v20 = a1[3];
      if (v20 <= v14)
      {
        break;
      }

      v21 = (a1[4] + v15);
      re::StringID::operator=((v21 - 16), &v34);
      v13 = re::StringID::operator=(v21, &v36);
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      if (v34)
      {
        if (v34)
        {
        }
      }

      ++v14;
      v15 += 32;
      a7 = (v16 + 16);
      if (a4 == v14)
      {
        a7 = (v16 + 16);
        goto LABEL_12;
      }
    }

    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v14;
    v45 = 2048;
    v46 = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v38 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v39 = 136315906;
    v40 = "operator[]";
    v41 = 1024;
    v42 = 468;
    v43 = 2048;
    v44 = v14;
    v45 = 2048;
    v46 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  if (v30)
  {
    v14 = 0;
    v22 = 16;
    do
    {
      v23 = *a7;
      v24 = a7[1];
      v34 = 0;
      v35 = &str_67;
      v36 = 0;
      v37 = &str_67;
      v16 = a1[6];
      if (v16 <= v14)
      {
        goto LABEL_28;
      }

      v26 = (a1[7] + v22);
      re::StringID::operator=((v26 - 16), &v34);
      v13 = re::StringID::operator=(v26, &v36);
      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      if (v34)
      {
        if (v34)
        {
        }
      }

      ++v14;
      v22 += 32;
      a7 += 2;
    }

    while (v30 != v14);
  }

  a1[8] = a6;
  result = re::RigEnvironment::insertRigGraphOperator(a2, a3, a1, v31);
  if ((v31[0] & 1) == 0)
  {
    result = v32;
    if (v32)
    {
      if (v33)
      {
        return (*(*v32 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ConvertQuaternionToIntrinsicEulerCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v20);
    v20 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 1;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 213), &v20);
    v20 = v14[215] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 6, &v20);
    re::DynamicArray<int>::add(v14 + 46, &v13[7]);
    v15 = (v14[10] + 8 * v14[8] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 14;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ExtractTwistFromQuaternionCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = a2[1];
    if (v8[6].n128_u8[0] == 1)
    {
      v9 = v8[1].n128_u64[0];
      LODWORD(v67) = 7;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v9 + 243), &v67);
      v67 = v9[245] - 1;
      re::DynamicArray<unsigned long>::add(v9 + 36, &v67);
      re::DynamicArray<re::Vector3<float>>::add((v9 + 76), v8 + 7);
      v10 = (v9[40] + 8 * v9[38] - 8);
      v11 = *(a1 + 8);
    }

    else
    {
      v10 = v8 + 11;
      v11 = *(a1 + 8);
    }

    v12 = v10->n128_u64[0];
    v66.n128_u32[0] = 0;
    LODWORD(v67) = 2;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v11 + 218), &v67);
    v67 = v11[220] - 1;
    re::DynamicArray<unsigned long>::add(v11 + 11, &v67);
    re::DynamicArray<float>::add((v11 + 51), &v66);
    v13 = *(v11[15] + 8 * v11[13] - 8);
    LODWORD(v67) = 46;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v7 + 1864), &v67);
    v14 = *(v7 + 1880) - 1;
    v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v7 + 1664, v14);
    *(v15 + 8) = v12;
    *(v15 + 16) = v13;
    v16 = *(a1 + 8);
    v17 = *a2;
    if ((*a2)[6].n128_u8[0] == 1)
    {
      v18 = v17[1].n128_u64[0];
      LODWORD(v67) = 5;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v18 + 233), &v67);
      v67 = v18[235] - 1;
      re::DynamicArray<unsigned long>::add(v18 + 26, &v67);
      re::DynamicArray<re::Vector3<float>>::add((v18 + 66), v17 + 7);
      v19 = (v18[30] + 8 * v18[28] - 8);
    }

    else
    {
      v19 = v17 + 11;
    }

    v20 = v19->n128_u64[0];
    LODWORD(v67) = 44;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v16 + 1744), &v67);
    v21 = *(v16 + 1760) - 1;
    v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v16 + 1664, v21);
    *(v22 + 8) = v20;
    *(v22 + 16) = v14;
    v23 = *(a1 + 8);
    v24 = *a2;
    if (v24[6].n128_u8[0] == 1)
    {
      v25 = v24[1].n128_u64[0];
      LODWORD(v67) = 5;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v25 + 233), &v67);
      v67 = v25[235] - 1;
      re::DynamicArray<unsigned long>::add(v25 + 26, &v67);
      re::DynamicArray<re::Vector3<float>>::add((v25 + 66), v24 + 7);
      v26 = (v25[30] + 8 * v25[28] - 8);
    }

    else
    {
      v26 = v24 + 11;
    }

    v27 = *(a1 + 8);
    v28 = v26->n128_u64[0];
    v66.n128_u64[0] = 0;
    v66.n128_u64[1] = 0x3F80000000000000;
    LODWORD(v67) = 5;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v27 + 233), &v67);
    v67 = v27[235] - 1;
    re::DynamicArray<unsigned long>::add(v27 + 26, &v67);
    re::DynamicArray<re::Vector3<float>>::add((v27 + 66), &v66);
    v29 = *(v27[30] + 8 * v27[28] - 8);
    LODWORD(v67) = 44;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v67);
    v30 = *(v23 + 1760) - 1;
    v31 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v30);
    *(v31 + 8) = v28;
    *(v31 + 16) = v29;
    v32 = *(a1 + 8);
    LODWORD(v67) = 59;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v32 + 1744), &v67);
    v33 = *(v32 + 1760) - 1;
    v34 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v32 + 1664, v33);
    *(v34 + 8) = v21;
    *(v34 + 16) = v30;
    v35 = *(a1 + 8);
    v66.n128_u32[0] = -1077342245;
    LODWORD(v67) = 2;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v35 + 218), &v67);
    v67 = v35[220] - 1;
    re::DynamicArray<unsigned long>::add(v35 + 11, &v67);
    re::DynamicArray<float>::add((v35 + 51), &v66);
    v36 = *(v35[15] + 8 * v35[13] - 8);
    LODWORD(v67) = 63;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v35 + 213), &v67);
    v37 = v35[215] - 1;
    v38 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>((v35 + 208), v37);
    *(v38 + 8) = v33;
    *(v38 + 16) = v36;
    v39 = *(a1 + 8);
    v66.n128_u32[0] = 1070141403;
    LODWORD(v67) = 2;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v39 + 218), &v67);
    v67 = v39[220] - 1;
    re::DynamicArray<unsigned long>::add(v39 + 11, &v67);
    re::DynamicArray<float>::add((v39 + 51), &v66);
    v40 = *(v39[15] + 8 * v39[13] - 8);
    LODWORD(v67) = 61;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v39 + 213), &v67);
    v41 = v39[215] - 1;
    v42 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>((v39 + 208), v41);
    *(v42 + 8) = v33;
    *(v42 + 16) = v40;
    v43 = *(a1 + 8);
    v66.n128_u32[0] = 1078530011;
    LODWORD(v67) = 2;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v43 + 218), &v67);
    v67 = v43[220] - 1;
    re::DynamicArray<unsigned long>::add(v43 + 11, &v67);
    re::DynamicArray<float>::add((v43 + 51), &v66);
    v44 = *(v43[15] + 8 * v43[13] - 8);
    v45 = *(a1 + 8);
    LODWORD(v67) = 49;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v45 + 1744), &v67);
    v46 = *(v45 + 1760) - 1;
    v47 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v45 + 1664, v46);
    *(v47 + 8) = v33;
    *(v47 + 16) = v44;
    v48 = *(a1 + 8);
    LODWORD(v67) = 50;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v48 + 1744), &v67);
    v49 = *(v48 + 1760) - 1;
    v50 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v48 + 1664, v49);
    *(v50 + 8) = v33;
    *(v50 + 16) = v44;
    v51 = *(a1 + 8);
    LODWORD(v67) = 60;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v51 + 1744), &v67);
    v52 = *(v51 + 1760) - 1;
    v53 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v51 + 1664, v52);
    v53[1] = v37;
    v53[2] = v46;
    v53[3] = v33;
    v54 = *(a1 + 8);
    LODWORD(v67) = 60;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v54 + 1744), &v67);
    v55 = *(v54 + 1760) - 1;
    v56 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v54 + 1664, v55);
    v56[1] = v41;
    v56[2] = v49;
    v56[3] = v52;
    if (a5)
    {
      v58 = *a4;
      v59 = *(a1 + 8);
      v66.n128_u32[0] = 0x40000000;
      LODWORD(v67) = 2;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v59 + 218), &v67);
      v67 = v59[220] - 1;
      re::DynamicArray<unsigned long>::add(v59 + 11, &v67);
      re::DynamicArray<float>::add((v59 + 51), &v66);
      v60 = *(v59[15] + 8 * v59[13] - 8);
      LODWORD(v67) = 51;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v59 + 218), &v67);
      v61 = v59[220] - 1;
      v62 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>((v59 + 208), v61);
      *(v62 + 8) = v55;
      *(v62 + 16) = v60;
      *(v58 + 96) = 2;
      *(v58 + 176) = v61;
      return 1;
    }
  }

  re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ConstructQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), &v13[7]);
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 45;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v20);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GetVector3ComponentCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 22;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructVector3Compile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v24);
    v24 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v24);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v24);
    v24 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v24);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (*(v17 + 96) == 1)
  {
    v18 = *(v17 + 16);
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v24);
    v24 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 11, &v24);
    re::DynamicArray<float>::add((v18 + 51), (v17 + 112));
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = (v17 + 176);
  }

  v20 = *v19;
  LODWORD(v24) = 47;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v24);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::GetVector2ComponentCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v20);
    v20 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v10 + 71, v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v20);
    v20 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v14 + 71, (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 23;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 48;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v20);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConvertIntrinsicEulerToQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 1;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 213), &v20);
    v20 = v14[215] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 6, &v20);
    re::DynamicArray<int>::add(v14 + 46, &v13[7]);
    v15 = (v14[10] + 8 * v14[8] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 13;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v20);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SlerpCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v24) = 5;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v24);
    v24 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v24) = 5;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v24);
    v24 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 26, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v24);
    v24 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 11, &v24);
    re::DynamicArray<float>::add((v18 + 51), &v17[7]);
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v24) = 12;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v24);
  v21 = *(v8 + 1880) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::LerpVector3Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v24);
    v24 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v24);
    v24 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v24) = 2;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v24);
    v24 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 11, &v24);
    re::DynamicArray<float>::add((v18 + 51), &v17[7]);
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v24) = 11;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v24);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::LerpFloatCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 8);
  v40 = 1065353216;
  LODWORD(v41) = 2;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v41);
  v41 = v10[220] - 1;
  re::DynamicArray<unsigned long>::add(v10 + 11, &v41);
  *&v12 = re::DynamicArray<float>::add((v10 + 51), &v40);
  if (a3 <= 2)
  {
    re::internal::assertLog(6, v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a3);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v13 = *(v10[15] + 8 * v10[13] - 8);
  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v41) = 2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 218), &v41);
    v41 = v15[220] - 1;
    re::DynamicArray<unsigned long>::add(v15 + 11, &v41);
    re::DynamicArray<float>::add((v15 + 51), (v14 + 112));
    v16 = (v15[15] + 8 * v15[13] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  v17 = *v16;
  v18 = *(a1 + 8);
  LODWORD(v41) = 50;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v18 + 1744), &v41);
  v19 = *(v18 + 1760) - 1;
  v20 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v18 + 1664, v19);
  *(v20 + 8) = v13;
  *(v20 + 16) = v17;
  if (!a5)
  {
    goto LABEL_14;
  }

  v22 = *a4;
  v23 = *(a1 + 8);
  v24 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v25 = *(v24 + 16);
    LODWORD(v41) = 2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v25 + 218), &v41);
    v41 = v25[220] - 1;
    re::DynamicArray<unsigned long>::add(v25 + 11, &v41);
    re::DynamicArray<float>::add((v25 + 51), (v24 + 112));
    v26 = (v25[15] + 8 * v25[13] - 8);
  }

  else
  {
    v26 = (v24 + 176);
  }

  v27 = *v26;
  LODWORD(v41) = 51;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v41);
  v28 = *(v23 + 1760) - 1;
  v29 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v28);
  *(v29 + 8) = v19;
  *(v29 + 16) = v27;
  v30 = *(a1 + 8);
  v31 = a2[1];
  if (*(v31 + 96) == 1)
  {
    v32 = *(v31 + 16);
    LODWORD(v41) = 2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v32 + 218), &v41);
    v41 = v32[220] - 1;
    re::DynamicArray<unsigned long>::add(v32 + 11, &v41);
    re::DynamicArray<float>::add((v32 + 51), (v31 + 112));
    v33 = (v32[15] + 8 * v32[13] - 8);
  }

  else
  {
    v33 = (v31 + 176);
  }

  v34 = *v33;
  LODWORD(v41) = 51;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v30 + 1744), &v41);
  v35 = *(v30 + 1760) - 1;
  v36 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v30 + 1664, v35);
  *(v36 + 8) = v17;
  *(v36 + 16) = v34;
  LODWORD(v41) = 49;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v41);
  v37 = *(v23 + 1760) - 1;
  v38 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v37);
  *(v38 + 8) = v28;
  *(v38 + 16) = v35;
  *(v22 + 96) = 2;
  *(v22 + 176) = v37;
  return 1;
}

uint64_t re::LerpSRTCompile(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8);
  if (a3 == 1)
  {
LABEL_22:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (a3 <= 2)
  {
LABEL_23:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v12 = *(a2 + 16);
  if (*(v12 + 96) == 1)
  {
    v13 = *(v12 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v13 + 218), &v26);
    v26 = v13[220] - 1;
    re::DynamicArray<unsigned long>::add(v13 + 11, &v26);
    re::DynamicArray<float>::add((v13 + 51), (v12 + 112));
    v14 = (v13[15] + 8 * v13[13] - 8);
  }

  else
  {
    v14 = (v12 + 176);
  }

  re::EvaluationTree::lerp(v9, &v32, v31, *v14, v34);
  if (!a5)
  {
    goto LABEL_24;
  }

  v16 = *a4;
  v32 = "scale";
  v33 = 5;
  re::RigDataValue::attributeValue(v16, &v32, &v26);
  v17 = v27;
  v18 = v34[0];
  *(v27 + 96) = 2;
  *(v17 + 176) = v18;
  if (v26 & 1) == 0 && v29 && (v30)
  {
    (*(*v29 + 40))();
  }

  v19 = *a4;
  v32 = "rotation";
  v33 = 8;
  re::RigDataValue::attributeValue(v19, &v32, &v26);
  v20 = v27;
  v21 = v34[1];
  *(v27 + 96) = 2;
  *(v20 + 176) = v21;
  if (v26 & 1) == 0 && v29 && (v30)
  {
    (*(*v29 + 40))();
  }

  v22 = *a4;
  v32 = "translation";
  v33 = 11;
  re::RigDataValue::attributeValue(v22, &v32, &v26);
  v23 = v27;
  v24 = v34[2];
  *(v27 + 96) = 2;
  *(v23 + 176) = v24;
  if (v26 & 1) == 0 && v29 && (v30)
  {
    (*(*v29 + 40))();
  }

  return 1;
}

void re::anonymous namespace::rigDataValueToSRT(re::_anonymous_namespace_ *this, const re::RigDataValue *a2)
{
  v26[0] = "scale";
  v26[1] = 5;
  re::RigDataValue::attributeValue(a2, v26, v27);
  v4 = v28;
  if (v28[6].n128_u8[0] == 1)
  {
    v5 = v28[1].n128_u64[0];
    LODWORD(v21) = 7;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v5 + 243), &v21);
    v21 = v5[245] - 1;
    re::DynamicArray<unsigned long>::add(v5 + 36, &v21);
    re::DynamicArray<re::Vector3<float>>::add((v5 + 76), v4 + 7);
    v6 = (v5[40] + 8 * v5[38] - 8);
  }

  else
  {
    v6 = v28 + 11;
  }

  *this = v6->n128_u64[0];
  v20[0] = "rotation";
  v20[1] = 8;
  re::RigDataValue::attributeValue(a2, v20, &v21);
  v7 = v22;
  if (v22[6].n128_u8[0] == 1)
  {
    v8 = v22[1].n128_u64[0];
    LODWORD(v15) = 5;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v15);
    v15 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 26, &v15);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v22 + 11;
  }

  *(this + 1) = v9->n128_u64[0];
  v14[0] = "translation";
  v14[1] = 11;
  re::RigDataValue::attributeValue(a2, v14, &v15);
  v11 = v16;
  if (v16[6].n128_u8[0] == 1)
  {
    v12 = v16[1].n128_u64[0];
    LODWORD(v32[0]) = 7;
    memset(&v32[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v12 + 243), v32);
    v32[0] = v12[245] - 1;
    re::DynamicArray<unsigned long>::add(v12 + 36, v32);
    v10 = re::DynamicArray<re::Vector3<float>>::add((v12 + 76), v11 + 7);
    v13 = (v12[40] + 8 * v12[38] - 8);
  }

  else
  {
    v13 = v16 + 11;
  }

  *(this + 2) = v13->n128_u64[0];
  if (v15 & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))(v10);
  }

  if (v21 & 1) == 0 && v24 && (v25)
  {
    (*(*v24 + 40))(v10);
  }

  if (v27[0] & 1) == 0 && v29 && (v30)
  {
    (*(*v29 + 40))(v29, v31, v10);
  }
}

uint64_t re::ComponentLerpVector3Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v24);
    v24 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v24);
    v24 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v24);
    v24 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v24) = 10;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v24);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::CrossVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 15;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DotVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 22;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DotVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v20);
    v20 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v10 + 71, v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v20);
    v20 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v14 + 71, (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 23;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformPositionCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 4;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v20);
    v20 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 21, &v20);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 43;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformDirectionByMatrix4x4Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 4;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v20);
    v20 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 21, &v20);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 42;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformDirectionByMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 3;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v20);
    v20 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 16, &v20);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 41;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix4x4Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v22) = 7;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v22);
    v22 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v22);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = &v9[11];
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v22) = 5;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v22);
    v22 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 26, &v22);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = &v13[11];
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v22) = 7;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v22);
    v22 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 36, &v22);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = &v17[11];
  }

  v20 = re::EvaluationTree::constructMatrix4x4(v8, v12, v16, *v19);
  *(v7 + 96) = 2;
  *(v7 + 176) = v20;
  return 1;
}

uint64_t re::ConstructMatrix4x4FromMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 3;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v20);
    v20 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 16, &v20);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 40;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1824), &v20);
  v17 = *(v8 + 1840) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix4x4FromSRTCompile(uint64_t a1, const re::RigDataValue **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a5)
  {
    if (a3)
    {
      v5 = *a4;
      v6 = *(a1 + 8);
      v7 = re::EvaluationTree::constructMatrix4x4(v6, v9[0], v9[1], v9[2]);
      *(v5 + 96) = 2;
      *(v5 + 176) = v7;
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ConstructSRTFromMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v9 = *(v8 + 16);
    LODWORD(v27) = 4;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v9 + 228), &v27);
    v27 = v9[230] - 1;
    re::DynamicArray<unsigned long>::add(v9 + 21, &v27);
    re::DynamicArray<re::Matrix4x4<float>>::add((v9 + 61), v8 + 112);
    v10 = (v9[25] + 8 * v9[23] - 8);
  }

  else
  {
    v10 = (v8 + 176);
  }

  v11 = *v10;
  v12 = *(a1 + 8);
  LODWORD(v27) = 37;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v12 + 1944), &v27);
  v13 = *(v12 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v12 + 1664, v13) + 8) = v11;
  Rotation = re::EvaluationTree::extractRotation(*(a1 + 8), v11);
  Scale = re::EvaluationTree::extractScale(*(a1 + 8), v11);
  if (!a5)
  {
    goto LABEL_20;
  }

  v17 = Scale;
  v18 = *a4;
  v25 = "scale";
  v26 = 5;
  re::RigDataValue::attributeValue(v18, &v25, &v27);
  v19 = v28;
  *(v28 + 96) = 2;
  *(v19 + 176) = v17;
  if (v27 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  v20 = *a4;
  v25 = "rotation";
  v26 = 8;
  re::RigDataValue::attributeValue(v20, &v25, &v27);
  v21 = v28;
  *(v28 + 96) = 2;
  *(v21 + 176) = Rotation;
  if (v27 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  v22 = *a4;
  v25 = "translation";
  v26 = 11;
  re::RigDataValue::attributeValue(v22, &v25, &v27);
  v23 = v28;
  *(v28 + 96) = 2;
  *(v23 + 176) = v13;
  if (v27 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  return 1;
}

uint64_t re::ConstructMatrix3x3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v20);
    v20 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 39;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v20);
  v17 = *(v8 + 1800) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix3x3FromVector3sCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v24);
    v24 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v24);
    v24 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v24) = 7;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v24);
    v24 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add(v18 + 36, &v24);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v24) = 38;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v24);
  v21 = *(v8 + 1800) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::ExtractTranslationMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 4;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v13);
    v13 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 21, &v13);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 37;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1944), &v13);
  v11 = *(v6 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::ExtractScaleMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v12[0]) = 4;
    memset(&v12[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), v12);
    v12[0] = v8[230] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 21, v12);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  Scale = re::EvaluationTree::extractScale(v6, *v9);
  *(v5 + 96) = 2;
  *(v5 + 176) = Scale;
  return 1;
}

uint64_t re::ExtractRotationMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v12[0]) = 4;
    memset(&v12[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), v12);
    v12[0] = v8[230] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 21, v12);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  Rotation = re::EvaluationTree::extractRotation(v6, *v9);
  *(v5 + 96) = 2;
  *(v5 + 176) = Rotation;
  return 1;
}

uint64_t re::ExtractRotationMatrix3x3Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 3;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v13);
    v13 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 16, &v13);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 35;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v13);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::ExtractMinorMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 4;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v13);
    v13 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 21, &v13);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 34;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v13);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::TransposeMatrix3x3Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 3;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v13);
    v13 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 16, &v13);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 33;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v13);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::PassthroughRigHierarchyCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (a3)
    {
      v5 = *(*a2 + 184);
      v6 = *(*a4 + 184);
      v7 = *v5;
      *(v6 + 16) = *(v5 + 2);
      *v6 = v7;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 24), v5 + 24);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 72), v5 + 72);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v6 + 120, v5 + 15);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v6 + 160, v5 + 20);
      re::DynamicArray<re::StringID>::operator=(v6 + 200, v5 + 25);
      re::DynamicArray<unsigned long>::operator=(v6 + 240, v5 + 30);
      re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v6 + 280, v5 + 35);
      re::DynamicArray<unsigned long>::operator=(v6 + 320, v5 + 40);
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::GetBindPoseRigHierarchyCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  re::RigHierarchy::getBindPoseHierarchy(*(*a2 + 184), a2, &v9);
  v6 = *(v5 + 184);
  v7 = v9;
  *(v6 + 16) = v10;
  *v6 = v7;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 24), v11);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 72), v12);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v6 + 120, v13);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v6 + 160, v14);
  re::DynamicArray<re::StringID>::operator=(v6 + 200, v15);
  re::DynamicArray<unsigned long>::operator=(v6 + 240, v16);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v6 + 280, v19);
  re::DynamicArray<unsigned long>::operator=(v6 + 320, v22);
  if (v22[0])
  {
    if (v24)
    {
      (*(*v22[0] + 40))();
    }

    v24 = 0;
    memset(v22, 0, sizeof(v22));
    ++v23;
  }

  if (v19[0])
  {
    if (v21)
    {
      (*(*v19[0] + 40))();
    }

    v21 = 0;
    memset(v19, 0, sizeof(v19));
    ++v20;
  }

  if (v16[0])
  {
    if (v18)
    {
      (*(*v16[0] + 40))();
    }

    v18 = 0;
    memset(v16, 0, sizeof(v16));
    ++v17;
  }

  re::DynamicArray<re::StringID>::deinit(v15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v14);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v13);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v12);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11);
  return 1;
}

uint64_t re::AddVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 8;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::AddVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v20);
    v20 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v10 + 71, v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v20);
    v20 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v14 + 71, (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 9;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v20);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::AddFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 49;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 31;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v20);
    v20 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v10 + 71, v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 6;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v20);
    v20 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 31, &v20);
    re::DynamicArray<unsigned long>::add(v14 + 71, (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 32;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v20);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 50;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DivideQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v20);
    v20 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v20);
    v20 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 16;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v20);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DivideFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 52;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v20);
    v20 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 11, &v20);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 51;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v20);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConjugateQuaternionCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v13) = 5;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v13);
    v13 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 26, &v13);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v13) = 18;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v13);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertQuaternionCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v13) = 5;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v13);
    v13 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 26, &v13);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v13) = 21;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v13);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertMatrix3x3Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 3;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v13);
    v13 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 16, &v13);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 19;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v13);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertMatrix4x4Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v13) = 4;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v13);
    v13 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 21, &v13);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v13) = 20;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1824), &v13);
  v11 = *(v6 + 1840) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::NormalizeVector3Compile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v13) = 7;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 243), &v13);
    v13 = v8[245] - 1;
    re::DynamicArray<unsigned long>::add(v8 + 36, &v13);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 76), v7 + 7);
    v9 = (v8[40] + 8 * v8[38] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v13) = 29;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1944), &v13);
  v11 = *(v6 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::RotateVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v20);
    v20 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 30;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v20);
    v20 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 5;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v20);
    v20 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 26, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 24;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v20);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 3;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v20);
    v20 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 16, &v20);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 3;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 223), &v20);
    v20 = v14[225] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 16, &v20);
    re::DynamicArray<re::Matrix3x3<float>>::add((v14 + 56), v13 + 112);
    v15 = (v14[20] + 8 * v14[18] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 27;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v20);
  v17 = *(v8 + 1800) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyMatrix4x4Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v20) = 4;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v20);
    v20 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 21, &v20);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v20) = 4;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 228), &v20);
    v20 = v14[230] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 21, &v20);
    re::DynamicArray<re::Matrix4x4<float>>::add((v14 + 61), v13 + 112);
    v15 = (v14[25] + 8 * v14[23] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v20) = 28;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1824), &v20);
  v17 = *(v8 + 1840) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v20);
    v20 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 25;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ScaleVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v20) = 7;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v20);
    v20 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add(v10 + 36, &v20);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v20) = 2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v20);
    v20 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add(v14 + 11, &v20);
    re::DynamicArray<float>::add((v14 + 51), &v13[7]);
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v20) = 26;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v20);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ClampCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  re::RigGraphCallbackBuilder::init(v20, *a1);
  *&v19.var0 = 223945442;
  v19.var1 = "value";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, *a2);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 216228;
  v19.var1 = "min";
  if (a3 == 1)
  {
    goto LABEL_19;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, a2[1]);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 215752;
  v19.var1 = "max";
  if (a3 <= 2)
  {
    goto LABEL_20;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, a2[2]);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 0x188223202;
  v19.var1 = "output";
  if (!a5)
  {
    goto LABEL_21;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v20, &v19, *a4);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v20, a1, re::ClampCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke, 0);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v22 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v20 + 8);
  return 1;
}

uint64_t re::ClampVector3Compile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  re::RigGraphCallbackBuilder::init(v20, *a1);
  *&v19.var0 = 223945442;
  v19.var1 = "value";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, *a2);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 216228;
  v19.var1 = "min";
  if (a3 == 1)
  {
    goto LABEL_19;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, a2[1]);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 215752;
  v19.var1 = "max";
  if (a3 <= 2)
  {
    goto LABEL_20;
  }

  re::RigGraphCallbackBuilder::addInputParam(v20, &v19, a2[2]);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 0x188223202;
  v19.var1 = "output";
  if (!a5)
  {
    goto LABEL_21;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v20, &v19, *a4);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v20, a1, re::ClampVector3Compile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke, 0);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v22 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v20 + 8);
  return 1;
}

uint64_t re::AdditiveBlendSRTCompile(uint64_t a1, const re::RigDataValue **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(a1 + 8);
  if (a3 == 1)
  {
LABEL_18:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  re::EvaluationTree::additiveBlend(v9, &v22, &v26, v28);
  if (!a5)
  {
LABEL_19:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v12 = *a4;
  v26 = "scale";
  v27 = 5;
  re::RigDataValue::attributeValue(v12, &v26, &v22);
  v13 = v23;
  v14 = v28[0];
  *(v23 + 96) = 2;
  *(v13 + 176) = v14;
  if (v22 & 1) == 0 && v24 && (v25)
  {
    (*(*v24 + 40))();
  }

  v15 = *a4;
  v26 = "rotation";
  v27 = 8;
  re::RigDataValue::attributeValue(v15, &v26, &v22);
  v16 = v23;
  v17 = v28[1];
  *(v23 + 96) = 2;
  *(v16 + 176) = v17;
  if (v22 & 1) == 0 && v24 && (v25)
  {
    (*(*v24 + 40))();
  }

  v18 = *a4;
  v26 = "translation";
  v27 = 11;
  re::RigDataValue::attributeValue(v18, &v26, &v22);
  v19 = v23;
  v20 = v28[2];
  *(v23 + 96) = 2;
  *(v19 + 176) = v20;
  if (v22 & 1) == 0 && v24 && (v25)
  {
    (*(*v24 + 40))();
  }

  return 1;
}

uint64_t re::LocalSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointScale(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointRotation(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointTranslation(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointTransform(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointScale(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointRotation(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v14[0] = v8;
    v14[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointTranslation(v7, v14, v15);
    v10 = v15[0];
    if (v15[0] != 1)
    {
      if (v17)
      {
        if (v18)
        {
          (*(*v17 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v16;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}