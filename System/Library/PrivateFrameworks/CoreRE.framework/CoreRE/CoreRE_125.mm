__n128 re::DynamicArray<re::IBL>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::IBL>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 224 * v4;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 16) = *(a2 + 16);
  v6 = *(a2 + 40);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = v6;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 102);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 102) = v9;
  *(v5 + 88) = v8;
  *(v5 + 72) = v7;
  *(v5 + 120) = *(a2 + 120);
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 136) = *(a2 + 136);
  *(v5 + 144) = *(a2 + 144);
  *(v5 + 152) = *(a2 + 152);
  v11 = *(a2 + 176);
  result = *(a2 + 192);
  v12 = *(a2 + 160);
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 176) = v11;
  *(v5 + 192) = result;
  *(v5 + 160) = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(re::ecs2::ImageBasedLightComponentStateImpl *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(this + 576))
  {
    return this + 352;
  }

  re::AssetHandle::AssetHandle(&v16, (*(this + 1) + 1384));
  v4 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(&v16);
  re::AssetHandle::~AssetHandle(&v16);
  v15 = *(*(*(*(this + 1) + 232) + 56) + 88);
  v5 = re::AssetHandle::loadedAsset<re::TextureAsset>((v4 + 24));
  v6 = re::AssetHandle::loadedAsset<re::TextureAsset>((v4 + 72));
  re::AssetHandle::AssetHandle(v14, (v4 + 48));
  if (v14[1])
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v14);
  }

  else
  {
    v7 = 0;
  }

  v16 = 0;
  v17 = 0;
  *v19 = 0;
  v18 = 0;
  *&v19[8] = xmmword_1E3047670;
  *&v19[24] = xmmword_1E3047680;
  *&v19[40] = xmmword_1E30476A0;
  *&v19[56] = 0;
  *&v20[8] = xmmword_1E3092750;
  *&v20[24] = 0;
  *&v20[28] = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = xmmword_1E3047670;
  v25 = xmmword_1E3047680;
  v26 = xmmword_1E30476A0;
  v27 = 256;
  if (*(v5 + 120))
  {
    goto LABEL_19;
  }

  v1 = (v5 + 112);
  if ([*(v5 + 112) textureType] == 5)
  {
    if (*(v5 + 120))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v1 = &v15;
  }

  v2 = &v16;
  NS::SharedPtr<MTL::Buffer>::operator=(&v17, v1);
  if (*(v6 + 120))
  {
    goto LABEL_19;
  }

  v8 = (v6 + 112);
  if ([*(v6 + 112) textureType] == 5)
  {
    if (*(v6 + 120))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = &v15;
  }

  v1 = &v16;
  NS::SharedPtr<MTL::Buffer>::operator=(&v16, v8);
  if (!v7)
  {
LABEL_20:
    v9 = &v16;
    goto LABEL_22;
  }

  if (*(v7 + 120))
  {
    goto LABEL_19;
  }

  v9 = (v7 + 112);
  if ([*(v7 + 112) textureType] != 5)
  {
    v9 = &v15;
    goto LABEL_22;
  }

  if (*(v7 + 120))
  {
LABEL_19:
    std::__throw_bad_variant_access[abi:nn200100]();
    goto LABEL_20;
  }

LABEL_22:
  NS::SharedPtr<MTL::Buffer>::operator=(v1 + 2, v9);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 44, &v16);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 45, (v2 | 8));
  NS::SharedPtr<MTL::Buffer>::operator=(this + 46, v1 + 2);
  v10 = *&v19[48];
  *(this + 408) = *&v19[32];
  *(this + 424) = v10;
  *(this + 440) = *v20;
  *(this + 454) = *&v20[14];
  v11 = *&v19[16];
  *(this + 376) = *v19;
  *(this + 392) = v11;
  NS::SharedPtr<MTL::Buffer>::operator=(this + 59, &v21);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 60, v1 + 16);
  *(this + 61) = v22;
  NS::SharedPtr<MTL::Buffer>::operator=(this + 62, v1 + 18);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 63, v1 + 19);
  v12 = v25;
  *(this + 32) = v24;
  *(this + 33) = v12;
  *(this + 34) = v26;
  *(this + 280) = v27;
  *(this + 576) = 1;
  if (v23)
  {

    v23 = 0;
  }

  if (*(&v22 + 1))
  {

    *(&v22 + 1) = 0;
  }

  if (*(&v21 + 1))
  {

    *(&v21 + 1) = 0;
  }

  if (v21)
  {

    *&v21 = 0;
  }

  if (v18)
  {

    v18 = 0;
  }

  if (v17)
  {

    v17 = 0;
  }

  if (v16)
  {
  }

  re::AssetHandle::~AssetHandle(v14);
  if (v15)
  {
  }

  return this + 352;
}

void *re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addOrReplace(void *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, *a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v8 = a1[1] + 72 * v6;
    *(v8 + 8) = *a3;
    v9 = v8 + 8;
    if (v9 != a3)
    {
      v10 = *(v9 + 8);
      v11 = *(a3 + 8);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && v10 != v11)
      {
        re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v14 = *(v9 + 16);
      v15 = *(a3 + 16);
      *(v9 + 8) = v11;
      *(v9 + 16) = v15;
      *(a3 + 8) = v10;
      *(a3 + 16) = v14;
      v16 = *(v9 + 24);
      *(v9 + 24) = *(a3 + 24);
      *(a3 + 24) = v16;
      v17 = *(v9 + 40);
      *(v9 + 40) = *(a3 + 40);
      *(a3 + 40) = v17;
      ++*(a3 + 32);
      ++*(v9 + 32);
    }

    result = NS::SharedPtr<MTL::Texture>::operator=((v9 + 48), (a3 + 48));
    *(v9 + 56) = *(a3 + 56);
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLDataForWorld(re::ecs2::ImageBasedLightComponentStateImpl *this, uint64_t a2)
{
  v4 = (*(**(*(this + 1) + 256) + 24))(*(*(this + 1) + 256));
  v5 = (*(*v4 + 24))(v4, a2);
  v6 = (*(*v4 + 32))(v4, a2);
  if (v5 != 1 || v6 == 0)
  {

    return re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(this);
  }

  else
  {
    if ((*(this + 816) & 1) == 0)
    {
      DefaultIBLData = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(this);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 74, DefaultIBLData);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 75, (DefaultIBLData + 8));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 76, (DefaultIBLData + 16));
      v10 = *(DefaultIBLData + 40);
      *(this + 616) = *(DefaultIBLData + 24);
      *(this + 632) = v10;
      v11 = *(DefaultIBLData + 72);
      v12 = *(DefaultIBLData + 88);
      v13 = *(DefaultIBLData + 56);
      *(this + 694) = *(DefaultIBLData + 102);
      *(this + 664) = v11;
      *(this + 680) = v12;
      *(this + 648) = v13;
      NS::SharedPtr<MTL::Buffer>::operator=(this + 89, (DefaultIBLData + 120));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 90, (DefaultIBLData + 128));
      *(this + 91) = *(DefaultIBLData + 136);
      NS::SharedPtr<MTL::Buffer>::operator=(this + 92, (DefaultIBLData + 144));
      NS::SharedPtr<MTL::Buffer>::operator=(this + 93, (DefaultIBLData + 152));
      v15 = *(DefaultIBLData + 176);
      v14 = *(DefaultIBLData + 192);
      v16 = *(DefaultIBLData + 160);
      *(this + 400) = *(DefaultIBLData + 208);
      *(this + 48) = v15;
      *(this + 49) = v14;
      *(this + 47) = v16;
      *(this + 154) = 1077936128;
      *(this + 816) = 1;
    }

    return this + 592;
  }
}

BOOL re::ecs2::ImageBasedLightComponentStateImpl::processDirtyComponents(int64x2_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v21, a5, 0);
  v9 = v21;
  v10 = v22;
  v11 = v22;
  v21 = a4;
  v22 = v9;
  v23 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v21) + 16);
      re::ecs2::ImageBasedLightComponentStateImpl::clearDataForEntity(a1, v13);
      v14 = *(v13 + 76);
      v15 = v21;
      v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      if (v14)
      {
        v17 = 40;
      }

      else
      {
        v17 = 32;
      }

      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *(a3 + v17));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::processPreparingComponents(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, _DWORD *a5, uint64_t a6)
{
  v251 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 8);
  v8 = *(a1[1] + 232);
  v9 = *(v8 + 160);
  v10 = *(v8 + 96);
  v224 = -1.0;
  if (v10)
  {
    v226 = 0x7FB5C51BA04C45D6;
    v227 = "imageBasedLight:systemIBLIntensity";
    v11 = re::DebugSettingsManager::getWithErrorCode<float>(v10, &v226, &v224);
    if (v226)
    {
      if (v226)
      {
      }
    }
  }

  if (v9)
  {
    v199 = *v9;
  }

  else
  {
    v199 = 0;
  }

  v12 = *(a1[1] + 232);
  v13 = *(v12 + 112);
  if (v13)
  {
    re::RenderFrameBox::get((v13 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v12 = *(a1[1] + 232);
  }

  v223 = *(*(v12 + 56) + 88);
  v198 = (a1[20] + 16 * re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(a1 + 19, v7) + 8);
  v208 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get((a1 + 11), *v198);
  v200 = (*(**(a1[1] + 256) + 24))(*(a1[1] + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v226, a5, 0);
  v220 = a4;
  v221 = v226;
  v222 = v227;
  if (v226 != a5 || v227 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v218 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v220);
      v219 = *(v218 + 2);
      (*(*v200 + 8))(&v226);
      v18 = v218;
      if (v226)
      {
        v19 = v227;
      }

      else
      {
        v19 = 0;
      }

      v217 = v19;
      v226 = 0;
      v227 = 0;
      *v229 = 0;
      v228 = 0;
      *&v229[8] = xmmword_1E3047670;
      *&v229[24] = xmmword_1E3047680;
      *&v229[40] = xmmword_1E30476A0;
      *&v230[8] = xmmword_1E3092750;
      *&v229[56] = 0;
      *&v230[24] = 0;
      *&v230[28] = 0;
      v233 = 0;
      v232 = 0u;
      v231 = 0u;
      v234 = xmmword_1E3047670;
      v235 = xmmword_1E3047680;
      v236 = xmmword_1E30476A0;
      v237 = 256;
      if (*(v218 + 136) != 1)
      {
        goto LABEL_29;
      }

      v20 = *(v218 + 15);
      if (!v20)
      {
        break;
      }

      v21 = atomic_load((v20 + 896));
      if (v21 == 2)
      {
        v209 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v218 + 112));
        v22 = re::AssetHandle::loadedAsset<re::TextureAsset>((v209 + 24));
        if (*(v22 + 120))
        {
          goto LABEL_251;
        }

        v213 = v22;
        v23 = (v22 + 112);
        v24 = [*(v22 + 112) textureType];
        if (v24 == 5)
        {
          if (*(v213 + 30))
          {
            goto LABEL_251;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v231 + 1, v23);
        }

        else
        {
          v73 = *re::ecsComponentsLogObjects(v24);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = re::AssetHandle::assetInfo((v218 + 112));
            if (v74[17])
            {
              v75 = v74[18];
            }

            else
            {
              v75 = v74 + 137;
            }

            *buf = 136315138;
            *&buf[4] = v75;
            _os_log_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", buf, 0xCu);
          }
        }

        v76 = re::AssetHandle::loadedAsset<re::TextureAsset>((v209 + 72));
        if (*(v76 + 120))
        {
          goto LABEL_251;
        }

        v211 = v76;
        v77 = (v76 + 112);
        v78 = [*(v76 + 112) textureType];
        if (v78 == 5)
        {
          if (*(v211 + 30))
          {
            goto LABEL_251;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v231, v77);
        }

        else
        {
          v80 = *re::ecsComponentsLogObjects(v78);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = re::AssetHandle::assetInfo((v218 + 112));
            if (v81[17])
            {
              v82 = v81[18];
            }

            else
            {
              v82 = v81 + 137;
            }

            *buf = 136315138;
            *&buf[4] = v82;
            _os_log_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", buf, 0xCu);
          }
        }

        re::ecs2::ImageBasedLightingHelper::checkIBLAssetVersion(v218, v213, v211, v79);
        v83 = re::AssetHandle::assetInfo((v218 + 112));
        if (*(v83 + 13))
        {
          v84 = *(v83 + 14);
        }

        else
        {
          v84 = v83 + 105;
        }

        v214 = re::Hash<re::DynamicString>::operator()(buf, v84);
        v18 = v218;
        v210 = 1;
      }

      else
      {
        re::AssetHandle::loadAsync((v218 + 112));
        NS::SharedPtr<MTL::Buffer>::operator=(&v231 + 1, &v223);
        NS::SharedPtr<MTL::Buffer>::operator=(&v231, &v223);
        NS::SharedPtr<MTL::Buffer>::operator=(&v232 + 1, &v223);
        NS::SharedPtr<MTL::Buffer>::operator=(&v233, &v223);
        v18 = v218;
        v214 = 0;
        v210 = 0;
      }

LABEL_30:
      if (*(v18 + 12))
      {
        v25 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v18 + 88));
        if (!v25)
        {
          re::AssetHandle::loadAsync((v218 + 88));
          NS::SharedPtr<MTL::Buffer>::operator=(&v227, &v223);
          NS::SharedPtr<MTL::Buffer>::operator=(&v226, &v223);
          v32 = v218;
          v210 = 0;
          goto LABEL_133;
        }

        v201 = v25;
        v26 = re::AssetHandle::loadedAsset<re::TextureAsset>((v25 + 24));
        v196 = v26;
        if (v26)
        {
          if (*(v26 + 120))
          {
            goto LABEL_251;
          }

          v28 = (v26 + 112);
          v27 = *(v26 + 112);
          if (v27)
          {
            v27 = [v27 textureType];
            if (v27 == 5)
            {
              if (*(v196 + 30))
              {
                goto LABEL_251;
              }

              NS::SharedPtr<MTL::Buffer>::operator=(&v227, v28);
LABEL_58:
              v42 = re::AssetHandle::AssetHandle(buf, (v201 + 48));
              if (*&buf[8])
              {
                v43 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v42);
                if (v43)
                {
                  v44 = v43;
                  if (*(v43 + 120))
                  {
                    goto LABEL_251;
                  }

                  v45 = *(v43 + 112);
                  if (v45 && (v45 = [(re *)v45 textureType], v46 = (v44 + 112), v45 == 5))
                  {
                    if (*(v44 + 120))
                    {
                      goto LABEL_251;
                    }

LABEL_66:
                    NS::SharedPtr<MTL::Buffer>::operator=(&v228, v46);
                  }

                  else
                  {
                    v61 = *re::ecsComponentsLogObjects(v45);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      v62 = re::AssetHandle::assetInfo((v218 + 88));
                      if (v62[17])
                      {
                        v63 = v62[18];
                      }

                      else
                      {
                        v63 = v62 + 137;
                      }

                      *v238 = 136315138;
                      v239 = v63;
                      _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", v238, 0xCu);
                    }
                  }

                  v47 = re::AssetHandle::loadedAsset<re::TextureAsset>((v201 + 72));
                  if (v47)
                  {
                    if (*(v47 + 120))
                    {
                      goto LABEL_251;
                    }

                    v203 = v47;
                    v49 = (v47 + 112);
                    v48 = *(v47 + 112);
                    if (v48 && (v48 = [(re *)v48 textureType], v48 == 5))
                    {
                      if (*(v203 + 30))
                      {
                        goto LABEL_251;
                      }

                      NS::SharedPtr<MTL::Buffer>::operator=(&v226, v49);
                    }

                    else
                    {
                      v51 = *re::ecsComponentsLogObjects(v48);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        v52 = re::AssetHandle::assetInfo((v218 + 88));
                        if (v52[17])
                        {
                          v53 = v52[18];
                        }

                        else
                        {
                          v53 = v52 + 137;
                        }

                        *v238 = 136315138;
                        v239 = v53;
                        _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", v238, 0xCu);
                      }
                    }

                    if (v196)
                    {
                      re::ecs2::ImageBasedLightingHelper::checkIBLAssetVersion(v218, v196, v203, v50);
                      v54 = re::AssetHandle::assetInfo((v218 + 88));
                      if (*(v54 + 13))
                      {
                        v55 = *(v54 + 14);
                      }

                      else
                      {
                        v55 = v54 + 105;
                      }

                      v214 = (v214 + re::Hash<re::DynamicString>::operator()(v238, v55));
                    }
                  }

                  else
                  {
                    v56 = NS::SharedPtr<MTL::Buffer>::operator=(&v226, &v223);
                    v57 = *re::ecsComponentsLogObjects(v56);
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = re::AssetHandle::assetInfo((v218 + 88));
                      if (v58[17])
                      {
                        v59 = v58[18];
                      }

                      else
                      {
                        v59 = v58 + 137;
                      }

                      *v238 = 136315138;
                      v239 = v59;
                      _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "Null specular texture encountered for IBL texture type [%s].", v238, 0xCu);
                    }
                  }

                  re::AssetHandle::~AssetHandle(buf);
LABEL_112:
                  v32 = v218;
                  goto LABEL_133;
                }
              }

              v46 = &v227;
              goto LABEL_66;
            }
          }

          v33 = *re::ecsComponentsLogObjects(v27);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v34 = re::AssetHandle::assetInfo((v218 + 88));
          if (v34[17])
          {
            v35 = v34[18];
          }

          else
          {
            v35 = v34 + 137;
          }

          *buf = 136315138;
          *&buf[4] = v35;
          v36 = v33;
          v37 = "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.";
        }

        else
        {
          v38 = NS::SharedPtr<MTL::Buffer>::operator=(&v227, &v223);
          v39 = *re::ecsComponentsLogObjects(v38);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          v40 = re::AssetHandle::assetInfo((v218 + 88));
          if (v40[17])
          {
            v41 = v40[18];
          }

          else
          {
            v41 = v40 + 137;
          }

          *buf = 136315138;
          *&buf[4] = v41;
          v36 = v39;
          v37 = "Null diffuse texture encountered for IBL texture type [%s].";
        }

        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
        goto LABEL_58;
      }

      if (*(v18 + 6) || *(v18 + 9))
      {
        v29 = re::AssetHandle::loadedAsset<re::TextureAsset>((v18 + 40));
        if (v29)
        {
          v30 = v29;
          if (*(v29 + 120))
          {
            goto LABEL_251;
          }

          v202 = (v29 + 112);
          v31 = [*(v29 + 112) textureType];
          if (v31 == 5)
          {
            if (*(v30 + 120))
            {
              goto LABEL_251;
            }

            NS::SharedPtr<MTL::Buffer>::operator=(&v227, v202);
          }

          else
          {
            v64 = *re::ecsComponentsLogObjects(v31);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = re::AssetHandle::assetInfo((v218 + 40));
              if (v65[17])
              {
                v66 = v65[18];
              }

              else
              {
                v66 = v65 + 137;
              }

              *buf = 136315138;
              *&buf[4] = v66;
              _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Wrong diffuse IBL texture type [%s]. Diffuse IBL texture must be cubemap.", buf, 0xCu);
            }
          }

          v60 = v218;
        }

        else
        {
          re::AssetHandle::loadAsync((v218 + 40));
          NS::SharedPtr<MTL::Buffer>::operator=(&v227, &v223);
          v60 = v218;
          v210 = 0;
        }

        v67 = re::AssetHandle::loadedAsset<re::TextureAsset>((v60 + 64));
        if (!v67)
        {
          re::AssetHandle::loadAsync((v218 + 64));
          NS::SharedPtr<MTL::Buffer>::operator=(&v226, &v223);
          v32 = v218;
          v210 = 0;
          goto LABEL_133;
        }

        v68 = v67;
        if (*(v67 + 120))
        {
          goto LABEL_251;
        }

        v204 = (v67 + 112);
        v69 = [*(v67 + 112) textureType];
        if (v69 == 5)
        {
          if (*(v68 + 120))
          {
            goto LABEL_251;
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v226, v204);
          goto LABEL_112;
        }

        v70 = *re::ecsComponentsLogObjects(v69);
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_112;
        }

        v71 = re::AssetHandle::assetInfo((v218 + 64));
        if (v71[17])
        {
          v72 = v71[18];
        }

        else
        {
          v72 = v71 + 137;
        }

        *buf = 136315138;
        *&buf[4] = v72;
        _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "Wrong specular IBL texture type [%s]. Specular IBL texture must be cubemap.", buf, 0xCu);
      }

      else
      {
        NS::SharedPtr<MTL::Buffer>::operator=(&v227, &v223);
        NS::SharedPtr<MTL::Buffer>::operator=(&v226, &v223);
      }

      v32 = v218;
