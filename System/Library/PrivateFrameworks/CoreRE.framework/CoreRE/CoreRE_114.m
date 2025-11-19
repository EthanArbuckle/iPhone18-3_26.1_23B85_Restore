void re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(re::ecs2::NetworkComponent *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  *(a1 + 12544) = 0;
  if (*(a3 + 25) != a4)
  {
    *(a3 + 25) = a4;
    a1 = *(*(a3 + 16) + 216);
    if (a1)
    {
      re::ecs2::NetworkComponent::markDirty(a1, a3);
    }
  }

  if (*(a3 + 27))
  {
    *(a3 + 27) = 0;
    a1 = *(*(a3 + 16) + 216);
    if (a1)
    {
      re::ecs2::NetworkComponent::markDirty(a1, a3);
    }
  }

  v7 = *re::imagePresentationLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 312);
    v9 = 16777728;
    v10 = v4;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeViewingModeTransition] target viewing mode: %d [entityID: %llu]", &v9, 0xFu);
  }
}

int8x8_t re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(int8x8_t *a1, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  if (!a1[16].i8[6])
  {
    return a1[4];
  }

  v3 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a2 > 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = qword_1E308C4F0[a2];
  a1 = re::AssetHandle::operator=(&v12, (a1 + qword_1E308C4D8[a2]));
  v5 = (*(v2->i32 + v4) - 5) < 4;
  if (!v13 || (a1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v12)) == 0)
  {
LABEL_9:
    v8 = *re::imagePresentationLogObjects(a1);
    v6 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*&v2[2] + 312);
      *buf = 16777728;
      v16 = v3;
      v17 = 2048;
      v18 = v11;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[getScreenImageDimensionInViewingMode] Mono or stereo texture is null in viewing mode %d; using zero image dimension. [entityID: %llu]", buf, 0xFu);
    }

    goto LABEL_11;
  }

  v6 = vcvt_f32_s32(*(re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v12) + 248));
LABEL_11:
  re::AssetHandle::~AssetHandle(&v12);
  v9 = vrev64_s32(v6);
  if (v5)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return vbsl_s8(vdup_n_s32(v10), v9, v6);
}

void re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2, double *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  *(this + 14) = 0;
  *(this + 60) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 46) = 0;
  *(this + 16) = 1065353216;
  *(this + 72) = xmmword_1E3063230;
  v6 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    if (atomic_exchange(&_MergedGlobals_253, 1u))
    {
      return;
    }

    v16 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = a3[39];
    *buf = 3.852e-34;
    v108 = v17;
    v18 = "[getDesiredScreenEntityConfiguration] entity has no IPC [id=%llu]";
LABEL_11:
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    return;
  }

  v7 = v6;
  v8 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    if (atomic_exchange(&unk_1EE1A8479, 1u))
    {
      return;
    }

    v16 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = a3[39];
    *buf = 3.852e-34;
    v108 = v19;
    v18 = "[getDesiredScreenEntityConfiguration] entity has no IPSC [id=%llu]";
    goto LABEL_11;
  }

  v10 = v8;
  v11 = *(a3 + 32);
  __asm { FMOV            V1.4S, #1.0 }

  v98 = _Q1;
  if (v11)
  {
    v100 = v11[2];
  }

  else
  {
    v100 = _Q1;
    if ((atomic_exchange(&unk_1EE1A847A, 1u) & 1) == 0)
    {
      v20 = *re::imagePresentationLogObjects(v8);
      v8 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      _Q1 = v98;
      v100 = v98;
      if (v8)
      {
        v21 = a3[39];
        *buf = 3.852e-34;
        v108 = v21;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[getDesiredScreenEntityConfiguration] screen entity local scale should invert IPC entity local scale, but there is no TransformComponent on the IPC entity [id=%llu]", buf, 0xCu);
        _Q1 = v98;
        v100 = v98;
      }
    }
  }

  *(this + 1) = _Q1;
  if (((*(v7 + 148) & 1) != 0 || (v22 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v8), _Q1 = v98, v22)) && (*(v10 + 48) & 1) == 0 && (isPresentingInSpatialImmersive = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v9), _Q1 = v98, !isPresentingInSpatialImmersive))
  {
    v25 = -0.004;
  }

  else
  {
    v24 = vdivq_f32(_Q1, v100);
    *(this + 1) = v24;
    v25 = vmuls_lane_f32(-0.004, v24, 2);
  }

  v26 = *(v10 + 48);
  if (v26 == 1)
  {
    v104 = *(v10 + 56);
    v105 = *(v10 + 72);
    v106 = *(v10 + 11);
  }

  v27 = *(v7 + 152) / *(a2 + 20);
  v28 = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v9);
  if (v28)
  {
    v30 = *(v10 + 11);
    v31 = 1.0;
    v32 = 1.0;
    if (v30 > 0.0)
    {
      v32 = *(v10 + 10) / v30;
    }

    v33 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v28, *(v7 + 144), v32), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
    v99 = v33.f32[0];
    v101 = tanf(v33.f32[1]);
    v34.f32[0] = tanf(v99);
    v34.f32[1] = v101;
    __asm { FMOV            V1.2S, #4.25 }

    v36 = vmul_f32(vmul_f32(vadd_f32(v34, v34), vdup_n_s32(0x3FC66666u)), _D1);
    MagnificationExtent = re::ecs2::SpatialMediaComponentHelper::impl::getMagnificationExtent(a3, v37);
    if (MagnificationExtent < 1.0)
    {
      v31 = 0.8;
      if (MagnificationExtent > 0.8)
      {
        v40 = vabds_f32(1.0, MagnificationExtent) / 0.2;
        v31 = ((v40 * -0.2) * v40) + 1.0;
      }
    }

    v41 = v36.f32[0] * v31;
    v42 = v36.f32[1] * v31;
    *(this + 92) = 0;
    v43 = re::MediaDefaults::logEnabled(v38);
    if (v43)
    {
      v45 = *re::imagePresentationLogObjects(v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *(a3 + 39);
        *buf = 3.8522e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 2048;
        v112[0] = v46;
        v47 = "[getDesiredScreenEntityConfiguration] spatial immersive mode, width %.3f, height %.3f [id=%llu]";
        v48 = buf;
LABEL_35:
        v54 = v45;
        v55 = 32;
LABEL_59:
        _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, v47, v48, v55);
      }
    }
  }

  else
  {
    if (!v26)
    {
      v56 = *(v7 + 148);
      isPresentingSpatialImage = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(a3, v29);
      if (v56)
      {
        v59 = 1.0;
        v60 = 1.0;
        if (isPresentingSpatialImage)
        {
          re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(a3, v58);
        }

        v61 = *(v10 + 11);
        if (v61 > 0.0)
        {
          v59 = *(v10 + 10) / v61;
        }

        v62 = *(v7 + 28);
        v41 = v60 * (v59 * v62);
        v42 = v60 * v62;
        v63 = v100.f32[1];
        if (v100.f32[0] >= v100.f32[1])
        {
          v63 = v100.f32[0];
        }

        v27 = v27 / v63;
        *(this + 92) = 1;
        v64 = re::MediaDefaults::logEnabled(isPresentingSpatialImage);
        if (!v64)
        {
          goto LABEL_60;
        }

        v65 = *re::imagePresentationLogObjects(v64);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v66 = *(v10 + 25);
        v67 = *(v10 + 26);
        v68 = *(a3 + 39);
        *buf = 3.8524e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 256;
        LOWORD(v112[0]) = v66;
        BYTE2(v112[0]) = 1;
        BYTE3(v112[0]) = v67;
        WORD2(v112[0]) = 2048;
        *(v112 + 6) = v68;
        v47 = "[getDesiredScreenEntityConfiguration] regular mode, width %.3f, height %.3f, viewing mode %d, immersive viewing mode %d [id=%llu]";
      }

      else
      {
        v69 = 1.0;
        if (isPresentingSpatialImage)
        {
          re::ecs2::SpatialMediaComponentHelper::impl::getScreenEntityScaleFactorByMagnificationExtentInPortal(a3, v58);
          v69 = v70;
        }

        v71 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(isPresentingSpatialImage);
        v72 = vmuls_lane_f32(v69, *v100.f32, 1);
        if (v71)
        {
          v42 = 1.0;
        }

        else
        {
          v42 = v72;
        }

        if (v71)
        {
          v41 = 1.0;
        }

        else
        {
          v41 = v69 * v100.f32[0];
        }

        *(this + 92) = 1;
        v73 = re::MediaDefaults::logEnabled(v71);
        if (!v73)
        {
          goto LABEL_60;
        }

        v65 = *re::imagePresentationLogObjects(v73);
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v74 = *(v10 + 25);
        v75 = *(v10 + 26);
        v76 = *(a3 + 39);
        *buf = 3.8524e-34;
        v108 = v41;
        v109 = 2048;
        v110 = v42;
        v111 = 256;
        LOWORD(v112[0]) = v74;
        BYTE2(v112[0]) = 1;
        BYTE3(v112[0]) = v75;
        WORD2(v112[0]) = 2048;
        *(v112 + 6) = v76;
        v47 = "[getDesiredScreenEntityConfiguration] not locking aspect ratio, width %.3f, height %.3f, viewing mode %d, immersive viewing mode %d [id=%llu]";
      }

      v48 = buf;
      v54 = v65;
      v55 = 38;
      goto LABEL_59;
    }

    v49 = *(a2 + 37);
    v50 = *(a2 + 38);
    *v113 = v104;
    *&v113[16] = v105;
    v114 = v106;
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(a3, v113, buf, v49, v50);
    v41 = *buf;
    v42 = *&v108;
    *(this + 92) = 1;
    v52 = re::MediaDefaults::logEnabled(v51);
    if (v52)
    {
      v45 = *re::imagePresentationLogObjects(v52);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(a3 + 39);
        *v113 = 134218496;
        *&v113[4] = v41;
        *&v113[12] = 2048;
        *&v113[14] = v42;
        *&v113[22] = 2048;
        *&v113[24] = v53;
        v47 = "[getDesiredScreenEntityConfiguration] in spatial immersive transition, width %.3f, height %.3f [id=%llu]";
        v48 = v113;
        goto LABEL_35;
      }
    }
  }

LABEL_60:
  PlaneDepthInMeters = re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(a3, v44);
  *(this + 8) = v41;
  *(this + 9) = v42;
  *(this + 10) = 0;
  *(this + 11) = v27;
  *(this + 6) = 0;
  *(this + 14) = PlaneDepthInMeters;
  *(this + 60) = 0;
  *(this + 61) = v102;
  *(this + 63) = v103;
  *(this + 16) = 1065353216;
  *(this + 72) = xmmword_1E3063230;
  v79 = re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(a3, v78);
  v80 = 0.0;
  if (!v79)
  {
    goto LABEL_71;
  }

  v81 = *(a3 + 32);
  if (v81)
  {
    v82 = *(v81 + 40);
  }

  else
  {
    v82 = 1.0;
  }

  v83 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v83 && *(v83 + 48) == 1)
  {
    v85 = *(v83 + 72);
    *v113 = *(v83 + 56);
    *&v113[16] = v85;
    v114 = *(v83 + 88);
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(a3, v113, buf, *(a2 + 37), *(a2 + 38));
    v86 = -*(&v108 + 1);
LABEL_69:
    v25 = v86 / v82;
LABEL_70:
    v80 = v25;
    goto LABEL_71;
  }

  if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(a3, v84))
  {
    v86 = -0.75;
    goto LABEL_69;
  }

  v97 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v97)
  {
    v80 = 0.0;
    if ((*(v97 + 52) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v80 = 0.0;
  }

LABEL_71:
  *&v87 = 0;
  *(&v87 + 1) = LODWORD(v80);
  *this = v87;
  if (*(a2 + 12544) != 1)
  {
    goto LABEL_80;
  }

  v88 = (a2 + 12576);
  v89 = 20560;
  do
  {
    v90 = *v88;
    if (*v88)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v89 == 0;
    }

    v89 -= 4112;
    v88 += 514;
  }

  while (!_ZF);
  if (v90)
  {
    v92 = *(a2 + 3138);
  }

  else
  {
LABEL_80:
    v92 = 1.0;
    if (v26)
    {
      v93 = (a2 + 160);
      v94 = 10320;
      do
      {
        v95 = *v93;
        if (*v93)
        {
          v96 = 1;
        }

        else
        {
          v96 = v94 == 0;
        }

        v94 -= 2064;
        v93 += 258;
      }

      while (!v96);
      if (v95)
      {
        v92 = *(a2 + 39);
      }
    }
  }

  *(this + 22) = v92;
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeImagePresentationMaterialParameters(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2, re::MaterialManager **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v6 = *(a2 + 43);
    if (v6)
    {
      v7 = v5;
      v8 = *(a2 + 45);
      v9 = 8 * v6;
      while (1)
      {
        v10 = *v8;
        if ((*(*v8 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v11 = *(v10 + 296);
          if (v11 == "__InternalIPC-Screen__" || !strcmp(v11, "__InternalIPC-Screen__"))
          {
            break;
          }
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return;
        }
      }

      if (v7)
      {
        SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a3[3], *(v10 + 312));
        if (SystemMaterialParameterBlock)
        {
          v14 = SystemMaterialParameterBlock;
          *buf = 0x5B80F73BCFAA1E05;
          re::MaterialParameterBlock::removeConstant(SystemMaterialParameterBlock, buf, 4);
          *buf = 0x14E4212AA32F5D0;
          re::MaterialParameterBlock::removeConstant(v14, buf, 4);
          v16 = 0x13DF8790D55F72F9;
          re::MaterialParameterBlock::removeTexture(v14, &v16);
        }
      }
    }
  }

  else
  {
    v12 = *re::imagePresentationLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a2 + 39);
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper::impl] Cannot find dependencies. Skip removeImagePresentationMaterialParameters on entity %llu.", buf, 0xCu);
    }
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unsigned __int8 *a5)
{
  if (!a3 || !a4)
  {
    *a1 = 0;
    return;
  }

  re::Defaults::intValue("ipc.mxi.enableOverrides", a2, &v47);
  if (DWORD1(v47))
  {
    v13 = v47;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a3 + 256);
  if (v14)
  {
    _Q0 = *(v14 + 32);
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  v20 = *(&_Q0 + 1);
  if (*&_Q0 >= *(&_Q0 + 1))
  {
    v21 = *&_Q0;
  }

  else
  {
    v21 = *(&_Q0 + 1);
  }

  v22 = a4[38] / *(a2 + 80);
  re::Defaults::intValue("ipc.mxi.enableOverrides", v12, &v47);
  if (v47 != 1)
  {
    goto LABEL_19;
  }

  if (!DWORD1(v47))
  {
    goto LABEL_19;
  }

  re::Defaults::intValue("ipc.mxi.immersiveScalingMode", v23, &v47);
  if (v47 != 1)
  {
    goto LABEL_19;
  }

  v24 = 1.5;
  if (SDWORD1(v47) > 2)
  {
    if (DWORD1(v47) == 3)
    {
      v40 = a4[74];
      v5 = 180.0;
      v6 = 3.3703e12;
      v41 = (a4[75] * 180.0) / 3.14159265;
      v42 = tanf(((v41 * 0.5) * 3.1416) / 180.0);
      v43 = atanf(v40 * v42);
      v45 = (COERCE_FLOAT(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v44, ((v43 * 180.0) * 0.31831) + ((v43 * 180.0) * 0.31831), v40) >> 32) / 180.0) * 3.14159265;
      v25 = v45 * 0.5;
    }

    else
    {
      if (DWORD1(v47) != 4)
      {
        goto LABEL_21;
      }

      re::Defaults::floatValue("ipc.mxi.immersiveFOV", v23, &v47);
      v39 = (*(&v47 + 1) / 180.0) * 3.14159265;
      v25 = v39 * 0.5;
      if (!v47)
      {
        v25 = 0.69813;
      }
    }

    goto LABEL_60;
  }

  if (DWORD1(v47) == 1)
  {
LABEL_19:
    v26 = 0.795;
LABEL_20:
    v24 = v26 / v20;
    goto LABEL_21;
  }

  if (DWORD1(v47) == 2)
  {
    v25 = a4[75] * 0.5;
LABEL_60:
    v46 = tanf(v25);
    v26 = v46 + v46;
    goto LABEL_20;
  }

LABEL_21:
  v27 = 0.0;
  v47 = 0u;
  v48 = 0u;
  v28 = *a5;
  v29 = v22 / v21;
  if (v28 >= 2)
  {
    if (v28 == 2)
    {
      v6 = 4.25;
      v21 = v24 * 4.25;
      v22 = (v24 * 4.25) * a4[74];
      if (v13)
      {
        re::Defaults::floatValue("ipc.mxi.immersive.proxyWidth", v23, v49);
        if (v49[0])
        {
          v22 = v50;
        }

        re::Defaults::floatValue("ipc.mxi.immersive.proxyHeight", v34, v49);
        if (v49[0])
        {
          v21 = v50;
        }

        re::Defaults::floatValue("ipc.mxi.immersive.proxyDistance", v35, v49);
        if (v49[0])
        {
          v20 = v50;
        }

        else
        {
          v20 = 0.0;
        }

        re::Defaults::floatValue("ipc.mxi.immersive.sceneTargetVerticalFoVVisibleRegion", v36, v49);
        if (v49[0])
        {
          v6 = v50;
        }

        else
        {
          v6 = 4.25;
        }

        re::Defaults::floatValue("ipc.mxi.immersive.nearPlaneSizeScalar", v37, v49);
        v27 = v50;
        v5 = 1.0;
        if (!v49[0])
        {
          v27 = 1.0;
        }
      }

      else
      {
        v20 = 0.0;
        v5 = 1.0;
        v27 = 1.0;
      }
    }
  }

  else
  {
    v21 = a4[7];
    v22 = v21 * a4[74];
    if (v13)
    {
      re::Defaults::floatValue("ipc.mxi.portal.proxyWidth", v23, v49);
      if (v49[0])
      {
        v22 = v50;
      }

      re::Defaults::floatValue("ipc.mxi.portal.proxyHeight", v30, v49);
      if (v49[0])
      {
        v21 = v50;
      }

      re::Defaults::floatValue("ipc.mxi.portal.proxyDistance", v31, v49);
      v5 = 0.0;
      if (v49[0])
      {
        v20 = v50;
      }

      else
      {
        v20 = 0.0;
      }

      re::Defaults::floatValue("ipc.mxi.portal.sceneTargetVerticalFoVVisibleRegion", v32, v49);
      if (v49[0])
      {
        v6 = v50;
      }

      else
      {
        v6 = 0.88398;
      }

      re::Defaults::floatValue("ipc.mxi.portal.nearPlaneSizeScalar", v33, v49);
      v27 = v50;
      if (!v49[0])
      {
        v27 = 1.0;
      }
    }

    else
    {
      v27 = 1.0;
      v5 = 0.0;
      v6 = 0.88398;
      v20 = 0.0;
    }
  }

  *a1 = 1;
  v38 = v48;
  *(a1 + 16) = v47;
  *(a1 + 32) = v38;
  *(a1 + 48) = v22;
  *(a1 + 52) = v21;
  *(a1 + 56) = v20;
  *(a1 + 60) = v29;
  *(a1 + 64) = v6;
  *(a1 + 68) = v27;
  *(a1 + 72) = v5;
}

