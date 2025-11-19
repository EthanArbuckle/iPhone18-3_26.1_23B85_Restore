uint64_t re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 305) & 8) != 0)
  {
    return 0;
  }

  if (*(a2 + 387))
  {
    return 0;
  }

  v2 = *(a2 + 344);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 360);
  v4 = 8 * v2;
  while (1)
  {
    if ((*(*v3 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
    {
      v5 = *(*v3 + 296);
      if (v5 == "__InternalVPC-Screen__" || !strcmp(v5, "__InternalVPC-Screen__"))
      {
        break;
      }
    }

    v3 += 8;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

void re::ecs2::VideoPlayerComponentHelper::impl::setVideo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const re::AssetHandle *a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v13)
    {
      v14 = v13;
      *(v13 + 331) = 1;
      re::AssetHandle::AssetHandle(v32, a7);
      re::AssetHandle::operator=(v14 + 208, v32);
      *(v14 + 73) = 0;
      re::AssetHandle::~AssetHandle(v32);
    }

    else
    {
      v23 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5730;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (a3)
  {
    v15 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v15)
    {
      v16 = v15;
      *(v15 + 331) = 1;
      re::AssetHandle::AssetHandle(v31, a7);
      re::AssetHandle::operator=(v16 + 208, v31);
      *(v16 + 73) = 0;
      re::AssetHandle::~AssetHandle(v31);
      *(v16 + 332) = 2;
    }

    else
    {
      v24 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5739;
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (a4 && (*(a1 + 8) & 1) != 0)
  {
    v17 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v17)
    {
      v18 = v17;
      *(v17 + 331) = 1;
      re::AssetHandle::AssetHandle(v30, a7);
      re::AssetHandle::operator=(v18 + 208, v30);
      *(v18 + 73) = 0;
      re::AssetHandle::~AssetHandle(v30);
    }

    else
    {
      v25 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v34 = 5750;
        _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  if (*(a1 + 9) == 1)
  {
    if (a5)
    {
      v19 = re::ecs2::EntityComponentCollection::get((a5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v19)
      {
        v20 = v19;
        *(v19 + 331) = 1;
        re::AssetHandle::AssetHandle(v29, a7);
        re::AssetHandle::operator=(v20 + 208, v29);
        *(v20 + 73) = 0;
        re::AssetHandle::~AssetHandle(v29);
      }

      else
      {
        v26 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v34 = 5760;
          _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
        }
      }
    }

    if (a6)
    {
      v21 = re::ecs2::EntityComponentCollection::get((a6 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v21)
      {
        v22 = v21;
        *(v21 + 331) = 1;
        re::AssetHandle::AssetHandle(v28, a7);
        re::AssetHandle::operator=(v22 + 208, v28);
        *(v22 + 73) = 0;
        re::AssetHandle::~AssetHandle(v28);
      }

      else
      {
        v27 = *re::videoLogObjects(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v34 = 5768;
          _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
        }
      }
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::postBufferRetrievalUpdate(re::ecs2::VideoPlayerComponentHelper::impl *this, float a2, re::ecs2::VideoPlayerComponentHelper::impl ***a3, re::AssetManager *a4, re::RenderManager ***a5)
{
  v239 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {
    return;
  }

  v10 = re::VideoDefaults::logLevel(this);
  if (v10 >= 3)
  {
    v189 = *re::videoLogObjects(v10);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v189, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->postBufferRetrievalUpdate :: Updating the SpatialMediaMaterialParameters", buf, 2u);
    }
  }

  v11 = *(this + 1837);
  if (v11)
  {
    SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(v11, a3);
    if (SpatialMediaComponentHelper)
    {
      re::ecs2::SpatialMediaComponentHelper::impl::updateSpatialMediaMaterialParameters(*SpatialMediaComponentHelper, a3, a5);
    }
  }

  v13 = a3[43];
  if (v13)
  {
    v14 = a3[45];
    v15 = 8 * v13;
    v16 = 8 * v13;
    v17 = v14;
    while (1)
    {
      v18 = *v17;
      if ((*(*v17 + 36) ^ 0xF4664E2E6A44E25ALL) <= 1)
      {
        v19 = *(v18 + 37);
        if (v19 == "__InternalVPC-Screen__" || !strcmp(v19, "__InternalVPC-Screen__"))
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        v18 = 0;
        break;
      }
    }

    while (1)
    {
      v20 = *v14;
      if ((*(*v14 + 36) ^ 0x931CC76C0DD179BALL) <= 1)
      {
        v21 = *(v20 + 37);
        if (v21 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v21, "__InternalVPC-ScreenGlowEntity__"))
        {
          break;
        }
      }

      ++v14;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v18 = 0;
LABEL_20:
    v20 = 0;
  }

  *&v230.var0 = 0x74088E8F787C2E0ELL;
  v230.var1 = "__InternalVPC-DRMEnity__";
  v22 = re::ecs2::Entity::findInHierarchyByName(a3, &v230);
  v23 = v22;
  if (*&v230.var0)
  {
    if (*&v230.var0)
    {
    }
  }

  *&v230.var0 = 0;
  v230.var1 = &str_67;
  if (!v18 || !v20 || !v23)
  {
    v60 = *re::videoLogObjects(v22);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v61 = "[VideoPlayerComponentHelper]->postBufferRetrievalUpdate :: ScreenEntity or ScreenGlowEntity or DRMEntity is a nullptr";
    v62 = v60;
    v63 = 2;
    goto LABEL_72;
  }

  v24 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v24)
  {
    v190 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 1986;
    v61 = "VideoPlayerComponentHelper line: %d, videoPlayerComp is nullptr";
    v62 = v190;
    v63 = 8;
LABEL_72:
    _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, v61, buf, v63);
    return;
  }

  v25 = v24;
  if ((*(this + 1) & 1) == 0 && *(this + 2) == 1)
  {
    v24 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v24)
    {
      v28 = *(v24 + 64);
      if (v28 != 0.0 && fabsf(v28) > 0.001 || (v29 = *(v24 + 68), v29 != 0.0) && fabsf(v29) > 0.001)
      {
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v18, v26, v27);
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v20, v30, v31);
        re::ecs2::VideoPlayerComponentHelper::impl::setEntityVisibility(v23, v32, v33);
        *(this + 1) = 1;
        v35 = *re::videoLogObjects(v34);
        v24 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          v36 = *(this + 1);
          *buf = 67109120;
          *&buf[4] = v36;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper][impl]->postBufferRetrieval :: VideoPlayerComponentHelper sets video entities visibility: %d", buf, 8u);
        }
      }
    }

    else
    {
      v193 = *re::videoLogObjects(0);
      v24 = os_log_type_enabled(v193, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        *buf = 67109120;
        *&buf[4] = 864;
        _os_log_error_impl(&dword_1E1C61000, v193, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }

  v229 = this + 2;
  v37 = 2;
  if (!*(this + 2))
  {
    v37 = 3;
  }

  if (*(this + v37) != 1)
  {
    goto LABEL_213;
  }

  if (!*(this + 2))
  {
    goto LABEL_84;
  }

  v38 = re::VideoDefaults::logEnabled(v24);
  if (v38)
  {
    v191 = *re::videoLogObjects(v38);
    v38 = os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Entity is valid", buf, 2u);
    }
  }

  v39 = re::VideoDefaults::logEnabled(v38);
  if (v39)
  {
    v194 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Entity is valid", buf, 2u);
    }
  }

  v40 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v40)
  {
    v195 = *re::videoLogObjects(0);
    v24 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 67109120;
    *&buf[4] = 609;
    v65 = "VideoPlayerComponentHelper line: %d, screenVideoComponent is nullptr";
LABEL_290:
    v66 = v195;
    v67 = 8;
    goto LABEL_79;
  }

  v41 = v40;
  if (*(v25 + 176) != *(this + 5))
  {
    WeakRetained = objc_loadWeakRetained(this + 1831);
    if (!WeakRetained || (v43 = WeakRetained, v44 = re::ecs2::EntityComponentCollection::get((WeakRetained + 40), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), v43, !v44))
    {
      v64 = *re::videoLogObjects(WeakRetained);
      v24 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
      if (!v24)
      {
        goto LABEL_84;
      }

      *buf = 0;
      v65 = "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: screenGlowVideoComponent is nullptr";
LABEL_78:
      v66 = v64;
      v67 = 2;
LABEL_79:
      _os_log_error_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_ERROR, v65, buf, v67);
      goto LABEL_84;
    }

    v45 = re::VideoDefaults::logEnabled(WeakRetained);
    if (v45)
    {
      v210 = *re::videoLogObjects(v45);
      if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
      {
        v211 = *(this + 5);
        v212 = *(v25 + 176);
        *buf = 67109376;
        *&buf[4] = v211;
        *&buf[8] = 1024;
        *&buf[10] = v212;
        _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Preferred viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v46 = *(v25 + 176);
    v41[56] = v46;
    *(v44 + 56) = v46;
    *(this + 5) = v46;
  }

  if (*(v25 + 177) == *(this + 6))
  {
    goto LABEL_54;
  }

  v47 = objc_loadWeakRetained(this + 1831);
  if (!v47 || (v48 = v47, v49 = re::ecs2::EntityComponentCollection::get((v47 + 40), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType), v48, !v49))
  {
    v64 = *re::videoLogObjects(v47);
    v24 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 0;
    v65 = "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: screenGlowVideoComponent is nullptr";
    goto LABEL_78;
  }

  v50 = re::VideoDefaults::logEnabled(v47);
  if (v50)
  {
    v214 = *re::videoLogObjects(v50);
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      v215 = *(this + 6);
      v216 = *(v25 + 177);
      *buf = 67109376;
      *&buf[4] = v215;
      *&buf[8] = 1024;
      *&buf[10] = v216;
      _os_log_impl(&dword_1E1C61000, v214, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Desired media mode has changed from %d to %d", buf, 0xEu);
    }
  }

  v51 = *(v25 + 177);
  v41[75] = v51;
  *(v49 + 75) = v51;
  *(this + 6) = v51;
LABEL_54:
  v52 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v52)
  {
    v195 = *re::videoLogObjects(0);
    v24 = os_log_type_enabled(v195, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      goto LABEL_84;
    }

    *buf = 67109120;
    *&buf[4] = 657;
    v65 = "VideoPlayerComponentHelper line: %d, videoPlayerStatusComp is nullptr";
    goto LABEL_290;
  }

  v53 = v52;
  if (*(v52 + 88) != v41[57])
  {
    v52 = re::VideoDefaults::logEnabled(v52);
    if (v52)
    {
      v204 = *re::videoLogObjects(v52);
      v52 = os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT);
      if (v52)
      {
        v205 = *(v53 + 88);
        v206 = v41[57];
        *buf = 67109376;
        *&buf[4] = v205;
        *&buf[8] = 1024;
        *&buf[10] = v206;
        _os_log_impl(&dword_1E1C61000, v204, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v54 = v41[57];
    if (*(v53 + 88) != v54)
    {
      *(v53 + 88) = v54;
      v52 = *(*(v53 + 16) + 216);
      if (v52)
      {
        re::ecs2::NetworkComponent::markDirty(v52, v53);
      }
    }
  }

  v55 = re::VideoDefaults::logEnabled(v52);
  if (v55)
  {
    v198 = *re::videoLogObjects(v55);
    v55 = os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT);
    if (v55)
    {
      v199 = v41[57];
      *buf = 67109376;
      *&buf[4] = v199;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_1E1C61000, v198, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Screen Current Viewing Mode == %d; Unknown == %d", buf, 0xEu);
    }
  }

  if (*(v53 + 208) != v41[74])
  {
    v55 = re::VideoDefaults::logEnabled(v55);
    if (v55)
    {
      v207 = *re::videoLogObjects(v55);
      v55 = os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT);
      if (v55)
      {
        v208 = *(v53 + 208);
        v209 = v41[74];
        *buf = 67109376;
        *&buf[4] = v208;
        *&buf[8] = 1024;
        *&buf[10] = v209;
        _os_log_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current viewing mode has changed from %d to %d", buf, 0xEu);
      }
    }

    v56 = v41[74];
    if (*(v53 + 208) != v56)
    {
      *(v53 + 208) = v56;
      v55 = *(*(v53 + 16) + 216);
      if (v55)
      {
        re::ecs2::NetworkComponent::markDirty(v55, v53);
      }
    }
  }

  v24 = re::VideoDefaults::logEnabled(v55);
  if (v24)
  {
    v200 = *re::videoLogObjects(v24);
    v24 = os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      v201 = v41[74];
      *buf = 67109376;
      *&buf[4] = v201;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_1E1C61000, v200, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Current Spatial Video Mode == %d; Unknown == %d", buf, 0xEu);
    }
  }

  if (v41[57])
  {
    v57 = re::VideoDefaults::logEnabled(v24);
    if (v57)
    {
      v202 = *re::videoLogObjects(v57);
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
      {
        v203 = v41[57];
        *buf = 67109120;
        *&buf[4] = v203;
        _os_log_impl(&dword_1E1C61000, v202, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Viewing Mode is %d and setting the videoReadyToRender to true", buf, 8u);
      }
    }

    v58 = v53;
    v59 = 1;
  }

  else
  {
    if (!*(v53 + 88))
    {
      goto LABEL_84;
    }

    v68 = re::VideoDefaults::logEnabled(v24);
    if (v68)
    {
      v219 = *re::videoLogObjects(v68);
      if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
      {
        v220 = v41[57];
        *buf = 67109120;
        *&buf[4] = v220;
        _os_log_impl(&dword_1E1C61000, v219, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->checkAndUpdateSyncedStates :: Viewing Mode is %d and setting the videoReadyToRender to false", buf, 8u);
      }
    }

    v58 = v53;
    v59 = 0;
  }

  re::ecs2::VideoPlayerStatusComponent::setVideoIsReadyToRender(v58, v59);
LABEL_84:
  v69 = this + 3;
  if (*v229)
  {
    v69 = this + 2;
  }

  if (*v69 == 1 || *(v25 + 72))
  {
    v70 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v73 = this + 12288;
    if (!v70)
    {
      v192 = *re::videoLogObjects(0);
      v76 = os_log_type_enabled(v192, OS_LOG_TYPE_ERROR);
      if (v76)
      {
        *buf = 67109120;
        *&buf[4] = 2561;
        _os_log_error_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }

      LODWORD(v83) = 0;
      goto LABEL_266;
    }

    v74 = v70;
    v75 = *(v25 + 99);
    *(this + 12498) = v75;
    *(v70 + 257) = v75;
    v76 = media::MediaScreenAnimationEngine::update(this + 48, a2, v71, v72);
    v77 = *(v25 + 192);
    v79 = v74[8].f32[0];
    v78 = v74[8].f32[1];
    if (((v79 == 0.0 || fabsf(v79) <= 0.001) && (v78 == 0.0 || fabsf(v78) <= 0.001) || v78 <= 0.0) && v77 <= 0.0)
    {
      v76 = re::VideoDefaults::loadingTexAndHintEnabled(v76);
      if (!v76 || !*(v25 + 72) || (*(this + 1) & 1) != 0)
      {
LABEL_107:
        LODWORD(v83) = 0;
        goto LABEL_108;
      }

      v78 = v74[8].f32[1];
    }

    v80 = 0.0;
    if (v78 > 0.0)
    {
      v80 = v74[8].f32[0] / v78;
    }

    if (v77 <= 0.0)
    {
      v76 = re::VideoDefaults::loadingTexAndHintEnabled(v76);
      if (v76 && (*(this + 1) & 1) == 0)
      {
        v77 = v80;
        if (*(v25 + 72))
        {
          v76 = re::VideoDefaults::logLevel(v76);
          if (v76 >= 3)
          {
            v224 = *re::videoLogObjects(v76);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              v225 = *(v25 + 204);
              *buf = 134217984;
              *&buf[4] = v225;
              _os_log_impl(&dword_1E1C61000, v224, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: New Aspect ratio is %f", buf, 0xCu);
            }

            v73 = this + 12288;
          }

          v77 = *(v25 + 204);
        }
      }

      else
      {
        v77 = v80;
      }
    }

    v81 = roundf(v77 * 100.0) / 100.0;
    v82 = *(this + 7);
    if (v81 == v82 || vabds_f32(v81, v82) < (((fabsf(v82) + fabsf(v81)) + 1.0) * 0.00001))
    {
      goto LABEL_107;
    }

    v227 = v81;
    *(this + 7) = v81;
    v136 = *re::videoLogObjects(v76);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      v137 = v74[8].f32[0];
      v138 = v74[8].f32[1];
      v139 = *(this + 7);
      v140 = *(this + 12498);
      *buf = 134219008;
      *&buf[4] = v137;
      *&buf[12] = 2048;
      v232 = v138;
      v233 = 2048;
      v234 = v139;
      v235 = 2048;
      v236 = v82;
      v237 = 1024;
      v238 = v140;
      _os_log_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] New video dimension: {%f, %f}, Screen new aspect ratio: %f, prev aspect ratio: %f, m_isScreenDeferAspectRatioTransitionToApp: %d", buf, 0x30u);
    }

    v142 = this + 12288;
    v143 = v227;
    if (*(this + 12499) != 1)
    {
LABEL_234:
      v228 = v23;
      if (v142[210] == 1)
      {
        v157 = *(this + 6);
        if (v157 <= 0.0 || (v158 = *(this + 7), v158 <= 0.0) || v157 != v158 && vabds_f32(v157, v158) > 0.001)
        {
          v159 = *re::videoLogObjects(v141);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            v160 = *(this + 6);
            v161 = *(this + 7);
            *buf = 134218240;
            *&buf[4] = v160;
            *&buf[12] = 2048;
            v232 = v161;
            _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Scale ratio and content ratio are not matched yet, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x16u);
          }

          v142 = this + 12288;
        }

        if (v142[211] == 1)
        {
          v142[211] = 0;
        }
      }

      else
      {
        __asm { FMOV            V0.2S, #1.0 }

        *&_D0 = v143;
        *(this + 2) = _D0;
        v166 = re::VideoDefaults::logLevel(v141);
        if (v166 >= 2)
        {
          v221 = *re::videoLogObjects(v166);
          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            v222 = *(this + 4);
            v223 = *(this + 5);
            *buf = 134218240;
            *&buf[4] = v222;
            *&buf[12] = 2048;
            v232 = v223;
            _os_log_impl(&dword_1E1C61000, v221, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: Setting is Current Screen Entity Mesh Size to [%f,%f]", buf, 0x16u);
          }

          v142 = this + 12288;
        }

        v167 = *(v25 + 98);
        v142[209] = v167;
        if (v142[211] & 1) == 0 && (v167)
        {
          v168 = media::MediaScreenAnimationEngine::add(this + 12, 0);
          v83 = v168;
          if (v168)
          {
            *buf = 0x4376BD773F800000;
            *&buf[8] = 1106990019;
            media::FloatSpringAnimation::setSpringParam(v168, buf);
            v169 = [*(v83 + 40) duration];
            *&v170 = v170;
            *(v83 + 12) = LODWORD(v170);
            *(v83 + 16) = v82;
            *(v83 + 20) = v227;
            v171 = *re::videoLogObjects(v169);
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
            {
              v172 = *(v83 + 12);
              *buf = 134218496;
              *&buf[4] = v172;
              *&buf[12] = 2048;
              v232 = v82;
              v233 = 2048;
              v234 = v227;
              _os_log_impl(&dword_1E1C61000, v171, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] post m_isScreenSizeAnimationEnabled animation, duration: %f from aspect ratio: %f to aspect ratio: %f", buf, 0x20u);
            }

            media::MediaScreenAnimationEngine::update(this + 48, 0.0, v173, v174);
            LODWORD(v83) = 0;
          }

          goto LABEL_255;
        }

        v142[211] = 0;
        *(this + 22) = v227;
        v175 = *re::videoLogObjects(v166);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v227;
          _os_log_impl(&dword_1E1C61000, v175, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Generate first mesh for the initial playback with aspect ratio: %f", buf, 0xCu);
        }
      }

      LODWORD(v83) = 1;
LABEL_255:
      v176 = *(this + 16);
      v177 = v74[8];
      v178 = re::ecs2::EntityComponentCollection::get((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v178)
      {
        v179 = v178;
        v180 = vmvn_s8(vceq_f32(v178[9], v176));
        if ((vpmax_u32(v180, v180).u32[0] & 0x80000000) != 0)
        {
          v178[9] = v176;
          v178 = *(*&v178[2] + 216);
          if (v178)
          {
            re::ecs2::NetworkComponent::markDirty(v178, v179);
          }
        }

        v181 = vmvn_s8(vceq_f32(v179[10], v177));
        if ((vpmax_u32(v181, v181).u32[0] & 0x80000000) != 0)
        {
          v179[10] = v177;
          v178 = *(*&v179[2] + 216);
          if (v178)
          {
            re::ecs2::NetworkComponent::markDirty(v178, v179);
          }
        }

        v182 = *re::videoLogObjects(v178);
        v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
        if (v183)
        {
          v184 = v179[9].f32[0];
          v185 = v179[9].f32[1];
          *buf = 134218240;
          *&buf[4] = v184;
          *&buf[12] = 2048;
          v232 = v185;
          _os_log_impl(&dword_1E1C61000, v182, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] UpdatePlayerScreenSize as %f x %f", buf, 0x16u);
        }

        v186 = *re::videoLogObjects(v183);
        v76 = os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT);
        v23 = v228;
        if (v76)
        {
          v187 = v179[10].f32[0];
          v188 = v179[10].f32[1];
          *buf = 134218240;
          *&buf[4] = v187;
          *&buf[12] = 2048;
          v232 = v188;
          _os_log_impl(&dword_1E1C61000, v186, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] UpdateScreenVideoDimension as %f x %f", buf, 0x16u);
        }
      }

      else
      {
        v213 = *re::videoLogObjects(0);
        v76 = os_log_type_enabled(v213, OS_LOG_TYPE_ERROR);
        if (v76)
        {
          *buf = 67109120;
          *&buf[4] = 3139;
          _os_log_error_impl(&dword_1E1C61000, v213, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoPlayerStatusComponent is nullptr", buf, 8u);
        }

        v23 = v228;
      }

LABEL_266:
      v73 = this + 12288;
LABEL_108:
      if (v73[210] == 1)
      {
        v84 = a3[32];
        if (v84)
        {
          v85 = *(v84 + 9);
          if (v85 > 0.0)
          {
            v86 = *(v84 + 8) / v85;
            if (*(this + 6) != v86)
            {
              *(this + 6) = v86;
              v76 = re::VideoDefaults::logEnabled(v76);
              if (v76)
              {
                v217 = *re::videoLogObjects(v76);
                if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                {
                  v218 = *(this + 6);
                  *buf = 134217984;
                  *&buf[4] = v218;
                  _os_log_impl(&dword_1E1C61000, v217, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] m_currentVideoEntityScaleAspectRatio is updated: %f", buf, 0xCu);
                }

                v73 = this + 12288;
              }

              v87 = *(this + 6);
              if (v87 <= 0.0 || (v88 = *(this + 7), v88 <= 0.0) || (LODWORD(v83) = 1, v87 != v88) && vabds_f32(v87, v88) > 0.001)
              {
                v89 = *re::videoLogObjects(v76);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(this + 6);
                  v91 = *(this + 7);
                  *buf = 134218240;
                  *&buf[4] = v90;
                  *&buf[12] = 2048;
                  v232 = v91;
                  _os_log_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Scale ratio and content ratio are not matched yet, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x16u);
                }

                LODWORD(v83) = 1;
              }
            }
          }
        }
      }

      v92 = a3[32];
      if (v92)
      {
        v93 = *(v92 + 8);
        if (v93 < *(v92 + 9))
        {
          v93 = *(v92 + 9);
        }

        if (*(this + 8) != v93)
        {
          *(this + 8) = v93;
          v94 = re::VideoDefaults::logEnabled(v76);
          if (v94)
          {
            v196 = *re::videoLogObjects(v94);
            if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
            {
              v197 = *(this + 8);
              *buf = 134217984;
              *&buf[4] = v197;
              _os_log_impl(&dword_1E1C61000, v196, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh] m_currentVideoEntityScaleMax is updated: %f", buf, 0xCu);
            }

            LODWORD(v83) = 1;
            v73 = this + 12288;
          }

          else
          {
            LODWORD(v83) = 1;
          }
        }
      }

      v95 = *(v25 + 196);
      if (*(this + 40) != v95)
      {
        *(this + 40) = v95;
        LODWORD(v83) = 1;
      }

      v96 = *(this + 9);
      v97 = *(v25 + 188);
      if (v96 != v97)
      {
        *(this + 9) = v97;
        if (*(v25 + 197) == 1)
        {
          v98 = media::MediaScreenAnimationEngine::add(this + 12, 2);
          if (v98)
          {
            v99 = v98;
            *buf = 0x4376BD773F800000;
            *&buf[8] = 1106990019;
            media::FloatSpringAnimation::setSpringParam(v98, buf);
            v100 = [*(v99 + 40) duration];
            *&v101 = v101;
            *(v99 + 12) = LODWORD(v101);
            *(v99 + 16) = v96;
            *(v99 + 20) = *(this + 9);
            v102 = *re::videoLogObjects(v100);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = *(this + 9);
              v104 = *(v99 + 12);
              *buf = 134218240;
              *&buf[4] = v103;
              *&buf[12] = 2048;
              v232 = v104;
              _os_log_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh] post m_screenWrapTheta animation: m_screenWrapTheta: %f, duration: %f", buf, 0x16u);
            }

            v73 = this + 12288;
          }
        }

        else
        {
          *(this + 24) = v97;
          LODWORD(v83) = 1;
        }
      }

      v105 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
      if (!v105)
      {
        goto LABEL_151;
      }

      v106 = *(v105 + 208);
      if (v106 && (v106[640].i8[0] & 1) != 0 && *(v105 + 973) == 1)
      {
        v107 = v106[638];
        v108 = v106[639];
        v109 = v106[637];
        if (v73[2488] == 1)
        {
          v110 = *(this + 14760);
          if ((vceq_f32(v110, v107).u8[0] & 1) != 0 || fabsf(vsub_f32(v110, v107).f32[0]) <= 0.000001) && (v110.f32[1] == v107.f32[1] || vabds_f32(v110.f32[1], v107.f32[1]) <= 0.000001) && ((v111 = *(this + 14768), (vceq_f32(v111, v108).u8[0]) || fabsf(vsub_f32(v111, v108).f32[0]) <= 0.000001) && (v111.f32[1] == v108.f32[1] || vabds_f32(v111.f32[1], v108.f32[1]) <= 0.000001))
          {
            *(this + 1844) = v109;
            *(this + 1845) = v107;
            *(this + 1846) = v108;
            if ((v83 & 1) == 0)
            {
              goto LABEL_168;
            }
          }

          else
          {
            *(this + 1844) = v109;
            *(this + 1845) = v107;
            *(this + 1846) = v108;
          }
        }

        else
        {
          *(this + 1844) = v109;
          *(this + 1845) = v107;
          *(this + 1846) = v108;
          v73[2488] = 1;
        }

        goto LABEL_152;
      }

      if (v73[2488] == 1)
      {
        v73[2488] = 0;
      }

      else
      {
LABEL_151:
        if (!v83)
        {
          goto LABEL_168;
        }
      }