LABEL_133:
      v85 = *(v32 + 158);
      v86 = *(v32 + 136);
      if (*(v32 + 1208) == 1)
      {
        v230[28] = 1;
        v230[29] = v86;
LABEL_135:
        v87 = 0xBF58476D1CE4E5B9;
        goto LABEL_140;
      }

      if (v86)
      {
        v230[28] = *(v32 + 1209);
        v230[29] = v86;
        if (v230[28] == 1)
        {
          goto LABEL_135;
        }

        v87 = 0;
      }

      else
      {
        v87 = 0;
        v230[28] = 0;
        v230[29] = v86;
      }

LABEL_140:
      v88 = *(v32 + 1209);
      if (v88 == 1)
      {
        v89 = *(v32 + 77);
        v234 = *(v32 + 76);
        v235 = v89;
        v90 = *(v32 + 78);
        v236 = v90;
      }

      else
      {
        v234 = xmmword_1E3047670;
        v235 = xmmword_1E3047680;
        HIDWORD(v90) = 0;
        v236 = xmmword_1E30476A0;
      }

      v91 = 0;
      v92 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) >> 27));
      v93 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v86) ^ ((0xBF58476D1CE4E5B9 * v86) >> 27));
      v94 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v88) ^ ((0xBF58476D1CE4E5B9 * v88) >> 27));
      v95 = v214 + (v92 ^ (v92 >> 31)) + (v93 ^ (v93 >> 31)) + ((0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) ^ ((0x94D049BB133111EBLL * (v87 ^ (v87 >> 27))) >> 31)) + (v94 ^ (v94 >> 31));
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          v97 = &v234;
          v98 = &v235;
          v99 = &v236;
          if (v91)
          {
            if (v91 == 2)
            {
              v97 = (&v234 + 8);
            }

            else
            {
              v97 = (&v234 + 4);
            }

            if (v91 == 2)
            {
              v98 = (&v235 + 8);
            }

            else
            {
              v98 = (&v235 + 4);
            }

            if (v91 == 2)
            {
              v99 = (&v236 + 8);
            }

            else
            {
              v99 = (&v236 + 4);
            }
          }

          LODWORD(v90) = *v97;
          DWORD1(v90) = *v98;
          DWORD2(v90) = *v99;
          *buf = v90;
          v100 = 0xBF58476D1CE4E5B9 * (*&buf[i] ^ (*&buf[i] >> 30));
          v95 += ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) ^ ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) >> 31)) * v91;
        }

        ++v91;
      }

      while (v91 != 3);
      v101 = *(v32 + 136);
      if (v101)
      {
        v102 = *(v32 + 35);
      }

      else
      {
        v102 = 0;
      }

      LODWORD(v232) = v102;
      if (v101 && *(v32 + 137) == 1)
      {
        v103 = *(v32 + 36);
      }

      else
      {
        v103 = 0;
      }

      v104 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v102 ^ (v102 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v102 ^ (v102 >> 30))) >> 27));
      v105 = (v104 ^ (v104 >> 31)) + v95;
      DWORD1(v232) = v103;
      v106 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v103 ^ (v103 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v103 ^ (v103 >> 30))) >> 27));
      *(v32 + 166) = v105 + (v106 ^ (v106 >> 31));
      if (v224 >= 0.0 && *(v32 + 148) == 1)
      {
        v107 = log2f(v224);
        v32 = v218;
      }

      else
      {
        v107 = *(v32 + 7);
      }

      v108 = *(v32 + 300);
      *v229 = v107;
      *&v229[56] = v108;
      v109 = *(v32 + 322);
      v110 = *(v32 + 1296);
      *buf = *(v32 + 160);
      buf[12] = v110;
      *&buf[8] = v109;
      v111 = v32;
      *&v112 = re::ColorGamut3F::as(buf, v199, 1);
      DWORD2(v112) = v113;
      *&v230[8] = v112;
      *&v230[24] = *(v111 + 301);
      HIBYTE(v237) = *(v111 + 148);
      v114 = v208;
      v115 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v208 + 64), v217);
      if (v115 != -1)
      {
        goto LABEL_182;
      }

      v117 = *(v208 + 56);
      v118 = (v117 + 1) >> 24 ? 1 : v117 + 1;
      *(v208 + 56) = v118;
      v119 = *(v208 + 52);
      v120 = *(v208 + 54);
      v121 = v208;
      if (v119 == 0xFFFF && v120 == 0xFFFF)
      {
        v122 = buf;
        if (*(v208 + 48) >= *(v208 + 44))
        {
          re::DataArray<re::TransformCache>::allocBlock(v208);
          v121 = v208;
        }

        v123 = *(v121 + 16);
        v124 = (v123 - 1);
        if (!v123)
        {
          goto LABEL_248;
        }

        v125 = *(v121 + 48);
        if (v125 >= 0x10000)
        {
          goto LABEL_250;
        }

        v215 = (v123 - 1);
        v126 = (*(v121 + 32) + 16 * v124);
        *(v121 + 48) = v125 + 1;
        *(v126[1] + 4 * v125) = *(v121 + 56);
        v205 = v125;
        v127 = *v126 + 96 * v125;
      }

      else
      {
        v128 = *(v208 + 16);
        v129 = buf;
        if (v128 <= v120)
        {
          goto LABEL_249;
        }

        v215 = *(v208 + 54);
        v130 = (*(v208 + 32) + 16 * v120);
        *(v130[1] + 4 * v119) = v118;
        v205 = v119;
        v127 = *v130 + 96 * v119;
        *(v208 + 52) = *v127;
      }

      ++*(v121 + 40);
      *(v127 + 64) = 0u;
      *(v127 + 80) = 0u;
      *(v127 + 32) = 0u;
      *(v127 + 48) = 0u;
      *v127 = 0u;
      *(v127 + 16) = 0u;
      v197 = *(v121 + 56);
      v114 = v121;
      v115 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v121 + 64), v217);
      if (v115 == -1)
      {
        v155 = v114;
        if (!v114[15])
        {
          v155 = v208;
        }

        v156 = v155[12];
        if (!v156 || (v157 = v155[10], v157 > 8 * v156))
        {
          re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v208 + 64, 1u);
          v155 = v208;
          v157 = *(v208 + 80);
        }

        v158 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v217 ^ (v217 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v217 ^ (v217 >> 30))) >> 27));
        v159 = v158 ^ (v158 >> 31);
        v160 = v157 >> 4;
        v161 = v159 % (v157 >> 4);
        v162 = v155[8];
        v163 = v161;
        v132 = a1;
        while (1)
        {
          v164 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v162 + 16 * v163)), xmmword_1E304FAD0)))), 0x3830282018100800)));
          if (v164 < 0x40)
          {
            break;
          }

          if (v163 + 1 == v160)
          {
            v163 = 0;
          }

          else
          {
            ++v163;
          }

          if (v163 == v161)
          {
            re::internal::assertLog(4, v131, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            result = _os_crash();
            __break(1u);
            return result;
          }
        }

        v165 = v162 + 16 * v163;
        v166 = *(v165 + v164);
        *(v165 + v164) = v159 & 0x7F;
        v167 = v164 + 16 * v163;
        v168 = (v155[9] + 16 * v167);
        *v168 = v217;
        v168[1] = v205 + 0x10000 * v215 + ((v197 & 0xFFFFFF) << 32);
        if (v166 == 255)
        {
          v169 = -1;
        }

        else
        {
          v169 = 0;
        }

        v170.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v170.i64[1] = v169;
        *(v155 + 11) = vaddq_s64(*(v155 + 11), v170);
        v171 = (v155[9] + 16 * v167);
        v216 = (v171 + 1);
        v172 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v171 ^ (*v171 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v171 ^ (*v171 >> 30))) >> 27));
        v155[13] ^= (v172 >> 31) ^ v172;
        v114 = v155;
      }

      else
      {
LABEL_182:
        v216 = (v114[9] + 16 * v115 + 8);
        v132 = a1;
      }

      re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove((v132 + 36), v217);
      v133 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(v114[2], v114[4], *v216);
      v134 = v133;
      v135 = *(v133 + 11);
      v136 = *(v133 + 9);
      v137 = v135;
      v138 = v218;
      if (v136)
      {
        v139 = 8 * v136;
        v137 = *(v133 + 11);
        while (*v137 != v218)
        {
          ++v137;
          v139 -= 8;
          if (!v139)
          {
            goto LABEL_192;
          }
        }
      }

      if (v137 == &v135[v136])
      {
LABEL_192:
        v152 = *(v133 + 8);
        v151 = v216;
        if (v136 >= v152)
        {
          if (v152 < v136 + 1)
          {
            if (*(v133 + 7))
            {
              v153 = 2 * v152;
              if (!v152)
              {
                v153 = 8;
              }

              if (v153 <= v136 + 1)
              {
                v154 = v136 + 1;
              }

              else
              {
                v154 = v153;
              }

              re::DynamicArray<float *>::setCapacity(v133 + 7, v154);
            }

            else
            {
              v206 = (v136 + 1);
              re::DynamicArray<float *>::setCapacity(v134 + 7, v206);
              ++*(v134 + 20);
            }

            v138 = v218;
            v151 = v216;
          }

          v136 = *(v134 + 9);
          v135 = *(v134 + 11);
        }

        v135[v136] = v138;
        *(v134 + 9) = v136 + 1;
        ++*(v134 + 20);
        v173 = *(v134 + 2);
        if (v173 >= *(v134 + 1))
        {
          re::DynamicArray<re::IBL>::growCapacity(v134, v173 + 1);
          v151 = v216;
          v173 = *(v134 + 2);
        }

        v174 = *(v134 + 4) + 224 * v173;
        *v174 = v226;
        v226 = 0;
        *(v174 + 8) = v227;
        v227 = 0;
        *(v174 + 16) = v228;
        v228 = 0;
        v175 = *&v229[32];
        v176 = *&v229[48];
        v177 = *v230;
        *(v174 + 102) = *&v230[14];
        *(v174 + 88) = v177;
        *(v174 + 72) = v176;
        *(v174 + 56) = v175;
        v178 = *v229;
        *(v174 + 40) = *&v229[16];
        *(v174 + 24) = v178;
        *(v174 + 120) = v231;
        *&v231 = 0;
        *(v174 + 128) = *(&v231 + 1);
        *(&v231 + 1) = 0;
        *(v174 + 136) = v232;
        *(&v232 + 1) = 0;
        *(v174 + 152) = v233;
        v233 = 0;
        v179 = v234;
        v180 = v235;
        v181 = v236;
        *(v174 + 208) = v237;
        *(v174 + 176) = v180;
        *(v174 + 192) = v181;
        *(v174 + 160) = v179;
        ++*(v134 + 2);
        ++*(v134 + 6);
      }

      else
      {
        v140 = v137 - v135;
        v141 = v140 >> 3;
        if (v136 <= v140 >> 3)
        {
          v225 = 0;
          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          *buf = 0u;
          v186 = v136;
          v187 = v140 >> 3;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v238 = 136315906;
          v239 = "operator[]";
          v240 = 1024;
          v241 = 789;
          v242 = 2048;
          v243 = v187;
          v244 = 2048;
          v245 = v186;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_247:
          v225 = 0;
          v188 = v142;
          v249 = 0u;
          v250 = 0u;
          v247 = 0u;
          v248 = 0u;
          *buf = 0u;
          v122 = MEMORY[0x1E69E9C10];
          v189 = v141;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v238 = 136315906;
          v239 = "operator[]";
          v240 = 1024;
          v241 = 789;
          v242 = 2048;
          v243 = v189;
          v244 = 2048;
          v245 = v188;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_248:
          v225 = 0;
          *(v122 + 3) = 0u;
          *(v122 + 4) = 0u;
          *(v122 + 1) = 0u;
          *(v122 + 2) = 0u;
          *v122 = 0u;
          v190 = v124;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v238 = 136315906;
          v239 = "operator[]";
          v240 = 1024;
          v241 = 789;
          v242 = 2048;
          v243 = v190;
          v244 = 2048;
          v245 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_249:
          v225 = 0;
          *(v129 + 3) = 0u;
          *(v129 + 4) = 0u;
          *(v129 + 1) = 0u;
          *(v129 + 2) = 0u;
          *v129 = 0u;
          v191 = v120;
          v192 = v128;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v238 = 136315906;
          v239 = "operator[]";
          v240 = 1024;
          v241 = 789;
          v242 = 2048;
          v243 = v191;
          v244 = 2048;
          v245 = v192;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_250:
          re::internal::assertLog(5, v116, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v125);
          _os_crash();
          __break(1u);
LABEL_251:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        *(v135 + v140) = v218;
        v142 = *(v133 + 2);
        if (v142 <= v141)
        {
          goto LABEL_247;
        }

        v143 = *(v133 + 4) + 224 * v141;
        NS::SharedPtr<MTL::Texture>::operator=(v143, &v226);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 8), &v227);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 16), &v228);
        v144 = *&v229[16];
        *(v143 + 24) = *v229;
        *(v143 + 40) = v144;
        v145 = *&v229[48];
        v146 = *v230;
        v147 = *&v230[14];
        *(v143 + 56) = *&v229[32];
        *(v143 + 102) = v147;
        *(v143 + 88) = v146;
        *(v143 + 72) = v145;
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 120), &v231);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 128), &v231 + 1);
        *(v143 + 136) = v232;
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 144), &v232 + 1);
        NS::SharedPtr<MTL::Texture>::operator=((v143 + 152), &v233);
        v149 = v235;
        v148 = v236;
        v150 = v234;
        *(v143 + 208) = v237;
        *(v143 + 176) = v149;
        *(v143 + 192) = v148;
        *(v143 + 160) = v150;
        v151 = v216;
      }

      *buf = *v198;
      *&buf[8] = *v151;
      *&v247 = v217;
      v182 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(a1 + 27, v219);
      if (v182 == -1)
      {
        re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(a1 + 27, &v219, buf);
      }

      else
      {
        v183 = a1[28] + 32 * v182;
        *(v183 + 8) = *buf;
        *(v183 + 24) = v247;
      }

      if (v210)
      {
        v184 = v220;
        v185 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v221);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v184, v185, *(a3 + 48));
      }

      if (v233)
      {

        v233 = 0;
      }

      if (*(&v232 + 1))
      {

        *(&v232 + 1) = 0;
      }

      if (*(&v231 + 1))
      {

        *(&v231 + 1) = 0;
      }

      if (v231)
      {

        *&v231 = 0;
      }

      if (v228)
      {

        v228 = 0;
      }

      if (v227)
      {

        v227 = 0;
      }

      if (v226)
      {
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v221);
      if (v221 == a5 && v222 == 0xFFFF && HIWORD(v222) == 0xFFFF)
      {
        goto LABEL_12;
      }
    }

    NS::SharedPtr<MTL::Buffer>::operator=(&v231 + 1, &v223);
    NS::SharedPtr<MTL::Buffer>::operator=(&v231, &v223);
    NS::SharedPtr<MTL::Buffer>::operator=(&v232 + 1, &v223);
    NS::SharedPtr<MTL::Buffer>::operator=(&v233, &v223);
    v18 = v218;
LABEL_29:
    v214 = 0;
    v210 = 1;
    goto LABEL_30;
  }

LABEL_12:
  v14 = *(a3 + 48);
  v15 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a3 + 16) + 8, v14);
  v16 = a5[10];
  if (v16 && !*(v15 + 40))
  {
    (*(*a1 + 40))(a1, a2, a3, v14, v15, a6);
    v16 = a5[10];
  }

  if (v223)
  {
  }

  return v16 != 0;
}

re *re::ecs2::ImageBasedLightingHelper::checkIBLAssetVersion(re::ecs2::ImageBasedLightingHelper *this, re::ecs2::ImageBasedLightComponent *a2, const re::TextureAsset *a3, const re::TextureAsset *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = re::AssetHandle::assetInfo((this + 88));
  if (*(v7 + 17))
  {
    v8 = *(v7 + 18);
  }

  else
  {
    v8 = v7 + 137;
  }

  if (*(this + 147))
  {
    v9 = *(this + 148);
  }

  else
  {
    v9 = this + 1177;
  }

  result = strcmp(v8, v9);
  if (result)
  {
    if (*(a2 + 86) != 1 || *(a2 + 44) == 0)
    {
      v12 = *re::ecsComponentsLogObjects(result);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v13 = re::AssetHandle::assetInfo((this + 88));
        if (v13[17])
        {
          v14 = v13[18];
        }

        else
        {
          v14 = v13 + 137;
        }

        LODWORD(v21) = 136315138;
        *(&v21 + 4) = v14;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Diffuse IBL texture [%s] generated by old tool, please update it. For .skybox assets, please rebuild with newer xcode.", &v21, 0xCu);
      }
    }

    if (*(a3 + 86) != 1 || !*(a3 + 44))
    {
      v15 = *re::ecsComponentsLogObjects(result);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = re::AssetHandle::assetInfo((this + 88));
        if (v16[17])
        {
          v17 = v16[18];
        }

        else
        {
          v17 = v16 + 137;
        }

        LODWORD(v21) = 136315138;
        *(&v21 + 4) = v17;
        _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Specular IBL texture [%s] generated by old tool, please update it. For .skybox assets, please rebuild with newer xcode.", &v21, 0xCu);
      }
    }

    v18 = re::AssetHandle::assetInfo((this + 88));
    if (*(v18 + 17))
    {
      v19 = *(v18 + 18);
    }

    else
    {
      v19 = v18 + 137;
    }

    v20 = strlen(v19);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    return re::DynamicString::operator=((this + 1168), &v21);
  }

  return result;
}