void re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1557;
    v12 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 8u);
    return;
  }

  if (!a1[32])
  {
    v11 = *re::imagePresentationLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1559;
    v12 = "ImagePresentationComponentHelper line: %d, mxiTransformComponent is nullptr";
    goto LABEL_20;
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v4)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1561;
    v12 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
    goto LABEL_20;
  }

  v5 = v4;
  v6 = re::ecs2::EntityComponentCollection::get((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v6)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1563;
    v12 = "ImagePresentationComponentHelper line: %d, uiLayerGeometryComponent is nullptr";
    goto LABEL_20;
  }

  v7 = v6;
  *(v5 + 132) = *(a2 + 32);
  *(v5 + 448) = *(a2 + 48);
  *(v5 + 460) = *(a2 + 52);
  *(v5 + 376) = *(a2 + 56);
  re::ecs2::Component::markDirty(v5);
  LODWORD(v9) = *(a2 + 32);
  LODWORD(v10) = *(a2 + 36);
  if (v7[12] == *&v9)
  {
    LODWORD(v8) = *(a2 + 44);
    if (v7[13] == *&v10 && v7[14] == *&v8)
    {
      return;
    }
  }

  else
  {
    LODWORD(v8) = *(a2 + 44);
  }

  v7[12] = *&v9;
  v7[13] = *&v10;
  v7[14] = *&v8;
  re::ecs2::UILayerGeometryComponent::buildGeomMesh(v7, v9, v10, v8);

  re::ecs2::Component::markDirty(v7);
}

void re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(re *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v11 = *re::imagePresentationLogObjects(a1);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1592;
    v12 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_14;
  }

  v7 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v7)
  {
    v11 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 67109120;
    v14 = 1594;
    v12 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
LABEL_14:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v13, 8u);
    return;
  }

  v8 = v7;
  *(v7 + 320) = a4 == 2;
  v9 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v10 = 0;
  if (v9)
  {
    *(v8 + 316) = *(v9 + 56);
    if (a4 == 2)
    {
      v10 = *(v9 + 88);
    }
  }

  *(v8 + 456) = *(a1 + 3143);
  *(v8 + 368) = v10;
  *(v8 + 404) = 1;

  re::ecs2::Component::markDirty(v8);
}

void re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 1280;
    v5 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_12;
  }

  v2 = a2;
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v3)
  {
    v4 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v6 = 67109120;
    v7 = 1282;
    v5 = "ImagePresentationComponentHelper line: %d, uiLayerGeometryComponent is nullptr";
LABEL_12:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, &v6, 8u);
    return;
  }

  if (*(v3 + 108) != v2)
  {
    *(v3 + 108) = v2;

    re::ecs2::Component::markDirty(v3);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingMXIImmersiveTransition(uint64_t a1, void *a2, int a3)
{
  v103 = *MEMORY[0x1E69E9840];
  media::Spatial3DImageAnimationEngine::addMXIImmersiveTransitionAnimation((a1 + 12552), a3 == 2);
  media::Spatial3DImageAnimationEngine::update(a1 + 12552, 0.0, v6, v7);
  v8 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v8)
  {
    v45 = *re::imagePresentationLogObjects(0);
    v58 = 0.0;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v61 = 67109120;
      *v62 = 1151;
      _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipc is nullptr", v61, 8u);
    }

    goto LABEL_9;
  }

  v9 = v8;
  v91[0] = 1;
  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(v61, a1, a2, v8, v91);
  buf[0] = 2;
  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(v91, a1, a2, v9, buf);
  if (v61[0] != 1 || v91[0] != 1)
  {
    v35 = *re::imagePresentationLogObjects(v10);
    v58 = 0.0;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Unexpected nil layout description", buf, 2u);
    }

LABEL_9:
    v56 = 0.0;
    v57 = 0.0;
    v55 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    goto LABEL_10;
  }

  v11 = *&v63[1];
  v12 = *&v63[9];
  v13 = *&v63[13];
  v14 = *&v63[17];
  v15 = *&v63[21];
  v16 = *&v63[29];
  v17 = *&v63[33];
  *buf = *&v63[49];
  *&buf[8] = *&v63[57];
  v19 = v92;
  v18 = v93;
  v20 = v94;
  v21 = v95;
  v23 = v96;
  v22 = v97;
  v24 = v98;
  v25 = v99;
  v26 = v100;
  *&v59 = v101;
  DWORD2(v59) = v102;
  if ((*(a1 + 37248) & 1) == 0)
  {
    *(a1 + 37248) = 1;
  }

  *(a1 + 37264) = a3;
  *(a1 + 37280) = v11;
  *(a1 + 37288) = v12;
  *(a1 + 37292) = v13;
  *(a1 + 37296) = v14;
  *(a1 + 37300) = v15;
  v47 = *&v17;
  v48 = *(&v17 + 1);
  *(a1 + 37308) = v16;
  *(a1 + 37312) = v17;
  v49 = *(&v17 + 2);
  v50 = *(&v17 + 3);
  v27 = *&v11;
  v28 = *(&v11 + 1);
  *(a1 + 37328) = *buf;
  v29 = v12;
  *(a1 + 37344) = v19;
  v30 = v14;
  *(a1 + 37348) = v18;
  v57 = *(&v15 + 1);
  v58 = *&v15;
  *(a1 + 37352) = v20;
  v51 = *&v26;
  v52 = *(&v26 + 1);
  *(a1 + 37392) = v59;
  *(a1 + 37376) = v26;
  *(a1 + 37356) = v21;
  v53 = *(&v26 + 2);
  v54 = *(&v26 + 3);
  *(a1 + 37360) = v23;
  v55 = v18;
  v56 = v19;
  *(a1 + 37364) = v22;
  v31 = v20;
  v32 = v23;
  *(a1 + 37368) = v24;
  v33 = v22;
  v34 = v24;
  *(a1 + 37372) = v25;
LABEL_10:
  if (a3 == 1)
  {
    v36 = a2[43];
    if (v36)
    {
      v37 = a2[45];
      v38 = 8 * v36;
      while (1)
      {
        v39 = *v37;
        if ((*(*v37 + 36) ^ 0xCD040ED7D618C260) <= 1)
        {
          v40 = *(v39 + 37);
          if (v40 == "__InternalIPC-MXI__" || !strcmp(v40, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v37;
        v38 -= 8;
        if (!v38)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v39 = 0;
    }

    re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v39, 1);
  }

  v41 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v41)
  {
    v42 = v41;
    if ((*(v41 + 28) & 1) == 0)
    {
      *(v41 + 28) = 1;
      v41 = *(*(v41 + 16) + 216);
      if (v41)
      {
        re::ecs2::NetworkComponent::markDirty(v41, v42);
      }
    }
  }

  else
  {
    v46 = *re::imagePresentationLogObjects(0);
    v41 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      *v61 = 67109120;
      *v62 = 1170;
      _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipsc is nullptr", v61, 8u);
    }
  }

  v43 = *re::imagePresentationLogObjects(v41);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = a2[39];
    *v61 = 16782848;
    v62[0] = a3;
    *&v62[1] = 2048;
    *&v62[3] = v47;
    *v63 = 2048;
    *&v63[2] = v48;
    *&v63[10] = 2048;
    *&v63[12] = v49;
    *&v63[20] = 2048;
    *&v63[22] = v50;
    *&v63[30] = 2048;
    *&v63[32] = v27;
    *&v63[40] = 2048;
    *&v63[42] = v28;
    *&v63[50] = 2048;
    *&v63[52] = v29;
    *&v63[60] = 2048;
    v64 = v30;
    v65 = 2048;
    v66 = v58;
    v67 = 2048;
    v68 = v57;
    v69 = 2048;
    v70 = v51;
    v71 = 2048;
    v72 = v52;
    v73 = 2048;
    v74 = v53;
    v75 = 2048;
    v76 = v54;
    v77 = 2048;
    v78 = v56;
    v79 = 2048;
    v80 = v55;
    v81 = 2048;
    v82 = v31;
    v83 = 2048;
    v84 = v32;
    v85 = 2048;
    v86 = v33;
    v87 = 2048;
    v88 = v34;
    v89 = 2048;
    v90 = v44;
    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %d, portalProxyWidth: %f, portalProxyHeight: %f, portalProxyDistance: %f, portalProxyCornerRadius: %f, portalLocalScale: (%f, %f, %f), portalLocalPosition: (%f, %f, %f),immersiveProxyWidth: %f, immersiveProxyHeight: %f, immersiveProxyDistance: %f, immersiveProxyCornerRadius: %f, immersiveLocalScale: (%f, %f, %f), immersiveLocalPosition: (%f, %f, %f) [entityID: %llu]", v61, 0xD7u);
  }
}

uint64_t re::ecs2::ImagePresentationComponentHelper::impl::isPresentingInSpatialImmersive(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(this, a2) && (v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), *(v3 + 26) == 2))
  {
    v4 = *(v3 + 28) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    v7 = *(v4 + 27) == 1 && *(v3 + 132) == 1;
    return *(v4 + 25) == 1 || v7;
  }
}

float re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(re::ecs2::ImagePresentationComponentHelper::impl *this, const re::ecs2::Entity *a2)
{
  v2 = 0.0;
  if (this)
  {
    v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      v6 = v4;
      if (re::ecs2::ImagePresentationComponentHelper::impl::isPresentingSpatialImage(this, v5) && *(v6 + 52) != 1)
      {
        return 0.00236;
      }
    }
  }

  return v2;
}

void re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingSpatialImmersiveTransition(uint64_t a1, void *a2, int a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v7)
  {
    v3 = *(v7 + 100);
    v9 = fabsf(v3) > 0.00000011921;
  }

  else
  {
    v9 = 0;
  }

  ImmersiveTransitionRequiresReducedMotion = re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionRequiresReducedMotion(a2, v8);
  if (a3 == 2)
  {
    v35 = v9;
    if (v9)
    {
      v36 = v3;
    }

    v12 = (a1 + 96);
    v13 = &v35;
    v14 = 1;
  }

  else
  {
    v33 = v9;
    if (v9)
    {
      v34 = v3;
    }

    v12 = (a1 + 96);
    v13 = &v33;
    v14 = 0;
  }

  media::MediaScreenAnimationEngine::addSpatialMediaImmersiveTransitionAnimation(v12, v14, ImmersiveTransitionRequiresReducedMotion, v13, v11);
  media::MediaScreenAnimationEngine::update(a1 + 96, 0.0, v15, v16);
  v17 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v17)
  {
    v28 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *v38 = 2333;
    v29 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    goto LABEL_28;
  }

  v18 = v17;
  v19 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v19)
  {
    v28 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *v38 = 2335;
    v29 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, v29, buf, 8u);
    return;
  }

  v20 = v19;
  v21 = *(v19 + 44);
  v22 = 1.0;
  if (v21 > 0.0)
  {
    v22 = *(v19 + 40) / v21;
  }

  re::ecs2::SpatialMediaComponentHelper::impl::getImmersiveTransitionConfiguration(a2, a3 == 2, &v30, *(v18 + 144), v22);
  if (*(v20 + 48))
  {
    v24 = v31;
    *(v20 + 56) = v30;
    *(v20 + 72) = v24;
    *(v20 + 88) = v32;
  }

  else
  {
    *(v20 + 48) = 1;
    v25 = v31;
    *(v20 + 56) = v30;
    *(v20 + 72) = v25;
    *(v20 + 88) = v32;
  }

  if ((*(v20 + 28) & 1) == 0)
  {
    *(v20 + 28) = 1;
    v23 = *(*(v20 + 16) + 216);
    if (v23)
    {
      re::ecs2::NetworkComponent::markDirty(v23, v20);
    }
  }

  v26 = *re::imagePresentationLogObjects(v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = a2[39];
    *buf = 16779776;
    v38[0] = a3;
    *&v38[1] = 2048;
    *&v38[3] = *&v30;
    v39 = 2048;
    v40 = *(&v30 + 1);
    v41 = 2048;
    v42 = *(&v30 + 2);
    v43 = 2048;
    v44 = *(&v30 + 3);
    v45 = 2048;
    v46 = *&v31;
    v47 = 2048;
    v48 = *(&v31 + 1);
    v49 = 2048;
    v50 = *(&v31 + 2);
    v51 = 2048;
    v52 = *(&v31 + 3);
    v53 = 2048;
    v54 = v27;
    _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startAnimatingSpatialImmersiveTransition] target ImageImmersiveViewingMode %d, portalScreenSize (%.2f, %.2f), portalMediaSize (%.2f, %.2f), immersiveScreenSize (%.2f, %.2f), immersiveMediaSize (%.2f, %.2f) [id=%llu]", buf, 0x5Fu);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::ImagePresentationComponent *a2, id *a3, re::ImagePresentationTextureProcessor *a4, re::AssetManager *a5)
{
  v9 = a2 + 564;
  v10 = *(a2 + 5);
  v11 = *(this + 32);
  re::AssetHandle::AssetHandle(v27, (this + 160));
  re::AssetHandle::operator=(a2 + 608, v27);
  re::AssetHandle::~AssetHandle(v27);
  re::AssetHandle::AssetHandle(v26, (this + 184));
  re::AssetHandle::operator=(a2 + 704, v26);
  re::AssetHandle::~AssetHandle(v26);
  re::DynamicArray<re::AssetHandle>::operator=(a2 + 728, this + 26);
  re::AssetHandle::operator=(a2 + 32, this + 31);
  *(a2 + 80) = 1;
  v12 = *(this + 80);
  v13 = *(this + 324);
  *(a2 + 560) = 0;
  *&v14 = vrev64q_s32(*(this + 296)).u64[0];
  *(&v14 + 1) = *(this + 38);
  *v9 = v14;
  *(v9 + 2) = *(this + 39);
  *(a2 + 147) = v12;
  *(a2 + 592) = v13;
  if (v10 == v11 || (v15 = *(a2 + 88), v16 = *(a2 + 89), v17 = *(a2 + 90), (v18 = re::AssetHandle::loadedAsset<re::TextureAsset>((this + 248))) == 0))
  {
LABEL_12:
    re::ecs2::Component::markDirty(a2);
    return;
  }

  if (a3)
  {
    MXIGlowrayBackingTexture = re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(a3, v18, (v15 + v16) * 0.5, v17);
    v20 = *re::imagePresentationLogObjects(MXIGlowrayBackingTexture);
    if (MXIGlowrayBackingTexture)
    {
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "[MXI] setting glowray texture", buf, 2u);
      }

      v22 = re::TextureAsset::assetType(v21);
      (*(*a4 + 424))(buf, a4, MXIGlowrayBackingTexture, v22, 0, 0, 0);
      re::AssetHandle::AssetHandle(v24, buf);
      re::AssetHandle::operator=(this + 272, v24);
      re::AssetHandle::~AssetHandle(v24);
      re::AssetHandle::operator=(a2 + 56, this + 34);
      *(a2 + 404) = 1;
      re::AssetHandle::~AssetHandle(buf);
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[MXI] Glowray bake texture. Error encountered.", buf, 2u);
    }

    goto LABEL_12;
  }

  v23 = *re::imagePresentationLogObjects(v18);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "[MXI] Glowray bake test. Error encountered (nil textureProcessor)", buf, 2u);
  }
}

re::ecs2::ImagePresentationComponentHelper *re::ecs2::ImagePresentationComponentHelper::ImagePresentationComponentHelper(re::ecs2::ImagePresentationComponentHelper *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 37408, 16);
  bzero(v3, 0x9220uLL);
  re::ecs2::ImagePresentationComponentHelper::impl::impl(v3);
  *this = v3;
  return this;
}

void re::ecs2::ImagePresentationComponentHelper::~ImagePresentationComponentHelper(id **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = re::globalAllocators(this)[2];
    re::ecs2::ImagePresentationComponentHelper::impl::~impl(v1);
    (*(*v2 + 40))(v2, v1);
  }
}

re::ecs2::ImagePresentationComponentHelper::impl *re::ecs2::ImagePresentationComponentHelper::impl::impl(re::ecs2::ImagePresentationComponentHelper::impl *this)
{
  v2 = this + 12544;
  *this = 0;
  *(this + 2) = 0;
  objc_initWeak(this + 2, 0);
  objc_initWeak(this + 3, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0x40000000;
  objc_initWeak(this + 7, 0);
  objc_initWeak(this + 8, 0);
  objc_initWeak(this + 9, 0);
  *(this + 10) = vdup_n_s32(0x44AA0000u);
  inited = objc_initWeak(this + 11, 0);
  *(this + 15) = re::globalAllocators(inited)[2];
  *(this + 16) = 0;
  *(this + 136) = xmmword_1E308AA90;
  *(this + 19) = 0x3F80000000000000;
  v4 = -12384;
  do
  {
    v5 = this + v4;
    *(v5 + 1568) = 0;
    *(v5 + 3138) = 0;
    v4 += 2064;
  }

  while (v4);
  *v2 = 0;
  v2[2] = 0;
  *(this + 1569) = 0;
  *(this + 1571) = 0;
  v6 = (this + 12584);
  v7 = 24672;
  *(this + 1570) = 0;
  do
  {
    *(v6 - 1) = 0;
    *v6 = 0;
    v6 += 1028;
    v7 -= 4112;
  }

  while (v7);
  *(this + 37248) = 0;
  return this;
}

void std::__tree<re::ecs2::ImageViewingMode>::__assign_unique<re::ecs2::ImageViewingMode const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*(a1 + 16))
  {
    v6 = *a1;
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    *a1 = a1 + 8;
    *(v7 + 16) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    if (!v9)
    {
LABEL_25:
      v19 = 0;
LABEL_26:
      std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(v19);
      goto LABEL_27;
    }

    v10 = std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(v9);
    v11 = v10;
    if (a2 != a3)
    {
      while (1)
      {
        v12 = *a2;
        v13 = *v8;
        v14 = (a1 + 8);
        v15 = (a1 + 8);
        if (*v8)
        {
          while (1)
          {
            while (1)
            {
              v15 = v13;
              v16 = *(v13 + 25);
              if (v16 <= v12)
              {
                break;
              }

              v13 = *v15;
              v14 = v15;
              if (!*v15)
              {
                goto LABEL_14;
              }
            }

            if (v16 >= v12)
            {
              break;
            }

            v13 = v15[1];
            if (!v13)
            {
              v14 = v15 + 1;
              goto LABEL_14;
            }
          }

          v17 = v11;
        }

        else
        {
LABEL_14:
          *(v9 + 25) = v12;
          std::__tree<std::__value_type<double,std::string>,std::__map_value_compare<double,std::__value_type<double,std::string>,std::less<double>,true>,std::allocator<std::__value_type<double,std::string>>>::__insert_node_at(a1, v15, v14, v9);
          if (!v11)
          {
            ++a2;
            goto LABEL_25;
          }

          v17 = std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(v11);
          v9 = v11;
          v11 = v17;
        }

        if (++a2 == a3)
        {
          goto LABEL_20;
        }
      }
    }

    v17 = v10;
LABEL_20:
    std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(v9);
    if (v17)
    {
      for (i = v17[2]; i; i = i[2])
      {
        v17 = i;
      }

      v19 = v17;
      goto LABEL_26;
    }
  }

