BOOL re::BlendSpaceBuilder::build(void)::$_0::operator()(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  if (!a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  return *a2 < *a4;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56));
  v7 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56));
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
      if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
    if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v9);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a2, a3);
  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a4 + 40), *(a4 + 56), *(a3 + 40), *(a3 + 56)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a3, a4);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
      }
    }
  }

  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a5 + 40), *(a5 + 56), *(a4 + 40), *(a4 + 56)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a4, a5);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a4 + 40), *(a4 + 56), *(a3 + 40), *(a3 + 56)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a3, a4);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
        if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
        {

          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a2 - 64);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 168), *(a1 + 184)))
        {
          return 1;
        }

        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 128, a2 - 64);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 168), *(a1 + 184), *(a1 + 104), *(a1 + 120)))
        {
          return 1;
        }

        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 64, a1 + 128);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 104), *(a1 + 120), *(a1 + 40), *(a1 + 56)))
        {
          return 1;
        }

        v5 = a1 + 64;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128, a1 + 192, a2 - 64);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 40), *(a1 + 56)))
      {
        v5 = a2 - 64;
LABEL_6:
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, v5);
      }

      return 1;
    }
  }

  v6 = a1 + 128;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128);
  v7 = a1 + 192;
  v8 = 1;
  if (a1 + 192 != a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v7 + 40), *(v7 + 56), *(v6 + 40), *(v6 + 56)))
      {
        v11 = *(v7 + 8);
        v18[0] = *v7;
        v18[1] = v11;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v7 + 32);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v23 = *(v7 + 56);
        *(v7 + 56) = 0;
        ++*(v7 + 48);
        v12 = v9;
        v22 = 1;
        while (1)
        {
          v13 = a1 + v12;
          re::StringID::operator=((a1 + v12 + 192), (a1 + v12 + 128));
          *(v13 + 208) = *(v13 + 144);
          re::DynamicArray<re::RigComponentConstraint>::operator=(v13 + 216, v13 + 152);
          if (v12 == -128)
          {
            break;
          }

          v12 -= 64;
          if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v21 + 1), v23, *(v13 + 104), *(v13 + 120)))
          {
            v14 = (a1 + v12 + 192);
            goto LABEL_20;
          }
        }

        v14 = a1;
LABEL_20:
        v15 = re::StringID::operator=(v14, v18);
        *(v15 + 4) = v19;
        re::DynamicArray<re::RigComponentConstraint>::operator=(v13 + 152, &v20);
        v16 = v20;
        if (v20)
        {
          if (v23)
          {
            v16 = (*(*v20 + 40))();
          }

          v23 = 0;
          v21 = 0uLL;
          v20 = 0;
          ++v22;
        }

        if (v18[0])
        {
          if (v18[0])
          {
          }
        }

        if (++v10 == 8)
        {
          return v7 + 64 == a2;
        }
      }

      v6 = v7;
      v9 += 64;
      v7 += 64;
      if (v7 == a2)
      {
        return 1;
      }
    }
  }

  return v8;
}

void std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v6[0] = *a1;
  v6[1] = v3;
  *a1 = 0;
  *(a1 + 8) = &str_67;
  v7 = *(a1 + 16);
  v4 = a1 + 24;
  v8 = *(a1 + 24);
  *(a1 + 24) = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = *(a1 + 56);
  *(a1 + 56) = 0;
  ++*(a1 + 48);
  v10 = 1;
  *(re::StringID::operator=(a1, a2) + 4) = *(a2 + 16);
  re::DynamicArray<re::RigComponentConstraint>::operator=(v4, a2 + 24);
  re::StringID::operator=(a2, v6);
  *(a2 + 16) = v7;
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 24, &v8);
  v5 = v8;
  if (v8)
  {
    if (v11)
    {
      v5 = (*(*v8 + 40))();
    }

    v11 = 0;
    v9 = 0uLL;
    v8 = 0;
    ++v10;
  }

  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

void *re::internal::penetrationCorrectionCallback(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, uint64_t a9)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  v9 = a4;
  if (a4 == 1)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if (a4 <= 2)
  {
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (a4 == 3)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_20;
  }

  re::internal::getSRTFromRDV((a3 + 108), &v55);
  if (v9 <= 4)
  {
LABEL_20:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  re::internal::getSRTFromRDV((a3 + 144), &v53);
  if (!a8)
  {
    goto LABEL_21;
  }

  _Q7 = v56;
  _S3 = HIDWORD(v54);
  __asm { FMLA            S4, S3, V7.S[3] }

  v51 = vextq_s8(vuzp1q_s32(_Q7, _Q7), v56, 0xCuLL);
  v52 = v56;
  v50 = vnegq_f32(v56);
  v47 = v57;
  v48 = v55;
  __asm { FMOV            V1.4S, #-1.0 }

  CoreIKGenericSolverSetWorldToSolverTransform();
  v23 = a3[68];
  if (v23)
  {
    v24 = 0;
    _S8 = v52.i32[3];
    while (1)
    {
      v26 = re::RigDataValue::attributeValue((a3 + 36), v24);
      v59 = 0;
      v60 = &str_67;
      v61 = 0u;
      v27 = re::RigDataValue::attributeValue(v26, 0);
      re::StringID::operator=(&v59, (v27 + 224));
      v28 = re::RigDataValue::attributeValue(v26, 1uLL);
      v61 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v28, v29);
      v30 = re::RigDataValue::attributeValue(v26, 2uLL);
      v62 = *re::RigDataValue::getRuntimeValue<float>(v30, v31);
      v32 = re::RigDataValue::attributeValue((a3 + 72), v24);
      re::internal::getSRTFromRDV(v32, v63);
      v49 = HIDWORD(v64);
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v50), v65, v51);
      v34 = vaddq_f32(v33, v33);
      v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v50), v35, v51);
      v37 = vaddq_f32(v47, vmulq_f32(v48, vaddq_f32(vaddq_f32(v65, vmulq_laneq_f32(v35, v52, 3)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL))));
      v38 = vmulq_f32(v61, v61);
      *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
      *v38.f32 = vrsqrte_f32(v39);
      *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
      v40 = vmulq_n_f32(v61, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
      v74 = vsubq_f32(v37, vmulq_n_f32(v40, v62 * 0.5));
      v75 = v40;
      *&v76 = v62;
      re::internal::RayCaster::cast((a9 + 48), &v74, v63);
      v41 = *(a9 + 176);
      if (v41 <= v24)
      {
        break;
      }

      _V2.S[3] = v49;
      __asm { FMLA            S0, S8, V2.S[3] }

      MEMORY[0x1E6903A00](*a9, *(*(a9 + 192) + 8 * v24));
      v44 = CoreIKGenericConstraintSetTargetParameters();
      if (v59)
      {
        if (v59)
        {
        }
      }

      if (v23 == ++v24)
      {
        goto LABEL_14;
      }
    }

    v58 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    v69 = 789;
    v70 = 2048;
    v71 = v24;
    v72 = 2048;
    v73 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

LABEL_14:
  re::internal::transferPose(a3, a9 + 16);
  v45 = CoreIKGenericSolverSolve();
  return re::internal::updateOutputBasedOnSolveResult(v45, a3, (a9 + 16), a7);
}

uint64_t re::internal::penetrationCorrectionCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_48;
  }

  if (a3 == 1)
  {
LABEL_48:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash();
    __break(1u);
    goto LABEL_49;
  }

  if (a3 <= 2)
  {
LABEL_49:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash();
    __break(1u);
    goto LABEL_50;
  }

  if (a3 == 3)
  {
LABEL_50:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash();
    __break(1u);
    goto LABEL_51;
  }

  if (!a5)
  {
LABEL_51:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_52:
    *&v52.var0 = 0;
    memset(v41, 0, 80);
    v10 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    *&v38[14] = 797;
    *&v38[18] = 2048;
    *&v38[20] = 0;
    *&v38[28] = 2048;
    *&v38[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    if (__cxa_guard_acquire(&qword_1EE191600))
    {
      _MergedGlobals_26 = re::introspect_CollisionWorld(0);
      __cxa_guard_release(&qword_1EE191600);
    }

    goto LABEL_36;
  }

  v10 = a1;
  v11 = a2[1];
  v5 = *(*a2 + 184);
  v7 = a2[2];
  v9 = a2[3];
  v37 = *a4;
  v43 = 158357486;
  v44 = "SRT[]";
  re::internal::makeRigDataValue(a1, &v43, v47);
  if (v43)
  {
    if (v43)
    {
    }
  }

  v13 = *(v7 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = re::RigDataValue::attributeValue(v7, i);
      v42[0] = "jointName";
      v42[1] = 9;
      re::RigDataValue::attributeValue(v15, v42, &v43);
      v16 = v44;
      if (v43 & 1) == 0 && v45 && (v46)
      {
        (*(*v45 + 40))();
      }

      re::internal::makeModelSpaceJointPoseRDV(v10, v5, *(v16 + 29), &v43);
      re::DynamicArray<re::RigDataValue>::add(&v48, &v43);
      re::RigDataValue::~RigDataValue(&v43);
    }
  }

  v8 = *(v11 + 232);
  v17 = strlen(v8);
  v6 = MEMORY[0x1E6903780](v8, v17);
  re::internal::makePoseFromRig(v10, v5, v6, &v43);
  v18 = MEMORY[0x1E6903C40](v6);
  re::internal::makePose(v10, v18, v42);
  if (!*(v5 + 27))
  {
    goto LABEL_52;
  }

  re::internal::makeLocalSpaceJointPoseRDV(v10, v5, *(*(v5 + 29) + 8), v41);
  v40 = 0;
  memset(v38, 0, 36);
  memset(&v38[40], 0, 32);
  v39 = 0;
  v8 = *v10;
  re::RigGraphCallbackBuilder::init(v38, *v10);
  *&v52.var0 = 0x76F1BA5D1EB6;
  v52.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v38, &v52, &v43);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0x3D8860E9FFCEA9D0;
  v52.var1 = "TaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v38, &v52, v7);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0xC55D73256F227AE8;
  v52.var1 = "ModelSpaceJointTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v38, &v52, v47);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0xB88303615935B0FCLL;
  v52.var1 = "ModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v38, &v52, v9);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0xF2EC5C4DD6027FE2;
  v52.var1 = "SolverToModelTransform";
  re::RigGraphCallbackBuilder::addInputParam(v38, &v52, v41);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0x10498EC9357CACLL;
  v52.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v38, &v52, v42);
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  v9 = *(*(v10 + 16) + 96);
  if ((atomic_load_explicit(&qword_1EE191600, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_36:
  v25 = _MergedGlobals_26;
  re::StringID::invalid(&v52);
  v26 = (*(*v9 + 16))(v9, v25, &v52);
  v27 = v26;
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  v28 = (*(*v8 + 32))(v8, 208, 16);
  *v28 = CoreIKGenericSolverCreate();
  *(v28 + 8) = v8;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 48) = v27;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 68) = 0xFFFFFFFF00000001;
  *(v28 + 108) = 0u;
  *(v28 + 136) = 0u;
  *(v28 + 124) = 0u;
  *(v28 + 92) = 0u;
  *(v28 + 76) = 0u;
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 144) = 0;
  *(v28 + 192) = 0;
  *(v28 + 160) = 0;
  *(v28 + 184) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;
  JointCount = CoreIKGenericSolverGetJointCount();
  v36 = v8;
  re::FixedArray<CoreIKTransform>::init<>((v28 + 16), v8, JointCount);
  *(v28 + 176) = 0;
  ++*(v28 + 184);
  v30 = *(v7 + 32);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      v32 = re::RigDataValue::attributeValue(v7, j);
      v49 = "jointName";
      v50 = 9;
      re::RigDataValue::attributeValue(v32, &v49, &v52);
      v33 = *(v52.var1 + 29);
      if (*&v52.var0 & 1) == 0 && v54 && (p_var1)
      {
        (*(*v54 + 40))(v54, v56);
      }

      strlen(v33);
      *&v52.var0 = CoreIKGenericSolverGetConstraintIndex();
      re::DynamicArray<unsigned long>::add((v28 + 160), &v52);
    }
  }

  v49 = &unk_1F5CB2BA0;
  v50 = v36;
  v51 = &v49;
  *&v52.var0 = v28;
  p_var1 = &v52.var1;
  v52.var1 = &unk_1F5CB2BA0;
  v53 = v36;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v49);
  re::RigGraphCallbackBuilder::buildCallbackData(v38, v10, re::internal::penetrationCorrectionCallback, &v52);
  v34 = re::internal::bindCallbackOutputToNodeOutputPose(v5, v42, v6, v10, v37);
  MEMORY[0x1E69037D0](v6, v34);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v52);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v38[48]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v38[8]);
  re::RigDataValue::~RigDataValue(v41);
  re::RigDataValue::~RigDataValue(v42);
  re::RigDataValue::~RigDataValue(&v43);
  re::RigDataValue::~RigDataValue(v47);
  return 1;
}

void re::internal::registerPenetrationCorrectionSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E871A470;
  v11[3] = *&off_1E871A480;
  v11[4] = xmmword_1E871A490;
  v11[0] = xmmword_1E871A450;
  v11[1] = *&off_1E871A460;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::penetrationCorrectionCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB2BA0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EEclEOSK_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKGenericSolverDestroy();
    re::DynamicArray<unsigned long>::deinit(v2 + 160);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 96);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 96);
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_43CoreIKPenetrationCorrectionSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperINS_14CollisionWorldEEEPKNS_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::EvaluationModelSingleThread::init(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v140 = v3;
  v277 = *MEMORY[0x1E69E9840];
  v10 = *(v8 + 8);
  *&v233 = v6;
  v163 = v6;
  v164 = v11;
  bzero(&v165, 0x288uLL);
  for (i = 0; i != 3120; i += 40)
  {
    v13 = &v163 + i;
    *(v13 + 87) = 0;
    *(v13 + 83) = 0;
    *(v13 + 85) = 0;
    *(v13 + 84) = 0;
    *(v13 + 172) = 0;
  }

  v14 = 0;
  v196 = 0;
  v192 = 0;
  v194 = 0;
  v193 = 0;
  v195 = 0;
  v197 = v10;
  v198 = 0;
  v200 = 0;
  v199 = 0;
  v201 = 0;
  v202 = 0u;
  v203 = 0u;
  v204 = 0;
  v205 = 0u;
  v206 = 0u;
  v207 = 0;
  v208 = 0u;
  v209 = 0u;
  v210 = 0;
  v213 = 0;
  v212 = 0u;
  v211 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0;
  v219 = 0;
  v218 = 0u;
  v217 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0;
  v228 = 0;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v224 = 0u;
  v223 = 0u;
  do
  {
    v15 = &v163 + v14 * 8;
    v191[v14 + 2] = v7;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v191[v14 + 2], 0);
    ++LODWORD(v191[v14 + 5]);
    v14 += 5;
  }

  while (v14 != 390);
  v192 = v7;
  re::DynamicArray<re::EvaluationCommand>::setCapacity(&v192, 0);
  ++v195;
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(&v198, &v233);
  __src = 0;
  v159[1] = 0;
  v160 = 0;
  v161 = 0;
  v159[0] = v7;
  re::DynamicArray<re::EvaluationCommand>::setCapacity(v159, 0);
  ++v161;
  v158 = 0;
  v155[1] = 0;
  v156 = 0;
  v157 = 0;
  v155[0] = v7;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v155, 0);
  ++v157;
  v154 = 0;
  v151[1] = 0;
  v152 = 0;
  v153 = 0;
  v151[0] = v7;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v151, 0);
  ++v153;
  if (v146[0] != 1)
  {
    *v140 = v146[0];
    *(v140 + 8) = v147;
    *(v140 + 24) = v148;
    *(v140 + 48) = v150;
    *(v140 + 32) = v149;
    v150 = 0;
    v148 = 0;
    v149 = 0uLL;
LABEL_88:
    if (v148 && (v149 & 1) != 0)
    {
      (*(*v148 + 40))();
    }

    goto LABEL_171;
  }

  v16 = v160;
  re::FixedArray<re::EvaluationCommand>::init<>((v9 + 712), v7, v160);
  v19 = __src;
  if (!*(v9 + 712))
  {
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (*(v9 + 720) != v16)
  {
    goto LABEL_291;
  }

  if (v16)
  {
    memmove(*(v9 + 728), v19, 4 * v16);
  }

LABEL_12:
  re::FixedArray<unsigned long>::init<>((v9 + 760), v7, v156);
  *&v233 = v158;
  *(&v233 + 1) = v156;
  re::FixedArray<unsigned long>::operator=((v9 + 760), &v233);
  re::FixedArray<unsigned long>::init<>((v9 + 736), v7, v152);
  *&v233 = v154;
  *(&v233 + 1) = v152;
  re::FixedArray<unsigned long>::operator=((v9 + 736), &v233);
  re::FixedArray<int>::init<>((v9 + 16), v163, *(&v223 + 1));
  v20 = v166;
  if (v166)
  {
    v22 = *(v9 + 24);
    v21 = *(v9 + 32);
    v15 = v200;
    v23 = v202;
    v24 = (v167 + 56);
    do
    {
      if (*(v24 - 16) == 3)
      {
        v1 = *v24;
        if (*v24 != -1)
        {
          v25 = *(v24 - 1);
          if (v15 <= v25)
          {
            goto LABEL_271;
          }

          if (v22 <= v1)
          {
LABEL_272:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v1;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_273:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v25;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_274:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v1;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_275:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v25;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_276:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v1;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_277:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v15;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_278:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v22;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_279:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v15;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_280:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v22;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_281:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v15;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_282:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v22;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_283:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v15;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_284:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v22;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_285:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 797;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v15;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_286:
            v232[0] = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v233 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v254[0]) = 136315906;
            *(v254 + 4) = "operator[]";
            WORD2(v254[1]) = 1024;
            *(&v254[1] + 6) = 468;
            WORD1(v254[2]) = 2048;
            *(&v254[2] + 4) = v22;
            WORD2(v254[3]) = 2048;
            *(&v254[3] + 6) = v1;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_287;
          }

          *(v21 + 4 * v1) = *(v23 + 4 * v25);
        }
      }

      v24 += 8;
      --v20;
    }

    while (v20);
  }

  re::FixedArray<int>::init<>((v9 + 40), v163, v224);
  v26 = v168;
  if (v168)
  {
    v22 = *(v9 + 48);
    v27 = *(v9 + 56);
    v15 = *(&v203 + 1);
    v28 = v205;
    v29 = (v169 + 56);
    do
    {
      if (*(v29 - 16) == 3)
      {
        v1 = *v29;
        if (*v29 != -1)
        {
          v25 = *(v29 - 1);
          if (v15 <= v25)
          {
            goto LABEL_273;
          }

          if (v22 <= v1)
          {
            goto LABEL_274;
          }

          *(v27 + 4 * v1) = *(v28 + 4 * v25);
        }
      }

      v29 += 8;
      --v26;
    }

    while (v26);
  }

  re::FixedArray<int>::init<>((v9 + 64), v163, *(&v224 + 1));
  v30 = v170;
  if (v170)
  {
    v22 = *(v9 + 72);
    v31 = *(v9 + 80);
    v15 = *(&v206 + 1);
    v32 = v208;
    v33 = (v171 + 56);
    do
    {
      if (*(v33 - 16) == 3)
      {
        v1 = *v33;
        if (*v33 != -1)
        {
          v25 = *(v33 - 1);
          if (v15 <= v25)
          {
            goto LABEL_275;
          }

          if (v22 <= v1)
          {
            goto LABEL_276;
          }

          *(v31 + 4 * v1) = *(v32 + 4 * v25);
        }
      }

      v33 += 8;
      --v30;
    }

    while (v30);
  }

  re::FixedArray<re::Matrix3x3<float>>::init<>((v9 + 88), v163, v225);
  v34 = v172;
  if (v172)
  {
    v35 = 0;
    for (j = 0; j < v34; ++j)
    {
      if (*(v173 + v35 + 40) == 3)
      {
        v22 = *(v173 + v35 + 56);
        if (v22 != -1)
        {
          v15 = *(v173 + v35 + 48);
          v1 = *(&v209 + 1);
          if (*(&v209 + 1) <= v15)
          {
            goto LABEL_277;
          }

          v1 = *(v9 + 96);
          if (v1 <= v22)
          {
            goto LABEL_278;
          }

          v37 = (v211 + 48 * v15);
          v38 = (*(v9 + 104) + 48 * v22);
          v39 = *v37;
          v40 = v37[2];
          v38[1] = v37[1];
          v38[2] = v40;
          *v38 = v39;
          v34 = v172;
        }
      }

      v35 += 64;
    }
  }

  re::FixedArray<re::Matrix4x4<float>>::init<>((v9 + 112), v163, *(&v225 + 1));
  v41 = v174;
  if (v174)
  {
    v42 = 0;
    for (k = 0; k < v41; ++k)
    {
      if (*(v175 + v42 + 40) == 3)
      {
        v22 = *(v175 + v42 + 56);
        if (v22 != -1)
        {
          v15 = *(v175 + v42 + 48);
          v1 = *(&v212 + 1);
          if (*(&v212 + 1) <= v15)
          {
            goto LABEL_279;
          }

          v1 = *(v9 + 120);
          if (v1 <= v22)
          {
            goto LABEL_280;
          }

          v44 = (v214 + (v15 << 6));
          v45 = (*(v9 + 128) + (v22 << 6));
          v46 = *v44;
          v47 = v44[1];
          v48 = v44[3];
          v45[2] = v44[2];
          v45[3] = v48;
          *v45 = v46;
          v45[1] = v47;
          v41 = v174;
        }
      }

      v42 += 64;
    }
  }

  re::FixedArray<re::Quaternion<float>>::init<>((v9 + 136), v163, v226);
  v49 = v176;
  if (v176)
  {
    v50 = 0;
    for (m = 0; m < v49; ++m)
    {
      if (*(v177 + v50 + 40) == 3)
      {
        v22 = *(v177 + v50 + 56);
        if (v22 != -1)
        {
          v15 = *(v177 + v50 + 48);
          v1 = *(&v215 + 1);
          if (*(&v215 + 1) <= v15)
          {
            goto LABEL_281;
          }

          v1 = *(v9 + 144);
          if (v1 <= v22)
          {
            goto LABEL_282;
          }

          *(*(v9 + 152) + 16 * v22) = *(v217 + 16 * v15);
          v49 = v176;
        }
      }

      v50 += 64;
    }
  }

  re::FixedArray<re::Vector2<float>>::init<>((v9 + 160), v163, *(&v226 + 1));
  v52 = v178;
  if (v178)
  {
    v53 = 0;
    for (n = 0; n < v52; ++n)
    {
      if (*(v179 + v53 + 40) == 3)
      {
        v22 = *(v179 + v53 + 56);
        if (v22 != -1)
        {
          v15 = *(v179 + v53 + 48);
          v1 = *(&v218 + 1);
          if (*(&v218 + 1) <= v15)
          {
            goto LABEL_283;
          }

          v1 = *(v9 + 168);
          if (v1 <= v22)
          {
            goto LABEL_284;
          }

          *(*(v9 + 176) + 8 * v22) = *(v220 + 8 * v15);
          v52 = v178;
        }
      }

      v53 += 64;
    }
  }

  re::FixedArray<re::Vector3<float>>::init<>((v9 + 184), v163, v227);
  v56 = v181;
  if (v181)
  {
    v57 = 0;
    for (ii = 0; ii < v56; ++ii)
    {
      if (*(v182 + v57 + 40) == 3)
      {
        v22 = *(v182 + v57 + 56);
        if (v22 != -1)
        {
          v15 = *(v182 + v57 + 48);
          v1 = *(&v221 + 1);
          if (*(&v221 + 1) <= v15)
          {
            goto LABEL_285;
          }

          v1 = *(v9 + 192);
          if (v1 <= v22)
          {
            goto LABEL_286;
          }

          *(*(v9 + 200) + 16 * v22) = *(v223 + 16 * v15);
          v56 = v181;
        }
      }

      v57 += 64;
    }
  }

  v59 = v163;
  v15 = *(&v227 + 1);
  *(v9 + 208) = v163;
  *(v9 + 216) = v15;
  if (v15)
  {
    if (v15 >= 0x92492492492493)
    {
      goto LABEL_292;
    }

    v60 = (*(*v59 + 32))(v59, 448 * v15, 8);
    *(v9 + 224) = v60;
    if (!v60)
    {
LABEL_293:
      re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_294;
    }

    v61 = v60;
    if (v15 != 1)
    {
      bzero(v60, 448 * v15 - 448);
      v61 += 28 * v15 - 28;
    }

    v61[26] = 0u;
    v61[27] = 0u;
    v61[24] = 0u;
    v61[25] = 0u;
    v61[22] = 0u;
    v61[23] = 0u;
    v61[20] = 0u;
    v61[21] = 0u;
    v61[18] = 0u;
    v61[19] = 0u;
    v61[16] = 0u;
    v61[17] = 0u;
    v61[14] = 0u;
    v61[15] = 0u;
    v61[12] = 0u;
    v61[13] = 0u;
    v61[10] = 0u;
    v61[11] = 0u;
    v61[8] = 0u;
    v61[9] = 0u;
    v61[6] = 0u;
    v61[7] = 0u;
    v61[4] = 0u;
    v61[5] = 0u;
    v61[2] = 0u;
    v61[3] = 0u;
    *v61 = 0u;
    v61[1] = 0u;
    v15 = *(&v227 + 1);
    v62 = v163;
    *(v9 + 232) = v163;
    *(v9 + 240) = v15;
    if (v15)
    {
      if (v15 >= 0x97B425ED097B43)
      {
LABEL_296:
        re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 432, v15);
        _os_crash();
        __break(1u);
LABEL_297:
        re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }

      v63 = (*(*v62 + 32))(v62, 432 * v15, 8);
      *(v9 + 248) = v63;
      if (!v63)
      {
        goto LABEL_297;
      }

      v64 = v63;
      if (v15 != 1)
      {
        bzero(v63, 432 * v15 - 432);
        v64 += 27 * v15 - 27;
      }

      v64[25] = 0u;
      v64[26] = 0u;
      v64[23] = 0u;
      v64[24] = 0u;
      v64[21] = 0u;
      v64[22] = 0u;
      v64[19] = 0u;
      v64[20] = 0u;
      v64[17] = 0u;
      v64[18] = 0u;
      v64[15] = 0u;
      v64[16] = 0u;
      v64[13] = 0u;
      v64[14] = 0u;
      v64[11] = 0u;
      v64[12] = 0u;
      v64[9] = 0u;
      v64[10] = 0u;
      v64[7] = 0u;
      v64[8] = 0u;
      v64[5] = 0u;
      v64[6] = 0u;
      v64[3] = 0u;
      v64[4] = 0u;
      v64[1] = 0u;
      v64[2] = 0u;
      *v64 = 0u;
    }
  }

  else
  {
    *(v9 + 232) = v59;
    *(v9 + 240) = 0;
  }

  v65 = v184;
  if (v184)
  {
    v66 = 0;
    v15 = 0;
    v1 = 448;
    v25 = 432;
    do
    {
      v67 = v185;
      v22 = *(v185 + v66 + 896);
      if (v22 != -1)
      {
        v68 = *(v9 + 216);
        if (v68 <= v22)
        {
          goto LABEL_264;
        }

        v68 = (v185 + v66);
        v69 = (*(v9 + 224) + 448 * v22);
        *v69 = *(v185 + v66 + 448);
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 1), v67 + v66 + 456);
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 4), (v68 + 60));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 7), (v68 + 63));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 10), (v68 + 66));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 13), (v68 + 69));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 16), (v68 + 72));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 19), (v68 + 75));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 22), (v68 + 78));
        re::FixedArray<re::EvaluationSRT>::operator=((v69 + 25), (v68 + 81));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 28), (v68 + 84));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 31), (v68 + 87));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 34), (v68 + 90));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 37), (v68 + 93));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 40), (v68 + 96));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 43), (v68 + 99));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 46), (v68 + 102));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 49), (v68 + 105));
        re::FixedArray<re::EvaluationSRT>::operator=((v69 + 52), (v68 + 108));
        v69[55] = v68[111];
        v2 = *(v9 + 240);
        if (v2 <= v22)
        {
LABEL_265:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 468;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v22;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_266:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 468;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v22;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_267:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 468;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v22;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_268:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 468;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v22;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v68;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_269:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 476;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v25;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_270:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 468;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v22;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_271:
          v232[0] = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v254[0]) = 136315906;
          *(v254 + 4) = "operator[]";
          WORD2(v254[1]) = 1024;
          *(&v254[1] + 6) = 797;
          WORD1(v254[2]) = 2048;
          *(&v254[2] + 4) = v25;
          WORD2(v254[3]) = 2048;
          *(&v254[3] + 6) = v15;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_272;
        }

        re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>((*(v9 + 248) + 432 * v22), v163, v68 + 57);
        v2 = *(v9 + 240);
        if (v2 <= v22)
        {
          goto LABEL_266;
        }

        re::FixedArray<re::GenericSRT<float>>::init<>((*(v9 + 248) + 432 * v22 + 192), v163, *(v67 + v66 + 656));
        v2 = *(v9 + 240);
        if (v2 <= v22)
        {
          goto LABEL_267;
        }

        re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>((*(v9 + 248) + 432 * v22 + 216), v163, v68 + 84);
        v68 = *(v9 + 240);
        if (v68 <= v22)
        {
          goto LABEL_268;
        }

        re::FixedArray<re::GenericSRT<float>>::init<>((*(v9 + 248) + 432 * v22 + 408), v163, *(v67 + v66 + 872));
        v65 = v184;
      }

      ++v15;
      v66 += 904;
    }

    while (v15 < v65);
  }

  v70 = v163;
  v15 = v228;
  *(v9 + 256) = v163;
  *(v9 + 264) = v15;
  if (v15)
  {
    if (v15 < 0x8FB823EE08FB83)
    {
      v71 = (*(*v70 + 32))(v70, 456 * v15, 8);
      *(v9 + 272) = v71;
      if (v71)
      {
        v73 = v71;
        if (v15 != 1)
        {
          bzero(v71, 456 * v15 - 456);
          v73 += 456 * v15 - 456;
        }

        *(v73 + 56) = 0;
        *(v73 + 26) = 0u;
        *(v73 + 27) = 0u;
        *(v73 + 24) = 0u;
        *(v73 + 25) = 0u;
        *(v73 + 22) = 0u;
        *(v73 + 23) = 0u;
        *(v73 + 20) = 0u;
        *(v73 + 21) = 0u;
        *(v73 + 18) = 0u;
        *(v73 + 19) = 0u;
        *(v73 + 16) = 0u;
        *(v73 + 17) = 0u;
        *(v73 + 14) = 0u;
        *(v73 + 15) = 0u;
        *(v73 + 12) = 0u;
        *(v73 + 13) = 0u;
        *(v73 + 10) = 0u;
        *(v73 + 11) = 0u;
        *(v73 + 8) = 0u;
        *(v73 + 9) = 0u;
        *(v73 + 6) = 0u;
        *(v73 + 7) = 0u;
        *(v73 + 4) = 0u;
        *(v73 + 5) = 0u;
        *(v73 + 2) = 0u;
        *(v73 + 3) = 0u;
        *v73 = 0u;
        *(v73 + 1) = 0u;
        goto LABEL_108;
      }

      goto LABEL_295;
    }

LABEL_294:
    re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 456, v15);
    _os_crash();
    __break(1u);
LABEL_295:
    re::internal::assertLog(4, v72, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_296;
  }

LABEL_108:
  v142 = v187;
  if (!v187)
  {
    *v140 = 1;
    goto LABEL_171;
  }

  v25 = 0;
  v141 = v9;
  do
  {
    v22 = v187;
    if (v187 <= v25)
    {
      goto LABEL_269;
    }

    v74 = &v188[31 * v25];
    v144 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](v164 + 1608, v25);
    v22 = v74[30];
    if (v22 != -1)
    {
      v15 = *(v9 + 264);
      if (v15 <= v22)
      {
        goto LABEL_270;
      }

      v75 = (*(v9 + 272) + 456 * v22);
      v2 = v74[4];
      re::FixedArray<unsigned long>::init<>(v75, v163, v2);
      v77 = v163;
      v75[3] = v163;
      v75[4] = v2;
      v145 = v75;
      v143 = v25;
      if (v2)
      {
        if (v2 < 0x155555555555556)
        {
          v78 = (*(*v77 + 32))(v77, 192 * v2, 8);
          v75[5] = v78;
          if (v78)
          {
            v80 = v78;
            if (v2 == 1)
            {
              v78[10] = 0u;
              v78[11] = 0u;
              v78[8] = 0u;
              v78[9] = 0u;
              v78[6] = 0u;
              v78[7] = 0u;
              v78[4] = 0u;
              v78[5] = 0u;
              v78[2] = 0u;
              v78[3] = 0u;
              *v78 = 0u;
              v78[1] = 0u;
              v81 = v163;
              v82 = v145;
              v145[6] = v163;
              v145[7] = 1;
              goto LABEL_120;
            }

            bzero(v78, 192 * v2 - 192);
            v84 = &v80[12 * v2 - 12];
            v84[10] = 0u;
            v84[11] = 0u;
            v84[8] = 0u;
            v84[9] = 0u;
            v84[6] = 0u;
            v84[7] = 0u;
            v84[4] = 0u;
            v84[5] = 0u;
            v84[2] = 0u;
            v84[3] = 0u;
            *v84 = 0u;
            v84[1] = 0u;
            v81 = v163;
            v82 = v145;
            v145[6] = v163;
            v145[7] = v2;
            if (v2 < 0x5397829CBC14E6)
            {
LABEL_120:
              v85 = (*(*v81 + 32))(v81, 784 * v2, 8);
              v82[8] = v85;
              if (v85)
              {
                v87 = v85;
                v88 = v2 - 1;
                if (v2 != 1)
                {
                  v15 = v85;
                  do
                  {
                    *v87 = &unk_1F5CB2E90;
                    *(v87 + 8) = -1;
                    bzero((v87 + 16), 0x300uLL);
                    v87 += 784;
                    v15 += 784;
                    --v88;
                  }

                  while (v88);
                }

                *v87 = &unk_1F5CB2E90;
                *(v87 + 8) = -1;
                bzero((v87 + 16), 0x300uLL);
                v68 = 0;
                v90 = 0;
                v25 = 176;
                v91 = 168;
                while (1)
                {
                  v22 = v74[4];
                  if (v22 <= v90)
                  {
                    break;
                  }

                  v1 = v74;
                  v74 = v74[5];
                  v92 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v144, v90);
                  v15 = v145[1];
                  if (v15 <= v90)
                  {
                    goto LABEL_261;
                  }

                  v22 = v92;
                  v93 = *v92;
                  v15 = v74 + v25;
                  *(v145[2] + 8 * v90) = *(v74 + v25 - 176);
                  v74 = v145[4];
                  if (v74 <= v90)
                  {
                    goto LABEL_262;
                  }

                  v94 = v145[5] + v91;
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 168, v15 - 168);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 144, v15 - 144);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 120, v15 - 120);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 96, v15 - 96);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 72, v15 - 72);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 48, v15 - 48);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 24, v15 - 24);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94, v15);
                  v95 = *(v22 + 64);
                  v232[0] = *(v22 + 80);
                  v232[1] = v95;
                  v96 = *(v22 + 104);
                  v232[2] = *(v22 + 120);
                  v232[3] = v96;
                  v97 = *(v22 + 144);
                  v232[4] = *(v22 + 160);
                  v232[5] = v97;
                  v98 = *(v22 + 184);
                  v232[6] = *(v22 + 200);
                  v232[7] = v98;
                  v99 = *(v22 + 224);
                  v232[8] = *(v22 + 240);
                  v232[9] = v99;
                  v100 = *(v22 + 264);
                  v232[10] = *(v22 + 280);
                  v232[11] = v100;
                  v101 = *(v22 + 304);
                  v232[12] = *(v22 + 320);
                  v232[13] = v101;
                  v102 = *(v22 + 344);
                  v232[14] = *(v22 + 360);
                  v232[15] = v102;
                  v262 = 0u;
                  v263 = 0u;
                  v260 = 0u;
                  v261 = 0u;
                  v258 = 0u;
                  v259 = 0u;
                  v256 = 0u;
                  v257 = 0u;
                  v255 = 0u;
                  memset(v254, 0, sizeof(v254));
                  v103 = 0uLL;
                  v252 = 0u;
                  v253 = 0u;
                  v250 = 0u;
                  v251 = 0u;
                  v248 = 0u;
                  v249 = 0u;
                  v246 = 0u;
                  v247 = 0u;
                  v244 = 0u;
                  v245 = 0u;
                  v104 = v93[123];
                  *&v233 = v93[125];
                  *(&v233 + 1) = v104;
                  v105 = v93[128];
                  *&v234 = v93[130];
                  *(&v234 + 1) = v105;
                  v106 = v93[133];
                  *&v235 = v93[135];
                  *(&v235 + 1) = v106;
                  v107 = v93[138];
                  *&v236 = v93[140];
                  *(&v236 + 1) = v107;
                  v108 = v93[143];
                  *&v237 = v93[145];
                  *(&v237 + 1) = v108;
                  v109 = v93[148];
                  v238 = v93[150];
                  v239 = v109;
                  v110 = v93[153];
                  v240 = v93[155];
                  v241 = v110;
                  v111 = v93[158];
                  v242 = v93[160];
                  v243 = v111;
                  *&v245 = v254[2];
                  *(&v245 + 1) = v254[1];
                  *&v246 = v254[5];
                  *(&v246 + 1) = v254[4];
                  *&v247 = v256;
                  *(&v247 + 1) = *(&v255 + 1);
                  *&v248 = *(&v257 + 1);
                  *(&v248 + 1) = v257;
                  *&v249 = v259;
                  *(&v249 + 1) = *(&v258 + 1);
                  *&v250 = *(&v260 + 1);
                  *(&v250 + 1) = v260;
                  *&v251 = v262;
                  *(&v251 + 1) = *(&v261 + 1);
                  *&v252 = *(&v263 + 1);
                  *(&v252 + 1) = v263;
                  v22 = v145[7];
                  if (v22 <= v90)
                  {
                    goto LABEL_263;
                  }

                  *(v68 + v145[8] + 8) = v197;
                  re::EvaluationModelSingleThread::init(v229);
                  v74 = v1;
                  if ((v229[0] & 1) == 0 && v230)
                  {
                    if (BYTE8(v230))
                    {
                      (*(*v230 + 40))();
                    }

                    v231 = 0u;
                    v230 = 0u;
                  }

                  if (*(&v262 + 1))
                  {
                    if (v263)
                    {
                      (*(**(&v262 + 1) + 40))();
                      v263 = 0uLL;
                    }

                    *(&v262 + 1) = 0;
                  }

                  if (v261)
                  {
                    if (*(&v261 + 1))
                    {
                      (*(*v261 + 40))();
                      *(&v261 + 1) = 0;
                      *&v262 = 0;
                    }

                    *&v261 = 0;
                  }

                  if (*(&v259 + 1))
                  {
                    if (v260)
                    {
                      (*(**(&v259 + 1) + 40))();
                      v260 = 0uLL;
                    }

                    *(&v259 + 1) = 0;
                  }

                  if (v258)
                  {
                    if (*(&v258 + 1))
                    {
                      (*(*v258 + 40))();
                      *(&v258 + 1) = 0;
                      *&v259 = 0;
                    }

                    *&v258 = 0;
                  }

                  if (*(&v256 + 1))
                  {
                    if (v257)
                    {
                      (*(**(&v256 + 1) + 40))();
                      v257 = 0uLL;
                    }

                    *(&v256 + 1) = 0;
                  }

                  if (v255)
                  {
                    if (*(&v255 + 1))
                    {
                      (*(*v255 + 40))();
                      *(&v255 + 1) = 0;
                      *&v256 = 0;
                    }

                    *&v255 = 0;
                  }

                  if (v254[3])
                  {
                    if (v254[4])
                    {
                      (*(*v254[3] + 40))();
                      v254[4] = 0;
                      v254[5] = 0;
                    }

                    v254[3] = 0;
                  }

                  if (v254[0] && v254[1])
                  {
                    (*(*v254[0] + 40))();
                  }

                  ++v90;
                  v68 += 98;
                  v91 += 192;
                  v25 += 200;
                  if (v2 == v90)
                  {
                    goto LABEL_166;
                  }
                }

                v232[0] = 0;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v233 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v254[0]) = 136315906;
                *(v254 + 4) = "operator[]";
                WORD2(v254[1]) = 1024;
                *(&v254[1] + 6) = 476;
                WORD1(v254[2]) = 2048;
                *(&v254[2] + 4) = v90;
                WORD2(v254[3]) = 2048;
                *(&v254[3] + 6) = v22;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_261:
                v232[0] = 0;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v233 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v254[0]) = 136315906;
                *(v254 + 4) = "operator[]";
                WORD2(v254[1]) = 1024;
                *(&v254[1] + 6) = 468;
                WORD1(v254[2]) = 2048;
                *(&v254[2] + 4) = v90;
                WORD2(v254[3]) = 2048;
                *(&v254[3] + 6) = v15;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_262:
                v232[0] = 0;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v233 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v254[0]) = 136315906;
                *(v254 + 4) = "operator[]";
                WORD2(v254[1]) = 1024;
                *(&v254[1] + 6) = 468;
                WORD1(v254[2]) = 2048;
                *(&v254[2] + 4) = v90;
                WORD2(v254[3]) = 2048;
                *(&v254[3] + 6) = v74;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_263:
                v232[16] = 0;
                v15 = v254;
                v275 = v103;
                v276 = v103;
                v273 = v103;
                v274 = v103;
                v272 = v103;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v264 = 136315906;
                v265 = "operator[]";
                v266 = 1024;
                v267 = 468;
                v268 = 2048;
                v269 = v90;
                v270 = 2048;
                v271 = v22;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_264:
                v232[0] = 0;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v233 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v254[0]) = 136315906;
                *(v254 + 4) = "operator[]";
                WORD2(v254[1]) = 1024;
                *(&v254[1] + 6) = 468;
                WORD1(v254[2]) = 2048;
                *(&v254[2] + 4) = v22;
                WORD2(v254[3]) = 2048;
                *(&v254[3] + 6) = v68;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_265;
              }