LABEL_152:
      if (*(this + 7) > 0.0)
      {
        v112 = -10320;
        do
        {
          v113 = *(this + v112 + 10432);
          if (v113)
          {
            _ZF = 1;
          }

          else
          {
            _ZF = v112 == 0;
          }

          v112 += 2064;
        }

        while (!_ZF);
        if (!v113)
        {
          v115 = *re::videoLogObjects(v105);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] forceRegenerateMesh when animation enigine is idle", buf, 2u);
          }

          v117 = *re::videoLogObjects(v116);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v117, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->screenEntityAnimation:: #SpatialGallery :: Regenerate Mesh", buf, 2u);
          }

          re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(this, v18, v20, a4, *(this + 2), v73[210], *(this + 40), *(this + 23), *(this + 9));
          if (v73[210] == 1)
          {
            *(this + 22) = *(this + 4);
          }
        }
      }

      goto LABEL_168;
    }

    v144 = *(this + 12496);
    v145 = *(v25 + 97);
    if (v144 == v145)
    {
      if ((v144 & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    else
    {
      *(this + 12496) = v145;
      if (!v145)
      {
        goto LABEL_234;
      }
    }

    if (v74[9].i8[2] != 1)
    {
      if (!*(v25 + 72))
      {
        v155 = 22.0;
        goto LABEL_231;
      }

      v141 = re::VideoDefaults::logLevel(v141);
      if (v141 >= 3)
      {
        v226 = *re::videoLogObjects(v141);
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v226, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture][VideoPlayerComponentHelper]->screenEntityAnimation :: Setting is Spatial Mode to true for the rounded corners", buf, 2u);
        }
      }
    }

    v155 = 46.0;
LABEL_231:
    *(this + 23) = v155;
    v156 = *re::videoLogObjects(v141);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] Force generating rounded corner for the first time showing the video", buf, 2u);
    }

    v142 = this + 12288;
    v143 = v227;
    goto LABEL_234;
  }

  v118 = *re::videoLogObjects(v24);
  v73 = this + 12288;
  if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_ERROR, "[VideoPlayerComponentHelper]->screenEntityAnimation ::  This content is not Screen Content and there is no Loading Asset", buf, 2u);
  }

LABEL_168:
  if (*(v25 + 48))
  {
    v119 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
  }

  else
  {
    v119 = 0;
  }

  v120 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v121 = re::ecs2::EntityComponentCollection::get((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v121)
  {
    v122 = *(v121 + 72);
    v123 = *(v121 + 80);
    *(this + 1839) = v122;
    *(this + 1840) = v123;
    if (!v120)
    {
      goto LABEL_213;
    }
  }

  else
  {
    v122 = *(this + 14712);
    v123 = *(this + 14720);
    if (!v120)
    {
      goto LABEL_213;
    }
  }

  v124 = *(this + 3682) > 1.0;
  if (v119)
  {
    v125 = *(v119 + 208);
    v126 = v125 ? *(v125 + 5088) : 0.0;
    if (fabsf(v126) >= 0.000001)
    {
      v124 = 2;
    }
  }

  v127 = *(this + 3683) + 1.0;
  *(v120 + 264) = v122;
  *(v120 + 272) = v123;
  *(v120 + 280) = vmul_f32(vadd_f32(v122, v123), 0x3F0000003F000000);
  *(v120 + 288) = v127;
  *(v120 + 292) = v124;
  if (!v73[212])
  {
    *(v120 + 312) = 1065353216;
    *(v120 + 296) = re::ecs2::kDefaultVideoBlurParams;
    v73[236] = 0;
    goto LABEL_213;
  }

  if (*(this + 7) > 0.0 && re::ecs2::VideoComponent::isVideoBlurTextureAvailable(v120))
  {
    v128 = (this + 112);
    v129 = 10320;
    do
    {
      v130 = *v128;
      if (*v128)
      {
        v131 = 1;
      }

      else
      {
        v131 = v129 == 0;
      }

      v129 -= 2064;
      v128 += 258;
    }

    while (!v131);
    v132 = 28;
    if (v130)
    {
      v132 = 88;
    }

    v133 = *(this + v132);
    v134 = v73[212];
    if (v134 == 2)
    {
      v135 = *(this + 3130);
      if (v135 == 0.0)
      {
        *(this + 3129) = v133;
      }
    }

    else
    {
      v146 = 1.0;
      if ((v134 & 0xFE) != 2)
      {
LABEL_210:
        v149 = *(this + 3129);
        v150 = *(this + 3126);
        if (v150 == 0.0)
        {
          v150 = *(this + 3129);
        }

        *(v120 + 296) = v134;
        *(v120 + 300) = v146;
        *(v120 + 304) = v149;
        *(v120 + 308) = v150;
        *(v120 + 312) = v133;
        goto LABEL_213;
      }

      v135 = *(this + 3130);
    }

    v147 = v135 + a2;
    if (*(this + 3127) <= v147)
    {
      v147 = *(this + 3127);
    }

    *(this + 3130) = v147;
    v148 = fminf(v147 * *(this + 3128), 1.0);
    v146 = 1.0 - v148;
    if (v134 == 2)
    {
      v146 = v148;
    }

    if (v148 == 1.0)
    {
      LOBYTE(v134) = v134 == 2;
      *(this + 3130) = 0;
      v73[212] = v134;
    }

    goto LABEL_210;
  }

LABEL_213:
  if (*(v25 + 48))
  {
    v151 = re::AssetHandle::loadedAsset<re::VideoAsset>((v25 + 40));
    if (*(v151 + 8) == 1 && re::VideoDefaults::drmIconEnabled(v151))
    {
      re::ecs2::Entity::setSelfEnabled(v23, 1);
      if (*v229 == 1 || !*v229 && *(this + 3) == 1)
      {
        *&v153 = (*(a3[32] + 9) * 0.052083) / *(a3[32] + 8);
        HIDWORD(v153) = 1029002581;
        LODWORD(v152) = 1.0;
        v154 = *(v23 + 32);
        re::ecs2::TransformComponent::setLocalScale(v154, v153, v152, 0);
        re::ecs2::Component::markDirty(v154);
      }
    }

    else
    {
      re::ecs2::Entity::setSelfEnabled(v23, 0);
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(uint64_t a1, uint64_t a2, uint64_t a3, re::AssetManager *a4, uint64_t a5, int a6, char a7, float a8, float a9)
{
  v13 = *&a5;
  v137 = *MEMORY[0x1E69E9840];
  v18 = a1 + 12288;
  v121 = a5;
  v19 = re::VideoDefaults::logEnabled(a1);
  if ((v19 & 1) != 0 || (v19 = re::VideoDefaults::logLevel(v19), v19 >= 2))
  {
    v87 = *re::videoLogObjects(v19);
    v19 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v88 = *(v18 + 210);
      v89 = *(a1 + 32);
      *buf = 134219520;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = a8;
      *&buf[22] = 1024;
      *&buf[24] = a6;
      *&buf[28] = 2048;
      *&buf[30] = v89;
      *&buf[38] = 2048;
      *&buf[40] = v13;
      *v135 = 2048;
      *&v135[2] = v121.f32[1];
      LOWORD(v136) = 1024;
      *(&v136 + 2) = v88;
      _os_log_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEFAULT, "[regenerateScreenMesh]: aspectRatio: %f, cornerRadiusInPts: %f, customUV: %d, m_currentVideoEntityScaleMax: %f, size: (%f, %f), m_isScreenDeferAspectRatioTransitionToApp: %d", buf, 0x40u);
    }
  }

  if (!a2)
  {
    return;
  }

  v20 = *(a2 + 32);
  if (!v20 || (*(v20 + 304) & 0x80) != 0)
  {
    return;
  }

  v21 = *(v20 + 256);
  if (!v21)
  {
    v90 = *re::videoLogObjects(v19);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2257;
    v91 = "VideoPlayerComponentHelper line: %d, videoEntityTFComp is nullptr";
    goto LABEL_85;
  }

  v22 = *(a2 + 256);
  if (!v22)
  {
    v90 = *re::videoLogObjects(v19);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2259;
    v91 = "VideoPlayerComponentHelper line: %d, tfComp is nullptr";
LABEL_85:
    _os_log_error_impl(&dword_1E1C61000, v90, OS_LOG_TYPE_ERROR, v91, buf, 8u);
    return;
  }

  v23 = re::ecs2::EntityComponentCollection::get((v20 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v23)
  {
    v24 = v23;
    if (*(v18 + 210) == 1)
    {
      v25 = v21[2];
      if (fminf(fminf(v25.f32[0], COERCE_FLOAT(v21[2].i64[1])), COERCE_FLOAT(HIDWORD(v21[2].i64[0]))) > 0.0)
      {
        __asm { FMOV            V1.4S, #1.0 }

        v31 = vdivq_f32(_Q1, v25);
        re::ecs2::TransformComponent::setLocalScale(v22, v31.i64[0], v31.i64[1], 0);
        v121 = *v21[2].f32;
        v32 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v120 = v32 != 0;
        if (v32)
        {
          v118 = v22;
          if (*(v32 + 216) && (v33 = re::AssetHandle::loadedAsset<re::VideoAsset>((v32 + 208))) != 0 && (v34 = v33, (v35 = *(v33 + 208)) != 0) && (v35[640].i8[0] & 1) != 0 && *(v33 + 973) == 1)
          {
            v36 = v35[638];
            v37 = re::VideoAsset::dimensions(v33);
            v38 = *(v34 + 208);
            if (!v38 || (v38[640].i8[0] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:nn200100]();
              re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(v111, v112, v113, v114, v115, v116);
              return;
            }

            v121 = vmul_f32(v121, vdiv_f32(v36, v37));
            v39 = vdiv_f32(vadd_f32(vmul_f32(vsub_f32(v36, v37), 0x3F0000003F000000), v38[639]), vdiv_f32(v36, v121));
            v22 = v118;
            LODWORD(v40) = v39.i32[0];
            *(&v40 + 1) = -v39.f32[1];
            v41 = vaddq_f32(v118[4], v40);
            re::ecs2::TransformComponent::setLocalPosition(v21, v41.i64[0], v41.i64[1], 0);
            v42 = re::ecs2::Component::markDirty(v21);
            v32 = re::VideoDefaults::logEnabled(v42);
            if (!v32)
            {
              goto LABEL_28;
            }

            v43 = *re::videoLogObjects(v32);
            if (v121.f32[1] == 0.0)
            {
              v32 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              if (v32)
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "[PFRM] invalid aspect ratio due to 0 height in mesh size", buf, 2u);
              }
            }

            else
            {
              v32 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
              if (v32)
              {
                *buf = 134217984;
                *&buf[4] = (v121.f32[0] / v121.f32[1]);
                _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "[PFRM] new aspect ratio: %f", buf, 0xCu);
              }
            }
          }

          else
          {
            re::ecs2::TransformComponent::setLocalPosition(v21, 0, 0, 0);
            v32 = re::ecs2::Component::markDirty(v21);
          }

          v22 = v118;
        }

LABEL_28:
        v44 = re::VideoDefaults::logEnabled(v32);
        if (v44)
        {
          v97 = *re::videoLogObjects(v44);
          v98 = os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
          if (v98)
          {
            *buf = 134218240;
            *&buf[4] = v121.f32[0];
            *&buf[12] = 2048;
            *&buf[14] = v121.f32[1];
            _os_log_impl(&dword_1E1C61000, v97, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] new mesh size: %f, %f", buf, 0x16u);
          }

          v99 = *re::videoLogObjects(v98);
          v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
          if (v100)
          {
            v101 = v99;
            v102 = v22[2].f32[0];
            v103 = v22[2].f32[1];
            v104 = v22[2].f32[2];
            *buf = 134218496;
            *&buf[4] = v102;
            *&buf[12] = 2048;
            *&buf[14] = v103;
            *&buf[22] = 2048;
            *&buf[24] = v104;
            _os_log_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] screen entity local scale: %f, %f, %f", buf, 0x20u);
          }

          v105 = *re::videoLogObjects(v100);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v106 = v105;
            v107 = v22[4].f32[0];
            v108 = v22[4].f32[1];
            v109 = v22[4].f32[2];
            *buf = 134218496;
            *&buf[4] = v107;
            *&buf[12] = 2048;
            *&buf[14] = v108;
            *&buf[22] = 2048;
            *&buf[24] = v109;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] screen entity local translation: %f, %f, %f", buf, 0x20u);
          }
        }

LABEL_29:
        v45 = re::ecs2::Component::markDirty(v22);
        v46 = *re::videoLogObjects(v45);
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (v47)
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Radius in Meters is still 0 after it should be, or maybe the app doesn't have CA context. Defaulting back to one to hopefully avoid possible UI issues", buf, 2u);
        }

        v48 = a8 * 0.001;
        v130 = 0.0;
        v128 = 0;
        *&v129[2] = 0;
        v132 = 1065353216;
        v133 = xmmword_1E3063230;
        v127 = v121;
        *v129 = v48;
        v131 = a6;
        if (a6)
        {
          v49 = re::VideoDefaults::logEnabled(v47);
          if (v49)
          {
            v93 = *re::videoLogObjects(v49);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = *(v18 + 210);
              v95 = *(a1 + 24);
              v96 = *(a1 + 28);
              *buf = 134218752;
              *&buf[4] = v121.f32[0];
              *&buf[12] = 1024;
              *&buf[14] = v94;
              *&buf[18] = 2048;
              *&buf[20] = v95;
              *&buf[28] = 2048;
              *&buf[30] = v96;
              _os_log_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] updateCustomUVParams: planeGeometryWidth: %f, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", buf, 0x26u);
            }
          }

          v50 = *(a1 + 28);
          v51 = v121.f32[0];
          if (v50 <= 0.0)
          {
            v52 = *(a1 + 14728);
          }

          else
          {
            if (*(v18 + 210) == 1)
            {
              v51 = *(a1 + 24);
            }

            v52 = v51 / v50;
            *(a1 + 14728) = v52;
            if (v52 > 0.99 && v52 < 1.01)
            {
              *(a1 + 14728) = 1065353216;
              *(a1 + 14712) = 0;
              *(a1 + 14720) = 0x3F8000003F800000;
              v52 = 1.0;
            }
          }

          v132 = LODWORD(v52);
          v133 = *(v18 + 2424);
        }

        *&v129[4] = a9;
        v129[8] = a7;
        re::ecs2::createPlane(a2, &v127);
        v124 = 0;
        v125 = 0;
        v126 = 0;
        if (*(v24 + 200) == 1)
        {
          re::ecs2::buildCurvedCollisionShapeAssetHandle(buf, a4, a9, v48, v121.f32[0], v121.f32[1]);
        }

        else
        {
          v54.n128_u32[0] = v121.i32[0];
          re::ecs2::buildCollisionShapeAssetHandle(a4, v53, v54, v121.f32[1], 0.0);
        }

        v55 = *&buf[8];
        v124 = *buf;
        v125 = *&buf[8];
        memset(buf, 0, 24);
        v126 = *&buf[16];
        re::AssetHandle::~AssetHandle(buf);
        re::AssetHandle::loadNow(v55, 0);
        v56 = *(a2 + 192);
        if (!v56)
        {
          v92 = *re::videoLogObjects(0);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 2435;
            _os_log_error_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, meshComponent is nullptr", buf, 8u);
          }

          goto LABEL_73;
        }

        re::ecs2::Component::markDirty(v56);
        v57 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v57)
        {
          v58 = v57;
          re::AssetHandle::operator=(v57 + 32, &v124);
          v59 = re::ecs2::Component::markDirty(v58);
        }

        else
        {
          v60 = *re::videoLogObjects(0);
          v59 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
          if (v59)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Can't update colliderComponent as it is nil for screenEntity", buf, 2u);
          }
        }

        v61 = *re::videoLogObjects(v59);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          *&buf[4] = v121.f32[0];
          *&buf[12] = 2048;
          *&buf[14] = v121.f32[1];
          *&buf[22] = 2048;
          *&buf[24] = v48;
          *&buf[32] = 2048;
          *&buf[34] = v130;
          _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] final size: (%f, %f), radiusInMeters: %f, bevelFrontDepthInMeters: %.4f", buf, 0x2Au);
        }

        v62 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v63 = v62;
        if (v62)
        {
          v64 = re::AssetHandle::loadedAsset<re::VideoAsset>((v62 + 208));
          if (v64)
          {
            v65 = re::AssetHandle::AssetHandle(v122, (v63 + 208));
            v66.i32[1] = v121.i32[1];
            v67 = vdup_n_s32(0x21Cu);
            v67.i32[0] = ((v121.f32[0] / v121.f32[1]) * 540.0);
            *v66.i32 = (v121.f32[0] / v121.f32[1]) * 24.0;
            v68 = *v66.i32;
            v66.i8[0] = *(v63 + 74);
            v69.i32[0] = 1;
            v119 = vmin_s32(vmax_s32(v67, 0), 0x80000000800);
            v117 = vmin_s32(vmax_s32(vbsl_s8(vdup_lane_s8(vceq_s8(v66, v69), 0), 0x4000000040, (v68 | 0x1800000000)), 0), 0x10000000100);
            v70 = *re::videoLogObjects(v65);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = v70;
              v72 = v22[2].f32[0];
              v73 = v22[2].f32[1];
              *buf = 134219776;
              *&buf[4] = v121.f32[0];
              *&buf[12] = 2048;
              *&buf[14] = v121.f32[1];
              *&buf[22] = 1024;
              *&buf[24] = v119.i32[0];
              *&buf[28] = 1024;
              *&buf[30] = v119.i32[1];
              *&buf[34] = 1024;
              *&buf[36] = v117.i32[0];
              *&buf[40] = 1024;
              *&buf[42] = v117.i32[1];
              *&buf[46] = 2048;
              *v135 = v72;
              *&v135[8] = 2048;
              v136 = v73;
              _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->regenerateScreenMesh:: Size (%f, %f) : Specular Dimensions == x=%i y=%i && Diffuse Dimensions == x=%i y=%i && Transform Scale (%f, %f)", buf, 0x42u);
            }

            re::AssetHandle::mutateAssetCommon(v122);
            ++*(v123 + 69);
            v74 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(v122);
            if (v74)
            {
              *(v74 + 248) = v119;
              *(v74 + 232) = v117;
              v75 = v123;
              *(v123 + 256) = 1;
              re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v75);
              re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v123);
            }

            re::AssetHandle::payloadDidChangeIfPossible(v122);
            re::AssetHandle::~AssetHandle(v122);
            if (!a3)
            {
              goto LABEL_73;
            }

LABEL_61:
            if ((((*(a3 + 304) & 8) == 0) & ~v120) != 0)
            {
              goto LABEL_73;
            }

            v77 = *(a3 + 32);
            if (!v77 || (*(v77 + 304) & 0x80) != 0)
            {
              goto LABEL_73;
            }

            if (*(v63 + 216))
            {
              v64 = re::AssetHandle::loadedAsset<re::VideoAsset>((v63 + 208));
              if (*(v18 + 210))
              {
                if (!v64)
                {
                  goto LABEL_73;
                }

                v78 = *(v64 + 208);
                if (!v78 || (*(v78 + 5120) & 1) == 0)
                {
                  goto LABEL_73;
                }
              }

LABEL_71:
              v79 = v22[2].f32[0] * v121.f32[0];
              v80 = v79 * re::VideoDefaults::glowSizeXModifier(v64);
              v81 = vmuls_lane_f32(v22[2].f32[1], v121, 1);
              v83 = v81 * re::VideoDefaults::glowSizeYModifier(v82);
              v85 = re::VideoDefaults::logEnabled(v84);
              if (v85)
              {
                v110 = *re::videoLogObjects(v85);
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  *&buf[4] = v80;
                  *&buf[12] = 2048;
                  *&buf[14] = v83;
                  _os_log_impl(&dword_1E1C61000, v110, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->regenerateScreenMesh ::          glowSize.x : %f, glowSize.y : %f ", buf, 0x16u);
                }
              }

              re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(a1, a3, v80, v83, a9, v86);
              goto LABEL_73;
            }

            if ((*(v18 + 210) & 1) == 0)
            {
              goto LABEL_71;
            }