LABEL_27:
  if (a2 != a3)
  {
    v20 = (a1 + 8);
    do
    {
      v21 = *v20;
      if (!*v20)
      {
LABEL_36:
        operator new();
      }

      v22 = *a2;
      while (1)
      {
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 25);
          if (v24 <= v22)
          {
            break;
          }

          v21 = *v23;
          if (!*v23)
          {
            goto LABEL_36;
          }
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          goto LABEL_36;
        }
      }

      ++a2;
    }

    while (a2 != a3);
  }
}

void *std::__tree<re::ecs2::ImageViewingMode>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_MXISystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_254, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_254))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8530, "MXISystem");
    __cxa_guard_release(&_MergedGlobals_254);
  }

  return &unk_1EE1A8530;
}

void re::ecs2::initInfo_MXISystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7BFBF04A279ALL;
  v6[1] = "MXISystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MXISystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MXISystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MXISystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MXISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MXISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MXISystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MXISystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::MXISystem *re::ecs2::MXISystem::MXISystem(re::ecs2::MXISystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF0648;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  v3 = *re::mxiLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[MXISystem] MXISystem init", v5, 2u);
  }

  return this;
}

void re::ecs2::MXISystem::~MXISystem(re::ecs2::MXISystem *this)
{
  v2 = *re::mxiLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEBUG, "[MXISystem] MXISystem dealloc", v3, 2u);
  }

  re::ecs2::System::~System(this);
}

{
  re::ecs2::MXISystem::~MXISystem(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::MXISystem::willAddSystemToECSService(re::ecs2::MXISystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 38) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 39) = re::ServiceLocator::serviceOrNull<re::TransformService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MXIService>(v5);
  if (result)
  {
    *(this + 40) = result;
  }

  return result;
}

double re::ecs2::MXISystem::willRemoveSystemFromECSService(re::ecs2::MXISystem *this)
{
  *(this + 40) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  return result;
}

re::MXIManager *re::ecs2::MXISystem::willAddSceneToECSService(re::MXIManager *this, re::EventBus **a2)
{
  if (a2)
  {
    this = *(this + 40);
    if (this)
    {
      return re::MXIManager::registerScene(this, a2);
    }
  }

  return this;
}

re::MXIManager *re::ecs2::MXISystem::willRemoveSceneFromECSService(re::MXIManager *this, re::ecs2::Entity **a2)
{
  if (a2)
  {
    this = *(this + 40);
    if (this)
    {
      return re::MXIManager::unregisterScene(this, a2);
    }
  }

  return this;
}

void re::ecs2::MXISystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 320))
  {
    v4 = *(a1 + 296);
    if (!v4 || (*(v4 + 432) & 0x10) != 0)
    {
      v5 = *(a3 + 200);
      if (v5)
      {
        v6 = *(a3 + 216);
        v7 = &v6[v5];
        v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        v39 = v7;
        do
        {
          v9 = *v6;
          v10 = re::ecs2::SceneComponentTable::get((*v6 + 200), v8[83]);
          if (v10 && *(v10 + 384))
          {
            v11 = *(*(a1 + 304) + 112);
            if (v11)
            {
              v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v12 = 0;
            }

            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v9, 0, v12, &v42);
            v13 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[83]);
            if (v13)
            {
              v14 = *(v13 + 48);
              if (v14)
              {
                v15 = *(v13 + 50);
                for (i = 8 * v14; i; i -= 8)
                {
                  v17 = *v15;
                  v18 = (*v15)[1].i64[0];
                  if (v18 && (*(v18 + 304) & 1) != 0)
                  {
                    v13 = re::MXIManager::update(*(a1 + 320), v9, (*v15)[1].i64[0], *v15);
                    if (v13 && *(a1 + 304))
                    {
                      MXIContextForEntity = re::MXIManager::getMXIContextForEntity(*(a1 + 320), *(v18 + 312), buf);
                      v20 = (*(**(a1 + 256) + 24))(*(a1 + 256), MXIContextForEntity);
                      (*(*v20 + 8))(v55);
                      if (v55[0])
                      {
                        v21 = *&v55[8];
                      }

                      else
                      {
                        v21 = 0;
                      }

                      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v9, v21, v12, v55);
                      v22 = re::StringID::operator=(&v49, v55);
                      if (v55[0])
                      {
                        if (v55[0])
                        {
                        }
                      }

                      *v55 = v42 >> 1;
                      v23 = **(re::RenderFrameData::stream((v12 + 33), v55) + 48);
                      (*(v23 + 1256))();
                      if (v54)
                      {

                        v54 = 0;
                      }

                      re::DynamicArray<re::AssetHandle>::deinit(&v53);
                      re::AssetHandle::~AssetHandle(&v52);
                      re::AssetHandle::~AssetHandle(&v51);
                      if (v49)
                      {
                        if (v49)
                        {
                        }
                      }
                    }

                    if (v17[5].i8[0] != 1 || (v17[7].i8[9] & 1) == 0)
                    {
                      v40[1] = &unk_1F5CF06D8;
                      LOBYTE(v41) = v17[37].i8[8];
                      HIBYTE(v41) = (v17[5].u8[2] | 2) == 3;
                      v40[0] = v42 >> 1;
                      v24 = re::RenderFrameData::stream((v12 + 33), v40);
                      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v24, &v45, buf);
                      if (*&buf[12] == 0x7FFFFFFF)
                      {
                        v25 = *(*(v24 + 48) + 8);
                        v26 = (*(*v25 + 32))(v25, 56, 8);
                        *v26 = 0;
                        *(v26 + 8) = 0;
                        *(v26 + 16) = 1;
                        *(v26 + 32) = 0;
                        *(v26 + 40) = 0;
                        *(v26 + 24) = 0;
                        *(v26 + 48) = 0;
                        v27 = re::BucketArray<re::MXIColorConversionState,4ul>::init(v26, v25, 1uLL);
                        v28 = re::globalAllocators(v27)[2];
                        *v55 = &unk_1F5CF0748;
                        *&v55[8] = v25;
                        *&v57[4] = v28;
                        *&v57[12] = v55;
                        *buf = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
                        *&buf[8] = v26;
                        *(&v49 + 1) = v28;
                        *&v50 = 0;
                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v48, v55);
                        v29 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v24, &v45, buf);
                        if (v50)
                        {
                          v43 = buf;
                          (*(*v50 + 16))(v50, &v43);
                        }

                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v48);
                        if (*buf)
                        {
                          (*buf)(0, buf, 0, 0, 0);
                        }

                        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(v55);
                      }

                      else
                      {
                        v29 = (*(v24 + 16) + 96 * *&buf[12] + 16);
                      }

                      v43 = &unk_1F5CF06D8;
                      v44 = v41;
                      v32 = *(v31 + 40);
                      v33 = *(v31 + 8);
                      if (v32 + 1 > 4 * v33)
                      {
                        re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(v31, (v32 + 4) >> 2);
                        v33 = *(v31 + 8);
                      }

                      if (v33 <= v32 >> 2)
                      {
                        v45 = 0;
                        v49 = 0u;
                        v50 = 0u;
                        v47 = 0u;
                        v48 = 0u;
                        *buf = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v55 = 136315906;
                        *&v55[4] = "operator[]";
                        *&v55[12] = 1024;
                        *&v55[14] = 858;
                        v56 = 2048;
                        *v57 = v32 >> 2;
                        *&v57[8] = 2048;
                        *&v57[10] = v33;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_57:
                        re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                        _os_crash();
                        __break(1u);
                      }

                      if (*(v31 + 16))
                      {
                        v34 = v31 + 24;
                      }

                      else
                      {
                        v34 = *(v31 + 32);
                      }

                      v35 = *(v34 + 8 * (v32 >> 2));
                      ++*(v31 + 40);
                      ++*(v31 + 48);
                      v36 = v35 + 16 * (v32 & 3);
                      *v36 = &unk_1F5CF06D8;
                      *(v36 + 8) = v44;
                      v37 = *(v31 + 40);
                      if (!v37)
                      {
                        goto LABEL_57;
                      }

                      v13 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v31, v37 - 1);
                    }
                  }

                  ++v15;
                }
              }
            }

            if (v42)
            {
              if (v42)
              {
              }
            }

            v7 = v39;
            v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          }

          ++v6;
        }

        while (v6 != v7);
      }
    }
  }

  else
  {
    v38 = *re::mxiLogObjects(a1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "[MXISystem] MXISystem cannot move forward without MXIManager.", buf, 2u);
    }
  }
}

void *re::BucketArray<re::MXIColorConversionState,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::MXIColorConversionState,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 64, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
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
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MXIColorConversionState,4ul> *>::__handle[abi:nn200100];
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
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MXIColorConversionState,4ul> *>::__id;
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

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
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
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v4, i);
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
    v7 = *(*v2 + 40);

    return v7(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0748;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MXIColorConversionState>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0748;
  a2[1] = v2;
  return a2;
}

void *re::ecs2::allocInfo_ShadowScopeService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_255, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_255))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A85C8, "ShadowScopeService");
    __cxa_guard_release(&_MergedGlobals_255);
  }

  return &unk_1EE1A85C8;
}

void re::ecs2::initInfo_ShadowScopeService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD7F413952501E642;
  v6[1] = "ShadowScopeService";
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
  *(this + 8) = &re::ecs2::initInfo_ShadowScopeService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::DebugRenderingSystem::willAddSystemToECSService(re::ecs2::DebugRenderingSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::service<re::AssetService>(v2);
  loadMatDefAsset((this + 392), "engine:debugPoint.rematerialdefinition", v3);
  loadMatDefAsset((this + 416), "engine:debugLine.rematerialdefinition", v3);
  loadMatDefAsset((this + 440), "engine:debugPointNoZ.rematerialdefinition", v3);

  loadMatDefAsset((this + 464), "engine:debugLineNoZ.rematerialdefinition", v3);
}

void re::ecs2::DebugRenderingSystem::update(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1[5] + 32))(a1[5]);
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v5);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 10);
    if (v8)
    {
      if (*(v8 + 8) == 1 && (*(v8 + 32) || *(v8 + 72) || *(v8 + 112) || *(v8 + 152)))
      {
        v9 = *(v6 + 14);
        if (v9)
        {
          v10 = re::RenderFrameBox::get((v9 + 328), 0xFFFFFFFFFFFFFFFuLL);
        }

        else
        {
          v10 = 0;
        }

        v11 = (*(*a1[5] + 32))(a1[5]);
        v12 = re::ServiceLocator::service<re::AssetService>(v11);
        tryMakeMaterialAsset((a1 + 37), (a1 + 49), v7, v12);
        tryMakeMaterialAsset((a1 + 40), (a1 + 52), v7, v12);
        tryMakeMaterialAsset((a1 + 43), (a1 + 55), v7, v12);
        tryMakeMaterialAsset((a1 + 46), (a1 + 58), v7, v12);
        v27 = *(v10 + 392);
        v13 = *(a3 + 200);
        if (v13)
        {
          v14 = *(a3 + 216);
          v15 = 8 * v13;
          do
          {
            v16 = *v14;
            v23[1] = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v23[0] = v27;
            re::DynamicArray<re::MeshScene>::setCapacity(v23, 0);
            ++v25;
            v20 = a1;
            v21 = &v27;
            v22 = v23;
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(&v20, (a1 + 40), v8 + 16);
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(&v20, (a1 + 46), v8 + 56);
            v20 = a1;
            v21 = &v27;
            v22 = v23;
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(&v20, (a1 + 37), v8 + 96);
            re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(&v20, (a1 + 43), v8 + 136);
            if (v24)
            {
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v16, 0, v10, &v20);
              v19 = v20 >> 1;
              v17 = **(re::RenderFrameData::stream((v10 + 264), &v19) + 48);
              v18 = (*(v17 + 504))();
              if (v20)
              {
                if (v20)
                {
                }
              }
            }

            re::DynamicArray<re::MeshScene>::deinit(v23);
            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        *(v8 + 32) = 0;
        ++*(v8 + 40);
        *(v8 + 72) = 0;
        ++*(v8 + 80);
        *(v8 + 112) = 0;
        ++*(v8 + 120);
        *(v8 + 152) = 0;
        ++*(v8 + 160);
      }
    }
  }
}

void *re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_0::operator()(void *result, re::MaterialAsset *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      v5 = *result;
      v6 = atomic_load((v3 + 896));
      if (v6 == 2)
      {
        result = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(a2);
        v8 = result[222];
        if (v8)
        {
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v21, 8uLL, *(v5 + 232));
          v39 = 0;
          v9 = *(a3 + 16);
          if (v9)
          {
            v10 = *(a3 + 32);
            v11 = v10 + (v9 << 6);
            do
            {
              v12 = re::PrimitiveRenderingContext::addLine(v21, v10, (v10 + 16));
              v13 = *(v10 + 32);
              v13.n128_u32[3] = 1.0;
              v19[0] = v13;
              re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v12, v19, &v23, &v25, v22, v27, v40);
              v19[0].n128_f32[0] = *(v10 + 48) * 0.0025;
              re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v12, v19, &v24, v26, v22, v27, v40);
              v10 += 64;
            }

            while (v10 != v11);
          }

          re::PrimitiveRenderingContext::buildMeshSceneOfLines(v21, *v4[1], v8, v19);
          v14 = v4[2];
          if (*v14)
          {
            re::DynamicArray<re::MeshScene>::add(v14, v19);
          }

          v15 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v20);
          if (v34)
          {
            if (v38)
            {
              (*(*v34 + 40))(v15);
            }

            v38 = 0;
            v35 = 0;
            v36 = 0;
            v34 = 0;
            ++v37;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v33);
          if (v28)
          {
            if (v32)
            {
              (*(*v28 + 40))();
            }

            v32 = 0;
            v29 = 0;
            v30 = 0;
            v28 = 0;
            ++v31;
          }

          for (i = 122; i != 102; i -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[i]);
          }

          for (j = 102; j != 82; j -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[j]);
          }

          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21[j]);
            j -= 5;
          }

          while (j != 62);
          for (k = 30; k != -5; k -= 5)
          {
            result = re::DynamicArray<unsigned long>::deinit(&v21[k]);
          }
        }
      }
    }
  }

  return result;
}

void *re::ecs2::DebugRenderingSystem::update(re::ecs2::System::UpdateContext)const::$_1::operator()(void *result, re::MaterialAsset *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      v5 = *result;
      v6 = atomic_load((v3 + 896));
      if (v6 == 2)
      {
        result = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(a2);
        v8 = result[222];
        if (v8)
        {
          re::PrimitiveRenderingContext::PrimitiveRenderingContext(v21, 8uLL, *(v5 + 232));
          v39 = 0;
          v9 = *(a3 + 16);
          if (v9)
          {
            v10 = *(a3 + 32);
            v11 = v10 + 48 * v9;
            do
            {
              v12 = re::PrimitiveRenderingContext::addPoint(v21, v10);
              v13 = *(v10 + 16);
              v13.n128_u32[3] = 1.0;
              v19[0] = v13;
              re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(1, v12, v19, &v23, &v25, v22, v27, v40);
              v19[0].n128_f32[0] = *(v10 + 32) * 0.00125;
              re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(2, v12, v19, &v24, v26, v22, v27, v40);
              v10 += 48;
            }

            while (v10 != v11);
          }

          re::PrimitiveRenderingContext::buildMeshSceneOfPoints(v21, *v4[1], v8, v19);
          v14 = v4[2];
          if (*v14)
          {
            re::DynamicArray<re::MeshScene>::add(v14, v19);
          }

          v15 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v20);
          if (v34)
          {
            if (v38)
            {
              (*(*v34 + 40))(v15);
            }

            v38 = 0;
            v35 = 0;
            v36 = 0;
            v34 = 0;
            ++v37;
          }

          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(&v33);
          if (v28)
          {
            if (v32)
            {
              (*(*v28 + 40))();
            }

            v32 = 0;
            v29 = 0;
            v30 = 0;
            v28 = 0;
            ++v31;
          }

          for (i = 122; i != 102; i -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[i]);
          }

          for (j = 102; j != 82; j -= 5)
          {
            re::DynamicArray<unsigned long>::deinit(&v21[j]);
          }

          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21[j]);
            j -= 5;
          }

          while (j != 62);
          for (k = 30; k != -5; k -= 5)
          {
            result = re::DynamicArray<unsigned long>::deinit(&v21[k]);
          }
        }
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_DebugRenderingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_256, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_256))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8660, "DebugRenderingSystem");
    __cxa_guard_release(&_MergedGlobals_256);
  }

  return &unk_1EE1A8660;
}

void re::ecs2::initInfo_DebugRenderingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x8EC1A4A1877F6250;
  v6[1] = "DebugRenderingSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DebugRenderingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DebugRenderingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DebugRenderingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DebugRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DebugRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DebugRenderingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DebugRenderingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::DebugRenderingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 480) = 0;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF07A0;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::DebugRenderingSystem>(uint64_t a1)
{
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
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
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF07A0;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0u;
  *(v1 + 472) = 0u;
  return result;
}