LABEL_290:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash();
              __break(1u);
LABEL_291:
              re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
              _os_crash();
              __break(1u);
LABEL_292:
              re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 448, v15);
              _os_crash();
              __break(1u);
              goto LABEL_293;
            }

LABEL_289:
            re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 784, v2);
            _os_crash();
            __break(1u);
            goto LABEL_290;
          }

LABEL_288:
          re::internal::assertLog(4, v79, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
          goto LABEL_289;
        }

LABEL_287:
        re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 192, v2);
        _os_crash();
        __break(1u);
        goto LABEL_288;
      }

      v75[6] = v77;
      v75[7] = 0;
LABEL_166:
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 9), (v74 + 6));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 12), (v74 + 9));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 15), (v74 + 12));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 18), (v74 + 15));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 21), (v74 + 18));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 24), (v74 + 21));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 27), (v74 + 24));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v145 + 30), (v74 + 27));
      v112 = v144[49];
      *&v233 = v144[51];
      *(&v233 + 1) = v112;
      re::FixedArray<int>::operator=((v145 + 33), &v233);
      v113 = v144[54];
      *&v233 = v144[56];
      *(&v233 + 1) = v113;
      re::FixedArray<int>::operator=((v145 + 36), &v233);
      v114 = v144[59];
      *&v233 = v144[61];
      *(&v233 + 1) = v114;
      re::FixedArray<int>::operator=((v145 + 39), &v233);
      v115 = v144[64];
      *&v233 = v144[66];
      *(&v233 + 1) = v115;
      re::FixedArray<re::Matrix3x3<float>>::operator=((v145 + 42), &v233);
      v116 = v144[69];
      *&v233 = v144[71];
      *(&v233 + 1) = v116;
      re::FixedArray<re::Matrix4x4<float>>::operator=((v145 + 45), &v233);
      v117 = v144[74];
      *&v233 = v144[76];
      *(&v233 + 1) = v117;
      re::FixedArray<re::Quaternion<float>>::operator=((v145 + 48), &v233);
      v118 = v144[79];
      *&v233 = v144[81];
      *(&v233 + 1) = v118;
      re::FixedArray<re::Vector2<float>>::operator=((v145 + 51), &v233);
      v119 = v144[84];
      *&v233 = v144[86];
      *(&v233 + 1) = v119;
      re::FixedArray<re::Vector3<float>>::operator=((v145 + 54), &v233);
      v9 = v141;
      v25 = v143;
    }

    ++v25;
  }

  while (v25 != v142);
  v120 = v146[0];
  *v140 = 1;
  if ((v120 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_171:
  if (v151[0] && v154)
  {
    (*(*v151[0] + 40))();
  }

  if (v155[0] && v158)
  {
    (*(*v155[0] + 40))();
  }

  if (v159[0] && __src)
  {
    (*(*v159[0] + 40))();
  }

  if (*(&v220 + 1))
  {
    if (v223)
    {
      (*(**(&v220 + 1) + 40))();
    }

    *&v223 = 0;
    v221 = 0uLL;
    *(&v220 + 1) = 0;
    ++v222;
  }

  if (*(&v217 + 1))
  {
    if (v220)
    {
      (*(**(&v217 + 1) + 40))();
    }

    *&v220 = 0;
    v218 = 0uLL;
    *(&v217 + 1) = 0;
    ++v219;
  }

  if (*(&v214 + 1))
  {
    if (v217)
    {
      (*(**(&v214 + 1) + 40))();
    }

    *&v217 = 0;
    v215 = 0uLL;
    *(&v214 + 1) = 0;
    ++v216;
  }

  if (*(&v211 + 1))
  {
    if (v214)
    {
      (*(**(&v211 + 1) + 40))();
    }

    *&v214 = 0;
    v212 = 0uLL;
    *(&v211 + 1) = 0;
    ++v213;
  }

  if (*(&v208 + 1))
  {
    if (v211)
    {
      (*(**(&v208 + 1) + 40))();
    }

    *&v211 = 0;
    v209 = 0uLL;
    *(&v208 + 1) = 0;
    ++v210;
  }

  if (*(&v205 + 1))
  {
    if (v208)
    {
      (*(**(&v205 + 1) + 40))();
    }

    *&v208 = 0;
    v206 = 0uLL;
    *(&v205 + 1) = 0;
    ++v207;
  }

  if (*(&v202 + 1))
  {
    if (v205)
    {
      (*(**(&v202 + 1) + 40))();
    }

    *&v205 = 0;
    v203 = 0uLL;
    *(&v202 + 1) = 0;
    ++v204;
  }

  if (v198)
  {
    if (v202)
    {
      (*(*v198 + 40))();
    }

    *&v202 = 0;
    v199 = 0;
    v200 = 0;
    v198 = 0;
    ++v201;
  }

  if (v192)
  {
    if (v196)
    {
      (*(*v192 + 40))();
    }

    v196 = 0;
    v193 = 0;
    v194 = 0;
    v192 = 0;
    ++v195;
  }

  v121 = 3120;
  do
  {
    v122 = (&v163 + v121);
    v123 = *&v189[v121];
    if (v123)
    {
      if (v122[82])
      {
        (*(*v123 + 40))(v123);
      }

      v122[82] = 0;
      v122[79] = 0;
      v122[80] = 0;
      v122[78] = 0;
      ++LODWORD(v191[v121 / 8]);
    }

    v121 -= 40;
  }

  while (v121);
  if (v190)
  {
    if (v191[0])
    {
      (*(*v190 + 40))();
      v191[0] = 0;
      v191[1] = 0;
    }

    v190 = 0;
  }

  for (jj = 616; jj != 424; jj -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v163 + jj));
  }

  do
  {
    re::FixedArray<CoreIKTransform>::deinit((&v163 + jj));
    jj -= 24;
  }

  while (jj != 232);
  if (v186)
  {
    if (v187)
    {
      v125 = v188;
      v126 = &v188[31 * v187];
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v125 + 27);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 24);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 21);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 18);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 15);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 12);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 9);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 6);
        if (v125[3])
        {
          v127 = v125[4];
          if (v127)
          {
            v128 = 0;
            v129 = v125[5];
            v130 = 200 * v127;
            do
            {
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 176));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 152));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 128));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 104));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 80));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 56));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 32));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 8));
              v128 += 200;
            }

            while (v130 != v128);
            (*(*v125[3] + 40))(v125[3], v125[5]);
            v125[4] = 0;
            v125[5] = 0;
          }

          v125[3] = 0;
        }

        if (*v125)
        {
          v131 = v125[1];
          if (v131)
          {
            v132 = 0;
            v133 = v125[2];
            v134 = 200 * v131;
            do
            {
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 176));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 152));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 128));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 104));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 80));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 56));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 32));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 8));
              v132 += 200;
            }

            while (v134 != v132);
            (*(**v125 + 40))(*v125, v125[2]);
            v125[1] = 0;
            v125[2] = 0;
          }

          *v125 = 0;
        }

        v125 += 31;
      }

      while (v125 != v126);
      (*(*v186 + 40))(v186, v188);
      v187 = 0;
      v188 = 0;
    }

    v186 = 0;
  }

  if (v183)
  {
    if (v184)
    {
      v135 = v185;
      v136 = 904 * v184;
      do
      {
        re::EvaluationCallbackData::~EvaluationCallbackData((v135 + 448));
        re::EvaluationCallbackData::~EvaluationCallbackData(v135);
        v135 += 904;
        v136 -= 904;
      }

      while (v136);
      (*(*v183 + 40))(v183, v185);
      v184 = 0;
      v185 = 0;
    }

    v183 = 0;
  }

  for (kk = 0; kk != -192; kk -= 24)
  {
    v138 = (&v163 + kk);
    result = *&v180[kk];
    if (result)
    {
      if (v138[24])
      {
        result = (*(*result + 40))(result, *(&v182 + kk));
        v138[24] = 0;
        v138[25] = 0;
      }

      v138[23] = 0;
    }
  }

  return result;
}

uint64_t re::anonymous namespace::RegisterMapping::processEvaluationTree(uint64_t a1, uint64_t a2, uint64_t a3, _anonymous_namespace_ *a4, void *a5, unint64_t a6)
{
  v394 = *MEMORY[0x1E69E9840];
  re::EvaluationDependencyMap::init((a2 + 256), *a2, *(a2 + 8), a3, (*(a2 + 3824) & 3) == 0, v369);
  if (v369[0] != 1)
  {
    *a1 = v369[0];
    *(a1 + 8) = v370;
    *(a1 + 24) = v371;
    *(a1 + 48) = v373;
    *(a1 + 32) = v372;
    v373 = 0;
    v371 = 0;
    v372 = 0uLL;
LABEL_24:
    result = v371;
    if (v371)
    {
      if (v372)
      {
        return (*(*v371 + 40))(v371, *(&v372 + 1));
      }
    }

    return result;
  }

  v364 = a6;
  v365 = a3;
  v363 = a1;
  v11 = *(*(a2 + 8) + 1680);
  v12 = &re::kEvaluationCommandDescriptions;
  if (v11)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 0, v6))
      {
        v13 = *(a2 + 24);
        if (v13 <= v6)
        {
          goto LABEL_377;
        }

        v14 = *(a2 + 8);
        v15 = (*(a2 + 32) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<int>(v14, v6, &v375);
        v16 = v376;
        *v15 = v375;
        *(v15 + 1) = v16;
        v17 = *v15;
        if (v17 == 77)
        {
          v28 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v15 + 1));
          v29 = *(v28 + 40);
          if (!v29)
          {
            if (*(v15 + 4))
            {
              goto LABEL_19;
            }

LABEL_18:
            goto LABEL_19;
          }

          v30 = v28;
          for (i = 0; i != v29; ++i)
          {
            v32 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v30, i);
            v33 = *(v15 + 4);
            if (v32[5] != -1)
            {
              ++v33;
            }

            v34 = *v32;
            v35 = v33 + *(*v32 + 984);
            *(v15 + 4) = v35;
            v36 = v34[128] + v35;
            *(v15 + 4) = v36;
            v37 = v34[133] + v36;
            *(v15 + 4) = v37;
            v38 = v34[138] + v37;
            *(v15 + 4) = v38;
            v39 = v34[143] + v38;
            *(v15 + 4) = v39;
            v40 = v34[148] + v39;
            *(v15 + 4) = v40;
            v41 = v34[153] + v40;
            *(v15 + 4) = v41;
            v27 = v34[158] + v41;
            *(v15 + 4) = v27;
          }
        }

        else
        {
          if (v17 == 76)
          {
            CallbackData = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v15 + 1));
            v19 = *(v15 + 4) + CallbackData[2];
            *(v15 + 4) = v19;
            v20 = CallbackData[5] + v19;
            *(v15 + 4) = v20;
            v21 = CallbackData[8] + v20;
            *(v15 + 4) = v21;
            v22 = CallbackData[11] + v21;
            *(v15 + 4) = v22;
            v23 = CallbackData[14] + v22;
            *(v15 + 4) = v23;
            v24 = CallbackData[17] + v23;
            *(v15 + 4) = v24;
            v25 = CallbackData[20] + v24;
            *(v15 + 4) = v25;
            v26 = CallbackData[23] + v25;
            *(v15 + 4) = v26;
            v27 = 3 * CallbackData[26] + v26;
          }

          else
          {
            v27 = *(&re::kEvaluationCommandDescriptions + 16 * v17 + 9);
          }

          *(v15 + 4) = v27;
        }

        if (!v27)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      ++v6;
    }

    while (v6 != v11);
  }

  v43 = *(*(a2 + 8) + 1720);
  if (v43)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 1u, v6))
      {
        v13 = *(a2 + 48);
        if (v13 <= v6)
        {
          goto LABEL_378;
        }

        v44 = *(a2 + 8);
        v45 = (*(a2 + 56) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<unsigned int>(v44, v6, &v375);
        v46 = v376;
        *v45 = v375;
        *(v45 + 1) = v46;
        v47 = *v45;
        if (v47 == 77)
        {
          v58 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v45 + 1));
          v59 = *(v58 + 40);
          if (!v59)
          {
            if (*(v45 + 4))
            {
              goto LABEL_44;
            }

LABEL_43:
            goto LABEL_44;
          }

          v60 = v58;
          for (j = 0; j != v59; ++j)
          {
            v62 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v60, j);
            v63 = *(v45 + 4);
            if (v62[5] != -1)
            {
              ++v63;
            }

            v64 = *v62;
            v65 = v63 + *(*v62 + 984);
            *(v45 + 4) = v65;
            v66 = v64[128] + v65;
            *(v45 + 4) = v66;
            v67 = v64[133] + v66;
            *(v45 + 4) = v67;
            v68 = v64[138] + v67;
            *(v45 + 4) = v68;
            v69 = v64[143] + v68;
            *(v45 + 4) = v69;
            v70 = v64[148] + v69;
            *(v45 + 4) = v70;
            v71 = v64[153] + v70;
            *(v45 + 4) = v71;
            v57 = v64[158] + v71;
            *(v45 + 4) = v57;
          }
        }

        else
        {
          if (v47 == 76)
          {
            v48 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v45 + 1));
            v49 = *(v45 + 4) + v48[2];
            *(v45 + 4) = v49;
            v50 = v48[5] + v49;
            *(v45 + 4) = v50;
            v51 = v48[8] + v50;
            *(v45 + 4) = v51;
            v52 = v48[11] + v51;
            *(v45 + 4) = v52;
            v53 = v48[14] + v52;
            *(v45 + 4) = v53;
            v54 = v48[17] + v53;
            *(v45 + 4) = v54;
            v55 = v48[20] + v54;
            *(v45 + 4) = v55;
            v56 = v48[23] + v55;
            *(v45 + 4) = v56;
            v57 = 3 * v48[26] + v56;
          }

          else
          {
            v57 = *(&re::kEvaluationCommandDescriptions + 16 * v47 + 9);
          }

          *(v45 + 4) = v57;
        }

        if (!v57)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      ++v6;
    }

    while (v6 != v43);
  }

  v72 = *(*(a2 + 8) + 1760);
  if (v72)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 2u, v6))
      {
        v13 = *(a2 + 72);
        if (v13 <= v6)
        {
          goto LABEL_379;
        }

        v73 = *(a2 + 8);
        v74 = (*(a2 + 80) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<float>(v73, v6, &v375);
        v75 = v376;
        *v74 = v375;
        *(v74 + 1) = v75;
        v76 = *v74;
        if (v76 == 77)
        {
          v87 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v74 + 1));
          v88 = *(v87 + 40);
          if (!v88)
          {
            if (*(v74 + 4))
            {
              goto LABEL_65;
            }

LABEL_64:
            goto LABEL_65;
          }

          v89 = v87;
          for (k = 0; k != v88; ++k)
          {
            v91 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v89, k);
            v92 = *(v74 + 4);
            if (v91[5] != -1)
            {
              ++v92;
            }

            v93 = *v91;
            v94 = v92 + *(*v91 + 984);
            *(v74 + 4) = v94;
            v95 = v93[128] + v94;
            *(v74 + 4) = v95;
            v96 = v93[133] + v95;
            *(v74 + 4) = v96;
            v97 = v93[138] + v96;
            *(v74 + 4) = v97;
            v98 = v93[143] + v97;
            *(v74 + 4) = v98;
            v99 = v93[148] + v98;
            *(v74 + 4) = v99;
            v100 = v93[153] + v99;
            *(v74 + 4) = v100;
            v86 = v93[158] + v100;
            *(v74 + 4) = v86;
          }
        }

        else
        {
          if (v76 == 76)
          {
            v77 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v74 + 1));
            v78 = *(v74 + 4) + v77[2];
            *(v74 + 4) = v78;
            v79 = v77[5] + v78;
            *(v74 + 4) = v79;
            v80 = v77[8] + v79;
            *(v74 + 4) = v80;
            v81 = v77[11] + v80;
            *(v74 + 4) = v81;
            v82 = v77[14] + v81;
            *(v74 + 4) = v82;
            v83 = v77[17] + v82;
            *(v74 + 4) = v83;
            v84 = v77[20] + v83;
            *(v74 + 4) = v84;
            v85 = v77[23] + v84;
            *(v74 + 4) = v85;
            v86 = 3 * v77[26] + v85;
          }

          else
          {
            v86 = *(&re::kEvaluationCommandDescriptions + 16 * v76 + 9);
          }

          *(v74 + 4) = v86;
        }

        if (!v86)
        {
          goto LABEL_64;
        }
      }