BOOL re::ecs2::ImageBasedLightComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v97 = *(a3 + 8);
  v8 = *(*(*(a1 + 8) + 232) + 112);
  if (v8)
  {
    v95 = re::RenderFrameBox::get((v8 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v95 = 0;
  }

  v9 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((a1 + 152), v97);
  v98 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get(a1 + 88, *(*(a1 + 160) + 16 * v9 + 8));
  v102 = (*(**(*(a1 + 8) + 256) + 24))(*(*(a1 + 8) + 256));
  v10 = (*(**(v97 + 7) + 32))(*(v97 + 7));
  v99 = re::ServiceLocator::service<re::TransformService>(v10);
  if (*(a1 + 280) == 1)
  {
    re::AssetHandle::AssetHandle(buf, (*(a1 + 8) + 1384));
    v11 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(buf);
    re::AssetHandle::~AssetHandle(buf);
    if (v11)
    {
      *(a1 + 328) = 0;
      *(a1 + 336) = 0;
      v12 = *(a1 + 304);
      *(a1 + 312) = 0;
      *(a1 + 320) = v12;
      *buf = a1 + 288;
      if (v12 > 0xF)
      {
        v13 = 0;
        v14 = *(a1 + 288);
        v15 = v12 >> 4;
        while (1)
        {
          v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v14), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          *&buf[8] = v16 ^ 0xFFFFLL;
          if (v16 != 0xFFFFLL)
          {
            break;
          }

          v13 -= 16;
          ++v14;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
        v18 = v17 - v13;
        v111.i64[0] = v17 - v13;
        if (v17 + 1 != v13)
        {
          do
          {
            v19 = *(a1 + 296) + 72 * v18;
            v20 = *(v19 + 56);
            if (v20)
            {

              *(v19 + 56) = 0;
            }

            re::DynamicArray<re::IBL>::deinit(v19 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(buf);
            v18 = v111.i64[0];
          }

          while (v111.i64[0] != -1);
          v12 = *(a1 + 304);
        }

LABEL_16:
        if (v12 >= 0x10)
        {
          v21 = 0;
          *&v22 = -1;
          *(&v22 + 1) = -1;
          do
          {
            *(*(a1 + 288) + 16 * v21++) = v22;
          }

          while (v21 < *(a1 + 304) >> 4);
        }
      }

      re::ecs2::WorldRootProvider::worldIds(&v102, buf);
      v23 = v114;
      if (v114)
      {
        v24 = v113;
        v5 = v115;
        if (v115)
        {
          v6 = 0;
          v25 = v113[2];
          while (1)
          {
            v26 = *v25;
            v25 += 4;
            if (v26 < 0)
            {
              break;
            }

            if (v115 == ++v6)
            {
              LODWORD(v6) = v115;
              break;
            }
          }
        }

        else
        {
          LODWORD(v6) = 0;
        }

        v27 = v113;
      }

      else
      {
        v24 = v112;
        v27 = (v112 + 8 * v111.i64[0]);
      }

      v28 = v24 != v27;
      if (v114)
      {
        v28 = v5 != v6;
      }

      if (v28)
      {
        do
        {
          v29 = v24;
          if (v23)
          {
            v29 = (v24[1].i64[0] + 16 * v6 + 8);
          }

          if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(v98 + 8, *v29) == -1)
          {
            v104 = 0.0;
            memset(v103, 0, sizeof(v103));
            *v106 = 0u;
            v107 = 0;
            DefaultIBLDataForWorld = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLDataForWorld(a1, *v29);
            re::DynamicArray<re::IBL>::add(v103, DefaultIBLDataForWorld);
            *v108 = v97;
            *&v108[8] = *v103;
            memset(v103, 0, sizeof(v103));
            *&v108[16] = *&v103[8];
            ++LODWORD(v104);
            *&v108[32] = 1;
            *&v108[40] = *v106;
            *v106 = 0u;
            v109 = v107;
            re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addOrReplace((a1 + 288), v29, v108);
            if (*&v108[48])
            {

              *&v108[48] = 0;
            }

            re::DynamicArray<re::IBL>::deinit(&v108[8]);
            if (v106[1])
            {

              v106[1] = 0;
            }

            re::DynamicArray<re::IBL>::deinit(v103);
            if (v23)
            {
LABEL_35:
              v30 = v6 + 1;
              do
              {
                LODWORD(v6) = v30;
                if (v30 >= v24[2].i32[0])
                {
                  break;
                }

                v31 = *(v24[1].i64[0] + 16 * v30++);
              }

              while ((v31 & 0x80000000) == 0);
              goto LABEL_45;
            }
          }

          else if (v23)
          {
            goto LABEL_35;
          }

          v24 = (v24 + 8);
LABEL_45:
          v33 = v24 != v27;
          if (v23)
          {
            v33 = v5 != v6;
          }
        }

        while (v33);
      }

      re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(buf);
      *(a1 + 280) = 0;
    }
  }

  v100[0] = v98 + 8;
  v34 = v98[10];
  if (v34 >= 0x10)
  {
    v35 = 0;
    v36 = v98[8];
    v37 = v34 >> 4;
    while (1)
    {
      v38 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v36), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v100[1] = v38 ^ 0xFFFFLL;
      if (v38 != 0xFFFFLL)
      {
        break;
      }

      v35 -= 16;
      ++v36;
      if (!--v37)
      {
        return *(a5 + 40) != 0;
      }
    }

    v39 = __clz(__rbit64(v38 ^ 0xFFFFLL));
    v40 = v39 - v35;
    v101 = v39 - v35;
    if (v39 + 1 != v35)
    {
      while (1)
      {
        v96 = *(v100[0] + 8) + 16 * v40;
        v41 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(v98[2], v98[4], *(v96 + 8));
        if (v41[9])
        {
          break;
        }

        v42 = 0;
LABEL_105:
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v97, *v96, v95, buf);
        *v108 = *buf >> 1;
        v89 = **(re::RenderFrameData::stream((v95 + 33), v108) + 48);
        v90 = (*(v89 + 400))();
        if ((v42 & 1) == 0)
        {
          v91 = v90;
          v92 = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLDataForWorld(a1, *v96);
          re::DynamicArray<re::IBL>::add(v91, v92);
        }

        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v100);
        v40 = v101;
        if (v101 == -1)
        {
          return *(a5 + 40) != 0;
        }
      }

      v42 = 0;
      v43 = 0;
      while (1)
      {
        v44 = v41[2];
        if (v44 <= v43)
        {
          *v103 = 0;
          v111 = 0u;
          memset(v112, 0, 48);
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v108 = 136315906;
          *&v108[4] = "operator[]";
          *&v108[12] = 1024;
          *&v108[14] = 789;
          *&v108[18] = 2048;
          *&v108[20] = v43;
          *&v108[28] = 2048;
          *&v108[30] = v44;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v45 = v41[4] + 224 * v43;
        v46 = *(v41[11] + 8 * v43);
        if (*(v45 + 209) == 1)
        {
          break;
        }

LABEL_70:
        v52 = *(v46 + 1208);
        if (*(v45 + 116) == 1)
        {
          *(v45 + 116) = 1;
          if (v52)
          {
            goto LABEL_74;
          }
        }

        else
        {
          *(v45 + 116) = v52;
          if (v52)
          {
LABEL_74:
            re::TransformService::worldTransform(v99, *(v46 + 16), 0, v103);
            v55 = 0;
            v69.i32[0] = *&v103[16];
            v56 = v104;
            v57 = v56 + v56;
            v58 = *v69.i32 * (*v69.i32 + *v69.i32);
            v59 = *&v103[20] * (*&v103[20] + *&v103[20]);
            v60 = v56 * (v56 + v56);
            v61 = (*v69.i32 + *v69.i32) * *&v103[20];
            v62 = (*v69.i32 + *v69.i32) * v104;
            v63 = (*&v103[20] + *&v103[20]) * v104;
            v64 = (*v69.i32 + *v69.i32) * v105;
            v65 = (*&v103[20] + *&v103[20]) * v105;
            v74.f32[0] = v57 * v105;
            *v69.i32 = 1.0 - (v59 + v60);
            *&v66 = v61 + (v57 * v105);
            v67 = v69;
            v67.i32[1] = v66;
            *v68.i32 = v61 - v74.f32[0];
            v74.f32[0] = v62 + v65;
            v69.i32[1] = v68.i32[0];
            *&v69.i32[2] = v62 + v65;
            v74.f32[1] = v63 - v64;
            *&v76 = v62 - v65;
            v70 = vzip1q_s32(v67, v74);
            v71 = v67;
            v71.i32[2] = v76;
            *v67.i32 = 1.0 - (v58 + v60);
            *v72.i32 = v63 + v64;
            v73 = v68;
            v73.i32[1] = v67.i32[0];
            v73.i32[2] = v72.i32[0];
            v74.f32[2] = 1.0 - (v58 + v59);
            v75 = vzip2q_s32(v70, vdupq_lane_s32(*v67.i8, 0));
            HIDWORD(v76) = v72.i32[0];
            *v108 = vzip1q_s32(v70, v68);
            *&v108[16] = v75;
            *&v108[32] = vzip1q_s32(vzip2q_s32(v71, v74), v72);
            do
            {
              *&buf[v55] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*&v108[v55])), v73, *&v108[v55], 1), v74, *&v108[v55], 2);
              v55 += 16;
            }

            while (v55 != 48);
            v77 = vdupq_n_s32(0x38D1B717u);
            v78 = vandq_s8(vandq_s8(vcgeq_f32(v77, vabdq_f32(xmmword_1E3047680, v111)), vcgeq_f32(v77, vabdq_f32(xmmword_1E3047670, *buf))), vcgeq_f32(v77, vabdq_f32(xmmword_1E30476A0, v112[0])));
            v78.i32[3] = v78.i32[2];
            if ((vminvq_u32(v78) & 0x80000000) != 0)
            {
              *(v45 + 32) = v71;
              *(v45 + 48) = v73;
              *(v45 + 64) = v74;
              *(v45 + 40) = v69.i32[2];
              *(v45 + 32) = v69.i64[0];
              *(v45 + 48) = v75.i64[0];
              *(v45 + 56) = v75.i32[2];
              *(v45 + 64) = v76;
              *(v45 + 72) = v74.i32[2];
            }

            else
            {
              v79 = *re::ecsComponentsLogObjects(v54);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v80 = *(*(v46 + 16) + 296);
                *buf = 136315138;
                *&buf[4] = v80;
                _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "The world transform of the entity [%s] includes non-uniform scaling.                                    Set the rotation of its IBL component to identity.", buf, 0xCu);
              }

              *(v45 + 32) = xmmword_1E3047670;
              *(v45 + 48) = xmmword_1E3047680;
              v69.i32[3] = 0;
              *(v45 + 64) = xmmword_1E30476A0;
            }

            v81 = 0;
            v53 = 0;
            do
            {
              for (i = 0; i != 12; i += 4)
              {
                v83 = (v45 + 32);
                v84 = (v45 + 48);
                v85 = (v45 + 64);
                if (v81)
                {
                  if (v81 == 2)
                  {
                    v83 = (v45 + 40);
                  }

                  else
                  {
                    v83 = (v45 + 36);
                  }

                  if (v81 == 2)
                  {
                    v84 = (v45 + 56);
                  }

                  else
                  {
                    v84 = (v45 + 52);
                  }

                  if (v81 == 2)
                  {
                    v85 = (v45 + 72);
                  }

                  else
                  {
                    v85 = (v45 + 68);
                  }
                }

                v69.i32[0] = *v83;
                v69.i32[1] = *v84;
                v69.i32[2] = *v85;
                *buf = v69;
                v86 = 0xBF58476D1CE4E5B9 * (*&buf[i] ^ (*&buf[i] >> 30));
                v53 += ((0x94D049BB133111EBLL * (v86 ^ (v86 >> 27))) ^ ((0x94D049BB133111EBLL * (v86 ^ (v86 >> 27))) >> 31)) * v81;
              }

              ++v81;
            }

            while (v81 != 3);
            goto LABEL_95;
          }
        }

        v53 = 0;
        *(v45 + 32) = xmmword_1E3047670;
        *(v45 + 48) = xmmword_1E3047680;
        *(v45 + 64) = xmmword_1E30476A0;
LABEL_95:
        v87 = *(v46 + 1328) + v53;
        if (v87 == *(v46 + 1336))
        {
          v88 = *(v46 + 1344) + 1;
          *(v46 + 1344) = v88;
          *(v45 + 208) = v88 < 3;
        }

        else
        {
          *(v46 + 1336) = v87;
          *(v45 + 208) = 1;
          *(v46 + 1344) = 0;
        }

        if (++v43 >= v41[9])
        {
          goto LABEL_105;
        }
      }

      v47 = *(*(*(a1 + 8) + 232) + 320);
      v48 = re::ecs2::EntityComponentCollection::get((*(v46 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v47 == 1 && v48 != 0)
      {
        if (*(v48 + 32))
        {
          OwnerPeerID = RESyncableGetOwnerPeerID();
          if (OwnerPeerID)
          {
LABEL_65:
            v51 = *re::ecsComponentsLogObjects(OwnerPeerID);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Ill-formed IBL with isGlobalIBL flag set to true. Setting isGLobalIBL to false.", buf, 2u);
            }

            *(v45 + 209) = 0;
          }
        }

        else if (*(v48 + 116) < 0)
        {
          OwnerPeerID = *(v48 + 64);
          if (OwnerPeerID)
          {
            goto LABEL_65;
          }
        }
      }

      v42 |= *(v45 + 209);
      goto LABEL_70;
    }
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::ImageBasedLightSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v57 = a2;
  v58 = a3;
  v4 = *(result + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v56);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v55, 3015, v3);
    v6 = *(v3 + 232);
    if (v6)
    {
      v7 = *(v6 + 112);
      if (v7)
      {
        v8 = re::RenderFrameBox::get((v7 + 328), 0xFFFFFFFFFFFFFFFuLL);
      }

      else
      {
        v8 = 0;
      }

      re::StackScratchAllocator::StackScratchAllocator(v70);
      v66 = 1;
      v67 = 0;
      v68 = 0;
      v64 = v70;
      v65 = 0;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v64, 0);
      v66 += 2;
      v9 = *(v3 + 504);
      if ((v9 & 0x3F) != 0)
      {
        v10 = (v9 >> 6) + 1;
      }

      else
      {
        v10 = v9 >> 6;
      }

      v69 = *(v3 + 504);
      v59[0] = 0;
      re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v64, v10, v59);
      v11 = *(v58 + 200);
      if (v11)
      {
        v12 = *(v58 + 216);
        v13 = 8 * v11;
        do
        {
          v14 = *v12++;
          v59[0] = v14;
          v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 352), v59);
          re::DynamicBitset<unsigned long long,64ul>::setBit(&v64, *(*(v3 + 360) + 16 * v15 + 8));
          v13 -= 8;
        }

        while (v13);
      }

      re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v64, v3 + 464);
      v60 = 1;
      v61 = 0;
      v62 = 0;
      v59[0] = v70;
      v59[1] = 0;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v59, 0);
      v60 += 2;
      v16 = *(v3 + 504);
      if ((v16 & 0x3F) != 0)
      {
        v17 = (v16 >> 6) + 1;
      }

      else
      {
        v17 = v16 >> 6;
      }

      v63 = *(v3 + 504);
      v73 = 0;
      re::DynamicOverflowArray<unsigned long long,2ul>::resize(v59, v17, &v73);
      re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v3 + 464, &v64);
      v18 = v68;
      if (v66)
      {
        v18 = &v67;
      }

      v19 = v65;
      if ((v65 & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v20 = 0;
        while (1)
        {
          v22 = *v18++;
          v21 = v22;
          if (v22)
          {
            break;
          }

          v20 -= 64;
          if (!--v19)
          {
            goto LABEL_36;
          }
        }

        v23 = __clz(__rbit64(v21));
        if (v23 + 1 != v20)
        {
          FirstBitSet = v23 - v20;
          do
          {
            v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 296, FirstBitSet);
            v26 = *(*v25 + 224);
            v27 = v25[3];
            v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v27);
            if (*(v28 + 40))
            {
              v29 = (*(*v26 + 24))(v26, &v57, v25, v27, v28, 0);
            }

            else
            {
              v29 = 0;
            }

            v30 = v25[5];
            v31 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v30);
            if (*(v31 + 40))
            {
              v29 |= (*(*v26 + 32))(v26, &v57, v25, v30, v31, 0);
            }

            v32 = v25[6];
            v33 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v25[2] + 8, v32);
            if (*(v33 + 40))
            {
              if (((v29 | (*(*v26 + 40))(v26, &v57, v25, v32, v33, 0)) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else if (!v29)
            {
LABEL_34:
              re::DynamicBitset<unsigned long long,64ul>::clearBit(v59, FirstBitSet);
              goto LABEL_35;
            }

            re::DynamicBitset<unsigned long long,64ul>::setBit(v59, FirstBitSet);
LABEL_35:
            FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v64, FirstBitSet + 1);
          }

          while (FirstBitSet != -1);
        }
      }

LABEL_36:
      re::DynamicBitset<unsigned long long,64ul>::orWithBitSet(v3 + 464, v59);
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 296);
      if (v59[0] && (v60 & 1) == 0)
      {
        (*(*v59[0] + 40))();
      }

      if (v64 && (v66 & 1) == 0)
      {
        (*(*v64 + 40))();
      }

      re::StackScratchAllocator::~StackScratchAllocator(v70);
      v34 = *(v3 + 848);
      if (v34 >= 0x10)
      {
        v35 = 0;
        v36 = *(v3 + 832);
        v37 = v34 >> 4;
        while (1)
        {
          v38 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v36), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          if (v38 != 0xFFFFLL)
          {
            break;
          }

          v35 -= 16;
          ++v36;
          if (!--v37)
          {
            goto LABEL_48;
          }
        }

        v39 = v38 ^ 0xFFFFLL;
        v40 = __clz(__rbit64(v39));
        if (v40 + 1 != v35)
        {
          v45 = v40 - v35;
          do
          {
            v46 = *(v3 + 840) + 72 * v45;
            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(*(v46 + 8), *v46, v8, &v64);
            re::DynamicArray<re::IBL>::DynamicArray(v70, (v46 + 16));
            v71 = *(v46 + 56);
            v72 = *(v46 + 64);
            v59[0] = v64 >> 1;
            v47 = **(re::RenderFrameData::stream((v8 + 33), v59) + 48);
            (*(v47 + 368))();
            if (v71)
            {

              v71 = 0;
            }

            v48 = re::DynamicArray<re::IBL>::deinit(v70);
            if (v64)
            {
              if (v64)
              {
              }
            }

            v49 = v45 >> 4;
            v50 = *(v3 + 848);
            if (v45 >> 4 >= v50 >> 4)
            {
              break;
            }

            v51 = __clz(__rbit64((-2 << (v45 & 0xF)) & v39));
            if (v51 >= 0x40)
            {
              v52 = v50 >> 4;
              v53 = 16 * v49;
              v54 = ~v49 + v52;
              while (v54)
              {
                v39 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*(v3 + 832) + v53 + 16)), xmmword_1E304FAD0)))), 0x3830282018100800);
                v51 = __clz(__rbit64(v39));
                v53 += 16;
                --v54;
                if (v51 <= 0x3F)
                {
                  goto LABEL_67;
                }
              }

              break;
            }

            v53 = v45 & 0xFFFFFFFFFFFFFFF0;
LABEL_67:
            v45 = v51 + v53;
          }

          while (v51 + v53 != -1);
        }
      }