void re::ecs2::DebugRenderingSystem::~DebugRenderingSystem(re::ecs2::DebugRenderingSystem *this)
{
  *this = &unk_1F5CF07A0;
  re::AssetHandle::~AssetHandle((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::AssetHandle::~AssetHandle((this + 416));
  re::AssetHandle::~AssetHandle((this + 392));
  re::AssetHandle::~AssetHandle((this + 368));
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CF07A0;
  re::AssetHandle::~AssetHandle((this + 464));
  re::AssetHandle::~AssetHandle((this + 440));
  re::AssetHandle::~AssetHandle((this + 416));
  re::AssetHandle::~AssetHandle((this + 392));
  re::AssetHandle::~AssetHandle((this + 368));
  re::AssetHandle::~AssetHandle((this + 344));
  re::AssetHandle::~AssetHandle((this + 320));
  re::AssetHandle::~AssetHandle((this + 296));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::imagePresentationLogObjects(re *this)
{
  {
    re::imagePresentationLogObjects(void)::logObjects = os_log_create("com.apple.re", "ImagePresentation");
  }

  return &re::imagePresentationLogObjects(void)::logObjects;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::setCameraViewsRenderGraphFileProviders(re::ecs2::CameraViewDescriptorsHelper *this, re::ecs2::Entity *a2)
{
  v2 = a2;
  v108 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    v6 = v5;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v43 = 0;
    if (*(v5 + 5))
    {
      v7 = *(v5 + 7);
      v40 = *(v5 + 5);
      re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(&v40, v7);
      ++v43;
      v8 = *(v6 + 7);
      if (v8 >= v42)
      {
        re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(&v40, *(v6 + 7));
        std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(*(v6 + 9), *(v6 + 9) + 80 * v42, v44);
        if (v42 != v8)
        {
          v11 = *(v6 + 9);
          v12 = v44;
          v13 = 80 * v42;
          v14 = 80 * v8;
          do
          {
            v15 = v12 + v13;
            re::AssetHandle::AssetHandle((v12 + v13), (v11 + v13));
            v5 = re::DynamicString::DynamicString((v12 + v13 + 24), (v11 + v13 + 24));
            v16 = *(v11 + v13 + 56);
            *(v15 + 72) = *(v11 + v13 + 72);
            *(v15 + 56) = v16;
            v14 -= 80;
            v11 += 80;
            v12 += 80;
          }

          while (v13 != v14);
        }
      }

      else
      {
        std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(*(v6 + 9), *(v6 + 9) + 80 * v8, v44);
        if (v8 != v42)
        {
          v9 = v44 + 80 * v8;
          v10 = 80 * v42 - 80 * v8;
          do
          {
            re::DynamicString::deinit((v9 + 24));
            re::AssetHandle::~AssetHandle(v9);
            v9 += 80;
            v10 -= 80;
          }

          while (v10);
        }
      }

      v42 = v8;
    }
  }

  else
  {
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v43 = 0;
  }

  if (v4[27])
  {
    v39 = 0;
    v17 = 0;
    *&v46 = v4;
    *&v47 = 0;
    goto LABEL_26;
  }

  v18 = v4[32];
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v2;
  }

  if (v19)
  {
    LOBYTE(v50) = 0;
    v51 = xmmword_1E30474D0;
    v64 = xmmword_1E308C680;
    v48 = 0u;
    v49 = 0u;
    *&v52 = 0x70000FF00000000;
    DWORD2(v52) = -1;
    v53 = 0;
    v54 = 0u;
    v55 = 0;
    v62 = 0;
    v63 = 0;
    v56 = 0u;
    v57 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0;
    v61 = 0;
    v65 = unk_1E308C690;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v20 = re::globalAllocators(v5);
    v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 3) = 0u;
    *(v21 + 4) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 6) = 0u;
    *(v21 + 7) = 0u;
    *(v21 + 8) = 0u;
    *(v21 + 9) = 0u;
    *(v21 + 10) = 0u;
    *(v21 + 11) = 0u;
    *(v21 + 12) = 0u;
    *(v21 + 13) = 0u;
    *(v21 + 14) = 0u;
    *(v21 + 15) = 0u;
    *(v21 + 16) = 0u;
    v70 = v21;
    v71 = -1;
    v72 = 1;
    v73 = 0;
    v74 = re::globalAllocators(v21)[2];
    v75 = 0;
    memset(v107, 0, 48);
    re::Pose<float>::Pose(v106, 0, 0, v107);
    v76 = *v106;
    v77 = *&v106[16];
    memset(v107, 0, 48);
    re::Pose<float>::Pose(&v46, 0, 0, v107);
    v78 = v46;
    v79 = v47;
    v80 = 0;
    v81 = xmmword_1E308B7C0;
    v82 = 0xBDCCCCCD3DCCCCCDLL;
    v83 = 0;
    v84 = xmmword_1E30476A0;
    v85 = 1;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v90 = 0;
    v91 = 0;
    v92 = xmmword_1E308B7C0;
    v93 = 0xBDCCCCCD3DCCCCCDLL;
    v94 = 0;
    v95 = xmmword_1E30476A0;
    v96 = 1;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
    v101 = 0u;
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v4 + 30), &v48);
    re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v48);
    v22 = v4[27];
    *&v46 = v4;
    *&v47 = 0;
    if (v22)
    {
      v17 = 0;
      v39 = 1;
      goto LABEL_26;
    }

    if (!v4[32])
    {
      goto LABEL_24;
    }

LABEL_22:
    v39 = v19;
    v17 = 1;
    goto LABEL_26;
  }

  *&v46 = v4;
  *&v47 = 0;
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (!v4[37])
  {
    v26 = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v39 = v19;
  v17 = 2;
LABEL_26:
  v23 = 0;
  v24 = 0;
  v25 = 0;
  DWORD2(v46) = v17;
  LODWORD(v26) = 1;
  do
  {
    v27 = (v23 + 0x20000);
    if (v17 == 1)
    {
      v23 = (v23 + 0x10000);
    }

    if (v17 == 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v4, v28);
    v30 = ViewDescriptor;
    if (*(ViewDescriptor + 200))
    {
      v31 = v25;
      v32 = v4[12];
      if (v32 <= v25)
      {
        v45 = 0;
        memset(v107, 0, sizeof(v107));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v106 = 136315906;
        *&v106[4] = "operator[]";
        *&v106[12] = 1024;
        *&v106[14] = 789;
        *&v106[18] = 2048;
        *&v106[20] = v25;
        *&v106[28] = 2048;
        *&v106[30] = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *v106 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v107[0]) = 136315906;
        *(v107 + 4) = "operator[]";
        WORD6(v107[0]) = 1024;
        *(v107 + 14) = 789;
        WORD1(v107[1]) = 2048;
        *(&v107[1] + 4) = v31;
        WORD6(v107[1]) = 2048;
        *(&v107[1] + 14) = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v33 = 0;
      ++v25;
      v34 = v4[14] + 3120 * v31;
      do
      {
        v35 = re::CameraView::CameraView((&v48 + v33), (v34 + v33));
        v33 += 1552;
      }

      while (v33 != 3104);
      v105[488] = *(v34 + 3104);
      re::DynamicArray<re::RenderGraphFileProvider>::operator=(v105, &v89);
      do
      {
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v48 + v33 - 368);
        re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v48 + v33 - 928);
        re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v48 + v33 - 976);
        re::DynamicString::deinit((&v48 + v33 - 1552));
        v33 -= 1552;
      }

      while (v33);
    }

    else
    {
      v31 = v24;
      v32 = v4[7];
      if (v32 <= v24)
      {
        goto LABEL_50;
      }

      ++v24;
      v37 = v4[9] + 1552 * v31;
    }

    v26 = v26 & v36;
    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v46);
    v17 = DWORD2(v46);
    v23 = v47;
  }

  while (v46 != v4 || DWORD2(v46) != 3 || v47);
  if (v39)
  {
LABEL_45:
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v4 + 30));
  }

LABEL_46:
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(&v40);
  return v26;
}

uint64_t anonymous namespace::setRenderGraphFileProviders(uint64_t a1, re::RenderGraphAsset *a2, uint64_t a3, re::Allocator *a4)
{
  re::DynamicArray<re::RenderGraphFileProvider>::clear(a1 + 576);
  re::DynamicArray<re::RenderGraphFileProvider>::setCapacity((a1 + 576), *(a3 + 16) + 1);
  if (*(a2 + 1))
  {
    v8 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(a2);
    if (v8)
    {
      v9 = v8 + 8;
      re::DynamicString::DynamicString(&v24, "Camera", a4);
      v23 = v9;
      v26 = 0;
      re::DynamicArray<re::RenderGraphFileProvider>::add((a1 + 576), &v23);
      if (v24)
      {
        if (v25)
        {
          (*(*v24 + 40))();
        }
      }
    }
  }

  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(a3 + 32);
    v13 = 80 * v10;
    v14 = 1;
    do
    {
      v15 = (v12 + v11);
      if ((*(v12 + v11 + 72) & 1) == 0)
      {
        v16 = *(v15 + 1);
        if (v16 && (v17 = atomic_load((v16 + 896)), v17 == 2))
        {
          ++*(*(v15 + 1) + 276);
          v18 = re::AssetHandle::loadedAsset<re::RenderGraphAsset>(v15);
          v19 = v12 + v11;
          if (*(v12 + v11 + 32))
          {
            v20 = *(v19 + 40);
          }

          else
          {
            v20 = (v19 + 33);
          }

          v21 = v18 + 8;
          v23 = 0;
          re::DynamicString::DynamicString(&v24, v20, a4);
          v23 = v21;
          v26 = *(v12 + v11 + 56);
          re::DynamicArray<re::RenderGraphFileProvider>::add((a1 + 576), &v23);
          if (v24 && (v25 & 1) != 0)
          {
            (*(*v24 + 40))();
          }
        }

        else
        {
          re::AssetHandle::loadAsync(v15);
          v14 = 0;
        }
      }

      v11 += 80;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v90 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v14;
              v88 = 2048;
              *v89 = v17;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_20;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_20:
    v10 = 1;
  }

  if (v8[37])
  {
    v22 = 0;
    do
    {
      v23 = (v8[39] + 1008 * v22);
      v24 = v23[1];
      if (v24)
      {
        v25 = atomic_load((v24 + 896));
        if (v25 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v22));
          v10 = 0;
        }
      }

      if (v23[116])
      {
        v26 = 0;
        while (2)
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v23[116];
            if (v29 <= v26)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v26;
              v88 = 2048;
              *v89 = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v30 = v28;
            v31 = v23[118] + 136 * v26 + 24 * v27;
            v32 = *(v31 + 40);
            if (v32)
            {
              v33 = atomic_load((v32 + 896));
              if (v33 != 2)
              {
                re::AssetHandle::loadAsync((v31 + 32));
                v10 = 0;
              }
            }

            v28 = 0;
            v27 = 1;
          }

          while ((v30 & 1) != 0);
          if (v23[116] > ++v26)
          {
            continue;
          }

          break;
        }
      }

      ++v22;
    }

    while (v8[37] > v22);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v89[2] = 0;
  memset(v87, 0, sizeof(v87));
  v34 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v80 = 0;
  v81 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v81, &v80);
  v79 = 0;
  v76[1] = 0;
  v77 = 0;
  v78 = 0;
  v76[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v76, v81);
  ++v78;
  v75 = 0;
  v72[1] = 0;
  v73 = 0;
  v74 = 0;
  v72[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v72, v80);
  ++v74;
  v71 = 0;
  v69[1] = 0;
  v69[2] = 0;
  v70 = 0;
  v69[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v69, v81);
  ++v70;
  v68 = 0;
  v66[1] = 0;
  v66[2] = 0;
  v67 = 0;
  v66[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v66, v80);
  v35 = 0;
  ++v67;
  if (v34)
  {
    v36 = (v34 + 40);
  }

  else
  {
    v36 = v87;
  }

  *&v82 = v8;
  *&v83 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v35 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v39 = 1;
LABEL_64:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v82);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v82);
          if (*(a4 + 44) == 1)
          {
            v46 = v79 + 1552 * v77;
            v47 = *(a1 + 112);
            if (v47)
            {
              v48 = re::DrawingManager::layerAspect(v47, 0, v45);
            }

            else
            {
              v48 = 1.0;
            }

            re::Projection::setAspect((v46 - 1488), *(a4 + 40) != 0, v48);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v82);
        }

        goto LABEL_76;
      }

      v35 = 2;
    }
  }

  v38 = 0;
  DWORD2(v82) = v35;
  v39 = 1;
  do
  {
    v40 = v38 + 0x20000;
    if (v35 == 1)
    {
      v38 += 0x10000;
    }

    if (v35 == 2)
    {
      v41 = v40;
    }

    else
    {
      v41 = v38;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v82);
    v35 = DWORD2(v82);
    v38 = v83;
  }

  while (v82 != v8 || DWORD2(v82) != 3 || v83 != 0);
  v44 = v8[27];
  if (v44 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v51 = v77 ? v79 + 1552 * v77 - 1552 : v75 + 3120 * v73 - 3120;
      if (*(a4 + 44) == 1)
      {
        LODWORD(v50) = *(ViewDescriptor + 212);
        v57 = *(ViewDescriptor + 216);
        v58 = *(a1 + 112);
        v59 = *&v50 / v57;
        if (v58)
        {
          v60 = re::DrawingManager::layerAspect(v58, 0, v50);
        }

        else
        {
          v60 = 1.0;
        }

        re::Projection::setAspect((v51 + 64), *(a4 + 40) != 0, v59 * v60);
      }
    }

    goto LABEL_76;
  }

  if (!v44 && !v8[32])
  {
    goto LABEL_64;
  }

LABEL_76:
  if (v8[37])
  {
    v52 = 0;
    v53 = 960;
    do
    {
      v54 = v8[39];
      v55 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v55 + 4056), v54 + v53);
      ++v52;
      v53 += 1008;
    }

    while (v8[37] > v52);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v76);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v72);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v69);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v66);
  if (v39)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v66);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v69);
  re::DynamicArray<re::CameraMultiView>::deinit(v72);
  re::DynamicArray<re::CameraView>::deinit(v76);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v87);
  return v37;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, uint64_t a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v102 = v15;
  v105 = v16;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  v113 = v22;
  v109 = v12;
  v23 = a11;
  v197 = *MEMORY[0x1E69E9840];
  v115 = v13;
  if (!a11)
  {
    v23 = *(v14 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v14, v13);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v122, a10);
  re::CameraView::CameraView(v116, a10);
  re::CameraView::CameraView(&v119, a10);
  v121 = 2;
  v125 = 0;
  v124 = 0;
  v127 = 0x3F80000000000000;
  v126 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
    goto LABEL_33;
  }

  *&v182 = 0x357E83F318327498;
  *(&v182 + 1) = "overrides:msaasamplecount";
  *v179 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v182, v179);
  if (v28)
  {
    v29 = v182;
    if (v182)
    {
      v29 = v182;
      if (v182)
      {
      }
    }

    v30 = 0;
    v106 = v29;
  }

  else
  {
    v106 = *v179;
    v31 = *v179;
    if (v182)
    {
      if (v182)
      {
      }
    }

    v32 = [*(v109 + 26) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v182) = 67109120;
        DWORD1(v182) = v106;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v182, 8u);
      }

      v30 = 0;
    }
  }

  *&v182 = 0x38BDA0FDF1630EF8;
  *(&v182 + 1) = "overrides:enablemsaa";
  v179[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v182, v179);
  if (!v34)
  {
    v35 = v179[0];
    if (v182)
    {
      if (v182)
      {
      }
    }

    if (v35)
    {
      if (v106 == 1)
      {
        v36 = v30;
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 1)
      {
        goto LABEL_34;
      }

      v37 = *re::graphicsLogObjects(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v182) = 0;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v182, 2u);
      }
    }

    v30 = 1;
    LODWORD(v26) = 1;
LABEL_33:
    v106 = v26;
    goto LABEL_34;
  }

  if (v182)
  {
    if (v182)
    {
    }
  }

LABEL_34:
  v38 = v179;
  if (v24)
  {
    v39 = *(v18 + 2);
    if (*(v21 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v105, ViewDescriptor);
      if (!v30)
      {
LABEL_45:
        v43 = ViewDescriptor;
        re::DynamicArray<re::RenderGraphFileProvider>::operator=(v120, v117);
        goto LABEL_55;
      }

LABEL_44:
      v118 = v106;
      v120[34] = v106;
      goto LABEL_45;
    }

    v103 = v20;
    v38 = *(v21 + 12);
    if (v38 <= v39)
    {
      goto LABEL_162;
    }

    v40 = *(v21 + 14) + 3120 * v39;
    v41 = v116;
    v42 = 2;
    v27 = v40;
    do
    {
      re::CameraView::operator=(v41, v27);
      v27 += 194;
      v41 += 1552;
      --v42;
    }

    while (v42);
    v121 = *(v40 + 3104);
    v38 = *(v21 + 22);
    if (v38 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v105, (*(v21 + 24) + 960 * v39));
      v20 = v103;
      v38 = v179;
      if (!v30)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_163:
    v114[0] = 0;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v179 = 136315906;
    *&v179[4] = "operator[]";
    *&v179[12] = 1024;
    *&v179[14] = 789;
    *&v179[18] = 2048;
    *&v179[20] = v39;
    v180 = 2048;
    v181 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_164;
  }

  v38 = *(v20 + 2);
  if (*(v21 + 17) > v38 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 19) + 960 * v38)))
  {
    v27 = *(v21 + 7);
    if (v27 <= v38)
    {
LABEL_164:
      v114[0] = 0;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v179 = 136315906;
      *&v179[4] = "operator[]";
      *&v179[12] = 1024;
      *&v179[14] = 789;
      *&v179[18] = 2048;
      *&v179[20] = v38;
      v180 = 2048;
      v181 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_165:
      v114[0] = 0;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v179 = 136315906;
      *&v179[4] = "operator[]";
      *&v179[12] = 1024;
      *&v179[14] = 789;
      *&v179[18] = 2048;
      *&v179[20] = v38;
      v180 = 2048;
      v181 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::CameraView::operator=(&v122, *(v21 + 9) + 1552 * v38);
    v27 = *(v21 + 17);
    if (v27 <= v38)
    {
      goto LABEL_165;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v102, (*(v21 + 19) + 960 * v38));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v102, ViewDescriptor);
  }

  v38 = v179;
  if (v30)
  {
    v159[22] = v106;
  }

  v43 = ViewDescriptor;