LABEL_73:
            re::AssetHandle::~AssetHandle(&v124);
            return;
          }
        }

        else
        {
          v76 = *re::videoLogObjects(0);
          v64 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
          if (v64)
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, "[ScreenAnimation] Can't update spillMap as videoComponent is nil for screenEntity", buf, 2u);
            if (!a3)
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          }
        }

        if (!a3)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }
    }

    else
    {
      re::ecs2::TransformComponent::setLocalScale(v22, 0x3F8000003F800000, 1065353216, 0);
      if (*(v24 + 199) == 1)
      {
        v120 = 0;
        a8 = a8 / *(a1 + 32);
        goto LABEL_29;
      }
    }

    v120 = 0;
    goto LABEL_29;
  }

  v90 = *re::videoLogObjects(0);
  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 2262;
    v91 = "VideoPlayerComponentHelper line: %d, videoPlayerComponent is nullptr";
    goto LABEL_85;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::createInvertedPlane(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::Entity *a2, float a3, float a4, float a5, float a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = re::VideoDefaults::logEnabled(this);
  if (v11)
  {
    v14 = *re::videoLogObjects(v11);
    v11 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v15 = *(this + 12498);
      v16 = *(this + 6);
      v17 = *(this + 7);
      v22 = 134219520;
      v23 = a3;
      v24 = 2048;
      v25 = a4;
      v26 = 2048;
      v27 = 0;
      v28 = 1024;
      v29 = 0;
      v30 = 1024;
      v31 = v15;
      v32 = 2048;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->createInvertedPlaneAsset :: width: %f, height: %f, cornerRadius: %f, customUV: %d, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", &v22, 0x40u);
    }
  }

  if (a2)
  {
    v12 = re::VideoDefaults::logEnabled(v11);
    if (v12)
    {
      v18 = *re::videoLogObjects(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(this + 12498);
        v20 = *(this + 6);
        v21 = *(this + 7);
        v22 = 134219520;
        v23 = a3;
        v24 = 2048;
        v25 = a4;
        v26 = 2048;
        v27 = 0;
        v28 = 1024;
        v29 = 0;
        v30 = 1024;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2048;
        v35 = v21;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane: width: %f, height: %f, cornerRadius: %f, customUV: %d, m_isScreenDeferAspectRatioTransitionToApp: %d, m_currentVideoEntityScaleAspectRatio: %f, m_currentContentAspectRatio: %f", &v22, 0x40u);
      }
    }

    v13 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v13 + 48) = a3;
    *(v13 + 52) = a4;
    *(v13 + 40) = 0;
    *(v13 + 36) = 0;
    *(v13 + 56) = 0;
    *(v13 + 32) = 16;
    *(v13 + 26) = 64;
    *(v13 + 64) = a5;
    *(v13 + 69) = 1;
    re::ecs2::Component::markDirty(v13);
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::updateAudioSrcPosition(uint64_t a1, re::ecs2::Entity *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(a2, a2);
  if (!VideoAudioControlComponentUnderneathParent || (v5 = *(VideoAudioControlComponentUnderneathParent + 2)) == 0)
  {
    VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioTetherSystem::getAudioTetherControlComponentUnderneathParent(a2, v5);
    if (!VideoAudioControlComponentUnderneathParent)
    {
      return;
    }

    v5 = *(VideoAudioControlComponentUnderneathParent + 2);
    if (!v5)
    {
      return;
    }
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    v11 = *re::videoLogObjects(VideoAudioControlComponentUnderneathParent);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2981;
    v12 = "VideoPlayerComponentHelper line: %d, audioTFComp is nullptr";
    goto LABEL_21;
  }

  if (!*(a2 + 32))
  {
    v11 = *re::videoLogObjects(VideoAudioControlComponentUnderneathParent);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = 2983;
    v12 = "VideoPlayerComponentHelper line: %d, parentTFComp is nullptr";
LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 8u);
    return;
  }

  if (*(a1 + 2) == 1 || !*(a1 + 2) && *(a1 + 3) == 1)
  {
    re::TransformService::worldTransform(*(a1 + 14688), v5, 0, buf);
    re::TransformService::worldTransform(*(a1 + 14688), a2, 0, v15);
    v8 = vmvnq_s8(vceqq_f32(*buf, v15[0]));
    v8.i32[3] = v8.i32[2];
    if ((vmaxvq_u32(v8) & 0x80000000) != 0 || (vmaxvq_u32(vmvnq_s8(vceqq_f32(v17, v15[1]))) & 0x80000000) != 0 || (v9 = vmvnq_s8(vceqq_f32(v18, v15[2])), v9.i32[3] = v9.i32[2], (vmaxvq_u32(v9) & 0x80000000) != 0))
    {
      v10 = re::VideoDefaults::logEnabled(v7);
      if (v10)
      {
        v13 = *re::videoLogObjects(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14[0].i16[0] = 0;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->updateAudioSrcPosition :: Video :: Updating the AudioSrc's World SRT", v14, 2u);
        }
      }

      re::TransformService::worldTransform(*(a1 + 14688), a2, 0, v14);
      re::ecs2::TransformComponent::setWorldSRT(v6, v14, 0);
      re::ecs2::Component::markDirty(v6);
    }
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::setVideoAssetContentInfo(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = re::VideoDefaults::logEnabled(a1);
  if (v4)
  {
    v7 = *re::videoLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = a2[1];
      v10[0] = 67109376;
      v10[1] = v8;
      v11 = 1024;
      v12 = v9;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper::impl::VideoAssetContentInfo]: contentType is set to %d, stereoType is set to %d", v10, 0xEu);
    }
  }

  v5 = a1[2];
  v6 = *a2;
  if (v5 != v6)
  {
    a1[3] = v5;
    a1[2] = v6;
    *a1 = 1;
    a1[5] = 0;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::handleEntitiesPosition(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v4 = re::VideoDefaults::logEnabled(this);
  if (v4)
  {
    v27 = *re::videoLogObjects(v4);
    v4 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Starting the process of updating the entity positions", buf, 2u);
    }
  }

  if (a2)
  {
    if (re::VideoDefaults::loadingTexAndHintEnabled(v4))
    {
      v5 = *(this + 1) == 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v6)
    {
      if (*(v6 + 72))
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 2;
    if (!*(this + 2))
    {
      v8 = 3;
    }

    if (*(this + v8) == 1 || v7)
    {
      v10 = *(a2 + 43);
      if (v10)
      {
        v11 = *(a2 + 45);
        v12 = 8 * v10;
        v13 = 8 * v10;
        v14 = v11;
        while (1)
        {
          v15 = *v14;
          if (((*v14)[36] ^ 0xF4664E2E6A44E25ALL) <= 1)
          {
            v6 = v15[37];
            if (v6 == "__InternalVPC-Screen__")
            {
              break;
            }

            v6 = strcmp(v6, "__InternalVPC-Screen__");
            if (!v6)
            {
              break;
            }
          }

          ++v14;
          v13 -= 8;
          if (!v13)
          {
            v15 = 0;
            break;
          }
        }

        while (1)
        {
          v16 = *v11;
          if (((*v11)[36] ^ 0x931CC76C0DD179BALL) <= 1)
          {
            v6 = v16[37];
            if (v6 == "__InternalVPC-ScreenGlowEntity__")
            {
              break;
            }

            v6 = strcmp(v6, "__InternalVPC-ScreenGlowEntity__");
            if (!v6)
            {
              break;
            }
          }

          ++v11;
          v12 -= 8;
          if (!v12)
          {
            v16 = 0;
            break;
          }
        }

        if (v15)
        {
          v17 = v15[32];
          if (!v17)
          {
            v25 = *re::videoLogObjects(v6);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Transform Component is nullptr";
            goto LABEL_46;
          }

          if (!*(a2 + 32))
          {
            v25 = *re::videoLogObjects(v6);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Parent Transform Component is nullptr";
            goto LABEL_46;
          }

          re::TransformService::worldTransform(*(this + 1836), v15, 0, buf);
          v31 = v33;
          re::TransformService::worldTransform(*(this + 1836), a2, 0, buf);
          v30 = v33;
          v19 = vmvnq_s8(vceqq_f32(v31, v33));
          v19.i32[3] = v19.i32[2];
          if ((vmaxvq_u32(v19) & 0x80000000) != 0)
          {
            v20 = re::VideoDefaults::logEnabled(v18);
            if (v20)
            {
              v28 = *re::videoLogObjects(v20);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Updating the screenEntity's World Position", buf, 2u);
              }
            }

            v18 = re::ecs2::TransformComponent::setWorldPosition(v17, v30.i64[0], v30.i64[1]);
          }

          if (v16)
          {
            v21 = v16[32];
            if (v21)
            {
              re::TransformService::worldTransform(*(this + 1836), v16, 0, buf);
              v23 = vmvnq_s8(vceqq_f32(v33, v30));
              v23.i32[3] = v23.i32[2];
              if ((vmaxvq_u32(v23) & 0x80000000) != 0)
              {
                v24 = re::VideoDefaults::logEnabled(v22);
                if (v24)
                {
                  v29 = *re::videoLogObjects(v24);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Updating the Screen Glow Entity World Position", buf, 2u);
                  }
                }

                re::ecs2::TransformComponent::setWorldPosition(v21, v30.i64[0], v30.i64[1]);
                re::ecs2::Component::markDirty(v21);
              }

              return;
            }

            v25 = *re::videoLogObjects(v18);
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 0;
            v26 = "[VideoPlayerComponentHelper]->handleEntitiesPosition :: Screen Glow Entity Transform Component is nullptr";
LABEL_46:
            _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::VideoPlayerComponentHelper::impl::isVideoEntityHierarchyValid(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  result = re::ecs2::VideoPlayerComponentHelper::impl::hasVideoEntityHierarchy(this, a2);
  if (result)
  {
    return re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
  }

  return result;
}

void re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeIn(re::ecs2::VideoPlayerComponentHelper::impl *this, float a2, float a3)
{
  if (*(this + 12500) == 3)
  {
    v7 = v3;
    v8 = v4;
    v5 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Invalid blur transition.", v6, 2u);
    }
  }

  else if (!*(this + 12500))
  {
    *(this + 12500) = 2;
    *(this + 3126) = a2;
    *(this + 3127) = a3;
    *(this + 3128) = 1.0 / a3;
    *(this + 12524) = 1;
  }
}

void re::ecs2::VideoPlayerComponentHelper::impl::startVideoBlurFadeOut(re::ecs2::VideoPlayerComponentHelper::impl *this)
{
  v3 = *(this + 12500);
  if (v3 == 2)
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Invalid blur transition.", v5, 2u);
    }
  }

  else if (v3 == 1)
  {
    *(this + 12500) = 3;
  }
}

uint64_t re::ecs2::VideoPlayerComponentHelper::impl::diffuseLightSpillNeeded(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1831);
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained;
  v3 = (*(WeakRetained + 74) >> 3) & 1;
  v4 = *(WeakRetained + 3);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) == 0)
    {
      v5 = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        if (*(v5 + 177) == 1)
        {
          v3 = 1;
        }

        else
        {
          v3 = v3;
        }
      }
    }
  }

  return v3;
}

void re::ecs2::VideoPlayerComponentHelper::impl::addAttachmentsToVideoComponent(re::ecs2::VideoPlayerComponentHelper::impl *this, re::ecs2::VideoComponent *a2)
{
  *&v52.var0 = 0xE7EFB84B1970EB62;
  v52.var1 = "REVideoAttachmentTextureVideoLoading";
  v53 = 0;
  v54 = &str_67;
  v3 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v52);
  if (v53)
  {
    if (v53)
    {
    }
  }

  v53 = 0;
  v54 = &str_67;
  if (*&v52.var0)
  {
    if (*&v52.var0)
    {
    }
  }

  *&v52.var0 = 0;
  v52.var1 = &str_67;
  *&v49.var0 = 0xC49C914A9995F024;
  v49.var1 = "REVideoAttachmentTextureVideoBlur";
  v50 = 0;
  v51 = &str_67;
  v4 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v49);
  if (v50)
  {
    if (v50)
    {
    }
  }

  v50 = 0;
  v51 = &str_67;
  if (*&v49.var0)
  {
    if (*&v49.var0)
    {
    }
  }

  *&v49.var0 = 0;
  v49.var1 = &str_67;
  *&v46.var0 = 0xFFB9D6614348A962;
  v46.var1 = "REVideoAttachmentChannelID1TexturePlane0";
  v47 = 0;
  v48 = &str_67;
  v5 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v46);
  if (v47)
  {
    if (v47)
    {
    }
  }

  v47 = 0;
  v48 = &str_67;
  if (*&v46.var0)
  {
    if (*&v46.var0)
    {
    }
  }

  *&v46.var0 = 0;
  v46.var1 = &str_67;
  *&v43.var0 = 0xFFB9D6614348A964;
  v43.var1 = "REVideoAttachmentChannelID1TexturePlane1";
  v44 = 0;
  v45 = &str_67;
  v6 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v43);
  if (v44)
  {
    if (v44)
    {
    }
  }

  v44 = 0;
  v45 = &str_67;
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0;
  v43.var1 = &str_67;
  *&v40.var0 = 0xFFB9D6614348A966;
  v40.var1 = "REVideoAttachmentChannelID1TexturePlane2";
  v41 = 0;
  v42 = &str_67;
  v7 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v40);
  if (v41)
  {
    if (v41)
    {
    }
  }

  v41 = 0;
  v42 = &str_67;
  if (*&v40.var0)
  {
    if (*&v40.var0)
    {
    }
  }

  *&v40.var0 = 0;
  v40.var1 = &str_67;
  *&v37.var0 = 0xA572F05B07043CA0;
  v37.var1 = "REVideoAttachmentChannelID2TexturePlane0";
  v38 = 0;
  v39 = &str_67;
  v8 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v37);
  if (v38)
  {
    if (v38)
    {
    }
  }

  v38 = 0;
  v39 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  *&v34.var0 = 0xA572F05B07043CA2;
  v34.var1 = "REVideoAttachmentChannelID2TexturePlane1";
  v35 = 0;
  v36 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v34);
  if (v35)
  {
    if (v35)
    {
    }
  }

  v35 = 0;
  v36 = &str_67;
  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  *&v31.var0 = 0xA572F05B07043CA4;
  v31.var1 = "REVideoAttachmentChannelID2TexturePlane2";
  v32 = 0;
  v33 = &str_67;
  v10 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v31);
  if (v32)
  {
    if (v32)
    {
    }
  }

  v32 = 0;
  v33 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  *&v28.var0 = 0x83807E236D5174B2;
  v28.var1 = "REVideoAttachmentConstantYCbCrMatrix";
  v29 = 0;
  v30 = &str_67;
  v11 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v28);
  if (v29)
  {
    if (v29)
    {
    }
  }

  v29 = 0;
  v30 = &str_67;
  if (*&v28.var0)
  {
    if (*&v28.var0)
    {
    }
  }

  *&v28.var0 = 0;
  v28.var1 = &str_67;
  *&v25.var0 = 0x652E145D102D3908;
  v25.var1 = "REVideoAttachmentConstantImageFunction";
  v26 = 0;
  v27 = &str_67;
  v12 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v25);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  if (*&v25.var0)
  {
    if (*&v25.var0)
    {
    }
  }

  *&v25.var0 = 0;
  v25.var1 = &str_67;
  *&v22.var0 = 0x963DA5D75AB5D342;
  v22.var1 = "REVideoAttachmentSpill";
  v23 = 0;
  v24 = &str_67;
  v13 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v22);
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }

  *&v22.var0 = 0;
  v22.var1 = &str_67;
  *&v19.var0 = 0xFFFDBC97C8B59A5ELL;
  v19.var1 = "REVideoAttachmentChannelID1TextureSpill";
  v20 = 0x99DA15AE15EB5CE4;
  v21 = "spillDiffuse[0]";
  v14 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v19);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v20 = 0;
  v21 = &str_67;
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  *&v19.var0 = 0;
  v19.var1 = &str_67;
  *&v16.var0 = 0x15DA6AD9A5BBA760;
  v16.var1 = "REVideoAttachmentChannelID2TextureSpill";
  v17 = 0x99DA15AE15EB5D22;
  v18 = "spillDiffuse[1]";
  v15 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((this + 120), &v16);
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }
}

re *re::ecs2::VideoPlayerComponentHelper::VideoPlayerComponentHelper(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 14808, 8);
  bzero(v9, 0x39D8uLL);
  re::ecs2::VideoPlayerComponentHelper::impl::impl(v9);
  *a1 = v9;
  v9[1836] = a2;
  v9[1837] = a3;
  v9[1838] = a4;
  return a1;
}

void re::ecs2::VideoPlayerComponentHelper::~VideoPlayerComponentHelper(id **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = re::globalAllocators(this)[2];
    re::ecs2::VideoPlayerComponentHelper::impl::~impl(v1);
    (*(*v2 + 40))(v2, v1);
  }
}

void re::ecs2::VideoPlayerComponentHelper::preBufferRetrievalUpdate(uint64_t *a1, unsigned __int8 *a2, __int128 *a3, re::AssetHandle *a4, re::AssetManager *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  re::AssetHandle::AssetHandle(v13, a4);
  re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(v12, a2, a3, v13, a5, a6, a7);
  re::AssetHandle::~AssetHandle(v13);
}

void re::ecs2::VideoPlayerComponentHelper::updateAudioSrcPosition(uint64_t *a1, re::ecs2::Entity *a2, const re::AssetHandle *a3)
{
  v4 = *a1;
  re::AssetHandle::AssetHandle(v5, a3);
  re::ecs2::VideoPlayerComponentHelper::impl::updateAudioSrcPosition(v4, a2);
  re::AssetHandle::~AssetHandle(v5);
}

void re::ecs2::VideoPlayerComponentHelper::setVideo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const re::AssetHandle *a7)
{
  v12 = *a1;
  re::AssetHandle::AssetHandle(v13, a7);
  re::ecs2::VideoPlayerComponentHelper::impl::setVideo(v12, a2, a3, a4, a5, a6, v13);
  re::AssetHandle::~AssetHandle(v13);
}

unint64_t re::ecs2::VideoPlayerComponentHelper::getViewportInfoForCurrentFrame(re::ecs2::VideoPlayerComponentHelper *this, const re::ecs2::Scene *a2)
{
  if (this && (v2 = *(re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8), *(this + 28) > v2) && (v3 = *(*(this + 30) + 8 * v2)) != 0 && (v4 = *(v3 + 384)) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 400);
    v8 = 8 * v4;
    do
    {
      v9 = *v7;
      v10 = (*v7)[2];
      if (v10 && (*(v10 + 304) & 1) != 0)
      {
        v12 = 0;
        v13 = 0;
        re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(v9, &v13, &v12);
        if (!((v13 == 0) | v6 & 1))
        {
          v6 = 1;
        }

        if (v12 && (v5 & 1) == 0)
        {
          v5 = 1;
        }
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v6 | (v5 << 8);
}

uint64_t *re::ecs2::CameraViewDescriptorsComponent::getCameraViewsCount(uint64_t *this, unint64_t *a2, unint64_t *a3)
{
  v5 = this;
  *a2 = 0;
  *a3 = 0;
  v10 = this;
  v12 = 0;
  if (this[27])
  {
    v6 = 0;
  }

  else if (this[32])
  {
    v6 = 1;
  }

  else
  {
    if (!this[37])
    {
      return this;
    }

    v6 = 2;
  }

  v11 = v6;
  do
  {
    if (*(re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(&v10) + 200))
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    ++*v7;
    this = re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator++(&v10);
  }

  while (v10 != v5 || v11 != 3 || v12 != 0);
  return this;
}

void media::OpacityAnimationEngine::~OpacityAnimationEngine(media::OpacityAnimationEngine *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 8 * v2;
    v4 = (this + 64);
    do
    {
      v5 = *v4++;
      re::internal::destroyPersistent<media::FloatAnimation>("~OpacityAnimationEngine", 23, v5);
      v3 -= 8;
    }

    while (v3);
  }

  *(this + 6) = 0;
  ++*(this + 14);
  re::FunctionBase<24ul,void ()(float)>::destroyCallable(this);
}

re::ecs2::VideoPlayerComponentHelper::impl *re::ecs2::VideoPlayerComponentHelper::impl::impl(re::ecs2::VideoPlayerComponentHelper::impl *this)
{
  v2 = this + 12288;
  *(this + 7) = 0;
  *this = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 2) = _D0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  v8 = re::globalAllocators(this);
  *(this + 9) = v8[2];
  *(this + 10) = 0;
  *(this + 88) = xmmword_1E308AA90;
  *(this + 13) = 0x3F80000000000000;
  v9 = -12384;
  do
  {
    v10 = this + v9;
    *(v10 + 1562) = 0;
    *(v10 + 3126) = 0;
    v9 += 2064;
  }

  while (v9);
  *(this + 3124) = 0x1000000;
  v2[212] = 0;
  *(this + 12504) = 0u;
  *(this + 12517) = 0;
  *(this + 1569) = re::globalAllocators(v8)[2];
  *(this + 1570) = 0;
  *(this + 3142) = 0;
  *(this + 1572) = 0;
  *(this + 3146) = 0;
  objc_initWeak(this + 1830, 0);
  objc_initWeak(this + 1831, 0);
  objc_initWeak(this + 1832, 0);
  *(this + 14664) = 0u;
  *(this + 14680) = 0u;
  *(this + 14696) = 0u;
  *(this + 1839) = 0;
  *(this + 1840) = 0x3F8000003F800000;
  *(this + 1841) = 1065353216;
  *(v2 + 1224) = 0;
  *(this + 3685) = 0;
  v2[2456] = -1;
  v2[2464] = 0;
  v2[2488] = 0;
  *(this + 1848) = 0;
  *(this + 1850) = 0;
  *(this + 1849) = 0;
  return this;
}

uint64_t re::ecs2::CameraViewDescriptorsComponent::ViewDescriptorIterator::operator*(void *a1)
{
  v1 = *(a1 + 2);
  switch(v1)
  {
    case 2:
      v2 = a1[2];
      if (*(*a1 + 296) > v2)
      {
        v3 = *(*a1 + 312);
        v4 = 1008;
        return v3 + v2 * v4;
      }

LABEL_15:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    case 1:
      v2 = a1[2];
      if (*(*a1 + 256) > v2)
      {
        v3 = *(*a1 + 272);
        goto LABEL_8;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_15;
    case 0:
      v2 = a1[2];
      if (*(*a1 + 216) > v2)
      {
        v3 = *(*a1 + 232);
LABEL_8:
        v4 = 960;
        return v3 + v2 * v4;
      }

LABEL_16:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      break;
  }

  return 0;
}

uint64_t re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 48 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 40) = a3;
  ++*(a1 + 28);
  return v7 + 48 * v5;
}

void re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

void *re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::IndexedTriangleMesh const*,re::AssetHandle,re::Hash<re::IndexedTriangleMesh const*>,re::EqualTo<re::IndexedTriangleMesh const*>,true,false>::allocEntry(v4, *(v7 + v5 + 40) % *(v4 + 6));
        result[1] = *(*(a2 + 16) + v5 + 8);
        v8 = (*(a2 + 16) + v5);
        result[3] = 0;
        result[4] = 0;
        result[2] = 0;
        result[3] = v8[3];
        v8[3] = 0;
        v9 = result[2];
        result[2] = 0;
        result[2] = v8[2];
        v8[2] = v9;
        v10 = result[4];
        result[4] = v8[4];
        v8[4] = v10;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::operator()(uint64_t a1, float *a2, float *a3, float *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  WeakRetained = objc_loadWeakRetained((v7 + 14640));
  if (WeakRetained)
  {

    v10 = re::VideoDefaults::logEnabled(v9);
    if (v10)
    {
      v34 = *re::videoLogObjects(v10);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v38 = v36;
        v39 = 2048;
        v40 = v5;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] m_screenMeshAnimationEngine.onUpdate: aspect ratio: %f, cornerRadius: %f", buf, 0x16u);
      }
    }

    v11 = objc_loadWeakRetained((v7 + 14640));
    v12 = v11 - 8;
    if (!v11)
    {
      v12 = 0;
    }

    v13 = *(v12 + 4);
    if ((*(v13 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    v14 = re::ecs2::EntityComponentCollection::get((v13 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v11)
    {
    }

    if (v14)
    {
      v15 = objc_loadWeakRetained((v7 + 14640));
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 4);
      if ((*(v17 + 304) & 0x80) != 0)
      {
        v17 = 0;
      }

      v18 = *(re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 196);
      if (v15)
      {
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_loadWeakRetained((v7 + 14640));
    v20 = v19;
    if (v19)
    {
      v21 = v19 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_loadWeakRetained((v7 + 14648));
    v23 = v22;
    if (v22)
    {
      v24 = v22 - 8;
    }

    else
    {
      v24 = 0;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *&_D0 = v36;
    re::ecs2::VideoPlayerComponentHelper::impl::regenerateScreenMesh(v7, v21, v24, *(a1 + 16), _D0, 1, v18, v5, v6);
    if (v23)
    {
    }

    if (v20)
    {
    }

    v30 = objc_loadWeakRetained((v7 + 14640));
    v31 = v30 - 8;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = re::ecs2::EntityComponentCollection::get((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v33 = v32;
    if (v30)
    {
    }

    if (v33)
    {
      if (*(v7 + 28) < v36)
      {
        *(v33 + 257) = 1;
      }
    }

    else
    {
      v35 = *re::videoLogObjects(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v38) = 1384;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "VideoPlayerComponentHelper line: %d, videoComponent is nullptr", buf, 8u);
      }
    }
  }
}

uint64_t re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF440;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::VideoPlayerComponentHelper::impl::preBufferRetrievalUpdate(float,vpc::ViewportInfo const&,re::ecs2::Entity *,re::AssetHandle,re::AssetManager *,re::RenderManager *,re::VideoManager *)::$_0,void ()(float,float,float,re::ecs2::SpatialMedia::ImmersiveTransition::AnimatableParameters)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF440;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::ecs2::allocInfo_AudioMixerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_240))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7740, "AudioMixerComponent");
    __cxa_guard_release(&_MergedGlobals_240);
  }

  return &unk_1EE1A7740;
}