LABEL_48:
      if (*(v3 + 1376))
      {
        v41 = *(v58 + 200);
        if (v41)
        {
          v42 = *(v58 + 216);
          v43 = 8 * v41;
          do
          {
            v44 = *v42++;
            (*(**(v3 + 1376) + 16))(*(v3 + 1376), v44, *(v3 + 232), *(v3 + 288));
            v43 -= 8;
          }

          while (v43);
        }
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v55);
      return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v56);
    }

    else
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 768);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::ecs2::ImageBasedLightSystem::willAddSystemToECSService(re::AssetHelper **this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(*this[5] + 32))(this[5]);
  this[172] = re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(v2);
  v3 = this[29];
  if (v3)
  {
    if (*(v3 + 26))
    {
      re::AssetHelper::createDefaultImageBasedLightEngineAsset(this[30], v3, &v6);
      v4 = *(this + 173);
      *(this + 173) = v6;
      v6 = v4;
      v5 = this[175];
      this[175] = v7;
      v7 = v5;
      re::AssetHandle::~AssetHandle(&v6);
      re::AssetHandle::loadAsync((this + 173));
    }
  }
}

double re::ecs2::ImageBasedLightSystem::willRemoveSystemFromECSService(re::ecs2::ImageBasedLightSystem *this)
{
  v2 = *(this + 1384);
  v3 = *(this + 175);
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  v5 = v2;
  v6 = v3;
  re::AssetHandle::~AssetHandle(&v5);
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

int64x2_t *re::ecs2::ImageBasedLightSystem::willAddSceneToECSService(int64x2_t *this, unint64_t a2)
{
  v4 = this;
  v120 = *MEMORY[0x1E69E9840];
  v5 = this[14].i64[0];
  if (v5 && (*(v5 + 432) & 0x10) == 0)
  {
    return this;
  }

  v6 = this[86].i64[0];
  if (v6)
  {
    (*(*v6 + 32))(v6, a2);
  }

  v7 = &v109;
  v103[0] = a2;
  v8 = v4[26].u64[1];
  v9 = v4[27].i32[0];
  if (v8 >= 0xB)
  {
    if (v9)
    {
      v10 = &v4[27].i64[1];
    }

    else
    {
      v10 = v4[28].i64[0];
    }

    v12 = 8 * v8;
    while (!*v10)
    {
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (v9)
  {
    v11 = &v4[27].i64[1];
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = v4[28].i64[0];
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  v13 = 0;
  v14 = 8 * v8;
  do
  {
    v15 = *v11++;
    v13 |= v15;
    v14 -= 8;
  }

  while (v14);
  if (v13)
  {
LABEL_20:
    *v97 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v4[26].i64, 0);
    v16 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](&v4[18].i64[1], *v97);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::init(v16, &v4[18].i64[1], a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(v4[22].i64, v103, v97);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(v4[26].i64, *v97);
    v17 = *v97;
    goto LABEL_53;
  }

LABEL_21:
  v101[0] = 0u;
  memset(v97, 0, 24);
  memset(v98, 0, sizeof(v98));
  *&v97[24] = -1;
  *&v99 = 0;
  *(&v99 + 1) = 1;
  v100 = 0uLL;
  v18 = v4[21].u64[0];
  *&v101[0] = 0;
  v19 = v4[19].u64[0];
  DWORD2(v101[0]) = 0;
  if (v18 + 1 > 4 * v19)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,4ul>::setBucketsCapacity(&v4[18].i64[1], (v18 + 4) >> 2);
    v19 = v4[19].u64[0];
  }

  v20 = v18 >> 2;
  if (v19 <= v18 >> 2)
  {
    v106[0] = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v109 = 136315906;
    v110 = "operator[]";
    v111 = 1024;
    v112 = 858;
    v113 = 2048;
    *v114 = v18 >> 2;
    *&v114[8] = 2048;
    *&v114[10] = v19;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_96:
    re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_97:
    v106[0] = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v109 = 136315906;
    v110 = "operator[]";
    v111 = 1024;
    v112 = 789;
    v113 = 2048;
    *v114 = v20;
    *&v114[8] = 2048;
    *&v114[10] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v106[0] = 0;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v109 = 136315906;
    v110 = "operator[]";
    v111 = 1024;
    v112 = 789;
    v113 = 2048;
    *v114 = v20;
    *&v114[8] = 2048;
    *&v114[10] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_99;
  }

  if (v4[19].i8[8])
  {
    v21 = v4 + 20;
  }

  else
  {
    v21 = v4[20].i64[1];
  }

  v22 = v21->i64[v20];
  ++v4[21].i64[0];
  ++v4[21].i32[2];
  v23 = v22 + 112 * (v18 & 3);
  v24 = *v97;
  v25 = *&v97[16];
  v26 = v98[0];
  *(v23 + 48) = *&v98[1];
  *(v23 + 16) = v25;
  *(v23 + 32) = v26;
  *v23 = v24;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v23 + 56, &v98[1] + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(v97);
  v28 = v4[21].i64[0];
  if (!v28)
  {
    goto LABEL_96;
  }

  v29 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](&v4[18].i64[1], v28 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::init(v29, &v4[18].i64[1], v103[0]);
  *&v115 = v4[21].i64[0] - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(v4[22].i64, v103, &v115);
  v30 = v4[21].u64[0];
  v31 = v4[28].u64[1];
  if ((v30 & 0x3F) != 0)
  {
    v32 = (v30 >> 6) + 1;
  }

  else
  {
    v32 = v30 >> 6;
  }

  v4[28].i64[1] = v30;
  *v97 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v4[26], v32, v97);
  if (v30 && v31 > v30)
  {
    v33 = 63;
    v34 = v4[28].i64[1] & 0x3F;
    if (v34 && v34 != 63)
    {
      v33 = ~(-1 << v34);
    }

    if (v4[27].i8[0])
    {
      v35 = &v4[27].i8[8];
    }

    else
    {
      v35 = v4[28].i64[0];
    }

    *&v35[8 * v4[26].i64[1] - 8] &= v33;
  }

  v36 = v4[21].u64[0];
  v37 = v4[31].u64[1];
  if ((v36 & 0x3F) != 0)
  {
    v38 = (v36 >> 6) + 1;
  }

  else
  {
    v38 = v36 >> 6;
  }

  v4[31].i64[1] = v36;
  *v97 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v4[29], v38, v97);
  if (v36 && v37 > v36)
  {
    v39 = 63;
    v40 = v4[31].i64[1] & 0x3F;
    if (v40 && v40 != 63)
    {
      v39 = ~(-1 << v40);
    }

    if (v4[30].i8[0])
    {
      v41 = &v4[30].i8[8];
    }

    else
    {
      v41 = v4[31].i64[0];
    }

    *&v41[8 * v4[29].i64[1] - 8] &= v39;
  }

  v17 = v115;
LABEL_53:
  v42 = re::DynamicBitset<unsigned long long,64ul>::setBit(v4[29].i64, v17);
  if (v4[33].i8[0] == 1)
  {
    v43 = v4[32].i64[0];
    v44 = *(v103[0] + 376);
    *v97 = 257;
    *&v97[4] = 1023969417;
    v97[8] = 0;
    re::ecs2::System::setTaskOptions(v43, v44, v97);
    v42 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(&v4[18].u64[1]);
  }

  v102 = a2;
  memset(&v97[8], 0, 20);
  memset(v98, 0, 20);
  *(&v98[1] + 4) = 0x1FFFFFFFFLL;
  v19 = v97;
  v99 = 0u;
  v100 = 0u;
  memset(v101, 0, sizeof(v101));
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v97, 0);
  ++*&v97[24];
  HIDWORD(v98[0]) = 4;
  re::DataArray<re::TransformCache>::allocBlock(v97);
  v46 = v4[43].i32[0];
  if ((v46 + 1) >> 24)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46 + 1;
  }

  v4[43].i32[0] = v47;
  v18 = v4[42].u16[6];
  v20 = v4[42].u16[7];
  if (v18 != 0xFFFF || v20 != 0xFFFF)
  {
    v2 = v4[40].u64[1];
    if (v2 > v20)
    {
      v51 = (v4[41].i64[1] + 16 * v20);
      *(v51[1] + 4 * v18) = v47;
      v50 = *v51 + (v18 << 7);
      v4[42].i32[3] = *v50;
      goto LABEL_67;
    }

    goto LABEL_97;
  }

  if (v4[42].i32[2] >= v4[42].i32[1])
  {
    re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::allocBlock(&v4[39].i64[1]);
  }

  v48 = v4[40].i64[1];
  v20 = (v48 - 1);
  if (!v48)
  {
    goto LABEL_98;
  }

  v18 = v4[42].u32[2];
  if (v18 >= 0x10000)
  {
LABEL_99:
    re::internal::assertLog(5, v45, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v18);
    v57 = _os_crash();
    __break(1u);
    goto LABEL_100;
  }

  v49 = (v4[41].i64[1] + 16 * v20);
  v4[42].i32[2] = v18 + 1;
  *(v49[1] + 4 * v18) = v4[43].i32[0];
  v50 = *v49 + (v18 << 7);
LABEL_67:
  ++v4[42].i32[0];
  *(v50 + 48) = 0;
  *(v50 + 52) = 0x1FFFFFFFFLL;
  v115 = 0u;
  *v50 = 0u;
  *&v116 = 0;
  *(v50 + 16) = 0;
  *&v117 = 0;
  *(v50 + 32) = 0;
  *(v50 + 40) = 0;
  *(v50 + 24) = 1;
  DWORD2(v116) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v50, v97);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v97, &v115);
  if (v115 && v117)
  {
    (*(*v115 + 40))(v115);
  }

  v52 = *(v50 + 40);
  *(v50 + 40) = *(&v98[0] + 1);
  *(v50 + 48) = *&v98[1];
  *(v98 + 8) = v52;
  v53 = *(v50 + 56);
  *(v50 + 56) = DWORD2(v98[1]);
  DWORD2(v98[1]) = v53;
  v54 = v99;
  *(v50 + 120) = *(&v101[1] + 1);
  *(&v101[1] + 1) = 0;
  *(v50 + 64) = __PAIR128__(*(&v99 + 1), v54);
  *(v50 + 80) = v100;
  v55 = *(&v100 + 1);
  *(v50 + 104) = *(&v101[0] + 1);
  *(v50 + 112) = *&v101[1];
  *(v101 + 8) = 0u;
  *(v50 + 88) = v55;
  v99 = 0u;
  v100 = 0u;
  *(v50 + 96) = *&v101[0];
  *&v101[0] = 0;
  v56 = v4[43].i32[0];
  v7 = &v4[43].i32[2];
  v57 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&v4[43].i64[1], a2);
  if (v57 == -1)
  {
    v2 = v56 & 0xFFFFFF;
    if (v4[47].i64[0])
    {
LABEL_72:
      v59 = v18 + (v20 << 16);
      v60 = v4[45].i64[1];
      if (!v60 || (v61 = v4[44].u64[1], v61 > 8 * v60))
      {
        re::HashBrown<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(v7, 1u);
        v61 = v4[44].u64[1];
      }

      v62 = v59 + (v2 << 32);
      v63 = 0xBF58476D1CE4E5B9;
      v64 = 0x94D049BB133111EBLL;
      v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v66 = v65 ^ (v65 >> 31);
      v67 = v61 >> 4;
      v68 = *v7;
      v69 = v66 % v67;
      while (1)
      {
        v70 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v68 + 16 * v69)), xmmword_1E304FAD0)))), 0x3830282018100800)));
        if (v70 < 0x40)
        {
          break;
        }

        if (v69 + 1 == v67)
        {
          v69 = 0;
        }

        else
        {
          ++v69;
        }

        if (v69 == v66 % v67)
        {
          re::internal::assertLog(4, v58, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
          v57 = _os_crash();
          __break(1u);
          break;
        }
      }

      v71 = v68 + 16 * v69;
      v72 = *(v71 + v70);
      *(v71 + v70) = v66 & 0x7F;
      v73 = 16 * (v70 + 16 * v69);
      *(v4[44].i64[0] + v73) = a2;
      *(v4[44].i64[0] + v73 + 8) = v62;
      if (v72 == 255)
      {
        v74 = -1;
      }

      else
      {
        v74 = 0;
      }

      v75.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v75.i64[1] = v74;
      v4[45] = vaddq_s64(v4[45], v75);
      v76 = *(v4[44].i64[0] + v73) ^ (*(v4[44].i64[0] + v73) >> 30);
      v77 = ((v76 * v63) ^ ((v76 * v63) >> 27)) * v64;
      v4[46].i64[0] ^= (v77 >> 31) ^ v77;
      goto LABEL_85;
    }

LABEL_100:
    goto LABEL_72;
  }

LABEL_85:
  v115 = 0uLL;
  LODWORD(v116) = 1;
  v117 = 0uLL;
  *(&v116 + 1) = 0;
  LODWORD(v118) = 0;
  v79 = *(a2 + 288);
  if (v79)
  {
    *&v114[4] = re::globalAllocators(v78)[2];
    v80 = (*(**&v114[4] + 32))(*&v114[4], 32, 0);
    *v80 = &unk_1F5CF61C0;
    v80[1] = v4 + 34;
    v80[2] = re::ecs2::ImageBasedLightComponentStateImpl::deactivateImageBasedLightComponentHandler;
    v80[3] = 0;
    *&v114[12] = v80;
    v81 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v79, &v109, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v83 = v82;
    v84 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v115);
    *v84 = v81;
    v84[1] = v83;
    v85 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(&v109);
    v107 = re::globalAllocators(v85)[2];
    v86 = (*(*v107 + 32))(v107, 32, 0);
    *v86 = &unk_1F5CF6218;
    v86[1] = v4 + 34;
    v86[2] = re::ecs2::ImageBasedLightComponentStateImpl::removeImageBasedLightComponentHandler;
    v86[3] = 0;
    v108 = v86;
    v87 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v79, v106, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v89 = v88;
    v90 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v115);
    *v90 = v87;
    v90[1] = v89;
    v91 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v106);
    v104 = re::globalAllocators(v91)[2];
    v92 = (*(*v104 + 32))(v104, 32, 0);
    *v92 = &unk_1F5CF6270;
    v92[1] = v4 + 34;
    v92[2] = re::ecs2::ImageBasedLightComponentStateImpl::didReparentEntityHandler;
    v92[3] = 0;
    v105 = v92;
    v93 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v79, v103, 0, 0);
    v95 = v94;
    v96 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v115);
    *v96 = v93;
    v96[1] = v95;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v103);
  }

  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(&v4[36].i64[1], &v102, &v115);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v115);
  if (v115 && (v116 & 1) == 0)
  {
    (*(*v115 + 40))(v115, v117);
  }

  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v19 + 64);
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::deinit(v97);
  this = *v97;
  if (*v97)
  {
    if (*&v98[0])
    {
      return (*(**v97 + 40))();
    }
  }

  return this;
}

void re::ecs2::ImageBasedLightSystem::willRemoveSceneFromECSService(int64x2_t *this, re::ecs2::Scene *a2)
{
  v4 = this[86].i64[0];
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v42[0] = a2;
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this[22].i64, v42);
  if (v5 != -1)
  {
    v6 = this[22].i64[1] + 16 * v5;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this[26].i64, *(v6 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this[29].i64, *(v6 + 8));
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](&this[18].i64[1], *(v6 + 8));
    if (*v7)
    {
      v8 = v7;
      *v7 = 0;
      v9 = v7 + 1;
      v10 = *(v7[1] + 288);
      if (v10)
      {
        v11 = v7[12];
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v8 + 7), i);
            re::EventBus::unsubscribe(v10, *v13, *(v13 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v8 + 7));
      v14 = 0;
      v15 = v8 + 3;
      do
      {
        v16 = v8[2];
        if (*v16)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v16, v15[v14]);
        }

        v15[v14++] = -1;
      }

      while (v14 != 4);
      *v9 = 0;
      v9[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this[22].i64, v42);
  }

  v44 = a2;
  v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(&this[36].i64[1], &v44);
  if (v17)
  {
    v18 = *(v44 + 36);
    if (v18)
    {
      v19 = v17;
      v20 = *(v17 + 40);
      if (v20)
      {
        for (j = 0; j != v20; ++j)
        {
          v22 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v19, j);
          re::EventBus::unsubscribe(v18, *v22, *(v22 + 8));
        }
      }
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(&this[36].i64[1], &v44);
  }

  v23 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&this[43].i64[1], v44);
  if (v23 != -1)
  {
    re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::destroy(&this[39].i64[1], *(this[44].i64[0] + 16 * v23 + 8));
    v24 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(&this[43].i64[1], v44);
    if (v24 != -1)
    {
      v25 = (this[43].i64[1] + (v24 & 0xFFFFFFFFFFFFFFF0));
      v26.i64[0] = -1;
      v26.i64[1] = -1;
      v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v25, v26), xmmword_1E304FAD0)))), 0x3830282018100800);
      v28 = *&v27 ? -1 : 0x80;
      v25->i8[v24 & 0xF] = v28;
      v29 = *(this[44].i64[0] + 16 * v24);
      v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
      this[46].i64[0] ^= (v30 >> 31) ^ v30;
      v26.i64[1] = *&v27 != 0;
      v31 = vaddq_s64(this[45], v26);
      this[45] = v31;
      v32 = this[44].u64[1];
      if (v32 >= 0x11 && v31.i64[0] < v32 >> 2)
      {
        re::HashBrown<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(&this[43].i64[1], 0);
      }
    }
  }

  v33 = &this[52];
  v42[0] = this + 52;
  v34 = this[53].u64[0];
  if (v34 >= 0x10)
  {
    v35 = 0;
    v36 = *v33;
    v37 = v34 >> 4;
    while (1)
    {
      v38 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v36), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v42[1] = v38 ^ 0xFFFFLL;
      if (v38 != 0xFFFFLL)
      {
        break;
      }

      v35 -= 16;
      ++v36;
      if (!--v37)
      {
        return;
      }
    }

    v39 = __clz(__rbit64(v38 ^ 0xFFFFLL));
    v40 = v39 - v35;
    v43 = v39 - v35;
    if (v39 + 1 != v35)
    {
      do
      {
        v41 = (*(v42[0] + 8) + 72 * v40);
        if (re::StringID::operator==((*(v41[1] + 104) + 288), (*(v44 + 13) + 288)))
        {
          re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(v33, *v41);
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v42);
        v40 = v43;
      }

      while (v43 != -1);
    }
  }
}

void re::ecs2::ImageBasedLightSystem::~ImageBasedLightSystem(re::ecs2::ImageBasedLightSystem *this)
{
  re::AssetHandle::~AssetHandle((this + 1384));
  *(this + 68) = &unk_1F5CF60C8;
  re::IBL::~IBL((this + 1136));
  re::IBL::~IBL((this + 896));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 832);
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 760);
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 696);
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit(this + 632);
  re::DynamicArray<unsigned long>::deinit(this + 632);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 584);
  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::AssetHandle::~AssetHandle((this + 1384));
  *(this + 68) = &unk_1F5CF60C8;
  re::IBL::~IBL((this + 1136));
  re::IBL::~IBL((this + 896));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 832);
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 760);
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 696);
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit(this + 632);
  re::DynamicArray<unsigned long>::deinit(this + 632);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 584);
  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF61C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF61C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6218;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6218;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6270;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightComponentStateImpl,REEventHandlerResult (re::ecs2::ImageBasedLightComponentStateImpl::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6270;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DynamicArray<re::IBL>::deinit(uint64_t a1)
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
          re::IBL::~IBL(v3);
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

void re::IBL::~IBL(re::IBL *this)
{
  v2 = *(this + 19);
  if (v2)
  {

    *(this + 19) = 0;
  }

  v3 = *(this + 18);
  if (v3)
  {

    *(this + 18) = 0;
  }

  v4 = *(this + 16);
  if (v4)
  {

    *(this + 16) = 0;
  }

  v5 = *(this + 15);
  if (v5)
  {

    *(this + 15) = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {

    *(this + 2) = 0;
  }

  v7 = *(this + 1);
  if (v7)
  {

    *(this + 1) = 0;
  }

  if (*this)
  {

    *this = 0;
  }
}

uint64_t re::DynamicArray<re::IBL>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::IBL>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::IBL>::copy(a1, a2);
  }

  return a1;
}