LABEL_55:
  *v179 = v109;
  *&v179[8] = 0;
  *&v179[16] = &v115;
  if (!*(v43 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 0, &v182);
    re::DynamicString::operator=(&v122, &v182);
    if (v182 && (BYTE8(v182) & 1) != 0)
    {
      (*(*v182 + 40))();
    }

    re::ecs2::PerspectiveCameraComponent::calculateProjection(v113, &v182, 1.0);
    v163 = v184;
    v164 = v185;
    v165 = v186;
    v162 = v183;
    v161 = v182;
    if (v166)
    {
      v71 = ViewDescriptor;
      if ((v187 & 1) == 0)
      {
        v166 = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v71 = ViewDescriptor;
      if ((v187 & 1) == 0)
      {
        goto LABEL_102;
      }

      v166 = 1;
    }

    v167 = v188;
    v168 = v189;
    v169 = v190;
    v170 = v191;
LABEL_102:
    if (v171)
    {
      if ((v192 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      if ((v192 & 1) == 0)
      {
        goto LABEL_108;
      }

      v171 = 1;
    }

    v172 = v193;
    v173 = v194;
    v174 = v195;
    v175 = v196;
LABEL_108:
    v176 = *(v71 + 204);
    re::ecs2::PerspectiveCameraComponent::calculateProjection(v113, &v182, 1.0);
    v130 = v184;
    v131 = v185;
    v132 = v186;
    v129 = v183;
    v128 = v182;
    if (v133)
    {
      if (v187)
      {
        v134 = v188;
        v135 = v189;
        v136 = v190;
        v137 = v191;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v133 = 0;
      }
    }

    else if (v187)
    {
      v72 = 1;
      v133 = 1;
      v134 = v188;
      v135 = v189;
      v136 = v190;
      v137 = v191;
    }

    else
    {
      v72 = 0;
    }

    if (v138)
    {
      if (v192)
      {
        v139 = v193;
        v140 = v194;
        v141 = v195;
        v142 = v196;
        v73 = 1;
      }

      else
      {
        v73 = 0;
        v138 = 0;
      }
    }

    else if (v192)
    {
      v73 = 1;
      v138 = 1;
      v139 = v193;
      v140 = v194;
      v141 = v195;
      v142 = v196;
    }

    else
    {
      v73 = 0;
    }

    v177 = xmmword_1E3063230;
    v145 = v130;
    v146 = v131;
    v147 = v132;
    v144 = v129;
    v143 = v128;
    if (v148)
    {
      if ((v72 & 1) == 0)
      {
        v148 = 0;
        goto LABEL_128;
      }
    }

    else
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_128;
      }

      v148 = 1;
    }

    v149 = v134;
    v150 = v135;
    v151 = v136;
    v152 = v137;
LABEL_128:
    if (v153)
    {
      if ((v73 & 1) == 0)
      {
        v153 = 0;
LABEL_134:
        v160 = v115;
        re::DynamicArray<re::CameraView>::add(v20, &v122);
        v75 = ViewDescriptor;
        if (!*(ViewDescriptor + 116))
        {
          goto LABEL_155;
        }

        v39 = 0;
        v76 = 0;
        v77 = *(v20 + 4) + 1552 * *(v20 + 2);
        v111 = (v77 - 1552);
        v78 = (v77 - 384);
        v79 = (v77 - 1488);
        v80 = (v77 - 1216);
        v108 = (v77 - 851);
        v27 = &selRef_childNodes;
        while (1)
        {
          v81 = *(v75 + 53);
          v82 = *(v75 + 54);
          v83 = *(v75 + 118);
          v84 = v83 + v39;
          if (*(v83 + v39 + 40))
          {
            v85 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v84 + 32));
            if (*(v85 + 120))
            {
LABEL_161:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_162:
              v114[0] = 0;
              v186 = 0u;
              v185 = 0u;
              v184 = 0u;
              v183 = 0u;
              v182 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v179 = 136315906;
              *&v179[4] = "operator[]";
              *&v179[12] = 1024;
              *&v179[14] = 789;
              *&v179[18] = 2048;
              *&v179[20] = v39;
              v180 = 2048;
              v181 = v38;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_163;
            }

            v86 = *(v85 + 112);
            v87 = [v86 width];
            *&v74 = [v86 height];
            v88 = v87 / *&v74;
            if (v86)
            {
            }
          }

          else
          {
            v89 = *(v84 + 80);
            if (v89 == -1)
            {
              v91 = v83 + v39;
              v92 = *(v83 + v39 + 88);
              if (v92)
              {
                v93 = [v92 width];
                v94 = *(v91 + 88);
                goto LABEL_147;
              }

              v95 = *(v91 + 104);
              if (v95)
              {
                v93 = [v95 width];
                v94 = *(v91 + 104);
LABEL_147:
                v96 = [v94 height];
                re::ecs2::PerspectiveCameraComponent::localEyePose(v113, *v78, &v182);
                v38 = a12;
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v182, *v78, v111);
                  *v108 = *(a12 + 28);
                }

                *&v74 = v93;
                v88 = v93 / v96;
                goto LABEL_152;
              }

LABEL_151:
              v88 = 1.0;
              goto LABEL_152;
            }

            v90 = *(v109 + 14);
            if (!v90)
            {
              goto LABEL_151;
            }

            *&v74 = re::DrawingManager::layerAspect(v90, v89, v74);
            v88 = *&v74;
          }

LABEL_152:
          if (*(v113 + 44) == 1)
          {
            v97 = (v81 / v82) * v88;
            re::Projection::setAspect(v79, *(v113 + 40) != 0, v97);
            *&v74 = re::Projection::setAspect(v80, *(v113 + 40) != 0, v97);
          }

          ++v76;
          v75 = ViewDescriptor;
          v39 += 136;
          if (*(ViewDescriptor + 116) <= v76)
          {
            goto LABEL_155;
          }
        }
      }
    }

    else
    {
      if ((v73 & 1) == 0)
      {
        goto LABEL_134;
      }

      v153 = 1;
    }

    v154 = v139;
    v155 = v140;
    v156 = v141;
    v157 = v142;
    goto LABEL_134;
  }

  re::DynamicArray<re::CameraMultiView>::add(v18, v116);
  v27 = (*(v18 + 4) + 3120 * *(v18 + 2));
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 0, &v182);
  v101 = (v27 - 390);
  re::DynamicString::operator=((v27 - 390), &v182);
  if (v182 && (BYTE8(v182) & 1) != 0)
  {
    (*(*v182 + 40))();
  }

  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 1, &v182);
  re::DynamicString::operator=((v27 - 196), &v182);
  if (v182 && (BYTE8(v182) & 1) != 0)
  {
    (*(*v182 + 40))();
  }

  v44 = ViewDescriptor;
  v45 = 0;
  v46 = *(ViewDescriptor + 116);
  v47 = 1;
  do
  {
    v48 = v47;
    if (!v46)
    {
      goto LABEL_91;
    }

    v104 = v47;
    v38 = 0;
    v49 = 8 * v45;
    v50 = v101 + 1552 * v45;
    v51 = 4 * v45 + 80;
    v110 = (24 * v45);
    v39 = 32;
    v52 = ViewDescriptor + 16 * v45 + 204;
    do
    {
      v53 = *(v52 + 8);
      v54 = *(v52 + 12);
      v55 = *(v44 + 118);
      re::AssetHandle::AssetHandle(v114, (v110 + v55 + v39));
      if (*(v27 - 16) == 1)
      {
        re::AssetHandle::operator=(v114, (v55 + v39));
      }

      v57 = v53 / v54;
      if (v114[1])
      {
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v114);
        if (*(v58 + 120))
        {
          goto LABEL_161;
        }

        v59 = *(v58 + 112);
        v60 = [v59 width];
        v61 = v60 / [v59 height];
        v62 = [v59 arrayLength];
        if (v59)
        {
        }

LABEL_83:
        if (*(v27 - 16) == 1 && v62 >= 2)
        {
          *(v27 - 15) = 1;
          v57 = *(v52 + 8) / *(v52 + 12);
          if (([*(v109 + 26) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v50 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v63 = *(v55 + v51);
      if (v63 == -1)
      {
        v65 = v55 + v49;
        v66 = *(v65 + 88);
        if (v66)
        {
          v107 = [v66 width];
          v67 = [*(v65 + 88) height];
          v68 = *(v65 + 88);
        }

        else
        {
          v69 = *(v65 + 104);
          if (!v69)
          {
            goto LABEL_89;
          }

          v107 = [v69 width];
          v67 = [*(v65 + 104) height];
          v68 = *(v65 + 104);
        }

        v62 = [v68 arrayLength];
        re::ecs2::PerspectiveCameraComponent::localEyePose(v113, *(v50 + 1168), &v182);
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v182, *(v50 + 1168), v50);
          *(v50 + 701) = *(a12 + 28);
        }

        v61 = v107 / v67;
        goto LABEL_83;
      }

      v64 = *(v109 + 14);
      if (v64)
      {
        v61 = re::DrawingManager::layerAspect(v64, v63, v56);
      }

      else
      {
        v61 = 1.0;
      }

LABEL_87:
      if (*(v113 + 44) == 1)
      {
        v70 = v61 * v57;
        re::Projection::setAspect((v50 + 64), *(v113 + 40) != 0, v70);
        re::Projection::setAspect((v50 + 336), *(v113 + 40) != 0, v70);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v114);
      ++v38;
      v44 = ViewDescriptor;
      v46 = *(ViewDescriptor + 116);
      v49 += 136;
      v51 += 136;
      v39 += 136;
    }

    while (v46 > v38);
    v48 = v104;
LABEL_91:
    v47 = 0;
    v45 = 1;
  }

  while ((v48 & 1) != 0);
LABEL_155:
  v98 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v116[v98 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v116[v98 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v116[v98 - 976]);
    re::DynamicString::deinit(&v116[v98 - 1552]);
    v98 -= 1552;
  }

  while (v98);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v178);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v159);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v158);
  if (v122 && (v123 & 1) != 0)
  {
    (*(*v122 + 40))();
  }

  return v100;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::OrthographicCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v90 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v14;
              v88 = 2048;
              *v89 = v17;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_20;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_20:
    v10 = 1;
  }

  if (v8[37])
  {
    v22 = 0;
    do
    {
      v23 = (v8[39] + 1008 * v22);
      v24 = v23[1];
      if (v24)
      {
        v25 = atomic_load((v24 + 896));
        if (v25 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v22));
          v10 = 0;
        }
      }

      if (v23[116])
      {
        v26 = 0;
        while (2)
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v23[116];
            if (v29 <= v26)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v26;
              v88 = 2048;
              *v89 = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v30 = v28;
            v31 = v23[118] + 136 * v26 + 24 * v27;
            v32 = *(v31 + 40);
            if (v32)
            {
              v33 = atomic_load((v32 + 896));
              if (v33 != 2)
              {
                re::AssetHandle::loadAsync((v31 + 32));
                v10 = 0;
              }
            }

            v28 = 0;
            v27 = 1;
          }

          while ((v30 & 1) != 0);
          if (v23[116] > ++v26)
          {
            continue;
          }

          break;
        }
      }

      ++v22;
    }

    while (v8[37] > v22);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v89[2] = 0;
  memset(v87, 0, sizeof(v87));
  v34 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v80 = 0;
  v81 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v81, &v80);
  v79 = 0;
  v76[1] = 0;
  v77 = 0;
  v78 = 0;
  v76[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v76, v81);
  ++v78;
  v75 = 0;
  v72[1] = 0;
  v73 = 0;
  v74 = 0;
  v72[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v72, v80);
  ++v74;
  v71 = 0;
  v69[1] = 0;
  v69[2] = 0;
  v70 = 0;
  v69[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v69, v81);
  ++v70;
  v68 = 0;
  v66[1] = 0;
  v66[2] = 0;
  v67 = 0;
  v66[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v66, v80);
  v35 = 0;
  ++v67;
  if (v34)
  {
    v36 = (v34 + 40);
  }

  else
  {
    v36 = v87;
  }

  *&v82 = v8;
  *&v83 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v35 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v39 = 1;
LABEL_64:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v82);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v82);
          if (*(a4 + 44) == 1)
          {
            v46 = v79 + 1552 * v77;
            v47 = *(a1 + 112);
            if (v47)
            {
              v48 = re::DrawingManager::layerAspect(v47, 0, v45);
            }

            else
            {
              v48 = 1.0;
            }

            re::Projection::setAspect((v46 - 1488), *(a4 + 40) != 0, v48);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v82);
        }

        goto LABEL_76;
      }

      v35 = 2;
    }
  }

  v38 = 0;
  DWORD2(v82) = v35;
  v39 = 1;
  do
  {
    v40 = v38 + 0x20000;
    if (v35 == 1)
    {
      v38 += 0x10000;
    }

    if (v35 == 2)
    {
      v41 = v40;
    }

    else
    {
      v41 = v38;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v82);
    v35 = DWORD2(v82);
    v38 = v83;
  }

  while (v82 != v8 || DWORD2(v82) != 3 || v83 != 0);
  v44 = v8[27];
  if (v44 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v51 = v77 ? v79 + 1552 * v77 - 1552 : v75 + 3120 * v73 - 3120;
      if (*(a4 + 44) == 1)
      {
        LODWORD(v50) = *(ViewDescriptor + 212);
        v57 = *(ViewDescriptor + 216);
        v58 = *(a1 + 112);
        v59 = *&v50 / v57;
        if (v58)
        {
          v60 = re::DrawingManager::layerAspect(v58, 0, v50);
        }

        else
        {
          v60 = 1.0;
        }

        re::Projection::setAspect((v51 + 64), *(a4 + 40) != 0, v59 * v60);
      }
    }

    goto LABEL_76;
  }

  if (!v44 && !v8[32])
  {
    goto LABEL_64;
  }

LABEL_76:
  if (v8[37])
  {
    v52 = 0;
    v53 = 960;
    do
    {
      v54 = v8[39];
      v55 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v55 + 4056), v54 + v53);
      ++v52;
      v53 += 1008;
    }

    while (v8[37] > v52);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v76);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v72);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v69);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v66);
  if (v39)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v66);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v69);
  re::DynamicArray<re::CameraMultiView>::deinit(v72);
  re::DynamicArray<re::CameraView>::deinit(v76);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v87);
  return v37;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::OrthographicCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, uint64_t a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v102 = v15;
  v105 = v16;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  v113 = v22;
  v109 = v12;
  v23 = a11;
  v197 = *MEMORY[0x1E69E9840];
  v115 = v13;
  if (!a11)
  {
    v23 = *(v14 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v14, v13);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v122, a10);
  re::CameraView::CameraView(v116, a10);
  re::CameraView::CameraView(&v119, a10);
  v121 = 2;
  v125 = 0;
  v124 = 0;
  v127 = 0x3F80000000000000;
  v126 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
    goto LABEL_33;
  }

  *&v182 = 0x357E83F318327498;
  *(&v182 + 1) = "overrides:msaasamplecount";
  *v179 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v182, v179);
  if (v28)
  {
    v29 = v182;
    if (v182)
    {
      v29 = v182;
      if (v182)
      {
      }
    }

    v30 = 0;
    v106 = v29;
  }

  else
  {
    v106 = *v179;
    v31 = *v179;
    if (v182)
    {
      if (v182)
      {
      }
    }

    v32 = [*(v109 + 26) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v182) = 67109120;
        DWORD1(v182) = v106;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v182, 8u);
      }

      v30 = 0;
    }
  }

  *&v182 = 0x38BDA0FDF1630EF8;
  *(&v182 + 1) = "overrides:enablemsaa";
  v179[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v182, v179);
  if (!v34)
  {
    v35 = v179[0];
    if (v182)
    {
      if (v182)
      {
      }
    }

    if (v35)
    {
      if (v106 == 1)
      {
        v36 = v30;
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 1)
      {
        goto LABEL_34;
      }

      v37 = *re::graphicsLogObjects(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v182) = 0;
        _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v182, 2u);
      }
    }

    v30 = 1;
    LODWORD(v26) = 1;
LABEL_33:
    v106 = v26;
    goto LABEL_34;
  }

  if (v182)
  {
    if (v182)
    {
    }
  }

LABEL_34:
  v38 = v179;
  if (v24)
  {
    v39 = *(v18 + 2);
    if (*(v21 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v105, ViewDescriptor);
      if (!v30)
      {
LABEL_45:
        v43 = ViewDescriptor;
        re::DynamicArray<re::RenderGraphFileProvider>::operator=(v120, v117);
        goto LABEL_55;
      }

LABEL_44:
      v118 = v106;
      v120[34] = v106;
      goto LABEL_45;
    }

    v103 = v20;
    v38 = *(v21 + 12);
    if (v38 <= v39)
    {
      goto LABEL_162;
    }

    v40 = *(v21 + 14) + 3120 * v39;
    v41 = v116;
    v42 = 2;
    v27 = v40;
    do
    {
      re::CameraView::operator=(v41, v27);
      v27 += 194;
      v41 += 1552;
      --v42;
    }

    while (v42);
    v121 = *(v40 + 3104);
    v38 = *(v21 + 22);
    if (v38 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v105, (*(v21 + 24) + 960 * v39));
      v20 = v103;
      v38 = v179;
      if (!v30)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_163:
    v114[0] = 0;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v179 = 136315906;
    *&v179[4] = "operator[]";
    *&v179[12] = 1024;
    *&v179[14] = 789;
    *&v179[18] = 2048;
    *&v179[20] = v39;
    v180 = 2048;
    v181 = v38;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_164;
  }

  v38 = *(v20 + 2);
  if (*(v21 + 17) > v38 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 19) + 960 * v38)))
  {
    v27 = *(v21 + 7);
    if (v27 <= v38)
    {
LABEL_164:
      v114[0] = 0;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v179 = 136315906;
      *&v179[4] = "operator[]";
      *&v179[12] = 1024;
      *&v179[14] = 789;
      *&v179[18] = 2048;
      *&v179[20] = v38;
      v180 = 2048;
      v181 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_165:
      v114[0] = 0;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v179 = 136315906;
      *&v179[4] = "operator[]";
      *&v179[12] = 1024;
      *&v179[14] = 789;
      *&v179[18] = 2048;
      *&v179[20] = v38;
      v180 = 2048;
      v181 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::CameraView::operator=(&v122, *(v21 + 9) + 1552 * v38);
    v27 = *(v21 + 17);
    if (v27 <= v38)
    {
      goto LABEL_165;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v102, (*(v21 + 19) + 960 * v38));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v102, ViewDescriptor);
  }

  v38 = v179;
  if (v30)
  {
    v159[22] = v106;
  }

  v43 = ViewDescriptor;