LABEL_65:
      ++v6;
    }

    while (v6 != v72);
  }

  v101 = *(*(a2 + 8) + 1800);
  if (v101)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 3u, v6))
      {
        v13 = *(a2 + 96);
        if (v13 <= v6)
        {
          goto LABEL_380;
        }

        v102 = *(a2 + 8);
        v103 = (*(a2 + 104) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<re::Matrix3x3<float>>(v102, v6, &v375);
        v104 = v376;
        *v103 = v375;
        *(v103 + 1) = v104;
        v105 = *v103;
        if (v105 == 77)
        {
          v116 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v103 + 1));
          v117 = *(v116 + 40);
          if (!v117)
          {
            if (*(v103 + 4))
            {
              goto LABEL_86;
            }

LABEL_85:
            goto LABEL_86;
          }

          v118 = v116;
          for (m = 0; m != v117; ++m)
          {
            v120 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v118, m);
            v121 = *(v103 + 4);
            if (v120[5] != -1)
            {
              ++v121;
            }

            v122 = *v120;
            v123 = v121 + *(*v120 + 984);
            *(v103 + 4) = v123;
            v124 = v122[128] + v123;
            *(v103 + 4) = v124;
            v125 = v122[133] + v124;
            *(v103 + 4) = v125;
            v126 = v122[138] + v125;
            *(v103 + 4) = v126;
            v127 = v122[143] + v126;
            *(v103 + 4) = v127;
            v128 = v122[148] + v127;
            *(v103 + 4) = v128;
            v129 = v122[153] + v128;
            *(v103 + 4) = v129;
            v115 = v122[158] + v129;
            *(v103 + 4) = v115;
          }
        }

        else
        {
          if (v105 == 76)
          {
            v106 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v103 + 1));
            v107 = *(v103 + 4) + v106[2];
            *(v103 + 4) = v107;
            v108 = v106[5] + v107;
            *(v103 + 4) = v108;
            v109 = v106[8] + v108;
            *(v103 + 4) = v109;
            v110 = v106[11] + v109;
            *(v103 + 4) = v110;
            v111 = v106[14] + v110;
            *(v103 + 4) = v111;
            v112 = v106[17] + v111;
            *(v103 + 4) = v112;
            v113 = v106[20] + v112;
            *(v103 + 4) = v113;
            v114 = v106[23] + v113;
            *(v103 + 4) = v114;
            v115 = 3 * v106[26] + v114;
          }

          else
          {
            v115 = *(&re::kEvaluationCommandDescriptions + 16 * v105 + 9);
          }

          *(v103 + 4) = v115;
        }

        if (!v115)
        {
          goto LABEL_85;
        }
      }

LABEL_86:
      ++v6;
    }

    while (v6 != v101);
  }

  v130 = *(*(a2 + 8) + 1840);
  if (v130)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 4u, v6))
      {
        v13 = *(a2 + 120);
        if (v13 <= v6)
        {
          goto LABEL_381;
        }

        v131 = *(a2 + 8);
        v132 = (*(a2 + 128) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<re::Matrix4x4<float>>(v131, v6, &v375);
        v133 = v376;
        *v132 = v375;
        *(v132 + 1) = v133;
        v134 = *v132;
        if (v134 == 77)
        {
          v145 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v132 + 1));
          v146 = *(v145 + 40);
          if (!v146)
          {
            if (*(v132 + 4))
            {
              goto LABEL_107;
            }

LABEL_106:
            goto LABEL_107;
          }

          v147 = v145;
          for (n = 0; n != v146; ++n)
          {
            v149 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v147, n);
            v150 = *(v132 + 4);
            if (v149[5] != -1)
            {
              ++v150;
            }

            v151 = *v149;
            v152 = v150 + *(*v149 + 984);
            *(v132 + 4) = v152;
            v153 = v151[128] + v152;
            *(v132 + 4) = v153;
            v154 = v151[133] + v153;
            *(v132 + 4) = v154;
            v155 = v151[138] + v154;
            *(v132 + 4) = v155;
            v156 = v151[143] + v155;
            *(v132 + 4) = v156;
            v157 = v151[148] + v156;
            *(v132 + 4) = v157;
            v158 = v151[153] + v157;
            *(v132 + 4) = v158;
            v144 = v151[158] + v158;
            *(v132 + 4) = v144;
          }
        }

        else
        {
          if (v134 == 76)
          {
            v135 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v132 + 1));
            v136 = *(v132 + 4) + v135[2];
            *(v132 + 4) = v136;
            v137 = v135[5] + v136;
            *(v132 + 4) = v137;
            v138 = v135[8] + v137;
            *(v132 + 4) = v138;
            v139 = v135[11] + v138;
            *(v132 + 4) = v139;
            v140 = v135[14] + v139;
            *(v132 + 4) = v140;
            v141 = v135[17] + v140;
            *(v132 + 4) = v141;
            v142 = v135[20] + v141;
            *(v132 + 4) = v142;
            v143 = v135[23] + v142;
            *(v132 + 4) = v143;
            v144 = 3 * v135[26] + v143;
          }

          else
          {
            v144 = *(&re::kEvaluationCommandDescriptions + 16 * v134 + 9);
          }

          *(v132 + 4) = v144;
        }

        if (!v144)
        {
          goto LABEL_106;
        }
      }

LABEL_107:
      ++v6;
    }

    while (v6 != v130);
  }

  v159 = *(*(a2 + 8) + 1880);
  if (v159)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 5u, v6))
      {
        v13 = *(a2 + 144);
        if (v13 <= v6)
        {
          goto LABEL_382;
        }

        v160 = *(a2 + 8);
        v161 = (*(a2 + 152) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<re::Quaternion<float>>(v160, v6, &v375);
        v162 = v376;
        *v161 = v375;
        *(v161 + 1) = v162;
        v163 = *v161;
        if (v163 == 77)
        {
          v174 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v161 + 1));
          v175 = *(v174 + 40);
          if (!v175)
          {
            if (*(v161 + 4))
            {
              goto LABEL_128;
            }

LABEL_127:
            goto LABEL_128;
          }

          v176 = v174;
          for (ii = 0; ii != v175; ++ii)
          {
            v178 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v176, ii);
            v179 = *(v161 + 4);
            if (v178[5] != -1)
            {
              ++v179;
            }

            v180 = *v178;
            v181 = v179 + *(*v178 + 984);
            *(v161 + 4) = v181;
            v182 = v180[128] + v181;
            *(v161 + 4) = v182;
            v183 = v180[133] + v182;
            *(v161 + 4) = v183;
            v184 = v180[138] + v183;
            *(v161 + 4) = v184;
            v185 = v180[143] + v184;
            *(v161 + 4) = v185;
            v186 = v180[148] + v185;
            *(v161 + 4) = v186;
            v187 = v180[153] + v186;
            *(v161 + 4) = v187;
            v173 = v180[158] + v187;
            *(v161 + 4) = v173;
          }
        }

        else
        {
          if (v163 == 76)
          {
            v164 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v161 + 1));
            v165 = *(v161 + 4) + v164[2];
            *(v161 + 4) = v165;
            v166 = v164[5] + v165;
            *(v161 + 4) = v166;
            v167 = v164[8] + v166;
            *(v161 + 4) = v167;
            v168 = v164[11] + v167;
            *(v161 + 4) = v168;
            v169 = v164[14] + v168;
            *(v161 + 4) = v169;
            v170 = v164[17] + v169;
            *(v161 + 4) = v170;
            v171 = v164[20] + v170;
            *(v161 + 4) = v171;
            v172 = v164[23] + v171;
            *(v161 + 4) = v172;
            v173 = 3 * v164[26] + v172;
          }

          else
          {
            v173 = *(&re::kEvaluationCommandDescriptions + 16 * v163 + 9);
          }

          *(v161 + 4) = v173;
        }

        if (!v173)
        {
          goto LABEL_127;
        }
      }

LABEL_128:
      ++v6;
    }

    while (v6 != v159);
  }

  v188 = *(*(a2 + 8) + 1920);
  if (v188)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 6u, v6))
      {
        v13 = *(a2 + 168);
        if (v13 <= v6)
        {
          goto LABEL_383;
        }

        v189 = *(a2 + 8);
        v190 = (*(a2 + 176) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<re::Vector2<float>>(v189, v6, &v375);
        v191 = v376;
        *v190 = v375;
        *(v190 + 1) = v191;
        v192 = *v190;
        if (v192 == 77)
        {
          v203 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v190 + 1));
          v204 = *(v203 + 40);
          if (!v204)
          {
            if (*(v190 + 4))
            {
              goto LABEL_149;
            }

LABEL_148:
            goto LABEL_149;
          }

          v205 = v203;
          for (jj = 0; jj != v204; ++jj)
          {
            v207 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v205, jj);
            v208 = *(v190 + 4);
            if (v207[5] != -1)
            {
              ++v208;
            }

            v209 = *v207;
            v210 = v208 + *(*v207 + 984);
            *(v190 + 4) = v210;
            v211 = v209[128] + v210;
            *(v190 + 4) = v211;
            v212 = v209[133] + v211;
            *(v190 + 4) = v212;
            v213 = v209[138] + v212;
            *(v190 + 4) = v213;
            v214 = v209[143] + v213;
            *(v190 + 4) = v214;
            v215 = v209[148] + v214;
            *(v190 + 4) = v215;
            v216 = v209[153] + v215;
            *(v190 + 4) = v216;
            v202 = v209[158] + v216;
            *(v190 + 4) = v202;
          }
        }

        else
        {
          if (v192 == 76)
          {
            v193 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v190 + 1));
            v194 = *(v190 + 4) + v193[2];
            *(v190 + 4) = v194;
            v195 = v193[5] + v194;
            *(v190 + 4) = v195;
            v196 = v193[8] + v195;
            *(v190 + 4) = v196;
            v197 = v193[11] + v196;
            *(v190 + 4) = v197;
            v198 = v193[14] + v197;
            *(v190 + 4) = v198;
            v199 = v193[17] + v198;
            *(v190 + 4) = v199;
            v200 = v193[20] + v199;
            *(v190 + 4) = v200;
            v201 = v193[23] + v200;
            *(v190 + 4) = v201;
            v202 = 3 * v193[26] + v201;
          }

          else
          {
            v202 = *(&re::kEvaluationCommandDescriptions + 16 * v192 + 9);
          }

          *(v190 + 4) = v202;
        }

        if (!v202)
        {
          goto LABEL_148;
        }
      }

LABEL_149:
      ++v6;
    }

    while (v6 != v188);
  }

  v217 = *(*(a2 + 8) + 1960);
  if (v217)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed(a2 + 256, 7u, v6))
      {
        v13 = *(a2 + 192);
        if (v13 <= v6)
        {
          goto LABEL_384;
        }

        v219 = *(a2 + 8);
        v220 = (*(a2 + 200) + (v6 << 6));
        LODWORD(v375) = -1;
        v376 = 0uLL;
        *(&v375 + 1) = 0;
        re::EvaluationTree::getRegister<re::Vector3<float>>(v219, v6, &v375);
        v221 = v376;
        *v220 = v375;
        *(v220 + 1) = v221;
        v222 = *v220;
        if (v222 == 77)
        {
          v233 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, *(v220 + 1));
          v234 = *(v233 + 40);
          if (!v234)
          {
            if (*(v220 + 4))
            {
              goto LABEL_170;
            }

LABEL_169:
            goto LABEL_170;
          }

          v235 = v233;
          for (kk = 0; kk != v234; ++kk)
          {
            v237 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v235, kk);
            v238 = *(v220 + 4);
            if (v237[5] != -1)
            {
              ++v238;
            }

            v239 = *v237;
            v240 = v238 + *(*v237 + 984);
            *(v220 + 4) = v240;
            v241 = v239[128] + v240;
            *(v220 + 4) = v241;
            v242 = v239[133] + v241;
            *(v220 + 4) = v242;
            v243 = v239[138] + v242;
            *(v220 + 4) = v243;
            v244 = v239[143] + v243;
            *(v220 + 4) = v244;
            v245 = v239[148] + v244;
            *(v220 + 4) = v245;
            v246 = v239[153] + v245;
            *(v220 + 4) = v246;
            v232 = v239[158] + v246;
            *(v220 + 4) = v232;
          }
        }

        else
        {
          if (v222 == 76)
          {
            v223 = re::EvaluationTree::getCallbackData(*(a2 + 8), *(v220 + 1));
            v224 = *(v220 + 4) + v223[2];
            *(v220 + 4) = v224;
            v225 = v223[5] + v224;
            *(v220 + 4) = v225;
            v226 = v223[8] + v225;
            *(v220 + 4) = v226;
            v227 = v223[11] + v226;
            *(v220 + 4) = v227;
            v228 = v223[14] + v227;
            *(v220 + 4) = v228;
            v229 = v223[17] + v228;
            *(v220 + 4) = v229;
            v230 = v223[20] + v229;
            *(v220 + 4) = v230;
            v231 = v223[23] + v230;
            *(v220 + 4) = v231;
            v232 = 3 * v223[26] + v231;
          }

          else
          {
            v232 = *(&re::kEvaluationCommandDescriptions + 16 * v222 + 9);
          }

          *(v220 + 4) = v232;
        }

        if (!v232)
        {
          goto LABEL_169;
        }
      }