void re::ecs2::initInfo_AudioMixerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x8F1F37482BD3D894;
  v14[1] = "AudioMixerComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A7720, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A7720);
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
      qword_1EE1A7730 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "mixGroups";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A7738 = v12;
      __cxa_guard_release(&qword_1EE1A7720);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A7730;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219AudioMixerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

uint64_t *re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info) = &unk_1F5CEF5C0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint64_t(1, a2);
  v7 = re::introspect_AudioMixGroup(1);
  if ((re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v8 = v7;
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::isInitialized = 1;
    v9 = *(v7 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186218 = 0x3000000007;
    dword_1EE186220 = v9;
    word_1EE186224 = 0;
    *&xmmword_1EE186228 = 0;
    *(&xmmword_1EE186228 + 1) = 0xFFFFFFFFLL;
    qword_1EE186238 = v6;
    unk_1EE186240 = 0;
    qword_1EE186248 = v8;
    unk_1EE186250 = 0;
    re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info = &unk_1F5CEF5C0;
    re::IntrospectionRegistry::add(v10, v11);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info, &v18);
    if (BYTE8(v18))
    {
      v12 = v19;
    }

    else
    {
      v12 = &v18 + 9;
    }

    if (v18 && (BYTE8(v18) & 1) != 0)
    {
      (*(*v18 + 40))();
    }

    v13 = v6[2];
    v17 = *(v8 + 32);
    v18 = v13;
    xmmword_1EE186228 = v16;
    if (v20)
    {
      if (v20)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v14 = re::introspectionSharedMutex(v7);
    std::__shared_mutex_base::unlock(v14);
  }

  return &re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::ecs2::AudioMixerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEF4A8;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioMixerComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEF4A8;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 116) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_AudioMixerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7728))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A77D0, "AudioMixerSystem");
    __cxa_guard_release(&qword_1EE1A7728);
  }

  return &unk_1EE1A77D0;
}

void re::ecs2::initInfo_AudioMixerSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xBEC6F30AB275C04;
  v6[1] = "AudioMixerSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioMixerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioMixerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioMixerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::AudioMixerSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CEF500;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioMixerSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CEF500;
  result[28] = 0;
  return result;
}

void re::ecs2::AudioMixerComponent::~AudioMixerComponent(re::ecs2::AudioMixerComponent *this)
{
  *this = &unk_1F5CEF4A8;
  v2 = this + 32;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 10);
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioMixerComponent::~AudioMixerComponent(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(re::ecs2::AudioMixerComponent *this, uint64_t a2)
{
  v5 = a2;
  result = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v5);
  if (result)
  {
    v4 = *(result + 124);
    return re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(this + 80, &v5, &v4);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup const&>(a1, &v13, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 152 * v7;
  v8 = v9 + 16;
  re::DynamicString::operator=((v9 + 16), a3);
  *(v9 + 48) = *(a3 + 32);
  re::DynamicArray<unsigned long long>::operator=(v9 + 64, (a3 + 48));
  v10 = *(a3 + 120);
  v11 = *(a3 + 104);
  *(v9 + 104) = *(a3 + 88);
  *(v9 + 120) = v11;
  *(v9 + 136) = v10;
  return v8;
}

_anonymous_namespace_ *re::ecs2::AudioMixerSystem::willAddSystemToECSService(re::ecs2::AudioMixerSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
  }

  return result;
}

double re::ecs2::AudioMixerSystem::willAddSceneToECSService(re::ecs2::AudioMixerSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), &v5);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 184), &v5);
  }

  return result;
}

void re::ecs2::AudioMixerSystem::willRemoveSceneFromECSService(re::ecs2::AudioMixerSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v4);
  }
}

uint64_t re::ecs2::AudioMixerSystem::update(uint64_t result, int a2, uint64_t a3)
{
  v172 = *MEMORY[0x1E69E9840];
  if (*(result + 224))
  {
    v5 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v157);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v156, 3095, v5);
    v6 = *(a3 + 200);
    if (!v6)
    {
      goto LABEL_246;
    }

    v7 = *(a3 + 216);
    v145 = &v7[v6];
    v8 = *&a2;
    v9 = &unk_1EE187000;
    __asm { FMOV            V9.2S, #1.0 }

    v144 = v5;
    while (1)
    {
      v14 = *v7;
      v15 = (*(**(v5 + 224) + 16))(*(v5 + 224), *v7);
      if (!v15)
      {
        goto LABEL_245;
      }

      v147 = v7;
      v16 = *(*(v14 + 104) + 288);
      v148 = v15;
      v17 = (*(*v15 + 744))();
      v163 = 0u;
      v164 = 0u;
      v165 = 1065353216;
      v154 = v14;
      v18 = re::ecs2::SceneComponentTable::get((v14 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v18)
      {
        v19 = *(v18 + 384);
        if (v19)
        {
          v20 = *(v18 + 400);
          v21 = 8 * v19;
          while (1)
          {
            v22 = *v20;
            v23 = *(*v20 + 16);
            if (v23)
            {
              break;
            }

LABEL_22:
            ++v20;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_23;
            }
          }

          v24 = *(v23 + 216);
          if (!v24)
          {
            goto LABEL_12;
          }

          if (re::ecs2::NetworkComponent::owningProcessType(*(v23 + 216)))
          {
LABEL_18:
            v27 = re::ecs2::EntityComponentCollection::get((*(v22 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v27)
            {
              v28 = (v27 + 32);
            }

            else
            {
              v28 = &re::kInvalidAudioPlaybackConnectionIdentifier;
            }

            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v163, v28);
            goto LABEL_22;
          }

          v23 = *(v22 + 16);
          if (v23)
          {
LABEL_12:
            v25 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v25)
            {
              v23 = *(v25 + 32);
            }

            else
            {
              v23 = 0;
            }
          }

          if (v23 != v17)
          {
            v26 = re::ecs2::EntityComponentCollection::getOrAdd((*(v22 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            *(v26 + 4) = v17;
            if (v24)
            {
              re::ecs2::NetworkComponent::markDirty(v24, v26);
            }
          }

          goto LABEL_18;
        }
      }

LABEL_23:
      v29 = re::ecs2::SceneComponentTable::get((v154 + 200), v9[491]);
      if (v29)
      {
        v30 = *(v29 + 384);
        if (v30)
        {
          v31 = *(v29 + 400);
          v32 = 8 * v30;
          do
          {
            v33 = *(*v31 + 16);
            if (v33)
            {
              v34 = *(v33 + 216);
              if (!v34 || !re::ecs2::NetworkComponent::owningProcessType(*(v33 + 216)))
              {
                v35 = re::ecs2::EntityComponentCollection::getOrAdd((v33 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
                if (*(v35 + 4) != v17)
                {
                  *(v35 + 4) = v17;
                  if (v34)
                  {
                    re::ecs2::NetworkComponent::markDirty(v34, v35);
                  }
                }
              }
            }

            v31 += 8;
            v32 -= 8;
          }

          while (v32);
        }
      }

      if (((*(*v148 + 568))(v148) & 1) == 0)
      {
        v133 = re::ecs2::SceneComponentTable::get((v154 + 200), v9[491]);
        if (v133)
        {
          v134 = *(v133 + 384);
          if (v134)
          {
            v135 = *(v133 + 400);
            v136 = &v135[v134];
            do
            {
              v137 = *v135;
              v138 = *(*v135 + 64);
              if (v138)
              {
                v139 = 0;
                v140 = *(v137 + 48);
                while (1)
                {
                  v141 = *v140;
                  v140 += 38;
                  if (v141 < 0)
                  {
                    break;
                  }

                  if (v138 == ++v139)
                  {
                    LODWORD(v139) = *(*v135 + 64);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v139) = 0;
              }

LABEL_242:
              while (v139 != v138)
              {
                v142 = *(v137 + 48) + 152 * v139;
                re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v137, *(v142 + 48));
                re::AudioMixGroup::applyRamp((v142 + 16), v8);
                v143 = *(v137 + 64);
                if (v143 <= v139 + 1)
                {
                  v143 = v139 + 1;
                }

                while (v143 - 1 != v139)
                {
                  LODWORD(v139) = v139 + 1;
                  if ((*(*(v137 + 48) + 152 * v139) & 0x80000000) != 0)
                  {
                    goto LABEL_242;
                  }
                }

                LODWORD(v139) = v143;
              }

              ++v135;
            }

            while (v135 != v136);
          }
        }

        goto LABEL_244;
      }

      v36 = v154;
      v155 = v164;
      if (!v164)
      {
        goto LABEL_244;
      }

      v149 = v16 >> 1;
      do
      {
        v37 = *(v36 + 224);
        v38 = *(re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
        if (v37 <= v38)
        {
          goto LABEL_225;
        }

        v39 = *(*(v154 + 240) + 8 * v38);
        if (!v39)
        {
          goto LABEL_225;
        }

        v40 = *(v39 + 384);
        if (!v40)
        {
          goto LABEL_225;
        }

        v41 = 0;
        v42 = 0;
        v43 = v155[2];
        v44 = *(v39 + 400);
        v45 = 8 * v40;
        do
        {
          v46 = *v44;
          v47 = *(*v44 + 16);
          if (v47 && (*(v47 + 304) & 1) != 0)
          {
            v48 = re::ecs2::EntityComponentCollection::get((v47 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            v49 = v48 ? *(v48 + 32) : 0;
            if (v49 == v43)
            {
              v50 = *(*(v46 + 16) + 216);
              if (!v50)
              {
                goto LABEL_52;
              }

              v51 = re::ecs2::NetworkComponent::owningProcessType(v50);
              if (((v51 != 0) & v41) == 0)
              {
                v42 = v46;
                v41 = 1;
              }

              if (!v51)
              {
                goto LABEL_52;
              }
            }
          }

          ++v44;
          v45 -= 8;
        }

        while (v45);
        v46 = v42;
        if ((v41 & 1) == 0)
        {
          goto LABEL_225;
        }

LABEL_52:
        v52 = *(*(v46 + 16) + 216);
        if (v52)
        {
          v53 = re::ecs2::NetworkComponent::owningProcessType(v52);
          if (v53)
          {
            _ZF = v155[2] == 0;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            goto LABEL_225;
          }

          v146 = v53 != 0;
        }

        else
        {
          v146 = 0;
        }

        *__p = 0u;
        *v161 = 0u;
        v162 = 1065353216;
        v55 = re::ecs2::SceneComponentTable::get((v154 + 200), v9[491]);
        if (!v55)
        {
          goto LABEL_116;
        }

        v56 = *(v55 + 384);
        if (!v56)
        {
          goto LABEL_116;
        }

        v57 = *(v55 + 400);
        v152 = &v57[v56];
        do
        {
          v58 = *v57;
          v59 = *(re::ecs2::EntityComponentCollection::get((*(*v57 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 32);
          if (v59 != v155[2])
          {
            goto LABEL_71;
          }

          v150 = v57;
          v60 = *(v58 + 64);
          if (v60)
          {
            v61 = 0;
            v62 = *(v58 + 48);
            while (1)
            {
              v63 = *v62;
              v62 += 38;
              if (v63 < 0)
              {
                break;
              }

              if (v60 == ++v61)
              {
                v61 = *(v58 + 64);
                break;
              }
            }
          }

          else
          {
            v61 = 0;
          }

          if (v60 == v61)
          {
            goto LABEL_70;
          }

          LODWORD(v64) = v61;
          do
          {
            v65 = (*(v58 + 48) + 152 * v61 + 16);
            re::DynamicString::DynamicString(&v166, v65);
            v159.__r_.__value_.__r.__words[0] = v59;
            v66 = re::Hash<re::DynamicString>::operator()(&__dst, &v166);
            MurmurHash3_x64_128(&v159, 8uLL, 0, &__dst);
            v67 = *&__dst.__r_.__value_.__l.__data_;
            if (v166)
            {
              if (BYTE8(v166))
              {
                (*(*v166 + 40))();
              }

              v166 = 0u;
              v167 = 0u;
            }

            v68 = ((v66 << 6) - 0x61C8864680B583E9 + (v66 >> 2) + ((*(&v67 + 1) - 0x61C8864680B583E9 + (v67 << 6) + (v67 >> 2)) ^ v67)) ^ v66;
            if (!__p[1])
            {
              goto LABEL_94;
            }

            v69 = vcnt_s8(__p[1]);
            v69.i16[0] = vaddlv_u8(v69);
            if (v69.u32[0] > 1uLL)
            {
              v70 = ((v66 << 6) - 0x61C8864680B583E9 + (v66 >> 2) + ((*(&v67 + 1) - 0x61C8864680B583E9 + (v67 << 6) + (v67 >> 2)) ^ v67)) ^ v66;
              if (__p[1] <= v68)
              {
                v70 = v68 % __p[1];
              }
            }

            else
            {
              v70 = (__p[1] - 1) & v68;
            }

            v71 = *(__p[0] + v70);
            if (!v71 || (v72 = *v71) == 0)
            {
LABEL_94:
              operator new();
            }

            while (1)
            {
              v73 = v72[1];
              if (v73 == v68)
              {
                break;
              }

              if (v69.u32[0] > 1uLL)
              {
                if (v73 >= __p[1])
                {
                  v73 %= __p[1];
                }
              }

              else
              {
                v73 &= __p[1] - 1;
              }

              if (v73 != v70)
              {
                goto LABEL_94;
              }

LABEL_93:
              v72 = *v72;
              if (!v72)
              {
                goto LABEL_94;
              }
            }

            if (v72[2] != v68)
            {
              goto LABEL_93;
            }

            v75 = v72[4];
            v74 = v72[5];
            if (v75 >= v74)
            {
              v77 = v72[3];
              v78 = (v75 - v77) >> 4;
              v79 = v78 + 1;
              if (!((v78 + 1) >> 60))
              {
                v80 = v74 - v77;
                if (v80 >> 3 > v79)
                {
                  v79 = v80 >> 3;
                }

                if (v80 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v81 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v81 = v79;
                }

                if (v81)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(v81);
                }

                v82 = (16 * v78);
                *v82 = v65;
                v82[1] = v58;
                v76 = 16 * v78 + 16;
                v83 = v72[3];
                v84 = v72[4] - v83;
                v85 = 16 * v78 - v84;
                memcpy(v82 - v84, v83, v84);
                v86 = v72[3];
                v72[3] = v85;
                v72[4] = v76;
                v72[5] = 0;
                if (v86)
                {
                  operator delete(v86);
                }

                goto LABEL_107;
              }

LABEL_248:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *v75 = v65;
            v75[1] = v58;
            v76 = (v75 + 2);
LABEL_107:
            v72[4] = v76;
            v87 = *(v58 + 64);
            if (v87 <= v64 + 1)
            {
              v88 = (v64 + 1);
            }

            else
            {
              v88 = v87;
            }

            while (v88 - 1 != v64)
            {
              v64 = (v64 + 1);
              if ((*(*(v58 + 48) + 152 * v64) & 0x80000000) != 0)
              {
                v61 = v64;
                LODWORD(v88) = v64;
                goto LABEL_114;
              }
            }

            v61 = v88;
LABEL_114:
            LODWORD(v64) = v88;
          }

          while (v87 != v88);
LABEL_70:
          v57 = v150;
LABEL_71:
          ++v57;
        }

        while (v57 != v152);
LABEL_116:
        v89 = v161[0];
        if (v161[0])
        {
          while (1)
          {
            v91 = v89[3];
            v90 = v89[4];
            v92 = v90 - v91;
            if (v90 != v91)
            {
              break;
            }

            v89 = *v89;
            if (!v89)
            {
              goto LABEL_121;
            }
          }

          if (!((v92 >> 4) >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(v92 >> 4);
          }

          goto LABEL_248;
        }

LABEL_121:
        v93 = v146;
        if (v155[2])
        {
          v93 = 0;
        }

        if (v93)
        {
          goto LABEL_219;
        }

        v166 = 0u;
        v167 = 0u;
        LODWORD(v168) = 1065353216;
        v151 = *(v46 + 64);
        if (v151)
        {
          v94 = 0;
          v95 = *(v46 + 48);
          while (1)
          {
            v96 = *v95;
            v95 += 38;
            if (v96 < 0)
            {
              break;
            }

            if (v151 == ++v94)
            {
              LODWORD(v94) = *(v46 + 64);
              break;
            }
          }
        }

        else
        {
          LODWORD(v94) = 0;
        }

        if (v94 == v151)
        {
          goto LABEL_218;
        }

        v97 = 0;
        while (2)
        {
          v98 = *(v46 + 48) + 152 * v94;
          v99 = v98 + 16;
          if (*(v98 + 24))
          {
            v100 = *(v98 + 32);
          }

          else
          {
            v100 = (v98 + 25);
          }

          v101 = strlen(v100);
          if (v101 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v102 = v101;
          v153 = v97;
          if (v101 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v101;
          if (v101)
          {
            memmove(&__dst, v100, v101);
          }

          __dst.__r_.__value_.__s.__data_[v102] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          v105 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v159, p_dst, size);
          v106 = v105;
          v107 = *(&v166 + 1);
          if (!*(&v166 + 1))
          {
            goto LABEL_163;
          }

          v108 = vcnt_s8(*(&v166 + 8));
          v108.i16[0] = vaddlv_u8(v108);
          v109 = v108.u32[0];
          if (v108.u32[0] > 1uLL)
          {
            v110 = v105;
            if (v105 >= *(&v166 + 1))
            {
              v110 = v105 % *(&v166 + 1);
            }
          }

          else
          {
            v110 = (*(&v166 + 1) - 1) & v105;
          }

          v111 = *(v166 + 8 * v110);
          if (!v111 || (v112 = *v111) == 0)
          {
LABEL_163:
            operator new();
          }

          while (2)
          {
            v113 = v112[1];
            if (v113 != v106)
            {
              if (v109 > 1)
              {
                if (v113 >= v107)
                {
                  v113 %= v107;
                }
              }

              else
              {
                v113 &= v107 - 1;
              }

              if (v113 != v110)
              {
                goto LABEL_163;
              }

LABEL_162:
              v112 = *v112;
              if (!v112)
              {
                goto LABEL_163;
              }

              continue;
            }

            break;
          }

          if (!std::equal_to<std::string>::operator()[abi:ne200100](&v166, v112 + 2, &__dst.__r_.__value_.__l.__data_))
          {
            goto LABEL_162;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v114 = v155[2];
          __dst.__r_.__value_.__r.__words[0] = *(v99 + 32);
          v115 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v46 + 32, &__dst);
          v116 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v46 + 80, &__dst);
          v117 = 1;
          if (v115 && v116)
          {
            v117 = *v116 != *(v115 + 124);
          }

          if (!(*(*v148 + 472))(v148, v149, v114, v99, v117))
          {
            goto LABEL_186;
          }

          re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v46, *(v99 + 32));
          if (!__p[1])
          {
            goto LABEL_186;
          }

          v118 = *(v99 + 32);
          v119 = vcnt_s8(__p[1]);
          v119.i16[0] = vaddlv_u8(v119);
          if (v119.u32[0] > 1uLL)
          {
            v120 = *(v99 + 32);
            if (v118 >= __p[1])
            {
              v120 = v118 % __p[1];
            }
          }

          else
          {
            v120 = (__p[1] - 1) & v118;
          }

          v121 = *(__p[0] + v120);
          if (!v121)
          {
            goto LABEL_186;
          }

          v122 = *v121;
          if (!v122)
          {
            goto LABEL_186;
          }

          while (2)
          {
            v123 = v122[1];
            if (v123 != v118)
            {
              if (v119.u32[0] > 1uLL)
              {
                if (v123 >= __p[1])
                {
                  v123 %= __p[1];
                }
              }

              else
              {
                v123 &= __p[1] - 1;
              }

              if (v123 != v120)
              {
                goto LABEL_186;
              }

LABEL_185:
              v122 = *v122;
              if (!v122)
              {
                goto LABEL_186;
              }

              continue;
            }

            break;
          }

          if (v122[2] != v118)
          {
            goto LABEL_185;
          }

          v125 = v122[3];
          v126 = v122[4];
          while (v125 != v126)
          {
            if (*v125)
            {
              re::ecs2::AudioMixerComponent::markMixGroupGainChangeClean(v125[1], *(*v125 + 4));
            }

            v125 += 2;
          }

LABEL_186:
          v97 = *(v112 + 48) | v153;
          v124 = *(v46 + 64);
          if (v124 <= v94 + 1)
          {
            v124 = v94 + 1;
          }

          while (v124 - 1 != v94)
          {
            LODWORD(v94) = v94 + 1;
            if ((*(*(v46 + 48) + 152 * v94) & 0x80000000) != 0)
            {
              goto LABEL_192;
            }
          }

          LODWORD(v94) = v124;
LABEL_192:
          if (v94 != v151)
          {
            continue;
          }

          break;
        }

        for (i = v167; i; i = *i)
        {
          if (*(i + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, i[2], i[3]);
          }

          else
          {
            __dst = *(i + 2);
          }

          v170 = i[5];
          v171 = *(i + 12);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v159, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            if (v97)
            {
LABEL_206:
              if ((v171 & 1) == 0)
              {
                HIDWORD(v170) = 0;
                BYTE1(v171) = 1;
              }
            }
          }

          else
          {
            v159 = __dst;
            if (v97)
            {
              goto LABEL_206;
            }
          }

          v128 = v155[2];
          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v158, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
          }

          else
          {
            v158 = v159;
          }

          (*(*v148 + 464))(v148, v149, v128, &v158, &v170);
          if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v158.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v159.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

LABEL_218:
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&v166);
LABEL_219:
        v129 = v161[0];
        v9 = &unk_1EE187000;
        if (v161[0])
        {
          do
          {
            v130 = *v129;
            v131 = v129[3];
            if (v131)
            {
              v129[4] = v131;
              operator delete(v131);
            }

            operator delete(v129);
            v129 = v130;
          }

          while (v130);
        }

        v132 = __p[0];
        __p[0] = 0;
        if (v132)
        {
          operator delete(v132);
        }

LABEL_225:
        v36 = v154;
        v155 = *v155;
      }

      while (v155);
LABEL_244:
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v163);
      v5 = v144;
      v7 = v147;
LABEL_245:
      if (++v7 == v145)
      {
LABEL_246:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v156);
        return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(&v157);
      }
    }
  }

  return result;
}

void re::ecs2::AudioMixerSystem::~AudioMixerSystem(re::ecs2::AudioMixerSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::ecs2::AudioMixerSystem::AudioMixGroupMergeData>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v26);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(a1, &v19, &v25);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(v21, a1, 8, 1u, 0, &v19);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, -1, &v22, re::internal::less<unsigned long long>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(&v19, a1, a5);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  *&v14[2] = 0;
  WORD4(v14[2]) = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  *(&v14[2] + 12) = xmmword_1E30474D0;
  *(&v14[3] + 12) = 0uLL;
  HIDWORD(v14[4]) = 1;
  v10 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v12);
  if (*&v14[0])
  {
    if (*&v14[2])
    {
      (*(**&v14[0] + 40))();
    }

    *&v14[2] = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (*&v12[0] && (BYTE8(v12[0]) & 1) != 0)
  {
    (*(**&v12[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 38;
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
    v10 = *(a2 + 16) + 152 * v6;
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
      if ((*(*(a2 + 16) + 152 * v6) & 0x80000000) != 0)
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

double re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 152 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicArray<unsigned long>::deinit((v2 + 16));

    return re::DynamicString::deinit((v2 + 4));
  }

  return result;
}

void re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 72;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 72) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + 72) % *(v4 + 24));
        v8 = *(a2 + 16) + v6;
        *(result + 8) = *(v8 - 64);
        *(result + 16) = 0u;
        *(result + 32) = 0u;
        *(result + 40) = *(v8 - 32);
        v9 = *(v8 - 48);
        *(result + 16) = *(v8 - 56);
        *(v8 - 56) = 0;
        v10 = *(v8 - 40);
        *(v8 - 32) = 0;
        v12 = *(result + 24);
        v11 = *(result + 32);
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(v8 - 48) = v12;
        *(v8 - 40) = v11;
        *(result + 48) = *(v8 - 24);
        *(result + 96) = 0;
        *(result + 88) = 0;
        *(result + 72) = 0;
        *(result + 80) = 0;
        *(result + 64) = 0;
        v13 = *v8;
        *(result + 64) = *(v8 - 8);
        *(result + 72) = v13;
        *(v8 - 8) = 0;
        *v8 = 0;
        v14 = *(result + 80);
        *(result + 80) = *(v8 + 8);
        *(v8 + 8) = v14;
        v15 = *(result + 96);
        *(result + 96) = *(v8 + 24);
        *(v8 + 24) = v15;
        ++*(v8 + 16);
        ++*(result + 88);
        v16 = *(v8 + 32);
        v17 = *(v8 + 48);
        *(result + 136) = *(v8 + 64);
        *(result + 120) = v17;
        *(result + 104) = v16;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 152;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 152 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 152 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 144) = a3;
  ++*(a1 + 28);
  return v7 + 152 * v5;
}

void re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  v7 = HIDWORD(v15);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup>(a1, &v14, a2, a3);
    return v8;
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 152 * v7;
    v9 = v10 + 16;
    re::DynamicString::operator=((v10 + 16), a3);
    *(v10 + 48) = *(a3 + 32);
    re::DynamicArray<unsigned long long>::operator=(v10 + 64, a3 + 48);
    v11 = *(a3 + 120);
    v12 = *(a3 + 104);
    *(v10 + 104) = *(a3 + 88);
    *(v10 + 120) = v12;
    *(v10 + 136) = v11;
  }

  return v9;
}

__n128 re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  v7 += 16;
  *(v7 + 24) = a4[3];
  v9 = *a4;
  v10 = a4[1];
  *(v7 - 8) = v8;
  *v7 = v9;
  *a4 = 0;
  v11 = a4[2];
  a4[3] = 0;
  v13 = *(v7 + 8);
  v12 = *(v7 + 16);
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  a4[1] = v13;
  a4[2] = v12;
  *(v7 + 32) = *(a4 + 2);
  *(v7 + 80) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  v14 = a4[7];
  *(v7 + 48) = a4[6];
  *(v7 + 56) = v14;
  a4[6] = 0;
  a4[7] = 0;
  v15 = *(v7 + 64);
  *(v7 + 64) = a4[8];
  a4[8] = v15;
  v16 = *(v7 + 80);
  *(v7 + 80) = a4[10];
  a4[10] = v16;
  ++*(a4 + 18);
  ++*(v7 + 72);
  result = *(a4 + 11);
  v18 = *(a4 + 13);
  *(v7 + 120) = a4[15];
  *(v7 + 104) = v18;
  *(v7 + 88) = result;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 152 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 152 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 152 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 152 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
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

uint64_t re::DynamicArray<unsigned long long>::operator=(uint64_t result, uint64_t a2)
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

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t a1)
{
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

  return re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, uint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 152 * v4) & 0x80000000) != 0)
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
          v5 += 38;
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

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs219AudioMixerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::AudioMixGroup const&>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  re::DynamicString::DynamicString((v7 + 16), a4);
  *(v7 + 48) = *(a4 + 32);
  re::DynamicArray<char const*>::DynamicArray(v7 + 64, (a4 + 48));
  v8 = *(a4 + 88);
  v9 = *(a4 + 104);
  *(v7 + 136) = *(a4 + 120);
  *(v7 + 120) = v9;
  *(v7 + 104) = v8;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::activateComponents,re::ecs2::AudioMixerSystem>(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *(*a3 + 16);
      v7 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v8 = *(v6 + 296);
          v9 = *(v6 + 312);
        }

        else
        {
          v9 = 0;
          v8 = "(null)";
        }

        *buf = 136315394;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "AudioMixerSystem::activateComponents() AudioMixerComponent activating, name='%s', entityId=%llu", buf, 0x16u);
      }

      a3 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioMixerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioMixerSystem::deactivateComponents,re::ecs2::AudioMixerSystem>(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *(*a3 + 16);
      v7 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          v8 = *(v6 + 296);
          v9 = *(v6 + 312);
        }

        else
        {
          v9 = 0;
          v8 = "(null)";
        }

        *buf = 136315394;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "AudioMixerSystem::deactivateComponents() AudioMixerComponent deactivating, name='%s', entityId=%llu", buf, 0x16u);
      }

      a3 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t (***re::AVFVideoFileWriter::stopVideoFileWriter(uint64_t a1, __int128 *a2, uint64_t a3))(void)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke;
  v6[3] = &__block_descriptor_104_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = *(a3 + 24);
  v6[4] = a1;
  v7[3] = v4;
  v7[4] = 0;
  re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v7, a3);
  dispatch_async(v3, v6);
  return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v7);
}