re::IBL *re::DynamicArray<re::IBL>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::IBL>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::IBL *,re::IBL *,re::IBL *>(&v23, *(a2 + 32), *(a2 + 32) + 224 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 224 * v4;
      v12 = 224 * v9;
      v13 = v10 + v12;
      v14 = a1[4] + v12;
      do
      {
        *v14 = *v13;
        *(v14 + 8) = *(v13 + 8);
        *(v14 + 16) = *(v13 + 16);
        v15 = *(v13 + 40);
        *(v14 + 24) = *(v13 + 24);
        *(v14 + 40) = v15;
        v16 = *(v13 + 72);
        v17 = *(v13 + 88);
        v18 = *(v13 + 102);
        *(v14 + 56) = *(v13 + 56);
        *(v14 + 102) = v18;
        *(v14 + 88) = v17;
        *(v14 + 72) = v16;
        *(v14 + 120) = *(v13 + 120);
        *(v14 + 128) = *(v13 + 128);
        *(v14 + 136) = *(v13 + 136);
        *(v14 + 144) = *(v13 + 144);
        result = *(v13 + 152);
        *(v14 + 152) = result;
        v20 = *(v13 + 176);
        v19 = *(v13 + 192);
        v21 = *(v13 + 160);
        *(v14 + 208) = *(v13 + 208);
        *(v14 + 176) = v20;
        *(v14 + 192) = v19;
        *(v14 + 160) = v21;
        v13 += 224;
        v14 += 224;
      }

      while (v13 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::IBL *,re::IBL *,re::IBL *>(&v22, *(a2 + 32), *(a2 + 32) + 224 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      result = (a1[4] + 224 * v4);
      v7 = -224 * v4 + 224 * v6;
      do
      {
        re::IBL::~IBL(result);
        result = (v8 + 224);
        v7 -= 224;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

void *re::DynamicArray<re::IBL>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::IBL>::setCapacity(v5, a2);
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
              goto LABEL_16;
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
        v10 = v8 + 224 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = 0;
          v12 = *(v8 + 24);
          *(v11 + 5) = *(v8 + 40);
          *(v11 + 3) = v12;
          v13 = *(v8 + 56);
          v14 = *(v8 + 72);
          v15 = *(v8 + 88);
          *(v11 + 102) = *(v8 + 102);
          *(v11 + 11) = v15;
          *(v11 + 9) = v14;
          *(v11 + 7) = v13;
          v11[15] = *(v8 + 120);
          *(v8 + 120) = 0;
          v11[16] = *(v8 + 128);
          *(v8 + 128) = 0;
          v11[17] = *(v8 + 136);
          v11[18] = *(v8 + 144);
          *(v8 + 144) = 0;
          v11[19] = *(v8 + 152);
          *(v8 + 152) = 0;
          v16 = *(v8 + 160);
          v17 = *(v8 + 176);
          v18 = *(v8 + 192);
          *(v11 + 104) = *(v8 + 208);
          *(v11 + 11) = v17;
          *(v11 + 12) = v18;
          *(v11 + 10) = v16;
          re::IBL::~IBL(v8);
          v8 += 224;
          v11 += 28;
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::IBL *,re::IBL *,re::IBL *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    NS::SharedPtr<MTL::Buffer>::operator=(a4, v5);
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 8), (v5 + 8));
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 16), (v5 + 16));
    v7 = *(v5 + 40);
    *(a4 + 24) = *(v5 + 24);
    *(a4 + 40) = v7;
    v8 = *(v5 + 72);
    v9 = *(v5 + 88);
    v10 = *(v5 + 102);
    *(a4 + 56) = *(v5 + 56);
    *(a4 + 102) = v10;
    *(a4 + 88) = v9;
    *(a4 + 72) = v8;
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 120), (v5 + 120));
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 128), (v5 + 128));
    *(a4 + 136) = *(v5 + 136);
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 144), (v5 + 144));
    NS::SharedPtr<MTL::Buffer>::operator=((a4 + 152), (v5 + 152));
    v12 = *(v5 + 176);
    v11 = *(v5 + 192);
    v13 = *(v5 + 160);
    *(a4 + 208) = *(v5 + 208);
    *(a4 + 176) = v12;
    *(a4 + 192) = v11;
    *(a4 + 160) = v13;
    a4 += 224;
    v5 += 224;
  }

  while (v5 != v6);
  return v6;
}

double re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v12[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v12[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_12;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v13 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 72 * v8;
            v10 = *(v9 + 56);
            if (v10)
            {

              *(v9 + 56) = 0;
            }

            re::DynamicArray<re::IBL>::deinit(v9 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
            v8 = v13;
          }

          while (v13 != -1);
        }
      }

LABEL_12:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::ImageBasedLightComponent>(void *a1)
{
  bzero(a1, 0x550uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDC610;
  *(a1 + 28) = 0;
  *(a1 + 140) = 0;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 68) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = 0;
  *(a1 + 73) = 0u;
  *(a1 + 74) = 0u;
  re::DynamicString::setCapacity(a1 + 146, 0);
  *(a1 + 604) = 0;
  a1[150] = 0;
  *(a1 + 76) = xmmword_1E3047670;
  *(a1 + 77) = xmmword_1E3047680;
  *(a1 + 78) = xmmword_1E30476A0;
  a1[158] = 0;
  *(a1 + 80) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 163) = 0u;
  *(a1 + 165) = 0u;
  *(a1 + 1332) = 0u;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224ImageBasedLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ImageBasedLightReceiverComponent>(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDC778;
  objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ecs2::EntityHandle::reset(v2);
  *(a1 + 56) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs232ImageBasedLightReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

_anonymous_namespace_ *re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::allocBlock(void *a1)
{
  v3 = *(a1 + 11) << 7;
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void re::HashBrown<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v43, 0, sizeof(v43));
  v10 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v43, v9, v4);
  v41[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v41[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v42 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v41[0] + 8);
        if (*(&v43[3] + 1))
        {
          v19 = *&v43[2];
        }

        else
        {
          *&v43[1] = 16;
          *&v34 = -1;
          *(&v34 + 1) = -1;
          **&v43[0] = v34;
          v19 = *&v43[1];
          *(&v43[0] + 1) = *&v43[0] + 16;
          *(&v43[1] + 1) = 0;
          v43[2] = *&v43[1];
          *&v43[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v43[1], *&v43[1] > (8 * v19)))
        {
          re::HashBrown<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::resize(v43, 1);
          v20 = xmmword_1E304FAD0;
          v21 = *&v43[1];
        }

        v22 = (v18 + 16 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v43[0] + 16 * v26)), v20)))), 0x3830282018100800)));
        if (v27 >= 0x40)
        {
          do
          {
            if (v26 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v43[0] + 16 * v26)), v20)))), 0x3830282018100800)));
          }

          while (v27 > 0x3F);
        }

        v28 = *&v43[0] + 16 * v26;
        v29 = *(v28 + v27);
        *(v28 + v27) = v24 & 0x7F;
        v30 = 16 * (v27 + 16 * v26);
        *(*(&v43[0] + 1) + v30) = *v22;
        if (v29 == 255)
        {
          v31 = -1;
        }

        else
        {
          v31 = 0;
        }

        v32.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v32.i64[1] = v31;
        *(&v43[1] + 8) = vaddq_s64(*(&v43[1] + 8), v32);
        v33 = 0xBF58476D1CE4E5B9 * (*(*(&v43[0] + 1) + v30) ^ (*(*(&v43[0] + 1) + v30) >> 30));
        *(&v43[2] + 1) ^= ((0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v33 ^ (v33 >> 27)));
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v41);
        v17 = v42;
      }

      while (v42 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v35 = *(&v43[3] + 1);
  *(&v43[3] + 1) = *(a1 + 56);
  v36 = v43[0];
  v37 = v43[1];
  v43[0] = *a1;
  *&v43[1] = v11;
  v38 = v43[2];
  v39 = *(a1 + 40);
  *(a1 + 48) = *&v43[3];
  *(a1 + 56) = v35;
  *(&v43[2] + 8) = v39;
  v40 = *(a1 + 24);
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  *(&v43[1] + 8) = v40;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v43);
}

uint64_t re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 72 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

double re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v28, 0, sizeof(v28));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(v28, v9, v4);
  v26[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    v15 = xmmword_1E304FAD0;
    v10.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v26[1] = v16 ^ 0xFFFFLL;
      if (v16 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
    v18 = v17 - v12;
    v27 = v17 - v12;
    if (v17 + 1 != v12)
    {
      do
      {
        re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v28, *(v26[0] + 8) + 72 * v18, *(v26[0] + 8) + 72 * v18 + 8, v15, v10);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v26);
        v18 = v27;
      }

      while (v27 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_13:
  v19 = *(&v28[3] + 1);
  *(&v28[3] + 1) = *(a1 + 56);
  v20 = v28[0];
  v21 = v28[1];
  v28[0] = *a1;
  *&v28[1] = v11;
  v22 = v28[2];
  v23 = *(a1 + 40);
  *(a1 + 48) = *&v28[3];
  *(a1 + 56) = v19;
  *(&v28[2] + 8) = v23;
  v24 = *(a1 + 24);
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(&v28[1] + 8) = v24;
  return re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
}

void *re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 9 * (v13 + 16 * v11);
  v17 = *(a1 + 8) + 72 * (v13 + 16 * v11);
  v18 = *a3;
  *v17 = *a2;
  *(v17 + 8) = v18;
  *(v17 + 48) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 40) = 0;
  v19 = a3[2];
  *(v17 + 16) = a3[1];
  *(v17 + 24) = v19;
  a3[1] = 0;
  a3[2] = 0;
  v20 = *(v17 + 32);
  *(v17 + 32) = a3[3];
  a3[3] = v20;
  v21 = *(v17 + 48);
  *(v17 + 48) = a3[5];
  a3[5] = v21;
  ++*(a3 + 8);
  ++*(v17 + 40);
  *(v17 + 56) = a3[6];
  a3[6] = 0;
  *(v17 + 64) = *(a3 + 14);
  if (v15 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v23);
  v24 = (*(a1 + 8) + 8 * v16);
  v26 = *v24;
  result = v24 + 1;
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
  *(a1 + 40) ^= (v27 >> 31) ^ v27;
  return result;
}

void re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v44, 0, sizeof(v44));
  v10 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v44, v9, v4);
  v42[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v42[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v43 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v42[0] + 8);
        if (*(&v44[3] + 1))
        {
          v19 = *&v44[2];
        }

        else
        {
          *&v44[1] = 16;
          *&v35 = -1;
          *(&v35 + 1) = -1;
          **&v44[0] = v35;
          v19 = *&v44[1];
          *(&v44[0] + 1) = *&v44[0] + 16;
          *(&v44[1] + 1) = 0;
          v44[2] = *&v44[1];
          *&v44[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v44[1], *&v44[1] > (8 * v19)))
        {
          re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v44, 1);
          v20 = xmmword_1E304FAD0;
          v21 = *&v44[1];
        }

        v22 = (v18 + 16 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
        if (v27 >= 0x40)
        {
          do
          {
            if (v26 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v44[0] + 16 * v26)), v20)))), 0x3830282018100800)));
          }

          while (v27 > 0x3F);
        }

        v28 = *&v44[0] + 16 * v26;
        v29 = *(v28 + v27);
        *(v28 + v27) = v24 & 0x7F;
        v30 = 16 * (v27 + 16 * v26);
        v31 = (*(&v44[0] + 1) + v30);
        *v31 = *v22;
        v31[1] = v22[1];
        if (v29 == 255)
        {
          v32 = -1;
        }

        else
        {
          v32 = 0;
        }

        v33.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v33.i64[1] = v32;
        *(&v44[1] + 8) = vaddq_s64(*(&v44[1] + 8), v33);
        v34 = 0xBF58476D1CE4E5B9 * (*(*(&v44[0] + 1) + v30) ^ (*(*(&v44[0] + 1) + v30) >> 30));
        *(&v44[2] + 1) ^= ((0x94D049BB133111EBLL * (v34 ^ (v34 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v34 ^ (v34 >> 27)));
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v42);
        v17 = v43;
      }

      while (v43 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v36 = *(&v44[3] + 1);
  *(&v44[3] + 1) = *(a1 + 56);
  v37 = v44[0];
  v38 = v44[1];
  v44[0] = *a1;
  *&v44[1] = v11;
  v39 = v44[2];
  v40 = *(a1 + 40);
  *(a1 + 48) = *&v44[3];
  *(a1 + 56) = v36;
  *(&v44[2] + 8) = v40;
  v41 = *(a1 + 24);
  *a1 = v37;
  *(a1 + 16) = v38;
  *(a1 + 32) = v39;
  *(&v44[1] + 8) = v41;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v44);
}

void *re::DynamicArray<re::IBL>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::IBL>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::IBL>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

double re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v26, 0, sizeof(v26));
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::init(v26, v9, v4);
  v24[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v25 = v15 - v11;
    if (v15 + 1 != v11)
    {
      do
      {
        re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 32 * v16), (*(v24[0] + 8) + 32 * v16 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v16 = v25;
      }

      while (v25 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v17 = *(&v26[3] + 1);
  *(&v26[3] + 1) = *(a1 + 56);
  v18 = v26[0];
  v19 = v26[1];
  v26[0] = *a1;
  *&v26[1] = v10;
  v20 = v26[2];
  v21 = *(a1 + 40);
  *(a1 + 48) = *&v26[3];
  *(a1 + 56) = v17;
  *(&v26[2] + 8) = v21;
  v22 = *(a1 + 24);
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(&v26[1] + 8) = v22;
  return re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v26);
}

int64x2_t re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::internalAdd(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 32 * (v13 + 16 * v11);
  *(a1[1] + v16) = *a2;
  v17 = a1[1] + v16;
  v18 = *a3;
  *(v17 + 24) = *(a3 + 2);
  *(v17 + 8) = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  result = vaddq_s64(*(a1 + 3), v20);
  *(a1 + 3) = result;
  v22 = *(a1[1] + v16) ^ (*(a1[1] + v16) >> 30);
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v22) ^ ((0xBF58476D1CE4E5B9 * v22) >> 27));
  a1[5] ^= (v23 >> 31) ^ v23;
  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF62C8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF6320;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF6378;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF63D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF62C8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF6320;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF6378;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF63D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF62C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF62C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6320;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6320;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF6378;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF6378;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF63D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF63D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_CARETraceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE350))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE368, "CARETraceComponent");
    __cxa_guard_release(&qword_1EE1AE350);
  }

  return &unk_1EE1AE368;
}