LABEL_170:
      ++v6;
    }

    while (v6 != v217);
  }

  result = *a2;
  v247 = *(a2 + 8);
  v248 = *(v247 + 2000);
  *(a2 + 208) = *a2;
  *(a2 + 216) = v248;
  if (v248)
  {
    if (v248 >= 0x487EDE0487EDE1)
    {
LABEL_414:
      re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 904, v248);
      _os_crash();
      __break(1u);
      goto LABEL_415;
    }

    v249 = (*(*result + 32))(result, 904 * v248, 8);
    *(a2 + 224) = v249;
    if (!v249)
    {
LABEL_415:
      re::internal::assertLog(4, v250, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_416:
      re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 248, a6);
      _os_crash();
      __break(1u);
      goto LABEL_417;
    }

    v251 = v249;
    v252 = v248 - 1;
    if (v248 != 1)
    {
      do
      {
        bzero(v251, 0x380uLL);
        v251[112] = -1;
        v251 += 113;
        --v252;
      }

      while (v252);
    }

    v253 = v251 + 112;
    bzero(v251, 0x380uLL);
    v13 = 0;
    v6 = 0;
    *v253 = -1;
    do
    {
      v254 = re::EvaluationTree::getCallbackData(*(a2 + 8), v6);
      a6 = *(a2 + 216);
      if (a6 <= v6)
      {
        goto LABEL_376;
      }

      re::EvaluationTree::resolveAliasRegisters(*(a2 + 8), *a2, v254, (*(a2 + 224) + v13));
      ++v6;
      v13 += 904;
    }

    while (v248 != v6);
    result = *a2;
    v247 = *(a2 + 8);
  }

  a6 = *(v247 + 1648);
  *(a2 + 232) = result;
  *(a2 + 240) = a6;
  if (!a6)
  {
LABEL_208:
    if (!v365[1])
    {
LABEL_212:
      if (!v365[3])
      {
LABEL_216:
        if (!v365[5])
        {
LABEL_220:
          if (!v365[7])
          {
LABEL_224:
            if (!v365[9])
            {
LABEL_228:
              if (!v365[11])
              {
LABEL_232:
                if (!v365[13])
                {
LABEL_236:
                  if (!v365[15])
                  {
LABEL_240:
                    if (!v365[17])
                    {
LABEL_248:
                      v294 = *(a2 + 3800);
                      if (v294)
                      {
                        v12 = a2 + 664;
                        v6 = 40;
                        while (1)
                        {
                          v386 = *(*(a2 + 3816) + 4 * v294 - 4);
                          v295 = v386;
                          *(a2 + 3800) = v294 - 1;
                          ++*(a2 + 3808);
                          v296 = v12 + 40 * v295;
                          v297 = *(v296 + 16);
                          if (v297)
                          {
                            v298 = *(v364 + 2);
                            if (v295 - 78 >= 0xFFFFFFFE)
                            {
                              do
                              {
                                v301 = *(v296 + 32) + 16 * v297;
                                v302 = *(v301 - 16);
                                v303 = *(v301 - 8);
                                *(v296 + 16) = v297 - 1;
                                ++*(v296 + 24);
                                if (v302 > 3)
                                {
                                  if (v302 > 5)
                                  {
                                    if (v302 == 6)
                                    {
                                    }

                                    else
                                    {
                                      if (v302 != 7)
                                      {
                                        goto LABEL_418;
                                      }
                                    }
                                  }

                                  else if (v302 == 4)
                                  {
                                  }

                                  else
                                  {
                                  }
                                }

                                else if (v302 > 1)
                                {
                                  if (v302 == 2)
                                  {
                                  }

                                  else
                                  {
                                  }
                                }

                                else if (v302)
                                {
                                }

                                else
                                {
                                }

                                v297 = *(v296 + 16);
                              }

                              while (v297);
                            }

                            else
                            {
                              v299 = *(*(v296 + 32) + 16 * v297 - 16);
                              if (v299 > 3)
                              {
                                if (*(*(v296 + 32) + 16 * v297 - 16) > 5u)
                                {
                                  if (v299 == 6)
                                  {
                                    do
                                    {
                                      v312 = *(*(v296 + 32) + 16 * v297 - 8);
                                      *(v296 + 16) = v297 - 1;
                                      ++*(v296 + 24);
                                      v297 = *(v296 + 16);
                                    }

                                    while (v297);
                                  }

                                  else
                                  {
                                    if (v299 != 7)
                                    {
LABEL_419:
                                      re::internal::assertLog(5, v218, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processEvaluationTree", 1088, *(*(v296 + 32) + 16 * v297 - 16));
                                      result = _os_crash();
                                      __break(1u);
                                      return result;
                                    }

                                    do
                                    {
                                      v311 = *(*(v296 + 32) + 16 * v297 - 8);
                                      *(v296 + 16) = v297 - 1;
                                      ++*(v296 + 24);
                                      v297 = *(v296 + 16);
                                    }

                                    while (v297);
                                  }
                                }

                                else if (v299 == 4)
                                {
                                  do
                                  {
                                    v308 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }

                                else
                                {
                                  if (v299 != 5)
                                  {
                                    goto LABEL_419;
                                  }

                                  do
                                  {
                                    v307 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }
                              }

                              else if (*(*(v296 + 32) + 16 * v297 - 16) > 1u)
                              {
                                if (v299 == 2)
                                {
                                  do
                                  {
                                    v310 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }

                                else
                                {
                                  if (v299 != 3)
                                  {
                                    goto LABEL_419;
                                  }

                                  do
                                  {
                                    v309 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }
                              }

                              else if (*(*(v296 + 32) + 16 * v297 - 16))
                              {
                                do
                                {
                                  v300 = *(*(v296 + 32) + 16 * v297 - 8);
                                  *(v296 + 16) = v297 - 1;
                                  ++*(v296 + 24);
                                  v297 = *(v296 + 16);
                                }

                                while (v297);
                              }

                              else
                              {
                                do
                                {
                                  v306 = *(*(v296 + 32) + 16 * v297 - 8);
                                  *(v296 + 16) = v297 - 1;
                                  ++*(v296 + 24);
                                  v297 = *(v296 + 16);
                                }

                                while (v297);
                              }
                            }

                            v304 = *(v364 + 2);
                            v305 = v304 - v298;
                            if (v304 != v298)
                            {
                              re::DynamicArray<re::EvaluationCommand>::add(a4, &v386);
                              *&v375 = v305;
                              result = re::DynamicArray<unsigned long>::add(a5, &v375);
                            }
                          }

                          v294 = *(a2 + 3800);
                          if (!v294)
                          {
                            goto LABEL_300;
                          }
                        }
                      }

                      goto LABEL_300;
                    }

                    a6 = 0;
                    v289 = 0;
                    v12 = 1;
                    while (1)
                    {
                      v6 = *(v365[16] + a6);
                      v13 = *(a2 + 192);
                      if (v13 <= v6)
                      {
                        goto LABEL_395;
                      }

                      *(*(a2 + 200) + (v6 << 6) + 40) = 1;
                      v291 = v365[17];
                      if (v291 <= v289)
                      {
                        goto LABEL_396;
                      }

                      v6 = *(v365[16] + a6 + 8);
                      v13 = *(a2 + 144);
                      if (v13 <= v6)
                      {
                        goto LABEL_397;
                      }

                      *(*(a2 + 152) + (v6 << 6) + 40) = 1;
                      v293 = v365[17];
                      if (v293 <= v289)
                      {
                        goto LABEL_398;
                      }

                      v6 = *(v365[16] + a6 + 16);
                      v13 = *(a2 + 192);
                      if (v13 <= v6)
                      {
                        goto LABEL_399;
                      }

                      *(*(a2 + 200) + (v6 << 6) + 40) = 1;
                      ++v289;
                      a6 += 24;
                      if (v289 >= v365[17])
                      {
                        goto LABEL_248;
                      }
                    }
                  }

                  v288 = 0;
                  a6 = 1;
                  while (1)
                  {
                    v6 = *(v365[14] + 8 * v288);
                    v13 = *(a2 + 192);
                    if (v13 <= v6)
                    {
                      break;
                    }

                    *(*(a2 + 200) + (v6 << 6) + 40) = 1;
                    if (++v288 >= v365[15])
                    {
                      goto LABEL_240;
                    }
                  }

LABEL_392:
                  v374 = 0;
                  v378 = 0u;
                  v379 = 0u;
                  v376 = 0u;
                  v377 = 0u;
                  v375 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v386 = 136315906;
                  v387 = "operator[]";
                  v388 = 1024;
                  v389 = 468;
                  v390 = 2048;
                  v391 = v6;
                  v392 = 2048;
                  v393 = v13;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_393;
                }

                v287 = 0;
                a6 = 1;
                while (1)
                {
                  v6 = *(v365[12] + 8 * v287);
                  v13 = *(a2 + 168);
                  if (v13 <= v6)
                  {
                    break;
                  }

                  *(*(a2 + 176) + (v6 << 6) + 40) = 1;
                  if (++v287 >= v365[13])
                  {
                    goto LABEL_236;
                  }
                }

LABEL_391:
                v374 = 0;
                v378 = 0u;
                v379 = 0u;
                v376 = 0u;
                v377 = 0u;
                v375 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v386 = 136315906;
                v387 = "operator[]";
                v388 = 1024;
                v389 = 468;
                v390 = 2048;
                v391 = v6;
                v392 = 2048;
                v393 = v13;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_392;
              }

              v286 = 0;
              a6 = 1;
              while (1)
              {
                v6 = *(v365[10] + 8 * v286);
                v13 = *(a2 + 144);
                if (v13 <= v6)
                {
                  break;
                }

                *(*(a2 + 152) + (v6 << 6) + 40) = 1;
                if (++v286 >= v365[11])
                {
                  goto LABEL_232;
                }
              }

LABEL_390:
              v374 = 0;
              v378 = 0u;
              v379 = 0u;
              v376 = 0u;
              v377 = 0u;
              v375 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v386 = 136315906;
              v387 = "operator[]";
              v388 = 1024;
              v389 = 468;
              v390 = 2048;
              v391 = v6;
              v392 = 2048;
              v393 = v13;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_391;
            }

            v285 = 0;
            a6 = 1;
            while (1)
            {
              v6 = *(v365[8] + 8 * v285);
              v13 = *(a2 + 120);
              if (v13 <= v6)
              {
                break;
              }

              *(*(a2 + 128) + (v6 << 6) + 40) = 1;
              if (++v285 >= v365[9])
              {
                goto LABEL_228;
              }
            }

LABEL_389:
            v374 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v375 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v386 = 136315906;
            v387 = "operator[]";
            v388 = 1024;
            v389 = 468;
            v390 = 2048;
            v391 = v6;
            v392 = 2048;
            v393 = v13;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_390;
          }

          v284 = 0;
          a6 = 1;
          while (1)
          {
            v6 = *(v365[6] + 8 * v284);
            v13 = *(a2 + 96);
            if (v13 <= v6)
            {
              break;
            }

            *(*(a2 + 104) + (v6 << 6) + 40) = 1;
            if (++v284 >= v365[7])
            {
              goto LABEL_224;
            }
          }

LABEL_388:
          v374 = 0;
          v378 = 0u;
          v379 = 0u;
          v376 = 0u;
          v377 = 0u;
          v375 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v386 = 136315906;
          v387 = "operator[]";
          v388 = 1024;
          v389 = 468;
          v390 = 2048;
          v391 = v6;
          v392 = 2048;
          v393 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_389;
        }

        v283 = 0;
        a6 = 1;
        while (1)
        {
          v6 = *(v365[4] + 8 * v283);
          v13 = *(a2 + 72);
          if (v13 <= v6)
          {
            break;
          }

          *(*(a2 + 80) + (v6 << 6) + 40) = 1;
          if (++v283 >= v365[5])
          {
            goto LABEL_220;
          }
        }

LABEL_387:
        v374 = 0;
        v378 = 0u;
        v379 = 0u;
        v376 = 0u;
        v377 = 0u;
        v375 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v386 = 136315906;
        v387 = "operator[]";
        v388 = 1024;
        v389 = 468;
        v390 = 2048;
        v391 = v6;
        v392 = 2048;
        v393 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_388;
      }

      v282 = 0;
      a6 = 1;
      while (1)
      {
        v6 = *(v365[2] + 8 * v282);
        v13 = *(a2 + 48);
        if (v13 <= v6)
        {
          break;
        }

        *(*(a2 + 56) + (v6 << 6) + 40) = 1;
        if (++v282 >= v365[3])
        {
          goto LABEL_216;
        }
      }

LABEL_386:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_387;
    }

    v281 = 0;
    a6 = 1;
    while (1)
    {
      v6 = *(*v365 + 8 * v281);
      v13 = *(a2 + 24);
      if (v13 <= v6)
      {
        break;
      }

      *(*(a2 + 32) + (v6 << 6) + 40) = 1;
      if (++v281 >= v365[1])
      {
        goto LABEL_212;
      }
    }

LABEL_385:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v6;
    v392 = 2048;
    v393 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_386;
  }

  if (a6 >= 0x108421084210843)
  {
    goto LABEL_416;
  }

  v255 = (*(*result + 32))(result, 248 * a6, 8);
  *(a2 + 248) = v255;
  if (!v255)
  {
LABEL_417:
    re::internal::assertLog(4, v256, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_418:
    re::internal::assertLog(5, v303, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processEvaluationTree", 1097, v302);
    _os_crash();
    __break(1u);
  }

  v257 = a6 - 1;
  if (a6 != 1)
  {
    do
    {
      *(v255 + 208) = 0uLL;
      *(v255 + 224) = 0uLL;
      *(v255 + 176) = 0uLL;
      *(v255 + 192) = 0uLL;
      *(v255 + 144) = 0uLL;
      *(v255 + 160) = 0uLL;
      *(v255 + 112) = 0uLL;
      *(v255 + 128) = 0uLL;
      *(v255 + 80) = 0uLL;
      *(v255 + 96) = 0uLL;
      *(v255 + 48) = 0uLL;
      *(v255 + 64) = 0uLL;
      *(v255 + 16) = 0uLL;
      *(v255 + 32) = 0uLL;
      *v255 = 0uLL;
      *(v255 + 240) = -1;
      v255 += 248;
      --v257;
    }

    while (v257);
  }

  v6 = 0;
  *(v255 + 208) = 0u;
  *(v255 + 224) = 0u;
  *(v255 + 176) = 0u;
  *(v255 + 192) = 0u;
  *(v255 + 144) = 0u;
  *(v255 + 160) = 0u;
  *(v255 + 112) = 0u;
  *(v255 + 128) = 0u;
  *(v255 + 80) = 0u;
  *(v255 + 96) = 0u;
  *(v255 + 48) = 0u;
  *(v255 + 64) = 0u;
  *(v255 + 16) = 0u;
  *(v255 + 32) = 0u;
  *v255 = 0u;
  v248 = 200;
  *(v255 + 240) = -1;
  v367 = a6;
  while (1)
  {
    v258 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(a2 + 8) + 1608, v6);
    v13 = *(a2 + 240);
    if (v13 <= v6)
    {
      goto LABEL_411;
    }

    v259 = v258;
    a6 = *(a2 + 248) + 248 * v6;
    v12 = *(v258 + 40);
    result = *a2;
    *a6 = *a2;
    *(a6 + 8) = v12;
    if (v12)
    {
      break;
    }

LABEL_207:
    ++v6;
    a6 = v367;
    if (v6 == v367)
    {
      goto LABEL_208;
    }
  }

  if (v12 >= 0x147AE147AE147AFLL)
  {
    goto LABEL_412;
  }

  v260 = (*(*result + 32))(result, 200 * v12, 8);
  *(a6 + 16) = v260;
  if (!v260)
  {
LABEL_413:
    re::internal::assertLog(4, v261, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_414;
  }

  v262 = v12 - 1;
  if (v12 == 1)
  {
    *v260 = -1;
    v263 = v260 + 1;
  }

  else
  {
    v263 = v260 + 1;
    do
    {
      *(v263 - 1) = -1;
      *v263 = 0uLL;
      v263[1] = 0uLL;
      v263[2] = 0uLL;
      v263[3] = 0uLL;
      v263[4] = 0uLL;
      v263[5] = 0uLL;
      v263[6] = 0uLL;
      v263[7] = 0uLL;
      v263[8] = 0uLL;
      v263[9] = 0uLL;
      v263[10] = 0uLL;
      v263[11] = 0uLL;
      v263 = (v263 + 200);
      --v262;
    }

    while (v262);
    *(v263 - 1) = -1;
  }

  v264 = 0;
  v263[10] = 0uLL;
  v263[11] = 0uLL;
  v263[8] = 0uLL;
  v263[9] = 0uLL;
  v263[6] = 0uLL;
  v263[7] = 0uLL;
  v263[4] = 0uLL;
  v263[5] = 0uLL;
  v263[2] = 0uLL;
  v263[3] = 0uLL;
  *v263 = 0uLL;
  v263[1] = 0uLL;
  while (1)
  {
    v265 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v259, v264);
    v13 = *(a6 + 8);
    if (v13 <= v264)
    {
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v264;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_376:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = a6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_377:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_378:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_379:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_380:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_381:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_382:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_383:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_384:
      v374 = 0;
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      v375 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v386 = 136315906;
      v387 = "operator[]";
      v388 = 1024;
      v389 = 468;
      v390 = 2048;
      v391 = v6;
      v392 = 2048;
      v393 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_385;
    }

    v266 = (*(a6 + 16) + 200 * v264);
    v267 = v265[5];
    if (v267 != -1)
    {
      break;
    }

LABEL_206:
    v271 = *v265;
    v272 = *(*v265 + 1304);
    *&v375 = *(*v265 + 1320);
    *(&v375 + 1) = v272;
    v273 = v271[168];
    *&v376 = v271[170];
    *(&v376 + 1) = v273;
    v274 = v271[173];
    *&v377 = v271[175];
    *(&v377 + 1) = v274;
    v275 = v271[178];
    *&v378 = v271[180];
    *(&v378 + 1) = v275;
    v276 = v271[183];
    *&v379 = v271[185];
    *(&v379 + 1) = v276;
    v277 = v271[188];
    v380 = v271[190];
    v381 = v277;
    v278 = v271[193];
    v382 = v271[195];
    v383 = v278;
    v279 = v271[200];
    v280 = v271[198];
    v384 = v279;
    v385 = v280;
    result = re::EvaluationTree::resolveAliasRegisters(*(a2 + 8), *a2, &v375, v266 + 1);
    if (++v264 == v12)
    {
      goto LABEL_207;
    }
  }

  v268 = v267 - 0x7FFFFFFFFFFFFFFFLL;
  if (v267 - 0x7FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_205:
    *v266 = v267;
    goto LABEL_206;
  }

  v269 = *(a2 + 8);
  v270 = *(v269 + 704);
  while (v270 > v268)
  {
    v267 = *(*(v269 + 720) + 8 * v268);
    v268 = v267 - 0x7FFFFFFFFFFFFFFFLL;
    if (v267 - 0x7FFFFFFFFFFFFFFFLL < 0)
    {
      goto LABEL_205;
    }
  }

  v374 = 0;
  v378 = 0u;
  v379 = 0u;
  v376 = 0u;
  v377 = 0u;
  v375 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v386 = 136315906;
  v387 = "operator[]";
  v388 = 1024;
  v389 = 797;
  v390 = 2048;
  v391 = v268;
  v392 = 2048;
  v393 = v270;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
LABEL_300:
  v313 = v365[19];
  if (v313)
  {
    v314 = 0;
    v315 = v365[18];
    a6 = *(a2 + 24);
    while (1)
    {
      v13 = *(v315 + 8 * v314);
      if (a6 <= v13)
      {
        break;
      }

      v316 = *(a2 + 32) + (v13 << 6);
      if ((*(v316 + 40) & 0xFE) == 2 && *(v316 + 56) == -1)
      {
        v317 = *(a2 + 4152);
        *(a2 + 4152) = v317 + 1;
        *(v316 + 56) = v317;
        v313 = v365[19];
      }

      if (++v314 >= v313)
      {
        goto LABEL_307;
      }
    }

LABEL_393:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_394:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_395:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    v289 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v6;
    v392 = 2048;
    v393 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_396:
    re::internal::assertLog(6, v290, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v289, v291);
    _os_crash();
    __break(1u);
LABEL_397:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    v289 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v6;
    v392 = 2048;
    v393 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_398:
    re::internal::assertLog(6, v292, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v289, v293);
    _os_crash();
    __break(1u);
LABEL_399:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v6;
    v392 = 2048;
    v393 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_400:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_401:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_402:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_403:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_404:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_405:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_406:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_407:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v354, v353);
    _os_crash();
    __break(1u);
LABEL_408:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_409:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v354, v353);
    _os_crash();
    __break(1u);
LABEL_410:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v13;
    v392 = 2048;
    v393 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_411:
    v374 = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v375 = 0u;
    v248 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v386 = 136315906;
    v387 = "operator[]";
    v388 = 1024;
    v389 = 468;
    v390 = 2048;
    v391 = v6;
    v392 = 2048;
    v393 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_412:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 200, v12);
    _os_crash();
    __break(1u);
    goto LABEL_413;
  }

LABEL_307:
  v318 = v365[21];
  if (v318)
  {
    v319 = 0;
    v320 = v365[20];
    a6 = *(a2 + 48);
    do
    {
      v13 = *(v320 + 8 * v319);
      if (a6 <= v13)
      {
        goto LABEL_394;
      }

      v321 = *(a2 + 56) + (v13 << 6);
      if ((*(v321 + 40) & 0xFE) == 2 && *(v321 + 56) == -1)
      {
        v322 = *(a2 + 4160);
        *(a2 + 4160) = v322 + 1;
        *(v321 + 56) = v322;
        v318 = v365[21];
      }
    }

    while (++v319 < v318);
  }

  v323 = v365[23];
  if (v323)
  {
    v324 = 0;
    v325 = v365[22];
    a6 = *(a2 + 72);
    do
    {
      v13 = *(v325 + 8 * v324);
      if (a6 <= v13)
      {
        goto LABEL_400;
      }

      v326 = *(a2 + 80) + (v13 << 6);
      if ((*(v326 + 40) & 0xFE) == 2 && *(v326 + 56) == -1)
      {
        v327 = *(a2 + 4168);
        *(a2 + 4168) = v327 + 1;
        *(v326 + 56) = v327;
        v323 = v365[23];
      }
    }

    while (++v324 < v323);
  }

  v328 = v365[25];
  if (v328)
  {
    v329 = 0;
    v330 = v365[24];
    a6 = *(a2 + 96);
    do
    {
      v13 = *(v330 + 8 * v329);
      if (a6 <= v13)
      {
        goto LABEL_401;
      }

      v331 = *(a2 + 104) + (v13 << 6);
      if ((*(v331 + 40) & 0xFE) == 2 && *(v331 + 56) == -1)
      {
        v332 = *(a2 + 4176);
        *(a2 + 4176) = v332 + 1;
        *(v331 + 56) = v332;
        v328 = v365[25];
      }
    }

    while (++v329 < v328);
  }

  v333 = v365[27];
  if (v333)
  {
    v334 = 0;
    v335 = v365[26];
    a6 = *(a2 + 120);
    do
    {
      v13 = *(v335 + 8 * v334);
      if (a6 <= v13)
      {
        goto LABEL_402;
      }

      v336 = *(a2 + 128) + (v13 << 6);
      if ((*(v336 + 40) & 0xFE) == 2 && *(v336 + 56) == -1)
      {
        v337 = *(a2 + 4184);
        *(a2 + 4184) = v337 + 1;
        *(v336 + 56) = v337;
        v333 = v365[27];
      }
    }

    while (++v334 < v333);
  }

  v338 = v365[29];
  if (v338)
  {
    v339 = 0;
    v340 = v365[28];
    a6 = *(a2 + 144);
    do
    {
      v13 = *(v340 + 8 * v339);
      if (a6 <= v13)
      {
        goto LABEL_403;
      }

      v341 = *(a2 + 152) + (v13 << 6);
      if ((*(v341 + 40) & 0xFE) == 2 && *(v341 + 56) == -1)
      {
        v342 = *(a2 + 4192);
        *(a2 + 4192) = v342 + 1;
        *(v341 + 56) = v342;
        v338 = v365[29];
      }
    }

    while (++v339 < v338);
  }

  v343 = v365[31];
  if (v343)
  {
    v344 = 0;
    v345 = v365[30];
    a6 = *(a2 + 168);
    do
    {
      v13 = *(v345 + 8 * v344);
      if (a6 <= v13)
      {
        goto LABEL_404;
      }

      v346 = *(a2 + 176) + (v13 << 6);
      if ((*(v346 + 40) & 0xFE) == 2 && *(v346 + 56) == -1)
      {
        v347 = *(a2 + 4200);
        *(a2 + 4200) = v347 + 1;
        *(v346 + 56) = v347;
        v343 = v365[31];
      }
    }

    while (++v344 < v343);
  }

  v348 = v365[33];
  if (v348)
  {
    v349 = 0;
    v350 = v365[32];
    a6 = *(a2 + 192);
    do
    {
      v13 = *(v350 + 8 * v349);
      if (a6 <= v13)
      {
        goto LABEL_405;
      }

      v351 = *(a2 + 200) + (v13 << 6);
      if ((*(v351 + 40) & 0xFE) == 2 && *(v351 + 56) == -1)
      {
        v352 = *(a2 + 4208);
        *(a2 + 4208) = v352 + 1;
        *(v351 + 56) = v352;
        v348 = v365[33];
      }
    }

    while (++v349 < v348);
  }

  v353 = v365[35];
  if (v353)
  {
    v354 = 0;
    a6 = *(a2 + 192);
    v355 = (v365[34] + 16);
    do
    {
      v13 = *(v355 - 2);
      if (a6 <= v13)
      {
        goto LABEL_406;
      }

      v356 = *(a2 + 200);
      v357 = v356 + (v13 << 6);
      if ((*(v357 + 40) & 0xFE) == 2 && *(v357 + 56) == -1)
      {
        v358 = *(a2 + 4208);
        *(a2 + 4208) = v358 + 1;
        *(v357 + 56) = v358;
        v353 = v365[35];
      }

      if (v353 <= v354)
      {
        goto LABEL_407;
      }

      v13 = *(v355 - 1);
      v12 = *(a2 + 144);
      if (v12 <= v13)
      {
        goto LABEL_408;
      }

      v359 = *(a2 + 152) + (v13 << 6);
      if ((*(v359 + 40) & 0xFE) == 2 && *(v359 + 56) == -1)
      {
        v360 = *(a2 + 4192);
        *(a2 + 4192) = v360 + 1;
        *(v359 + 56) = v360;
        v353 = v365[35];
      }

      if (v353 <= v354)
      {
        goto LABEL_409;
      }

      v13 = *v355;
      if (a6 <= *v355)
      {
        goto LABEL_410;
      }

      v361 = v356 + (v13 << 6);
      if ((*(v361 + 40) & 0xFE) == 2 && *(v361 + 56) == -1)
      {
        v362 = *(a2 + 4208);
        *(a2 + 4208) = v362 + 1;
        *(v361 + 56) = v362;
        v353 = v365[35];
      }

      ++v354;
      v355 += 3;
    }

    while (v354 < v353);
  }

  *v363 = 1;
  if ((v369[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

void re::FixedArray<re::EvaluationCommand>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 4 * a3;
  v6 = (*(*a2 + 32))(a2, 4 * a3, 4);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 4);
    v8 = (v8 + v5 - 4);
  }

  *v8 = 0;
}

_anonymous_namespace_ *re::FixedArray<unsigned long>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::EvaluationModelSingleThread::deinit(re::EvaluationModelSingleThread *this)
{
  re::FixedRegisterTable::deinit((this + 16));
  re::FixedArray<re::EvaluationCallbackData>::deinit(this + 26);
  re::FixedArray<re::EvaluationContext>::deinit(this + 29);
  re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(this + 32);
  re::FixedRegisterTable::deinit((this + 280));
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::FixedRegisterTable::deinit((this + 496));
  re::FixedArray<CoreIKTransform>::deinit(this + 86);
  re::FixedArray<CoreIKTransform>::deinit(this + 89);
  re::FixedArray<CoreIKTransform>::deinit(this + 95);

  return re::FixedArray<CoreIKTransform>::deinit(this + 92);
}

uint64_t re::EvaluationModelSingleThread::evaluate(re::EvaluationModelSingleThread *this, re::EvaluationContextSlices *a2)
{
  v5 = *(this + 3);
  v4 = *(this + 4);
  v115 = v4;
  v116 = v5;
  v7 = *(this + 6);
  v6 = *(this + 7);
  v117 = v6;
  v118 = v7;
  i = *(this + 9);
  v8 = *(this + 10);
  v119 = v8;
  v120 = i;
  v121 = *(this + 13);
  v122 = *(this + 12);
  v123 = *(this + 16);
  v124 = *(this + 15);
  v125 = *(this + 19);
  v126 = *(this + 18);
  v127 = *(this + 22);
  v128 = *(this + 21);
  v129 = *(this + 25);
  v130 = *(this + 24);
  v131 = *(this + 28);
  v132 = *(this + 31);
  v133 = *(this + 34);
  v10 = *(a2 + 1);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 36);
    v13 = *a2;
    while (v12 != v11)
    {
      v14 = *(*(this + 37) + 8 * v11);
      if (v14 != -1)
      {
        if (v5 <= v14)
        {
          goto LABEL_174;
        }

        *(v4 + 4 * v14) = *(v13 + 4 * v11);
      }

      if (v10 == ++v11)
      {
        goto LABEL_8;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_142;
  }

LABEL_8:
  v15 = *(a2 + 3);
  if (v15)
  {
    v16 = 0;
    v17 = *(this + 39);
    v18 = *(a2 + 2);
    while (v17 != v16)
    {
      v19 = *(*(this + 40) + 8 * v16);
      if (v19 != -1)
      {
        if (v7 <= v19)
        {
          goto LABEL_175;
        }

        *(v6 + 4 * v19) = *(v18 + 4 * v16);
      }

      if (v15 == ++v16)
      {
        goto LABEL_15;
      }
    }

LABEL_142:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_143:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_145:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_146:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_147:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_148:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_149:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_150:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_151:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_152:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_153;
  }

LABEL_15:
  v20 = *(a2 + 5);
  if (v20)
  {
    v21 = 0;
    v22 = *(this + 42);
    v23 = *(a2 + 4);
    while (v22 != v21)
    {
      v24 = *(*(this + 43) + 8 * v21);
      if (v24 != -1)
      {
        if (i <= v24)
        {
          goto LABEL_176;
        }

        *(v8 + 4 * v24) = *(v23 + 4 * v21);
      }

      if (v20 == ++v21)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_143;
  }

LABEL_22:
  v25 = *(a2 + 7);
  if (v25)
  {
    v26 = 0;
    i = 0;
    while (*(this + 45) > i)
    {
      v27 = *(*(this + 46) + 8 * i);
      if (v27 != -1)
      {
        if (v25 <= i)
        {
          goto LABEL_179;
        }

        if (*(this + 12) <= v27)
        {
          goto LABEL_181;
        }

        v28 = (*(a2 + 6) + v26);
        v29 = (*(this + 13) + 48 * v27);
        v30 = *v28;
        v31 = v28[2];
        v29[1] = v28[1];
        v29[2] = v31;
        *v29 = v30;
        v25 = *(a2 + 7);
      }

      ++i;
      v26 += 48;
      if (i >= v25)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_144;
  }

LABEL_30:
  v32 = *(a2 + 9);
  if (v32)
  {
    v33 = 0;
    i = 0;
    while (*(this + 48) > i)
    {
      v34 = *(*(this + 49) + 8 * i);
      if (v34 != -1)
      {
        if (v32 <= i)
        {
          goto LABEL_187;
        }

        if (*(this + 15) <= v34)
        {
          goto LABEL_188;
        }

        v35 = (*(a2 + 8) + v33);
        v36 = (*(this + 16) + (v34 << 6));
        v37 = *v35;
        v38 = v35[1];
        v39 = v35[3];
        v36[2] = v35[2];
        v36[3] = v39;
        *v36 = v37;
        v36[1] = v38;
        v32 = *(a2 + 9);
      }

      ++i;
      v33 += 64;
      if (i >= v32)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_145;
  }

LABEL_38:
  v40 = *(a2 + 11);
  if (v40)
  {
    v41 = 0;
    i = 0;
    while (*(this + 51) > i)
    {
      v42 = *(*(this + 52) + 8 * i);
      if (v42 != -1)
      {
        if (v40 <= i)
        {
          goto LABEL_189;
        }

        if (*(this + 18) <= v42)
        {
          goto LABEL_190;
        }

        *(*(this + 19) + 16 * v42) = *(*(a2 + 10) + v41);
        v40 = *(a2 + 11);
      }

      ++i;
      v41 += 16;
      if (i >= v40)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_146;
  }

LABEL_46:
  v43 = *(a2 + 13);
  if (v43)
  {
    i = 0;
    while (*(this + 54) > i)
    {
      v44 = *(*(this + 55) + 8 * i);
      if (v44 != -1)
      {
        if (v43 <= i)
        {
          goto LABEL_191;
        }

        if (*(this + 21) <= v44)
        {
          goto LABEL_192;
        }

        *(*(this + 22) + 8 * v44) = *(*(a2 + 12) + 8 * i);
        v43 = *(a2 + 13);
      }

      if (++i >= v43)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_147;
  }

LABEL_54:
  v45 = *(a2 + 15);
  if (v45)
  {
    v46 = 0;
    i = 0;
    while (*(this + 57) > i)
    {
      v47 = *(*(this + 58) + 8 * i);
      if (v47 != -1)
      {
        if (v45 <= i)
        {
          goto LABEL_193;
        }

        if (*(this + 24) <= v47)
        {
          goto LABEL_194;
        }

        *(*(this + 25) + 16 * v47) = *(*(a2 + 14) + v46);
        v45 = *(a2 + 15);
      }

      ++i;
      v46 += 16;
      if (i >= v45)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_148;
  }

LABEL_62:
  v48 = *(this + 60);
  if (v48)
  {
    v49 = 0;
    v50 = 0;
    for (i = 0; i < v48; ++i)
    {
      v51 = *(*(this + 61) + v49);
      if (v51 != -1)
      {
        v52 = *(a2 + 17);
        if (v52 <= i)
        {
          goto LABEL_195;
        }

        if (*(this + 24) <= v51)
        {
          goto LABEL_196;
        }

        *(*(this + 25) + 16 * v51) = *(*(a2 + 16) + v50);
        v48 = *(this + 60);
      }

      if (v48 <= i)
      {
        goto LABEL_151;
      }

      v53 = *(*(this + 61) + v49 + 8);
      if (v53 != -1)
      {
        v54 = *(a2 + 17);
        if (v54 <= i)
        {
          goto LABEL_197;
        }

        if (*(this + 18) <= v53)
        {
          goto LABEL_198;
        }

        *(*(this + 19) + 16 * v53) = *(*(a2 + 16) + v50 + 16);
        v48 = *(this + 60);
      }

      if (v48 <= i)
      {
        goto LABEL_152;
      }

      v55 = *(*(this + 61) + v49 + 16);
      if (v55 != -1)
      {
        v56 = *(a2 + 17);
        if (v56 <= i)
        {
          goto LABEL_199;
        }

        if (*(this + 24) <= v55)
        {
          goto LABEL_200;
        }

        *(*(this + 25) + 16 * v55) = *(*(a2 + 16) + v50 + 32);
        v48 = *(this + 60);
      }

      v50 += 48;
      v49 += 24;
    }
  }

  v57 = *(this + 90);
  if (v57)
  {
    v58 = 0;
    i = 0;
    while (*(this + 96) > i)
    {
      if (*(this + 90) <= i)
      {
        goto LABEL_150;
      }

      v59 = *(*(this + 97) + 8 * i) + v58;
      v58 = v59;
      if (v57 == i)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_149;
  }

LABEL_84:
  v60 = *(this + 63);
  if (v60)
  {
    v61 = 0;
    v63 = *(a2 + 18);
    v62 = *(a2 + 19);
    v64 = *(this + 64);
    i = *(this + 3);
    while (1)
    {
      v65 = *(v64 + 8 * v61);
      if (i <= v65)
      {
        break;
      }

      if (v62 == v61)
      {
        goto LABEL_154;
      }

      *(v63 + 4 * v61++) = *(*(this + 4) + 4 * v65);
      if (v60 == v61)
      {
        goto LABEL_89;
      }
    }

LABEL_153:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v62, v62, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    _os_crash();
    __break(1u);
    goto LABEL_155;
  }

LABEL_89:
  v66 = *(this + 66);
  if (v66)
  {
    v67 = 0;
    v69 = *(a2 + 20);
    v68 = *(a2 + 21);
    v70 = *(this + 67);
    i = *(this + 6);
    while (1)
    {
      v71 = *(v70 + 8 * v67);
      if (i <= v71)
      {
        break;
      }

      if (v68 == v67)
      {
        goto LABEL_156;
      }

      *(v69 + 4 * v67++) = *(*(this + 7) + 4 * v71);
      if (v66 == v67)
      {
        goto LABEL_94;
      }
    }

LABEL_155:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_156:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v68, v68);
    _os_crash();
    __break(1u);
    goto LABEL_157;
  }

LABEL_94:
  v72 = *(this + 69);
  if (v72)
  {
    v73 = 0;
    v75 = *(a2 + 22);
    v74 = *(a2 + 23);
    v76 = *(this + 70);
    i = *(this + 9);
    while (1)
    {
      v77 = *(v76 + 8 * v73);
      if (i <= v77)
      {
        break;
      }

      if (v74 == v73)
      {
        goto LABEL_158;
      }

      *(v75 + 4 * v73++) = *(*(this + 10) + 4 * v77);
      if (v72 == v73)
      {
        goto LABEL_99;
      }
    }

LABEL_157:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_158:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v74, v74);
    _os_crash();
    __break(1u);
    goto LABEL_159;
  }

LABEL_99:
  v78 = *(this + 72);
  if (v78)
  {
    v79 = 0;
    i = 0;
    while (v78 > i)
    {
      v80 = *(*(this + 73) + 8 * i);
      if (*(this + 12) <= v80)
      {
        goto LABEL_160;
      }

      v81 = *(a2 + 25);
      if (v81 <= i)
      {
        goto LABEL_161;
      }

      v82 = (*(this + 13) + 48 * v80);
      v83 = (*(a2 + 24) + v79);
      v84 = *v82;
      v85 = v82[2];
      v83[1] = v82[1];
      v83[2] = v85;
      *v83 = v84;
      ++i;
      v78 = *(this + 72);
      v79 += 48;
      if (i >= v78)
      {
        goto LABEL_105;
      }
    }

LABEL_159:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_160:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_161:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v81);
    _os_crash();
    __break(1u);
    goto LABEL_162;
  }

LABEL_105:
  v86 = *(this + 75);
  if (v86)
  {
    v87 = 0;
    i = 0;
    while (v86 > i)
    {
      v88 = *(*(this + 76) + 8 * i);
      if (*(this + 15) <= v88)
      {
        goto LABEL_163;
      }

      v89 = *(a2 + 27);
      if (v89 <= i)
      {
        goto LABEL_164;
      }

      v90 = (*(this + 16) + (v88 << 6));
      v91 = (*(a2 + 26) + v87);
      v92 = *v90;
      v93 = v90[1];
      v94 = v90[3];
      v91[2] = v90[2];
      v91[3] = v94;
      *v91 = v92;
      v91[1] = v93;
      ++i;
      v86 = *(this + 75);
      v87 += 64;
      if (i >= v86)
      {
        goto LABEL_111;
      }
    }

LABEL_162:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_163:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_164:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v89);
    _os_crash();
    __break(1u);
    goto LABEL_165;
  }

LABEL_111:
  v95 = *(this + 78);
  if (v95)
  {
    v96 = 0;
    i = 0;
    while (v95 > i)
    {
      v97 = *(*(this + 79) + 8 * i);
      if (*(this + 18) <= v97)
      {
        goto LABEL_166;
      }

      v98 = *(a2 + 29);
      if (v98 <= i)
      {
        goto LABEL_167;
      }

      *(*(a2 + 28) + v96) = *(*(this + 19) + 16 * v97);
      ++i;
      v95 = *(this + 78);
      v96 += 16;
      if (i >= v95)
      {
        goto LABEL_117;
      }
    }

LABEL_165:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_166:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_167:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v98);
    _os_crash();
    __break(1u);
    goto LABEL_168;
  }

LABEL_117:
  v99 = *(this + 81);
  if (v99)
  {
    i = 0;
    while (v99 > i)
    {
      v100 = *(*(this + 82) + 8 * i);
      if (*(this + 21) <= v100)
      {
        goto LABEL_169;
      }

      v101 = *(a2 + 31);
      if (v101 <= i)
      {
        goto LABEL_170;
      }

      *(*(a2 + 30) + 8 * i++) = *(*(this + 22) + 8 * v100);
      v99 = *(this + 81);
      if (i >= v99)
      {
        goto LABEL_123;
      }
    }

LABEL_168:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_169:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v101);
    _os_crash();
    __break(1u);
LABEL_171:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v105);
    _os_crash();
    __break(1u);
LABEL_174:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_175:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_176:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v109);
    _os_crash();
    __break(1u);
LABEL_179:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v25);
    _os_crash();
    __break(1u);
LABEL_180:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v111);
    _os_crash();
    __break(1u);
LABEL_184:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_185:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_186:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v113);
    _os_crash();
    __break(1u);
LABEL_187:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v32);
    _os_crash();
    __break(1u);