LABEL_55:
  *v179 = v109;
  *&v179[8] = 0;
  *&v179[16] = &v115;
  if (!*(v43 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 0, &v182);
    re::DynamicString::operator=(&v122, &v182);
    if (v182 && (BYTE8(v182) & 1) != 0)
    {
      (*(*v182 + 40))();
    }

    re::ecs2::OrthographicCameraComponent::calculateProjection(v113, &v182, 1.0);
    v163 = v184;
    v164 = v185;
    v165 = v186;
    v162 = v183;
    v161 = v182;
    if (v166)
    {
      v71 = ViewDescriptor;
      if ((v187 & 1) == 0)
      {
        v166 = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v71 = ViewDescriptor;
      if ((v187 & 1) == 0)
      {
        goto LABEL_102;
      }

      v166 = 1;
    }

    v167 = v188;
    v168 = v189;
    v169 = v190;
    v170 = v191;
LABEL_102:
    if (v171)
    {
      if ((v192 & 1) == 0)
      {
        v171 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      if ((v192 & 1) == 0)
      {
        goto LABEL_108;
      }

      v171 = 1;
    }

    v172 = v193;
    v173 = v194;
    v174 = v195;
    v175 = v196;
LABEL_108:
    v176 = *(v71 + 204);
    re::ecs2::OrthographicCameraComponent::calculateProjection(v113, &v182, 1.0);
    v130 = v184;
    v131 = v185;
    v132 = v186;
    v129 = v183;
    v128 = v182;
    if (v133)
    {
      if (v187)
      {
        v134 = v188;
        v135 = v189;
        v136 = v190;
        v137 = v191;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v133 = 0;
      }
    }

    else if (v187)
    {
      v72 = 1;
      v133 = 1;
      v134 = v188;
      v135 = v189;
      v136 = v190;
      v137 = v191;
    }

    else
    {
      v72 = 0;
    }

    if (v138)
    {
      if (v192)
      {
        v139 = v193;
        v140 = v194;
        v141 = v195;
        v142 = v196;
        v73 = 1;
      }

      else
      {
        v73 = 0;
        v138 = 0;
      }
    }

    else if (v192)
    {
      v73 = 1;
      v138 = 1;
      v139 = v193;
      v140 = v194;
      v141 = v195;
      v142 = v196;
    }

    else
    {
      v73 = 0;
    }

    v177 = xmmword_1E3063230;
    v145 = v130;
    v146 = v131;
    v147 = v132;
    v144 = v129;
    v143 = v128;
    if (v148)
    {
      if ((v72 & 1) == 0)
      {
        v148 = 0;
        goto LABEL_128;
      }
    }

    else
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_128;
      }

      v148 = 1;
    }

    v149 = v134;
    v150 = v135;
    v151 = v136;
    v152 = v137;
LABEL_128:
    if (v153)
    {
      if ((v73 & 1) == 0)
      {
        v153 = 0;
LABEL_134:
        v160 = v115;
        re::DynamicArray<re::CameraView>::add(v20, &v122);
        v75 = ViewDescriptor;
        if (!*(ViewDescriptor + 116))
        {
          goto LABEL_155;
        }

        v39 = 0;
        v76 = 0;
        v77 = *(v20 + 4) + 1552 * *(v20 + 2);
        v111 = (v77 - 1552);
        v78 = (v77 - 384);
        v79 = (v77 - 1488);
        v80 = (v77 - 1216);
        v108 = (v77 - 851);
        v27 = &selRef_childNodes;
        while (1)
        {
          v81 = *(v75 + 53);
          v82 = *(v75 + 54);
          v83 = *(v75 + 118);
          v84 = v83 + v39;
          if (*(v83 + v39 + 40))
          {
            v85 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v84 + 32));
            if (*(v85 + 120))
            {
LABEL_161:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_162:
              v114[0] = 0;
              v186 = 0u;
              v185 = 0u;
              v184 = 0u;
              v183 = 0u;
              v182 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v179 = 136315906;
              *&v179[4] = "operator[]";
              *&v179[12] = 1024;
              *&v179[14] = 789;
              *&v179[18] = 2048;
              *&v179[20] = v39;
              v180 = 2048;
              v181 = v38;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_163;
            }

            v86 = *(v85 + 112);
            v87 = [v86 width];
            *&v74 = [v86 height];
            v88 = v87 / *&v74;
            if (v86)
            {
            }
          }

          else
          {
            v89 = *(v84 + 80);
            if (v89 == -1)
            {
              v91 = v83 + v39;
              v92 = *(v83 + v39 + 88);
              if (v92)
              {
                v93 = [v92 width];
                v94 = *(v91 + 88);
                goto LABEL_147;
              }

              v95 = *(v91 + 104);
              if (v95)
              {
                v93 = [v95 width];
                v94 = *(v91 + 104);
LABEL_147:
                v96 = [v94 height];
                re::ecs2::OrthographicCameraComponent::localEyePose(v113, *v78, &v182);
                v38 = a12;
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v182, *v78, v111);
                  *v108 = *(a12 + 28);
                }

                *&v74 = v93;
                v88 = v93 / v96;
                goto LABEL_152;
              }

LABEL_151:
              v88 = 1.0;
              goto LABEL_152;
            }

            v90 = *(v109 + 14);
            if (!v90)
            {
              goto LABEL_151;
            }

            *&v74 = re::DrawingManager::layerAspect(v90, v89, v74);
            v88 = *&v74;
          }

LABEL_152:
          if (*(v113 + 44) == 1)
          {
            v97 = (v81 / v82) * v88;
            re::Projection::setAspect(v79, *(v113 + 40) != 0, v97);
            *&v74 = re::Projection::setAspect(v80, *(v113 + 40) != 0, v97);
          }

          ++v76;
          v75 = ViewDescriptor;
          v39 += 136;
          if (*(ViewDescriptor + 116) <= v76)
          {
            goto LABEL_155;
          }
        }
      }
    }

    else
    {
      if ((v73 & 1) == 0)
      {
        goto LABEL_134;
      }

      v153 = 1;
    }

    v154 = v139;
    v155 = v140;
    v156 = v141;
    v157 = v142;
    goto LABEL_134;
  }

  re::DynamicArray<re::CameraMultiView>::add(v18, v116);
  v27 = (*(v18 + 4) + 3120 * *(v18 + 2));
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 0, &v182);
  v101 = (v27 - 390);
  re::DynamicString::operator=((v27 - 390), &v182);
  if (v182 && (BYTE8(v182) & 1) != 0)
  {
    (*(*v182 + 40))();
  }

  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v115, v23, a10, 1, &v182);
  re::DynamicString::operator=((v27 - 196), &v182);
  if (v182 && (BYTE8(v182) & 1) != 0)
  {
    (*(*v182 + 40))();
  }

  v44 = ViewDescriptor;
  v45 = 0;
  v46 = *(ViewDescriptor + 116);
  v47 = 1;
  do
  {
    v48 = v47;
    if (!v46)
    {
      goto LABEL_91;
    }

    v104 = v47;
    v38 = 0;
    v49 = 8 * v45;
    v50 = v101 + 1552 * v45;
    v51 = 4 * v45 + 80;
    v110 = (24 * v45);
    v39 = 32;
    v52 = ViewDescriptor + 16 * v45 + 204;
    do
    {
      v53 = *(v52 + 8);
      v54 = *(v52 + 12);
      v55 = *(v44 + 118);
      re::AssetHandle::AssetHandle(v114, (v110 + v55 + v39));
      if (*(v27 - 16) == 1)
      {
        re::AssetHandle::operator=(v114, (v55 + v39));
      }

      v57 = v53 / v54;
      if (v114[1])
      {
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v114);
        if (*(v58 + 120))
        {
          goto LABEL_161;
        }

        v59 = *(v58 + 112);
        v60 = [v59 width];
        v61 = v60 / [v59 height];
        v62 = [v59 arrayLength];
        if (v59)
        {
        }

LABEL_83:
        if (*(v27 - 16) == 1 && v62 >= 2)
        {
          *(v27 - 15) = 1;
          v57 = *(v52 + 8) / *(v52 + 12);
          if (([*(v109 + 26) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v50 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v63 = *(v55 + v51);
      if (v63 == -1)
      {
        v65 = v55 + v49;
        v66 = *(v65 + 88);
        if (v66)
        {
          v107 = [v66 width];
          v67 = [*(v65 + 88) height];
          v68 = *(v65 + 88);
        }

        else
        {
          v69 = *(v65 + 104);
          if (!v69)
          {
            goto LABEL_89;
          }

          v107 = [v69 width];
          v67 = [*(v65 + 104) height];
          v68 = *(v65 + 104);
        }

        v62 = [v68 arrayLength];
        re::ecs2::OrthographicCameraComponent::localEyePose(v113, *(v50 + 1168), &v182);
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v182, *(v50 + 1168), v50);
          *(v50 + 701) = *(a12 + 28);
        }

        v61 = v107 / v67;
        goto LABEL_83;
      }

      v64 = *(v109 + 14);
      if (v64)
      {
        v61 = re::DrawingManager::layerAspect(v64, v63, v56);
      }

      else
      {
        v61 = 1.0;
      }

LABEL_87:
      if (*(v113 + 44) == 1)
      {
        v70 = v61 * v57;
        re::Projection::setAspect((v50 + 64), *(v113 + 40) != 0, v70);
        re::Projection::setAspect((v50 + 336), *(v113 + 40) != 0, v70);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v114);
      ++v38;
      v44 = ViewDescriptor;
      v46 = *(ViewDescriptor + 116);
      v49 += 136;
      v51 += 136;
      v39 += 136;
    }

    while (v46 > v38);
    v48 = v104;
LABEL_91:
    v47 = 0;
    v45 = 1;
  }

  while ((v48 & 1) != 0);
LABEL_155:
  v98 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v116[v98 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v116[v98 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v116[v98 - 976]);
    re::DynamicString::deinit(&v116[v98 - 1552]);
    v98 -= 1552;
  }

  while (v98);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v178);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v159);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v158);
  if (v122 && (v123 & 1) != 0)
  {
    (*(*v122 + 40))();
  }

  return v100;
}

uint64_t re::ecs2::CameraViewDescriptorsHelper::buildCameraViews<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, re::Allocator *a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a2;
  v90 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    v7 = a2[2];
  }

  if (a2[27])
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (v8[29] + 960 * v9);
      v12 = v11[1];
      if (v12)
      {
        v13 = atomic_load((v12 + 896));
        if (v13 != 2)
        {
          re::AssetHandle::loadAsync((v8[29] + 960 * v9));
          v10 = 0;
        }
      }

      if (v11[116])
      {
        v14 = 0;
        while (2)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v11[116];
            if (v17 <= v14)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v14;
              v88 = 2048;
              *v89 = v17;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_20;
            }

            v18 = v16;
            v19 = v11[118] + 136 * v14 + 24 * v15;
            v20 = *(v19 + 40);
            if (v20)
            {
              v21 = atomic_load((v20 + 896));
              if (v21 != 2)
              {
                re::AssetHandle::loadAsync((v19 + 32));
                v10 = 0;
              }
            }

            v16 = 0;
            v15 = 1;
          }

          while ((v18 & 1) != 0);
          if (v11[116] > ++v14)
          {
            continue;
          }

          break;
        }
      }

      ++v9;
    }

    while (v8[27] > v9);
  }

  else
  {
LABEL_20:
    v10 = 1;
  }

  if (v8[37])
  {
    v22 = 0;
    do
    {
      v23 = (v8[39] + 1008 * v22);
      v24 = v23[1];
      if (v24)
      {
        v25 = atomic_load((v24 + 896));
        if (v25 != 2)
        {
          re::AssetHandle::loadAsync((v8[39] + 1008 * v22));
          v10 = 0;
        }
      }

      if (v23[116])
      {
        v26 = 0;
        while (2)
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v23[116];
            if (v29 <= v26)
            {
              v76[0] = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v87 = 136315906;
              *&v87[4] = "operator[]";
              *&v87[12] = 1024;
              *&v87[14] = 797;
              *&v87[18] = 2048;
              *&v87[20] = v26;
              v88 = 2048;
              *v89 = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              return 1;
            }

            v30 = v28;
            v31 = v23[118] + 136 * v26 + 24 * v27;
            v32 = *(v31 + 40);
            if (v32)
            {
              v33 = atomic_load((v32 + 896));
              if (v33 != 2)
              {
                re::AssetHandle::loadAsync((v31 + 32));
                v10 = 0;
              }
            }

            v28 = 0;
            v27 = 1;
          }

          while ((v30 & 1) != 0);
          if (v23[116] > ++v26)
          {
            continue;
          }

          break;
        }
      }

      ++v22;
    }

    while (v8[37] > v22);
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  *&v89[2] = 0;
  memset(v87, 0, sizeof(v87));
  v34 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderGraphFileProviderArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v80 = 0;
  v81 = 0;
  re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v8, &v81, &v80);
  v79 = 0;
  v76[1] = 0;
  v77 = 0;
  v78 = 0;
  v76[0] = a5;
  re::DynamicArray<re::CameraView>::setCapacity(v76, v81);
  ++v78;
  v75 = 0;
  v72[1] = 0;
  v73 = 0;
  v74 = 0;
  v72[0] = a5;
  re::DynamicArray<re::CameraMultiView>::setCapacity(v72, v80);
  ++v74;
  v71 = 0;
  v69[1] = 0;
  v69[2] = 0;
  v70 = 0;
  v69[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v69, v81);
  ++v70;
  v68 = 0;
  v66[1] = 0;
  v66[2] = 0;
  v67 = 0;
  v66[0] = a5;
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::setCapacity(v66, v80);
  v35 = 0;
  ++v67;
  if (v34)
  {
    v36 = (v34 + 40);
  }

  else
  {
    v36 = v87;
  }

  *&v82 = v8;
  *&v83 = 0;
  if (!v8[27])
  {
    if (v8[32])
    {
      v35 = 1;
    }

    else
    {
      if (!v8[37])
      {
        v39 = 1;
LABEL_64:
        if ((a3 & 1) == 0)
        {
          re::ecs2::CameraViewDescriptor::CameraViewDescriptor(&v82);
          re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((v8 + 30), &v82);
          if (*(a4 + 32) == 1)
          {
            v46 = v79 + 1552 * v77;
            v47 = *(a1 + 112);
            if (v47)
            {
              v48 = re::DrawingManager::layerAspect(v47, 0, v45);
            }

            else
            {
              v48 = 1.0;
            }

            re::Projection::setAspect((v46 - 1488), *(a4 + 28) != 0, v48);
          }

          re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((v8 + 30));
          re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v82);
        }

        goto LABEL_76;
      }

      v35 = 2;
    }
  }

  v38 = 0;
  DWORD2(v82) = v35;
  v39 = 1;
  do
  {
    v40 = v38 + 0x20000;
    if (v35 == 1)
    {
      v38 += 0x10000;
    }

    if (v35 == 2)
    {
      v41 = v40;
    }

    else
    {
      v41 = v38;
    }

    re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v82);
    v35 = DWORD2(v82);
    v38 = v83;
  }

  while (v82 != v8 || DWORD2(v82) != 3 || v83 != 0);
  v44 = v8[27];
  if (v44 == 1)
  {
    if (!v8[32] && !*(v8[29] + 928))
    {
      ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v8, 0);
      v51 = v77 ? v79 + 1552 * v77 - 1552 : v75 + 3120 * v73 - 3120;
      if (*(a4 + 32) == 1)
      {
        LODWORD(v50) = *(ViewDescriptor + 212);
        v57 = *(ViewDescriptor + 216);
        v58 = *(a1 + 112);
        v59 = *&v50 / v57;
        if (v58)
        {
          v60 = re::DrawingManager::layerAspect(v58, 0, v50);
        }

        else
        {
          v60 = 1.0;
        }

        re::Projection::setAspect((v51 + 64), *(a4 + 28) != 0, v59 * v60);
      }
    }

    goto LABEL_76;
  }

  if (!v44 && !v8[32])
  {
    goto LABEL_64;
  }

LABEL_76:
  if (v8[37])
  {
    v52 = 0;
    v53 = 960;
    do
    {
      v54 = v8[39];
      v55 = re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
      re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((v55 + 4056), v54 + v53);
      ++v52;
      v53 += 1008;
    }

    while (v8[37] > v52);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 5), v76);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 10), v72);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 15), v69);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v8 + 20), v66);
  if (v39)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v66);
  re::DynamicArray<re::ecs2::CameraViewDescriptor>::deinit(v69);
  re::DynamicArray<re::CameraMultiView>::deinit(v72);
  re::DynamicArray<re::CameraView>::deinit(v76);
  re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::deinit(v87);
  return v37;
}

uint64_t anonymous namespace::buildOneCameraView<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, re::Allocator *a10, re::ecs2::Entity *a11, uint64_t a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v110 = v15;
  v112 = v16;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  v119 = v22;
  v117 = v12;
  v23 = a11;
  v203 = *MEMORY[0x1E69E9840];
  v121 = v13;
  if (!a11)
  {
    v23 = *(v14 + 2);
  }

  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(v14, v13);
  v24 = *(ViewDescriptor + 200);
  re::CameraView::CameraView(&v128, a10);
  re::CameraView::CameraView(v122, a10);
  re::CameraView::CameraView(&v125, a10);
  v127 = 2;
  v131 = 0;
  v130 = 0;
  v133 = 0x3F80000000000000;
  v132 = 0;
  v26 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  v27 = re::s_debugSettingsManager;
  if (!re::s_debugSettingsManager)
  {
    v30 = 0;
LABEL_34:
    v116 = v26;
    goto LABEL_35;
  }

  v188.i64[0] = 0x357E83F318327498;
  v188.i64[1] = "overrides:msaasamplecount";
  *v185 = 0;
  v28 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, &v188, v185);
  if (v28)
  {
    v29 = v188.i32[0];
    if (v188.i8[0])
    {
      v29 = v188.i32[0];
      if (v188.i8[0])
      {
      }
    }

    v30 = 0;
    v116 = v29;
  }

  else
  {
    v116 = *v185;
    v31 = *v185;
    if (v188.i8[0])
    {
      if (v188.i8[0])
      {
      }
    }

    v32 = [*(v117 + 208) supportsTextureSampleCount:v31];
    if (v32)
    {
      v30 = 1;
    }

    else
    {
      v33 = *re::graphicsLogObjects(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v188.i32[0] = 67109120;
        v188.i32[1] = v116;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "This GPU does not support MSAA sample count of: '%d'", &v188, 8u);
      }

      v30 = 0;
    }
  }

  v188.i64[0] = 0x38BDA0FDF1630EF8;
  v188.i64[1] = "overrides:enablemsaa";
  v185[0] = 0;
  v34 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v27, &v188, v185);
  if (v34)
  {
    if (v188.i8[0])
    {
      if (v188.i8[0])
      {
      }
    }

    goto LABEL_35;
  }

  v35 = v185[0];
  if (v188.i8[0])
  {
    if (v188.i8[0])
    {
    }
  }

  if (!v35)
  {
    v30 = 1;
    LODWORD(v26) = 1;
    goto LABEL_34;
  }

  if (v116 == 1)
  {
    v36 = v30;
  }

  else
  {
    v36 = 0;
  }

  if (v36 == 1)
  {
    v37 = *re::graphicsLogObjects(v34);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v188.i16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "MSAA is enabled but will have no effect as sample count is overridden to '1'", &v188, 2u);
    }

    v30 = 1;
    v116 = 1;
  }