void re::ecs2::initInfo_CARETraceComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xBD1DADD37A0DED52;
  v13[1] = "CARETraceComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&_MergedGlobals_331, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_331);
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
      qword_1EE1AE358 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_AABB(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_bbox";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AE360 = v11;
      __cxa_guard_release(&_MergedGlobals_331);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AE358;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CARETraceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CARETraceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CARETraceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CARETraceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218CARETraceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::CARETraceComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  v3[1].i64[0] = 0;
  v3[1].i8[8] = 0;
  v3->i64[0] = &unk_1F5CE8020;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v3[2] = vnegq_f32(result);
  v3[3] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::CARETraceComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  v1[1].i64[0] = 0;
  v1[1].i8[8] = 0;
  v1->i64[0] = &unk_1F5CE8020;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  v1[2] = vnegq_f32(result);
  v1[3] = result;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218CARETraceComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::DeformedDirectMeshComponent::~DeformedDirectMeshComponent(re::ecs2::DeformedDirectMeshComponent *this)
{
  v9[5] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF6428;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 13) = 0;
  }

  inited = objc_initWeak(&location, 0);
  memset(v9, 0, 24);
  v9[3] = re::globalAllocators(inited)[2];
  v9[4] = 0;
  re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset(this + 22, &location, 0, v9);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v9);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(this + 192);
  objc_destroyWeak(this + 22);
  *(this + 22) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::AssetHandle::~AssetHandle((this + 112));

  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(this + 10);
    if (v5)
    {
      v6 = *(this + 8);
      if (v6)
      {
        v7 = 328 * v6;
        do
        {
          re::AttributeTable::~AttributeTable(v5);
          v5 = (v5 + 328);
          v7 -= 328;
        }

        while (v7);
        v4 = *(this + 6);
        v5 = *(this + 10);
      }

      (*(*v4 + 40))(v4, v5);
    }

    *(this + 10) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 6) = 0;
    ++*(this + 18);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::DeformedDirectMeshComponent::~DeformedDirectMeshComponent(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::ecs2::DeformedDirectMeshComponent::combinedDeformedRenderMeshParts(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v74 = a5;
  v75 = a6;
  v10 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v11 = re::AssetHandle::loadedAsset<re::MeshAsset>((a1 + 112));
  if (!v11 || (*(a1 + 248) == *(a1 + 232) ? (v12 = *(a1 + 256) == *(a1 + 240)) : (v12 = 0), !v12))
  {
    inited = objc_initWeak(&location, 0);
    memset(dst, 0, sizeof(dst));
    v82 = 0;
    v83 = re::globalAllocators(inited)[2];
    v84 = 0;
    re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset((a1 + 176), &location, 0, dst);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(dst);
    objc_destroyWeak(&location);
    location = 0;
    v14 = *(a1 + 232);
    *(a1 + 248) = *(a1 + 232);
    if (!(v14 | *(a1 + 240)))
    {
      return 0;
    }

    *src = *(a1 + 232);
    v15 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);
    uuid_copy(dst, src);
    v16 = re::HashTable<re::DirectResourceId,DRResource_s *,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::tryGet(v15 + 48, dst);
    if (v16)
    {
      v17 = *v16;
      if (v17)
      {
        v18 = DRResourceAsMesh();
        v19 = v18;
        if (v18)
        {
          re::DirectMeshPayload::make(v18, dst);
          v20 = *dst;
          *dst = 0;
          *v86 = v20;
          if (v20)
          {
            v21 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
            re::MeshPayload::makeMeshPayloadBuffers(v86, v10 + 26, dst);
            v23 = re::globalAllocators(v22);
            v24 = (*(*v23[2] + 32))(v23[2], 1272, 8);
            v72 = v20;
            v25 = re::MeshAsset::MeshAsset(v24, &v72, dst);
            v26 = re::MeshAsset::assetType(v25);
            (*(*v21 + 424))(&v93, v21, v24, v26, 0, 0, 0);
            v27 = *(a1 + 112);
            *(a1 + 112) = v93;
            v93 = v27;
            v28 = *(a1 + 128);
            *(a1 + 128) = v94;
            *&v94 = v28;
            re::AssetHandle::~AssetHandle(&v93);

            if (v85 != -1)
            {
              (off_1F5CF6588[v85])(&v93, dst);
            }
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }

    v11 = re::AssetHandle::loadedAsset<re::MeshAsset>((a1 + 112));
    if (!v11)
    {
      return 0;
    }
  }

  if (*(v11 + 608) != 1)
  {
    return 0;
  }

  v29 = re::DataArray<re::MeshModel>::get(*(v11 + 632) + 8, **(v11 + 624));
  v30 = *(v29 + 56);
  if (!v30 || v30 != *(a1 + 152))
  {
    return 0;
  }

  v31 = v29;
  v32 = *(a1 + 184);
  if (!v32 || (v33 = *(a1 + 120), v33 != *(v32 + 72)) || *(v33 + 276) != *(v32 + 88))
  {
    v70 = *(v29 + 56);
    v34 = *(v10 + 18);
    if (v34)
    {
      v35 = (v34 + 8);
    }

    else
    {
      v35 = 0;
    }

    v36 = objc_initWeak(&v71, v35);
    v37 = re::globalAllocators(v36);
    v38 = (*(*v37[2] + 32))(v37[2], 96, 8);
    *v38 = 0u;
    *(v38 + 1) = 0u;
    *(v38 + 2) = 0u;
    *(v38 + 3) = 0u;
    *(v38 + 4) = 0u;
    *(v38 + 5) = 0u;
    memset(dst, 0, sizeof(dst));
    v82 = 0;
    v83 = re::globalAllocators(v38)[2];
    v84 = 0;
    re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset((a1 + 176), &v71, v38, dst);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(dst);
    objc_destroyWeak(&v71);
    v71 = 0;
    re::AssetHandle::operator=(*(a1 + 184) + 64, (a1 + 112));
    v39 = *(a1 + 184);
    *(v39 + 88) = *(*(a1 + 120) + 276);
    v40 = *(a1 + 152) + a4;
    if (*(v39 + 8) < v40)
    {
      re::DynamicArray<float *>::setCapacity(v39, v40);
    }

    re::StackScratchAllocator::StackScratchAllocator(dst);
    v79 = 0;
    *src = 0u;
    v78 = 0u;
    v80 = 0x7FFFFFFFLL;
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(src, dst, 2 * a4);
    if (*v39)
    {
      if (a4)
      {
        re::DynamicArray<re::MeshPart const*>::copy(v39, 0, a3, a4);
        v42 = *(v39 + 16);
        if (v42 >= a4)
        {
          if (v42 <= a4)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (*(v39 + 8) < a4)
          {
            re::DynamicArray<float *>::setCapacity(v39, a4);
            v42 = *(v39 + 16);
          }

          if (a4 > v42 && a4 > v42)
          {
            bzero((*(v39 + 32) + 8 * v42), 8 * (a4 - v42));
          }
        }

        *(v39 + 16) = a4;
      }

      else
      {
        *(v39 + 16) = 0;
      }

      ++*(v39 + 24);
    }

    else if (a4)
    {
      re::DynamicArray<float *>::setCapacity(v39, a4);
      ++*(v39 + 24);
      re::DynamicArray<re::MeshPart const*>::copy(v39, 0, a3, a4);
    }

LABEL_47:
    v68 = a3;
    v69 = a4;
    re::FixedArray<re::MeshRangeGroup>::operator=((v39 + 40), &v74);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0xFFFFFFFFLL;
    v50 = v70;
    do
    {
      v51 = *(a1 + 152);
      if (v51 <= v48)
      {
        v76 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 789;
        v89 = 2048;
        v90 = v48;
        v91 = 2048;
        v92 = v51;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_67:
        v76 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 468;
        v89 = 2048;
        v90 = v49;
        v91 = 2048;
        v92 = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v76 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 476;
        v89 = 2048;
        v90 = v48;
        v91 = 2048;
        v92 = v51;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_69:
        v76 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        a4 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 789;
        v89 = 2048;
        v90 = v51;
        v91 = 2048;
        v92 = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_70:
        re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v54, v55);
        _os_crash();
        __break(1u);
LABEL_71:
        v76 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        v88 = 468;
        v89 = 2048;
        v90 = v49;
        v91 = 2048;
        v92 = a4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v51 = *(a1 + 168);
      v52 = *(v51 + v46);
      if (v49 != v52)
      {
        if (v75 <= v52)
        {
          break;
        }

        v53 = (v74 + 96 * v52);
        v54 = *v53;
        v55 = v69;
        if (v69 <= *v53)
        {
          goto LABEL_70;
        }

        v56 = *(v39 + 16);
        v57 = &v68[8 * v54];
        v58 = v53[1];
        v59 = v58 >= v54;
        v60 = v58 - v54;
        if (v59)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0;
        }

        re::DynamicArray<re::MeshPart const*>::copy(v39, *(v39 + 16), v57, v61);
        v49 = *(v51 + v46);
        a4 = *(v39 + 48);
        if (a4 <= v49)
        {
          goto LABEL_71;
        }

        v62 = *(v39 + 16);
        v63 = (*(v39 + 56) + 96 * v49);
        *v63 = v56;
        v63[1] = v62;
        v50 = v70;
      }

      v32 = *(v39 + 48);
      if (v32 <= v49)
      {
        goto LABEL_67;
      }

      v64 = *(v51 + v46 + 4);
      v65 = *(*(v39 + 56) + 96 * v49);
      v66 = *(*(v39 + 56) + 96 * v49 + 8);
      v59 = v66 >= v65;
      v67 = v66 - v65;
      if (!v59)
      {
        v67 = 0;
      }

      if (v67 > v64)
      {
        v51 = *(v31 + 56);
        if (v51 <= v48)
        {
          goto LABEL_68;
        }

        v51 = v65 + v64;
        v32 = *(v39 + 16);
        if (v32 <= v65 + v64)
        {
          goto LABEL_69;
        }

        *(*(v39 + 32) + 8 * v51) = *(v31 + 64) + v47;
      }

      ++v48;
      v47 += 544;
      v46 += 8;
    }

    while (v50 != v48);
    v32 = *(a1 + 184);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(src);
    re::StackScratchAllocator::~StackScratchAllocator(dst);
  }

  return v32;
}

uint64_t re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CF6600;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::CombinedDeformedRenderMeshParts>(location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

void *re::DynamicArray<re::MeshPart const*>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<float *>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[8 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 8 * v5), __src, 8 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 8 * v5), v12, 8 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void re::ecs2::DeformedDirectMeshComponent::updateMeshAttributeTable(uint64_t a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, unint64_t a5, id *a6)
{
  v211 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v201);
  v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v200 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v197, v201, 3);
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  v196 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v193, v201, 3);
  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v11)
  {
    v12 = *(a1 + 80);
    v13 = 328 * v11;
    do
    {
      re::AttributeTable::~AttributeTable(v12);
      v12 = (v14 + 328);
      v13 -= 328;
    }

    while (v13);
  }

  v15 = 0x5353CF4AA93DFAB9;
  ++*(a1 + 72);
  __s1 = 0;
  v189[1] = 0;
  v190 = 0;
  v189[0] = 0;
  v191 = 0;
  v172 = *(a5 + 8);
  if (!*(a5 + 8))
  {
    v45 = 0;
    goto LABEL_54;
  }

  v6 = 0;
  v7 = 0x7FFFFFFFLL;
  v170 = a5;
  while (1)
  {
    v16 = *(a5 + 8);
    if (v16 <= v6)
    {
      v186 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 476;
      *&v208[18] = 2048;
      *&v208[20] = v6;
      v209 = 2048;
      v210 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_266:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      v51 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_267:
      re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a5, v53);
      _os_crash();
      __break(1u);
LABEL_268:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 476;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v51;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_269:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v51;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_270:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      v60 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_271:
      re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a5, v62);
      _os_crash();
      __break(1u);
LABEL_272:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 476;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v60;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_273:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v60;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_274:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_275:
      re::internal::assertLog(6, v102, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v102);
      _os_crash();
      __break(1u);
LABEL_276:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 476;
      *&v208[18] = 2048;
      *&v208[20] = v15;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_277:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_278:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_279:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v7;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_280:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      v121 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = v8;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_281:
      re::internal::assertLog(6, v123, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v121, v123);
      _os_crash();
      __break(1u);
LABEL_282:
      v176 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = v8;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_283:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 789;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_284:
      re::internal::assertLog(6, v88, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v89, v90);
      _os_crash();
      __break(1u);
LABEL_285:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 797;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_286:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 476;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_287:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_288:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_289:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_290:
      v202 = 0;
      v205 = 0u;
      v206 = 0u;
      v204 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v208 = 136315906;
      *&v208[4] = "operator[]";
      *&v208[12] = 1024;
      *&v208[14] = 468;
      *&v208[18] = 2048;
      *&v208[20] = a5;
      v209 = 2048;
      v210 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_291:
      re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) Unexpected vertex attribute bit.", "!Unreachable code", "updateMeshAttributeTable", 579);
      _os_crash();
      __break(1u);
LABEL_292:
      re::internal::assertLog(4, v78, "assertion failure: '%s' (%s:line %i) Unexpected vertex attribute bit.", "!Unreachable code", "updateMeshAttributeTable", 392);
      _os_crash();
      __break(1u);
    }

    v17 = *(a5 + 16) + 24 * v6;
    v18 = *(v17 + 8);
    if (*(v17 + 8))
    {
      break;
    }

LABEL_51:
    ++v6;
    a5 = v170;
    if (v6 == v172)
    {
      v45 = v190;
LABEL_54:
      if (v45 == *(a1 + 152) && !memcmp(__s1, *(a1 + 168), 8 * v45))
      {
        v159 = 0;
      }

      else
      {
        if (*(a1 + 136))
        {
          if (v189[0])
          {
            re::DynamicArray<re::MeshInstanceAndPartIndex>::copy((a1 + 136), v189);
          }

          else
          {
            *(a1 + 152) = 0;
          }

          ++*(a1 + 160);
        }

        else if (v189[0])
        {
          *(a1 + 136) = v189[0];
          re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity((a1 + 136), v45);
          ++*(a1 + 160);
          re::DynamicArray<re::MeshInstanceAndPartIndex>::copy((a1 + 136), v189);
        }

        v159 = 1;
      }

      v46 = *(a1 + 64);
      v186 = 0;
      v187 = 0;
      v188 = 0;
      re::FixedArray<int>::init<>(&v186, v201, v46);
      v183 = 0;
      v184 = 0;
      v185 = 0;
      re::FixedArray<int>::init<>(&v183, v201, v46);
      v180 = 0;
      v181 = 0;
      v182 = 0;
      re::FixedArray<int>::init<>(&v180, v201, v46);
      v169 = v46;
      if (v46)
      {
        v173 = 0;
        v47 = 0;
        v171 = 0;
        v7 = 0;
        v15 = 328;
        while (1)
        {
          if (!v193 || (v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27)), v49 = *(*(&v193 + 1) + 4 * ((v48 ^ (v48 >> 31)) % DWORD2(v194))), v49 == 0x7FFFFFFF))
          {
LABEL_70:
            a5 = *(a1 + 64);
            if (a5 <= v7)
            {
              goto LABEL_266;
            }

            v8 = *(a1 + 80) + 328 * v7;
            v50 = v8;
            do
            {
              v51 = v50;
              v50 = *v50;
            }

            while (v50 && !v51[8]);
            *buf = 0x5353CF4AA93DFAB9;
            a5 = *(v51[6] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v51 + 5, buf) + 8);
            v52 = re::AttributeTable::buffers(v8);
            if (v53 <= a5)
            {
              goto LABEL_267;
            }

            v54 = v8;
            do
            {
              v55 = v54;
              v54 = *v54;
              v51 = v55[3];
              if (v54)
              {
                v56 = v51 == 0;
              }

              else
              {
                v56 = 0;
              }
            }

            while (v56);
            if (v51 <= a5)
            {
              goto LABEL_268;
            }

            v51 = v187;
            if (v187 <= v7)
            {
              goto LABEL_269;
            }

            v57 = *(v52 + 6 * a5 + 5) / *(v55[4] + 16 * a5);
            *(v188 + 4 * v7) = v57;
            a5 = v184;
            if (v184 <= v7)
            {
              goto LABEL_270;
            }

            v58 = (v57 + 15) & 0xFFFFFFF0;
            *(v185 + 4 * v7) = v58;
            v47 += v58;
            v59 = v8;
            do
            {
              v60 = v59;
              v59 = *v59;
            }

            while (v59 && !v60[8]);
            *buf = 0x2B3FAC222C23CAEDLL;
            a5 = *(v60[6] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v60 + 5, buf) + 8);
            v61 = re::AttributeTable::buffers(v8);
            if (v62 <= a5)
            {
              goto LABEL_271;
            }

            v63 = v8;
            do
            {
              v64 = v63;
              v63 = *v63;
              v60 = v64[3];
              if (v63)
              {
                v65 = v60 == 0;
              }

              else
              {
                v65 = 0;
              }
            }

            while (v65);
            if (v60 <= a5)
            {
              goto LABEL_272;
            }

            v60 = v181;
            if (v181 <= v7)
            {
              goto LABEL_273;
            }

            v66 = *(v61 + 6 * a5 + 5) / *(v64[4] + 16 * a5);
            *(v182 + 4 * v7) = v66;
            v171 += v66;
            v67 = v8;
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67 && !v68[8]);
            *buf = 0x2ACCEB6695018FABLL;
            v69 = 4 * (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v68 + 5, buf) != -1);
            v70 = v8;
            do
            {
              v71 = v70;
              v70 = *v70;
            }

            while (v70 && !v71[8]);
            *buf = 0x2ED0816D3076E801;
            v72 = 8 * (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v71 + 5, buf) != -1);
            v73 = v8;
            do
            {
              v74 = v73;
              v73 = *v73;
            }

            while (v73 && !v74[8]);
            *buf = 0x3CB5CD20F43A4EDALL;
            v6 = 16 * (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v74 + 5, buf) != -1);
            do
            {
              v75 = v8;
              v8 = *v8;
            }

            while (v8 && !*(v75 + 64));
            *buf = 0x30989BAE345;
            v173 |= v69 | v72 | v6 | ((re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v75 + 40), buf) != -1) << 20);
          }

          else
          {
            while (*(v194 + 32 * v49 + 8) != v7)
            {
              v49 = *(v194 + 32 * v49) & 0x7FFFFFFF;
              if (v49 == 0x7FFFFFFF)
              {
                goto LABEL_70;
              }
            }
          }

          if (++v7 == v169)
          {
            goto LABEL_110;
          }
        }
      }

      v173 = 0;
      v171 = 0;
      v47 = 0;