LABEL_188:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_189:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v40);
    _os_crash();
    __break(1u);
LABEL_190:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_191:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v43);
    _os_crash();
    __break(1u);
LABEL_192:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_193:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v45);
    _os_crash();
    __break(1u);
LABEL_194:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_195:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v52);
    _os_crash();
    __break(1u);
LABEL_196:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_197:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v54);
    _os_crash();
    __break(1u);
LABEL_198:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_199:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v56);
    _os_crash();
    __break(1u);
LABEL_200:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_123:
  v102 = *(this + 84);
  if (v102)
  {
    v103 = 0;
    i = 0;
    while (v102 > i)
    {
      v104 = *(*(this + 85) + 8 * i);
      if (*(this + 24) <= v104)
      {
        goto LABEL_172;
      }

      v105 = *(a2 + 33);
      if (v105 <= i)
      {
        goto LABEL_173;
      }

      *(*(a2 + 32) + v103) = *(*(this + 25) + 16 * v104);
      ++i;
      v102 = *(this + 84);
      v103 += 16;
      if (i >= v102)
      {
        goto LABEL_129;
      }
    }

    goto LABEL_171;
  }

LABEL_129:
  if (*(this + 87))
  {
    v106 = 0;
    v107 = 0;
    i = 0;
    while (1)
    {
      v108 = *(*(this + 88) + v106);
      if (*(this + 24) <= v108)
      {
        goto LABEL_177;
      }

      v109 = *(a2 + 35);
      if (v109 <= i)
      {
        goto LABEL_178;
      }

      *(*(a2 + 34) + v107) = *(*(this + 25) + 16 * v108);
      if (*(this + 87) <= i)
      {
        goto LABEL_180;
      }

      v110 = *(*(this + 88) + v106 + 8);
      if (*(this + 18) <= v110)
      {
        goto LABEL_182;
      }

      v111 = *(a2 + 35);
      if (v111 <= i)
      {
        goto LABEL_183;
      }

      *(*(a2 + 34) + v107 + 16) = *(*(this + 19) + 16 * v110);
      if (*(this + 87) <= i)
      {
        goto LABEL_184;
      }

      v112 = *(*(this + 88) + v106 + 16);
      if (*(this + 24) <= v112)
      {
        goto LABEL_185;
      }

      v113 = *(a2 + 35);
      if (v113 <= i)
      {
        goto LABEL_186;
      }

      *(*(a2 + 34) + v107 + 32) = *(*(this + 25) + 16 * v112);
      ++i;
      v107 += 48;
      v106 += 24;
      if (i >= *(this + 87))
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t re::EvaluationModelSingleThread::setupEvaluationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0;
  v24 = 0;
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  re::EvaluationTree::resolveAliasRegisters(a3, a2, a4, &v27, &v24, &v12, &v9, v8);
  (*(*a1 + 24))(a1);
  re::EvaluationModelSingleThread::init(a5);
  if (v9 && v10)
  {
    (*(*v9 + 40))();
  }

  if (*(&v22 + 1))
  {
    if (v23)
    {
      (*(**(&v22 + 1) + 40))();
      v23 = 0uLL;
    }

    *(&v22 + 1) = 0;
  }

  if (v21)
  {
    if (*(&v21 + 1))
    {
      (*(*v21 + 40))();
      *(&v21 + 1) = 0;
      *&v22 = 0;
    }

    *&v21 = 0;
  }

  if (*(&v19 + 1))
  {
    if (v20)
    {
      (*(**(&v19 + 1) + 40))();
      v20 = 0uLL;
    }

    *(&v19 + 1) = 0;
  }

  if (v18)
  {
    if (*(&v18 + 1))
    {
      (*(*v18 + 40))();
      *(&v18 + 1) = 0;
      *&v19 = 0;
    }

    *&v18 = 0;
  }

  if (*(&v16 + 1))
  {
    if (v17)
    {
      (*(**(&v16 + 1) + 40))();
      v17 = 0uLL;
    }

    *(&v16 + 1) = 0;
  }

  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))();
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))();
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  if (v12 && *(&v12 + 1))
  {
    (*(*v12 + 40))();
  }

  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

  if (*(&v37 + 1))
  {
    if (v38)
    {
      (*(**(&v37 + 1) + 40))(*(&v37 + 1), *(&v38 + 1));
      v38 = 0uLL;
    }

    *(&v37 + 1) = 0;
  }

  if (v36)
  {
    if (*(&v36 + 1))
    {
      (*(*v36 + 40))();
      *(&v36 + 1) = 0;
      *&v37 = 0;
    }

    *&v36 = 0;
  }

  if (*(&v34 + 1))
  {
    if (v35)
    {
      (*(**(&v34 + 1) + 40))();
      v35 = 0uLL;
    }

    *(&v34 + 1) = 0;
  }

  if (v33)
  {
    if (*(&v33 + 1))
    {
      (*(*v33 + 40))();
      *(&v33 + 1) = 0;
      *&v34 = 0;
    }

    *&v33 = 0;
  }

  if (*(&v31 + 1))
  {
    if (v32)
    {
      (*(**(&v31 + 1) + 40))();
      v32 = 0uLL;
    }

    *(&v31 + 1) = 0;
  }

  if (v30)
  {
    if (*(&v30 + 1))
    {
      (*(*v30 + 40))();
      *(&v30 + 1) = 0;
      *&v31 = 0;
    }

    *&v30 = 0;
  }

  if (*(&v28 + 1))
  {
    if (v29)
    {
      (*(**(&v28 + 1) + 40))();
      v29 = 0uLL;
    }

    *(&v28 + 1) = 0;
  }

  result = v27;
  if (v27)
  {
    if (*(&v27 + 1))
    {
      return (*(*v27 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::EvaluationCommand>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 4, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          result = (*(*result + 32))(result, 4 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 4 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::finishRegisterProcessing(char *result, int a2, unint64_t a3, char a4)
{
  v4 = result + 16;
  v5 = &result[24 * a2 + 16];
  if (*(v5 + 8) <= a3)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = result;
  *(*(v5 + 16) + (a3 << 6) + 40) = a4;
  v7 = &result[24 * a2];
  if (*(v7 + 57) <= a3)
  {
    goto LABEL_12;
  }

  v8 = (*(v7 + 58) + 16 * a3);
  v9 = v8[1];
  if (v9)
  {
    for (i = (*v8 + 8); ; i += 2)
    {
      v11 = *(i - 8);
      v12 = &v4[24 * *(i - 8)];
      v13 = *i;
      if (*(v12 + 1) <= *i)
      {
        break;
      }

      v14 = *(v12 + 2) + (v13 << 6);
      v15 = *(v14 + 32) - 1;
      *(v14 + 32) = v15;
      if (!v15)
      {
      }

      if (!--v9)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::processRegister<int>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v143 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  if (v5 <= a2)
  {
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 4);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v119) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[5];
      v14 = v10[3];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[5];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[5];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[43];
        if (v5 <= v39)
        {
LABEL_131:
          v134[0] = 0;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v120 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v135 = 136315906;
          v136 = "operator[]";
          v137 = 1024;
          v138 = 797;
          v139 = 2048;
          v140 = v39;
          v141 = 2048;
          v142 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }

        LODWORD(v119) = *(v10[45] + 4 * v39);
      }
    }

    v5 = v10[83];
    while (v5 > v12)
    {
      v11 = *(v10[85] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 797;
    v139 = 2048;
    v140 = v12;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v4;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v89 = v69;
    v90 = v70;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v89;
    v141 = 2048;
    v142 = v90;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v91 = v73;
    v92 = v74;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v91;
    v141 = 2048;
    v142 = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v93 = v53;
    v94 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v93;
    v141 = 2048;
    v142 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v95 = v57;
    v96 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v95;
    v141 = 2048;
    v142 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v97 = v61;
    v98 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v97;
    v141 = 2048;
    v142 = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v99 = v65;
    v100 = v66;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v99;
    v141 = 2048;
    v142 = v100;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v101 = v49;
    v102 = v50;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v101;
    v141 = 2048;
    v142 = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v103 = v43;
    v104 = v44;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v103;
    v141 = 2048;
    v142 = v104;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v105 = v28;
    v106 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v105;
    v141 = 2048;
    v142 = v106;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v107 = v34;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v107;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v108 = v28;
    v109 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v108;
    v141 = 2048;
    v142 = v109;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v110 = v28;
    v111 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v110;
    v141 = 2048;
    v142 = v111;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v112 = v28;
    v113 = v29;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v112;
    v141 = 2048;
    v142 = v113;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v114 = v28;
    v115 = v33;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v114;
    v141 = 2048;
    v142 = v115;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v116 = v28;
    v117 = v36;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v116;
    v141 = 2048;
    v142 = v117;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v118 = v28;
    v39 = v31;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v118;
    v141 = 2048;
    v142 = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v134, 0, sizeof(v134));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v135 = 0;
    v134[v3] = *(v8 + 6);
    v81 = *(v6 + 481);
    *&v120 = *(v6 + 483);
    *(&v120 + 1) = v81;
    v82 = *(v6 + 486);
    *&v121 = *(v6 + 488);
    *(&v121 + 1) = v82;
    v83 = *(v6 + 491);
    *&v122 = *(v6 + 493);
    *(&v122 + 1) = v83;
    v84 = *(v6 + 496);
    *&v123 = *(v6 + 498);
    *(&v123 + 1) = v84;
    v85 = *(v6 + 501);
    *&v124 = *(v6 + 503);
    *(&v124 + 1) = v85;
    v86 = *(v6 + 506);
    v125 = *(v6 + 508);
    v126 = v86;
    v87 = *(v6 + 511);
    v127 = *(v6 + 513);
    v128 = v87;
    v88 = *(v6 + 516);
    v129 = *(v6 + 518);
    v130 = v88;
    v132 = 0;
    v133 = 0;
    v131 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] > 1u)
    {
      if (v27 == 2)
      {
        v28 = *&v26[2 * v24];
        v36 = *(this + 9);
        if (v36 <= v28)
        {
          goto LABEL_129;
        }

        v30 = *(this + 10);
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_136;
        }

        v28 = *&v26[2 * v24];
        v32 = *(this + 12);
        if (v32 <= v28)
        {
          goto LABEL_126;
        }

        v30 = *(this + 13);
      }

      goto LABEL_49;
    }

    if (v25[v24])
    {
      v28 = *&v26[2 * v24];
      v31 = *(this + 6);
      if (v31 <= v28)
      {
        goto LABEL_130;
      }

      v30 = *(this + 7);
      goto LABEL_49;
    }

    v34 = *&v26[2 * v24];
    if (v5 <= v34)
    {
      goto LABEL_124;
    }

    v35 = v7 + (v34 << 6);
LABEL_50:
    if (!v35 || *(v35 + 40) != 3)
    {
      goto LABEL_110;
    }

    v134[v24++] = *(v35 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_123;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_136;
      }

      v28 = *&v26[2 * v24];
      v33 = *(this + 18);
      if (v33 <= v28)
      {
        goto LABEL_128;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_125;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_127;
    }

    v30 = *(this + 25);
LABEL_49:
    v35 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_136;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_134;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_133:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v5;
    v141 = 2048;
    v142 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v5;
    v141 = 2048;
    v142 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v40 = (v8 + 2);
  while (2)
  {
    v42 = *v5++;
    v41 = v42;
    if (v42 > 3)
    {
      if (v41 <= 5)
      {
        if (v41 == 4)
        {
          v65 = *v40;
          v66 = *(v6 + 15);
          if (v66 <= *v40)
          {
            goto LABEL_120;
          }

          v67 = *(v6 + 16) + (v65 << 6);
          v68 = *(v67 + 56);
          v47 = (v67 + 56);
          v46 = v68;
          if (v68 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 523);
          *(v6 + 523) = v46 + 1;
        }

        else
        {
          if (v41 != 5)
          {
            goto LABEL_135;
          }

          v49 = *v40;
          v50 = *(v6 + 18);
          if (v50 <= *v40)
          {
            goto LABEL_121;
          }

          v51 = *(v6 + 19) + (v49 << 6);
          v52 = *(v51 + 56);
          v47 = (v51 + 56);
          v46 = v52;
          if (v52 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 524);
          *(v6 + 524) = v46 + 1;
        }

        goto LABEL_101;
      }

      if (v41 == 6)
      {
        v73 = *v40;
        v74 = *(v6 + 21);
        if (v74 <= *v40)
        {
          goto LABEL_116;
        }

        v75 = *(v6 + 22) + (v73 << 6);
        v76 = *(v75 + 56);
        v47 = (v75 + 56);
        v46 = v76;
        if (v76 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 525);
        *(v6 + 525) = v46 + 1;
        goto LABEL_101;
      }

      if (v41 == 7)
      {
        v57 = *v40;
        v58 = *(v6 + 24);
        if (v58 <= *v40)
        {
          goto LABEL_118;
        }

        v59 = *(v6 + 25) + (v57 << 6);
        v60 = *(v59 + 56);
        v47 = (v59 + 56);
        v46 = v60;
        if (v60 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 526);
        *(v6 + 526) = v46 + 1;
        goto LABEL_101;
      }

LABEL_135:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v41);
      _os_crash();
      __break(1u);
LABEL_136:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v69 = *v40;
        v70 = *(v6 + 9);
        if (v70 <= *v40)
        {
          goto LABEL_115;
        }

        v71 = *(v6 + 10) + (v69 << 6);
        v72 = *(v71 + 56);
        v47 = (v71 + 56);
        v46 = v72;
        if (v72 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 521);
        *(v6 + 521) = v46 + 1;
      }

      else
      {
        if (v41 != 3)
        {
          goto LABEL_135;
        }

        v53 = *v40;
        v54 = *(v6 + 12);
        if (v54 <= *v40)
        {
          goto LABEL_117;
        }

        v55 = *(v6 + 13) + (v53 << 6);
        v56 = *(v55 + 56);
        v47 = (v55 + 56);
        v46 = v56;
        if (v56 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 522);
        *(v6 + 522) = v46 + 1;
      }

LABEL_101:
      *v47 = v46;
      goto LABEL_102;
    }

    if (!v41)
    {
      v61 = *v40;
      v62 = *(v6 + 3);
      if (v62 <= *v40)
      {
        goto LABEL_119;
      }

      v63 = *(v6 + 4) + (v61 << 6);
      v64 = *(v63 + 56);
      v47 = (v63 + 56);
      v46 = v64;
      if (v64 != -1)
      {
        goto LABEL_102;
      }

      v46 = *(v6 + 519);
      *(v6 + 519) = v46 + 1;
      goto LABEL_101;
    }

    if (v41 != 1)
    {
      goto LABEL_135;
    }

    v43 = *v40;
    v44 = *(v6 + 6);
    if (v44 <= *v40)
    {
      goto LABEL_122;
    }

    v45 = *(v6 + 7) + (v43 << 6);
    v48 = *(v45 + 56);
    v47 = (v45 + 56);
    v46 = v48;
    if (v48 == -1)
    {
      v46 = *(v6 + 520);
      *(v6 + 520) = v46 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v120 = v46;
    re::DynamicArray<unsigned long>::add(a3, &v120);
    ++v40;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 3);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_132:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v4;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  v77 = *(v6 + 4) + (v4 << 6);
  v80 = *(v77 + 56);
  v79 = (v77 + 56);
  v78 = v80;
  if (v80 == -1)
  {
    v78 = *(v6 + 519);
    *(v6 + 519) = v78 + 1;
    *v79 = v78;
  }

  *&v120 = v78;
  re::DynamicArray<unsigned long>::add(a3, &v120);
}

char *re::anonymous namespace::RegisterMapping::processRegister<unsigned int>(char *this, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v142 = *MEMORY[0x1E69E9840];
  v5 = *(this + 6);
  if (v5 <= a2)
  {
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 7);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v118) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[10];
      v14 = v10[8];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[10];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[10];
      }

      if (v16 != v15 && *v16 == v11)
      {
        a3 = (v16 - v13) >> 3;
        v5 = v10[48];
        if (v5 <= a3)
        {
LABEL_131:
          v133[0] = 0;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v119 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v134 = 136315906;
          v135 = "operator[]";
          v136 = 1024;
          v137 = 797;
          v138 = 2048;
          v139 = a3;
          v140 = 2048;
          v141 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }

        LODWORD(v118) = *(v10[50] + 4 * a3);
      }
    }

    v5 = v10[88];
    while (v5 > v12)
    {
      v11 = *(v10[90] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 797;
    v138 = 2048;
    v139 = v12;
    v140 = 2048;
    v141 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v4;
    v140 = 2048;
    v141 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v88 = v68;
    v89 = v69;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v88;
    v140 = 2048;
    v141 = v89;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v90 = v72;
    v91 = v73;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v90;
    v140 = 2048;
    v141 = v91;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v92 = v52;
    v93 = v53;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v92;
    v140 = 2048;
    v141 = v93;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v94 = v56;
    v95 = v57;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v94;
    v140 = 2048;
    v141 = v95;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v96 = v60;
    v97 = v61;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v96;
    v140 = 2048;
    v141 = v97;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v98 = v64;
    v99 = v65;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v98;
    v140 = 2048;
    v141 = v99;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v100 = v48;
    v101 = v49;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v100;
    v140 = 2048;
    v141 = v101;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v102 = v42;
    v103 = v43;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v102;
    v140 = 2048;
    v141 = v103;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v104 = v28;
    v105 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v104;
    v140 = 2048;
    v141 = v105;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v106 = v28;
    v107 = v35;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v106;
    v140 = 2048;
    v141 = v107;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v108 = v28;
    v109 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v108;
    v140 = 2048;
    v141 = v109;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v110 = v28;
    v111 = v33;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v110;
    v140 = 2048;
    v141 = v111;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v112 = v28;
    v113 = v29;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v112;
    v140 = 2048;
    v141 = v113;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v114 = v28;
    v115 = v34;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v114;
    v140 = 2048;
    v141 = v115;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v116 = v28;
    a3 = v36;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v116;
    v140 = 2048;
    v141 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v118 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v117 = v31;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v117;
    v140 = 2048;
    v141 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v133, 0, sizeof(v133));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v134 = 0;
    v133[v3] = *(v8 + 6);
    v80 = *(v6 + 481);
    *&v119 = *(v6 + 483);
    *(&v119 + 1) = v80;
    v81 = *(v6 + 486);
    *&v120 = *(v6 + 488);
    *(&v120 + 1) = v81;
    v82 = *(v6 + 491);
    *&v121 = *(v6 + 493);
    *(&v121 + 1) = v82;
    v83 = *(v6 + 496);
    *&v122 = *(v6 + 498);
    *(&v122 + 1) = v83;
    v84 = *(v6 + 501);
    *&v123 = *(v6 + 503);
    *(&v123 + 1) = v84;
    v85 = *(v6 + 506);
    v124 = *(v6 + 508);
    v125 = v85;
    v86 = *(v6 + 511);
    v126 = *(v6 + 513);
    v127 = v86;
    v87 = *(v6 + 516);
    v128 = *(v6 + 518);
    v129 = v87;
    v131 = 0;
    v132 = 0;
    v130 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] > 1u)
    {
      if (v27 == 2)
      {
        v28 = *&v26[2 * v24];
        v36 = *(this + 9);
        if (v36 <= v28)
        {
          goto LABEL_129;
        }

        v30 = *(this + 10);
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_136;
        }

        v28 = *&v26[2 * v24];
        v33 = *(this + 12);
        if (v33 <= v28)
        {
          goto LABEL_126;
        }

        v30 = *(this + 13);
      }

      goto LABEL_49;
    }

    if (!v25[v24])
    {
      v28 = *&v26[2 * v24];
      v35 = *(this + 3);
      if (v35 <= v28)
      {
        goto LABEL_124;
      }

      v30 = *(this + 4);
      goto LABEL_49;
    }

    v31 = *&v26[2 * v24];
    if (v5 <= v31)
    {
      goto LABEL_130;
    }

    v32 = v7 + (v31 << 6);