uint64_t (***___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke(uint64_t (***result)(void)))(void)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if ((v1[6] & 1) == 0)
  {
    v2 = result;
    [v1[1] markAsFinished];
    v3 = *v1;
    v6 = *(v2 + 5);
    v7 = v2[12];
    [v3 endSessionAtSourceTime:&v6];
    v4 = *v1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_2;
    v8[3] = &__block_descriptor_80_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
    v5 = v2[8];
    v8[4] = v1;
    v9[3] = v5;
    v9[4] = 0;
    re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v9, (v2 + 5));
    [v4 finishWritingWithCompletionHandler:v8];
    *(v1 + 48) = 1;
    return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v9);
  }

  return result;
}

uint64_t (***___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_2(uint64_t a1))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_3;
  block[3] = &__block_descriptor_80_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE_e5_v8__0l;
  v3 = *(a1 + 64);
  block[4] = v1;
  v6[3] = v3;
  v6[4] = 0;
  re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(v6, a1 + 40);
  dispatch_async(v2, block);
  return re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v6);
}

void ___ZN2re18AVFVideoFileWriter19stopVideoFileWriterE6CMTimeNS_8FunctionIFvP5NSURLEEE_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  (*(**(a1 + 72) + 16))(*(a1 + 72), &v2);
}

uint64_t __copy_helper_block_a8_40c30_ZTSN2re8FunctionIFvP5NSURLEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  return re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(a1 + 40, a2 + 40);
}

void ___ZN2re18AVFVideoFileWriter34appendPixelBufferToVideoFileWriterEP10__CVBufferDv2_f6CMTimey_block_invoke(uint64_t a1)
{
  v50[8] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3[6].i8[0] == 1)
  {

    CVPixelBufferRelease(v2);
  }

  else
  {
    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(*(a1 + 40));
    PixelFormatType = CVPixelBufferGetPixelFormatType(*(a1 + 40));
    v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:Width height:Height mipmapped:0];
    v7 = [*&v3[7] newTextureWithDescriptor:v43 iosurface:CVPixelBufferGetIOSurface(*(a1 + 40)) plane:0];
    v8 = *MEMORY[0x1E69660D8];
    v49[0] = *MEMORY[0x1E6966100];
    v49[1] = v8;
    v50[0] = MEMORY[0x1E695E118];
    v50[1] = MEMORY[0x1E695E0F8];
    v49[2] = *MEMORY[0x1E6966208];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4].u32[0]];
    v50[2] = v9;
    v49[3] = *MEMORY[0x1E69660B8];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3[4].u32[1]];
    v11 = *MEMORY[0x1E6966140];
    v50[3] = v10;
    v50[4] = &unk_1F5D429D8;
    v12 = *MEMORY[0x1E6966020];
    v49[4] = v11;
    v49[5] = v12;
    v50[5] = &unk_1F5D429D8;
    v49[6] = *MEMORY[0x1E6966130];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
    v49[7] = *MEMORY[0x1E6966150];
    v50[6] = v13;
    v50[7] = &unk_1F5D429F0;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:8];

    pixelBufferOut = 0;
    Default = CFAllocatorGetDefault();
    CVPixelBufferCreate(Default, v3[4].u32[0], v3[4].u32[1], PixelFormatType, v14, &pixelBufferOut);
    v16 = [*&v3[7] newTextureWithDescriptor:*&v3[9] iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];
    v17 = [MEMORY[0x1E6974128] renderPassDescriptor];
    v18 = [v17 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:0];
    [v19 setTexture:v16];

    v20 = [v17 colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:0];
    [v21 setLoadAction:2];

    v22 = [v17 colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 setClearColor:{0.0, 0.0, 0.0, 1.0}];

    v24 = [*&v3[7] newCommandQueue];
    v25 = [v24 commandBuffer];
    v26 = [v25 renderCommandEncoderWithDescriptor:v17];
    if (*re::AppleBuild::get(v26) == 1)
    {
      v27 = @"texture resampling and padding encoder";
    }

    else
    {
      v27 = &stru_1F5D319D0;
    }

    [(re::AppleBuild *)v26 setLabel:v27];
    [(re::AppleBuild *)v26 setRenderPipelineState:*&v3[8]];
    *&v28 = Width;
    *(&v28 + 1) = Height;
    v45 = v28;
    v44 = vcvt_f32_u32(v3[4]);
    [(re::AppleBuild *)v26 setVertexBytes:&re::boxVertices length:32 atIndex:0];
    [(re::AppleBuild *)v26 setVertexBytes:&v45 length:8 atIndex:1];
    [(re::AppleBuild *)v26 setVertexBytes:a1 + 48 length:8 atIndex:2];
    [(re::AppleBuild *)v26 setVertexBytes:&v44 length:8 atIndex:3];
    [(re::AppleBuild *)v26 setFragmentTexture:v7 atIndex:0];
    [(re::AppleBuild *)v26 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [(re::AppleBuild *)v26 endEncoding];
    [v25 commit];
    [v25 waitUntilCompleted];
    CVPixelBufferRelease(*(a1 + 40));
    v29 = [*&v3[1] isReadyForMoreMediaData];
    if (v29)
    {
      v30 = v3[2];
      time = *(a1 + 64);
      v31 = [v30 appendPixelBuffer:pixelBufferOut withPresentationTime:&time];
      if ((v31 & 1) == 0)
      {
        v32 = *re::peerVideoStreamingLogObjects(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = *v3;
          v34 = v32;
          v35 = [v33 error];
          v36 = [v35 localizedDescription];
          time = *(a1 + 64);
          Seconds = CMTimeGetSeconds(&time);
          v38 = *(a1 + 56);
          LODWORD(time.value) = 138412802;
          *(&time.value + 4) = v36;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = Seconds;
          HIWORD(time.epoch) = 2048;
          v48 = v38;
          _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to append pixel buffer to video file output: %@, timestamp: %f, entity id: %llu", &time, 0x20u);
        }
      }
    }

    else
    {
      v39 = *re::peerVideoStreamingLogObjects(v29);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        time = *(a1 + 64);
        v40 = v39;
        v41 = CMTimeGetSeconds(&time);
        v42 = *(a1 + 56);
        LODWORD(time.value) = 134218240;
        *(&time.value + 4) = v41;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v42;
        _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Not ready for more pixel buffer, timestamp: %f, entity id: %llu", &time, 0x16u);
      }
    }

    CVPixelBufferRelease(pixelBufferOut);
  }
}

__n128 re::PeerVideoFileWriter::destroy(re::PeerVideoFileWriter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    re::AVFVideoFileWriter::~AVFVideoFileWriter(v2);
    MEMORY[0x1E6906520]();
    *(this + 8) = 0;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  if (*(this + 40))
  {
    *(this + 5) = 1;
    v4 = *(this + 6);
  }

  else
  {
    *(this + 40) = 0;
    v4 = this + 41;
  }

  *v4 = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0x3FF0000000000000;
  *(this + 96) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v5 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(this + 120) = *MEMORY[0x1E6960CC0];
  v7 = *(v5 + 16);
  *(this + 17) = v7;
  *(this + 9) = result;
  *(this + 20) = v7;
  return result;
}

void re::PeerVideoFileWriter::flush(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    lhs = *(a1 + 144);
    CMTimeMake(&rhs, 1, 90);
    CMTimeAdd(&v16, &lhs, &rhs);
    *(a1 + 144) = v16;
    if (*(a1 + 8))
    {
      v4 = *(a1 + 16);
    }

    else
    {
      v4 = a1 + 9;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    if (*(a1 + 40))
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = a1 + 41;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%llu-%llu_%ux%u_%f.%@", v5, *(a1 + 104), *(a1 + 112), *(a1 + 72), *(a1 + 80), *(a1 + 88), v7];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v10 = *(a1 + 64);
    v16 = *(a1 + 144);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re19PeerVideoFileWriter5flushENS_8FunctionIFvvEEE_block_invoke;
    aBlock[3] = &unk_1F5CEF6B8;
    v11 = *(a2 + 24);
    v18 = v9;
    v19[3] = v11;
    v19[4] = 0;
    v12 = v9;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v19, a2);
    v13 = _Block_copy(aBlock);
    v20[3] = re::globalAllocators(v13)[2];
    v21 = 0;
    v20[0] = &unk_1F5CEF6F8;
    v20[1] = _Block_copy(v13);
    v21 = v20;
    re::AVFVideoFileWriter::stopVideoFileWriter(v10, &v16.value, v20);
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v20);

    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v19);
  }
}

void ___ZN2re19PeerVideoFileWriter5flushENS_8FunctionIFvvEEE_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *(a1 + 32);
  v13 = 0;
  [v4 moveItemAtURL:v3 toURL:v5 error:&v13];
  v6 = v13;

  if (v6)
  {
    v8 = *re::peerVideoStreamingLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 path];
      v12 = [v6 localizedDescription];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to rename CALayer video file to: %@, error: %@", buf, 0x16u);
    }
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72));
}

uint64_t __copy_helper_block_a8_40c24_ZTSN2re8FunctionIFvvEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  return re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(a1 + 40, a2 + 40);
}

void re::PeerVideoFileWriter::appendFrame(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float64_t a5, float64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v20 = *re::peerVideoStreamingLogObjects(a1);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v21 = "[PeerVideoFileWriter] Invalid arg to appendFrame: pixelBuffer is nullptr";
    v22 = v20;
    v23 = 2;
    goto LABEL_15;
  }

  v8 = *(a1 + 112);
  v9 = *(a2 + 16);
  if (v8 == v9)
  {
    return;
  }

  memset(&v40, 0, sizeof(v40));
  CMTimeMake(&v40, v9, 90);
  *(a1 + 144) = v40;
  Width = CVPixelBufferGetWidth(*a2);
  Height = CVPixelBufferGetHeight(*a2);
  v14 = Height;
  if (!Width || !Height)
  {
    v24 = *re::peerVideoStreamingLogObjects(Height);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109376;
    *&buf[4] = Width;
    *&buf[8] = 1024;
    *&buf[10] = v14;
    v21 = "[PeerVideoFileWriter] Invalid arg to appendFrame: pixelBuffer width: %u, height: %u";
    v22 = v24;
    v23 = 14;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    return;
  }

  v15.f64[0] = a5;
  v16 = (a5 & 0xFFFFFFFFFFFFFFC0) + 64;
  v17 = (a6 & 0xFFFFFFFFFFFFFFC0) + 64;
  v18 = *(a1 + 64);
  if (!v18)
  {
    goto LABEL_21;
  }

  if (v16 != *(a1 + 72) || v17 != *(a1 + 80) || *(a1 + 96) != a4)
  {
    *(a1 + 64) = 0;
    if (*(a1 + 8))
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = a1 + 9;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    if (*(a1 + 40))
    {
      v26 = *(a1 + 48);
    }

    else
    {
      v26 = a1 + 41;
    }

    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%llu-%llu_%ux%u_%f.%@", v25, *(a1 + 104), *(a1 + 112), *(a1 + 72), *(a1 + 80), *(a1 + 88), v34];
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];
    *buf = *(a1 + 144);
    v45 = *(a1 + 160);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re19PeerVideoFileWriter11appendFrameERKNS_15InputVideoFrameEddyb_block_invoke;
    aBlock[3] = &unk_1E871D968;
    v38 = v28;
    v39 = v18;
    v29 = v28;
    v30 = _Block_copy(aBlock);
    v41[3] = re::globalAllocators(v30)[2];
    v42 = 0;
    v41[0] = &unk_1F5CEF6F8;
    v41[1] = _Block_copy(v30);
    v42 = v41;
    re::AVFVideoFileWriter::stopVideoFileWriter(v18, buf, v41);
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(v41);

    v17 = (a6 & 0xFFFFFFFFFFFFFFC0) + 64;
    v16 = (a5 & 0xFFFFFFFFFFFFFFC0) + 64;
LABEL_21:
    *(a1 + 72) = v16;
    *(a1 + 80) = v17;
    *(a1 + 96) = a4;
    *(a1 + 104) = *(a2 + 16);
    operator new();
  }

  *(a1 + 112) = *(a2 + 16);
  v31 = *a2;
  v43 = v40;
  if (v31)
  {
    v15.f64[1] = a6;
    v32 = vcvt_f32_f64(v15);
    CVPixelBufferRetain(v31);
    v33 = *(v18 + 40);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    v45 = ___ZN2re18AVFVideoFileWriter34appendPixelBufferToVideoFileWriterEP10__CVBufferDv2_f6CMTimey_block_invoke;
    v46 = &__block_descriptor_88_e5_v8__0l;
    v47 = v18;
    v48 = v31;
    v49 = v32;
    v51 = v43;
    v50 = a3;
    dispatch_async(v33, buf);
  }
}

void ___ZN2re19PeerVideoFileWriter11appendFrameERKNS_15InputVideoFrameEddyb_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(a1 + 32);
  v15 = 0;
  [v5 moveItemAtURL:v4 toURL:v6 error:&v15];

  v7 = v15;
  if (v7)
  {
    v9 = *re::peerVideoStreamingLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v9;
      v13 = [v11 path];
      v14 = [v7 localizedDescription];
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[PeerVideoFileWriter] Failed to rename CALayer video file to: %@, error: %@", buf, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    re::AVFVideoFileWriter::~AVFVideoFileWriter(v10);
    MEMORY[0x1E6906520]();
  }
}

uint64_t re::FunctionBase<24ul,void ()(NSURL *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(NSURL *)>::destroyCallable(uint64_t a1))(void)
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

void re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEF6F8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void *re::internal::Callable<void({block_pointer} {__strong})(NSURL *),void ()(NSURL *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEF6F8;
  a2[1] = _Block_copy(*(a1 + 8));
  return a2;
}

void re::ecs2::UISorter::recomputeCodirectionalGroupAverages(re::ecs2::UISorter *this, __n128 a2, double a3, double a4, double a5, float32x4_t a6)
{
  v7 = *(this + 8);
  if (v7)
  {
    v8 = 0;
    v9 = (*(this + 2) + 8);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  while (v8 != v7)
  {
    a2 = re::ecs2::UICodirectionalGroup::recomputeAverages(*(*(this + 2) + 24 * v8 + 16), a2, a3, a4, a5, a6);
    v11 = *(this + 8);
    if (v11 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    while (v11 - 1 != v8)
    {
      LODWORD(v8) = v8 + 1;
      if ((*(*(this + 2) + 24 * v8 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v8) = v11;
LABEL_14:
    ;
  }
}

__n128 re::ecs2::UICodirectionalGroup::recomputeAverages(re::ecs2::UICodirectionalGroup *this, __n128 result, double a3, double a4, double a5, float32x4_t a6)
{
  if (*(this + 144) == 1)
  {
    v68 = v6;
    v69 = v7;
    v9.i32[3] = 0;
    *(this + 7) = 0u;
    v10 = (this + 112);
    *(this + 8) = 0u;
    v11 = (this + 128);
    *(this + 144) = 0;
    if (*(this + 13))
    {
      v13 = *(this + 5);
      v12 = *(this + 6);
      v14 = vmulq_f32(v13, xmmword_1E3047680);
      v14.f32[0] = fabsf(v14.f32[2] + vaddv_f32(*v14.f32));
      a6.i32[0] = 0.5;
      v15 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v14, a6), 0), xmmword_1E3047670, xmmword_1E3047680);
      v16 = vsubq_f32(v12, vaddq_f32(v13, v12));
      v17 = vmulq_f32(v16, v16);
      v18 = vaddv_f32(*v17.f32);
      *v17.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18));
      *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18), vmul_f32(*v17.f32, *v17.f32)));
      v19 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v18), vmul_f32(*v17.f32, *v17.f32))).f32[0]);
      v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v21 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v15)), v19, vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL));
      v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
      v23 = vmulq_f32(v21, v21);
      *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
      *v23.f32 = vrsqrte_f32(v24);
      *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
      v32 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
      v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v19)), v32, v20);
      v26 = vmulq_f32(v12, v32);
      v27 = vmulq_f32(v12, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
      v28 = vadd_f32(vzip1_s32(*v26.i8, *v27.i8), vzip2_s32(*v26.i8, *v27.i8));
      v29 = vextq_s8(v27, v27, 8uLL);
      *v29.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *v29.f32), v28);
      v30 = vmulq_f32(v12, v19);
      v31 = __PAIR64__(v25.u32[0], v32.u32[1]);
      v9.i64[0] = __PAIR64__(v25.u32[1], v32.u32[2]);
      v32.i32[1] = v25.i32[2];
      v32.i32[2] = v19.i32[0];
      v33 = vnegq_f32(v29);
      v33.f32[2] = -(v30.f32[2] + vaddv_f32(*v30.f32));
      v34 = *(this + 14);
      if (v34)
      {
        v35 = 0;
        v36 = (*(this + 5) + 8);
        while (1)
        {
          v37 = *v36;
          v36 += 6;
          if (v37 < 0)
          {
            break;
          }

          if (v34 == ++v35)
          {
            LODWORD(v35) = *(this + 14);
            break;
          }
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v32.i32[3] = 0;
      v62 = v32;
      v38 = v31;
      v38.i32[2] = v19.i32[1];
      v63 = v38;
      v9.i32[2] = v19.i32[2];
      v39 = v33;
      v39.i32[3] = 1.0;
      v61 = v39;
      v40.i64[0] = 0x7F0000007FLL;
      v40.i64[1] = 0x7F0000007FLL;
      v41.i64[0] = 0x7F0000007FLL;
      v41.i64[1] = 0x7F0000007FLL;
      if (v35 == v34)
      {
        v65 = v41;
        v64 = vnegq_f32(v40);
        v42 = *v10;
      }

      else
      {
        v65 = v41;
        v64 = vnegq_f32(v40);
        v60 = v9;
        do
        {
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(*(*(this + 5) + 24 * v35 + 16), *(this + 54), v66);
          v9 = v60;
          v43 = vaddq_f32(v61, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, v67.f32[0]), v63, *v67.f32, 1), v60, v67, 2));
          v44 = vdivq_f32(v43, vdupq_laneq_s32(v43, 3));
          v45 = v64;
          v45.i32[3] = 0;
          v44.i32[3] = 0;
          v46 = vminnmq_f32(v45, v44);
          v47 = v65;
          v47.i32[3] = 0;
          v64 = v46;
          v65 = vmaxnmq_f32(v47, v44);
          v42 = vaddq_f32(v66[1], *(this + 7));
          *(this + 7) = v42;
          v48 = *(this + 14);
          if (v48 <= v35 + 1)
          {
            v48 = v35 + 1;
          }

          while (v48 - 1 != v35)
          {
            LODWORD(v35) = v35 + 1;
            if ((*(*(this + 5) + 24 * v35 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v35) = v48;
LABEL_18:
          ;
        }

        while (v35 != v34);
      }

      v49 = vmulq_f32(v42, v42);
      *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
      *v49.f32 = vrsqrte_f32(v50);
      *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32)));
      *(this + 7) = vmulq_n_f32(v42, vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32))).f32[0]);
      v70.columns[0] = v62;
      v70.columns[1] = v63;
      v70.columns[2] = v9;
      v70.columns[3] = v61;
      v71 = __invert_f4(v70);
      v51 = vcgtq_f32(v64, v65);
      v51.i32[3] = v51.i32[2];
      v52 = vmaxvq_u32(v51);
      v53.i64[0] = 0x3F0000003F000000;
      v53.i64[1] = 0x3F0000003F000000;
      v54 = vmulq_f32(vaddq_f32(v64, v65), v53);
      v55 = v52 < 0;
      if (v52 >= 0)
      {
        v56 = v54.i64[1];
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = 0;
      }

      else
      {
        v57 = *v54.f32;
      }

      *v58.f32 = v57;
      v58.i64[1] = v56;
      v59 = vaddq_f32(v71.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71.columns[0], v57.f32[0]), v71.columns[1], v57, 1), v71.columns[2], v58, 2));
      *(this + 8) = vdivq_f32(v59, vdupq_laneq_s32(v59, 3));
      result = *v11;
      *(this + 31) = *v10;
      *(this + 32) = result;
      *(this + 145) = 1;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