LABEL_110:
      if (!*(a1 + 104))
      {
        v165 = v47 - 65534 < 0xFFFF0001;
        v15 = 0x5353CF4AA93DFAB9;
        goto LABEL_121;
      }

      v15 = 0x5353CF4AA93DFAB9;
      if (*(a1 + 96) != v173 || DRMeshGetPartCount() != v169 || DRMeshGetIndexCapacity() < v47 || DRMeshGetVertexCapacity() < v171)
      {
        v76 = *(a1 + 112);
        if (v76)
        {

          *(a1 + 112) = 0;
        }

        *(a1 + 120) = 0;
        v77 = *(a1 + 104);
        *(a1 + 104) = 0;
      }

      v8 = *(a1 + 104);
      v165 = v47 - 65534 < 0xFFFF0001;
      if (!v8)
      {
LABEL_121:
        v8 = DRMeshDescriptorCreate();
        DRMeshDescriptorSetIndexCapacity();
        DRMeshDescriptorSetIndexType();
        DRMeshDescriptorSetVertexCapacity();
        DRMeshDescriptorSetVertexBufferCount();
        DRMeshDescriptorSetVertexLayoutCount();
        DRMeshDescriptorSetVertexAttributeCount();
        DRMeshDescriptorSetVertexLayout();
        DRMeshDescriptorSetVertexAttributeFormat();
        if (v173)
        {
          v79 = __clz(__rbit64(v173));
          v80 = 1;
          LODWORD(v7) = v171;
          do
          {
            if (v79 > 3)
            {
              if (v79 != 4)
              {
                if (v79 != 20)
                {
                  goto LABEL_292;
                }

                DRMeshDescriptorSetVertexLayout();
              }
            }

            else if (v79 != 2 && v79 != 3)
            {
              goto LABEL_292;
            }

            DRMeshDescriptorSetVertexAttributeFormat();
            v7 = v7 + v171;
            ++v80;
            v56 = ((-2 << v79) & v173) == 0;
            v79 = __clz(__rbit64((-2 << v79) & v173));
          }

          while (!v56);
        }

        cf = 0;
        v18 = *(a2 + 256);
        Mesh = DRContextCreateMesh();
        v82 = *(a1 + 104);
        *(a1 + 104) = Mesh;

        if (cf)
        {
          v84 = *re::ecsComponentsLogObjects(v83);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_264;
          }

          goto LABEL_134;
        }

        DRMeshSetPartCount();
        v85 = *(*(a2 + 232) + 32);
        v176 = 0;
        v177 = 0;
        v178 = 0;
        re::FixedArray<unsigned long>::init<>(&v176, v201, v169);
        v175 = 0;
        if (v169)
        {
          v86 = 0;
          do
          {
            v87 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(&v193, &v175);
            if (v87)
            {
              a5 = *v87;
              v6 = v177;
              if (v177 <= *v87)
              {
                goto LABEL_287;
              }

              v6 = v187;
              if (v187 <= a5)
              {
                goto LABEL_288;
              }

              v6 = *(v178 + 8 * a5);
              a5 = v175;
            }

            else
            {
              a5 = v175;
              v6 = v187;
              if (v187 <= v175)
              {
                goto LABEL_289;
              }

              v6 = v184;
              if (v184 <= v175)
              {
                goto LABEL_290;
              }

              v6 = v86;
              v86 += *(v185 + 4 * v175);
            }

            v15 = *(a1 + 152);
            if (v15 <= a5)
            {
              goto LABEL_283;
            }

            v7 = *(a1 + 168) + 8 * a5;
            v89 = *v7;
            v90 = *(a1 + 40);
            if (v90 <= v89)
            {
              goto LABEL_284;
            }

            v91 = *(*(a1 + 32) + 8 * v89);
            a5 = WORD1(v91);
            v15 = *(v85 + 88);
            if (v15 <= WORD1(v91))
            {
              goto LABEL_285;
            }

            v92 = re::DataArray<re::MeshModel>::get(v85 + 8, *(*(*(v85 + 104) + 16 * WORD1(v91)) + 144 * v91 + 16));
            a5 = *(v7 + 4);
            v7 = *(v92 + 56);
            if (v7 <= a5)
            {
              goto LABEL_286;
            }

            DRMeshSetPartAt();
            ++v175;
            v15 = 0x5353CF4AA93DFAB9;
          }

          while (v175 < v169);
        }

        if (v176 && v177)
        {
          (*(*v176 + 40))();
        }

        v8 = *(a1 + 104);
      }

      v93 = *a6;
      v163 = DRMeshReplaceIndicesUsing();

      re::mtl::CommandBuffer::makeComputeCommandEncoder(a6, &v202);
      if (v169)
      {
        a5 = 0;
        v94 = 0;
        v7 = 0;
        v95 = 1;
        if (v165)
        {
          v95 = 2;
        }

        v162 = v95;
        do
        {
          if (!v193 || (v96 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27)), v97 = *(*(&v193 + 1) + 4 * ((v96 ^ (v96 >> 31)) % DWORD2(v194))), v97 == 0x7FFFFFFF))
          {
LABEL_161:
            v6 = *(a1 + 64);
            if (v6 <= v7)
            {
              goto LABEL_274;
            }

            v98 = (*(a1 + 80) + 328 * v7);
            v99 = v98;
            do
            {
              v100 = v99;
              v99 = *v99;
            }

            while (v99 && !*(v100 + 8));
            *buf = 0x5353CF4AA93DFAB9;
            v15 = *(*(v100 + 6) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v100 + 5, buf) + 8);
            v101 = re::AttributeTable::buffers(v98);
            if (v102 <= v15)
            {
              goto LABEL_275;
            }

            v8 = v101 + 24 * v15;
            do
            {
              v103 = v98;
              v98 = *v98;
              v6 = *(v103 + 3);
              if (v98)
              {
                v104 = v6 == 0;
              }

              else
              {
                v104 = 0;
              }
            }

            while (v104);
            if (v6 <= v15)
            {
              goto LABEL_276;
            }

            v6 = v187;
            if (v187 <= v7)
            {
              goto LABEL_277;
            }

            v6 = v181;
            if (v181 <= v7)
            {
              goto LABEL_278;
            }

            v6 = v184;
            if (v184 <= v7)
            {
              goto LABEL_279;
            }

            v105 = *(v188 + 4 * v7);
            v168 = *(v182 + 4 * v7) + a5;
            v106 = *(v185 + 4 * v7) + v94;
            v107 = *(*(v103 + 4) + 16 * v15) == 2;
            v108 = 576;
            if (v107)
            {
              v108 = 552;
            }

            v109 = 560;
            if (v107)
            {
              v109 = 568;
            }

            if (v165)
            {
              v110 = v109;
            }

            else
            {
              v110 = v108;
            }

            *&v111 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, buf);
            v112 = *&buf[8];
            v113 = *&buf[16];
            *(*buf + *&buf[8]) = a5 | (v105 << 32);
            [v202 setComputePipelineState:{*(a2 + v110), v111}];
            [v202 setBuffer:v113 offset:v112 atIndex:0];
            [v202 setBuffer:*v8 offset:*(v8 + 16) atIndex:1];
            [v202 setBuffer:v163 offset:v94 << v162 atIndex:2];
            v114 = [*(a2 + v110) threadExecutionWidth];
            *buf = v105;
            *&buf[8] = vdupq_n_s64(1uLL);
            *v208 = v114;
            *&v208[8] = *&buf[8];
            [v202 dispatchThreads:buf threadsPerThreadgroup:v208];
            v94 = v106;
            a5 = v168;
            v15 = 0x5353CF4AA93DFAB9;
          }

          else
          {
            while (*(v194 + 32 * v97 + 8) != v7)
            {
              v97 = *(v194 + 32 * v97) & 0x7FFFFFFF;
              if (v97 == 0x7FFFFFFF)
              {
                goto LABEL_161;
              }
            }
          }

          ++v7;
        }

        while (v7 != v169);
      }

      [v202 endEncoding];

      v115 = *a6;
      v7 = DRMeshReplaceVerticesUsing();

      re::mtl::CommandBuffer::makeBlitCommandEncoder(a6, &v202);
      if (v169)
      {
        v116 = 0;
        v8 = 0;
        v166 = __clz(__rbit64(v173));
        a5 = 0x7FFFFFFFLL;
        while (1)
        {
          if (v193)
          {
            v117 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
            v118 = *(*(&v193 + 1) + 4 * ((v117 ^ (v117 >> 31)) % DWORD2(v194)));
            if (v118 != 0x7FFFFFFF)
            {
              do
              {
                if (*(v194 + 32 * v118 + 8) == v8)
                {
                  goto LABEL_235;
                }

                v118 = *(v194 + 32 * v118) & 0x7FFFFFFF;
              }

              while (v118 != 0x7FFFFFFF);
            }
          }

          v6 = *(a1 + 64);
          if (v6 <= v8)
          {
            goto LABEL_280;
          }

          v18 = *(a1 + 80) + 328 * v8;
          v119 = v18;
          do
          {
            v120 = v119;
            v119 = *v119;
          }

          while (v119 && !v120[8]);
          *buf = 0x2B3FAC222C23CAEDLL;
          v121 = *(v120[6] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v120 + 5, buf) + 8);
          v122 = re::AttributeTable::buffers(v18);
          if (v123 <= v121)
          {
            goto LABEL_281;
          }

          v6 = v181;
          if (v181 <= v8)
          {
            goto LABEL_282;
          }

          v124 = (v122 + 24 * v121);
          v84 = *(v182 + 4 * v8);
          v125 = 12 * v84 >= *(v124 + 5) ? *(v124 + 5) : 12 * v84;
          re::mtl::BlitCommandEncoder::bufferCopy(&v202, *v124, *(v124 + 4), v7, 12 * v116, v125);
          if (v173)
          {
            break;
          }

          v116 += v84;
LABEL_235:
          if (++v8 == v169)
          {
            goto LABEL_236;
          }
        }

        v127 = 1;
        v128 = v166;
        while (2)
        {
          v129 = v18;
          if (v128 > 3)
          {
            if (v128 == 4)
            {
              do
              {
                v130 = v129;
                v129 = *v129;
              }

              while (v129 && !v130[8]);
              v131 = 0x3CB5CD20F43A4EDALL;
              goto LABEL_219;
            }

            v132 = v18;
            if (v128 != 20)
            {
              goto LABEL_291;
            }

            do
            {
              v133 = v132;
              v132 = *v132;
            }

            while (v132 && !v133[8]);
            *buf = 0x30989BAE345;
            v134 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v133 + 5, buf);
            if (v134 == -1)
            {
              v135 = 0;
            }

            else
            {
              v135 = (v133[6] + 16 * v134 + 8);
            }

            v15 = 8;
            if (!v135)
            {
LABEL_231:
              if (((-2 << v128) & v173) == 0)
              {
                v116 += v84;
                a5 = 0x7FFFFFFFLL;
                goto LABEL_235;
              }

              ++v127;
              v128 = __clz(__rbit64((-2 << v128) & v173));
              continue;
            }
          }

          else
          {
            if (v128 == 2)
            {
              do
              {
                v130 = v129;
                v129 = *v129;
              }

              while (v129 && !v130[8]);
              v131 = 0x2ACCEB6695018FABLL;
            }

            else
            {
              if (v128 != 3)
              {
                goto LABEL_291;
              }

              do
              {
                v130 = v129;
                v129 = *v129;
              }

              while (v129 && !v130[8]);
              v131 = 0x2ED0816D3076E801;
            }

LABEL_219:
            *buf = v131;
            v136 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v130 + 5, buf);
            if (v136 == -1)
            {
              v135 = 0;
            }

            else
            {
              v135 = (v130[6] + 16 * v136 + 8);
            }

            v15 = 12;
            if (!v135)
            {
              goto LABEL_231;
            }
          }

          break;
        }

        v137 = re::AttributeTable::buffers(v18);
        v139 = *v135;
        if (v138 <= v139)
        {
          goto LABEL_263;
        }

        v140 = (v137 + 24 * *v135);
        if (v15 * v84 >= *(v140 + 5))
        {
          v141 = *(v140 + 5);
        }

        else
        {
          v141 = v15 * v84;
        }

        re::mtl::BlitCommandEncoder::bufferCopy(&v202, *v140, *(v140 + 4), v7, v15 * v116 + 12 * v127 * v171, v141);
        goto LABEL_231;
      }

LABEL_236:
      [v202 endEncoding];

      if (*(a1 + 120))
      {
        if (!v159)
        {
LABEL_245:
          if ((*(*(a2 + 232) + 205) & 1) == 0)
          {
            v153 = re::ecs2::EntityComponentCollection::get((*(a1 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
            if (v153)
            {
              re::ecs2::DynamicBoundingBoxComponent::ensureSerializedBoundingBoxData(v153, *(*(*(a2 + 232) + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a2 + 232) + 144) + 16) << 60));
            }
          }

          *(a1 + 88) = a4;
          *(a1 + 96) = v173;
          goto LABEL_249;
        }
      }

      else
      {
        re::DirectMeshPayload::make(*(a1 + 104), buf);
        v142 = *buf;
        *buf = 0;
        v176 = v142;
        re::MeshPayload::makeMeshPayloadBuffers(&v176, (*(a2 + 232) + 208), buf);
        v143 = *(a2 + 240);
        v145 = re::globalAllocators(v144);
        v146 = (*(*v145[2] + 32))(v145[2], 1272, 8);
        v174 = v142;
        v147 = re::MeshAsset::MeshAsset(v146, &v174, buf);
        v148 = re::MeshAsset::assetType(v147);
        (*(*v143 + 424))(v208, v143, v146, v148, 0, 0, 0);
        v149 = *&v208[8];
        v150 = *(a1 + 112);
        *(a1 + 112) = *v208;
        *(a1 + 120) = v149;
        *v208 = v150;
        v151 = *(a1 + 128);
        *(a1 + 128) = *&v208[16];
        *&v208[16] = v151;
        re::AssetHandle::~AssetHandle(v208);

        re::AssetHandle::setNetworkSharingMode(a1 + 112, 1);
        re::DirectMeshPayload::dynamicCast(&v176, v208);
        *(a1 + 232) = *[*v208 identifier];

        if (v207 != -1)
        {
          (off_1F5CF6588[v207])(v208, buf);
        }
      }

      re::ecs2::Component::markDirty(a1);
      v152 = *(*(a1 + 16) + 216);
      if (v152)
      {
        re::ecs2::NetworkComponent::markDirty(v152, a1);
      }

      goto LABEL_245;
    }
  }

  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 8);
    if (v20 <= v19)
    {
      break;
    }

    v21 = *(v17 + 16);
    v8 = *(v21 + 8 * v19);
    if (!v8)
    {
      goto LABEL_38;
    }

    v22 = *(v21 + 8 * v19);
    do
    {
      v23 = v22;
      v22 = *v22;
    }

    while (v22 && !v23[8]);
    *buf = 0x5353CF4AA93DFAB9;
    if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v23 + 5, buf) == -1)
    {
      goto LABEL_38;
    }

    v24 = v8;
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24 && !v25[8]);
    *v208 = 0x2B3FAC222C23CAEDLL;
    v26 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v25 + 5, v208);
    if (v26 == -1)
    {
      goto LABEL_38;
    }

    v27 = *(a1 + 56);
    v28 = *(a1 + 64);
    v29 = v28;
    if (v28 >= v27)
    {
      if (v27 < v28 + 1)
      {
        if (*(a1 + 48))
        {
          v30 = 2 * v27;
          v56 = v27 == 0;
          v31 = 8;
          if (!v56)
          {
            v31 = v30;
          }

          if (v31 <= v28 + 1)
          {
            v32 = v28 + 1;
          }

          else
          {
            v32 = v31;
          }

          re::DynamicArray<re::AttributeTable>::setCapacity((a1 + 48), v32);
        }

        else
        {
          re::DynamicArray<re::AttributeTable>::setCapacity((a1 + 48), v28 + 1);
          ++*(a1 + 72);
        }
      }

      v29 = *(a1 + 64);
      v15 = 0x5353CF4AA93DFAB9;
    }

    re::AttributeTable::AttributeTable((*(a1 + 80) + 328 * v29), v8);
    ++*(a1 + 64);
    ++*(a1 + 72);
    *buf = v6;
    *&buf[4] = v19;
    re::DynamicArray<re::MeshInstanceAndPartIndex>::add(v189, buf);
    v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    v34 = v33 ^ (v33 >> 31);
    if (!v197)
    {
      LODWORD(v35) = 0;
LABEL_37:
      v38 = re::HashTable<re::AttributeTable const*,unsigned long,re::Hash<re::AttributeTable const*>,re::EqualTo<re::AttributeTable const*>,true,false>::allocEntry(&v197, v35, v34);
      *(v38 + 8) = v8;
      *(v38 + 16) = v28;
      ++HIDWORD(v200);
      goto LABEL_38;
    }

    v35 = v34 % DWORD2(v198);
    v36 = *(*(&v197 + 1) + 4 * v35);
    if (v36 == 0x7FFFFFFF)
    {
      goto LABEL_37;
    }

    v37 = *(*(&v197 + 1) + 4 * v35);
    if (*(v198 + 32 * v36 + 8) != v8)
    {
      while (1)
      {
        v37 = *(v198 + 32 * v37) & 0x7FFFFFFF;
        if (v37 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v198 + 32 * v37 + 8) == v8)
        {
          goto LABEL_41;
        }
      }

      while (*(v198 + 32 * v36 + 8) != v8)
      {
        v43 = *(v198 + 32 * v36);
        v36 = v43 & 0x7FFFFFFF;
        if ((v43 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_38;
    }

    v37 = *(*(&v197 + 1) + 4 * v35);
LABEL_41:
    v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
    v40 = v39 ^ (v39 >> 31);
    if (v193)
    {
      v41 = v40 % DWORD2(v194);
      v42 = *(*(&v193 + 1) + 4 * v41);
      if (v42 != 0x7FFFFFFF)
      {
        while (*(v194 + 32 * v42 + 8) != v28)
        {
          v42 = *(v194 + 32 * v42) & 0x7FFFFFFF;
          if (v42 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
      LODWORD(v41) = 0;
    }

LABEL_50:
    v8 = v198 + 32 * v37;
    v44 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(&v193, v41, v40);
    *(v44 + 8) = v28;
    *(v44 + 16) = *(v8 + 16);
    ++HIDWORD(v196);
LABEL_38:
    if (++v19 == v18)
    {
      goto LABEL_51;
    }
  }

  v186 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  memset(buf, 0, sizeof(buf));
  v84 = MEMORY[0x1E69E9C10];
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v208 = 136315906;
  *&v208[4] = "operator[]";
  *&v208[12] = 1024;
  *&v208[14] = 476;
  *&v208[18] = 2048;
  *&v208[20] = v19;
  v209 = 2048;
  v210 = v20;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_263:
  re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v139, v138);
  _os_crash();
  __break(1u);
LABEL_264:
  v154 = cf;
  v155 = v84;
  v156 = [v154 description];
  v157 = v156;
  v158 = [v156 UTF8String];
  *buf = 136315138;
  *&buf[4] = v158;
  _os_log_error_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_ERROR, "Could not create direct mesh: %s", buf, 0xCu);

LABEL_134:
  CFRelease(cf);

LABEL_249:
  if (v180 && v181)
  {
    (*(*v180 + 40))();
  }

  if (v183 && v184)
  {
    (*(*v183 + 40))();
  }

  if (v186 && v187)
  {
    (*(*v186 + 40))();
  }

  if (v189[0] && __s1)
  {
    (*(*v189[0] + 40))();
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v193);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v197);
  re::StackScratchAllocator::~StackScratchAllocator(v201);
}

_anonymous_namespace_ *re::DynamicArray<re::MeshInstanceAndPartIndex>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

re::ecs2::DeformedDirectMeshComponentStateImpl *re::ecs2::DeformedDirectMeshComponentStateImpl::DeformedDirectMeshComponentStateImpl(re::ecs2::DeformedDirectMeshComponentStateImpl *this)
{
  v11[2] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF6480;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v11[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v11[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v10[0] = v11;
  v10[1] = 2;
  v2 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(&v7, v10);
  v3 = v8;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(this + 2, 0, v9, v8);
  v5 = *(this + 3);
  if (!v5)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 454);
    _os_crash();
    __break(1u);
  }

  *(*(this + 4) + 8 * v5 - 8) = re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  if (v7 && v8)
  {
    (*(*v7 + 40))();
  }

  return this;
}

BOOL re::ecs2::DeformedDirectMeshComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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
      v12 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v24) + 16);
      v13 = *(v12 + 98);
      if (*(v12 + 98))
      {
        v14 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
        v15 = *(v12 + 104);
        v16 = vld1q_dup_s16(v14);
        v17 = 1;
        while (1)
        {
          v18 = vandq_s8(vceqq_s16(v16, *v15), xmmword_1E306AC00);
          v18.i16[0] = vmaxvq_u16(v18);
          if (v18.i32[0])
          {
            break;
          }

          v17 -= 8;
          ++v15;
          if (!--v13)
          {
            goto LABEL_11;
          }
        }

        LOBYTE(v13) = v18.u16[0] - v17 < *(v12 + 96);
      }