LABEL_50:
    if (!v32 || *(v32 + 40) != 3)
    {
      goto LABEL_110;
    }

    v133[v24++] = *(v32 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_123;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_136;
      }

      v28 = *&v26[2 * v24];
      v34 = *(this + 18);
      if (v34 <= v28)
      {
        goto LABEL_128;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_125;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_127;
    }

    v30 = *(this + 25);
LABEL_49:
    v32 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_136;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_134;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_133:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v5;
    v140 = 2048;
    v141 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v5;
    v140 = 2048;
    v141 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v39 = (v8 + 2);
  while (2)
  {
    v41 = *v5++;
    v40 = v41;
    if (v41 > 3)
    {
      if (v40 <= 5)
      {
        if (v40 == 4)
        {
          v64 = *v39;
          v65 = *(v6 + 15);
          if (v65 <= *v39)
          {
            goto LABEL_120;
          }

          v66 = *(v6 + 16) + (v64 << 6);
          v67 = *(v66 + 56);
          v46 = (v66 + 56);
          v45 = v67;
          if (v67 != -1)
          {
            goto LABEL_102;
          }

          v45 = *(v6 + 523);
          *(v6 + 523) = v45 + 1;
        }

        else
        {
          if (v40 != 5)
          {
            goto LABEL_135;
          }

          v48 = *v39;
          v49 = *(v6 + 18);
          if (v49 <= *v39)
          {
            goto LABEL_121;
          }

          v50 = *(v6 + 19) + (v48 << 6);
          v51 = *(v50 + 56);
          v46 = (v50 + 56);
          v45 = v51;
          if (v51 != -1)
          {
            goto LABEL_102;
          }

          v45 = *(v6 + 524);
          *(v6 + 524) = v45 + 1;
        }

        goto LABEL_101;
      }

      if (v40 == 6)
      {
        v72 = *v39;
        v73 = *(v6 + 21);
        if (v73 <= *v39)
        {
          goto LABEL_116;
        }

        v74 = *(v6 + 22) + (v72 << 6);
        v75 = *(v74 + 56);
        v46 = (v74 + 56);
        v45 = v75;
        if (v75 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 525);
        *(v6 + 525) = v45 + 1;
        goto LABEL_101;
      }

      if (v40 == 7)
      {
        v56 = *v39;
        v57 = *(v6 + 24);
        if (v57 <= *v39)
        {
          goto LABEL_118;
        }

        v58 = *(v6 + 25) + (v56 << 6);
        v59 = *(v58 + 56);
        v46 = (v58 + 56);
        v45 = v59;
        if (v59 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 526);
        *(v6 + 526) = v45 + 1;
        goto LABEL_101;
      }

LABEL_135:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v40);
      _os_crash();
      __break(1u);
LABEL_136:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v68 = *v39;
        v69 = *(v6 + 9);
        if (v69 <= *v39)
        {
          goto LABEL_115;
        }

        v70 = *(v6 + 10) + (v68 << 6);
        v71 = *(v70 + 56);
        v46 = (v70 + 56);
        v45 = v71;
        if (v71 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 521);
        *(v6 + 521) = v45 + 1;
      }

      else
      {
        if (v40 != 3)
        {
          goto LABEL_135;
        }

        v52 = *v39;
        v53 = *(v6 + 12);
        if (v53 <= *v39)
        {
          goto LABEL_117;
        }

        v54 = *(v6 + 13) + (v52 << 6);
        v55 = *(v54 + 56);
        v46 = (v54 + 56);
        v45 = v55;
        if (v55 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 522);
        *(v6 + 522) = v45 + 1;
      }