uint64_t re::ecs2::UISorter::update(re::ecs2::UISorter *updated, re::Allocator *a2, re::ecs2::Entity **a3, uint64_t a4)
{
  v7 = updated;
  if (a4)
  {
    v8 = 8 * a4;
    v9 = a3;
    do
    {
      v10 = *v9++;
      updated = re::ecs2::UISorter::updateDerivedSortOrderForEntity(updated, v10);
      v8 -= 8;
    }

    while (v8);
  }

  re::ecs2::UISorter::updateCodirectionalGrouping(v7, a3, a4, a2);
  re::ecs2::UISorter::updateMeshSortGrouping(v7, a2, v17);
  if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
  {
    dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
  }

  if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
  {
    re::ecs2::UISorter::updateCodirectionalGroupAsSortGroup(v7, a2);
  }

  else
  {
    re::ecs2::UISorter::writeSortingResults(v7, v17, v22, v20, v11, v12, v13, v14, v15);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v7 + 48);
  if (v18)
  {
    if (v22)
    {
      (*(*v18 + 40))();
    }

    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    ++v21;
  }

  return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v17);
}

void re::ecs2::UISorter::updateCodirectionalGrouping(uint64_t a1, re::ecs2::Entity **a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v178 = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    LODWORD(a3) = 1;
  }

  if (*(a1 + 28) <= 1u)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 28);
  }

  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v164 = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(&v161, a4, a3);
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  v160 = 0x7FFFFFFFLL;
  v148 = a4;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v157, a4, v8);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v157);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = 0;
    v11 = (*(a1 + 16) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  while (v10 != v9)
  {
    *out = *(*(a1 + 16) + 24 * v10 + 16);
    v13 = (*out + 8);
    v14 = *out;
    if (*(*out + 52) || (re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(&v157, out), (v14 = *out) != 0))
    {
    }

    v15 = *(a1 + 32);
    if (v15 <= v10 + 1)
    {
      v15 = v10 + 1;
    }

    while (v15 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(a1 + 16) + 24 * v10 + 8) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v10) = v15;
LABEL_22:
    ;
  }

  v16 = v159;
  if (v159)
  {
    v17 = 0;
    v18 = (v158 + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v159 == ++v17)
      {
        LODWORD(v17) = v159;
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v159)
  {
    v20 = v158;
    do
    {
      v21 = *(v20 + 24 * v17 + 16);
      if (v21)
      {
        v22 = (v21 + 8);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v21);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v21);
      }

      else
      {
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, 0);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, 0);
      }

      v20 = v158;
      if (v159 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      else
      {
        v23 = v159;
      }

      while (v23 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(v158 + 24 * v17 + 8) & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v17) = v23;
LABEL_41:
      ;
    }

    while (v17 != v16);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v157);
  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v24, v25, v26, v27, v28);
  if (v5)
  {
    v29 = 8 * v5;
    v30 = 8 * v5;
    v31 = a2;
    do
    {
      v32 = *v31++;
      *v166 = v32;
      re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v32, *(a1 + 144), out);
      *v154 = v174;
      v155 = v175;
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v161, v166, v154);
      v30 -= 8;
    }

    while (v30);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v157);
    do
    {
      v154[0] = *a2;
      v33 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 96, v154);
      if (v33)
      {
        v34 = *v33;
        *v166 = v34;
        if (v34)
        {
          v35 = (v34 + 8);
        }

        v36 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(&v161, v154);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, v166);
        v37 = *v166;
        *(*v166 + 144) = 1;
        if (!v36)
        {
          goto LABEL_55;
        }

        v38 = 1.0;
        if ((*(a1 + 160) & 1) == 0)
        {
          if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
          {
            dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
          }

          v38 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
        }

        v39 = vmulq_f32(v37[7], *v36);
        if ((1.0 - (v39.f32[2] + vaddv_f32(*v39.f32))) <= v38)
        {
          *out = v154[0];
          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(*v166 + 344, out);
        }

        else
        {
LABEL_55:
          re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 96, v154);
          re::ecs2::UICodirectionalGroup::remove(*v166, v154[0]);
          re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(&v157, v166);
        }

        if (*v166)
        {
        }
      }

      ++a2;
      v29 -= 8;
    }

    while (v29);
  }

  else
  {
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v157);
  }

  v150 = v159;
  if (v159)
  {
    v40 = 0;
    v41 = (v158 + 8);
    while (1)
    {
      v42 = *v41;
      v41 += 6;
      if (v42 < 0)
      {
        break;
      }

      if (v159 == ++v40)
      {
        LODWORD(v40) = v159;
        break;
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  if (v40 != v159)
  {
    v43 = v158;
    do
    {
      v44 = *(v43 + 24 * v40 + 16);
      if (v44)
      {
        v45 = (v44 + 8);
      }

      v46 = *(v44 + 56);
      if (v46)
      {
        v47 = 0;
        v48 = (*(v44 + 40) + 8);
        while (1)
        {
          v49 = *v48;
          v48 += 6;
          if (v49 < 0)
          {
            break;
          }

          if (v46 == ++v47)
          {
            LODWORD(v47) = *(v44 + 56);
            break;
          }
        }
      }

      else
      {
        LODWORD(v47) = 0;
      }

LABEL_89:
      while (v47 != v46)
      {
        v50 = *(*(v44 + 40) + 24 * v47 + 16);
        *v166 = v50;
        if (!v161 || (v51 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27)), v52 = *(*(&v161 + 1) + 4 * ((v51 ^ (v51 >> 31)) % DWORD2(v162))), v52 == 0x7FFFFFFF))
        {
LABEL_82:
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v50, *(a1 + 144), out);
          *v154 = v174;
          v155 = v175;
          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(&v161, v166, v154);
        }

        else
        {
          while (*(v162 + (v52 << 6) + 8) != v50)
          {
            v52 = *(v162 + (v52 << 6)) & 0x7FFFFFFF;
            if (v52 == 0x7FFFFFFF)
            {
              goto LABEL_82;
            }
          }
        }

        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 96, v166);
        v53 = *(v44 + 56);
        if (v53 <= v47 + 1)
        {
          v53 = v47 + 1;
        }

        while (v53 - 1 != v47)
        {
          LODWORD(v47) = v47 + 1;
          if ((*(*(v44 + 40) + 24 * v47 + 8) & 0x80000000) != 0)
          {
            goto LABEL_89;
          }
        }

        LODWORD(v47) = v53;
      }

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v44 + 24);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v44 + 344);
      *(v44 + 144) = 1;
      v54 = (v44 + 8);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v44);
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v44);

      v43 = v158;
      if (v159 <= v40 + 1)
      {
        v55 = v40 + 1;
      }

      else
      {
        v55 = v159;
      }

      while (v55 - 1 != v40)
      {
        LODWORD(v40) = v40 + 1;
        if ((*(v158 + 24 * v40 + 8) & 0x80000000) != 0)
        {
          goto LABEL_97;
        }
      }

      LODWORD(v40) = v55;
LABEL_97:
      ;
    }

    while (v40 != v150);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(&v157);
  if (!HIDWORD(v162))
  {
    goto LABEL_243;
  }

  v62 = v163;
  if (v163)
  {
    v63 = 0;
    v64 = v162;
    while (1)
    {
      v65 = *v64;
      v64 += 16;
      if (v65 < 0)
      {
        break;
      }

      if (v163 == ++v63)
      {
        LODWORD(v63) = v163;
        break;
      }
    }
  }

  else
  {
    LODWORD(v63) = 0;
  }

  if (v63 != v163)
  {
    v66 = v162;
    v67 = &unk_1EE1C6000;
    v151 = v163;
    do
    {
      v68 = (v66 + (v63 << 6));
      v69 = v68->i64[1];
      v154[0] = v69;
      if (!*(a1 + 96) || (v70 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v69 ^ (v69 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v69 ^ (v69 >> 30))) >> 27)), v71 = *(*(a1 + 104) + 4 * ((v70 ^ (v70 >> 31)) % *(a1 + 120))), v71 == 0x7FFFFFFF))
      {
LABEL_113:
        v73 = *(a1 + 32);
        if (v73)
        {
          v74 = 0;
          v75 = (*(a1 + 16) + 8);
          do
          {
            v76 = *v75;
            v75 += 6;
            if (v76 < 0)
            {
              goto LABEL_119;
            }

            ++v74;
          }

          while (v73 != v74);
          LODWORD(v74) = *(a1 + 32);
        }

        else
        {
          LODWORD(v74) = 0;
        }

LABEL_119:
        while (v74 != v73)
        {
          v77 = *(a1 + 16) + 24 * v74;
          v80 = *(v77 + 16);
          v79 = (v77 + 16);
          v78 = v80;
          v81 = 1.0;
          if ((*(a1 + 160) & 1) == 0)
          {
            if (v67[393] != -1)
            {
              dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
              v67 = &unk_1EE1C6000;
            }

            v81 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
          }

          v82 = vmulq_f32(v78[7], v68[1]);
          if ((1.0 - (v82.f32[2] + vaddv_f32(*v82.f32))) <= v81)
          {
            re::ecs2::UICodirectionalGroup::add(*v79, v154[0]);
            re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, v154, v79);
            v56 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, v79);
            v67 = &unk_1EE1C6000;
            v62 = v151;
            goto LABEL_135;
          }

          v83 = *(a1 + 32);
          if (v83 <= v74 + 1)
          {
            v83 = v74 + 1;
          }

          while (v83 - 1 != v74)
          {
            LODWORD(v74) = v74 + 1;
            if ((*(*(a1 + 16) + 24 * v74 + 8) & 0x80000000) != 0)
            {
              goto LABEL_119;
            }
          }

          LODWORD(v74) = v83;
        }

        v84 = *(a1 + 144);
        v85 = re::globalAllocators(v56);
        v86 = (*(*v85[2] + 32))(v85[2], 656, 16);
        ArcSharedObject::ArcSharedObject(v86, 0);
        *v87 = &unk_1F5CEF760;
        uuid_generate_random(out);
        *(v86 + 16) = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
        *(v86 + 24) = 0u;
        *(v86 + 40) = 0u;
        *(v86 + 56) = 0;
        *(v86 + 60) = 0x7FFFFFFFLL;
        *(v86 + 168) = 0u;
        *(v86 + 184) = 0;
        *(v86 + 152) = 0u;
        *(v86 + 80) = 0u;
        *(v86 + 96) = 0u;
        *(v86 + 112) = 0u;
        *(v86 + 128) = 0u;
        *(v86 + 144) = 0;
        *(v86 + 188) = 0x7FFFFFFFLL;
        *(v86 + 200) = 0u;
        *(v86 + 216) = 0u;
        *(v86 + 232) = 0;
        *(v86 + 236) = 0x7FFFFFFFLL;
        *(v86 + 280) = 0;
        *(v86 + 248) = 0u;
        *(v86 + 264) = 0u;
        *(v86 + 284) = 0x7FFFFFFFLL;
        *(v86 + 296) = 0u;
        *(v86 + 312) = 0u;
        *(v86 + 328) = 0;
        *(v86 + 332) = 0x7FFFFFFFLL;
        *(v86 + 344) = 0u;
        *(v86 + 360) = 0u;
        *(v86 + 376) = 0;
        *(v86 + 380) = 0x7FFFFFFFLL;
        *(v86 + 400) = 0;
        *(v86 + 408) = 0;
        *(v86 + 416) = 0;
        *(v86 + 392) = 0;
        *(v86 + 424) = 0;
        *(v86 + 432) = v84;
        *(v86 + 480) = 0;
        *(v86 + 440) = a1;
        *(v86 + 448) = 0;
        *(v86 + 472) = 0;
        *(v86 + 456) = 0;
        *(v86 + 464) = 0;
        *(v86 + 624) = 0u;
        *(v86 + 640) = 0u;
        *(v86 + 592) = 0u;
        *(v86 + 608) = 0u;
        *(v86 + 560) = 0u;
        *(v86 + 576) = 0u;
        *(v86 + 528) = 0u;
        *(v86 + 544) = 0u;
        *(v86 + 496) = 0u;
        *(v86 + 512) = 0u;
        *out = v86;
        re::ecs2::UICodirectionalGroup::add(v86, v154[0]);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, v154, out);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1, out);
        v56 = re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, out);
        if (*out)
        {
        }

        v62 = v151;
        v67 = &unk_1EE1C6000;
      }

      else
      {
        v72 = *(a1 + 112);
        while (*(v72 + 32 * v71 + 8) != v69)
        {
          v71 = *(v72 + 32 * v71) & 0x7FFFFFFF;
          if (v71 == 0x7FFFFFFF)
          {
            goto LABEL_113;
          }
        }
      }

LABEL_135:
      if (v163 <= v63 + 1)
      {
        v90 = v63 + 1;
      }

      else
      {
        v90 = v163;
      }

      v66 = v162;
      while (v90 - 1 != v63)
      {
        LODWORD(v63) = v63 + 1;
        if ((*(v162 + (v63 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_143;
        }
      }

      LODWORD(v63) = v90;
LABEL_143:
      ;
    }

    while (v63 != v62);
  }

  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v57, v58, v59, v60, v61);
  v91 = *(a1 + 28);
  if (v91 <= 1)
  {
    goto LABEL_243;
  }

  v156 = 0;
  v154[1] = 0;
  *&v155 = 0;
  DWORD2(v155) = 0;
  v154[0] = v148;
  v92 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v154, v91);
  ++DWORD2(v155);
  v93 = *(a1 + 32);
  if (v93)
  {
    v94 = 0;
    v95 = (*(a1 + 16) + 8);
    while (1)
    {
      v96 = *v95;
      v95 += 6;
      if (v96 < 0)
      {
        break;
      }

      if (v93 == ++v94)
      {
        LODWORD(v94) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v94) = 0;
  }

  if (v94 == v93)
  {
    v97 = v155;
  }

  else
  {
    v97 = v155;
    do
    {
      v98 = *(a1 + 16);
      if (v97 >= v154[1])
      {
        if (v154[1] < (v97 + 1))
        {
          if (v154[0])
          {
            if (v154[1])
            {
              v99 = 2 * v154[1];
            }

            else
            {
              v99 = 8;
            }

            if (v99 <= v97 + 1)
            {
              v100 = v97 + 1;
            }

            else
            {
              v100 = v99;
            }

            v92 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v154, v100);
          }

          else
          {
            v92 = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v154, v97 + 1);
            ++DWORD2(v155);
          }
        }

        v97 = v155;
      }

      v101 = *(v98 + 24 * v94 + 16);
      *(v156 + 8 * v97) = v101;
      if (v101)
      {
        v92 = (v101 + 8);
      }

      *&v155 = ++v97;
      ++DWORD2(v155);
      v102 = *(a1 + 32);
      if (v102 <= v94 + 1)
      {
        v102 = v94 + 1;
      }

      while (v102 - 1 != v94)
      {
        LODWORD(v94) = v94 + 1;
        if ((*(*(a1 + 16) + 24 * v94 + 8) & 0x80000000) != 0)
        {
          goto LABEL_174;
        }
      }

      LODWORD(v94) = v102;
LABEL_174:
      ;
    }

    while (v94 != v93);
  }

  if (v97 < 2)
  {
    goto LABEL_233;
  }

  v103 = 0;
  v104 = 1;
  do
  {
    v105 = v155;
    if (v155 <= v103)
    {
      goto LABEL_262;
    }

    v106 = v156;
    v147 = v103;
    v107 = *(v156 + 8 * v103);
    v153 = v107;
    if (v107)
    {
      v108 = (v107 + 8);
    }

    v149 = v106 - 8;
    v109 = DWORD2(v155);
    do
    {
      if (v105 <= --v97)
      {
        v165 = 0;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        *out = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v166 = 136315906;
        *&v166[4] = "operator[]";
        v167 = 1024;
        v168 = 789;
        v169 = 2048;
        v170 = v97;
        v171 = 2048;
        v172 = v105;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_262:
        v165 = 0;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        *out = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v166 = 136315906;
        *&v166[4] = "operator[]";
        v167 = 1024;
        v168 = 789;
        v169 = 2048;
        v170 = v103;
        v171 = 2048;
        v172 = v105;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v110 = *(v106 + 8 * v97);
      if (v110)
      {
        v111 = &v110->u32[2];
      }

      v103 = v153;
      v112 = 1.0;
      if ((*(a1 + 160) & 1) == 0)
      {
        if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
        {
          dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
        }

        v112 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
      }

      v113 = vmulq_f32(*(v103 + 112), v110[7]);
      if ((1.0 - (v113.f32[2] + vaddv_f32(*v113.f32))) <= v112)
      {
        v152 = v109;
        v114 = v110[3].u32[2];
        if (v114)
        {
          v115 = 0;
          v116 = (v110[2].i64[1] + 8);
          while (1)
          {
            v117 = *v116;
            v116 += 6;
            if (v117 < 0)
            {
              break;
            }

            if (v114 == ++v115)
            {
              LODWORD(v115) = v110[3].i32[2];
              break;
            }
          }
        }

        else
        {
          LODWORD(v115) = 0;
        }

        v118 = v110[3].u32[2];
LABEL_196:
        while (v115 != v114)
        {
          *out = *(v110[2].i64[1] + 24 * v115 + 16);
          re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(a1 + 96, out, &v153);
          v118 = v110[3].u32[2];
          if (v118 <= v115 + 1)
          {
            v119 = v115 + 1;
          }

          else
          {
            v119 = v110[3].i32[2];
          }

          while (v119 - 1 != v115)
          {
            LODWORD(v115) = v115 + 1;
            if ((*(v110[2].i64[1] + 24 * v115 + 8) & 0x80000000) != 0)
            {
              goto LABEL_196;
            }
          }

          LODWORD(v115) = v119;
        }

        v120 = v153;
        if (v118)
        {
          v121 = 0;
          v122 = (v110[2].i64[1] + 8);
          while (1)
          {
            v123 = *v122;
            v122 += 6;
            if (v123 < 0)
            {
              break;
            }

            if (v118 == ++v121)
            {
              LODWORD(v121) = v118;
              break;
            }
          }
        }

        else
        {
          LODWORD(v121) = 0;
        }

        if (v121 != v118)
        {
          v124 = v110[2].i64[1];
          do
          {
            re::ecs2::UICodirectionalGroup::add(v120, *(v124 + 24 * v121 + 16));
            v125 = v110[3].u32[2];
            v124 = v110[2].i64[1];
            if (v125 <= v121 + 1)
            {
              v125 = v121 + 1;
            }

            while (v125 - 1 != v121)
            {
              LODWORD(v121) = v121 + 1;
              if ((*(v124 + 24 * v121 + 8) & 0x80000000) != 0)
              {
                goto LABEL_218;
              }
            }

            LODWORD(v121) = v125;
LABEL_218:
            ;
          }

          while (v121 != v118);
        }

        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v110[1].i64[1]);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(&v110[21].i64[1]);
        v110[9].i8[0] = 1;
        v103 = v105 - 1;
        if (v105 - 1 <= v97)
        {
          v126 = *(v149 + 8 * v105);
        }

        else
        {
          v126 = *(v106 + 8 * v97);
          *(v106 + 8 * v97) = *(v149 + 8 * v105);
          *(v149 + 8 * v105) = v126;
        }

        if (v126)
        {

          *(v149 + 8 * v105) = 0;
        }

        v109 = v152 + 1;
        v127 = &v110->u32[2];
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1, v110);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v110);

        re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(a1 + 48, &v153);
        --v105;
      }
    }

    while (v104 < v97);
    *&v155 = v105;
    DWORD2(v155) = v109;
    v133 = v153;
    if (*(v153 + 144) != 1)
    {
      v103 = v104;
LABEL_230:

      goto LABEL_231;
    }

    v57 = re::ecs2::UICodirectionalGroup::recomputeAverages(v153, v128, v129, v130, v131, v132);
    v133 = v153;
    v103 = v147;
    if (v153)
    {
      goto LABEL_230;
    }

LABEL_231:
    v104 = v103 + 1;
    v97 = v105;
  }

  while (v103 + 1 < v105);
  v97 = v155;
LABEL_233:
  v134 = v156;
  if (v97)
  {
    v135 = 8 * v97;
    v136 = v156;
    do
    {
      if (*v136)
      {

        *v136 = 0;
      }

      v136 += 8;
      v135 -= 8;
    }

    while (v135);
  }

  if (v154[0])
  {
    v137 = v134 == 0;
  }

  else
  {
    v137 = 1;
  }

  if (!v137)
  {
    v57.n128_f64[0] = (*(*v154[0] + 40))(v57);
  }