LABEL_11:
      v19 = (a3 + 32);
      if ((v13 & 1) == 0)
      {
        v20 = *(v12 + 192);
        v19 = (a3 + 32);
        if (v20)
        {
          if (*(v20 + 40))
          {
            v19 = (a3 + 40);
          }

          else
          {
            v19 = (a3 + 32);
          }
        }
      }

      v21 = v24;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v21, v22, *v19);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
    }

    while (v25 != a5 || v26 != 0xFFFF || HIWORD(v26) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DeformedDirectMeshComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = *(*(a1 + 8) + 232);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v29, a5, 0);
  v9 = v29;
  v10 = v30;
  v11 = v30;
  v29 = a4;
  v30 = v9;
  v31 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v29);
      v14 = (a3 + 32);
      if (*(v13 + 320))
      {
        v15 = *(v13 + 16);
        v16 = re::ecs2::EntityComponentCollection::get((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v16)
        {
          v17 = v16;
          re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v16, *(v8 + 32));
          v18 = v17 + 26;
          v19 = v17 + 24;
        }

        else
        {
          v20 = re::AssetHandle::loadedAsset<re::MeshAsset>((*(v15 + 192) + 32));
          v18 = (v20 + 584);
          v19 = (v20 + 568);
        }

        v21 = *v18;
        v22 = *v19;
        v23 = re::ecs2::EntityComponentCollection::getOrAdd((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        *(v23 + 32) = v21;
        *(v23 + 40) = v22;
        v14 = (a3 + 48);
      }

      v24 = v29;
      v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v30);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v24, v25, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v30);
    }

    while (v30 != a5 || v31 != 0xFFFF || HIWORD(v31) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DeformedDirectMeshComponentStateImpl::processUpdatingComponents(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if ((*(v6 + 544) & 1) == 0)
  {
    v7 = *(v6 + 232);
    LOBYTE(v69[0]) = 0;
    BYTE8(v69[2]) = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    ComputePipelineState = re::getOrCreateComputePipelineState(v7, &v67);
    NS::SharedPtr<MTL::Buffer>::operator=((v6 + 552), ComputePipelineState);
    if (v79)
    {

      v79 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v72);
    if (BYTE8(v69[2]) == 1 && v70)
    {
      if (BYTE8(v70))
      {
        (*(*v70 + 40))();
      }

      v70 = 0u;
      v71 = 0u;
    }

    if (LOBYTE(v69[0]) == 1 && *(&v69[0] + 1))
    {
      if (v69[1])
      {
        (*(**(&v69[0] + 1) + 40))();
      }

      memset(v69 + 8, 0, 32);
    }

    v9 = v67;
    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      v9 = (*(*v67 + 40))();
    }

    v10 = *(v6 + 232);
    LOBYTE(v69[0]) = 0;
    BYTE8(v69[2]) = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v11 = re::getOrCreateComputePipelineState(v10, &v67);
    NS::SharedPtr<MTL::Buffer>::operator=((v6 + 560), v11);
    if (v79)
    {

      v79 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v72);
    if (BYTE8(v69[2]) == 1 && v70)
    {
      if (BYTE8(v70))
      {
        (*(*v70 + 40))();
      }

      v70 = 0u;
      v71 = 0u;
    }

    if (LOBYTE(v69[0]) == 1 && *(&v69[0] + 1))
    {
      if (v69[1])
      {
        (*(**(&v69[0] + 1) + 40))();
      }

      memset(v69 + 8, 0, 32);
    }

    v12 = v67;
    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      v12 = (*(*v67 + 40))();
    }

    v13 = *(v6 + 232);
    LOBYTE(v69[0]) = 0;
    BYTE8(v69[2]) = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v14 = re::getOrCreateComputePipelineState(v13, &v67);
    NS::SharedPtr<MTL::Buffer>::operator=((v6 + 568), v14);
    if (v79)
    {

      v79 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v72);
    if (BYTE8(v69[2]) == 1 && v70)
    {
      if (BYTE8(v70))
      {
        (*(*v70 + 40))();
      }

      v70 = 0u;
      v71 = 0u;
    }

    if (LOBYTE(v69[0]) == 1 && *(&v69[0] + 1))
    {
      if (v69[1])
      {
        (*(**(&v69[0] + 1) + 40))();
      }

      memset(v69 + 8, 0, 32);
    }

    v15 = v67;
    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      v15 = (*(*v67 + 40))();
    }

    v16 = *(v6 + 232);
    LOBYTE(v69[0]) = 0;
    BYTE8(v69[2]) = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v17 = re::getOrCreateComputePipelineState(v16, &v67);
    NS::SharedPtr<MTL::Buffer>::operator=((v6 + 576), v17);
    if (v79)
    {

      v79 = 0;
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v72);
    if (BYTE8(v69[2]) == 1 && v70)
    {
      if (BYTE8(v70))
      {
        (*(*v70 + 40))();
      }

      v70 = 0u;
      v71 = 0u;
    }

    if (LOBYTE(v69[0]) == 1 && *(&v69[0] + 1))
    {
      if (v69[1])
      {
        (*(**(&v69[0] + 1) + 40))();
      }

      memset(v69 + 8, 0, 32);
    }

    if (v67 && (BYTE8(v67) & 1) != 0)
    {
      (*(*v67 + 40))();
    }

    *(v6 + 544) = 1;
  }

  v65 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v67, a5, 0);
  v62 = a4;
  v63 = v67;
  v64 = DWORD2(v67);
  if (v67 == a5 && DWORD2(v67) == 0xFFFFFFFFLL)
  {
    v55 = 0;
  }

  else
  {
    v58 = 0;
    v19 = 0x5353CF4AA93DFAB9;
    do
    {
      v20 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v62);
      v21 = *(v20 + 440);
      if (v21)
      {
        v22 = v20;
        v23 = re::ecs2::EntityComponentCollection::getOrAdd((*(v20 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v60 = re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData::calculateAllocationHash(*(v22 + 392));
        if (v23[11] == v60)
        {
          v24 = *(v21 + 8);
          if (*(v21 + 8))
          {
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v27 = *(v21 + 8);
              if (v27 <= v25)
              {
                goto LABEL_114;
              }

              v28 = *(v21 + 16) + 24 * v25;
              v27 = *(v28 + 8);
              if (*(v28 + 8))
              {
                break;
              }

LABEL_95:
              if (++v25 == v24)
              {
                goto LABEL_100;
              }
            }

            v29 = 0;
            while (1)
            {
              v30 = *(v28 + 8);
              if (v30 <= v29)
              {
                break;
              }

              v31 = *(v28 + 16);
              v32 = *(v31 + 8 * v29);
              if (v32)
              {
                v33 = *(v31 + 8 * v29);
                do
                {
                  v34 = v33;
                  v33 = *v33;
                }

                while (v33 && !v34[8]);
                *&v67 = v19;
                if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v34 + 5, &v67) != -1)
                {
                  v35 = v32;
                  do
                  {
                    v36 = v35;
                    v35 = *v35;
                  }

                  while (v35 && !v36[8]);
                  *v81 = 0x2B3FAC222C23CAEDLL;
                  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v36 + 5, v81) != -1)
                  {
                    if (v26 >= v23[8])
                    {
                      goto LABEL_97;
                    }

                    v37 = v19;
                    v19 = v23[19];
                    if (v19 <= v26)
                    {
                      goto LABEL_113;
                    }

                    v38 = (v23[21] + 8 * v26);
                    v39 = *v38;
                    v40 = *(v38 + 2);
                    v41 = v25 == v39 && v29 == v40;
                    v19 = v37;
                    if (!v41 || !re::AttributeTable::operator==((v23[10] + 328 * v26), v32))
                    {
                      goto LABEL_97;
                    }

                    ++v26;
                  }
                }
              }

              if (++v29 == v27)
              {
                goto LABEL_95;
              }
            }

            v66 = 0;
            v68 = 0u;
            memset(v69, 0, sizeof(v69));
            v67 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v81 = 136315906;
            *&v81[4] = "operator[]";
            v82 = 1024;
            v83 = 476;
            v84 = 2048;
            v85 = v29;
            v86 = 2048;
            v87 = v30;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_113:
            v66 = 0;
            v68 = 0u;
            memset(v69, 0, sizeof(v69));
            v67 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v81 = 136315906;
            *&v81[4] = "operator[]";
            v82 = 1024;
            v83 = 797;
            v84 = 2048;
            v85 = v26;
            v86 = 2048;
            v87 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_114:
            v66 = 0;
            v68 = 0u;
            memset(v69, 0, sizeof(v69));
            v67 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v81 = 136315906;
            *&v81[4] = "operator[]";
            v82 = 1024;
            v83 = 476;
            v84 = 2048;
            v85 = v25;
            v86 = 2048;
            v87 = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }
        }

        else
        {
LABEL_97:
          if (!v65)
          {
            v42 = re::RenderManager::perFrameAllocator(*(a1[1] + 232));
            v43 = *(*(a1[1] + 232) + 144);
            v44 = *(v43 + 24) & 0xFFFFFFFFFFFFFFFLL | (*(v43 + 16) << 60);
            re::globalAllocators(v42);
            v45 = (*(*v42 + 32))(v42, 5320, 8);
            v46 = *(a1[1] + 232);
            *v45 = v44;
            *(v45 + 8) = 0;
            *(v45 + 24) = 0;
            *(v45 + 32) = 0u;
            *(v45 + 48) = 0;
            *(v45 + 56) = 0u;
            *(v45 + 72) = 0;
            *(v45 + 76) = 0x1FFFFFFFFLL;
            *(v45 + 88) = 0;
            *(v45 + 104) = 0;
            *(v45 + 112) = 0;
            *(v45 + 96) = 0;
            *(v45 + 120) = 0;
            *(v45 + 5312) = 0;
            bzero((v45 + 128), 0x143CuLL);
            re::PerFrameAllocatorGPUManager::init((v45 + 8), v46);
            v48 = re::globalAllocators(v47)[2];
            *&v67 = &unk_1F5CF65A8;
            *(&v68 + 1) = v48;
            *&v69[0] = &v67;
            v49 = (*(*v42 + 16))(v42, v45, &v67);
            re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v67);
            v50 = (*(*v42 + 32))(v42, 16, 8);
            *v50 = 0;
            v58 = v50;
            v50[1] = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v49 + 8, v44);
            re::mtl::CommandQueue::makeCommandBuffer((*(*(a1[1] + 232) + 112) + 280), &v67);
            v51 = v67;
            *&v67 = 0;
            v65 = v51;

            v52 = @"DeformedDirectMesh Command Buffer";
            [v51 setLabel:@"DeformedDirectMesh Command Buffer"];
          }

          re::ecs2::DeformedDirectMeshComponent::updateMeshAttributeTable(v23, a1[1], v58, v60, v21, &v65);
        }
      }

LABEL_100:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v63);
    }

    while (v63 != a5 || v64 != 0xFFFF || HIWORD(v64) != 0xFFFF);
    v55 = v65;
    if (v65)
    {
      re::DrawingManager::trackCommandBufferForFrameCompletion(*(*(a1[1] + 232) + 112), &v65, *(*(*(a1[1] + 232) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1[1] + 232) + 144) + 16) << 60));
      [v65 enqueue];
      [v65 commit];
      v55 = v65;
    }
  }

  v56 = *(a5 + 40) != 0;

  return v56;
}

uint64_t re::ecs2::DeformedDirectMeshSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v6);
  if (re::DeformerFeatureFlags::enableLowLevelMeshDeformations(v4))
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 264), v7, 0);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v6);
}

_anonymous_namespace_ *re::ecs2::DeformedDirectMeshSystem::willAddSystemToECSService(re::ecs2::DeformedDirectMeshSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  *(this + 64) = this;
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::DRContextService>(v2);
  *(this + 32) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DRContextService>(uint64_t a1)
{
  {
    re::introspect<re::DRContextService>(BOOL)::info = re::introspect_DRContextService(0);
  }

  v2 = re::introspect<re::DRContextService>(BOOL)::info;
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

double re::ecs2::DeformedDirectMeshSystem::willRemoveSystemFromECSService(re::ecs2::DeformedDirectMeshSystem *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

uint64_t re::ecs2::DeformedDirectMeshSystem::willRemoveSceneFromECSService(re::ecs2::DeformedDirectMeshSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 40, &v15);
  if (result != -1)
  {
    v4 = *(this + 41) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 384, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 432, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 264, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 320, &v15);
  }

  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshInstanceAndPartIndex>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AE418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE418))
  {
    re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AE418);
  }

  if ((_MergedGlobals_332 & 1) == 0)
  {
    v0 = re::introspect_MeshInstanceAndPartIndex(1);
    if ((_MergedGlobals_332 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_332 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AE438, 0);
      qword_1EE1AE448 = 0x2800000003;
      dword_1EE1AE450 = v2;
      word_1EE1AE454 = 0;
      *&xmmword_1EE1AE458 = 0;
      *(&xmmword_1EE1AE458 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AE468 = v1;
      qword_1EE1AE470 = 0;
      qword_1EE1AE438 = &unk_1F5CF6658;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AE438, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AE458 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_DeformedDirectMeshComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE408))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE478, "DeformedDirectMeshComponent");
    __cxa_guard_release(&qword_1EE1AE408);
  }

  return &unk_1EE1AE478;
}

void re::ecs2::initInfo_DeformedDirectMeshComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x2172D11DEEFCDA86;
  v16[1] = "DeformedDirectMeshComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AE400, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AE400);
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
      qword_1EE1AE420 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::MeshInstanceAndPartIndex>>::get();
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_deformedMeshPartIndices";
      *(v10 + 16) = &qword_1EE1AE438;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x8800000002;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1AE428 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::IntrospectionInfo<unsigned char [16]>::get(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_payloadIdentifier";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xE800000003;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1AE430 = v14;
      __cxa_guard_release(&qword_1EE1AE400);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AE420;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DeformedDirectMeshComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DeformedDirectMeshComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DeformedDirectMeshComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DeformedDirectMeshComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DeformedDirectMeshComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void *re::ecs2::allocInfo_DeformedDirectMeshSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE410))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE508, "DeformedDirectMeshSystem");
    __cxa_guard_release(&qword_1EE1AE410);
  }

  return &unk_1EE1AE508;
}

void re::ecs2::initInfo_DeformedDirectMeshSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x31B212774FD4EF52;
  v6[1] = "DeformedDirectMeshSystem";
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
  *(this + 8) = &re::ecs2::initInfo_DeformedDirectMeshSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DeformedDirectMeshSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DeformedDirectMeshSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DeformedDirectMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DeformedDirectMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DeformedDirectMeshSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DeformedDirectMeshSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::DeformedDirectMeshSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[72];
  if (v4)
  {

    a3[72] = 0;
  }

  v5 = a3[71];
  if (v5)
  {

    a3[71] = 0;
  }

  v6 = a3[70];
  if (v6)
  {

    a3[70] = 0;
  }

  v7 = a3[69];
  if (v7)
  {

    a3[69] = 0;
  }

  a3[63] = &unk_1F5CF6480;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 33);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DeformedDirectMeshSystem>(uint64_t *a1)
{
  v2 = a1[72];
  if (v2)
  {

    a1[72] = 0;
  }

  v3 = a1[71];
  if (v3)
  {

    a1[71] = 0;
  }

  v4 = a1[70];
  if (v4)
  {

    a1[70] = 0;
  }

  v5 = a1[69];
  if (v5)
  {

    a1[69] = 0;
  }

  a1[63] = &unk_1F5CF6480;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 33);

  re::ecs2::System::~System(a1);
}

void re::ecs2::DeformedDirectMeshSystem::~DeformedDirectMeshSystem(re::ecs2::DeformedDirectMeshSystem *this)
{
  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  v3 = *(this + 71);
  if (v3)
  {

    *(this + 71) = 0;
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  v5 = *(this + 69);
  if (v5)
  {

    *(this + 69) = 0;
  }

  *(this + 63) = &unk_1F5CF6480;
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);

  re::ecs2::System::~System(this);
}

{
  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  v3 = *(this + 71);
  if (v3)
  {

    *(this + 71) = 0;
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  v5 = *(this + 69);
  if (v5)
  {

    *(this + 69) = 0;
  }

  *(this + 63) = &unk_1F5CF6480;
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 33);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::ecs2::DeformedDirectMeshComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent> *,re::ecs2::ComponentBuckets<re::ecs2::MeshDeformationComponent>::BucketIteration,void *)::$_0,void ()(void *)>::operator()(uint64_t a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = (*a2 + 1);
  re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(v3, **a2);
  re::PerFrameAllocatorGPUManager::deinit(v3);
  re::DynamicArray<unsigned long>::deinit((v2 + 660));
  v4 = v2 + 653;
  v5 = -5120;
  do
  {
    *v4 = 0;
    v4 -= 5;
    v5 += 40;
  }

  while (v5);
  re::DynamicArray<re::RigComponentConstraint>::deinit((v2 + 12));
  re::DataArray<re::PerFrameAllocatorGPU>::deinit((v2 + 3));

  return re::DynamicArray<unsigned long>::deinit((v2 + 3));
}

void *re::internal::Callable<re::ecs2::DeformedDirectMeshComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent> *,re::ecs2::ComponentBuckets<re::ecs2::MeshDeformationComponent>::BucketIteration,void *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF65A8;
  return result;
}

void *re::internal::Callable<re::ecs2::DeformedDirectMeshComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent> *,re::ecs2::ComponentBuckets<re::ecs2::MeshDeformationComponent>::BucketIteration,void *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF65A8;
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorGPU>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::PerFrameAllocatorGPU>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::PerFrameAllocatorGPU>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::PerFrameAllocatorGPU>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorGPU>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::PerFrameAllocatorGPU>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = re::DynamicArray<unsigned long>::deinit(result + 32);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorGPU>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 112 * a2;
  }

  else
  {
    return 0;
  }
}

void re::AttributeTable::~AttributeTable(re::AttributeTable *this)
{
  re::BufferTable::deinit((this + 40));
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
  *this = 0;
  *(this + 1) = 0;
  re::BufferTable::~BufferTable((this + 40));
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
}

re *re::internal::destroyPersistent<re::ecs2::CombinedDeformedRenderMeshParts>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::AssetHandle::~AssetHandle((v1 + 64));
    re::FixedArray<CoreIKTransform>::deinit((v1 + 40));
    re::DynamicArray<unsigned long>::deinit(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::CombinedDeformedRenderMeshParts*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF6600;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::CombinedDeformedRenderMeshParts,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::CombinedDeformedRenderMeshParts*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF6600;
  return result;
}

void *re::DynamicArray<re::AttributeTable>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AttributeTable>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x148uLL))
        {
          v2 = 328 * a2;
          result = (*(*result + 32))(result, 328 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 328, a2);
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
        v10 = (v8 + 328 * v9);
        v11 = (v7 + 5);
        do
        {
          *(v11 - 40) = *v8;
          *(v11 - 16) = 0;
          *(v11 - 8) = 0;
          *(v11 - 24) = 0;
          v12 = *(v8 + 3);
          *(v11 - 24) = *(v8 + 2);
          *(v11 - 16) = v12;
          *(v8 + 2) = 0;
          *(v8 + 3) = 0;
          v13 = *(v11 - 8);
          *(v11 - 8) = *(v8 + 4);
          *(v8 + 4) = v13;
          re::BufferTable::BufferTable(v11, v8 + 40);
          re::AttributeTable::~AttributeTable(v8);
          v8 = (v8 + 328);
          v11 += 328;
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

uint64_t re::BufferTable::BufferTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1, a2);
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v5 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v5;
  v6 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  ++*(a2 + 88);
  ++*(a1 + 88);
  *(a1 + 136) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  v7 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v7;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v8;
  v9 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v9;
  ++*(a2 + 128);
  ++*(a1 + 128);
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(a1 + 144, a2 + 144);
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  v10 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v10;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v11 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v11;
  v12 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = v12;
  ++*(a2 + 224);
  ++*(a1 + 224);
  *(a1 + 272) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  v13 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v13;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v14 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = v14;
  v15 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v15;
  ++*(a2 + 264);
  ++*(a1 + 264);
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

re::AttributeTable *re::AttributeTable::AttributeTable(re::AttributeTable *this, const re::AttributeTable *a2)
{
  *this = *a2;
  re::FixedArray<re::VertexBufferFormat>::FixedArray(this + 2, a2 + 16);
  *(this + 116) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 50) = 1;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 58) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 30) = 0;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 0;
  re::BufferTable::operator=(this + 40, a2 + 40);
  return this;
}

void *re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 4);
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
            memcpy(v7, v5[4], 8 * v5[2]);
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
        result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::AttributeTable const*,unsigned long,re::Hash<re::AttributeTable const*>,re::EqualTo<re::AttributeTable const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::AttributeTable const*,unsigned long,re::Hash<re::AttributeTable const*>,re::EqualTo<re::AttributeTable const*>,true,false>::allocEntry(a1, *(v13 + v17 + 24) % *(a1 + 24));
                *(v19 + 8) = *(*&v26[16] + v17 + 8);
                v13 = *&v26[16];
                *(v19 + 16) = *(*&v26[16] + v17 + 16);
                v16 = *&v26[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void **re::DynamicArray<re::MeshInstanceAndPartIndex>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5 - 2);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4 - 2);
  }

  v3[2] = v4;
  return result;
}

void *re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 8 * a2);

    return memmove(v4, a3, 8 * a4);
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AE438, 0);
  *(&qword_1EE1AE448 + 6) = 0;
  qword_1EE1AE448 = 0;
  *&xmmword_1EE1AE458 = 0;
  *(&xmmword_1EE1AE458 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AE438 = &unk_1F5CADA48;
  qword_1EE1AE470 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AE468);
  qword_1EE1AE438 = &unk_1F5CF6658;
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshInstanceAndPartIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v10 = 0xFFFFFFFFFFFFLL;
  re::DynamicArray<re::MeshInstanceAndPartIndex>::add(a4, &v10);
  v8 = (*(a4 + 4) + 8 * *(a4 + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::MeshInstanceAndPartIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void *re::DynamicArray<re::MeshInstanceAndPartIndex>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 8 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = -1;
        *(v6 + 4) = -1;
        v6 += 8;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshInstanceAndPartIndex>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::MeshInstanceAndPartIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}