LABEL_35:
  v38 = v185;
  if (v24)
  {
    v39 = *(v18 + 2);
    if (*(v21 + 22) <= v39 || !re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 24) + 960 * v39)))
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v112, ViewDescriptor);
      goto LABEL_44;
    }

    v111 = v20;
    v40 = *(v21 + 12);
    if (v40 <= v39)
    {
      goto LABEL_175;
    }

    v41 = *(v21 + 14) + 3120 * v39;
    v42 = v122;
    v43 = 2;
    v38 = v41;
    do
    {
      re::CameraView::operator=(v42, v38);
      v38 += 194;
      v42 += 1552;
      --v43;
    }

    while (v43);
    v127 = *(v41 + 3104);
    v40 = *(v21 + 22);
    if (v40 > v39)
    {
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v112, (*(v21 + 24) + 960 * v39));
      v20 = v111;
LABEL_44:
      if (v30)
      {
        v124 = v116;
        v126[34] = v116;
      }

      v44 = ViewDescriptor;
      re::DynamicArray<re::RenderGraphFileProvider>::operator=(v126, v123);
      goto LABEL_56;
    }

LABEL_176:
    v120[0] = 0;
    v192 = 0u;
    v191 = 0u;
    v190 = 0u;
    v189 = 0u;
    v188 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v185 = 136315906;
    *&v185[4] = "operator[]";
    *&v185[12] = 1024;
    *&v185[14] = 789;
    *&v185[18] = 2048;
    *&v185[20] = v39;
    v186 = 2048;
    v187 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_177;
  }

  v39 = *(v20 + 2);
  if (*(v21 + 17) > v39 && re::ecs2::CameraViewDescriptor::operator==(ViewDescriptor, (*(v21 + 19) + 960 * v39)))
  {
    v40 = *(v21 + 7);
    if (v40 <= v39)
    {
LABEL_177:
      v120[0] = 0;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v189 = 0u;
      v188 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v185 = 136315906;
      *(v38 + 4) = "operator[]";
      *&v185[12] = 1024;
      *(v38 + 14) = 789;
      *&v185[18] = 2048;
      *(v38 + 20) = v39;
      v186 = 2048;
      *(v38 + 30) = v40;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_178:
      v120[0] = 0;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v189 = 0u;
      v188 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v185 = 136315906;
      *(v38 + 4) = "operator[]";
      *&v185[12] = 1024;
      *(v38 + 14) = 789;
      *&v185[18] = 2048;
      *(v38 + 20) = v39;
      v186 = 2048;
      *(v38 + 30) = v40;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_179:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "buildOneCameraView", 693);
      _os_crash();
      __break(1u);
LABEL_180:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "buildOneCameraView", 724);
      _os_crash();
      __break(1u);
    }

    re::CameraView::operator=(&v128, *(v21 + 9) + 1552 * v39);
    v40 = *(v21 + 17);
    if (v40 <= v39)
    {
      goto LABEL_178;
    }

    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v110, (*(v21 + 19) + 960 * v39));
  }

  else
  {
    re::DynamicArray<re::ecs2::CameraViewDescriptor>::add(v110, ViewDescriptor);
  }

  if (v30)
  {
    v165[22] = v116;
  }

  v44 = ViewDescriptor;
LABEL_56:
  *v185 = v117;
  *&v185[8] = 0;
  *&v185[16] = &v121;
  if (!*(v44 + 200))
  {
    re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v121, v23, a10, 0, &v188);
    re::DynamicString::operator=(&v128, &v188);
    if (v188.i64[0] && (v188.i8[8] & 1) != 0)
    {
      (*(*v188.i64[0] + 40))();
    }

    re::ecs2::CustomMatrixCameraComponent::calculateProjection(v119, 0, &v188);
    v169 = v190;
    v170 = v191;
    v171 = v192;
    v168 = v189;
    v167 = v188;
    if (v172)
    {
      v79 = ViewDescriptor;
      if ((v193 & 1) == 0)
      {
        v172 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      v79 = ViewDescriptor;
      if ((v193 & 1) == 0)
      {
        goto LABEL_115;
      }

      v172 = 1;
    }

    v173 = v194;
    v174 = v195;
    v175 = v196;
    v176 = v197;
LABEL_115:
    if (v177)
    {
      if ((v198 & 1) == 0)
      {
        v177 = 0;
        goto LABEL_121;
      }
    }

    else
    {
      if ((v198 & 1) == 0)
      {
        goto LABEL_121;
      }

      v177 = 1;
    }

    v178 = v199;
    v179 = v200;
    v180 = v201;
    v181 = v202;
LABEL_121:
    v182 = *(v79 + 204);
    re::ecs2::CustomMatrixCameraComponent::calculateProjection(v119, 0, &v188);
    v136 = v190;
    v137 = v191;
    v138 = v192;
    v135 = v189;
    v134 = v188;
    if (v139)
    {
      if (v193)
      {
        v140 = v194;
        v141 = v195;
        v142 = v196;
        v143 = v197;
        v80 = 1;
      }

      else
      {
        v80 = 0;
        v139 = 0;
      }
    }

    else if (v193)
    {
      v80 = 1;
      v139 = 1;
      v140 = v194;
      v141 = v195;
      v142 = v196;
      v143 = v197;
    }

    else
    {
      v80 = 0;
    }

    if (v144)
    {
      if (v198)
      {
        v145 = v199;
        v146 = v200;
        v147 = v201;
        v148 = v202;
        v81 = 1;
      }

      else
      {
        v81 = 0;
        v144 = 0;
      }
    }

    else if (v198)
    {
      v81 = 1;
      v144 = 1;
      v145 = v199;
      v146 = v200;
      v147 = v201;
      v148 = v202;
    }

    else
    {
      v81 = 0;
    }

    v183 = xmmword_1E3063230;
    v151 = v136;
    v152 = v137;
    v153 = v138;
    v150 = v135;
    v149 = v134;
    if (v154)
    {
      if ((v80 & 1) == 0)
      {
        v154 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      if ((v80 & 1) == 0)
      {
        goto LABEL_141;
      }

      v154 = 1;
    }

    v155 = v140;
    v156 = v141;
    v157 = v142;
    v158 = v143;
LABEL_141:
    if (v159)
    {
      if ((v81 & 1) == 0)
      {
        v159 = 0;
LABEL_147:
        v166 = v121;
        re::DynamicArray<re::CameraView>::add(v20, &v128);
        v83 = ViewDescriptor;
        if (!*(ViewDescriptor + 928))
        {
          goto LABEL_168;
        }

        v84 = 0;
        v39 = 0;
        v85 = *(v20 + 4) + 1552 * *(v20 + 2);
        v86 = (v85 - 384);
        v87 = (v85 - 1488);
        v88 = (v85 - 1216);
        v114 = (v85 - 851);
        v115 = (v85 - 1552);
        v40 = &selRef_setOwnerWithIdentity_;
        v38 = &selRef_childNodes;
        while (1)
        {
          v89 = *(v83 + 212);
          v90 = *(v83 + 216);
          v91 = *(v83 + 944);
          v92 = v91 + v84;
          if (*(v91 + v84 + 40))
          {
            v93 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v92 + 32));
            if (*(v93 + 120))
            {
LABEL_174:
              std::__throw_bad_variant_access[abi:nn200100]();
LABEL_175:
              v120[0] = 0;
              v192 = 0u;
              v191 = 0u;
              v190 = 0u;
              v189 = 0u;
              v188 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v185 = 136315906;
              *(v38 + 4) = "operator[]";
              *&v185[12] = 1024;
              *(v38 + 14) = 789;
              *&v185[18] = 2048;
              *(v38 + 20) = v39;
              v186 = 2048;
              *(v38 + 30) = v40;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_176;
            }

            v94 = *(v93 + 112);
            v95 = [v94 width];
            *&v82 = [v94 height];
            v96 = v95 / *&v82;
            if (v94)
            {
            }
          }

          else
          {
            v97 = *(v92 + 80);
            if (v97 == -1)
            {
              v99 = v91 + v84;
              v100 = *(v91 + v84 + 88);
              if (v100)
              {
                v101 = [v100 width];
                v102 = *(v99 + 88);
                goto LABEL_160;
              }

              v103 = *(v99 + 104);
              if (v103)
              {
                v101 = [v103 width];
                v102 = *(v99 + 104);
LABEL_160:
                v104 = [v102 height];
                re::ecs2::CustomMatrixCameraComponent::localEyePose(v119, *v86, &v188);
                if (a12 && !*(a12 + 24))
                {
                  re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v188, *v86, v115);
                  *v114 = *(a12 + 28);
                }

                *&v82 = v101;
                v96 = v101 / v104;
                goto LABEL_165;
              }

LABEL_164:
              v96 = 1.0;
              goto LABEL_165;
            }

            v98 = *(v117 + 112);
            if (!v98)
            {
              goto LABEL_164;
            }

            *&v82 = re::DrawingManager::layerAspect(v98, v97, v82);
            v96 = *&v82;
          }

LABEL_165:
          if (*(v119 + 32) == 1)
          {
            v105 = (v89 / v90) * v96;
            re::Projection::setAspect(v87, *(v119 + 28) != 0, v105);
            *&v82 = re::Projection::setAspect(v88, *(v119 + 28) != 0, v105);
          }

          ++v39;
          v83 = ViewDescriptor;
          v84 += 136;
          if (*(ViewDescriptor + 928) <= v39)
          {
            goto LABEL_168;
          }
        }
      }
    }

    else
    {
      if ((v81 & 1) == 0)
      {
        goto LABEL_147;
      }

      v159 = 1;
    }

    v160 = v145;
    v161 = v146;
    v162 = v147;
    v163 = v148;
    goto LABEL_147;
  }

  re::DynamicArray<re::CameraMultiView>::add(v18, v122);
  v45 = *(v18 + 4) + 3120 * *(v18 + 2);
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v121, v23, a10, 0, &v188);
  v109 = v45 - 3120;
  re::DynamicString::operator=((v45 - 3120), &v188);
  if (v188.i64[0] && (v188.i8[8] & 1) != 0)
  {
    (*(*v188.i64[0] + 40))();
  }

  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(v21, v121, v23, a10, 1, &v188);
  re::DynamicString::operator=((v45 - 1568), &v188);
  if (v188.i64[0] && (v188.i8[8] & 1) != 0)
  {
    (*(*v188.i64[0] + 40))();
  }

  v46 = ViewDescriptor;
  v47 = 0;
  v48 = *(ViewDescriptor + 928);
  v49 = 1;
  do
  {
    v50 = v49;
    if (!v48)
    {
      goto LABEL_104;
    }

    v113 = v49;
    v38 = 0;
    v40 = (8 * v47);
    v51 = v109 + 1552 * v47;
    v52 = 4 * v47 + 80;
    v39 = 24 * v47;
    v53 = 32;
    v54 = ViewDescriptor + 204 + 16 * v47;
    do
    {
      v55 = *(v54 + 8);
      v56 = *(v54 + 12);
      v57 = *(v46 + 944);
      re::AssetHandle::AssetHandle(v120, (v57 + v53 + v39));
      if (*(v45 - 16) == 1)
      {
        re::AssetHandle::operator=(v120, (v57 + v53));
      }

      v59 = v55 / v56;
      if (v120[1])
      {
        v60 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v120);
        if (*(v60 + 120))
        {
          goto LABEL_174;
        }

        v61 = *(v60 + 112);
        v62 = [v61 width];
        v63 = v62 / [v61 height];
        v64 = [v61 arrayLength];
        if (v61)
        {
        }

        goto LABEL_72;
      }

      v65 = *(v57 + v52);
      if (v65 == -1)
      {
        v67 = (v40 + v57);
        v68 = *(v40 + v57 + 88);
        if (v68)
        {
          v69 = [v68 width];
          v63 = v69 / [v67[11] height];
          v64 = [v67[11] arrayLength];
          v70 = *(v51 + 1168);
          v71 = (v119 + 240);
          if (v70 == 1)
          {
            goto LABEL_83;
          }

          if (v70 == 2)
          {
            v71 = (v119 + 241);
LABEL_83:
            v72 = *v71;
            if (v72 != 1)
            {
              if (v72)
              {
                goto LABEL_179;
              }

              goto LABEL_97;
            }

LABEL_100:
            re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(v119, v70, &v188);
            v78 = a12;
            if (a12 && !*(a12 + 24))
            {
              re::RenderFrameWorkloadPatchCamera::trackWorldEyePose(a12, &v188, *(v51 + 1168), v51);
LABEL_103:
              *(v51 + 701) = *(v78 + 28);
            }

            goto LABEL_72;
          }
        }

        else
        {
          v74 = v67[13];
          if (!v74)
          {
            goto LABEL_89;
          }

          v75 = [v74 width];
          v63 = v75 / [v67[13] height];
          v64 = [v67[13] arrayLength];
          v70 = *(v51 + 1168);
          v76 = (v119 + 240);
          if (v70 != 1)
          {
            if (v70 != 2)
            {
              goto LABEL_97;
            }

            v76 = (v119 + 241);
          }

          v77 = *v76;
          if (v77 == 1)
          {
            goto LABEL_100;
          }

          if (v77)
          {
            goto LABEL_180;
          }
        }

LABEL_97:
        re::ecs2::CustomMatrixCameraComponent::localEyePose(v119, v70, &v188);
        v78 = a12;
        if (a12 && !*(a12 + 24))
        {
          re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(a12, &v188, *(v51 + 1168), v51);
          goto LABEL_103;
        }

LABEL_72:
        if (*(v45 - 16) == 1 && v64 >= 2)
        {
          *(v45 - 15) = 1;
          v59 = *(v54 + 8) / *(v54 + 12);
          if (([*(v117 + 208) supportsTexture2DMultisampleArray] & 1) == 0)
          {
            *(v51 + 712) = 1;
          }
        }

        goto LABEL_87;
      }

      v66 = *(v117 + 112);
      if (v66)
      {
        v63 = re::DrawingManager::layerAspect(v66, v65, v58);
      }

      else
      {
        v63 = 1.0;
      }

LABEL_87:
      if (*(v119 + 32) == 1)
      {
        v73 = v63 * v59;
        re::Projection::setAspect((v51 + 64), *(v119 + 28) != 0, v73);
        re::Projection::setAspect((v51 + 336), *(v119 + 28) != 0, v73);
      }

LABEL_89:
      re::AssetHandle::~AssetHandle(v120);
      v38 = (v38 + 1);
      v46 = ViewDescriptor;
      v48 = *(ViewDescriptor + 928);
      v40 += 17;
      v52 += 136;
      v53 += 136;
    }

    while (v48 > v38);
    v50 = v113;
LABEL_104:
    v49 = 0;
    v47 = 1;
  }

  while ((v50 & 1) != 0);
LABEL_168:
  v106 = 3104;
  do
  {
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v122[v106 - 368]);
    re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(&v122[v106 - 928]);
    re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v122[v106 - 976]);
    re::DynamicString::deinit(&v122[v106 - 1552]);
    v106 -= 1552;
  }

  while (v106);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(&v184);
  re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v165);
  re::DynamicArray<re::RenderGraphFileProvider>::deinit(&v164);
  if (v128 && (v129 & 1) != 0)
  {
    (*(*v128 + 40))();
  }

  return v108;
}

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::PerspectiveCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, _OWORD *a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v83 = this;
  *&v83[16] = 0;
  v25 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v83[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v12;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v11;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_39;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v83);
    v9 = *&v83[8];
    v10 = *&v83[16];
  }

  while (*v83 != this || *&v83[8] != 3 || *&v83[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v29) = 0;
      v30 = xmmword_1E30474D0;
      v43 = xmmword_1E308C680;
      v27 = 0u;
      v28 = 0u;
      *&v31 = 0x70000FF00000000;
      DWORD2(v31) = -1;
      v32 = 0;
      v33 = 0u;
      v34 = 0;
      v41 = 0;
      v42 = 0;
      v35 = 0u;
      v36 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0;
      v40 = 0;
      v44 = unk_1E308C690;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v49 = v21;
      v50 = -1;
      v51 = 1;
      v52 = 0;
      v53 = re::globalAllocators(v21)[2];
      v54 = 0;
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v83, 0, 0, v84);
      v55 = *v83;
      v56 = *&v83[16];
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v26, 0, 0, v84);
      v57 = v26[0];
      v58 = v26[1];
      v59 = 0;
      v60 = xmmword_1E308B7C0;
      v61 = 0xBDCCCCCD3DCCCCCDLL;
      v62 = 0;
      v63 = xmmword_1E30476A0;
      v64 = 1;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = xmmword_1E308B7C0;
      v71 = 0xBDCCCCCD3DCCCCCDLL;
      v72 = 0;
      v73 = xmmword_1E30476A0;
      v74 = 1;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v27);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_40:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v12;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v11;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_41;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v27);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::PerspectiveCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    a4[7] = xmmword_1E3047670;
    a4[8] = xmmword_1E3047680;
    a4[9] = xmmword_1E30476A0;
    a4[10] = xmmword_1E30474D0;
    __src = 0;
    v110 = 0;
    v101 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v111[__src++] = v101;
      ++v110;
    }

    v106 = 0;
    v107 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v25))
    {
      v108[v106++] = xmmword_1E3063230;
      ++v107;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v106 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v105[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v105[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v105, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        return;
      }

      v105[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v104 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v104, v105, v87);
      if (v105[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v110 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v110;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v110;
  }

  v106 = 0;
  v107 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v21))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v106, v23))
  {
    v108[v106++] = xmmword_1E3063230;
    ++v107;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v106 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v106);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v102 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v105, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v105, v32 + 4);
      }

      if (v105[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v105);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v104 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v103 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v103, &v104, v56);
            if (v104)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v104 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v104 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v104, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v105);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v102;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}