LABEL_243:
  re::ecs2::UISorter::recomputeCodirectionalGroupAverages(a1, v57, v58, v59, v60, v61);
  v139 = *(a1 + 80);
  if (v139)
  {
    v140 = 0;
    v141 = (*(a1 + 64) + 8);
    while (1)
    {
      v142 = *v141;
      v141 += 6;
      if (v142 < 0)
      {
        break;
      }

      if (v139 == ++v140)
      {
        LODWORD(v140) = *(a1 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

  while (v140 != v139)
  {
    v143 = *(*(a1 + 64) + 24 * v140 + 16);
    if (v143)
    {
      v144 = (v143 + 8);
      re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(v143, v145);
    }

    else
    {
      v138.n128_f64[0] = re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(0, v138);
    }

    v146 = *(a1 + 80);
    if (v146 <= v140 + 1)
    {
      v146 = v140 + 1;
    }

    while (v146 - 1 != v140)
    {
      LODWORD(v140) = v140 + 1;
      if ((*(*(a1 + 64) + 24 * v140 + 8) & 0x80000000) != 0)
      {
        goto LABEL_259;
      }
    }

    LODWORD(v140) = v146;
LABEL_259:
    ;
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v157);
  re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(&v161);
}

uint64_t re::ecs2::UISorter::updateMeshSortGrouping@<X0>(uint64_t this@<X0>, re::Allocator *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 76))
  {
    v5 = this;
    v6 = *(this + 28);
    v41 = 0;
    v38[1] = 0;
    v39 = 0;
    v40 = 0;
    v38[0] = a2;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v38, (8 * v6) | 1u);
    ++v40;
    v37 = 0;
    v35[1] = 0;
    v35[2] = 0;
    v36 = 0;
    v35[0] = a2;
    re::DynamicArray<float *>::setCapacity(v35, 0x40uLL);
    ++v36;
    v7 = *(v5 + 80);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 64) + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 < 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          LODWORD(v8) = *(v5 + 80);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    while (v8 != v7)
    {
      v11 = *(*(v5 + 64) + 24 * v8 + 16);
      if (v11)
      {
        v12 = (v11 + 8);
        re::ecs2::UICodirectionalGroup::updateSortGroups(v11, a2, v38, v35);
      }

      else
      {
        re::ecs2::UICodirectionalGroup::updateSortGroups(0, a2, v38, v35);
      }

      v13 = *(v5 + 80);
      if (v13 <= v8 + 1)
      {
        v13 = v8 + 1;
      }

      while (v13 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(v5 + 64) + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v8) = v13;
LABEL_19:
      ;
    }

    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
    if (v38[0])
    {
      v14 = v39;
      *a3 = v38[0];
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a3, v14);
      ++*(a3 + 24);
      v15 = *(a3 + 16);
      if (v14 >= v15)
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a3, v14);
        v23 = v41;
        v24 = *(a3 + 16);
        v25 = *(a3 + 32);
        if (v24)
        {
          v26 = 8 * v24;
          v27 = *(a3 + 32);
          v28 = v41;
          do
          {
            v29 = *v28++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v27++, v29);
            v26 -= 8;
          }

          while (v26);
        }

        if (v24 != v14)
        {
          v30 = &v23[v24];
          v31 = (v25 + 8 * v24);
          v32 = 8 * v14 - 8 * v24;
          do
          {
            v33 = *v30;
            *v31 = *v30;
            if (v33)
            {
              v34 = (v33 + 8);
            }

            ++v30;
            ++v31;
            v32 -= 8;
          }

          while (v32);
        }
      }

      else
      {
        v16 = *(a3 + 32);
        if (v14)
        {
          v17 = v41;
          v18 = 8 * v14;
          v19 = *(a3 + 32);
          do
          {
            v20 = *v17++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v19++, v20);
            v18 -= 8;
          }

          while (v18);
        }

        v21 = v16 + 8 * v14;
        v22 = 8 * v15 - 8 * v14;
        do
        {
          if (*v21)
          {

            *v21 = 0;
          }

          v21 += 8;
          v22 -= 8;
        }

        while (v22);
      }

      *(a3 + 16) = v14;
    }

    re::DynamicArray<char const*>::DynamicArray(a3 + 40, v35);
    if (v35[0])
    {
      if (v37)
      {
        (*(*v35[0] + 40))();
      }
    }

    return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v38);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
    *(a3 + 72) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
  }

  return this;
}

void re::ecs2::UISorter::updateCodirectionalGroupAsSortGroup(re::ecs2::UISorter *this, re::Allocator *a2)
{
  if (*(this + 19))
  {
    v4 = *(this + 20);
    if (v4)
    {
      v5 = 0;
      v6 = (*(this + 8) + 8);
      while (1)
      {
        v7 = *v6;
        v6 += 6;
        if (v7 < 0)
        {
          break;
        }

        if (v4 == ++v5)
        {
          LODWORD(v5) = *(this + 20);
          break;
        }
      }
    }

    else
    {
      LODWORD(v5) = 0;
    }

    while (v5 != v4)
    {
      v8 = *(*(this + 8) + 24 * v5 + 16);
      if (v8)
      {
        v9 = &v8->u32[2];
        re::ecs2::UICodirectionalGroup::updateGroupToken(v8);
        re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(v8, a2);
        re::ecs2::UICodirectionalGroup::writeToMeshSorting(v8, v10, v11);
      }

      else
      {
        re::ecs2::UICodirectionalGroup::updateGroupToken(0);
        re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(0, a2);
        re::ecs2::UICodirectionalGroup::writeToMeshSorting(0, v12, v13);
      }

      v14 = *(this + 20);
      if (v14 <= v5 + 1)
      {
        v14 = v5 + 1;
      }

      while (v14 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 8) + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v14;
LABEL_18:
      ;
    }
  }
}

void re::ecs2::UISorter::writeSortingResults(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, __n128 a5, double a6, double a7, double a8, float32x4_t a9)
{
  if (a4)
  {
    v10 = a3;
    v11 = 8 * a4;
    while (1)
    {
      v12 = *v10;
      v13 = re::ecs2::EntityComponentCollection::get((*v10 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v13)
      {
        break;
      }

LABEL_24:
      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v14 = v13;
    v16 = v13 + 176;
    v15 = *(v13 + 176);
    v17 = *(v13 + 160);
    v66.i8[0] = *(v13 + 432);
    if (v66.u8[0] == 1)
    {
      v18 = *(v13 + 464);
      v67 = *(v13 + 448);
      v68 = v18;
    }

    *(v13 + 304) = 1;
    LOBYTE(v62) = 0;
    v64 = 0;
    v65 = 0;
    v61.i64[0] = 0;
    v61.i16[4] = 0;
    re::ecs2::MeshSortGroupToken::operator=(v13 + 176, &v61);
    *(v14 + 160) = 0;
    re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(v12, *(a1 + 144), &v61);
    if (*(v14 + 432))
    {
      if ((v61.i8[0] & 1) == 0)
      {
        *(v16 + 256) = 0;
LABEL_12:
        if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
        {
          dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
        }

        if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
        {
          if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken != -1)
          {
            dispatch_once(&re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken, &__block_literal_global_18_0);
          }

          if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup == 1 && *(v14 + 480) == 1)
          {
            *(v14 + 480) = 0;
          }
        }

        if (v15 != *v16 || v17 != *(v14 + 160) || re::Optional<re::SortingPlane>::operator!=(v66.f32, v16 + 256))
        {
          re::ecs2::Component::markDirty(v14);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if ((v61.i8[0] & 1) == 0)
      {
        goto LABEL_12;
      }

      *(v14 + 432) = 1;
    }

    v19 = v63;
    *(v14 + 448) = v62;
    *(v14 + 464) = v19;
    goto LABEL_12;
  }

LABEL_25:
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = *(a2 + 32);
    v22 = 8 * v20;
    do
    {
      v23 = *v21;
      if (*v21)
      {
        v24 = &v23->n128_i8[8];
        re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(v23, v25, v26);
      }

      else
      {
        re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(0, a2, a3);
      }

      ++v21;
      v22 -= 8;
    }

    while (v22);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    v28 = 0;
    v29 = (*(a1 + 64) + 8);
    while (1)
    {
      v30 = *v29;
      v29 += 6;
      if (v30 < 0)
      {
        break;
      }

      if (v27 == ++v28)
      {
        LODWORD(v28) = *(a1 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v28 != v27)
  {
    v58 = *(a1 + 80);
    do
    {
      v31 = *(*(a1 + 64) + 24 * v28 + 16);
      if (v31)
      {
        v32 = (v31 + 8);
      }

      if (*(v31 + 144) == 1)
      {
        a5 = re::ecs2::UICodirectionalGroup::recomputeAverages(v31, a5, a6, a7, a8, a9);
      }

      if (*(v31 + 145) == 1)
      {
        v33 = *(v31 + 232);
        if (v33)
        {
          v34 = 0;
          v35 = (*(v31 + 216) + 8);
          do
          {
            v36 = *v35;
            v35 += 6;
            if (v36 < 0)
            {
              goto LABEL_56;
            }

            ++v34;
          }

          while (v33 != v34);
          LODWORD(v34) = *(v31 + 232);
        }

        else
        {
          LODWORD(v34) = 0;
        }

LABEL_56:
        while (v34 != v33)
        {
          re::ecs2::UICoincidentalGroup::updateGroupToken(*(*(v31 + 216) + 24 * v34 + 16));
          v37 = *(v31 + 232);
          if (v37 <= v34 + 1)
          {
            v37 = v34 + 1;
          }

          while (v37 - 1 != v34)
          {
            LODWORD(v34) = v34 + 1;
            if ((*(*(v31 + 216) + 24 * v34 + 8) & 0x80000000) != 0)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v34) = v37;
        }

        v38 = *(v31 + 56);
        if (v38)
        {
          v39 = 0;
          v40 = (*(v31 + 40) + 8);
          do
          {
            v41 = *v40;
            v40 += 6;
            if (v41 < 0)
            {
              goto LABEL_83;
            }

            ++v39;
          }

          while (v38 != v39);
          LODWORD(v39) = *(v31 + 56);
        }

        else
        {
          LODWORD(v39) = 0;
        }

LABEL_83:
        while (2)
        {
          if (v39 == v38)
          {
            *(v31 + 145) = 0;
            LODWORD(v27) = v58;
            goto LABEL_85;
          }

          v42 = *(*(v31 + 40) + 24 * v39 + 16);
          v69[0] = 0;
          v60 = *(v43 + 320);
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v42, *(v31 + 432), &v61);
          v44 = v63;
          if (*(v31 + 52) != 1)
          {
            v46 = *(v31 + 112);
            v45 = *(v31 + 128);
            v47 = vmulq_f32(v46, vsubq_f32(v63, v45));
            v44 = vaddq_f32(v45, vmulq_n_f32(v46, v47.f32[2] + vaddv_f32(*v47.f32)));
          }

          *(v43 + 320) = v44;
          ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides;
          v61.i8[0] = *(v43 + 432);
          if (v61.u8[0] == 1)
          {
            v48 = *(v43 + 464);
            v62 = *(v43 + 448);
            v63 = v48;
          }

          re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(v42, *(v31 + 432), &v66);
          if (*(v43 + 432))
          {
            if ((v66.i8[0] & 1) == 0)
            {
              *(v43 + 432) = 0;
LABEL_73:
              v50 = vmvnq_s8(vceqq_f32(v60, *(v43 + 320)));
              v50.i32[3] = v50.i32[2];
              if ((vmaxvq_u32(v50) & 0x80000000) != 0 || (v69[0] & 1) != 0 || re::Optional<re::SortingPlane>::operator!=(v61.f32, v43 + 432))
              {
                re::ecs2::Component::markDirty(v43);
                ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied;
              }

              v51 = *(v31 + 56);
              if (v51 <= v39 + 1)
              {
                v51 = v39 + 1;
              }

              while (v51 - 1 != v39)
              {
                LODWORD(v39) = v39 + 1;
                if ((*(*(v31 + 40) + 24 * v39 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_83;
                }
              }

              LODWORD(v39) = v51;
              continue;
            }
          }

          else
          {
            if ((v66.i8[0] & 1) == 0)
            {
              goto LABEL_73;
            }

            *(v43 + 432) = 1;
          }

          break;
        }

        v49 = v68;
        *(v43 + 448) = v67;
        *(v43 + 464) = v49;
        goto LABEL_73;
      }

LABEL_85:
      v52 = *(v31 + 232);
      if (v52)
      {
        v53 = 0;
        v54 = (*(v31 + 216) + 8);
        while (1)
        {
          v55 = *v54;
          v54 += 6;
          if (v55 < 0)
          {
            break;
          }

          if (v52 == ++v53)
          {
            LODWORD(v53) = *(v31 + 232);
            break;
          }
        }
      }

      else
      {
        LODWORD(v53) = 0;
      }

      if (v53 == v52)
      {
        if (!v31)
        {
          goto LABEL_102;
        }
      }

      else
      {
        do
        {
          re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(*(*(v31 + 216) + 24 * v53 + 16), a2, a3);
          v56 = *(v31 + 232);
          if (v56 <= v53 + 1)
          {
            v56 = v53 + 1;
          }

          while (v56 - 1 != v53)
          {
            LODWORD(v53) = v53 + 1;
            if ((*(*(v31 + 216) + 24 * v53 + 8) & 0x80000000) != 0)
            {
              goto LABEL_100;
            }
          }

          LODWORD(v53) = v56;
LABEL_100:
          ;
        }

        while (v53 != v52);
      }

LABEL_102:
      v57 = *(a1 + 80);
      if (v57 <= v28 + 1)
      {
        v57 = v28 + 1;
      }

      while (v57 - 1 != v28)
      {
        LODWORD(v28) = v28 + 1;
        if ((*(*(a1 + 64) + 24 * v28 + 8) & 0x80000000) != 0)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v28) = v57;
LABEL_108:
      ;
    }

    while (v28 != v27);
  }
}

BOOL re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::UICodirectionalGroup::remove(re::ecs2::UICodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v9 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 24, &v9);
  if (*(this + 16) != v3)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 344, &v9);
    *(this + 144) = 1;
    v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 152, &v9);
    if (v5)
    {
      v6 = *v5;
      v8 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(this + 296, &v8);
      re::ecs2::CAMeshSortGroup::remove(v8, v9);
      re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 152, &v9);
      if (v8)
      {
      }
    }

    return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 248, &v9);
  }

  return result;
}

uint64_t re::ecs2::UICodirectionalGroup::add(re::ecs2::UICodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 24, &v7);
  if (*(this + 16) != v3)
  {
    v8.i64[0] = v7;
    result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 344, &v8);
    if (*(this + 13) == 1)
    {
      result = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v7, *(this + 54), &v8);
      v6 = v9;
      v5 = v10;
      *(this + 5) = v9;
      *(this + 6) = v5;
      *(this + 7) = v6;
      *(this + 8) = v5;
      *(this + 145) = 1;
    }

    else
    {
      *(this + 144) = 1;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, v18, v17);
    *(v8 + 8) = *a2;
    v9 = *a3;
    *(v8 + 16) = *a3;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    v14 = *(v11 + 16);
    v13 = (v11 + 16);
    v12 = v14;
    v15 = *a3;
    if (v14 != v15)
    {
      if (v15)
      {
        v16 = (v15 + 8);
        v12 = *v13;
      }

      if (v12)
      {
      }

      *v13 = v15;
    }
  }
}

double re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(re::ecs2::UICodirectionalGroup *this, __n128 a2)
{
  v3 = *(this + 13);
  v4 = *(this + 104);
  *(this + 51) = 0;
  if (!v3)
  {
    ++v4;
  }

  *(this + 104) = v4 + 1;
  if (*(this + 50) < v3)
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v3);
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 5) + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 14);
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
    v9 = *(this + 51);
  }

  else
  {
    do
    {
      v10 = *(*(this + 5) + 24 * v6 + 16);
      v11 = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v10, *(this + 54), v29);
      v12 = v30;
      v14 = *(this + 7);
      v13 = *(this + 8);
      v16 = *(this + 50);
      v15 = *(this + 51);
      if (v15 >= v16)
      {
        v17 = v15 + 1;
        if (v16 < v15 + 1)
        {
          v26 = *(this + 7);
          v27 = *(this + 8);
          v28 = v30;
          if (*(this + 49))
          {
            v18 = 2 * v16;
            if (!v16)
            {
              v18 = 8;
            }

            if (v18 <= v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = v18;
            }

            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v19);
          }

          else
          {
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v17);
            ++*(this + 104);
          }

          v13 = v27;
          v12 = v28;
          v14 = v26;
        }

        v15 = *(this + 51);
      }

      a2 = vmulq_f32(vsubq_f32(v12, v13), v14);
      a2.n128_f32[0] = a2.n128_f32[2] + vaddv_f32(a2.n128_u64[0]);
      v20 = *(this + 53) + 16 * v15;
      *v20 = v10;
      *(v20 + 8) = a2.n128_f32[0];
      v9 = v15 + 1;
      *(this + 51) = v9;
      ++*(this + 104);
      v21 = *(this + 14);
      if (v21 <= v6 + 1)
      {
        v21 = v6 + 1;
      }

      while (v21 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(this + 5) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v6) = v21;
LABEL_31:
      ;
    }

    while (v6 != v5);
  }

  v22 = *(this + 53);
  v23 = 126 - 2 * __clz(v9);
  if (v9)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,false>(v22, &v22[v9], v24, 1, a2).n128_u64[0];
  return result;
}

uint64_t re::ecs2::UISorter::updateDerivedSortOrderForEntity(re::ecs2::UISorter *this, const re::ecs2::Entity *a2)
{
  v2 = a2;
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v4 = result;
    result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!result || *(result + 80) != 3)
    {
      while (1)
      {
        v2 = *(v2 + 4);
        if (!v2 || (*(v2 + 304) & 0x80) != 0)
        {
          break;
        }

        result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (result && *(result + 80) == 3)
        {
          v5 = *(result + 88);

          return re::ecs2::UISortingComponent::setCaSortOrder(v4, v5);
        }
      }
    }
  }

  return result;
}

void re::ecs2::UICodirectionalGroup::updateSortGroups(uint64_t a1, uint64_t a2, _anonymous_namespace_ *a3, void *a4)
{
  v7 = a2;
  v227 = *MEMORY[0x1E69E9840];
  if (*(a1 + 372))
  {
    ++re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities;
  }

  else if (!*(a1 + 324))
  {
    return;
  }

  v180 = a3;
  if (*(a1 + 228) <= 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 228);
  }

  v202 = 0u;
  v203 = 0u;
  v204 = 0;
  v205 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v202, a2, v9);
  v10 = *(a1 + 372);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v201 = 0;
  v198[1] = 0;
  v199 = 0;
  v200 = 0;
  v198[0] = v7;
  re::DynamicArray<float *>::setCapacity(v198, v11);
  ++v200;
  v12 = *(a1 + 376);
  v178 = a4;
  if (v12)
  {
    v13 = 0;
    v14 = (*(a1 + 360) + 8);
    while (1)
    {
      v15 = *v14;
      v14 += 6;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  while (v13 != v12)
  {
    v222.i64[0] = *(*(a1 + 360) + 24 * v13 + 16);
    re::DynamicArray<re::TransitionCondition *>::add(v198, &v222);
    v16 = *(a1 + 376);
    if (v16 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    while (v16 - 1 != v13)
    {
      LODWORD(v13) = v13 + 1;
      if ((*(*(a1 + 360) + 24 * v13 + 8) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v13) = v16;
LABEL_23:
    ;
  }

  v197 = 0;
  v194[1] = 0;
  v195 = 0;
  v196 = 0;
  v194[0] = v7;
  re::DynamicArray<float *>::setCapacity(v194, v199);
  ++v196;
  v17 = *(a1 + 376);
  if (v17)
  {
    v18 = 0;
    v19 = (*(a1 + 360) + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 6;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != v17)
  {
    v4 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    do
    {
      v222.i64[0] = *(*(a1 + 360) + 24 * v18 + 16);
      v21 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v222);
      if (v21)
      {
        v22 = *v21;
        v207[0] = v22;
        if (v22)
        {
          v23 = (v22 + 8);
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 296, v207);
        re::ecs2::CAMeshSortGroup::remove(v207[0], v222.i64[0]);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 152, &v222);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
        if (v207[0])
        {
        }
      }

      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v222);
      v24 = *(a1 + 376);
      if (v24 <= v18 + 1)
      {
        v24 = v18 + 1;
      }

      while (v24 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(*(a1 + 360) + 24 * v18 + 8) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v18) = v24;
LABEL_43:
      ;
    }

    while (v18 != v17);
  }

  v25 = *(a1 + 276);
  if (v25 <= 8)
  {
    v26 = 8;
  }

  else
  {
    v26 = v25;
  }

  *&v214[2] = 0;
  memset(&v212[8], 0, 20);
  *v212 = v7;
  re::DynamicArray<float *>::setCapacity(v212, v26);
  ++*&v212[24];
  memset(v193, 0, 36);
  *&v193[36] = 0x7FFFFFFFLL;
  v27 = *(a1 + 200);
  if (v27)
  {
    v28 = *(a1 + 228) <= 3u ? 3 : *(a1 + 228);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v193, v27, v28);
    re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(v193, a1 + 200);
    v29 = *&v193[28];
    if (*&v193[28])
    {
      v30 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      while (1)
      {
        if (!v199)
        {
          goto LABEL_92;
        }

        memset(v207, 0, 36);
        *(&v207[4] + 4) = 0x7FFFFFFF;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v207, v7, v29);
        if (v199)
        {
          break;
        }

LABEL_61:
        if (HIDWORD(v207[3]))
        {
          v4 = *(a1 + 280);
          if (v4)
          {
            v5 = 0;
            v32 = (*(a1 + 264) + 8);
            while (1)
            {
              v33 = *v32;
              v32 += 6;
              if (v33 < 0)
              {
                break;
              }

              if (v4 == ++v5)
              {
                v5 = *(a1 + 280);
                break;
              }
            }
          }

          else
          {
            v5 = 0;
          }

LABEL_77:
          while (v5 != v4)
          {
            v222.i64[0] = *(*(a1 + 264) + 24 * v5 + 16);
            re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(v209, a1, v222.i64[0], v207, &v202, v7);
            if (*v209)
            {

              re::DynamicArray<re::TransitionCondition *>::add(v212, &v222);
              ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
            }

            LODWORD(v34) = *(a1 + 280);
            if (v34 <= v5 + 1)
            {
              v34 = (v5 + 1);
            }

            else
            {
              v34 = v34;
            }

            while (v34 - 1 != v5)
            {
              v5 = (v5 + 1);
              if ((*(*(a1 + 264) + 24 * v5 + 8) & 0x80000000) != 0)
              {
                goto LABEL_77;
              }
            }

            v5 = v34;
          }

          if (*&v212[16])
          {
            v35 = *&v214[2];
            v4 = 8 * *&v212[16];
            do
            {
              v36 = *v35++;
              v222.i64[0] = v36;
              re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v222);
              v4 -= 8;
            }

            while (v4);
          }

          *&v212[16] = 0;
          ++*&v212[24];
        }

        v37 = v207[0];
        if (*v193)
        {
          v38 = *v193 == v207[0];
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          v207[0] = *v193;
          v39 = *&v193[8];
          *v193 = v37;
          *&v193[8] = v207[1];
          *&v193[16] = v207[2];
          *&v207[1] = v39;
          v40 = *&v207[3];
          v207[3] = __PAIR64__(v29, *&v193[24]);
          v41 = *&v193[32];
          *&v193[24] = v40;
          v207[4] = v41;
        }

        else if (v207[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(v193, v207);
          ++*&v193[40];
        }

        else
        {
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v193);
        }

        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v207);
        v29 = *&v193[28];
        if (!*&v193[28])
        {
          goto LABEL_92;
        }
      }

      v4 = v199 - 1;
      while (1)
      {
        v31 = v199;
        if (v199 <= v4)
        {
          break;
        }

        re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(&v222, a1, *(v201 + 8 * v4), v193, &v202, v7);
        if (v222.i64[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(v207, &v222);
          ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
          re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v198, v4);
          if (v222.i64[0])
          {
          }
        }

        if (--v4 == -1)
        {
          goto LABEL_61;
        }
      }

      *v215 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v209 = 136315906;
      *&v209[4] = "operator[]";
      *&v209[12] = 1024;
      *&v209[14] = 789;
      *&v209[18] = 2048;
      *&v209[20] = v4;
      v210 = 2048;
      *v211 = v31;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_343:
      *v209 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v212 = 136315906;
      *&v212[4] = "operator[]";
      *&v212[12] = 1024;
      *&v212[14] = 789;
      *&v212[18] = 2048;
      *&v212[20] = v29;
      v213 = 2048;
      *v214 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_344:
      *v215 = 0;
      v225 = v104;
      v226 = v104;
      v223 = v104;
      v224 = v104;
      v222 = v104;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v209 = 136315906;
      *&v209[4] = "operator[]";
      *&v209[12] = 1024;
      *&v209[14] = 789;
      *&v209[18] = 2048;
      *&v209[20] = v5;
      v210 = 2048;
      *v211 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_345;
    }
  }