LABEL_101:
      *v46 = v45;
      goto LABEL_102;
    }

    if (!v40)
    {
      v60 = *v39;
      v61 = *(v6 + 3);
      if (v61 <= *v39)
      {
        goto LABEL_119;
      }

      v62 = *(v6 + 4) + (v60 << 6);
      v63 = *(v62 + 56);
      v46 = (v62 + 56);
      v45 = v63;
      if (v63 != -1)
      {
        goto LABEL_102;
      }

      v45 = *(v6 + 519);
      *(v6 + 519) = v45 + 1;
      goto LABEL_101;
    }

    if (v40 != 1)
    {
      goto LABEL_135;
    }

    v42 = *v39;
    v43 = *(v6 + 6);
    if (v43 <= *v39)
    {
      goto LABEL_122;
    }

    v44 = *(v6 + 7) + (v42 << 6);
    v47 = *(v44 + 56);
    v46 = (v44 + 56);
    v45 = v47;
    if (v47 == -1)
    {
      v45 = *(v6 + 520);
      *(v6 + 520) = v45 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v119 = v45;
    re::DynamicArray<unsigned long>::add(a3, &v119);
    ++v39;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 6);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_132:
    v133[0] = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v134 = 136315906;
    v135 = "operator[]";
    v136 = 1024;
    v137 = 468;
    v138 = 2048;
    v139 = v4;
    v140 = 2048;
    v141 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  v76 = *(v6 + 7) + (v4 << 6);
  v79 = *(v76 + 56);
  v78 = (v76 + 56);
  v77 = v79;
  if (v79 == -1)
  {
    v77 = *(v6 + 520);
    *(v6 + 520) = v77 + 1;
    *v78 = v77;
  }

  *&v119 = v77;
  re::DynamicArray<unsigned long>::add(a3, &v119);
}

char *re::anonymous namespace::RegisterMapping::processRegister<float>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v143 = *MEMORY[0x1E69E9840];
  v5 = *(this + 9);
  if (v5 <= a2)
  {
    goto LABEL_114;
  }

  v6 = this;
  v7 = *(this + 10);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v119) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[15];
      v14 = v10[13];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[15];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[15];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[53];
        if (v5 <= v39)
        {
LABEL_131:
          v134[0] = 0;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v120 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v135 = 136315906;
          v136 = "operator[]";
          v137 = 1024;
          v138 = 797;
          v139 = 2048;
          v140 = v39;
          v141 = 2048;
          v142 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }

        LODWORD(v119) = *(v10[55] + 4 * v39);
      }
    }

    v5 = v10[93];
    while (v5 > v12)
    {
      v11 = *(v10[95] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 797;
    v139 = 2048;
    v140 = v12;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_114:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v4;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v89 = v69;
    v90 = v70;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v89;
    v141 = 2048;
    v142 = v90;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_116:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v91 = v73;
    v92 = v74;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v91;
    v141 = 2048;
    v142 = v92;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v93 = v53;
    v94 = v54;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v93;
    v141 = 2048;
    v142 = v94;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_118:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v95 = v57;
    v96 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v95;
    v141 = 2048;
    v142 = v96;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v97 = v61;
    v98 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v97;
    v141 = 2048;
    v142 = v98;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_120:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v99 = v65;
    v100 = v66;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v99;
    v141 = 2048;
    v142 = v100;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v101 = v49;
    v102 = v50;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v101;
    v141 = 2048;
    v142 = v102;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_122:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v103 = v43;
    v104 = v44;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v103;
    v141 = 2048;
    v142 = v104;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v105 = v28;
    v106 = v38;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v105;
    v141 = 2048;
    v142 = v106;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v107 = v28;
    v108 = v34;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v107;
    v141 = 2048;
    v142 = v108;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v109 = v28;
    v110 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v109;
    v141 = 2048;
    v142 = v110;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v111 = v28;
    v112 = v32;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v111;
    v141 = 2048;
    v142 = v112;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v113 = v28;
    v114 = v29;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v113;
    v141 = 2048;
    v142 = v114;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_128:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v115 = v28;
    v116 = v33;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v115;
    v141 = 2048;
    v142 = v116;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v117 = v35;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v117;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_130:
    v119 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v118 = v28;
    v39 = v31;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v118;
    v141 = 2048;
    v142 = v39;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v134, 0, sizeof(v134));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v135 = 0;
    v134[v3] = *(v8 + 6);
    v81 = *(v6 + 481);
    *&v120 = *(v6 + 483);
    *(&v120 + 1) = v81;
    v82 = *(v6 + 486);
    *&v121 = *(v6 + 488);
    *(&v121 + 1) = v82;
    v83 = *(v6 + 491);
    *&v122 = *(v6 + 493);
    *(&v122 + 1) = v83;
    v84 = *(v6 + 496);
    *&v123 = *(v6 + 498);
    *(&v123 + 1) = v84;
    v85 = *(v6 + 501);
    *&v124 = *(v6 + 503);
    *(&v124 + 1) = v85;
    v86 = *(v6 + 506);
    v125 = *(v6 + 508);
    v126 = v86;
    v87 = *(v6 + 511);
    v127 = *(v6 + 513);
    v128 = v87;
    v88 = *(v6 + 516);
    v129 = *(v6 + 518);
    v130 = v88;
    v132 = 0;
    v133 = 0;
    v131 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] <= 1u)
    {
      if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_130;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v34 = *(this + 3);
        if (v34 <= v28)
        {
          goto LABEL_124;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v27 != 2)
    {
      if (v27 != 3)
      {
        goto LABEL_136;
      }

      v28 = *&v26[2 * v24];
      v32 = *(this + 12);
      if (v32 <= v28)
      {
        goto LABEL_126;
      }

      v30 = *(this + 13);
      goto LABEL_49;
    }

    v35 = *&v26[2 * v24];
    if (v5 <= v35)
    {
      goto LABEL_129;
    }

    v36 = v7 + (v35 << 6);
LABEL_50:
    if (!v36 || *(v36 + 40) != 3)
    {
      goto LABEL_110;
    }

    v134[v24++] = *(v36 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_123;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_136;
      }

      v28 = *&v26[2 * v24];
      v33 = *(this + 18);
      if (v33 <= v28)
      {
        goto LABEL_128;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_125;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_127;
    }

    v30 = *(this + 25);
LABEL_49:
    v36 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_136;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_134;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_133:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v5;
    v141 = 2048;
    v142 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v5;
    v141 = 2048;
    v142 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v40 = (v8 + 2);
  while (2)
  {
    v42 = *v5++;
    v41 = v42;
    if (v42 > 3)
    {
      if (v41 <= 5)
      {
        if (v41 == 4)
        {
          v65 = *v40;
          v66 = *(v6 + 15);
          if (v66 <= *v40)
          {
            goto LABEL_120;
          }

          v67 = *(v6 + 16) + (v65 << 6);
          v68 = *(v67 + 56);
          v47 = (v67 + 56);
          v46 = v68;
          if (v68 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 523);
          *(v6 + 523) = v46 + 1;
        }

        else
        {
          if (v41 != 5)
          {
            goto LABEL_135;
          }

          v49 = *v40;
          v50 = *(v6 + 18);
          if (v50 <= *v40)
          {
            goto LABEL_121;
          }

          v51 = *(v6 + 19) + (v49 << 6);
          v52 = *(v51 + 56);
          v47 = (v51 + 56);
          v46 = v52;
          if (v52 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 524);
          *(v6 + 524) = v46 + 1;
        }

        goto LABEL_101;
      }

      if (v41 == 6)
      {
        v73 = *v40;
        v74 = *(v6 + 21);
        if (v74 <= *v40)
        {
          goto LABEL_116;
        }

        v75 = *(v6 + 22) + (v73 << 6);
        v76 = *(v75 + 56);
        v47 = (v75 + 56);
        v46 = v76;
        if (v76 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 525);
        *(v6 + 525) = v46 + 1;
        goto LABEL_101;
      }

      if (v41 == 7)
      {
        v57 = *v40;
        v58 = *(v6 + 24);
        if (v58 <= *v40)
        {
          goto LABEL_118;
        }

        v59 = *(v6 + 25) + (v57 << 6);
        v60 = *(v59 + 56);
        v47 = (v59 + 56);
        v46 = v60;
        if (v60 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 526);
        *(v6 + 526) = v46 + 1;
        goto LABEL_101;
      }

LABEL_135:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v41);
      _os_crash();
      __break(1u);
LABEL_136:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash();
      __break(1u);
      return this;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v69 = *v40;
        v70 = *(v6 + 9);
        if (v70 <= *v40)
        {
          goto LABEL_115;
        }

        v71 = *(v6 + 10) + (v69 << 6);
        v72 = *(v71 + 56);
        v47 = (v71 + 56);
        v46 = v72;
        if (v72 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 521);
        *(v6 + 521) = v46 + 1;
      }

      else
      {
        if (v41 != 3)
        {
          goto LABEL_135;
        }

        v53 = *v40;
        v54 = *(v6 + 12);
        if (v54 <= *v40)
        {
          goto LABEL_117;
        }

        v55 = *(v6 + 13) + (v53 << 6);
        v56 = *(v55 + 56);
        v47 = (v55 + 56);
        v46 = v56;
        if (v56 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 522);
        *(v6 + 522) = v46 + 1;
      }

LABEL_101:
      *v47 = v46;
      goto LABEL_102;
    }

    if (!v41)
    {
      v61 = *v40;
      v62 = *(v6 + 3);
      if (v62 <= *v40)
      {
        goto LABEL_119;
      }

      v63 = *(v6 + 4) + (v61 << 6);
      v64 = *(v63 + 56);
      v47 = (v63 + 56);
      v46 = v64;
      if (v64 != -1)
      {
        goto LABEL_102;
      }

      v46 = *(v6 + 519);
      *(v6 + 519) = v46 + 1;
      goto LABEL_101;
    }

    if (v41 != 1)
    {
      goto LABEL_135;
    }

    v43 = *v40;
    v44 = *(v6 + 6);
    if (v44 <= *v40)
    {
      goto LABEL_122;
    }

    v45 = *(v6 + 7) + (v43 << 6);
    v48 = *(v45 + 56);
    v47 = (v45 + 56);
    v46 = v48;
    if (v48 == -1)
    {
      v46 = *(v6 + 520);
      *(v6 + 520) = v46 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v120 = v46;
    re::DynamicArray<unsigned long>::add(a3, &v120);
    ++v40;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 9);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_132:
    v134[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v135 = 136315906;
    v136 = "operator[]";
    v137 = 1024;
    v138 = 468;
    v139 = 2048;
    v140 = v4;
    v141 = 2048;
    v142 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_133;
  }

  v77 = *(v6 + 10) + (v4 << 6);
  v80 = *(v77 + 56);
  v79 = (v77 + 56);
  v78 = v80;
  if (v80 == -1)
  {
    v78 = *(v6 + 521);
    *(v6 + 521) = v78 + 1;
    *v79 = v78;
  }

  *&v120 = v78;
  re::DynamicArray<unsigned long>::add(a3, &v120);
}