uint64_t anonymous namespace::addDefaultSpecifyLaneCommand(_anonymous_namespace_ *this, re::RenderManager *a2, re::ecs2::CameraViewDescriptorsComponent *a3, re::ecs2::CameraViewDescriptorsComponent *a4, re::ecs2::Entity *a5)
{
  v9 = re::RenderManager::perFrameAllocator(this);
  re::ecs2::CameraViewDescriptorsComponent::viewScopeName(a3, a2, a4, v9, 0, &v15);
  v10 = *(this + 14);
  if (v10)
  {
    v11 = re::RenderFrameBox::get((v10 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v11 = 0;
  }

  v14 = 65290051;
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  re::RenderFrame::specifyScopeLane(v11, &v14, &re::kLegacyRenderLayerHandle, v12);
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

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::OrthographicCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, _OWORD *a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v83 = this;
  *&v83[16] = 0;
  v25 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v83[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v12;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v11;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_39;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v83);
    v9 = *&v83[8];
    v10 = *&v83[16];
  }

  while (*v83 != this || *&v83[8] != 3 || *&v83[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v29) = 0;
      v30 = xmmword_1E30474D0;
      v43 = xmmword_1E308C680;
      v27 = 0u;
      v28 = 0u;
      *&v31 = 0x70000FF00000000;
      DWORD2(v31) = -1;
      v32 = 0;
      v33 = 0u;
      v34 = 0;
      v41 = 0;
      v42 = 0;
      v35 = 0u;
      v36 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0;
      v40 = 0;
      v44 = unk_1E308C690;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v49 = v21;
      v50 = -1;
      v51 = 1;
      v52 = 0;
      v53 = re::globalAllocators(v21)[2];
      v54 = 0;
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v83, 0, 0, v84);
      v55 = *v83;
      v56 = *&v83[16];
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v26, 0, 0, v84);
      v57 = v26[0];
      v58 = v26[1];
      v59 = 0;
      v60 = xmmword_1E308B7C0;
      v61 = 0xBDCCCCCD3DCCCCCDLL;
      v62 = 0;
      v63 = xmmword_1E30476A0;
      v64 = 1;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = xmmword_1E308B7C0;
      v71 = 0xBDCCCCCD3DCCCCCDLL;
      v72 = 0;
      v73 = xmmword_1E30476A0;
      v74 = 1;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v27);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_40:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v12;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v11;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_41;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v27);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::OrthographicCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    a4[7] = xmmword_1E3047670;
    a4[8] = xmmword_1E3047680;
    a4[9] = xmmword_1E30476A0;
    a4[10] = xmmword_1E30474D0;
    __src = 0;
    v107 = 0;
    v98 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v108[__src++] = v98;
      ++v107;
    }

    v103 = 0;
    v104 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v103, v25))
    {
      v105[v103++] = xmmword_1E3063230;
      ++v104;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v103 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v103);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v102[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v102, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v102[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v102, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(v96, v97);
        return;
      }

      v102[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v101 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v101, v102, v87);
      if (v102[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v107 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v107;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v107;
  }

  v103 = 0;
  v104 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v103, v21))
  {
    v105[v103++] = xmmword_1E3063230;
    ++v104;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v103, v23))
  {
    v105[v103++] = xmmword_1E3063230;
    ++v104;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v103 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v103);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v103 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v103);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v99 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v102, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v102, v32 + 4);
      }

      if (v102[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v102);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v101 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v100 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v100, &v101, v56);
            if (v101)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v101 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v101, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v101 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v101, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v102);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v99;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}

void re::ecs2::CameraViewDescriptorsHelper::updateCameraViewsPerFrameData<re::ecs2::CustomMatrixCameraComponent>(uint64_t *a1, re::ecs2::CameraViewDescriptorsComponent *this, char a3, _OWORD *a4, re::ecs2::CameraViewDescriptorsComponent *a5)
{
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    a5 = *(this + 2);
  }

  *v83 = this;
  *&v83[16] = 0;
  v25 = a5;
  if (*(this + 27))
  {
    v9 = 0;
  }

  else if (*(this + 32))
  {
    v9 = 1;
  }

  else
  {
    if (!*(this + 37))
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_26;
    }

    v9 = 2;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  *&v83[8] = v9;
  do
  {
    v13 = (v10 + 0x20000);
    if (v9 == 1)
    {
      v10 = (v10 + 0x10000);
    }

    if (v9 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, v14) + 200))
    {
      v15 = *(this + 12);
      if (v15 <= v12)
      {
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v12;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        *&v26[0] = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v84[0]) = 136315906;
        *(v84 + 4) = "operator[]";
        WORD6(v84[0]) = 1024;
        *(v84 + 14) = 789;
        WORD1(v84[1]) = 2048;
        *(&v84[1] + 4) = v11;
        WORD6(v84[1]) = 2048;
        *(&v84[1] + 14) = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v16 = 0;
      v17 = *(this + 14) + 3120 * v12++;
    }

    else
    {
      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_39;
      }

      v17 = 0;
      v16 = *(this + 9) + 1552 * v11++;
    }

    a1 = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(v83);
    v9 = *&v83[8];
    v10 = *&v83[16];
  }

  while (*v83 != this || *&v83[8] != 3 || *&v83[16]);
  v19 = *(this + 27);
  if (v19 == 1)
  {
    if (!*(this + 32) && !*(*(this + 29) + 928))
    {
    }
  }

  else if (!v19 && !*(this + 32))
  {
LABEL_26:
    if ((a3 & 1) == 0)
    {
      LOBYTE(v29) = 0;
      v30 = xmmword_1E30474D0;
      v43 = xmmword_1E308C680;
      v27 = 0u;
      v28 = 0u;
      *&v31 = 0x70000FF00000000;
      DWORD2(v31) = -1;
      v32 = 0;
      v33 = 0u;
      v34 = 0;
      v41 = 0;
      v42 = 0;
      v35 = 0u;
      v36 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0;
      v40 = 0;
      v44 = unk_1E308C690;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v20 = re::globalAllocators(a1);
      v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      *(v21 + 4) = 0u;
      *(v21 + 5) = 0u;
      *(v21 + 6) = 0u;
      *(v21 + 7) = 0u;
      *(v21 + 8) = 0u;
      *(v21 + 9) = 0u;
      *(v21 + 10) = 0u;
      *(v21 + 11) = 0u;
      *(v21 + 12) = 0u;
      *(v21 + 13) = 0u;
      *(v21 + 14) = 0u;
      *(v21 + 15) = 0u;
      *(v21 + 16) = 0u;
      v49 = v21;
      v50 = -1;
      v51 = 1;
      v52 = 0;
      v53 = re::globalAllocators(v21)[2];
      v54 = 0;
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v83, 0, 0, v84);
      v55 = *v83;
      v56 = *&v83[16];
      memset(v84, 0, sizeof(v84));
      re::Pose<float>::Pose(v26, 0, 0, v84);
      v57 = v26[0];
      v58 = v26[1];
      v59 = 0;
      v60 = xmmword_1E308B7C0;
      v61 = 0xBDCCCCCD3DCCCCCDLL;
      v62 = 0;
      v63 = xmmword_1E30476A0;
      v64 = 1;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = xmmword_1E308B7C0;
      v71 = 0xBDCCCCCD3DCCCCCDLL;
      v72 = 0;
      v73 = xmmword_1E30476A0;
      v74 = 1;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v82 = 0;
      v81 = 0;
      v80 = 0;
      v79 = 0u;
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::add((this + 240), &v27);
      if (*(re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, 0x10000) + 200))
      {
        v15 = *(this + 12);
        if (v15 > v12)
        {
          v22 = 0;
          v23 = *(this + 14) + 3120 * v12;
          goto LABEL_35;
        }

LABEL_40:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v12;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *&v26[0] = 0;
        v85 = 0u;
        v86 = 0u;
        memset(v84, 0, sizeof(v84));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v83 = 136315906;
        *&v83[4] = "operator[]";
        *&v83[12] = 1024;
        *&v83[14] = 789;
        *&v83[18] = 2048;
        *&v83[20] = v11;
        *&v83[28] = 2048;
        *&v83[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(this + 7);
      if (v15 <= v11)
      {
        goto LABEL_41;
      }

      v23 = 0;
      v22 = *(this + 9) + 1552 * v11;
LABEL_35:
      re::DynamicArray<re::ecs2::CameraViewDescriptor>::clear((this + 240));
      re::ecs2::CameraViewDescriptor::~CameraViewDescriptor(&v27);
    }
  }
}

void anonymous namespace::updateOneViewPerFrameData<re::ecs2::CustomMatrixCameraComponent>(uint64_t a1, re::ecs2::CameraViewDescriptorsComponent *a2, re::ecs2::CameraViewDescriptorsComponent *this, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  ViewDescriptor = re::ecs2::CameraViewDescriptorsComponent::tryGetViewDescriptor(this, a2);
  v11 = *(a1 + 112);
  if (v11)
  {
    v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 364);
  if (!*(ViewDescriptor + 200))
  {
    a4[7] = xmmword_1E3047670;
    a4[8] = xmmword_1E3047680;
    a4[9] = xmmword_1E30476A0;
    a4[10] = xmmword_1E30474D0;
    __src = 0;
    v106 = 0;
    v97 = *(ViewDescriptor + 204);
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v24))
    {
      v107[__src++] = v97;
      ++v106;
    }

    v102 = 0;
    v103 = 0;
    if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v25))
    {
      v104[v102++] = xmmword_1E3063230;
      ++v103;
    }

    *(a5 + 1152) = -1;
    if (*(ViewDescriptor + 240))
    {
      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
      if (v102 && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
      }
    }

    else if (*(ViewDescriptor + 272))
    {
      if ((v13 & 1) == 0)
      {
        *(a5 + 712) = 1;
      }

      *(a5 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
      if (__src && *(*(v12 + 8) + 364) == 1)
      {
        re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
      }

      *(a5 + 1156) = -1;
    }

    *(a5 + 1160) = -1;
    if (*(ViewDescriptor + 296))
    {
      *(a5 + 1160) = re::RenderFrame::addRenderCommandEncoder(v12, (ViewDescriptor + 296), *(ViewDescriptor + 312));
    }

    *(a5 + 1164) = -1;
    if (*(ViewDescriptor + 288))
    {
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v12 + 4336), (ViewDescriptor + 288));
      *(a5 + 1164) = *(v12 + 4352) - 1;
    }

    if (!*(ViewDescriptor + 928))
    {
      return;
    }

    v67 = 0;
    while (1)
    {
      v68 = *(ViewDescriptor + 944) + 136 * v67;
      if (!*(v68 + 40))
      {
        if (*(v68 + 80) == -1)
        {
          if (!*(v68 + 88))
          {
            if (*(v68 + 104))
            {
              if (*(v68 + 8))
              {
                v88 = *(v68 + 16);
              }

              else
              {
                v88 = (v68 + 9);
              }

              v94 = (a5 + 9);
              if (*(a5 + 8))
              {
                v94 = *(a5 + 16);
              }

              re::RenderFrame::specifyScopeLane(v12, v88, (v68 + 104), v94, *(a5 + 1168));
            }

            goto LABEL_182;
          }

          v80 = *(v68 + 8);
          if (v80)
          {
            v82 = *(v68 + 16);
            if (v82)
            {
              LOBYTE(v81) = *v82;
              goto LABEL_164;
            }

            v92 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v80 >> 8;
            v82 = (v68 + 9);
LABEL_164:
            if (v81)
            {
              v81 = v81;
              v89 = v82[1];
              if (v89)
              {
                v90 = v82 + 2;
                do
                {
                  v81 = 31 * v81 + v89;
                  v91 = *v90++;
                  v89 = v91;
                }

                while (v91);
              }

              v92 = v81 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = 0;
            }
          }

          v101[0] = v92;
          v95 = (a5 + 9);
          if (*(a5 + 8))
          {
            v95 = *(a5 + 16);
          }

          re::RenderFrame::specifyScopeLane(v12, v101, (v68 + 88), v95);
          goto LABEL_182;
        }

        v73 = *(v68 + 8);
        if (v73)
        {
          v75 = *(v68 + 16);
          if (v75)
          {
            LOBYTE(v74) = *v75;
            goto LABEL_148;
          }

          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v73 >> 8;
          v75 = (v68 + 9);
LABEL_148:
          if (v74)
          {
            v74 = v74;
            v83 = v75[1];
            if (v83)
            {
              v84 = v75 + 2;
              do
              {
                v74 = 31 * v74 + v83;
                v85 = *v84++;
                v83 = v85;
              }

              while (v85);
            }

            v86 = v74 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = 0;
          }
        }

        v101[0] = v86;
        v93 = (a5 + 9);
        if (*(a5 + 8))
        {
          v93 = *(a5 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v101, (v68 + 80), v93);
        goto LABEL_182;
      }

      v69 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v68 + 32));
      if (*(v69 + 120))
      {
LABEL_184:
        v96 = std::__throw_bad_variant_access[abi:nn200100]();
        re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(v96);
        return;
      }

      v101[0] = *(v69 + 112);
      v70 = *(v68 + 8);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v72 = *(v68 + 16);
      if (v72)
      {
        LOBYTE(v71) = *v72;
LABEL_137:
        if (v71)
        {
          v71 = v71;
          v76 = v72[1];
          if (v76)
          {
            v77 = v72 + 2;
            do
            {
              v71 = 31 * v71 + v76;
              v78 = *v77++;
              v76 = v78;
            }

            while (v78);
          }

          v79 = v71 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = 0;
        }

        goto LABEL_154;
      }

      v79 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_154:
      v100 = v79;
      v87 = (a5 + 9);
      if (*(a5 + 8))
      {
        v87 = *(a5 + 16);
      }

      re::RenderFrame::specifyScopeLane(v12, &v100, v101, v87);
      if (v101[0])
      {
      }

LABEL_182:
      if (*(ViewDescriptor + 928) <= ++v67)
      {
        return;
      }
    }

    v71 = v70 >> 8;
    v72 = (v68 + 9);
    goto LABEL_137;
  }

  __src = 0;
  v106 = 0;
  v14 = *(ViewDescriptor + 212);
  v15 = *(ViewDescriptor + 204);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v16))
  {
    v18 = &__src + 2 * __src;
    v18[2] = v15;
    v18[3] = v14;
    ++__src;
    ++v106;
  }

  v19 = *(ViewDescriptor + 228);
  v20 = *(ViewDescriptor + 220);
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&__src, v17))
  {
    v22 = &__src + 2 * __src;
    v22[2] = v20;
    v22[3] = v19;
    ++__src;
    ++v106;
  }

  v102 = 0;
  v103 = 0;
  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v21))
  {
    v104[v102++] = xmmword_1E3063230;
    ++v103;
  }

  if (re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(&v102, v23))
  {
    v104[v102++] = xmmword_1E3063230;
    ++v103;
  }

  *(a6 + 1152) = -1;
  if (*(ViewDescriptor + 240))
  {
    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 240));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 256));
    if (v102 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
    }
  }

  else if (*(ViewDescriptor + 272))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 712) = 1;
    }

    *(a6 + 1152) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 272));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 1156) = -1;
  }

  *(a6 + 2704) = -1;
  if (*(ViewDescriptor + 248))
  {
    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 248));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 264));
    if (v102 && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &v102);
    }
  }

  else if (*(ViewDescriptor + 280))
  {
    if ((v13 & 1) == 0)
    {
      *(a6 + 2264) = 1;
    }

    *(a6 + 2704) = re::RenderFrame::addRateMap(v12, (ViewDescriptor + 280));
    if (__src && *(*(v12 + 8) + 364) == 1)
    {
      re::DynamicArray<re::DynamicInlineArray<re::Vector4<float>,2ul>>::add((v12 + 4376), &__src);
    }

    *(a6 + 2708) = -1;
  }

  v26 = 0;
  v27 = *(ViewDescriptor + 928);
  v28 = 1;
  do
  {
    v29 = v28;
    if (!v27)
    {
      goto LABEL_113;
    }

    v98 = v28;
    v30 = 0;
    v31 = a6 + 1552 * v26;
    do
    {
      v32 = (*(ViewDescriptor + 944) + 136 * v30);
      re::AssetHandle::AssetHandle(v101, &v32[3 * v26 + 4]);
      if (*(a6 + 3104) == 1)
      {
        re::AssetHandle::operator=(v101, v32 + 4);
      }

      if (v101[1])
      {
        v33 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v101);
        if (*(v33 + 120))
        {
          goto LABEL_184;
        }

        v100 = *(v33 + 112);
        v34 = v32[1];
        if (v34)
        {
          v36 = v32[2];
          if (!v36)
          {
            v46 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_83:
            v99 = v46;
            v56 = (v31 + 9);
            if (*(v31 + 8))
            {
              v56 = *(v31 + 16);
            }

            re::RenderFrame::specifyScopeLane(v12, &v99, &v100, v56);
            if (v100)
            {
            }

            goto LABEL_111;
          }

          LOBYTE(v35) = *v36;
        }

        else
        {
          v35 = v34 >> 8;
          v36 = v32 + 9;
        }

        if (v35)
        {
          v35 = v35;
          v43 = v36[1];
          if (v43)
          {
            v44 = v36 + 2;
            do
            {
              v35 = 31 * v35 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v46 = v35 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = 0;
        }

        goto LABEL_83;
      }

      v37 = v32 + 4 * v26;
      v39 = *(v37 + 20);
      v38 = (v37 + 80);
      if (v39 != -1)
      {
        v40 = v32[1];
        if (v40)
        {
          v42 = v32[2];
          if (v42)
          {
            LOBYTE(v41) = *v42;
            goto LABEL_77;
          }

          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40 >> 8;
          v42 = v32 + 9;
LABEL_77:
          if (v41)
          {
            v41 = v41;
            v52 = v42[1];
            if (v52)
            {
              v53 = v42 + 2;
              do
              {
                v41 = 31 * v41 + v52;
                v54 = *v53++;
                v52 = v54;
              }

              while (v54);
            }

            v55 = v41 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = 0;
          }
        }

        v100 = v55;
        v64 = (v31 + 9);
        if (*(v31 + 8))
        {
          v64 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v100, v38, v64);
        goto LABEL_111;
      }

      v47 = &v32[v26];
      v48 = (v47 + 11);
      if (v47[11])
      {
        v49 = v32[1];
        if (v49)
        {
          v51 = v32[2];
          if (v51)
          {
            LOBYTE(v50) = *v51;
            goto LABEL_93;
          }

          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49 >> 8;
          v51 = v32 + 9;
LABEL_93:
          if (v50)
          {
            v50 = v50;
            v60 = v51[1];
            if (v60)
            {
              v61 = v51 + 2;
              do
              {
                v50 = 31 * v50 + v60;
                v62 = *v61++;
                v60 = v62;
              }

              while (v62);
            }

            v63 = v50 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = 0;
          }
        }

        v100 = v63;
        v66 = (v31 + 9);
        if (*(v31 + 8))
        {
          v66 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, &v100, v48, v66);
        goto LABEL_111;
      }

      v58 = v47[13];
      v57 = (v47 + 13);
      if (v58)
      {
        if (v32[1])
        {
          v59 = v32[2];
        }

        else
        {
          v59 = v32 + 9;
        }

        v65 = (v31 + 9);
        if (*(v31 + 8))
        {
          v65 = *(v31 + 16);
        }

        re::RenderFrame::specifyScopeLane(v12, v59, v57, v65, *(v31 + 1168));
      }

LABEL_111:
      re::AssetHandle::~AssetHandle(v101);
      ++v30;
      v27 = *(ViewDescriptor + 928);
    }

    while (v27 > v30);
    v29 = v98;
LABEL_113:
    v28 = 0;
    v26 = 1;
  }

  while ((v29 & 1) != 0);
}