LABEL_92:
  if (*v212 && *&v214[2])
  {
    (*(**v212 + 40))();
  }

  v42 = *(a1 + 276);
  if (v42 <= 8)
  {
    v43 = 8;
  }

  else
  {
    v43 = v42;
  }

  v224.i64[0] = 0;
  v223.i64[0] = 0;
  v223.i32[2] = 0;
  v222 = v7;
  re::DynamicArray<float *>::setCapacity(&v222, v43);
  ++v223.i32[2];
  v44 = v199;
  if (v199)
  {
    v45 = 0;
    v4 = 0x7FFFFFFFLL;
    do
    {
      v207[0] = *(v201 + 8 * v45++);
      v46 = v45;
      if (v45 < v44)
      {
        do
        {
          re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(a1, v207[0], *(v201 + 8 * v46++), &v222, &v202, v7);
        }

        while (v46 < v199);
      }

      v47 = *(a1 + 280);
      if (v47)
      {
        v48 = 0;
        v49 = (*(a1 + 264) + 8);
        while (1)
        {
          v50 = *v49;
          v49 += 6;
          if (v50 < 0)
          {
            break;
          }

          if (v47 == ++v48)
          {
            LODWORD(v48) = *(a1 + 280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v48) = 0;
      }

LABEL_114:
      while (v48 != v47)
      {
        re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(a1, v207[0], *(*(a1 + 264) + 24 * v48 + 16), &v222, &v202, v7);
        v51 = *(a1 + 280);
        if (v51 <= v48 + 1)
        {
          v51 = v48 + 1;
        }

        while (v51 - 1 != v48)
        {
          LODWORD(v48) = v48 + 1;
          if ((*(*(a1 + 264) + 24 * v48 + 8) & 0x80000000) != 0)
          {
            goto LABEL_114;
          }
        }

        LODWORD(v48) = v51;
      }

      if (!*(a1 + 152) || (v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v207[0] ^ (v207[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v207[0] ^ (v207[0] >> 30))) >> 27)), v53 = *(*(a1 + 160) + 4 * ((v52 ^ (v52 >> 31)) % *(a1 + 176))), v53 == 0x7FFFFFFF))
      {
LABEL_120:
        re::DynamicArray<re::TransitionCondition *>::add(v194, v207);
      }

      else
      {
        v54 = *(a1 + 168);
        while (*(v54 + 32 * v53 + 8) != v207[0])
        {
          v53 = *(v54 + 32 * v53) & 0x7FFFFFFF;
          if (v53 == 0x7FFFFFFF)
          {
            goto LABEL_120;
          }
        }
      }

      v44 = v199;
    }

    while (v45 < v199);
  }

  if (v223.i64[0])
  {
    v55 = v224.i64[0];
    v56 = 8 * v223.i64[0];
    do
    {
      v57 = *v55++;
      v207[0] = v57;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, v207);
      v56 -= 8;
    }

    while (v56);
  }

  if (v222.i64[0] && v224.i64[0])
  {
    (*(*v222.i64[0] + 40))(v222.i64[0]);
  }

  v31 = *(a1 + 328);
  if (v31)
  {
    v5 = 0;
    v58 = (*(a1 + 312) + 8);
    while (1)
    {
      v59 = *v58;
      v58 += 6;
      if (v59 < 0)
      {
        break;
      }

      if (v31 == ++v5)
      {
        v5 = *(a1 + 328);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v31)
  {
    goto LABEL_135;
  }

  v192 = v7;
  v179 = *(a1 + 328);
  do
  {
    v64 = *(a1 + 312) + 24 * v5;
    v67 = *(v64 + 16);
    v65 = (v64 + 16);
    v66 = v67;
    if (*(v67 + 300) <= 1u)
    {
      goto LABEL_273;
    }

    if (*(v66 + 208) == 1)
    {
      re::ecs2::UICoincidentalGroup::recomputeTransform(v66, v7);
    }

    re::ecs2::UICoincidentalGroup::updateGroupToken(v66);
    if (!*(v66 + 300))
    {
      *(v66 + 240) = 0;
      ++*(v66 + 248);
      ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
      goto LABEL_273;
    }

    v185 = v65;
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::HashSetBase(v207, v66 + 272);
    v68 = *(v66 + 240);
    if (v68)
    {
      v29 = v68 - 1;
      v69 = 16 * v68 - 16;
      do
      {
        v30 = *(v66 + 240);
        if (v30 <= v29)
        {
          goto LABEL_343;
        }

        v70 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v66 + 272, (*(v66 + 256) + v69));
        v4 = *(v66 + 240);
        if (v70)
        {
          if (v4 <= v29)
          {
            goto LABEL_347;
          }

          re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v207, (*(v66 + 256) + v69));
        }

        else
        {
          if (v4 <= v29)
          {
            goto LABEL_346;
          }

          v71 = v4 - 1;
          if (v4 - 1 > v29)
          {
            *(*(v66 + 256) + v69) = *(*(v66 + 256) + 16 * v4 - 16);
            v71 = *(v66 + 240) - 1;
          }

          *(v66 + 240) = v71;
          ++*(v66 + 248);
        }

        --v29;
        v69 -= 16;
      }

      while (v29 != -1);
    }

    v72 = v207[4];
    if (LODWORD(v207[4]))
    {
      v73 = 0;
      v74 = (v207[2] + 8);
      while (1)
      {
        v75 = *v74;
        v74 += 6;
        if (v75 < 0)
        {
          break;
        }

        if (LODWORD(v207[4]) == ++v73)
        {
          LODWORD(v73) = v207[4];
          break;
        }
      }
    }

    else
    {
      LODWORD(v73) = 0;
    }

    v76 = *(v66 + 240);
    if (v73 != LODWORD(v207[4]))
    {
      v77 = v207[2];
      do
      {
        v78 = *(v77 + 3 * v73 + 2);
        if (v76 >= *(v66 + 232))
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity((v66 + 224), v76 + 1);
          v76 = *(v66 + 240);
        }

        v79 = *(v66 + 256) + 16 * v76;
        *v79 = v78;
        *(v79 + 8) = 0;
        *(v66 + 240) = ++v76;
        ++*(v66 + 248);
        v77 = v207[2];
        if (LODWORD(v207[4]) <= (v73 + 1))
        {
          v80 = v73 + 1;
        }

        else
        {
          v80 = v207[4];
        }

        while (v80 - 1 != v73)
        {
          LODWORD(v73) = v73 + 1;
          if ((*(v207[2] + 6 * v73 + 2) & 0x80000000) != 0)
          {
            goto LABEL_174;
          }
        }

        LODWORD(v73) = v80;
LABEL_174:
        ;
      }

      while (v73 != v72);
    }

    if (!v76)
    {
      goto LABEL_350;
    }

    v184 = v5;
    re::ecs2::UISorterUtil::optionalSortingPlaneFrom(**(v66 + 256), *(*(v66 + 264) + 432), &v222);
    v206[0] = v223;
    v206[1] = v224;
    v81 = *(v66 + 256);
    v82 = *(v66 + 240);
    v222.i64[0] = v66;
    v222.i64[1] = v206;
    v83 = 126 - 2 * __clz(v82);
    if (v82)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(v81, &v81[2 * v82], &v222, v84, 1);
    v85 = *(v66 + 240);
    memset(&v212[8], 0, 20);
    *&v214[2] = 0;
    *v212 = v7;
    appended = re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v212, v85);
    v95 = ++*&v212[24];
    v29 = *(v66 + 240);
    if (v29)
    {
      v4 = 0;
      v5 = 0;
      v190 = 0;
      do
      {
        if (v5)
        {
          v96 = *(v66 + 264);
          if ((*(*(v96 + 440) + 160) & 1) == 0)
          {
            v30 = v5 - 1;
            if (v29 <= v5 - 1)
            {
              goto LABEL_348;
            }

            re::ecs2::UISorterUtil::optionalSortingPlaneFrom(*(*(v66 + 256) + v4 - 16), *(v96 + 432), &v222);
            v30 = *(v66 + 240);
            if (v30 <= v5)
            {
              goto LABEL_349;
            }

            v186 = v224;
            v188 = v223;
            appended = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(*(*(v66 + 256) + v4), *(*(v66 + 264) + 432), &v222);
            v97 = v224;
            if (re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken != -1)
            {
              v182 = v224;
              dispatch_once(&re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken, &__block_literal_global_8_0);
              v97 = v182;
            }

            v98 = vmulq_f32(v188, vsubq_f32(v97, v186));
            v99 = v190;
            if ((v98.f32[2] + vaddv_f32(*v98.f32)) > *&re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold)
            {
              v99 = v190 + 1;
            }

            v190 = v99;
          }
        }

        v100 = *&v212[16];
        if (*&v212[16] >= *&v212[8])
        {
          v29 = *&v212[16] + 1;
          if (*&v212[8] < (*&v212[16] + 1))
          {
            if (*v212)
            {
              v101 = 2 * *&v212[8];
              if (!*&v212[8])
              {
                v101 = 8;
              }

              if (v101 <= v29)
              {
                v102 = *&v212[16] + 1;
              }

              else
              {
                v102 = v101;
              }

              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v212, v102);
              v95 = *&v212[24];
            }

            else
            {
              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v212, v29);
              v95 = *&v212[24] + 1;
            }
          }

          v100 = *&v212[16];
        }

        v31 = *&v214[2];
        v103 = *&v214[2] + (v100 << 6);
        v104 = 0uLL;
        *v103 = 0u;
        *(v103 + 16) = 0u;
        *(v103 + 32) = 0;
        v105 = v100 + 1;
        *&v212[16] = v100 + 1;
        *&v212[24] = ++v95;
        v30 = *(v66 + 240);
        if (v30 <= v5)
        {
          goto LABEL_344;
        }

        v106 = v31 + (v105 << 6);
        v107 = re::ecs2::EntityComponentCollection::get((*(*(v66 + 256) + v4) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v222.i8[0] = 0;
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v106 - 64, v190, &v222);
        v108 = v107[20];
        if (v108 == 3)
        {
          v109 = 3;
        }

        else
        {
          v109 = (v108 + 3);
        }

        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v106 - 64, v109, &v222);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v106 - 64, v107[22], &v222);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(v106 - 64, v107[20] != 3, &v222);
        appended = re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(v106 - 64, v107[21], &v222);
        *(v106 - 32) = v5++;
        v29 = *(v66 + 240);
        v4 += 16;
      }

      while (v29 > v5);
      v29 = v31;
    }

    else
    {
      v29 = *&v214[2];
      v105 = *&v212[16];
    }

    v110 = 126 - 2 * __clz(v105);
    if (v105)
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    v112 = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v29, v29 + (v105 << 6), v111, 1, v87, v88, v89, v90, v174, v175, v176, v177, v91, v92, v93, v94, v178, v179, v180, v181);
    v113 = (*(*v66 + 24))(v66, v112);
    v114 = *(v66 + 240);
    memset(&v209[8], 0, 20);
    *&v211[2] = 0;
    *v209 = v113;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v209, v114);
    v116 = ++*&v209[24];
    if (v105)
    {
      v117 = (v29 + 32);
      while (1)
      {
        v118 = *v117;
        v117 += 16;
        v30 = v118;
        v31 = *(v66 + 240);
        if (v31 <= v118)
        {
          break;
        }

        v119 = *(v66 + 256);
        v120 = *&v209[16];
        if (*&v209[16] >= *&v209[8])
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity(v209, *&v209[16] + 1);
          v120 = *&v209[16];
          v116 = *&v209[24];
        }

        *(*&v211[2] + 16 * v120) = *(v119 + 16 * v30);
        *&v209[16] = v120 + 1;
        *&v209[24] = ++v116;
        if (!--v105)
        {
          goto LABEL_217;
        }
      }

LABEL_345:
      v208 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v215 = 136315906;
      *&v215[4] = "operator[]";
      v216 = 1024;
      v217 = 789;
      v218 = 2048;
      v219 = v30;
      v220 = 2048;
      v221 = v31;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_346:
      *v209 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v212 = 136315906;
      *&v212[4] = "removeAt";
      *&v212[12] = 1024;
      *&v212[14] = 931;
      *&v212[18] = 2048;
      *&v212[20] = v29;
      v213 = 2048;
      *v214 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_347:
      *v209 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v212 = 136315906;
      *&v212[4] = "operator[]";
      *&v212[12] = 1024;
      *&v212[14] = 789;
      *&v212[18] = 2048;
      *&v212[20] = v29;
      v213 = 2048;
      *v214 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_348:
      *v215 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v209 = 136315906;
      *&v209[4] = "operator[]";
      *&v209[12] = 1024;
      *&v209[14] = 789;
      *&v209[18] = 2048;
      *&v209[20] = v30;
      v210 = 2048;
      *v211 = v29;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_349:
      *v215 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v209 = 136315906;
      *&v209[4] = "operator[]";
      *&v209[12] = 1024;
      *&v209[14] = 789;
      *&v209[18] = 2048;
      *&v209[20] = v5;
      v210 = 2048;
      *v211 = v30;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_350:
      *v209 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v212 = 136315906;
      *&v212[4] = "operator[]";
      *&v212[12] = 1024;
      *&v212[14] = 789;
      *&v212[18] = 2048;
      *&v212[20] = 0;
      v213 = 2048;
      *v214 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_351:
      v208 = 0;
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v222 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v215 = 136315906;
      *&v215[4] = "operator[]";
      v216 = 1024;
      v217 = 789;
      v218 = 2048;
      v219 = 0;
      v220 = 2048;
      v221 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_352:
      re::internal::assertLog(4, v115, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
    }

LABEL_217:
    v121 = *(v66 + 224);
    if (v121 && *v209 && v121 != *v209)
    {
      goto LABEL_352;
    }

    v123 = *&v209[8];
    v122 = *&v209[16];
    v124 = *(v66 + 232);
    *(v66 + 224) = *v209;
    *(v66 + 232) = v123;
    v126 = *(v66 + 256);
    v125 = *(v66 + 264);
    *(v66 + 256) = *&v211[2];
    ++*(v66 + 248);
    *v209 = v121;
    *(v66 + 240) = v122;
    *&v209[8] = v124;
    if (*(*(v125 + 440) + 160))
    {
      v127 = 1.0;
    }

    else
    {
      if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
      {
        dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
      }

      v127 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
      v122 = *(v66 + 240);
    }

    if (!v122)
    {
      goto LABEL_351;
    }

    v181 = v126;
    v183 = v121;
    v187 = v29;
    v191 = 0;
    *(*(v66 + 256) + 8) = 0;
    if (v122 == 1)
    {
      goto LABEL_239;
    }

    v191 = 0;
    v128 = 0x100000000;
    v129 = 2;
    v4 = 1;
    do
    {
      v130 = *(v66 + 256) + 16 * v4;
      v131 = *v130;
      *(v130 + 8) = 0;
      v189 = v128;
      v132 = v129;
      do
      {
        v133 = v128;
        v134 = *(v66 + 240);
        if (v134 <= v128)
        {
          v208 = 0;
          v225 = 0u;
          v226 = 0u;
          v223 = 0u;
          v224 = 0u;
          v222 = 0u;
          v60 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v215 = 136315906;
          *&v215[4] = "operator[]";
          v216 = 1024;
          v217 = 789;
          v218 = 2048;
          v219 = v133;
          v220 = 2048;
          v221 = v134;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_289;
        }

        v135 = *(v66 + 256) + 16 * v128;
        if (re::ecs2::UISorterUtil::doEntitiesOverlap(v131, *v135, *(*(v66 + 264) + 432), v192, 1, v127))
        {
          v136 = *(v135 + 8);
          if (*(v130 + 8) <= (v136 + 1))
          {
            v137 = v136 + 1;
          }

          else
          {
            v137 = *(v130 + 8);
          }

          *(v130 + 8) = v137;
          if (re::ecs2::CARESortingDebugging::m_highestPriorityInGroup < v137)
          {
            re::ecs2::CARESortingDebugging::m_highestPriorityInGroup = v137;
            re::ecs2::CARESortingDebugging::m_highestPriorityGroupId = *(v66 + 80);
          }

          v191 = 1;
        }

        --v132;
        LODWORD(v128) = v128 - 1;
      }

      while (v132 > 1);
      ++v4;
      ++v129;
      v128 = v189 + 1;
    }

    while (*(v66 + 240) > v4);
LABEL_239:
    if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
    {
      dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
    }

    v7 = v192;
    v31 = v179;
    LODWORD(v5) = v184;
    if ((re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup & 1) != 0 && re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
    {
      if (*(v66 + 388))
      {
        v138 = *(v66 + 384);
        if (v138)
        {
          memset_pattern16(*(v66 + 368), &unk_1E304C660, 4 * v138);
        }

        v139 = *(v66 + 392);
        if (v139)
        {
          v140 = *(v66 + 376);
          do
          {
            if ((*v140 & 0x80000000) != 0)
            {
              *v140 &= ~0x80000000;
            }

            v140 += 10;
            --v139;
          }

          while (v139);
        }

        *(v66 + 396) = 0x7FFFFFFF;
        *(v66 + 388) = 0;
        ++*(v66 + 400);
      }

      v141 = *(v66 + 240);
      if (v141)
      {
        v142 = *(v66 + 256);
        v143 = 16 * v141;
        do
        {
          v222 = 0uLL;
          v223.i64[0] = 0;
          v144 = 0xBF58476D1CE4E5B9 * (*v142 ^ (*v142 >> 30));
          re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(&v222, v66 + 360, *v142, (0x94D049BB133111EBLL * (v144 ^ (v144 >> 27))) ^ ((0x94D049BB133111EBLL * (v144 ^ (v144 >> 27))) >> 31));
          if (v222.i32[3] == 0x7FFFFFFF)
          {
            v145 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v66 + 360, v222.u32[2], v222.u64[0]);
            *(v145 + 8) = *v142;
            *(v145 + 16) = *v142;
            ++*(v66 + 400);
          }

          v142 += 2;
          v143 -= 16;
        }

        while (v143);
      }
    }

    if (v183 && v181)
    {
      (*(*v183 + 40))();
    }

    v65 = v185;
    if (v187 && *v212)
    {
      (*(**v212 + 40))(*v212);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v207);
    ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
    if (v191)
    {
      v146 = v180;
      v148 = *(v180 + 1);
      v147 = *(v180 + 2);
      if (v147 >= v148)
      {
        v149 = v147 + 1;
        if (v148 < v147 + 1)
        {
          if (*v180)
          {
            v150 = 2 * v148;
            if (!v148)
            {
              v150 = 8;
            }

            if (v150 <= v149)
            {
              v151 = v149;
            }

            else
            {
              v151 = v150;
            }

            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v180, v151);
            v146 = v180;
          }

          else
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v180, v149);
            v146 = v180;
            ++*(v180 + 6);
          }
        }

        v147 = *(v146 + 2);
        v65 = v185;
      }

      v153 = v146;
      v154 = *v65;
      *(*(v146 + 4) + 8 * v147) = *v65;
      if (v154)
      {
        v155 = (v154 + 8);
        v147 = *(v153 + 2);
      }

      *(v153 + 2) = v147 + 1;
      ++*(v153 + 6);
      goto LABEL_274;
    }

LABEL_273:
    re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(&v202, v65);
LABEL_274:
    LODWORD(v152) = *(a1 + 328);
    if (v152 <= v5 + 1)
    {
      v152 = (v5 + 1);
    }

    else
    {
      v152 = v152;
    }

    while (v152 - 1 != v5)
    {
      v5 = (v5 + 1);
      if ((*(*(a1 + 312) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_281;
      }
    }

    v5 = v152;
LABEL_281:
    ;
  }

  while (v5 != v31);
LABEL_135:
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1 + 296);
  v60 = v204;
  if (!v204)
  {
LABEL_289:
    LODWORD(v61) = 0;
    goto LABEL_290;
  }

  v61 = 0;
  v62 = (v203 + 8);
  while (1)
  {
    v63 = *v62;
    v62 += 6;
    if (v63 < 0)
    {
      break;
    }

    if (v204 == ++v61)
    {
      LODWORD(v61) = v204;
      break;
    }
  }

LABEL_290:
  if (v61 != v60)
  {
    v160 = v203;
    do
    {
      v161 = *(v160 + 24 * v61 + 16);
      v162 = (v161 + 8);
      v163 = *(v161 + 304);
      if (*(v161 + 300))
      {
        if (v163)
        {
          v164 = 0;
          v165 = (*(v161 + 288) + 8);
          while (1)
          {
            v166 = *v165;
            v165 += 6;
            if (v166 < 0)
            {
              break;
            }

            if (v163 == ++v164)
            {
              LODWORD(v164) = *(v161 + 304);
              break;
            }
          }
        }

        else
        {
          LODWORD(v164) = 0;
        }

        v167 = *(v161 + 304);
LABEL_334:
        while (v164 != v163)
        {
          v222.i64[0] = *(*(v161 + 288) + 24 * v164 + 16);
          re::DynamicArray<re::TransitionCondition *>::add(v194, &v222);
          v167 = *(v161 + 304);
          if (v167 <= v164 + 1)
          {
            v173 = v164 + 1;
          }

          else
          {
            v173 = *(v161 + 304);
          }

          while (v173 - 1 != v164)
          {
            LODWORD(v164) = v164 + 1;
            if ((*(*(v161 + 288) + 24 * v164 + 8) & 0x80000000) != 0)
            {
              goto LABEL_334;
            }
          }

          LODWORD(v164) = v173;
        }
      }

      else
      {
        v167 = *(v161 + 304);
      }

      if (v167)
      {
        v168 = 0;
        v169 = (*(v161 + 288) + 8);
        while (1)
        {
          v170 = *v169;
          v169 += 6;
          if (v170 < 0)
          {
            break;
          }

          if (v167 == ++v168)
          {
            LODWORD(v168) = v167;
            break;
          }
        }
      }

      else
      {
        LODWORD(v168) = 0;
      }

LABEL_322:
      while (v168 != v167)
      {
        v222.i64[0] = *(*(v161 + 288) + 24 * v168 + 16);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 152, &v222);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v222);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
        v171 = *(v161 + 304);
        if (v171 <= v168 + 1)
        {
          v171 = v168 + 1;
        }

        while (v171 - 1 != v168)
        {
          LODWORD(v168) = v168 + 1;
          if ((*(*(v161 + 288) + 24 * v168 + 8) & 0x80000000) != 0)
          {
            goto LABEL_322;
          }
        }

        LODWORD(v168) = v171;
      }

      *(v161 + 208) = *(v161 + 300) != 0;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v161 + 272);
      *(v161 + 336) = 0;
      ++*(v161 + 344);
      *(v161 + 209) = 1;
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 200, v161);

      v160 = v203;
      if (v204 <= v61 + 1)
      {
        v172 = v61 + 1;
      }

      else
      {
        v172 = v204;
      }

      while (v172 - 1 != v61)
      {
        LODWORD(v61) = v61 + 1;
        if ((*(v203 + 24 * v61 + 8) & 0x80000000) != 0)
        {
          goto LABEL_330;
        }
      }

      LODWORD(v61) = v172;
LABEL_330:
      ;
    }

    while (v61 != v60);
  }

  if (v195)
  {
    v156 = v197;
    v157 = 8 * v195;
    do
    {
      v158 = *v156++;
      v222.i64[0] = v158;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v222);
      re::DynamicArray<re::TransitionCondition *>::add(v178, &v222);
      v157 -= 8;
    }

    while (v157);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1 + 344);
  v159.n128_f64[0] = re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v193);
  if (v194[0] && v197)
  {
    (*(*v194[0] + 40))(v159.n128_f64[0]);
  }

  if (v198[0])
  {
    if (v201)
    {
      (*(*v198[0] + 40))(v159);
    }
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v202);
}