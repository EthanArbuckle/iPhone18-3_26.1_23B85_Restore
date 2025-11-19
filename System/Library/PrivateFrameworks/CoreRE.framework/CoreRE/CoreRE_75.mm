BOOL re::objectIsBlendShapeRoot(re *this, MDLObject *a2)
{
  v2 = this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [(re *)v2 name];

  if (!v4)
  {
    v4 = &stru_1F5D319D0;
  }

  if (isKindOfClass)
  {
    v5 = [(__CFString *)v4 UTF8String];
    IsBlendShapeRoot = re::nameIsBlendShapeRoot(v5, v6);
  }

  else
  {
    IsBlendShapeRoot = 0;
  }

  return IsBlendShapeRoot;
}

BOOL re::uskNodeIsBlendShapeRoot(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = *MEMORY[0x1E69DEE70];

  v4 = [v1 name];

  v5 = [v4 stringValue];

  if (!v5)
  {
    v5 = &stru_1F5D319D0;
  }

  if (v2 == v3)
  {
    v7 = [(__CFString *)v5 UTF8String];
    IsBlendShapeRoot = re::nameIsBlendShapeRoot(v7, v8);
  }

  else
  {
    IsBlendShapeRoot = 0;
  }

  return IsBlendShapeRoot;
}

void *re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
            memcpy(v7, v5[4], 56 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::BaseBlendShapeChannelData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::TextureCompatibility::updateLegacyTextureSemantic(re::TextureCompatibility *this, const re::AssetHandle *a2, os_unfair_lock_s *a3, const re::AssetManager *a4, const re::ImportGraphicsContext *a5, const re::RenderManager *a6, BOOL *a7, BOOL *a8)
{
  *a7 = 0;
  *a6 = 0;
  if (!*(this + 1))
  {
    return;
  }

  if (re::AssetManager::isDeviceAsset(a3, this, 15))
  {
    return;
  }

  if (!re::MaterialAsset::isColorTextureParameter(a2, v14))
  {
    return;
  }

  v15 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(this);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  isLegacyLinearFormatWithSRGBData = re::TextureAsset::isLegacyLinearFormatWithSRGBData(v15);
  v18 = isLegacyLinearFormatWithSRGBData;
  v19 = *(v16 + 344);
  if (isLegacyLinearFormatWithSRGBData)
  {
    v19 = re::translateLinearPixelFormatToSRGB(*(v16 + 344));
  }

  v20 = *(v16 + 356);
  if (v20 == 6)
  {
    goto LABEL_10;
  }

  if (v20 != 3)
  {
    if (v20)
    {
      return;
    }

LABEL_10:
    if (re::StringID::operator==(a2, re::MaterialAsset::isHdrColorTextureParameter(re::StringID const&)::textureEmissive))
    {
      v21 = 4;
    }

    else
    {
      v21 = 3;
    }

    *(v16 + 356) = v21;
  }

  v22 = *(v16 + 376);
  if (v22)
  {
    v23 = v22 >> 1;
  }

  else
  {
    v23 = v22 >> 1;
  }

  if (!v23)
  {
    CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v19, 0);
    if (CGColorSpaceNameForPixelFormat)
    {
      re::TextureAsset::setColorSpace(v16, CGColorSpaceNameForPixelFormat);
    }
  }

  if (*(v16 + 120))
  {
    v25 = *(v16 + 176);

    v26 = v25;
  }

  else
  {
    v27 = *(v16 + 112);
    v28 = *(v16 + 176);
    if (v27)
    {
      LOBYTE(v38) = 0;
      if (v28 && re::ColorHelpers::getColorGamutFromCGColorSpaceName(v28, &v38))
      {
        v29 = *(a4 + 19) ? *(a4 + 20) : 0;
        if (v38 != v29)
        {
          *a6 = 1;
        }
      }

      if (v18)
      {
        [v27 textureType];
        isSupportedPixelFormat = re::isSupportedPixelFormat();
        if (([v27 isShareable] & 1) == 0 && isSupportedPixelFormat && (v31 = objc_msgSend(v27, sel_newTextureViewWithPixelFormat_, v19)) != 0)
        {
          v32 = v31;
          v38 = v31;
          v39 = 0;
          v37 = *(v16 + 360);
          v33 = *(v16 + 176);
          v34 = v33;
          v35 = *(v16 + 320);
          v36[0] = *(v16 + 336);
          v36[1] = v35;
          re::TextureAsset::setTexture(v16, a4, &v38, (v16 + 356), &v37, v33, v36);
          if (v39 != -1)
          {
            (off_1F5CD0130[v39])(v36, &v38);
          }
        }

        else
        {
          *a7 = 1;
          if ((*a6 & 1) == 0)
          {
            re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(v16, a5);
          }
        }
      }
    }
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>(re::ImageBasedLightAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::ImageBasedLightAsset::assetType(a1);
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

uint64_t re::TextureCompatibility::postProcessLoadedIBLAsset(re::TextureCompatibility *this, re::ImageBasedLightAsset *a2, const re::ImportGraphicsContext *a3)
{
  v4 = this;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v5 = *(this + 13);
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6)
  {
    if (v5)
    {
      v7 = *(this + 14);
    }

    else
    {
      v7 = this + 105;
    }

    v8 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v7, 0x8000100u, *MEMORY[0x1E695E498]);
    re::ColorHelpers::getColorGamutFromCGColorSpaceName(v8, &v26);
    CFRelease(v8);
    v9 = v26;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 19))
  {
    v10 = *(a2 + 20);
  }

  else
  {
    v10 = 0;
  }

  if (v9 == v10)
  {
    return 1;
  }

  if (*(v4 + 1))
  {
    this = re::TextureCompatibility::convertTextureAssetColorSpace(v4, a2, 4, 1, 0);
    v11 = this;
  }

  else
  {
    v11 = 1;
  }

  if (*(v4 + 4))
  {
    v12 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 24), a2, 4, 1, 0);
    v11 &= v12;
  }

  else
  {
    v13 = *re::assetsLogObjects(this);
    v12 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no diffuseTexture", buf, 2u);
    }
  }

  if (!*(v4 + 10))
  {
    v17 = *re::assetsLogObjects(v12);
    v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no specularTexture", buf, 2u);
    }

    goto LABEL_25;
  }

  v14 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 72), a2, 4, 1, 0);
  v15 = 0;
  if (v14)
  {
    v16 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v4 + 72));
    v14 = re::DynamicString::operator=((v4 + 96), (v16 + 368));
LABEL_25:
    v15 = v11;
  }

  if (*(v4 + 7))
  {
    v18 = re::TextureCompatibility::convertTextureAssetColorSpace((v4 + 48), a2, 4, 1, 0);
    if (v15 & v18)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v19 = *re::assetsLogObjects(v14);
  v18 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Invalid ImageBasedLight asset: no sssDiffuseTexture", buf, 2u);
  }

  if ((v15 & 1) == 0)
  {
LABEL_32:
    v20 = *re::assetsLogObjects(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = re::ColorHelpers::getColorGamutSerializationLiteral(re::ColorGamut const&)::kGamutToLiterals[v9];
      if (*(a2 + 19))
      {
        v23 = *(a2 + 20);
      }

      else
      {
        v23 = 0;
      }

      v24 = re::ColorHelpers::getColorGamutSerializationLiteral(re::ColorGamut const&)::kGamutToLiterals[v23];
      *buf = 136315394;
      v28 = v22;
      v29 = 2080;
      v30 = v24;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Failed to convert ImageBasedLight asset gamut from %s to %s", buf, 0x16u);
    }
  }

  return 1;
}

uint64_t re::TextureCompatibility::convertTextureAssetColorSpace(re::TextureAsset *a1, uint64_t a2, int a3, int a4, int a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(a1);
  if (!v11 || (v12 = v11, !re::TextureData::isValid((v11 + 112))))
  {
    v17 = 0;
LABEL_151:
    objc_autoreleasePoolPop(v10);
    return v17;
  }

  LOBYTE(v87) = 0;
  v88 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v87, v12 + 112);
  v89 = *(v12 + 128);
  v90[0] = *(v12 + 136);
  *(v90 + 12) = *(v12 + 148);
  v13 = *(v12 + 168);
  v91 = v13;
  if (v13)
  {
    v14 = (v13 + 8);
  }

  v92 = *(v12 + 176);
  v15 = re::DynamicArray<short>::DynamicArray(v93, (v12 + 184));
  v96 = *(v12 + 224);
  v79 = 0;
  v80 = 0;
  v81 &= 0xFC00u;
  memset(v82, 0, 24);
  v83 = 0u;
  memset(v84, 0, 28);
  v86 = 0;
  v85 = 0;
  if (a4)
  {
    memset(buf, 0, 12);
    v99 &= 0xFC00u;
    memset(v100, 0, 24);
    v101 = 0uLL;
    memset(v102, 0, 28);
    v103 = 0;
    v104 = 0;
    if (v88)
    {
      goto LABEL_7;
    }

    re::TextureHandle::unsynchronizedMetalTexture((v12 + 96), &v78);
    v22 = v78;
    if (v78)
    {
      goto LABEL_40;
    }

    if (a5)
    {
      if (v88)
      {
        goto LABEL_152;
      }

      re::TextureAsset::createTextureSRGBAdaptor(a2, &v87, 0, &v58);
    }

    else
    {
      re::TextureHandle::unsynchronizedMetalTexture((v12 + 8), &v58);
    }

    NS::SharedPtr<MTL::Texture>::operator=(&v78, &v58);
    if (v58)
    {
    }

    v22 = v78;
    if (v78)
    {
LABEL_40:
      if (v88)
      {
        goto LABEL_152;
      }

      v16 = &v87;
      if (v22 == v87)
      {
        goto LABEL_53;
      }

      v72[0] = v22;
      LODWORD(v72[1]) = 0;
      re::TextureImportData::TextureImportData(&v58, v72, &v89);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(buf, &v58);
      v99 = v60;
      *v100 = *v61;
      *&v100[12] = *&v61[12];
      v27 = *(&v101 + 1);
      v28 = v62;
      v62 = v101;
      v101 = v28;

      re::DynamicArray<short>::operator=(v102, &v63);
      v104 = v68;
      if (v63)
      {
        if (v67)
        {
          (*(*v63 + 40))();
        }

        v67 = 0;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        LODWORD(v66) = v66 + 1;
      }

      if (v62)
      {

        *&v62 = 0;
      }

      if (v59 != -1)
      {
        (off_1F5CD0130[v59])(&v97, &v58);
      }

      v59 = -1;
      if (LODWORD(v72[1]) != -1)
      {
        (off_1F5CD0130[LODWORD(v72[1])])(&v97, v72);
      }

      v22 = v78;
      v16 = buf;
      if (v78)
      {
LABEL_53:
      }
    }

    else
    {
LABEL_7:
      v16 = &v87;
    }

    if (!v16[8])
    {
      re::TextureImportData::setColorSpace(v16, *MEMORY[0x1E695F108]);
    }

    v29 = *(a2 + 20);
    if (!*(a2 + 19))
    {
      v29 = 0;
    }

    re::convertTextureColorSpace(v29, v16, &v58);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v79, &v58);
    v81 = v60;
    *v82 = *v61;
    *&v82[12] = *&v61[12];
    v30 = *(&v83 + 1);
    v31 = v62;
    v62 = v83;
    v83 = v31;

    re::DynamicArray<short>::operator=(v84, &v63);
    v86 = v68;
    if (v63)
    {
      if (v67)
      {
        (*(*v63 + 40))();
      }

      v67 = 0;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      LODWORD(v66) = v66 + 1;
    }

    if (v62)
    {

      *&v62 = 0;
    }

    if (v59 != -1)
    {
      (off_1F5CD0130[v59])(v72, &v58);
    }

    v32 = *(v12 + 168);
    if (v32)
    {

      *(v12 + 168) = 0;
    }

    if (*v102)
    {
      if (v103)
      {
        (*(**v102 + 40))();
      }

      v103 = 0;
      memset(v102, 0, 24);
      ++*&v102[24];
    }

    if (v101)
    {

      *&v101 = 0;
    }

    if (*&buf[8] != -1)
    {
      (off_1F5CD0130[*&buf[8]])(&v58, buf);
    }
  }

  else if (a5)
  {
    if (v88)
    {
      v18 = *re::assetsLogObjects(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = re::AssetHandle::assetInfo(a1);
        if (v20[17])
        {
          v21 = v20[18];
        }

        else
        {
          v21 = v20 + 137;
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Texture %s conversion to sRGB transfer is not supported without Metal.", buf, 0xCu);
      }
    }

    else
    {
      re::TextureAsset::createTextureSRGBAdaptor(a2, &v87, 1, v72);
      v58 = v72[0];
      v59 = 0;
      buf[0] = 0;
      *&buf[8] = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(buf, &v58);
      v99 = v89;
      *v100 = v90[0];
      *&v100[12] = *(v90 + 12);
      *&v101 = v91;
      if (v91)
      {
        v23 = (v91 + 8);
      }

      *(&v101 + 1) = v92;
      re::DynamicArray<short>::DynamicArray(v102, v93);
      v104 = v96;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v79, buf);
      v81 = v99;
      *v82 = *v100;
      *&v82[12] = *&v100[12];
      v24 = *(&v83 + 1);
      v25 = v101;
      v101 = v83;
      v83 = v25;

      re::DynamicArray<short>::operator=(v84, v102);
      v86 = v104;
      if (*v102)
      {
        if (v103)
        {
          (*(**v102 + 40))(*v102);
        }

        v103 = 0;
        memset(v102, 0, 24);
        ++*&v102[24];
      }

      if (v101)
      {

        *&v101 = 0;
      }

      if (*&buf[8] != -1)
      {
        (off_1F5CD0130[*&buf[8]])(&v78, buf);
      }

      *&buf[8] = -1;
      if (v59 != -1)
      {
        (off_1F5CD0130[v59])(&v78, &v58);
      }

      v59 = -1;
      if (v72[0])
      {
      }
    }

    v26 = *(v12 + 168);
    if (v26)
    {

      *(v12 + 168) = 0;
    }
  }

  if (!v80)
  {
    v33 = &v79;
    goto LABEL_81;
  }

  if (v80 == 1)
  {
    if (!*(v79 + 48))
    {
      goto LABEL_101;
    }

    v33 = (v79 + 24);
LABEL_81:
    if (*v33)
    {
      re::TextureAssetLoader::getOrCreateImportOptions(a1, v72);
      v73 = a3;
      re::TextureAssetData::TextureAssetData(buf);
      v34 = *(*(a1 + 1) + 264);
      if (v34)
      {
        v50 = v81;
        v51[0] = *v82;
        *(v51 + 12) = *&v82[12];
        v52 = v83;
        if (v83)
        {
          v35 = (v83 + 8);
        }

        v53 = *(&v83 + 1);
        re::DynamicArray<short>::DynamicArray(v54, v84);
        v57 = v86;
        re::TextureAssetLoader::createTextureAssetDataWithOptionsOverride(&v79, &v50, v34, v72, &v58);
        re::TextureAssetData::operator=(buf, &v58);
        v58 = &unk_1F5CC40A0;
        if (v71)
        {

          v71 = 0;
        }

        if (v66)
        {
          if (v70)
          {
            (*(*v66 + 40))();
          }

          v70 = 0;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          ++v69;
        }

        if (v64)
        {

          v64 = 0;
        }

        if (*&v61[8] != -1)
        {
          (off_1F5CD0130[*&v61[8]])(&v78, v61);
        }

        *&v61[8] = -1;
        v58 = &unk_1F5CCF868;
        objc_destructInstance(&v59);
        if (v54[0])
        {
          if (v56)
          {
            (*(*v54[0] + 40))();
          }

          v56 = 0;
          memset(v54, 0, sizeof(v54));
          ++v55;
        }

        if (v52)
        {

          v52 = 0;
        }
      }

      else
      {
        v42 = v81;
        v43[0] = *v82;
        *(v43 + 12) = *&v82[12];
        v44 = v83;
        if (v83)
        {
          v37 = (v83 + 8);
        }

        v45 = *(&v83 + 1);
        re::DynamicArray<short>::DynamicArray(v46, v84);
        v49 = v86;
        re::TextureAssetLoader::createTextureAssetData(&v79, &v42, v72, &v58);
        re::TextureAssetData::operator=(buf, &v58);
        v58 = &unk_1F5CC40A0;
        if (v71)
        {

          v71 = 0;
        }

        if (v66)
        {
          if (v70)
          {
            (*(*v66 + 40))();
          }

          v70 = 0;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          ++v69;
        }

        if (v64)
        {

          v64 = 0;
        }

        if (*&v61[8] != -1)
        {
          (off_1F5CD0130[*&v61[8]])(&v78, v61);
        }

        *&v61[8] = -1;
        v58 = &unk_1F5CCF868;
        objc_destructInstance(&v59);
        if (v46[0])
        {
          if (v48)
          {
            (*(*v46[0] + 40))();
          }

          v48 = 0;
          memset(v46, 0, sizeof(v46));
          ++v47;
        }

        if (v44)
        {

          v44 = 0;
        }
      }

      re::TextureAsset::setTexture_makeMutable(a2, a1, buf, v36);
      *buf = &unk_1F5CC40A0;
      if (v107)
      {

        v107 = 0;
      }

      if (*&v102[24])
      {
        if (v106)
        {
          (*(**&v102[24] + 40))();
        }

        v106 = 0;
        v103 = 0;
        v104 = 0;
        *&v102[24] = 0;
        ++v105;
      }

      if (*&v102[8])
      {

        *&v102[8] = 0;
      }

      if (*&v100[8] != -1)
      {
        (off_1F5CD0130[*&v100[8]])(&v58, v100);
      }

      *&v100[8] = -1;
      *buf = &unk_1F5CCF868;
      objc_destructInstance(&buf[8]);
      if (v75)
      {
        if (v76)
        {
          (*(*v75 + 40))();
          v76 = 0;
          v77 = 0;
        }

        v75 = 0;
      }

      v17 = 1;
      goto LABEL_135;
    }

LABEL_101:
    v17 = 0;
LABEL_135:
    if (v84[0])
    {
      if (v85)
      {
        (*(*v84[0] + 40))();
      }

      v85 = 0;
      memset(v84, 0, 24);
      ++LODWORD(v84[3]);
    }

    if (v83)
    {

      *&v83 = 0;
    }

    if (v80 != -1)
    {
      (off_1F5CD0130[v80])(buf, &v79);
    }

    if (v93[0])
    {
      if (v95)
      {
        (*(*v93[0] + 40))();
      }

      v95 = 0;
      memset(v93, 0, sizeof(v93));
      ++v94;
    }

    if (v91)
    {

      v91 = 0;
    }

    if (v88 != -1)
    {
      (off_1F5CD0130[v88])(buf, &v87);
    }

    goto LABEL_151;
  }

LABEL_152:
  v39 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureImportData::TextureImportData(v39, v40, v41);
}

uint64_t re::TextureImportData::TextureImportData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  *(a1 + 16) = *a3;
  v5 = *(a3 + 8);
  *(a1 + 36) = *(a3 + 20);
  *(a1 + 24) = v5;
  v6 = *(a3 + 40);
  *(a1 + 56) = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  *(a1 + 64) = *(a3 + 48);
  re::DynamicArray<short>::DynamicArray(a1 + 72, (a3 + 56));
  *(a1 + 112) = *(a3 + 96);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  *(a1 + 16) = *a3;
  v5 = *(a3 + 8);
  *(a1 + 36) = *(a3 + 20);
  *(a1 + 24) = v5;
  *(a1 + 56) = *(a3 + 40);
  v6 = *(a3 + 48);
  *(a3 + 40) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  v7 = *(a3 + 64);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 80) = v7;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v8 = *(a1 + 88);
  *(a1 + 88) = *(a3 + 72);
  *(a3 + 72) = v8;
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a3 + 88);
  *(a3 + 88) = v9;
  ++*(a3 + 80);
  ++*(a1 + 96);
  *(a1 + 112) = *(a3 + 96);
  return a1;
}

void re::TextureImportData::setColorSpace(id *this, __CFString *a2)
{
  objc_storeStrong(this + 8, a2);
}

void re::TextureCompatibility::postProcessLoadedTextures(re::TextureCompatibility *this, os_unfair_lock_s *a2, const re::AssetManager *a3, const re::RenderManager *a4)
{
  v106 = a4;
  v150 = *MEMORY[0x1E69E9840];
  re::ImportGraphicsContext::createFromRenderManager(a3, v132);
  v131 = 0;
  v128[1] = 0;
  v129 = 0;
  v128[0] = 0;
  v130 = 0;
  LODWORD(v148) = 0;
  buf = 0u;
  v147 = 0u;
  *(&v148 + 4) = 0x7FFFFFFFLL;
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v137 = 0x7FFFFFFFLL;
  v104 = this;
  v7 = re::ecs2::SceneComponentTable::get((this + 200), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v108 = 0;
      v112 = 0;
      v113 = 0;
      v109 = 0;
      v117 = 0;
      v115 = 0;
      v110 = 0;
      v9 = 0;
      v10 = *(v7 + 400);
      v105 = &v10[v8];
      while (1)
      {
        v107 = v10;
        v11 = *v10;
        v12 = *(v11 + 72);
        if (v12)
        {
          break;
        }

LABEL_78:
        v10 = v107 + 1;
        if (v107 + 1 == v105)
        {
          goto LABEL_79;
        }
      }

      v13 = *(v11 + 88);
      v14 = (v13 + 24 * v12);
      v111 = v14;
      while (1)
      {
        re::AssetHandle::AssetHandle(v119, v13);
        if (!v119[1])
        {
          goto LABEL_72;
        }

        v15 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v119);
        if (!v15)
        {
          goto LABEL_72;
        }

        v16 = v15;
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
        v18 = v17 ^ (v17 >> 31);
        if (v9)
        {
          v19 = v18 % v9;
          v20 = *(v113 + 4 * v19);
          if (v20 != 0x7FFFFFFF)
          {
            for (i = *(v110 + 24 * v20 + 16); i != v15; i = *(v110 + 24 * v36 + 16))
            {
              v36 = *(v110 + 24 * *(v113 + 4 * v19) + 8) & 0x7FFFFFFF;
              if (v36 == 0x7FFFFFFF)
              {
                v19 = v19;
                while (1)
                {
                  LODWORD(v20) = *(v110 + 24 * v20 + 8) & 0x7FFFFFFF;
                  if (v20 == 0x7FFFFFFF)
                  {
                    goto LABEL_12;
                  }

                  if (*(v110 + 24 * v20 + 16) == v15)
                  {
                    v114 = v9;
                    goto LABEL_18;
                  }
                }
              }
            }

            goto LABEL_71;
          }

          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

LABEL_12:
        v21 = DWORD1(v148);
        if (DWORD1(v148) == 0x7FFFFFFF)
        {
          v22 = v117;
          if (v117 == v9)
          {
            re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(&buf, 2 * v109);
            v9 = DWORD2(v147);
            v22 = v148;
            v19 = v18 % DWORD2(v147);
            v115 = v147;
            v108 = *(&buf + 1);
          }

          v23 = v22 + 1;
          LODWORD(v148) = v23;
          v24 = v117;
          v21 = v117;
          v25 = v115;
          v26 = *(v115 + 24 * v117 + 8);
          v27 = v108;
        }

        else
        {
          v25 = v115;
          v26 = *(v115 + 24 * DWORD1(v148) + 8);
          DWORD1(v148) = v26 & 0x7FFFFFFF;
          v23 = v117;
          v24 = v21;
          v27 = v112;
        }

        v114 = v9;
        v28 = 3 * v21;
        *(v25 + 8 * v28 + 8) = v26 | 0x80000000;
        v29 = v147;
        v30 = v147 + 8 * v28;
        *(v30 + 8) = *(v30 + 8) & 0x80000000 | *(v27 + 4 * v19);
        *v30 = v18;
        *(v30 + 16) = v16;
        *(v27 + 4 * v19) = v24;
        v109 = ++HIDWORD(v147);
        ++DWORD2(v148);
        v117 = v23;
        v115 = v29;
        v110 = v29;
        v112 = v27;
        v113 = v27;
LABEL_18:
        v31 = *(v16 + 192);
        if (v31)
        {
          v32 = 0;
          v33 = *(v16 + 176);
          while (1)
          {
            v34 = *v33;
            v33 += 22;
            if (v34 < 0)
            {
              break;
            }

            if (v31 == ++v32)
            {
              LODWORD(v32) = *(v16 + 192);
              break;
            }
          }
        }

        else
        {
          LODWORD(v32) = 0;
        }

        v37 = *(v16 + 192);
LABEL_29:
        while (v32 != v31)
        {
          v38 = *(v16 + 176);
          v39 = v38 + 88 * v32;
          if (*(v39 + 72) == 1)
          {
            v134[0] = 0;
            v133[0] = 0;
            re::StringID::StringID(&v139, (v38 + 88 * v32 + 8));
            re::TextureCompatibility::updateLegacyTextureSemantic((v39 + 40), &v139, a2, v132, a3, v134, v133, v40);
            if (v139)
            {
              if (v139)
              {
              }
            }

            v42 = v134[0];
            if ((v134[0] & 1) != 0 || v133[0] == 1)
            {
              v138[0] = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v39 + 40));
              if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138[0]))
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, v138);
                v140 = 0;
                v139 = 0;
                v141 = 0;
                re::AssetHandle::operator=(&v139, (v39 + 40));
                v142 = v42;
                v143 = v133[0];
                re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                re::AssetHandle::~AssetHandle(&v139);
              }
            }

            v37 = *(v16 + 192);
          }

          if (v37 <= v32 + 1)
          {
            v43 = v32 + 1;
          }

          else
          {
            v43 = v37;
          }

          while (v43 - 1 != v32)
          {
            LODWORD(v32) = v32 + 1;
            if ((*(*(v16 + 176) + 88 * v32) & 0x80000000) != 0)
            {
              goto LABEL_29;
            }
          }

          LODWORD(v32) = v43;
        }

        v44 = *(v16 + 240);
        if (v44)
        {
          v45 = 0;
          v46 = *(v16 + 224);
          while (1)
          {
            v47 = *v46;
            v46 += 40;
            if (v47 < 0)
            {
              break;
            }

            if (v44 == ++v45)
            {
              LODWORD(v45) = *(v16 + 240);
              break;
            }
          }
        }

        else
        {
          LODWORD(v45) = 0;
        }

        v48 = *(v16 + 240);
LABEL_53:
        while (v45 != v44)
        {
          v49 = *(v16 + 224);
          v50 = v49 + 160 * v45;
          if (*(v50 + 72) == 1)
          {
            v134[0] = 0;
            v133[0] = 0;
            re::StringID::StringID(&v139, (v49 + 160 * v45 + 8));
            re::TextureCompatibility::updateLegacyTextureSemantic((v50 + 40), &v139, a2, v132, a3, v134, v133, v51);
            if (v139)
            {
              if (v139)
              {
              }
            }

            v53 = v134[0];
            if ((v134[0] & 1) != 0 || v133[0] == 1)
            {
              v138[0] = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v50 + 40));
              if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138[0]))
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, v138);
                v140 = 0;
                v139 = 0;
                v141 = 0;
                re::AssetHandle::operator=(&v139, (v50 + 40));
                v142 = v53;
                v143 = v133[0];
                re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                re::AssetHandle::~AssetHandle(&v139);
              }
            }

            v48 = *(v16 + 240);
          }

          if (v48 <= v45 + 1)
          {
            v54 = v45 + 1;
          }

          else
          {
            v54 = v48;
          }

          while (v54 - 1 != v45)
          {
            LODWORD(v45) = v45 + 1;
            if ((*(*(v16 + 224) + 160 * v45) & 0x80000000) != 0)
            {
              goto LABEL_53;
            }
          }

          LODWORD(v45) = v54;
        }

        v9 = v114;
LABEL_71:
        v14 = v111;
LABEL_72:
        re::AssetHandle::~AssetHandle(v119);
        v13 = (v13 + 24);
        if (v13 == v14)
        {
          goto LABEL_78;
        }
      }
    }
  }

LABEL_79:
  v55 = re::ecs2::SceneComponentTable::get((v104 + 200), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v55)
  {
    v56 = *(v55 + 384);
    if (v56)
    {
      v57 = *(v55 + 400);
      v118 = &v57[v56];
      do
      {
        v58 = *v57;
        re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(*v57);
        v59 = *(v58 + 6);
        if (v59)
        {
          v60 = *(v58 + 8);
          v61 = &v60[4 * v59];
          do
          {
            v62 = *v60;
            if (!*v60)
            {
              v62 = v60[1];
            }

            v63 = *(v62 + 336);
            if (v63)
            {
              v64 = 0;
              v65 = *(v62 + 320);
              while ((*v65 & 0x80000000) == 0)
              {
                v65 += 80;
                if (v63 == ++v64)
                {
                  LODWORD(v64) = *(v62 + 336);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v64) = 0;
            }

            v66 = *(v62 + 336);
LABEL_93:
            while (v64 != v63)
            {
              v67 = *(v62 + 320);
              v68 = v67 + 320 * v64;
              v70 = *(v68 + 32);
              v69 = v68 + 32;
              if (v70 == 64)
              {
                v71 = v67 + 320 * v64;
                re::AssetHandle::AssetHandle(v119, (v69 + 80));
                v134[0] = 0;
                v133[0] = 0;
                re::TextureCompatibility::updateLegacyTextureSemantic(v119, (v71 + 8), a2, v132, a3, v134, v133, v72);
                v73 = v134[0];
                if ((v134[0] & 1) != 0 || v133[0] == 1)
                {
                  v138[0] = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v119);
                  if (!re::HashSetBase<re::internal::AssetEntry *,re::internal::AssetEntry *,re::internal::ValueAsKey<re::internal::AssetEntry *>,re::Hash<re::internal::AssetEntry *>,re::EqualTo<re::internal::AssetEntry *>,true,false>::contains(v135, v138[0]))
                  {
                    re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(v135, v138);
                    v140 = 0;
                    v139 = 0;
                    v141 = 0;
                    re::AssetHandle::operator=(&v139, v119);
                    v142 = v73;
                    v143 = v133[0];
                    re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(v128, &v139);
                    re::AssetHandle::~AssetHandle(&v139);
                  }
                }

                re::AssetHandle::~AssetHandle(v119);
                v66 = *(v62 + 336);
              }

              if (v66 <= v64 + 1)
              {
                v74 = v64 + 1;
              }

              else
              {
                v74 = v66;
              }

              while (v74 - 1 != v64)
              {
                LODWORD(v64) = v64 + 1;
                if ((*(*(v62 + 320) + 320 * v64) & 0x80000000) != 0)
                {
                  goto LABEL_93;
                }
              }

              LODWORD(v64) = v74;
            }

            v60 += 4;
          }

          while (v60 != v61);
        }

        ++v57;
      }

      while (v57 != v118);
    }
  }

  v75 = re::ecs2::SceneComponentTable::get((v104 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v75)
  {
    v76 = *(v75 + 384);
    if (v76)
    {
      v77 = *(v75 + 400);
      v78 = 8 * v76;
      do
      {
        v79 = *v77;
        if (*(*v77 + 96))
        {
          v80 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>((v79 + 11));
          re::TextureCompatibility::postProcessLoadedIBLAsset(v80, v132, v81);
        }

        if (v79[15])
        {
          v82 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>((v79 + 14));
          re::TextureCompatibility::postProcessLoadedIBLAsset(v82, v132, v83);
        }

        v77 += 8;
        v78 -= 8;
      }

      while (v78);
    }
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v135);
  v84.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&buf);
  v116 = v129;
  if (v129)
  {
    v85 = v131;
    v86 = (v131 + 32 * v129);
    v87 = v131;
    do
    {
      re::AssetHandle::AssetHandle(&buf, v87);
      WORD4(v147) = *(v87 + 12);
      v88 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&buf);
      re::TextureHandle::unsafeReleaseMetalTextures((v88 + 8));
      if (BYTE8(v147) != 1 || (BYTE9(v147) & 1) == 0)
      {
        re::TextureHandle::unsafeReleaseMetalTextures((v88 + 96));
      }

      re::AssetHandle::~AssetHandle(&buf);
      v87 = (v87 + 32);
    }

    while (v87 != v86);
    while (1)
    {
      re::AssetHandle::AssetHandle(v126, v85);
      v127 = *(v85 + 12);
      v89 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v126);
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      buf = 0u;
      MTLPixelFormatGetInfoForDevice();
      if (*(v89 + 120))
      {
        break;
      }

      v90 = WORD4(buf);
      v91 = *(v89 + 112);
      re::TextureCompatibility::convertTextureAssetColorSpace(v126, v132, *(v89 + 356), v127, HIBYTE(v127));
      if (v91)
      {
      }

      re::TextureAssetLoader::getOrCreateImportOptions(v126, v119);
      if ((v90 & 0x400) != 0 && v106 && re::shouldASTCCompress((v89 + 112), v120, v121))
      {
        v92 = *(v89 + 168);
        if (v92)
        {

          *(v89 + 168) = 0;
        }

        if (*(v89 + 120))
        {
          break;
        }

        v93 = *(v89 + 112);
        isValid = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v126);
        v145 = isValid;
        if (isValid)
        {
          isValid = re::TextureData::isValid((isValid + 112));
          if (isValid)
          {
            v144 = 0;
            operator new();
          }
        }

        v95 = *re::assetsLogObjects(isValid);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = v95;
          v97 = re::AssetHandle::assetInfo(v126);
          if (v97[17])
          {
            v98 = v97[18];
          }

          else
          {
            v98 = v97 + 137;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v98;
          _os_log_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_DEFAULT, "Failed to recompress  %s", &buf, 0xCu);
        }

        if (v93)
        {
        }
      }

      if (v123)
      {
        if (v124)
        {
          (*(*v123 + 40))();
          v124 = 0;
          v125 = 0;
        }

        v123 = 0;
      }

      re::AssetHandle::~AssetHandle(v126);
      v85 = (v85 + 32);
      if (v85 == v86)
      {
        goto LABEL_147;
      }
    }

    std::__throw_bad_variant_access[abi:nn200100]();
  }

LABEL_147:
  v99 = v128[0];
  if (v128[0])
  {
    v100 = v131;
    if (v131)
    {
      if (v116)
      {
        v101 = 32 * v116;
        v102 = v131;
        do
        {
          re::AssetHandle::~AssetHandle(v102);
          v102 = (v103 + 32);
          v101 -= 32;
        }

        while (v101);
      }

      (*(*v99 + 40))(v99, v100, v84);
    }
  }
}

uint64_t re::TextureImportData::ImportReport::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  if (a1 != a2)
  {
    v6 = *(a2 + 48);
    *(a2 + 48) = 0;
    v7 = *(a1 + 48);
    *(a1 + 48) = v6;
  }

  re::DynamicArray<short>::operator=(a1 + 56, a2 + 56);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD0150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 8) + 56) + 24);
  v4 = *(a1 + 24);
  v5 = **(a1 + 16);
  v14 = v3;
  v15 = 0;
  v6 = **(a1 + 16);
  v13 = *(v6 + 360);
  v7 = *(v6 + 176);
  v8 = v7;
  v9 = **(a1 + 16);
  v10 = *(v9 + 336);
  v11 = *(v9 + 320);
  v12[0] = v10;
  v12[1] = v11;
  re::TextureAsset::setTexture(v5, v4, &v14, (v6 + 356), &v13, v7, v12);
  if (v15 != -1)
  {
    (off_1F5CD0130[v15])(v12, &v14);
  }

  **(a1 + 32) = 1;
  if (v3)
  {
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t std::__function::__func<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0,std::allocator<re::TextureCompatibility::compressTexture(re::AssetHandle &,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,re::RenderManager const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::Result<re::TextureData,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2 != -1)
    {
      (off_1F5CD0130[v2])(&v4, a1 + 8);
    }

    *(a1 + 16) = -1;
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

re::DynamicString *re::FontCompiler::getCurrentCompiledAssetInfo@<X0>(re::FontCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::FontAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

void *re::FontCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::FontCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

uint64_t re::FontCompiler::assetIntrospectionType(re::FontCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontAsset>(BOOL)::info = re::introspect_FontAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 260);
}

void *re::FontCompiler::compile@<X0>(re::FontCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = re::globalAllocators(this);
  v9 = (*(*v8[2] + 32))(v8[2], 80, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  re::DynamicString::setCapacity(v9, 0);
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 2) = 0u;
  if ((atomic_load_explicit(&qword_1EE19DA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19DA88))
  {
    _MergedGlobals_136 = re::introspect_FontFile(0);
    __cxa_guard_release(&qword_1EE19DA88);
  }

  result = re::AssetUtilities::readSourceJson(a2, v9, _MergedGlobals_136, a3, v18);
  if (v18[0] == 1)
  {
    *a4 = v18[0];
    *(a4 + 8) = v9;
  }

  else
  {
    re::internal::destroyPersistent<re::FontAsset>("compile", 58, v9);
    *&v14 = 100;
    *(&v14 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v15, &v19);
    v11 = v15;
    *(a4 + 8) = v14;
    v12 = v16;
    v13 = v17;
    *a4 = 0;
    *(a4 + 24) = v11;
    *(a4 + 40) = v12;
    *(a4 + 48) = v13;
    if ((v18[0] & 1) == 0)
    {
      result = v19;
      if (v19)
      {
        if (v20)
        {
          return (*(*v19 + 40))();
        }
      }
    }
  }

  return result;
}

re::DynamicString *re::FontLayoutCompiler::getCurrentCompiledAssetInfo@<X0>(re::FontLayoutCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::FontLayoutAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::FontLayoutCompiler::assetIntrospectionType(re::FontLayoutCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::FontLayoutAsset>(BOOL)::info = re::introspect_FontLayoutAsset(0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 262);
}

void *re::FontLayoutCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::FontLayoutCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

FILE *re::FontLayoutCompiler::compile@<X0>(re *a1@<X0>, re::FileStreamReader *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 128, 8);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  result = re::parseFontLayout(a2, v6, v8);
  if ((v8[0] & 1) == 0)
  {
    result = v9;
    if (v9)
    {
      if (v10)
      {
        result = (*(v9->_p + 5))();
      }
    }
  }

  *a3 = 1;
  *(a3 + 8) = v6;
  return result;
}

re::DynamicString *re::ShaderLibraryCompiler::getCurrentCompiledAssetInfo@<X0>(re::ShaderLibraryCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::ShaderLibraryAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::ShaderLibraryCompiler::assetIntrospectionType(re::ShaderLibraryCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ShaderLibraryAsset>(BOOL)::info = re::introspect_ShaderLibraryAsset(0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[208];
}

void *re::ShaderLibraryCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::ShaderLibraryCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

uint64_t re::ShaderLibraryCompiler::compile@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = stat(a1, &v14);
  if (v4)
  {
    result = re::DynamicString::format("failed to load shader library %s", &v14, a1);
    v6 = 0;
    v7 = *&v14.st_dev;
    v8 = *&v14.st_uid;
    v9 = *&v14.st_rdev;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v9;
    v10 = 100;
  }

  else
  {
    v11 = re::globalAllocators(v4);
    v10 = (*(*v11[2] + 32))(v11[2], 88, 8);
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 40) = 0u;
    *v10 = &unk_1F5CBE448;
    *(v10 + 24) = 0u;
    *(v10 + 8) = 0u;
    v12 = re::DynamicString::setCapacity((v10 + 8), 0);
    *(v10 + 56) = 0u;
    *(v10 + 40) = 0u;
    re::DynamicString::setCapacity((v10 + 40), 0);
    *(v10 + 80) = 0;
    v13 = strlen(a1);
    *&v14.st_dev = a1;
    v14.st_ino = v13;
    result = re::DynamicString::operator=((v10 + 40), &v14);
    v6 = 1;
  }

  *a2 = v6;
  *(a2 + 8) = v10;
  return result;
}

BOOL re::isPackageRelativePath(char *a1, size_t __n)
{
  if (!__n)
  {
    return 0;
  }

  v2 = &a1[__n];
  if (a1[__n - 1] != 93)
  {
    return 0;
  }

  v3 = memchr(a1, 91, __n);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

uint64_t re::innerPathFromPackageRelativePath(uint64_t result, unint64_t a2)
{
  if (a2 && *(result + a2 - 1) == 93)
  {
    v2 = 0;
    v3 = (a2 - 1);
    v4 = 1;
    while (1)
    {
      v5 = v3 + v2;
      if (v3 + v2 < 1)
      {
        break;
      }

      v6 = v5 - 1;
      if (a2 <= v5 - 1)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3 + v2 - 1, a2);
        _os_crash();
        __break(1u);
LABEL_16:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = *(v3 + result - 1 + v2);
      if (v6)
      {
        v8 = (a2 - 3 + v2);
        if (a2 <= v8)
        {
          goto LABEL_16;
        }

        v9 = *(result + v8) != 92;
      }

      else
      {
        v9 = 1;
      }

      v10 = v7 == 93;
      v11 = ((v7 == 91) & v9) << 31 >> 31;
      if (v10 && v9)
      {
        v11 = 1;
      }

      --v2;
      v4 += v11;
      if (!v4)
      {
        result += v3 + v2 + 1;
        return result;
      }
    }
  }

  return result;
}

char *re::fixAssetName@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  re::replaceChar(*a1, *(a1 + 8), 0x2Fu, a2);
  if (*(a2 + 8))
  {
    result = *(a2 + 16);
  }

  else
  {
    result = (a2 + 9);
  }

  if (result)
  {
    result = strpbrk(result, ":<>|?*");
    if (result)
    {
      for (i = 0; i != 7; ++i)
      {
        v5 = *(a2 + 8);
        if (v5)
        {
          v6 = *(a2 + 16);
        }

        else
        {
          v6 = (a2 + 9);
        }

        v7 = (v5 >> 1);
        v8 = (v5 >> 1);
        if (*(a2 + 8))
        {
          v9 = v7;
        }

        else
        {
          v9 = v8;
        }

        re::replaceChar(v6, v9, re::AssetPath::invalidNameChars[i], &v10);
        re::DynamicString::operator=(a2, &v10);
        result = v10;
        if (v10)
        {
          if (v11)
          {
            result = (*(*v10 + 40))();
          }
        }
      }
    }
  }

  return result;
}

_BYTE *re::replaceChar@<X0>(re *this@<X0>, const char *a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 0;
  re::DynamicString::setCapacity(a4, 0);
  result = re::DynamicString::resize(a4, a2, 0);
  if (a2)
  {
    v9 = 0;
    do
    {
      v10 = v9[this];
      result = re::DynamicString::operator[](a4, v9);
      if (v10 == a3)
      {
        v11 = 95;
      }

      else
      {
        v11 = v10;
      }

      *result = v11;
      ++v9;
    }

    while (a2 != v9);
  }

  return result;
}

uint64_t re::ImportAssetTable::compiledAssetPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re **a3@<X2>, re::DynamicString *a4@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  re::stringToLowerCase(*a3, &v11);
  re::fixAssetName(v14, &v8);
  if (v9)
  {
    v5 = *&v10[7];
  }

  else
  {
    v5 = v10;
  }

  if (v12)
  {
    v6 = *&v13[7];
  }

  else
  {
    v6 = v13;
  }

  re::DynamicString::format("%s.compiled%s", a4, v5, v6);
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

  return result;
}

re::DynamicString *re::setFunctionConstantsFromScene(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 50);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 23);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 50);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(result + 23);
    do
    {
      result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2 + 296, (v8 + 80 * v5 + 8), (v8 + 80 * v5 + 40));
      v9 = *(v3 + 50);
      if (v9 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = *(v3 + 50);
      }

      v8 = *(v3 + 23);
      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v10;
LABEL_17:
      ;
    }

    while (v5 != v9);
  }

  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, const re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 80 * v7 + 40), a3);
}

uint64_t re::setFunctionConstantsFromMaterial(uint64_t a1, int a2)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableBaseColorMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableNormalMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableEmissiveMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableRoughnessMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableMetallicMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableAOMap", &v73);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableSpecularMap", &v73);
  v4 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1 + 296, "EnableClearcoat", &v73);
  if (a2)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 296, "UseBaseColorMapAsTintMask", &v69);
  v6 = v69;
  if (v69 && (BYTE8(v69) & 1) != 0)
  {
    v6 = (*(*v69 + 40))();
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v72 = 0x7FFFFFFFLL;
  v7 = *(a1 + 184);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 168);
    while (1)
    {
      v10 = *v9;
      v9 += 22;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a1 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a1 + 168);
    do
    {
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v69, (v11 + 88 * v8 + 8));
      if (*(a1 + 184) <= (v8 + 1))
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = *(a1 + 184);
      }

      v11 = *(a1 + 168);
      while (v12 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 88 * v8) & 0x80000000) != 0)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v8) = v12;
LABEL_23:
      ;
    }

    while (v8 != v7);
  }

  v13 = *(a1 + 232);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 216);
    while (1)
    {
      v16 = *v15;
      v15 += 40;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a1 + 232);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v17 = "false";
  if (v14 != v13)
  {
    LOBYTE(v18) = 0;
    v19 = *(a1 + 216);
    do
    {
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v69, (v19 + 160 * v14 + 8));
      if (v18)
      {
        v18 = 1;
      }

      else
      {
        v20 = v19 + 160 * v14;
        v22 = *(v20 + 144);
        v21 = v20 + 144;
        v18 = v22 == 1 && *(v21 + 4) != 0;
      }

      v23 = *(a1 + 232);
      if (v23 <= v14 + 1)
      {
        v23 = v14 + 1;
      }

      v19 = *(a1 + 216);
      while (v23 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(v19 + 160 * v14) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v14) = v23;
LABEL_44:
      ;
    }

    while (v14 != v13);
    if (v18)
    {
      v17 = "true";
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1 + 296, "EnableMultiUVs", &v66);
  if (v66 && (v67 & 1) != 0)
  {
    (*(*v66 + 40))();
  }

  v24 = v71;
  if (v71)
  {
    v25 = 0;
    v26 = (v70 + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 12;
      if (v27 < 0)
      {
        break;
      }

      if (v71 == ++v25)
      {
        LODWORD(v25) = v71;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v71)
  {
    v28 = v70;
    do
    {
      re::DynamicString::DynamicString(&v66, (v28 + 48 * v25 + 16));
      if (v67)
      {
        v29 = *&v68[7];
      }

      else
      {
        v29 = v68;
      }

      v30 = strcmp(v29, "textureBaseColor");
      if (v30)
      {
        v31 = strcmp(v29, "textureNormal");
        if (v31)
        {
          v32 = strcmp(v29, "textureEmissive");
          if (v32)
          {
            v33 = strcmp(v29, "textureRoughness");
            if (v33)
            {
              v34 = strcmp(v29, "textureMetallic");
              if (v34)
              {
                v35 = strcmp(v29, "textureAmbientOcclusion");
                if (v35)
                {
                  v36 = strcmp(v29, "textureSpecular");
                  if (v36)
                  {
                    v37 = strcmp(v29, "textureOpacity");
                    if (v37)
                    {
                      v38 = strcmp(v29, "textureClearcoatRoughness");
                      if (v38 && (v38 = strcmp(v29, "textureClearcoat"), v38))
                      {
                        v39 = strcmp(v29, "textureRMAS");
                        if (v39)
                        {
                          goto LABEL_88;
                        }

                        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 296, "EnableSeparateRMAS", &v64);
                        v40 = v64;
                        if (v64 && (v65 & 1) != 0)
                        {
                          v40 = (*(*v64 + 40))();
                        }

                        v41 = a1 + 296;
                        v42 = "EnableSingleRMAS";
                      }

                      else
                      {
                        v41 = a1 + 296;
                        v42 = "EnableClearcoat";
                      }
                    }

                    else
                    {
                      v41 = a1 + 296;
                      v42 = "EnableOpacityMap";
                    }
                  }

                  else
                  {
                    v41 = a1 + 296;
                    v42 = "EnableSpecularMap";
                  }
                }

                else
                {
                  v41 = a1 + 296;
                  v42 = "EnableAOMap";
                }
              }

              else
              {
                v41 = a1 + 296;
                v42 = "EnableMetallicMap";
              }
            }

            else
            {
              v41 = a1 + 296;
              v42 = "EnableRoughnessMap";
            }
          }

          else
          {
            v41 = a1 + 296;
            v42 = "EnableEmissiveMap";
          }
        }

        else
        {
          v41 = a1 + 296;
          v42 = "EnableNormalMap";
        }
      }

      else
      {
        v41 = a1 + 296;
        v42 = "EnableBaseColorMap";
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v41, v42, &v64);
      if (v64 && (v65 & 1) != 0)
      {
        (*(*v64 + 40))();
      }

LABEL_88:
      if (v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }

      v28 = v70;
      if (v71 <= v25 + 1)
      {
        v43 = v25 + 1;
      }

      else
      {
        v43 = v71;
      }

      while (v43 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v70 + 48 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_98;
        }
      }

      LODWORD(v25) = v43;
LABEL_98:
      ;
    }

    while (v25 != v24);
  }

  v44 = *(a1 + 88);
  if (v44)
  {
    v45 = 0;
    v46 = *(a1 + 72);
    while (1)
    {
      v47 = *v46;
      v46 += 20;
      if (v47 < 0)
      {
        break;
      }

      if (v44 == ++v45)
      {
        LODWORD(v45) = *(a1 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v45) = 0;
  }

  if (v45 != v44)
  {
    v48 = *(a1 + 72);
    do
    {
      v49 = v48 + 80 * v45;
      v50 = v49 + 40;
      v51 = *(v49 + 16);
      v52 = *(v49 + 24);
      v53 = (v49 + 17);
      if (v51)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      if (!strcmp(v54, "clearcoatScale") || !strcmp(v54, "clearcoatRoughnessScale"))
      {
        if (*(v50 + 8))
        {
          v56 = *(v50 + 16);
        }

        else
        {
          v56 = (v50 + 9);
        }

        if (strtof(v56, 0) <= 0.0)
        {
          goto LABEL_126;
        }

        v58 = a1 + 296;
        v59 = "EnableClearcoat";
      }

      else
      {
        if (strcmp(v54, "opacityThreshold"))
        {
          goto LABEL_126;
        }

        v55 = (*(v50 + 8) & 1) != 0 ? *(v50 + 16) : (v50 + 9);
        if (strtof(v55, 0) <= 0.0)
        {
          goto LABEL_126;
        }

        v58 = a1 + 296;
        v59 = "EnableOpacityThreshold";
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v58, v59, &v66);
      if (v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }

LABEL_126:
      if (*(a1 + 88) <= (v45 + 1))
      {
        v61 = v45 + 1;
      }

      else
      {
        v61 = *(a1 + 88);
      }

      v48 = *(a1 + 72);
      while (v61 - 1 != v45)
      {
        LODWORD(v45) = v45 + 1;
        if ((*(v48 + 80 * v45) & 0x80000000) != 0)
        {
          goto LABEL_134;
        }
      }

      LODWORD(v45) = v61;
LABEL_134:
      ;
    }

    while (v45 != v44);
  }

  v62 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69);
  result = v73;
  if (v73)
  {
    if (v74)
    {
      return (*(*v73 + 40))(v62);
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, const re::DynamicString *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 40;
  }
}

void re::createMaterialAssetsFromMaterialTable(re::DynamicString *a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  v3 = a2;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v44 = (a1 + 57);
    v8 = *(a2 + 16);
    v45 = *(a2 + 32);
    do
    {
      v9 = v8 + 72 * v5;
      v11 = *(v9 + 48);
      v10 = v9 + 48;
      v12 = v11;
      v13 = v12;
      if (v12)
      {
        v52 = 0u;
        v53 = 0u;
        re::DynamicString::setCapacity(&v52, 0);
        memset(v54, 0, sizeof(v54));
        v55 = 0x7FFFFFFFLL;
        memset(v56, 0, sizeof(v56));
        v57 = 0;
        v58 = 0x7FFFFFFFLL;
        memset(v59, 0, sizeof(v59));
        v60 = 0;
        v61 = 0x7FFFFFFFLL;
        memset(v62, 0, sizeof(v62));
        v63 = 0;
        v64 = 0x7FFFFFFFLL;
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        v67 = 0x7FFFFFFFLL;
        memset(v68, 0, sizeof(v68));
        v69 = 0;
        v70 = 0x7FFFFFFFLL;
        v71[0] = 0;
        v71[2] = 0;
        v71[4] = 0;
        v71[6] = 0;
        v71[8] = 0;
        v71[10] = 0;
        v71[12] = 0;
        v71[14] = 0;
        v71[16] = 0;
        v71[18] = 0;
        v74 = 0;
        v73 = 0;
        memset(v72, 0, sizeof(v72));
        v75 = 0;
        v14 = *(v10 + 12);
        v15 = v13;
        v16 = [(_anonymous_namespace_ *)v15 name];
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = &stru_1F5D319D0;
        }

        if (v14 == 1)
        {
          v18 = [(__CFString *)v17 stringByAppendingString:@"/subd"];

          v17 = v18;
        }

        v19 = [(__CFString *)v17 UTF8String];
        v20 = strlen(v19);
        v49 = v19;
        v50 = v20;
        re::DynamicString::operator=(&v52, &v49);
        re::gatherMaterialConstants(&v54[24], v15);
        v21 = a1;
        re::setFunctionConstantsFromScene(a1, &v52);
        re::setFunctionConstantsFromMaterial(&v52, 0);
        isMaterialTransparent = re::isMaterialTransparent(v15, v22);

        v25 = *(a1 + 7);
        if (v25)
        {
          v26 = v25 >> 1;
        }

        else
        {
          v26 = v25 >> 1;
        }

        if (v26)
        {
          if (*(a1 + 7))
          {
            v27 = *(a1 + 8);
          }

          else
          {
            v27 = v44;
          }
        }

        else
        {
          if (v14)
          {
            if (isMaterialTransparent)
            {
              v28 = "engine:transparentPbrOpenSubdiv.rematerialdefinition";
            }

            else
            {
              v28 = "engine:pbrOpenSubdiv.rematerialdefinition";
            }
          }

          else if (isMaterialTransparent)
          {
            v28 = "engine:transparentPbr.rematerialdefinition";
          }

          else
          {
            v28 = "engine:pbr.rematerialdefinition";
          }

          v21 = a1;
        }

        v30 = *(v21 + 13);
        if (BYTE8(v52))
        {
          v31 = v53;
        }

        else
        {
          v31 = &v52 + 9;
        }

        if (BYTE8(v52))
        {
          v32 = *(&v52 + 1) >> 1;
        }

        else
        {
          v32 = BYTE8(v52) >> 1;
        }

        v33 = re::MaterialAsset::assetType(v29);
        v34 = re::ImportAssetTable::importedAsset(v30, v31, v32, v33);
        if (!v34)
        {
          v35 = re::globalAllocators(0);
          v36 = (*(*v35[2] + 32))(v35[2], 1992, 8);
          bzero(v36, 0x7C8uLL);
          re::MaterialAsset::MaterialAsset(v36);
          re::DynamicString::operator=((v36 + 8), &v52);
          re::AssetHandle::operator=(v36 + 40, v54);
          re::MaterialParameterData::operator=((v36 + 64), &v54[24]);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v36 + 304), v68);
          re::MaterialRenderFlags::operator=((v36 + 352), v71);
          v37 = re::DynamicArray<re::FunctionLink>::operator=(v36 + 376, v72);
          *(v36 + 416) = v75;
          v38 = *(v21 + 13);
          if (BYTE8(v52))
          {
            v39 = v53;
          }

          else
          {
            v39 = &v52 + 9;
          }

          if (BYTE8(v52))
          {
            v40 = *(&v52 + 1) >> 1;
          }

          else
          {
            v40 = BYTE8(v52) >> 1;
          }

          v41 = re::MaterialAsset::assetType(v37);
          v34 = re::ImportAssetTable::addAsset(v38, v39, v40, v36, v41);
        }

        v50 = 0;
        v51 = 0;
        v49 = 0;
        if (*(v34 + 8))
        {
          v42 = *(v34 + 16);
        }

        else
        {
          v42 = (v34 + 9);
        }

        LODWORD(v4) = v45;
        v3 = a2;
        re::DynamicArray<re::AssetHandle>::add(a3, &v49);
        re::AssetHandle::~AssetHandle(&v49);
        re::DynamicArray<re::FunctionLink>::deinit(v72);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v65);
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v62);
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v59);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v56);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v54[24]);
        re::AssetHandle::~AssetHandle(v54);
        if (v52 && (BYTE8(v52) & 1) != 0)
        {
          (*(*v52 + 40))();
        }
      }

      if (*(v3 + 32) <= (v5 + 1))
      {
        v43 = v5 + 1;
      }

      else
      {
        v43 = *(v3 + 32);
      }

      v8 = *(v3 + 16);
      while (v43 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v5) = v43;
LABEL_59:
      ;
    }

    while (v5 != v4);
  }
}

uint64_t re::ImportAssetTable::importedAsset(uint64_t a1, uint64_t a2, uint64_t a3, re **a4)
{
  re::ImportAssetTable::compiledAssetPath(a2, a3, a4, &v8);
  v5 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v8);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return v6;
}

uint64_t re::ImportAssetTable::addAsset(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re **a5)
{
  v26[0] = a2;
  v26[1] = a3;
  v24 = 0;
  v25 = 0;
  if (a3)
  {
    v9 = a3 + 1;
  }

  else
  {
    v9 = 0;
  }

  v23 = 0;
  re::DynamicString::setCapacity(&v22, v9);
  re::DynamicString::operator=(&v22, v26);
  if (v23)
  {
    v10 = v24;
  }

  else
  {
    v10 = &v23 + 1;
  }

  if (v23)
  {
    v11 = v23 >> 1;
  }

  else
  {
    v11 = v23 >> 1;
  }

  re::ImportAssetTable::compiledAssetPath(v10, v11, a5, &v20);
  re::DynamicString::operator=(&v22, &v20);
  if (v20 && (v21[0] & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  if (re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v22))
  {
    v12 = 1;
    do
    {
      re::DynamicString::operator=(&v22, v26);
      re::DynamicString::format("_%02d", &v20, v12);
      v13 = v21[0] & 1;
      if (v21[0])
      {
        v14 = v21[1];
      }

      else
      {
        v14 = v21 + 1;
      }

      if (v21[0])
      {
        v15 = v21[0] >> 1;
      }

      else
      {
        v15 = LOBYTE(v21[0]) >> 1;
      }

      re::DynamicString::append(&v22, v14, v15);
      if (v20 && v13)
      {
        (*(*v20 + 40))();
      }

      if (v23)
      {
        v16 = v24;
      }

      else
      {
        v16 = &v23 + 1;
      }

      if (v23)
      {
        v17 = v23 >> 1;
      }

      else
      {
        v17 = v23 >> 1;
      }

      re::ImportAssetTable::compiledAssetPath(v16, v17, a5, &v20);
      re::DynamicString::operator=(&v22, &v20);
      if (v20 && (v21[0] & 1) != 0)
      {
        (*(*v20 + 40))();
      }

      v12 = (v12 + 1);
    }

    while (re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 56, &v22));
  }

  v18 = re::ImportAssetTable::addAssetWithPath(a1, &v22, a4, a5);
  if (v22 && (v23 & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  return v18;
}

void re::createMaterialAssetsFromMaterialTableUSK(uint64_t a1, uint64_t a2, _anonymous_namespace_ *a3)
{
  v3 = a2;
  v4 = a1;
  v346 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
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

  if (v6 != v5)
  {
    v259 = *MEMORY[0x1E69DEEC8];
    v234 = (a1 + 57);
    v9 = *(a2 + 16);
    __asm
    {
      FMOV            V11.2S, #1.0
      FMOV            V3.4S, #1.0
    }

    v239 = vdupq_lane_s32(0, 0);
    v240 = *(&_Q3 + 1);
    v235 = *(a2 + 32);
    while (1)
    {
      v16 = v9 + 72 * v6;
      v18 = *(v16 + 48);
      v17 = v16 + 48;
      v19 = v18;
      if (v19)
      {
        break;
      }

LABEL_319:

      if (*(v3 + 32) <= (v6 + 1))
      {
        v232 = v6 + 1;
      }

      else
      {
        v232 = *(v3 + 32);
      }

      v9 = *(v3 + 16);
      while (v232 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 72 * v6) & 0x80000000) != 0)
        {
          goto LABEL_327;
        }
      }

      LODWORD(v6) = v232;
LABEL_327:
      if (v6 == v5)
      {
        return;
      }
    }

    v266 = 0u;
    v267 = 0u;
    v20 = v19;
    re::DynamicString::setCapacity(&v266, 0);
    memset(v268, 0, sizeof(v268));
    v269 = 0x7FFFFFFFLL;
    v270 = 0u;
    v271 = 0u;
    v272 = 0;
    v273 = 0x7FFFFFFFLL;
    memset(v274, 0, sizeof(v274));
    v275 = 0;
    v276 = 0x7FFFFFFFLL;
    memset(v277, 0, sizeof(v277));
    v278 = 0;
    v279 = 0x7FFFFFFFLL;
    v281 = 0;
    memset(v280, 0, sizeof(v280));
    v282 = 0x7FFFFFFFLL;
    memset(v283, 0, sizeof(v283));
    v284 = 0;
    v285 = 0x7FFFFFFFLL;
    v286[0] = 0;
    v286[2] = 0;
    v286[4] = 0;
    v286[6] = 0;
    v286[8] = 0;
    v286[10] = 0;
    v286[12] = 0;
    v286[14] = 0;
    v286[16] = 0;
    v286[18] = 0;
    v289 = 0;
    v288 = 0;
    memset(v287, 0, sizeof(v287));
    v290 = 0;
    v21 = *(v17 + 12);
    v242 = v20;
    v247 = v20;
    v22 = [v247 path];
    v23 = [v22 stringValue];

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = &stru_1F5D319D0;
    }

    v238 = v21;
    if (v21 == 1)
    {
      v25 = [(__CFString *)v24 stringByAppendingString:@"/subd"];
      v26 = v24;
      v24 = v25;
    }

    v243 = v24;
    v27 = [(__CFString *)v24 UTF8String];
    v28 = strlen(v27);
    *v325 = v27;
    *&v325[8] = v28;
    re::DynamicString::operator=(&v266, v325);
    re::gatherMaterialTextureProperties(v247, v306);
    v304 = 0;
    memset(v303, 0, sizeof(v303));
    v305 = 0x7FFFFFFFLL;
    v30 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v247];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 UTF8String];
      v33 = strlen(v32);
      *v325 = v32;
      *&v325[8] = v33;
      re::DynamicString::operator=(&v300, v325);
    }

    v241 = v31;
    v34 = v308;
    if (v308)
    {
      v35 = 0;
      v36 = v307;
      do
      {
        v37 = *v36;
        v36 += 14;
        if (v37 < 0)
        {
          goto LABEL_23;
        }

        ++v35;
      }

      while (v308 != v35);
      LODWORD(v35) = v308;
    }

    else
    {
      LODWORD(v35) = 0;
    }

LABEL_23:
    if (v35 == v308)
    {
      v252 = 0;
      goto LABEL_25;
    }

    v257 = 0;
    v252 = 0;
    v45 = v307;
    v256 = v308;
LABEL_28:
    v264 = &v45[14 * v35];
    v46 = v264[5];
    ResourcePathAndColorSpaceForTextureProperty = re::getResourcePathAndColorSpaceForTextureProperty(v46);
    if (!ResourcePathAndColorSpaceForTextureProperty)
    {
      goto LABEL_209;
    }

    v258 = v46;
    v265 = ResourcePathAndColorSpaceForTextureProperty;
    if (*(v4 + 162))
    {
      goto LABEL_76;
    }

    v48 = [ResourcePathAndColorSpaceForTextureProperty path];
    v49 = [v48 pathExtension];
    v50 = [v49 UTF8String];
    v51 = strlen(v50);
    if (v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v52 = v51;
    if (v51 >= 0x17)
    {
      operator new();
    }

    __dst[23] = v51;
    if (v51)
    {
      memmove(__dst, v50, v51);
    }

    __dst[v52] = 0;

    v53 = __dst[23];
    v54 = *&__dst[8];
    if (__dst[23] >= 0)
    {
      v55 = __dst[23];
    }

    else
    {
      v55 = *&__dst[8];
    }

    if (v55)
    {
      v56 = 0;
      v57 = __dst[23] >> 63;
      do
      {
        v58 = *__dst;
        if (v57)
        {
          v59 = *__dst;
        }

        else
        {
          v59 = __dst;
        }

        ResourcePathAndColorSpaceForTextureProperty = __tolower(v59[v56]);
        if ((v53 & 0x80u) == 0)
        {
          v60 = __dst;
        }

        else
        {
          v60 = v58;
        }

        v60[v56++] = ResourcePathAndColorSpaceForTextureProperty;
        v53 = __dst[23];
        v57 = __dst[23] >> 63;
        v54 = *&__dst[8];
        if (__dst[23] >= 0)
        {
          v61 = __dst[23];
        }

        else
        {
          v61 = *&__dst[8];
        }
      }

      while (v61 > v56);
    }

    if ((v53 & 0x80000000) == 0)
    {
      v62 = v53;
    }

    else
    {
      v62 = v54;
    }

    v63 = *__dst;
    if ((v53 & 0x80000000) == 0)
    {
      v64 = __dst;
    }

    else
    {
      v64 = *__dst;
    }

    v65 = &qword_1E871BE20;
    v66 = 64;
    do
    {
      if (*v65 == v62)
      {
        ResourcePathAndColorSpaceForTextureProperty = memcmp(*(v65 - 1), v64, v62);
        if (!ResourcePathAndColorSpaceForTextureProperty)
        {
          goto LABEL_73;
        }
      }

      v65 += 2;
      v66 -= 16;
    }

    while (v66);
    v67 = 0;
    v68 = &qword_1E871BE20;
    while (1)
    {
      v69 = re::DynamicString::append(v325, *(v68 - 1), *v68);
      if (v67 == 2)
      {
        break;
      }

      if (v67 != 3)
      {
        v70 = ", ";
LABEL_66:
        v71 = strlen(v70);
        v69 = re::DynamicString::append(v325, v70, v71);
      }

      v68 += 2;
      if (++v67 == 4)
      {
        v72 = *re::pipelineLogObjects(v69);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v200 = [v265 path];
          v201 = [v200 UTF8String];
          v202 = &v325[9];
          if (v325[8])
          {
            v202 = *&v325[16];
          }

          *buf = 136315394;
          *&buf[4] = v201;
          v334 = 2080;
          *v335 = v202;
          _os_log_error_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_ERROR, "%s is an invalid USDZ texture format. Only %s textures are supported.", buf, 0x16u);
        }

        ResourcePathAndColorSpaceForTextureProperty = *v325;
        if (*v325 && (v325[8] & 1) != 0)
        {
          ResourcePathAndColorSpaceForTextureProperty = (*(**v325 + 40))();
        }

        v252 = 1;
LABEL_73:
        if ((v53 & 0x80000000) != 0)
        {
          operator delete(v63);
        }

        v46 = v258;
LABEL_76:
        v299 = 0u;
        v298 = 0u;
        re::DynamicString::setCapacity(&v298, 0);
        v73 = [v46 parentNode];
        v74 = [MEMORY[0x1E69DED88] shaderNodeType:v73];
        v75 = [v74 isEqualToString:v259];

        v260 = 0;
        v261 = xmmword_1E3060D30;
        if (v75)
        {
          v76 = [v73 property:@"inputs:st"];
          v77 = [MEMORY[0x1E69DED88] targetPropertyWithProperty:v76];
          v78 = [v77 parentNode];
          v79 = [v78 property:@"info:id"];
          v80 = v79;
          if (v79)
          {
            v254 = v76;
            v81 = [v79 stringValue];
            v82 = [v81 isEqualToString:@"UsdTransform2d"];

            if (!v82)
            {
              v260 = 0;
              v261 = xmmword_1E3060D30;
              goto LABEL_100;
            }

            v83 = [v78 property:@"inputs:scale"];
            v84 = v83;
            v85 = _D11;
            if (v83)
            {
              [v83 float2Value];
            }

            v262 = v85;
            v86 = [v78 property:@"inputs:rotation"];
            v248 = v86;
            v250 = v84;
            if (v86)
            {
              [v86 floatValue];
              v88 = v87;
            }

            else
            {
              v88 = 0.0;
            }

            v89 = [v78 property:@"inputs:translation"];
            v90 = v89;
            if (v89)
            {
              [v89 float2Value];
            }

            else
            {
              v91 = 0;
            }

            v92 = 0;
            v93.i64[1] = v240;
            v93.i32[0] = v91;
            *__dst = xmmword_1E3047670;
            *&__dst[16] = xmmword_1E3047680;
            *&__dst[32] = xmmword_1E3068120;
            do
            {
              v93.f32[1] = -*(&v91 + 1);
              *&v325[v92] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&__dst[v92])), xmmword_1E3047680, *&__dst[v92], 1), v93, *&__dst[v92], 2);
              v92 += 16;
            }

            while (v92 != 48);
            v94 = v88 / 180.0 * 3.14159265;
            v95 = __sincosf_stret(v94);
            v96 = 0;
            *&v97 = v95.__cosval;
            *(&v97 + 1) = -v95.__sinval;
            v98 = *v325;
            v99 = *&v325[16];
            v100 = *v326;
            *__dst = v97;
            *&__dst[16] = v95;
            *&__dst[32] = xmmword_1E30476A0;
            do
            {
              *&v325[v96] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*&__dst[v96])), v99, *&__dst[v96], 1), v100, *&__dst[v96], 2);
              v96 += 16;
            }

            while (v96 != 48);
            v101 = 0;
            v102 = v239;
            v103 = v239;
            v102.i32[1] = HIDWORD(v262);
            v103.i32[0] = LODWORD(v262);
            v104 = *v325;
            v105 = *&v325[16];
            v106 = *v326;
            *__dst = v103;
            *&__dst[16] = v102;
            *&__dst[32] = xmmword_1E30476A0;
            do
            {
              *&v325[v101] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, COERCE_FLOAT(*&__dst[v101])), v105, *&__dst[v101], 1), v106, *&__dst[v101], 2);
              v101 += 16;
            }

            while (v101 != 48);
            v107 = 0;
            v108 = *v325;
            v109 = *&v325[16];
            v110 = *v326;
            *__dst = xmmword_1E3047670;
            *&__dst[16] = xmmword_1E3047680;
            *&__dst[32] = xmmword_1E3068130;
            do
            {
              *&v325[v107] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, COERCE_FLOAT(*&__dst[v107])), v109, *&__dst[v107], 1), v110, *&__dst[v107], 2);
              v107 += 16;
            }

            while (v107 != 48);
            log = *&v325[16];
            v260 = *v326;
            v263 = *v325;
            v111 = [v78 property:@"inputs:in"];
            v112 = [MEMORY[0x1E69DED88] targetPropertyWithProperty:v111];
            v113 = v112;
            if (v112)
            {
              v114 = [v112 parentNode];

              v115 = [v114 property:@"info:id"];

              v80 = v115;
              v78 = v114;
            }

            *&v116 = v263;
            *(&v116 + 1) = log;
            v261 = v116;

            if (v80)
            {
LABEL_100:
              v4 = a1;
              v117 = [v80 stringValue];
              v118 = [v117 isEqualToString:@"UsdPrimvarReader_float2"];

              if (v118)
              {
                v119 = [v78 property:@"inputs:varname"];
                v120 = v119;
                if (v119)
                {
                  v121 = [v119 stringValue];
                  v122 = v121;
                  if (v121)
                  {
                    v123 = [v121 UTF8String];
                    v124 = strlen(v123);
                    *v325 = v123;
                    *&v325[8] = v124;
                    re::DynamicString::operator=(&v298, v325);
                  }

                  v4 = a1;
                }
              }
            }

            else
            {
              v4 = a1;
            }

            v76 = v254;
          }

          else
          {
            v260 = 0;
            v261 = xmmword_1E3060D30;
          }

          v46 = v258;
        }

        v125 = *(&v298 + 1) >> 1;
        if ((BYTE8(v298) & 1) == 0)
        {
          v125 = BYTE8(v298) >> 1;
        }

        if (v125)
        {
          if (BYTE8(v298))
          {
            v126 = v299;
          }

          else
          {
            v126 = &v298 + 9;
          }

          if (v301)
          {
            v127 = *&v302[7];
          }

          else
          {
            v127 = v302;
          }

          v128 = strcmp(v126, v127);
          v129 = v128 != 0;
          if ((v128 == 0) | v257 & 1)
          {
            v257 |= v129;
          }

          else
          {
            re::DynamicString::operator+(v131, &v298, __dst);
            v296 = 0;
            v295 = 0;
            v297 = 0;
            v132 = re::Hash<re::DynamicString>::operator()(v294, v325);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v270, v325, v132, &v295);
            if (HIDWORD(v296) == 0x7FFFFFFF)
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString,re::DynamicString>(&v270, &v295, v325, __dst);
            }

            else
            {
              ++HIDWORD(v273);
              re::DynamicString::operator=((v271 + 80 * HIDWORD(v296) + 40), __dst);
            }

            if (*__dst)
            {
              if (__dst[8])
              {
                (*(**__dst + 40))();
              }

              memset(__dst, 0, 32);
            }

            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }

            if (*v325 && (v325[8] & 1) != 0)
            {
              (*(**v325 + 40))();
            }

            v129 = 1;
            v257 = 1;
          }
        }

        else
        {
          v129 = 0;
        }

        buf[3] = 0;
        buf[8] = 0;
        v338 = 0;
        v339 = 0;
        v340 = 0;
        v341 = 0;
        v342 = 0;
        v343 = 0;
        v344 = 0;
        v345 = 0;
        *buf = 2;
        v335[2] = 1;
        *&v335[6] = 2;
        v336 = 1;
        v337 = 2;
        v133 = [v46 parentNode];
        v134 = [MEMORY[0x1E69DED88] shaderNodeType:v133];
        v135 = [v134 isEqualToString:v259];

        if (v135)
        {
          v255 = v129;
          v136 = v46;
          v137 = [v133 property:@"inputs:st"];
          v138 = [v137 parentNode];
          v139 = [v138 property:@"info:id"];
          v140 = v139;
          if (v139)
          {
            v141 = [v139 stringValue];
            v142 = [v141 isEqualToString:@"UsdUVTexture"];

            if (v142)
            {
              v249 = *&v335[6];
              v251 = v337;
              v143 = [v138 property:@"inputs:wrapS"];
              v144 = v143;
              if (v143)
              {
                v145 = [v143 stringValue];
                if ([v145 isEqualToString:@"black"])
                {
                  v146 = 4;
                  goto LABEL_141;
                }

                if ([v145 isEqualToString:@"clamp"])
                {
                  v249 = 0;
                  goto LABEL_144;
                }

                if ([v145 isEqualToString:@"repeat"])
                {
                  v146 = 2;
LABEL_141:
                  v249 = v146;
                  goto LABEL_144;
                }

                if ([v145 isEqualToString:@"mirror"])
                {
                  v146 = 3;
                  goto LABEL_141;
                }

                v204 = [v145 isEqualToString:@"useMetadata"];
                v205 = v204;
                loga = *re::pipelineLogObjects(v204);
                v206 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
                if (v205)
                {
                  v4 = a1;
                  if (v206)
                  {
                    *v325 = 0;
                    v207 = loga;
                    v208 = "Reading wrap mode from image metadata is currently not supported; defaulting to black";
                    goto LABEL_280;
                  }
                }

                else
                {
                  v4 = a1;
                  if (v206)
                  {
                    *v325 = 0;
                    v207 = loga;
                    v208 = "Wrap mode for imported USD was an invalid option; defaulting to black";
LABEL_280:
                    _os_log_impl(&dword_1E1C61000, v207, OS_LOG_TYPE_DEFAULT, v208, v325, 2u);
                  }
                }

LABEL_144:
              }

              v147 = [v138 property:@"inputs:wrapT"];
              v148 = v147;
              if (v147)
              {
                v149 = [v147 stringValue];
                if ([v149 isEqualToString:@"black"])
                {
                  v150 = 4;
                  goto LABEL_148;
                }

                if ([v149 isEqualToString:@"clamp"])
                {
                  v251 = 0;
                  goto LABEL_151;
                }

                if ([v149 isEqualToString:@"repeat"])
                {
                  v150 = 2;
LABEL_148:
                  v251 = v150;
                  goto LABEL_151;
                }

                if ([v149 isEqualToString:@"mirror"])
                {
                  v150 = 3;
                  goto LABEL_148;
                }

                v209 = [v149 isEqualToString:@"useMetadata"];
                logb = v209;
                v233 = *re::pipelineLogObjects(v209);
                v210 = os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT);
                if (logb)
                {
                  if (v210)
                  {
                    *v325 = 0;
                    v211 = v233;
                    v212 = "Reading wrap mode from image metadata is currently not supported; defaulting to black";
                    goto LABEL_283;
                  }
                }

                else if (v210)
                {
                  *v325 = 0;
                  v211 = v233;
                  v212 = "Wrap mode for imported USD was an invalid option; defaulting to black";
LABEL_283:
                  _os_log_impl(&dword_1E1C61000, v211, OS_LOG_TYPE_DEFAULT, v212, v325, 2u);
                }

LABEL_151:

                v4 = a1;
              }

              if ((v335[2] & 1) == 0)
              {
                v335[2] = 1;
              }

              *&v335[6] = v249;
              if ((v336 & 1) == 0)
              {
                v336 = 1;
              }

              v337 = v251;
            }
          }

          v46 = v136;
          v129 = v255;
        }

        v151 = [v265 path];
        v152 = [v151 UTF8String];

        v153 = strlen(v152);
        v154 = re::TextureAsset::assetType(v153);
        v155 = re::ImportAssetTable::compiledAssetPath(v152, v153, v154, &v295);
        memset(v294, 0, sizeof(v294));
        re::DynamicString::setCapacity(v294, 0);
        v156 = *(v4 + 104);
        v157 = strlen(v152);
        v158 = re::TextureAsset::assetType(v157);
        v159 = re::ImportAssetTable::importedAsset(v156, v152, v157, v158);
        if (v159)
        {
          re::DynamicString::operator=(v294, v159);
          v160 = v264;
        }

        else
        {
          isPackageRelativePath = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 112, &v295);
          if (isPackageRelativePath)
          {
            v181 = isPackageRelativePath;
            re::loadTextureDataWithProvider(isPackageRelativePath, *v4, v180, v325);
            if (v325[0] == 1)
            {
              __dst[0] = 0;
              *&__dst[8] = -1;
              std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(__dst, &v325[8]);
              *&__dst[16] = *&v325[24];
              *&__dst[24] = *v326;
              *&__dst[36] = *&v326[12];
              v319 = *&v326[32];
              if (*&v326[32])
              {
                v183 = (*&v326[32] + 8);
              }

              v320 = v327;
              re::DynamicArray<short>::DynamicArray(v321, &v327 + 1);
              v324 = v332;
              TextureAsset = re::TextureAsset::makeTextureAsset((v181 + 46), __dst, &__dst[16], v181[26], v181[18]);
              v185 = *(v4 + 104);
              v186 = re::TextureAsset::assetType(TextureAsset);
              v187 = re::ImportAssetTable::addAssetWithPath(v185, &v295, TextureAsset, v186);
              re::DynamicString::operator=(v294, v187);
              v160 = v264;
              if (v321[0])
              {
                if (v323)
                {
                  (*(*v321[0] + 40))();
                }

                v323 = 0;
                memset(v321, 0, sizeof(v321));
                ++v322;
              }

              if (v319)
              {

                v319 = 0;
              }

              if (*&__dst[8] != -1)
              {
                (off_1F5CD0328[*&__dst[8]])(&v292, __dst);
              }
            }

            else
            {
              v193 = *re::pipelineLogObjects(v182);
              if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
              {
                v203 = [v265 path];
                *__dst = 138412546;
                *&__dst[4] = v203;
                *&__dst[12] = 2112;
                *&__dst[14] = v243;
                _os_log_debug_impl(&dword_1E1C61000, v193, OS_LOG_TYPE_DEBUG, "Texture '%@' failed to load (referenced by material '%@'); removing associated texture provider", __dst, 0x16u);
              }

              v194 = re::Hash<re::DynamicString>::operator()(__dst, &v295);
              re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(__dst, v4 + 112, &v295, v194);
              v195 = *&__dst[12];
              if (*&__dst[12] != 0x7FFFFFFF)
              {
                v196 = *(v4 + 128);
                v197 = (v196 + 328 * *&__dst[12]);
                v198 = *v197 & 0x7FFFFFFF;
                if (*&__dst[16] == 0x7FFFFFFF)
                {
                  *(*(v4 + 120) + 4 * *&__dst[8]) = v198;
                }

                else
                {
                  *(v196 + 328 * *&__dst[16]) = *(v196 + 328 * *&__dst[16]) & 0x80000000 | v198;
                }

                re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v197);
                *(*(v4 + 128) + 328 * v195) = *(*(v4 + 128) + 328 * v195) & 0x80000000 | *(v4 + 148);
                --*(v4 + 140);
                v199 = *(v4 + 152) + 1;
                *(v4 + 148) = v195;
                *(v4 + 152) = v199;
              }

              v160 = v264;
            }

            if (v325[0] == 1)
            {
              if (*(&v327 + 1))
              {
                if (v331)
                {
                  (*(**(&v327 + 1) + 40))();
                }

                v331 = 0;
                v328 = 0uLL;
                *(&v327 + 1) = 0;
                ++v329;
              }

              if (*&v326[32])
              {

                *&v326[32] = 0;
              }

              if (*&v325[16] != -1)
              {
                (off_1F5CD0328[*&v325[16]])(__dst, &v325[8]);
              }
            }

            else if (*&v325[8] && (v325[16] & 1) != 0)
            {
              (*(**&v325[8] + 40))();
            }
          }

          else
          {
            if (*(v4 + 82) == 1)
            {
              v188 = [v265 resolvedPath];
              v189 = [v188 UTF8String];

              v190 = strlen(v189);
              isPackageRelativePath = re::isPackageRelativePath(v189, v190);
              if ((isPackageRelativePath & 1) == 0)
              {
                isPackageRelativePath = re::DynamicString::assignf(v294, "sourcepath:%s", v189);
              }
            }

            if (BYTE8(v294[0]))
            {
              v191 = *(&v294[0] + 1) >> 1;
            }

            else
            {
              v191 = BYTE8(v294[0]) >> 1;
            }

            v160 = v264;
            if (!v191)
            {
              v192 = *re::pipelineLogObjects(isPackageRelativePath);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
              {
                v213 = [v265 path];
                *v325 = 138412546;
                *&v325[4] = v243;
                *&v325[12] = 2112;
                *&v325[14] = v213;
                _os_log_debug_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEBUG, "Material '%@' references texture '%@' which could not be found during loading", v325, 0x16u);

                v160 = v264;
              }
            }
          }
        }

        if (BYTE8(v294[0]))
        {
          v161 = *(&v294[0] + 1) >> 1;
        }

        else
        {
          v161 = BYTE8(v294[0]) >> 1;
        }

        if (v161)
        {
          re::MaterialTextureParam::MaterialTextureParam(__dst, v294);
          memset(v325, 0, 24);
          v162 = re::Hash<re::DynamicString>::operator()(&v292, (v160 + 1));
          v163 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v274, (v160 + 1), v162, v325);
          if (*&v325[12] == 0x7FFFFFFF)
          {
            v163 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureParam const&>(v274, v325, (v160 + 1), __dst);
          }

          memset(v325, 0, sizeof(v325));
          v164 = re::DynamicString::setCapacity(v325, 0);
          *v326 = 0;
          memset(&v326[8], 0, 32);
          v165 = re::DynamicString::setCapacity(&v326[8], 0);
          v328 = 0u;
          v327 = 0u;
          re::DynamicString::setCapacity(&v327, 0);
          LOBYTE(v329) = 0;
          re::MaterialTextureParam::setString(v325, v294);
          re::DynamicString::operator=(&v326[8], (v160 + 1));
          if ((v329 & 1) == 0)
          {
            LOBYTE(v329) = 1;
          }

          v330 = v129;
          v292 = 0uLL;
          *&v293 = 0;
          v166 = re::Hash<re::DynamicString>::operator()(v291, (v160 + 1));
          v167 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v277, (v160 + 1), v166, &v292);
          if (HIDWORD(v292) == 0x7FFFFFFF)
          {
            v167 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureBlockData const&>(v277, &v292, (v160 + 1), v325);
          }

          v292 = 0u;
          v293 = 0u;
          re::DynamicString::setCapacity(&v292, 0);
          v168 = re::DynamicString::appendf(&v292, "%f, %f, %f, %f", *&v261, *(&v261 + 1), *(&v261 + 2), *(&v261 + 3));
          memset(v291, 0, sizeof(v291));
          re::DynamicString::setCapacity(v291, 0);
          re::DynamicString::appendf(v291, "%f, %f", *&v260, *(&v260 + 1));
          if (v129)
          {
            v169 = "uvTransform1";
          }

          else
          {
            v169 = "uvTransform";
          }

          if (v129)
          {
            v170 = "uvOffset1";
          }

          else
          {
            v170 = "uvOffset";
          }

          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v268[24], v169, &v292);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v268[24], v170, v291);
          v315 = 0;
          v314 = 0;
          v316 = 0;
          v171 = re::Hash<re::DynamicString>::operator()(&v317, (v160 + 1));
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v280, (v160 + 1), v171, &v314);
          if (HIDWORD(v315) == 0x7FFFFFFF)
          {
            re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::OptionalMaterialSamplerData const&>(v280, &v314, (v160 + 1), buf);
          }

          v172 = re::Hash<re::DynamicString>::operator()(&v314, (v160 + 1));
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v303, (v160 + 1), v172, &v314);
          if (HIDWORD(v315) == 0x7FFFFFFF)
          {
            v173 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 112, &v295);
            v315 = 0;
            v314 = 0;
            v316 = 0;
            v174 = re::Hash<re::DynamicString>::operator()(&v317, (v160 + 1));
            re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v303, (v160 + 1), v174, &v314);
            if (HIDWORD(v315) == 0x7FFFFFFF)
            {
              v175 = re::HashTable<re::DynamicString,re::AssetHandle const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v303, v315, v314);
              v176 = v160;
              v177 = v175;
              re::DynamicString::DynamicString((v175 + 8), (v176 + 1));
              *(v177 + 40) = v173;
              ++HIDWORD(v305);
            }
          }

          if (*&v291[0] && (BYTE8(v291[0]) & 1) != 0)
          {
            (*(**&v291[0] + 40))();
          }

          if (v292 && (BYTE8(v292) & 1) != 0)
          {
            (*(*v292 + 40))();
          }

          if (v327)
          {
            if (BYTE8(v327))
            {
              (*(*v327 + 40))();
            }

            v328 = 0u;
            v327 = 0u;
          }

          if (*&v326[8])
          {
            if (v326[16])
            {
              (*(**&v326[8] + 40))();
            }

            memset(&v326[8], 0, 32);
          }

          if (*v326 != -1)
          {
            off_1F5CD02F8[*v326](&v292, v325);
          }

          if (*&__dst[32] != -1)
          {
            off_1F5CD02F8[*&__dst[32]](v325, __dst);
          }
        }

        if (*&v294[0] && (BYTE8(v294[0]) & 1) != 0)
        {
          (*(**&v294[0] + 40))();
        }

        v34 = v256;
        if (v295 && (v296 & 1) != 0)
        {
          (*(*v295 + 40))();
        }

        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          (*(*v298 + 40))();
        }

        ResourcePathAndColorSpaceForTextureProperty = v265;
LABEL_209:

        if (v308 <= v35 + 1)
        {
          v178 = v35 + 1;
        }

        else
        {
          v178 = v308;
        }

        v45 = v307;
        while (v178 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if (v307[14 * v35] < 0)
          {
            goto LABEL_217;
          }
        }

        LODWORD(v35) = v178;
LABEL_217:
        if (v35 == v34)
        {
LABEL_25:
          v38 = [MEMORY[0x1E69DED88] constantMaterialPropertiesWithMaterial:v247];
          re::setFunctionConstantsFromScene(v4, &v266);
          re::gatherMaterialConstants(&v268[24], v247, v38, v306, v303);
          re::setFunctionConstantsFromMaterial(&v266, v313);
          isMaterialAlphaCutout = re::isMaterialAlphaCutout(v38, v39, v40, v41);
          v43 = isMaterialAlphaCutout;
          if (isMaterialAlphaCutout)
          {
            v44 = 1;
          }

          else
          {
            isMaterialAlphaCutout = re::isMaterialTransparent(v38, v306, v303);
            v44 = isMaterialAlphaCutout;
          }

          LODWORD(v5) = v235;
          if (v252)
          {
            v214 = "engine:missingMaterial.rematerialdefinition";
          }

          else
          {
            v215 = *(v4 + 56);
            if (v215)
            {
              v216 = v215 >> 1;
            }

            else
            {
              v216 = v215 >> 1;
            }

            if (v216)
            {
              if (*(v4 + 56))
              {
                v217 = *(v4 + 64);
              }

              else
              {
                v217 = v234;
              }

              v214 = v217;
            }

            else
            {
              if (v238)
              {
                if (v43)
                {
                  v214 = "engine:alphaCutoutPbrOpenSubdiv.rematerialdefinition";
                }

                else if (v44)
                {
                  v214 = "engine:transparentPbrOpenSubdiv.rematerialdefinition";
                }

                else
                {
                  v214 = "engine:pbrOpenSubdiv.rematerialdefinition";
                }
              }

              else if (v43)
              {
                v214 = "engine:alphaCutoutPbr.rematerialdefinition";
              }

              else if (v44)
              {
                v214 = "engine:transparentPbr.rematerialdefinition";
              }

              else
              {
                v214 = "engine:pbr.rematerialdefinition";
              }
            }
          }

          if (v300 && (v301 & 1) != 0)
          {
            (*(*v300 + 40))();
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v303);

          re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v306);
          v219 = *(v4 + 104);
          if (BYTE8(v266))
          {
            v220 = v267;
          }

          else
          {
            v220 = &v266 + 9;
          }

          if (BYTE8(v266))
          {
            v221 = *(&v266 + 1) >> 1;
          }

          else
          {
            v221 = BYTE8(v266) >> 1;
          }

          v222 = re::MaterialAsset::assetType(v218);
          v223 = re::ImportAssetTable::importedAsset(v219, v220, v221, v222);
          if (!v223)
          {
            v224 = re::globalAllocators(0);
            v225 = (*(*v224[2] + 32))(v224[2], 1992, 8);
            bzero(v225, 0x7C8uLL);
            re::MaterialAsset::MaterialAsset(v225);
            re::DynamicString::operator=((v225 + 8), &v266);
            re::AssetHandle::operator=(v225 + 40, v268);
            re::MaterialParameterData::operator=((v225 + 64), &v268[24]);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v225 + 304), v283);
            re::MaterialRenderFlags::operator=((v225 + 352), v286);
            v226 = re::DynamicArray<re::FunctionLink>::operator=(v225 + 376, v287);
            *(v225 + 416) = v290;
            v227 = *(v4 + 104);
            if (BYTE8(v266))
            {
              v228 = v267;
            }

            else
            {
              v228 = &v266 + 9;
            }

            if (BYTE8(v266))
            {
              v229 = *(&v266 + 1) >> 1;
            }

            else
            {
              v229 = BYTE8(v266) >> 1;
            }

            v230 = re::MaterialAsset::assetType(v226);
            v223 = re::ImportAssetTable::addAsset(v227, v228, v229, v225, v230);
          }

          memset(v325, 0, 24);
          if (*(v223 + 8))
          {
            v231 = *(v223 + 16);
          }

          else
          {
            v231 = (v223 + 9);
          }

          v3 = a2;
          re::DynamicArray<re::AssetHandle>::add(a3, v325);
          re::AssetHandle::~AssetHandle(v325);
          re::DynamicArray<re::FunctionLink>::deinit(v287);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v283);
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v280);
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v277);
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v274);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v270);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v268[24]);
          re::AssetHandle::~AssetHandle(v268);
          if (v266 && (BYTE8(v266) & 1) != 0)
          {
            (*(*v266 + 40))();
          }

          v19 = v242;
          goto LABEL_319;
        }

        goto LABEL_28;
      }
    }

    v70 = " and ";
    goto LABEL_66;
  }
}

uint64_t re::usdimport::createFloatKeyframeAnimationFromProperty(id *a1, float a2)
{
  v3 = *a1;
  v4 = [v3 isAnimated];
  if (v4)
  {
    v5 = re::globalAllocators(v4);
    v6 = (*(*v5[2] + 32))(v5[2], 128, 8);
    v7 = re::Timeline::Timeline(v6, 19);
    *(v7 + 72) = 256;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 80) = 0u;
    v8 = (v7 + 80);
    *v7 = &unk_1F5CC1C70;
    v9 = [v3 timeSamples];
    v10 = [v9 arraySize];
    [v9 floatArray:*(v6 + 96) maxCount:v10];
    if (v10)
    {
      v12 = 0;
      v13 = *(v6 + 88);
      while (v13 > v12)
      {
        [v3 floatValueAtTime:*(*(v6 + 96) + 4 * v12)];
        if (*(v6 + 112) <= v12)
        {
          goto LABEL_12;
        }

        *(*(v6 + 120) + 4 * v12) = v14;
        v13 = *(v6 + 88);
        if (v13 <= v12)
        {
          goto LABEL_13;
        }

        *(*(v6 + 96) + 4 * v12) = *(*(v6 + 96) + 4 * v12) * a2;
        if (v10 == ++v12)
        {
          goto LABEL_8;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_12:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_13:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_8:
    *(v6 + 16) = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id re::variantNamesInLodVariantSet(void *a1)
{
  v1 = a1;
  if ([v1 hasVariantSets])
  {
    v2 = [v1 variantsWithVariantSet:@"lodVariant"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void re::appendUsedMaterialsByMeshNodeToTableForHelper(void *a1, int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    isCatmullClarkSurface = re::isCatmullClarkSurface(v5);
  }

  else
  {
    isCatmullClarkSurface = 0;
  }

  v8 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v6];
  if ([v8 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v8;
      v12 = *v24;
      obj = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v23 + 1) + 8 * i) inheritedMaterialBinding];
          if (v14)
          {
            v32 = 0;
            v34 = 0;
            re::ObjCObject::operator=(&v32, v14);
            v33 = *(a3 + 28);
            v34 = isCatmullClarkSurface;
            v15 = [v14 path];
            v16 = [v15 stringValue];
            v17 = [v16 UTF8String];
            v29[0] = isCatmullClarkSurface;
            re::DynamicString::DynamicString(&v30, &v27);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(a3, v29, &v32);
            if (v30)
            {
              if (BYTE8(v30))
              {
                (*(*v30 + 40))();
              }

              v31 = 0u;
              v30 = 0u;
            }

            if (v27)
            {
              if (BYTE8(v27))
              {
                (*(*v27 + 40))();
              }

              v27 = 0u;
              v28 = 0u;
            }
          }
        }

        v9 = obj;
        v11 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v11);
      v8 = v21;
    }
  }

  else
  {
    v9 = [v6 inheritedMaterialBinding];
    if (v9)
    {
      v32 = 0;
      v34 = 0;
      re::ObjCObject::operator=(&v32, v9);
      v33 = *(a3 + 28);
      v34 = isCatmullClarkSurface;
      v18 = [v9 path];
      v19 = [v18 stringValue];
      v20 = [v19 UTF8String];
      v29[0] = isCatmullClarkSurface;
      re::DynamicString::DynamicString(&v30, &v27);
      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(a3, v29, &v32);
      if (v30)
      {
        if (BYTE8(v30))
        {
          (*(*v30 + 40))();
        }

        v31 = 0u;
        v30 = 0u;
      }

      if (v27)
      {
        if (BYTE8(v27))
        {
          (*(*v27 + 40))();
        }

        v27 = 0u;
        v28 = 0u;
      }
    }
  }
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::ImportMaterialSignature>::operator()(&v11, a2);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::addInternal<re::ImportMaterialSignature,re::MaterialInfoUSK const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 48;
  }
}

void re::findSkeletonAndSkeletalAnimationIndices(uint64_t a1, void *a2, re::USDImportContext *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 inheritedSkeletonBinding];
  v7 = v6;
  if (!v6)
  {
LABEL_26:
    *a1 = 1;
    *(a1 + 8) = 0;
    goto LABEL_27;
  }

  v8 = [v6 path];
  v9 = [v8 stringValue];
  v10 = [v9 UTF8String];
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

  v46 = 2 * v11;
  v47 = v10;

  v15 = re::USDImportContext::skeletonIndex(a3, &v46, v44);
  if ((v44[0] & 1) == 0)
  {
    v26 = *re::pipelineLogObjects(v15);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      v34 = v26;
      v35 = [v5 path];
      v36 = [v35 stringValue];
      v37 = [v36 UTF8String];
      v38 = [v7 path];
      v39 = [v38 stringValue];
      v40 = [v39 UTF8String];
      *buf = 136315394;
      *v49 = v37;
      *&v49[8] = 2080;
      *&v49[10] = v40;
      _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeleton: %s.", buf, 0x16u);
    }

    if (v46)
    {
      if (v46)
      {
      }
    }

    goto LABEL_26;
  }

  v16 = v45;
  v17 = [v5 inheritedSkeletonAnimationBinding];
  v41 = v16;
  if (!v17)
  {
    v17 = [v7 inheritedSkeletonAnimationBinding];
    if (!v17)
    {
      v28 = [v5 childIterator];
      v29 = [v28 nextObject];
      if (v29)
      {
        v18 = v29;
        v30 = *MEMORY[0x1E69DEE78];
        while (1)
        {
          v31 = [v18 type];

          if (v31 == v30)
          {
            break;
          }

          v32 = [v28 nextObject];

          v18 = v32;
          if (!v32)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_13;
      }

LABEL_33:

      if (v46)
      {
        if (v46)
        {
        }
      }

      *a1 = 1;
      *(a1 + 8) = 1;
      *(a1 + 16) = v16;
LABEL_27:
      *(a1 + 24) = 0;
      goto LABEL_28;
    }
  }

  v18 = v17;
LABEL_13:
  v19 = [v18 path];
  v20 = [v19 stringValue];
  v21 = [v20 UTF8String];
  v42 = 0;
  v43 = &str_67;
  v22 = re::USDImportContext::skeletalAnimationIndex(a3, &v42, buf);
  v23 = buf[0];
  v24 = *&v49[4];
  if (v42)
  {
    if (v42)
    {
    }
  }

  v42 = 0;
  v43 = &str_67;

  if (v46)
  {
    if (v46)
    {
    }
  }

  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 16) = v41;
  *(a1 + 24) = v23;
  if (v23)
  {
    *(a1 + 32) = v24;
  }

LABEL_28:
}

void re::loadModelFromMeshNode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = *(a5 + 40);
  v11 = v9;
  v12 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v11];
  v38 = a5;
  if ([(_anonymous_namespace_ *)v12 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v12;
    v14 = [(_anonymous_namespace_ *)v13 countByEnumeratingWithState:&v41 objects:&v46 count:16];
    if (v14)
    {
      v15 = v14;
      v35 = a4;
      v36 = a3;
      v37 = a1;
      v16 = *v42;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v41 + 1) + 8 * i) inheritedMaterialBinding];
          v19 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v18];
          if (v19)
          {
            v20 = v19;
            v45[0] = "primvars:";
            v45[1] = 9;
            re::DynamicString::operator=(&v39, v45);
            v21 = [v20 UTF8String];
            v22 = strlen(v21);
            re::DynamicString::append(&v39, v21, v22);

            a3 = v36;
            a1 = v37;
            a4 = v35;
            goto LABEL_14;
          }
        }

        v15 = [(_anonymous_namespace_ *)v13 countByEnumeratingWithState:&v41 objects:&v46 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      a3 = v36;
      a1 = v37;
      a4 = v35;
    }
  }

  else
  {
    v13 = [v11 inheritedMaterialBinding];
    v18 = [MEMORY[0x1E69DED88] firstUVMeshAttributeNameInMaterial:v13];
    if (v18)
    {
      *&v46 = "primvars:";
      *(&v46 + 1) = 9;
      re::DynamicString::operator=(&v39, &v46);
      v23 = [v18 UTF8String];
      v24 = strlen(v23);
      re::DynamicString::append(&v39, v23, v24);
    }

LABEL_14:
  }

  v25 = [v11 inheritedSkeletonBinding];
  v26 = v25;
  v41 = 0uLL;
  if (v25)
  {
    if (a4 == -1)
    {
      v32 = v46;
      v33 = v47;
      v34 = v48;
      *a1 = 0;
      *(a1 + 8) = 100;
      *(a1 + 16) = re::AssetErrorCategory(void)::instance;
      *(a1 + 24) = v32;
      *(a1 + 40) = v33;
      *(a1 + 48) = v34;
      goto LABEL_21;
    }

    v27 = [(_anonymous_namespace_ *)v25 path];
    v28 = [v27 stringValue];
    v29 = [v28 UTF8String];

    v30 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v38 + 56, a4) + 16;
    v31 = strlen(v29);
    *&v41 = v29;
    *(&v41 + 1) = v31;
  }

  else
  {
    v30 = 0;
  }

  re::makeGeomModelDescriptorFromUSKNode(v11, &v39, a3, v10[164], v10[165], v10[163], &v41, v30, a1);
LABEL_21:

  if (v39 && (v40 & 1) != 0)
  {
    (*(*v39 + 40))();
  }
}

void re::loadAllLodModelsForModelPathHelper(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v82 = *MEMORY[0x1E69E9840];
  v64 = a2;
  v65 = a3;
  v63 = a4;
  v14 = a7;
  v75 = 0;
  v73 = 0uLL;
  v72 = 0;
  v74 = 0;
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [v15 isEqualToString:@"card"];

  v17 = [v14 count];
  if (v17)
  {
    re::DynamicArray<re::GeomModelDescriptor>::setCapacity(&v72, v17);
  }

  v18 = &v72;
  [v65 selectVariant:@"default" variantSet:@"lodVariant"];
  v19 = [v64 nodeAtPath:v63];
  if (!*(a8 + 16))
  {
    goto LABEL_67;
  }

  v20 = v19;
  re::loadModelFromMeshNode(&v67, v19, a6, **(a8 + 32), a5);
  if (v67 == 1)
  {
    v56 = v17;
    v54 = v16;
    v60 = v14;
    v21 = [v20 name];
    v22 = [v21 stringValue];
    v23 = [v22 UTF8String];
    if (v23)
    {
      v8 = [v20 name];
      v14 = [v8 stringValue];
      v24 = [v14 UTF8String];
    }

    else
    {
      v24 = "";
    }

    re::DynamicString::format("%s-default", &v78, v24);
    re::DynamicString::operator=(v71, &v78);
    if (v78)
    {
      if (BYTE8(v78))
      {
        (*(*v78 + 40))(v78, *&v79[0]);
      }

      v78 = 0u;
      v79[0] = 0u;
    }

    v53 = a1;
    if (v23)
    {
    }

    re::DynamicArray<re::GeomModelDescriptor>::add(&v72, &v68);
    re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

    if (v54)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v14 = v60;
    if (v26 >= v17)
    {
LABEL_44:
      if (v54)
      {
        [v65 selectVariant:@"card" variantSet:@"lodVariant"];
        v40 = [v64 nodeAtPath:v63];
        re::loadModelFromMeshNode(&v67, v40, a6, *(*(a8 + 32) + 8 * *(a8 + 16) - 8), a5);
        if (v67 != 1)
        {
          v78 = v68;
          re::DynamicString::DynamicString(v79, &v69);
          *v53 = 0;
          *(v53 + 8) = v78;
          v46 = *(&v79[1] + 1);
          *(v53 + 24) = *&v79[0];
          *(v53 + 48) = v46;
          *(v53 + 32) = *(v79 + 8);
          re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

          goto LABEL_65;
        }

        v41 = [v40 name];
        v42 = [v41 stringValue];
        v43 = [v42 UTF8String];
        if (v43)
        {
          v23 = [v40 name];
          v8 = [v23 stringValue];
          v44 = [v8 UTF8String];
        }

        else
        {
          v44 = "";
        }

        v47 = re::DynamicString::format("%s-card", v77, v44);
        v48 = v77[8];
        if (v77[8])
        {
          v49 = *&v77[16];
        }

        else
        {
          v49 = &v77[9];
        }

        re::DynamicString::operator=(v71, &v78);
        if (v78)
        {
          if (BYTE8(v78))
          {
            (*(*v78 + 40))();
          }

          v78 = 0u;
          v79[0] = 0u;
        }

        if (*v77 && (v48 & 1) != 0)
        {
          (*(**v77 + 40))();
        }

        if (v43)
        {
        }

        re::DynamicArray<re::GeomModelDescriptor>::add(&v72, &v68);
        re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

        v14 = v60;
      }

      [v65 selectVariant:@"default" variantSet:@"lodVariant"];
      v50 = v72;
      v72 = 0;
      v51 = v75;
      v75 = 0;
      ++v74;
      *v53 = 1;
      *(v53 + 8) = v50;
      v67 = 0;
      v52 = v73;
      v73 = 0u;
      *(v53 + 16) = v52;
      v68 = 0u;
      *(v53 + 40) = v51;
      v70 = 0;
      v69 = 2;
      *(v53 + 32) = 1;
      re::DynamicArray<re::GeomModelDescriptor>::deinit(&v67);
      goto LABEL_65;
    }

    v55 = a8;
    v27 = 1;
    while (1)
    {
      v28 = [v14 objectAtIndexedSubscript:v26];
      [v65 selectVariant:v28 variantSet:@"lodVariant"];

      v29 = [v64 nodeAtPath:v63];
      v30 = v27;
      v18 = *(a8 + 16);
      if (v18 <= v27)
      {
        break;
      }

      v8 = v29;
      re::loadModelFromMeshNode(&v67, v29, a6, *(*(a8 + 32) + 8 * v27), a5);
      if (v67 != 1)
      {
        v78 = v68;
        re::DynamicString::DynamicString(v79, &v69);
        *v53 = 0;
        *(v53 + 8) = v78;
        v45 = *(&v79[1] + 1);
        *(v53 + 24) = *&v79[0];
        *(v53 + 48) = v45;
        *(v53 + 32) = *(v79 + 8);
        re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

        goto LABEL_65;
      }

      v66 = [v8 name];
      v31 = [v66 stringValue];
      v32 = [v31 UTF8String];
      if (v32)
      {
        v58 = [v8 name];
        v57 = [v58 stringValue];
        v33 = [v57 UTF8String];
      }

      else
      {
        v33 = "";
      }

      v34 = [v14 objectAtIndexedSubscript:v27];
      v35 = [v34 length];
      if (v35)
      {
        v59 = [v14 objectAtIndexedSubscript:v27];
        v36 = [v59 UTF8String];
      }

      else
      {
        v36 = "";
      }

      v37 = re::DynamicString::format("%s-%s", v77, v33, v36);
      v38 = v77[8];
      v23 = *&v77[16];
      if (v77[8])
      {
        v39 = *&v77[16];
      }

      else
      {
        v39 = &v77[9];
      }

      re::DynamicString::operator=(v71, &v78);
      if (v78)
      {
        if (BYTE8(v78))
        {
          (*(*v78 + 40))(v78, *&v79[0]);
        }

        v78 = 0u;
        v79[0] = 0u;
      }

      if (*v77)
      {
        if (v38)
        {
          (*(**v77 + 40))(*v77, v23);
        }

        memset(v77, 0, 32);
      }

      if (v35)
      {
      }

      v14 = v60;
      if (v32)
      {
      }

      re::DynamicArray<re::GeomModelDescriptor>::add(&v72, &v68);
      re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

      ++v26;
      v27 = v30 + 1;
      a8 = v55;
      if (v56 == v26)
      {
        goto LABEL_44;
      }
    }

    v76 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    v78 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    *&v77[14] = 797;
    *&v77[18] = 2048;
    *&v77[20] = v27;
    *&v77[28] = 2048;
    *&v77[30] = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v76 = 0;
    v80 = 0u;
    v81 = 0u;
    memset(v79, 0, sizeof(v79));
    v78 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *(v18 + 52) = "operator[]";
    *&v77[12] = 1024;
    *(v18 + 62) = 797;
    *&v77[18] = 2048;
    *(v18 + 68) = 0;
    *&v77[28] = 2048;
    *(v18 + 78) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v78 = v68;
  re::DynamicString::DynamicString(v79, &v69);
  *a1 = 0;
  *(a1 + 8) = v78;
  v25 = *(&v79[1] + 1);
  *(a1 + 24) = *&v79[0];
  *(a1 + 48) = v25;
  *(a1 + 32) = *(v79 + 8);
  re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);

LABEL_65:
  re::DynamicArray<re::GeomModelDescriptor>::deinit(&v72);
}

re::DynamicString *re::DynamicArray<re::GeomModelDescriptor>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::GeomModelDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::GeomModelDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 216 * v5;
  *v11 = *a2;
  *(v11 + 1) = *(a2 + 1);
  *(v11 + 4) = *(a2 + 4);
  v12 = *(a2 + 16);
  *(v11 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v11 + 16) = v12;
  v13 = *(a2 + 32);
  *(v11 + 24) = *(a2 + 24);
  *(v11 + 32) = v13;
  *(a2 + 32) = 0;
  *(v11 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0;
  *(v11 + 48) = 0u;
  *(v11 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v11 + 48), (a2 + 48));
  *(v11 + 128) = 0;
  *(v11 + 120) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 96) = 0;
  v14 = *(a2 + 104);
  *(v11 + 96) = *(a2 + 96);
  *(v11 + 104) = v14;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v15 = *(v11 + 112);
  *(v11 + 112) = *(a2 + 112);
  *(a2 + 112) = v15;
  v16 = *(v11 + 128);
  *(v11 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  ++*(a2 + 120);
  ++*(v11 + 120);
  *(v11 + 136) = 0u;
  v11 += 136;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11, (a2 + 136));
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 72) = *(a2 + 208);
  v17 = *(a2 + 192);
  *(v11 + 48) = *(a2 + 184);
  *(a2 + 184) = 0;
  v18 = *(a2 + 200);
  *(a2 + 208) = 0;
  v20 = *(v11 + 56);
  v19 = *(v11 + 64);
  *(v11 + 56) = v17;
  *(v11 + 64) = v18;
  *(a2 + 192) = v20;
  *(a2 + 200) = v19;
  result = re::GeomModelDescriptor::reset(a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 192));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 144));
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(a1 + 104);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 56));
    v2 = *(a1 + 48);
    if (v2)
    {

      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {

      *(a1 + 40) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {

      *(a1 + 16) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::loadTransformAndMeshNodes(void *a1, void *a2, uint64_t a3, char a4)
{
  v606 = *MEMORY[0x1E69E9840];
  v524 = a1;
  v7 = a2;
  v8 = *(a3 + 40);
  obj = v8[96];
  v9 = [v7 type];
  v533 = v7;
  v553 = a3;
  v554 = v8;
  v517 = v9;
  if ([MEMORY[0x1E69DED88] isSceneGraphNode:v7] && (objc_msgSend(MEMORY[0x1E69DED88], "isTransformNode:", v7) & 1) != 0)
  {
    goto LABEL_9;
  }

  v10 = [v7 typeName];
  v11 = [v10 stringValue];
  if ([v11 isEqualToString:@"Preliminary_Text"])
  {
LABEL_8:

    v9 = v517;
    goto LABEL_9;
  }

  v12 = [v533 typeName];
  v13 = [v12 stringValue];
  if ([v13 isEqualToString:@"Preliminary_InfiniteColliderPlane"])
  {
LABEL_7:

    a3 = v553;
    goto LABEL_8;
  }

  v14 = [v533 typeName];
  v15 = [v14 stringValue];
  if ([v15 isEqualToString:@"Preliminary_DeformerStack"])
  {

    v8 = v554;
    goto LABEL_7;
  }

  v118 = [v533 typeName];
  v119 = [v118 stringValue];
  v120 = [v119 isEqualToString:@"DeformerStack"];

  a3 = v553;
  v8 = v554;
  v9 = v517;
  if (v120)
  {
LABEL_9:
    if (a4)
    {
      v514 = 0;
      v16 = v533;
      goto LABEL_17;
    }

    v16 = v533;
    v17 = [v533 typeName];
    v18 = [v17 stringValue];
    v19 = [v18 isEqualToString:@"Preliminary_DeformerStack"];
    if ((v19 & 1) == 0)
    {
      v20 = [v533 typeName];
      v21 = [v20 stringValue];
      v22 = [v21 isEqualToString:@"DeformerStack"];

      if (v22)
      {
        v514 = 0;
        a3 = v553;
        v8 = v554;
LABEL_16:
        v9 = v517;
LABEL_17:
        v28 = 0x1E69DE000uLL;
        v29 = [v16 property:@"purpose"];
        v534 = v29;
        if (v29)
        {
          v30 = [v29 stringValue];
          v31 = [v30 isEqualToString:@"guide"];
        }

        else
        {
          v31 = 0;
        }

        v541 = [v16 inheritedSkeletonBinding];
        if (!v541)
        {
          [MEMORY[0x1E69DED88] localTransformWithNode:v16 time:0.0];
          v545 = v35;
          v36 = vmulq_f32(v32, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL))), vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL)));
          v37 = vaddv_f32(*v36.f32);
          v38 = -1.0;
          v39 = vmulq_f32(v32, v32);
          v40 = vmulq_f32(v33, v33);
          v41 = vadd_f32(vzip1_s32(*v39.i8, *v40.i8), vzip2_s32(*v39.i8, *v40.i8));
          v43 = vextq_s8(v39, v39, 8uLL);
          *v43.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v43.f32, *&vextq_s8(v40, v40, 8uLL)), v41));
          v42 = vmulq_f32(v34, v34);
          v43.i32[2] = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
          if ((v36.f32[2] + v37) > 0.0)
          {
            v38 = 1.0;
          }

          v536 = vmulq_n_f32(v43, v38);
          v44 = vdivq_f32(v32, vdupq_lane_s32(*&v536, 0));
          v45 = vdivq_f32(v33, vdupq_lane_s32((v536 >> 32), 0));
          v46 = vdivq_f32(v34, vdupq_laneq_s32(v536, 2));
          v47 = vmulq_f32(v44, v44);
          *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
          v49 = vrsqrte_f32(v48);
          v50 = vmul_f32(v49, vrsqrts_f32(v48, vmul_f32(v49, v49)));
          v607.columns[0] = vmulq_n_f32(v44, vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50))).f32[0]);
          v51 = vmulq_f32(v607.columns[0], v45);
          v52 = vmulq_f32(v607.columns[0], v607.columns[0]);
          v53 = vmulq_f32(v607.columns[0], v46);
          *v52.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v52.i8), vzip2_s32(*v53.i8, *v52.i8)));
          v54 = vsubq_f32(v45, vmulq_n_f32(v607.columns[0], (v51.f32[2] + vaddv_f32(*v51.f32)) / *&v52.i32[1]));
          v55 = vmulq_f32(v54, v54);
          *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
          *v55.f32 = vrsqrte_f32(v56);
          *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
          v607.columns[1] = vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]);
          v57 = vmulq_n_f32(v607.columns[0], *v52.i32 / *&v52.i32[1]);
          v58 = vmulq_f32(v46, v607.columns[1]);
          v59 = vmulq_f32(v607.columns[1], v607.columns[1]);
          *v58.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v59.i8), vzip2_s32(*v58.i8, *v59.i8)));
          v607.columns[3] = vsubq_f32(vsubq_f32(v46, v57), vmulq_n_f32(v607.columns[1], vdiv_f32(*v58.i8, vdup_lane_s32(*v58.i8, 1)).f32[0]));
          v60 = vmulq_f32(v607.columns[3], v607.columns[3]);
          v47.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
          *v60.f32 = vrsqrte_f32(v47.u32[0]);
          *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v60.f32, *v60.f32)));
          v607.columns[2] = vmulq_n_f32(v607.columns[3], vmul_f32(*v60.f32, vrsqrts_f32(v47.u32[0], vmul_f32(*v60.f32, *v60.f32))).f32[0]);
          *v61.i64 = simd_quaternion(v607);
          v62 = v61.i64[1];
          v63 = vextq_s8(v61, v61, 8uLL).u64[0];
          v64 = vmvn_s8(vceq_f32(v63, v63));
          v65 = (v64.i8[0] | v64.i8[4]);
          v66 = (v65 & 1) == 0;
          if (v65)
          {
            v67 = 0;
          }

          else
          {
            v67 = v61.i64[0];
          }

          *v578 = v536;
          if (!v66)
          {
            v62 = 0x3F80000000000000;
          }

          *&v578[24] = v62;
          *&v578[16] = v67;
          *&v578[32] = v545;
          v68 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:{v16, *re::USDImportContext::concatenateLocalTransform(a3, v578).i64}];
          if ([v68 arraySize] >= 2 && *(*(a3 + 40) + 97) == 1)
          {

            if (obj)
            {
              re::TimelineAssetData::TimelineAssetData(v578, 33);
              LOWORD(v580) = 256;
              v584 = 0;
              v581 = 0u;
              v582 = 0u;
              v583 = 0;
              *v578 = &unk_1F5CC0788;
              buf[0] = 1;
              v69 = *a3;
              *(&v580 + 1) = v69;
              if (v69 <= 0.0016667 || fabsf(v69 + -0.0016667) < (((fabsf(v69) + 0.0016667) + 1.0) * 0.00001) || (*(a3 + 32) & 1) == 0)
              {
                BYTE1(v580) = 0;
              }

              re::importSRTSampledAnimationFromUSKNode(v16, v578, v601);
              data = re::Result<re::Unit,re::DetailedError>::operator=(buf, v601);
              if ((v601[0].__r_.__value_.__s.__data_[0] & 1) == 0)
              {
                data = v601[1].__r_.__value_.__l.__data_;
                if (v601[1].__r_.__value_.__r.__words[0])
                {
                  if (v601[1].__r_.__value_.__s.__data_[8])
                  {
                    data = (*(*v601[1].__r_.__value_.__l.__data_ + 40))();
                  }
                }
              }

              if (buf[0] == 1)
              {
                if (*(*(a3 + 40) + 160) == 1)
                {
                  v71 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 848) + 8 * *(a3 + 832) - 8));
                  re::SampledAnimationAssetData<re::GenericSRT<float>>::makeAdditive(v578, v71 + 432);
                }

                re::USDImportContext::setTransformAnimation(a3, v578);
              }

              else
              {
                v378 = *re::pipelineLogObjects(data);
                if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(v601, &buf[8]);
                  if ((v601[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v468 = v601;
                  }

                  else
                  {
                    v468 = v601[0].__r_.__value_.__r.__words[0];
                  }

                  if (buf[32])
                  {
                    v469 = *&buf[40];
                  }

                  else
                  {
                    v469 = &buf[33];
                  }

                  LODWORD(v603[0]) = 136315394;
                  *(v603 + 4) = v468;
                  WORD2(v603[1]) = 2080;
                  *(&v603[1] + 6) = v469;
                  _os_log_error_impl(&dword_1E1C61000, v378, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v603, 0x16u);
                  if (SHIBYTE(v601[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v601[0].__r_.__value_.__l.__data_);
                  }

                  v9 = v517;
                  v28 = 0x1E69DE000;
                }
              }

              if (buf[0] & 1) == 0 && *&buf[24] && (buf[32])
              {
                (*(**&buf[24] + 40))();
              }

              *v578 = &unk_1F5CC07F8;
              if (*(&v581 + 1))
              {
                if (v584)
                {
                  (*(**(&v581 + 1) + 40))();
                }

                v584 = 0;
                v582 = 0uLL;
                *(&v581 + 1) = 0;
                ++v583;
              }

              *v578 = &unk_1F5CC3608;
              v379 = *&v578[40];
              if (*&v578[40])
              {
                if (v578[48])
                {
                  v379 = (*(**&v578[40] + 40))();
                }

                v579 = 0u;
                *&v578[40] = 0u;
              }

              if (v578[24])
              {
                if (v578[24])
                {
                }
              }
            }
          }

          else
          {
          }
        }

        if ([v9 isEqualToString:*MEMORY[0x1E69DEE70]])
        {
          v528 = [v16 property:@"visibility"];
          if (v528)
          {
            v72 = [v528 tokenValue];
            if (v72)
            {
              v73 = v72;
              v74 = [v72 stringValue];
              v75 = [v74 isEqualToString:@"invisible"];

              v28 = 0x1E69DE000uLL;
              if (v75)
              {
LABEL_268:

LABEL_269:
                v9 = v517;
                goto LABEL_270;
              }
            }
          }

          v591 = 0;
          memset(v589, 0, sizeof(v589));
          v590 = 0;
          v568[0] = 0;
          v566 = 0u;
          v567 = 0u;
          *&v568[1] = 0x7FFFFFFFLL;
          if (obj)
          {
            v76 = v8[164] == 1 && re::isCatmullClarkSurface(v16);
            v108 = [*(v28 + 3464) meshGroupsWithNode:v16];
            v546 = v108;
            if ([v108 count])
            {
              v537 = v31;
              v564 = 0u;
              v565 = 0u;
              v562 = 0u;
              v563 = 0u;
              v109 = v108;
              v110 = [v109 countByEnumeratingWithState:&v562 objects:v588 count:16];
              if (v110)
              {
                v111 = v110;
                v112 = *v563;
                do
                {
                  for (i = 0; i != v111; ++i)
                  {
                    if (*v563 != v112)
                    {
                      objc_enumerationMutation(v109);
                    }

                    v114 = [*(*(&v562 + 1) + 8 * i) inheritedMaterialBinding];
                    if (v114)
                    {
                      v601[0].__r_.__value_.__r.__words[0] = 0;
                      v601[0].__r_.__value_.__s.__data_[12] = 0;
                      re::ObjCObject::operator=(&v601[0].__r_.__value_.__l.__data_, v114);
                      LODWORD(v601[0].__r_.__value_.__r.__words[1]) = HIDWORD(v567);
                      v601[0].__r_.__value_.__s.__data_[12] = v76;
                      v115 = [v114 path];
                      v116 = [v115 stringValue];
                      v117 = [v116 UTF8String];
                      v578[0] = v76;
                      re::DynamicString::DynamicString(&v578[8], buf);
                      re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v566, v578, v601);
                      if (*&v578[8])
                      {
                        if (v578[16])
                        {
                          (*(**&v578[8] + 40))();
                        }

                        memset(&v578[8], 0, 32);
                      }

                      if (*buf)
                      {
                        if (buf[8])
                        {
                          (*(**buf + 40))();
                        }

                        memset(buf, 0, 32);
                      }
                    }
                  }

                  v111 = [v109 countByEnumeratingWithState:&v562 objects:v588 count:16];
                }

                while (v111);
              }

              re::createMaterialAssetsFromMaterialTableUSK(v554, &v566, v589);
              a3 = v553;
              v16 = v533;
              LOBYTE(v31) = v537;
            }

            else
            {
              v137 = [v16 inheritedMaterialBinding];
              if (v137)
              {
                v138 = v31;
                v601[0].__r_.__value_.__r.__words[0] = 0;
                v601[0].__r_.__value_.__s.__data_[12] = 0;
                re::ObjCObject::operator=(&v601[0].__r_.__value_.__l.__data_, v137);
                LODWORD(v601[0].__r_.__value_.__r.__words[1]) = HIDWORD(v567);
                v601[0].__r_.__value_.__s.__data_[12] = v76;
                v139 = [v137 path];
                v31 = [v139 stringValue];
                v140 = [v31 UTF8String];
                v578[0] = v76;
                re::DynamicString::DynamicString(&v578[8], buf);
                re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v566, v578, v601);
                if (*&v578[8])
                {
                  if (v578[16])
                  {
                    (*(**&v578[8] + 40))();
                  }

                  memset(&v578[8], 0, 32);
                }

                v8 = v554;
                if (*buf)
                {
                  if (buf[8])
                  {
                    (*(**buf + 40))();
                  }

                  memset(buf, 0, 32);
                }

                a3 = v553;
                LOBYTE(v31) = v138;
              }

              re::createMaterialAssetsFromMaterialTableUSK(v8, &v566, v589);
              re::addPhysicsMaterialAsset(v137, a3, v8, &v566);
            }

            memset(buf, 0, 32);
            re::importVertexCacheAnimationFromUSKNode(v16, buf, v578, *a3);
            if (v578[0])
            {
              v142 = v546;
              if (*&buf[16])
              {
                re::USDImportContext::setVertexCacheAnimation(a3, buf);
              }
            }

            else
            {
              v143 = *re::pipelineLogObjects(v141);
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                v424 = [v16 path];
                v425 = [v424 stringValue];
                v426 = [v425 UTF8String];
                if (v578[32])
                {
                  v427 = *&v578[40];
                }

                else
                {
                  v427 = &v578[33];
                }

                LODWORD(v601[0].__r_.__value_.__l.__data_) = 136315394;
                *(v601[0].__r_.__value_.__r.__words + 4) = v426;
                WORD2(v601[0].__r_.__value_.__r.__words[1]) = 2080;
                *(&v601[0].__r_.__value_.__r.__words[1] + 6) = v427;
                _os_log_error_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_ERROR, "Mesh (%s) failed to import vertex cache: %s.", v601, 0x16u);

                a3 = v553;
              }

              v142 = v546;
            }

            if (v578[0] & 1) == 0 && *&v578[24] && (v578[32])
            {
              (*(**&v578[24] + 40))();
            }

            re::FixedArray<re::VertexCacheAnimationData::FrameData>::deinit(&buf[8]);
          }

          v560 = 0;
          v561 = 0;
          v144 = v541;
          if (!v541)
          {
            v152 = 0;
LABEL_179:
            v164 = v31;
            v165 = v568[0];
            if (v568[0])
            {
              v166 = 0;
              v167 = v567;
              while (1)
              {
                v168 = *v167;
                v167 += 18;
                if (v168 < 0)
                {
                  break;
                }

                if (v568[0] == ++v166)
                {
                  LODWORD(v166) = v568[0];
                  break;
                }
              }
            }

            else
            {
              LODWORD(v166) = 0;
            }

            if (v166 != v568[0])
            {
              v169 = v567;
              while (1)
              {
                v170 = MEMORY[0x1E69DED88];
                v171 = *(v169 + 72 * v166 + 48);
                v172 = [v170 firstUVMeshAttributeNameInMaterial:v171];

                if (v172)
                {
                  break;
                }

                if (v568[0] <= v166 + 1)
                {
                  v173 = v166 + 1;
                }

                else
                {
                  v173 = v568[0];
                }

                v169 = v567;
                a3 = v553;
                while (v173 - 1 != v166)
                {
                  LODWORD(v166) = v166 + 1;
                  if ((*(v567 + 72 * v166) & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }
                }

                LODWORD(v166) = v173;
LABEL_196:
                if (v166 == v165)
                {
                  goto LABEL_199;
                }
              }

              *v578 = "primvars:";
              *&v578[8] = 9;
              re::DynamicString::operator=(&v558, v578);
              v174 = [v172 UTF8String];
              v175 = strlen(v174);
              re::DynamicString::append(&v558, v174, v175);

              a3 = v553;
            }

LABEL_199:
            if (!(v164 & 1 | ((obj & 1) == 0)))
            {
              v176 = *(v554 + 163);
              v177 = [v16 customMetadataWithKey:@"RE:mesh:v1:importAllMeshAttributes"];
              v178 = v177;
              if (v177)
              {
                v176 = [v177 BOOLValue];
              }

              re::makeGeomModelDescriptorFromUSKNode(v16, &v558, &v566, *(v554 + 164), *(v554 + 165), v176 & 1, &v560, v152, v578);
              if (v578[0] == 1)
              {
                v538 = v16;
                v180 = [v538 property:@"skel:blendShapeTargets"];
                if (v180)
                {
                  v519 = v180;
                  v522 = v178;
                  obja = [v180 objectPathArray];
                  if (obja)
                  {
                    v602 = 0u;
                    memset(v601, 0, sizeof(v601));
                    v181 = [obja countByEnumeratingWithState:v601 objects:buf count:16];
                    if (v181)
                    {
                      v182 = v181;
                      v183 = *v601[0].__r_.__value_.__r.__words[2];
                      do
                      {
                        v184 = 0;
                        do
                        {
                          if (*v601[0].__r_.__value_.__r.__words[2] != v183)
                          {
                            objc_enumerationMutation(obja);
                          }

                          v185 = *(v601[0].__r_.__value_.__l.__size_ + 8 * v184);
                          v186 = v185;
                          if (v185)
                          {
                            v187 = [v185 stringValue];
                            v188 = [v187 UTF8String];
                            if (v188)
                            {
                              v189 = *v188;
                              if (*v188)
                              {
                                v190 = v188[1];
                                if (v190)
                                {
                                  v191 = (v188 + 2);
                                  do
                                  {
                                    v189 = 31 * v189 + v190;
                                    v192 = *v191++;
                                    v190 = v192;
                                  }

                                  while (v192);
                                }
                              }
                            }

                            else
                            {
                              v189 = 0;
                            }

                            v603[0] = 2 * v189;
                            v603[1] = v188;
                            v193 = re::USDImportContext::blendShapeIndex(a3, v603, v576);
                            if (v603[0])
                            {
                              if (v603[0])
                              {
                              }
                            }

                            v603[0] = 0;
                            v603[1] = &str_67;

                            if (v576[0] == 1)
                            {
                              v194 = re::BucketArray<re::USDImportContextBlendShapeData,8ul>::operator[](a3 + 264, v577);
                              v195 = *(v194 + 40);
                              v196 = *&v578[24];
                              if (v195 >= *&v578[24])
                              {
                                v197 = [MEMORY[0x1E695DF88] dataWithLength:12 * v195];
                                memcpy([v197 mutableBytes], *(v194 + 48), 12 * *(v194 + 40));
                                v199 = *(v194 + 40);
                              }

                              else
                              {
                                v197 = [MEMORY[0x1E695DF88] dataWithLength:12 * v195 + 12];
                                memcpy([v197 mutableBytes], *(v194 + 48), 12 * v195);
                                v198 = [v197 mutableBytes] + 12 * *(v194 + 40);
                                *v198 = 0;
                                *(v198 + 8) = 0;
                                v199 = *(v194 + 40) + 1;
                              }

                              v200 = v197;
                              v201 = v200;
                              v572 = v200;
                              LOBYTE(v573) = 11;
                              v574 = v199;
                              v575 = xmmword_1E3068140;
                              v202 = *(v194 + 88);
                              if (v202 == *&v578[24])
                              {
                                if (v202)
                                {
                                  v203 = [MEMORY[0x1E695DF88] dataWithLength:4 * v202];
                                  if (v195 < v196 && *&v578[24])
                                  {
                                    v204 = 0;
                                    v205 = v199 - 1;
                                    do
                                    {
                                      *([v203 mutableBytes] + 4 * v204++) = v205;
                                    }

                                    while (v204 < *&v578[24]);
                                  }

                                  memcpy([v203 mutableBytes], *(v194 + 96), 4 * *(v194 + 88));
                                  v206 = v203;
                                  v570.__r_.__value_.__r.__words[0] = v206;
                                  v570.__r_.__value_.__s.__data_[8] = 5;
                                  v570.__r_.__value_.__r.__words[2] = *&v578[24];
                                  v571 = xmmword_1E3068150;
                                  re::DynamicString::format("%s|blendTargetPosDeltas", v592, *(v194 + 24));
                                  re::GeomModelDescriptor::setAttribute(&v578[8], v592, 1, &v572, &v570, v603);
                                  v207 = *v592;
                                  v16 = v533;
                                  if (*v592 && (v592[8] & 1) != 0)
                                  {
                                    v207 = (*(**v592 + 40))();
                                  }

                                  a3 = v553;
                                  if ((v603[0] & 1) == 0)
                                  {
                                    v208 = *re::pipelineLogObjects(v207);
                                    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                                    {
                                      v216 = v208;
                                      v526 = *(v194 + 24);
                                      if (v586[40])
                                      {
                                        v217 = *&v587[7];
                                      }

                                      else
                                      {
                                        v217 = v587;
                                      }

                                      v218 = [v538 name];
                                      v219 = [v218 stringValue];
                                      v220 = [v219 UTF8String];
                                      *v592 = 136315650;
                                      *&v592[4] = v526;
                                      v593 = 2080;
                                      v594 = v217;
                                      v16 = v533;
                                      v595 = 2080;
                                      v596 = v220;
                                      _os_log_error_impl(&dword_1E1C61000, v216, OS_LOG_TYPE_ERROR, "Could not store blend shape '%s' in geomModel '%s' for node '%s'\n", v592, 0x20u);

                                      a3 = v553;
                                    }

                                    if (v603[0] & 1) == 0 && v603[3] && (v604)
                                    {
                                      (*(*v603[3] + 40))();
                                    }
                                  }

LABEL_251:
                                  goto LABEL_252;
                                }
                              }

                              else
                              {
                                v209 = *re::pipelineLogObjects(v200);
                                if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                                {
                                  v210 = v209;
                                  v211 = *(v194 + 24);
                                  v212 = [v538 name];
                                  v213 = [v212 stringValue];
                                  v214 = [v213 UTF8String];
                                  v215 = *(v194 + 88);
                                  LODWORD(v603[0]) = 136315906;
                                  *(v603 + 4) = v211;
                                  WORD2(v603[1]) = 2080;
                                  *(&v603[1] + 6) = v214;
                                  HIWORD(v603[2]) = 2048;
                                  v603[3] = v215;
                                  v604 = 2048;
                                  *v605 = *&v578[24];
                                  _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_DEFAULT, "Blend shape '%s' in node '%s' has %zu indices but model has %zu vertices. Point indices will be ignored.", v603, 0x2Au);
                                }
                              }

                              re::DynamicString::format("%s|blendTargetPosDeltas", v603, *(v194 + 24));
                              re::GeomModelDescriptor::setAttribute(&v578[8], v603, 1, &v572, 0, v569);
                              a3 = v553;
                              v16 = v533;
                              if ((v569[0] & 1) == 0 && *(&v569[1] + 1))
                              {
                                if (v569[2])
                                {
                                  (*(**(&v569[1] + 1) + 40))();
                                }

                                memset(&v569[1] + 8, 0, 32);
                              }

                              if (v603[0] && (v603[1] & 1) != 0)
                              {
                                (*(*v603[0] + 40))();
                              }

                              goto LABEL_251;
                            }
                          }

LABEL_252:

                          ++v184;
                        }

                        while (v184 != v182);
                        v221 = [obja countByEnumeratingWithState:v601 objects:buf count:16];
                        v182 = v221;
                      }

                      while (v221);
                    }
                  }

                  v180 = v519;
                  v178 = v522;
                }

                re::USDImportContext::setModel(a3, &v578[8]);
                v222 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 848) + 8 * *(a3 + 832) - 8));
                re::DynamicArray<re::AssetHandle>::operator=(v222 + 808, v589);
              }

              else
              {
                v223 = *re::pipelineLogObjects(v179);
                if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(buf, &v578[8]);
                  v428 = buf[23] >= 0 ? buf : *buf;
                  v429 = (v578[32] & 1) != 0 ? *&v578[40] : &v578[33];
                  LODWORD(v601[0].__r_.__value_.__l.__data_) = 136315394;
                  *(v601[0].__r_.__value_.__r.__words + 4) = v428;
                  WORD2(v601[0].__r_.__value_.__r.__words[1]) = 2080;
                  *(&v601[0].__r_.__value_.__r.__words[1] + 6) = v429;
                  _os_log_error_impl(&dword_1E1C61000, v223, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v601, 0x16u);
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

              re::updateMeshOverrideCompileOptions(a3, v16);
              re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(v578);
            }

            if (v558 && (v559 & 1) != 0)
            {
              (*(*v558 + 40))();
            }

            re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(&v566);
            re::DynamicArray<re::AssetHandle>::deinit(v589);
            goto LABEL_268;
          }

          v145 = [(_anonymous_namespace_ *)v541 path];
          v146 = [v145 stringValue];
          v147 = [v146 UTF8String];
          if (v147)
          {
            v148 = *v147;
            if (*v147)
            {
              v149 = v147[1];
              if (v149)
              {
                v150 = (v147 + 2);
                do
                {
                  v148 = 31 * v148 + v149;
                  v151 = *v150++;
                  v149 = v151;
                }

                while (v151);
              }
            }
          }

          else
          {
            v148 = 0;
          }

          *&buf[8] = v147;
          *buf = 2 * v148;

          v153 = re::USDImportContext::skeletonIndex(a3, buf, v601);
          if (v601[0].__r_.__value_.__s.__data_[0])
          {
            size = v601[0].__r_.__value_.__l.__size_;
            re::USDImportContext::setSkeletonReference(a3, v601[0].__r_.__value_.__l.__size_);
            v152 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](a3 + 56, size) + 16;
            v560 = *&buf[8];
            v561 = strlen(*&buf[8]);
            v155 = [v16 inheritedSkeletonAnimationBinding];
            if (v155 || ([(_anonymous_namespace_ *)v541 inheritedSkeletonAnimationBinding], (v155 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v156 = v155;
            }

            else
            {
              v385 = [v16 childIterator];
              v156 = [v385 nextObject];
              if (v156)
              {
                v386 = v31;
                v387 = *MEMORY[0x1E69DEE78];
                while (1)
                {
                  v388 = [v156 type];

                  if (v388 == v387)
                  {
                    break;
                  }

                  v389 = [v385 nextObject];

                  v156 = v389;
                  if (!v389)
                  {
                    goto LABEL_520;
                  }
                }

                v156 = v156;

LABEL_520:
                a3 = v553;
                LOBYTE(v31) = v386;
              }

              if (!v156)
              {
                goto LABEL_176;
              }
            }

            if (obj)
            {
              v157 = v31;
              v158 = [v156 path];
              [v158 stringValue];
              v160 = v159 = a3;
              v161 = [v160 UTF8String];
              *v578 = 0;
              *&v578[8] = &str_67;
              v162 = re::USDImportContext::skeletalAnimationIndex(v159, v578, v603);
              if (v578[0])
              {
                if (v578[0])
                {
                }
              }

              *&v578[8] = &str_67;
              *v578 = 0;

              if (v603[0])
              {
                a3 = v553;
                re::USDImportContext::setSkeletalAnimationReference(v553, v603[1]);
                v16 = v533;
              }

              else
              {
                v375 = *re::pipelineLogObjects(v163);
                a3 = v553;
                v16 = v533;
                if (os_log_type_enabled(v375, OS_LOG_TYPE_ERROR))
                {
                  v463 = [v533 path];
                  v31 = [v463 stringValue];
                  v464 = [v31 UTF8String];
                  v465 = [v156 path];
                  v466 = [v465 stringValue];
                  v467 = [v466 UTF8String];
                  *v578 = 136315394;
                  *&v578[4] = v464;
                  *&v578[12] = 2080;
                  *&v578[14] = v467;
                  _os_log_error_impl(&dword_1E1C61000, v375, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeletal animation: %s.", v578, 0x16u);

                  v16 = v533;
                  LOBYTE(v31) = v157;

                  a3 = v553;
                }
              }
            }
          }

          else
          {
            v156 = *re::pipelineLogObjects(v153);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v418 = [v16 path];
              v419 = [v418 stringValue];
              v420 = [v419 UTF8String];
              [(_anonymous_namespace_ *)v541 path];
              v31 = v421 = v31;
              v422 = [v31 stringValue];
              v423 = [v422 UTF8String];
              *v578 = 136315394;
              *&v578[4] = v420;
              a3 = v553;
              *&v578[12] = 2080;
              *&v578[14] = v423;
              _os_log_error_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_ERROR, "Mesh (%s) could not find to skeleton: %s.", v578, 0x16u);

              LOBYTE(v31) = v421;
            }

            v152 = 0;
          }

LABEL_176:

          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          goto LABEL_179;
        }

        if ([v9 isEqualToString:*MEMORY[0x1E69DEE80]])
        {
          v77 = [v16 path];
          v78 = [v77 stringValue];
          v79 = [v78 UTF8String];
          *buf = 0;
          *&buf[8] = &str_67;
          v80 = v79;
          a3 = v553;
          v81 = re::USDImportContext::skeletonIndex(v553, buf, v578);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          *&buf[8] = &str_67;
          *buf = 0;

          if (v578[0])
          {
            v83 = *(*(v553 + 106) + 8 * *(v553 + 104) - 8);
            v84 = *(re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v553 + 624, v83) + 872);
            v9 = v517;
            if (v84 == -1)
            {
              v84 = v83;
            }

            re::USDImportContext::setSkeletonEntity(v553, v84, *&v578[8]);
          }

          else
          {
            v103 = *re::pipelineLogObjects(v82);
            v9 = v517;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = v103;
              v105 = [v16 path];
              v106 = [v105 stringValue];
              v107 = [v106 UTF8String];
              *buf = 136315138;
              *&buf[4] = v107;
              _os_log_error_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_ERROR, "Skeleton entity (%s) does not have a valid skeleton index.", buf, 0xCu);

              v9 = v517;
            }
          }

          goto LABEL_270;
        }

        v85 = *MEMORY[0x1E69DEE58];
        if (([v9 isEqualToString:*MEMORY[0x1E69DEE58]] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE50]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE90]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE48]) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69DEE60]) & 1) == 0 && !re::importPhysicsIsSceneGroundPlane(v16))
        {
          v451 = [v9 isEqualToString:*MEMORY[0x1E69DEE88]];
          if (v451)
          {
            v452 = re::globalAllocators(v451);
            v453 = (*(*v452[2] + 32))(v452[2], 72, 8);
            *v453 = 0u;
            *(v453 + 16) = 0u;
            *(v453 + 32) = 0u;
            *(v453 + 20) = 0x13F800000;
            *(v453 + 56) = 0;
            *(v453 + 64) = 0;
            *(v453 + 48) = 0;
            *v578 = v453;
            operator new();
          }

          v458 = [v16 typeName];
          v459 = [v458 stringValue];
          v460 = [v459 isEqualToString:@"Preliminary_Text"];

          if (!v460)
          {
            v9 = v517;
            if ([MEMORY[0x1E69DED88] isTransformNode:v16] && obj)
            {
              v470 = [v16 inheritedMaterialBinding];
              memset(v578, 0, 36);
              *&v578[36] = 0x7FFFFFFFLL;
              if (v470)
              {
                v603[0] = 0;
                BYTE4(v603[1]) = 0;
                re::ObjCObject::operator=(v603, v470);
                LODWORD(v603[1]) = *&v578[28];
                BYTE4(v603[1]) = 0;
                v471 = [v470 path];
                v472 = [v471 stringValue];
                v473 = [v472 UTF8String];
                buf[0] = 0;
                re::DynamicString::DynamicString(&buf[8], v601);
                re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v578, buf, v603);
                if (*&buf[8])
                {
                  if (buf[16])
                  {
                    (*(**&buf[8] + 40))();
                  }

                  memset(&buf[8], 0, 32);
                }

                a3 = v553;
                if (v601[0].__r_.__value_.__r.__words[0])
                {
                  if (v601[0].__r_.__value_.__s.__data_[8])
                  {
                    (*(*v601[0].__r_.__value_.__l.__data_ + 40))();
                  }

                  memset(v601, 0, 32);
                }

                re::addPhysicsMaterialAsset(v470, v553, v8, v578);
                v9 = v517;
              }

              re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v578);
            }

            goto LABEL_270;
          }

          v461 = [v16 property:@"content"];
          objb = v461;
          if (v461)
          {
            v525 = [v16 property:@"content"];
            v521 = [v525 stringValue];
            v461 = [v521 UTF8String];
            v462 = v461;
          }

          else
          {
            v462 = "";
          }

          v477 = [v16 property:@"font"];
          v552 = v477;
          if (v477)
          {
            v518 = [v16 property:@"font"];
            v515 = [v518 stringArray];
            v512 = [v515 objectAtIndex:0];
            v477 = [v512 UTF8String];
            v478 = v477;
          }

          else
          {
            v478 = "Helvetica";
          }

          v479 = [v16 property:@"pointSize"];
          if (v479)
          {
            v510 = [v16 property:@"pointSize"];
            [v510 doubleValue];
            v481 = v480 * 0.00035277723;
          }

          else
          {
            v481 = 0.0507999211;
          }

          *(&v579 + 1) = v481;
          v482 = [v16 property:@"width"];
          if (v482)
          {
            v509 = [v16 property:@"width"];
            [v509 doubleValue];
          }

          else
          {
            v483 = 0x3FE3333333333333;
          }

          v580 = v483;
          [v16 property:@"height"];
          v530 = v540 = v479;
          if (v530)
          {
            v508 = [v16 property:@"height"];
            [v508 doubleValue];
          }

          else
          {
            v484 = 0x3FC3333333333333;
          }

          *&v581 = v484;
          v485 = [v16 property:@"depth"];
          if (v485)
          {
            v507 = [v16 property:@"depth"];
            [v507 doubleValue];
          }

          else
          {
            v486 = 0x3FC999999999999ALL;
          }

          *(&v581 + 1) = v486;
          v487 = v578;
          v488 = [v16 property:@"wrapMode"];
          v489 = v488;
          v532 = v482;
          if (v488)
          {
            v506 = [v16 property:@"wrapMode"];
            v505 = [v506 stringValue];
            v488 = [v505 UTF8String];
            v490 = v488;
          }

          else
          {
            v490 = "flowing";
          }

          v491 = [v16 property:@"horizontalAlignment"];
          v492 = v16;
          v493 = v491;
          if (v491)
          {
            v31 = [v492 property:@"horizontalAlignment"];
            v482 = [v31 stringValue];
            v491 = [v482 UTF8String];
            v494 = v491;
          }

          else
          {
            v494 = "center";
          }

          v495 = [v492 property:@"verticalAlignment"];
          v496 = v495;
          if (v495)
          {
            v492 = [v492 property:@"verticalAlignment"];
            v487 = [v492 stringValue];
            v495 = [v487 UTF8String];
            v497 = v495;
          }

          else
          {
            v497 = "center";
          }

          re::USDImportContext::setText3D(v553, v578);
          re::USDImportContext::GeomText3D::~GeomText3D(v578);
          if (v496)
          {
          }

          if (v493)
          {
          }

          if (v489)
          {
          }

          a3 = v553;
          v16 = v533;
          if (v485)
          {
          }

          if (v530)
          {
          }

          if (v532)
          {
          }

          if (v540)
          {
          }

          if (v552)
          {
          }

          if (objb)
          {
          }

          v498 = [v533 inheritedMaterialBinding];
          if (v498)
          {
            *&v569[0] = 0;
            BYTE12(v569[0]) = 0;
            re::ObjCObject::operator=(v569, v498);
            *&buf[32] = 0;
            memset(buf, 0, 28);
            memset(v578, 0, 36);
            *&v578[36] = 0x7FFFFFFFLL;
            v499 = [v498 path];
            v500 = [v499 stringValue];
            v501 = [v500 UTF8String];
            v601[0].__r_.__value_.__s.__data_[0] = 0;
            re::DynamicString::DynamicString(&v601[0].__r_.__value_.__r.__words[1], v603);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v578, v601, v569);
            if (v601[0].__r_.__value_.__l.__size_)
            {
              if (v601[0].__r_.__value_.__s.__data_[16])
              {
                (*(*v601[0].__r_.__value_.__l.__size_ + 40))();
              }

              memset(&v601[0].__r_.__value_.__r.__words[1], 0, 32);
            }

            a3 = v553;
            if (v603[0])
            {
              if (v603[1])
              {
                (*(*v603[0] + 40))();
              }

              memset(v603, 0, sizeof(v603));
            }

            re::createMaterialAssetsFromMaterialTableUSK(v554, v578, buf);
            re::USDImportContext::setMeshMaterials(v553, buf);
            re::addPhysicsMaterialAsset(v498, v553, v554, v578);
            re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v578);
            re::DynamicArray<re::AssetHandle>::deinit(buf);
          }

          goto LABEL_269;
        }

        if (!obj)
        {
LABEL_270:

          goto LABEL_271;
        }

        v601[1].__r_.__value_.__l.__size_ = 0;
        memset(v601, 0, 28);
        memset(v578, 0, 36);
        *&v578[36] = 0x7FFFFFFFLL;
        v86 = [v16 inheritedMaterialBinding];
        if (v86)
        {
          v87 = v31;
          *&v569[0] = 0;
          BYTE12(v569[0]) = 0;
          re::ObjCObject::operator=(v569, v86);
          DWORD2(v569[0]) = *&v578[28];
          BYTE12(v569[0]) = 0;
          v88 = [v86 path];
          v89 = [v88 stringValue];
          v90 = [v89 UTF8String];
          buf[0] = 0;
          re::DynamicString::DynamicString(&buf[8], v603);
          re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(v578, buf, v569);
          if (*&buf[8])
          {
            if (buf[16])
            {
              (*(**&buf[8] + 40))();
            }

            memset(&buf[8], 0, 32);
          }

          LOBYTE(v31) = v87;
          if (v603[0])
          {
            if (v603[1])
            {
              (*(*v603[0] + 40))();
            }

            memset(v603, 0, sizeof(v603));
          }

          a3 = v553;
          v9 = v517;
        }

        re::createMaterialAssetsFromMaterialTableUSK(v8, v578, v601);
        if (v31)
        {
LABEL_518:

          re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v578);
          re::DynamicArray<re::AssetHandle>::deinit(v601);
          goto LABEL_270;
        }

        v91 = v16;
        *&buf[40] = 0x3F80000000000000;
        *&buf[32] = 0;
        v92 = [v91 type];

        if (v92 == v85)
        {
          v380 = [v91 property:@"size"];
          v381 = v380;
          v382 = 2.0;
          if (v380)
          {
            v383 = [v380 data];

            if (v383)
            {
              [v381 floatValue];
              v382 = v384;
            }
          }

          buf[0] = 0;
          *&buf[4] = 0x1000100010001;
          *&buf[12] = 0;
          *&buf[16] = v382;
          *&buf[20] = v382;
          *&buf[24] = v382;
          *&buf[28] = 257;
          buf[30] = 0;
          goto LABEL_516;
        }

        v93 = [v91 type];
        v94 = *MEMORY[0x1E69DEE50];

        if (v93 == v94)
        {
          v390 = [v91 property:@"radius"];
          v381 = v390;
          v391 = 1.0;
          if (v390)
          {
            v392 = [v390 data];

            if (v392)
            {
              [v381 floatValue];
              v391 = v393;
            }
          }

          v394 = [v91 property:@"height"];
          v395 = v394;
          v396 = 2.0;
          if (v394)
          {
            v397 = [v394 data];

            if (v397)
            {
              v394 = [v395 floatValue];
              v396 = v398;
            }
          }

          buf[0] = 1;
          *&buf[4] = 65544;
          *&buf[8] = v396;
          *&buf[12] = v391;
          *&buf[16] = 65793;
          v399 = [v91 property:@"axis"];
          v400 = v399;
          if (v399)
          {
            v401 = [v399 data];

            if (v401)
            {
              v402 = [v400 stringValue];
              v403 = [v402 UTF8String];
              v404 = strlen(v403);
              *&v569[0] = v403;
              *(&v569[0] + 1) = v404;
              re::DynamicString::operator=(v603, v569);
            }
          }
        }

        else
        {
          v95 = [v91 type];
          v96 = *MEMORY[0x1E69DEE60];

          if (v95 == v96)
          {
            v405 = [v91 property:@"radius"];
            v381 = v405;
            v406 = 1.0;
            if (v405)
            {
              v407 = [v405 data];

              if (v407)
              {
                [v381 floatValue];
                v406 = v408;
              }
            }

            v409 = [v91 property:@"height"];
            v395 = v409;
            v410 = 2.0;
            if (v409)
            {
              v411 = [v409 data];

              if (v411)
              {
                v409 = [v395 floatValue];
                v410 = v412;
              }
            }

            v413 = [v91 property:@"axis"];
            v400 = v413;
            if (v413)
            {
              v414 = [v413 data];

              if (v414)
              {
                v415 = [v400 stringValue];
                v416 = [v415 UTF8String];
                v417 = strlen(v416);
                *&v569[0] = v416;
                *(&v569[0] + 1) = v417;
                re::DynamicString::operator=(v603, v569);
              }
            }

            buf[0] = 2;
            *&buf[4] = 65544;
            *&buf[8] = v410;
            *&buf[12] = v406;
            *&buf[16] = v406;
            *&buf[20] = 16843009;
            buf[24] = 0;
          }

          else
          {
            v97 = [v91 type];
            v98 = *MEMORY[0x1E69DEE48];

            if (v97 != v98)
            {
              v99 = [v91 type];
              v100 = *MEMORY[0x1E69DEE90];

              if (v99 != v100)
              {

                v102 = *re::pipelineLogObjects(v101);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  v502 = [v91 name];
                  v503 = [v502 stringValue];
                  if (v503)
                  {
                    v91 = [v91 name];
                    v8 = [v91 stringValue];
                    v504 = [v8 UTF8String];
                  }

                  else
                  {
                    v504 = "unnamed";
                  }

                  LODWORD(v603[0]) = 136315138;
                  *(v603 + 4) = v504;
                  _os_log_error_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_ERROR, "Unsupported primitive for node '%s'", v603, 0xCu);
                  if (v503)
                  {
                  }
                }

                a3 = v553;
                goto LABEL_517;
              }

              v454 = [v91 property:@"radius"];
              v381 = v454;
              v455 = 1.0;
              if (v454)
              {
                v456 = [v454 data];

                if (v456)
                {
                  [v381 floatValue];
                  v455 = v457;
                }
              }

              buf[0] = 3;
              *&buf[4] = 8;
              *&buf[8] = v455;
              *&buf[12] = 257;
              buf[14] = 0;
LABEL_516:

              a3 = v553;
              re::USDImportContext::setPrimitiveShape(v553, buf);
              v450 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, *(*(a3 + 848) + 8 * *(a3 + 832) - 8));
              re::DynamicArray<re::AssetHandle>::operator=(v450 + 808, v601);
              re::addPhysicsMaterialAsset(v86, v553, v8, v578);
LABEL_517:
              v9 = v517;
              goto LABEL_518;
            }

            v430 = [v91 property:@"radius"];
            v381 = v430;
            v431 = 0.5;
            if (v430)
            {
              v432 = [v430 data];

              if (v432)
              {
                [v381 floatValue];
                v431 = v433;
              }
            }

            v434 = [v91 property:@"height"];
            v395 = v434;
            v435 = 1.0;
            if (v434)
            {
              v436 = [v434 data];

              if (v436)
              {
                v434 = [v395 floatValue];
                v435 = v437;
              }
            }

            v438 = v435 + v431 * 2.0;
            v439 = [v91 property:@"axis"];
            v400 = v439;
            if (v439)
            {
              v440 = [v439 data];

              if (v440)
              {
                v441 = [v400 stringValue];
                v442 = [v441 UTF8String];
                v443 = strlen(v442);
                *&v569[0] = v442;
                *(&v569[0] + 1) = v443;
                re::DynamicString::operator=(v603, v569);
              }
            }

            buf[0] = 4;
            *&buf[4] = 65544;
            *&buf[8] = 4;
            *&buf[12] = v431;
            *&buf[16] = v438;
            *&buf[20] = 257;
            buf[22] = 0;
          }
        }

        v444 = &v603[1] + 1;
        if (v603[1])
        {
          v444 = v603[2];
        }

        v445 = *v444;
        if (v445 == 90)
        {
          if (v603[1])
          {
            v449 = (v603[2] + 1);
          }

          else
          {
            v449 = &v603[1] + 2;
          }

          v16 = v533;
          v8 = v554;
          if (*v449)
          {
            goto LABEL_512;
          }

          v448 = 0x3F3504F300000000;
          v447 = 1060439283;
        }

        else
        {
          v16 = v533;
          v8 = v554;
          if (v445 != 88)
          {
            goto LABEL_512;
          }

          v446 = (v603[1] & 1) != 0 ? (v603[2] + 1) : &v603[1] + 2;
          if (*v446)
          {
            goto LABEL_512;
          }

          v447 = 0;
          v448 = 0x3F3504F33F3504F3;
        }

        *&buf[32] = v447;
        *&buf[40] = v448;
LABEL_512:

        if (v603[0] && (v603[1] & 1) != 0)
        {
          (*(*v603[0] + 40))();
        }

        goto LABEL_516;
      }

      v17 = [v533 name];
      v18 = [v17 stringValue];
      v23 = [v18 UTF8String];
      v24 = [v533 path];
      v25 = [v24 stringValue];
      v26 = [v25 UTF8String];
      v27 = v23;
      a3 = v553;
      re::USDImportContext::pushNodePath(v553, v27, "(default)", v26);

      v8 = v554;
    }

    v514 = v19 ^ 1;

    goto LABEL_16;
  }

  v16 = v533;
  v121 = [v533 typeName];
  v122 = [v121 stringValue];
  v123 = [v122 isEqualToString:@"Preliminary_Action"];

  if (v123)
  {
    v124 = [v533 property:@"audio"];
    v125 = [v124 resourcePath];
    v126 = [v533 property:@"affectedObjects"];

    v127 = [v126 stringValue];
    v128 = v127;
    if (v125 && v127)
    {
      re::usdimport::createAudioFileAssetForResourcePath(*(v554 + 104), v125, v603);
      v129 = [v533 path];
      v130 = [v129 stringValue];
      v131 = [v130 UTF8String];
      re::AssetHandle::serializationString(v603, buf);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v554 + 264, v578, buf);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (*v578)
      {
        if (v578[8])
        {
          (*(**v578 + 40))();
        }

        memset(v578, 0, 32);
      }

      v132 = [v128 UTF8String];
      if (buf[8])
      {
        v133 = *&buf[16];
      }

      else
      {
        v133 = &buf[9];
      }

      if (buf[8])
      {
        v134 = *&buf[8] >> 1;
      }

      else
      {
        v134 = buf[8] >> 1;
      }

      *&v569[0] = re::innerPathFromPackageRelativePath(v133, v134);
      *(&v569[0] + 1) = v135;
      v136 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v554 + 312, v601);
      if (!v136)
      {
        *&v578[32] = 0;
        memset(v578, 0, 28);
        v136 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v554 + 312, v601, v578);
        re::DynamicArray<re::AssetHandle>::deinit(v578);
      }

      re::DynamicArray<re::AssetHandle>::add(v136, v603);
      if (v601[0].__r_.__value_.__r.__words[0] && (v601[0].__r_.__value_.__s.__data_[8] & 1) != 0)
      {
        (*(*v601[0].__r_.__value_.__l.__data_ + 40))();
      }

      a3 = v553;
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::AssetHandle::~AssetHandle(v603);
    }

    v514 = 0;
    v9 = v517;
  }

  else
  {
    v9 = v517;
    v376 = [v517 isEqualToString:*MEMORY[0x1E69DEEA0]];
    if (v376)
    {
      v377 = *re::pipelineLogObjects(v376);
      if (os_log_type_enabled(v377, OS_LOG_TYPE_DEBUG))
      {
        v474 = v377;
        v475 = [v533 typeName];
        v476 = [v475 stringValue];
        *v578 = 136315138;
        *&v578[4] = [v476 UTF8String];
        _os_log_debug_impl(&dword_1E1C61000, v474, OS_LOG_TYPE_DEBUG, "USD import discovered unknown node, type = %s", v578, 0xCu);

        v9 = v517;
      }
    }

    v514 = 0;
  }

LABEL_271:
  v224 = re::variantNamesInLodVariantSet(v16);
  v225 = [v224 count];

  if (v225)
  {
    v226 = v524;
    v227 = v16;
    v228 = re::variantNamesInLodVariantSet(v227);
    if ([v228 count])
    {
      v229 = [v228 objectAtIndexedSubscript:0];
      v230 = [v229 isEqualToString:@"card"];

      v231 = [v228 objectAtIndexedSubscript:v230];
      v232 = [v231 isEqualToString:@"default"];

      v233 = *(a3 + 40);
      v513 = *(v233 + 164);
      v516 = v233;
      v234 = *(v233 + 96);
      v573 = 0;
      v572 = 0;
      v574 = 0;
      v235 = [v227 dictionaryMetadataWithKey:@"assetInfo" dictionaryKey:@"lodComplexityThresholds"];
      v236 = v235;
      if (v235)
      {
        v237 = [v235 arraySize];
        v238 = v237;
        if (v237)
        {
          [v236 floatArray:v574 maxCount:v238];
        }
      }

      v529 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v239 = [v227 childIterator];
      v240 = [v239 nextObject];
      if (v240)
      {
        v241 = v240;
        v527 = v228;
        v242 = 0;
        v243 = *MEMORY[0x1E69DEE70];
        do
        {
          v244 = [v241 type];
          if (([v244 isEqualToString:v243] & v232) != 1 || v234 == 0)
          {
            re::loadTransformAndMeshNodes(v226, v241, v553, 0);
          }

          else
          {
            v246 = [v241 path];
            [v529 addObject:v246];

            ++v242;
          }

          v247 = [v239 nextObject];

          v241 = v247;
        }

        while (v247);

        a3 = v553;
        v228 = v527;
        if (v242)
        {
          v248 = 0;
          v511 = v226;
          v520 = v227;
          v523 = v242;
          do
          {
            v249 = [v529 objectAtIndexedSubscript:v248];
            v250 = [v226 nodeAtPath:v249];
            v251 = [v250 property:@"purpose"];
            v252 = v251;
            v531 = v248;
            if (v251)
            {
              v253 = [v251 stringValue];
              v254 = [v253 isEqualToString:@"guide"];

              v228 = v527;
            }

            else
            {
              v254 = 0;
            }

            v255 = v226;
            v256 = v227;
            v257 = v249;
            v258 = v228;
            v259 = [v255 nodeAtPath:v257];
            v260 = [v259 inheritedSkeletonBinding];

            if (v260)
            {
              v261 = [v258 count];
              if (v261)
              {
                while (1)
                {
                  v262 = [v258 objectAtIndexedSubscript:0];
                  [v256 selectVariant:v262 variantSet:@"lodVariant"];

                  v263 = [v255 nodeAtPath:v257];
                  v264 = [v263 inheritedSkeletonBinding];

                  if (!v264)
                  {
                    break;
                  }

                  if (!--v261)
                  {
                    goto LABEL_299;
                  }
                }

LABEL_331:
                [v256 selectVariant:@"default" variantSet:@"lodVariant"];

                goto LABEL_332;
              }
            }

            else
            {
              v265 = MEMORY[0x1E69DED88];
              v266 = [v255 nodeAtPath:v257];
              [v265 localTransformWithNode:v266 time:0.0];
              v542 = v268;
              v547 = v267;
              v535 = v270;
              v539 = v269;

              v271 = [v258 count];
              if (v271)
              {
                while (1)
                {
                  v272 = [v258 objectAtIndexedSubscript:0];
                  [v256 selectVariant:v272 variantSet:@"lodVariant"];

                  v273 = [v255 nodeAtPath:v257];
                  v274 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:v273];
                  if ([v274 arraySize] >= 2)
                  {
                    break;
                  }

                  [MEMORY[0x1E69DED88] localTransformWithNode:v273 time:0.0];
                  v279 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v547, v275), vceqq_f32(v542, v276)), vandq_s8(vceqq_f32(v539, v277), vceqq_f32(v535, v278))));

                  if ((v279 & 0x80000000) == 0)
                  {
                    goto LABEL_331;
                  }

                  if (!--v271)
                  {
                    goto LABEL_299;
                  }
                }

                goto LABEL_331;
              }
            }

LABEL_299:
            [v256 selectVariant:@"default" variantSet:@"lodVariant"];

            if ((v254 & 1) == 0)
            {
              v281 = [v255 nodeAtPath:v257];
              v282 = [v281 name];
              v283 = [v282 stringValue];
              v284 = [v283 UTF8String];
              v285 = [v257 stringValue];
              re::USDImportContext::pushNodePath(v553, v284, "(default)", [v285 UTF8String]);

              v286 = [v281 inheritedSkeletonBinding];

              if (!v286)
              {
                [MEMORY[0x1E69DED88] localTransformWithNode:v281 time:0.0];
                v548 = v290;
                v291 = vmulq_f32(v287, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v289, v289, 0xCuLL), v289, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v288, v288), v288, 0xCuLL))), vextq_s8(vuzp1q_s32(v289, v289), v289, 0xCuLL), vextq_s8(vextq_s8(v288, v288, 0xCuLL), v288, 8uLL)));
                v292 = (v291.f32[2] + vaddv_f32(*v291.f32)) <= 0.0;
                v293 = vmulq_f32(v287, v287);
                v294 = vmulq_f32(v288, v288);
                v295 = vadd_f32(vzip1_s32(*v293.i8, *v294.i8), vzip2_s32(*v293.i8, *v294.i8));
                v297 = vextq_s8(v293, v293, 8uLL);
                *v297.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v297.f32, *&vextq_s8(v294, v294, 8uLL)), v295));
                v296 = vmulq_f32(v289, v289);
                v297.i32[2] = sqrtf(v296.f32[2] + vaddv_f32(*v296.f32));
                if (v292)
                {
                  v298 = -1.0;
                }

                else
                {
                  v298 = 1.0;
                }

                v543 = vmulq_n_f32(v297, v298);
                v299 = vdivq_f32(v287, vdupq_lane_s32(*&v543, 0));
                v300 = vdivq_f32(v288, vdupq_lane_s32((v543 >> 32), 0));
                v301 = vdivq_f32(v289, vdupq_laneq_s32(v543, 2));
                v302 = vmulq_f32(v299, v299);
                *&v303 = v302.f32[2] + vaddv_f32(*v302.f32);
                *v302.f32 = vrsqrte_f32(v303);
                *v302.f32 = vmul_f32(*v302.f32, vrsqrts_f32(v303, vmul_f32(*v302.f32, *v302.f32)));
                v608.columns[0] = vmulq_n_f32(v299, vmul_f32(*v302.f32, vrsqrts_f32(v303, vmul_f32(*v302.f32, *v302.f32))).f32[0]);
                v304 = vmulq_f32(v608.columns[0], v300);
                v305 = vmulq_f32(v608.columns[0], v608.columns[0]);
                v306 = vmulq_f32(v608.columns[0], v301);
                *v305.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v306, v306, 8uLL), *&vextq_s8(v305, v305, 8uLL)), vadd_f32(vzip1_s32(*v306.i8, *v305.i8), vzip2_s32(*v306.i8, *v305.i8)));
                v307 = vsubq_f32(v300, vmulq_n_f32(v608.columns[0], (v304.f32[2] + vaddv_f32(*v304.f32)) / *&v305.i32[1]));
                v308 = vmulq_f32(v307, v307);
                *&v309 = v308.f32[2] + vaddv_f32(*v308.f32);
                *v308.f32 = vrsqrte_f32(v309);
                *v308.f32 = vmul_f32(*v308.f32, vrsqrts_f32(v309, vmul_f32(*v308.f32, *v308.f32)));
                v608.columns[1] = vmulq_n_f32(v307, vmul_f32(*v308.f32, vrsqrts_f32(v309, vmul_f32(*v308.f32, *v308.f32))).f32[0]);
                v310 = vsubq_f32(v301, vmulq_n_f32(v608.columns[0], *v305.i32 / *&v305.i32[1]));
                v311 = vmulq_f32(v301, v608.columns[1]);
                v312 = vmulq_f32(v608.columns[1], v608.columns[1]);
                *v311.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v311, v311, 8uLL), *&vextq_s8(v312, v312, 8uLL)), vadd_f32(vzip1_s32(*v311.i8, *v312.i8), vzip2_s32(*v311.i8, *v312.i8)));
                v313 = vsubq_f32(v310, vmulq_n_f32(v608.columns[1], vdiv_f32(*v311.i8, vdup_lane_s32(*v311.i8, 1)).f32[0]));
                v608.columns[3] = vmulq_f32(v313, v313);
                *v312.i32 = v608.columns[3].f32[2] + vaddv_f32(*v608.columns[3].f32);
                *v608.columns[3].f32 = vrsqrte_f32(v312.u32[0]);
                *v608.columns[3].f32 = vmul_f32(*v608.columns[3].f32, vrsqrts_f32(v312.u32[0], vmul_f32(*v608.columns[3].f32, *v608.columns[3].f32)));
                *v608.columns[3].f32 = vmul_f32(*v608.columns[3].f32, vrsqrts_f32(v312.u32[0], vmul_f32(*v608.columns[3].f32, *v608.columns[3].f32)));
                v608.columns[2] = vmulq_n_f32(v313, v608.columns[3].f32[0]);
                *v314.i64 = simd_quaternion(v608);
                v315 = v314.i64[1];
                v316 = vextq_s8(v314, v314, 8uLL).u64[0];
                v317 = vmvn_s8(vceq_f32(v316, v316));
                if ((v317.i8[0] | v317.i8[4]))
                {
                  v318 = 0;
                }

                else
                {
                  v318 = v314.i64[0];
                }

                *buf = v543;
                if ((v317.i8[0] | v317.i8[4]))
                {
                  v315 = 0x3F80000000000000;
                }

                *&buf[24] = v315;
                *&buf[16] = v318;
                *&buf[32] = v548;
                re::USDImportContext::concatenateLocalTransform(v553, buf);
              }

              v319 = v255;
              v320 = v256;
              v321 = v257;
              v322 = v258;
              memset(v569, 0, 36);
              *(&v569[2] + 4) = 0x7FFFFFFFLL;
              v323 = [v322 objectAtIndexedSubscript:0];
              v324 = [v323 isEqualToString:@"card"];

              v325 = [v322 count];
              [v320 selectVariant:@"default" variantSet:@"lodVariant"];
              v326 = [v319 nodeAtPath:v321];
              re::appendUsedMaterialsByMeshNodeToTableForHelper(v326, v513, v569);

              v549 = v324;
              if (v324)
              {
                v327 = 2;
              }

              else
              {
                v327 = 1;
              }

              if (v327 < v325)
              {
                do
                {
                  v328 = [v322 objectAtIndexedSubscript:v327];
                  [v320 selectVariant:v328 variantSet:@"lodVariant"];

                  v329 = [v319 nodeAtPath:v321];
                  re::appendUsedMaterialsByMeshNodeToTableForHelper(v329, v513, v569);

                  ++v327;
                }

                while (v325 != v327);
              }

              if (v549)
              {
                [v320 selectVariant:@"card" variantSet:@"lodVariant"];
                v330 = [v319 nodeAtPath:v321];
                re::appendUsedMaterialsByMeshNodeToTableForHelper(v330, v513, v569);
              }

              [v320 selectVariant:@"default" variantSet:@"lodVariant"];

              *v568 = 0;
              *&v567 = 0;
              v566 = 0uLL;
              DWORD2(v567) = 0;
              re::createMaterialAssetsFromMaterialTableUSK(v516, v569, &v566);
              v331 = [v319 nodeAtPath:v321];
              v332 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v331];
              if ([v332 count])
              {
                v602 = 0u;
                memset(v601, 0, sizeof(v601));
                v333 = v332;
                v334 = [v333 countByEnumeratingWithState:v601 objects:v578 count:16];
                if (v334)
                {
                  v335 = v334;
                  v544 = v332;
                  v550 = v331;
                  v336 = *v601[0].__r_.__value_.__r.__words[2];
                  while (2)
                  {
                    for (j = 0; j != v335; ++j)
                    {
                      if (*v601[0].__r_.__value_.__r.__words[2] != v336)
                      {
                        objc_enumerationMutation(v333);
                      }

                      v338 = [*(v601[0].__r_.__value_.__l.__size_ + 8 * j) inheritedMaterialBinding];
                      if (v338)
                      {
                        v339 = v338;
                        goto LABEL_328;
                      }
                    }

                    v335 = [v333 countByEnumeratingWithState:v601 objects:v578 count:16];
                    if (v335)
                    {
                      continue;
                    }

                    break;
                  }

                  v339 = 0;
LABEL_328:
                  v331 = v550;
                  v332 = v544;
                }

                else
                {
                  v339 = 0;
                }
              }

              else
              {
                v339 = [v331 inheritedMaterialBinding];
              }

              a3 = v553;
              re::addPhysicsMaterialAsset(v339, v553, v516, v569);

              v343 = v319;
              v344 = v320;
              v345 = v321;
              v346 = v322;
              v347 = [v346 objectAtIndexedSubscript:0];
              v348 = [v347 isEqualToString:@"card"];

              v349 = [v346 count];
              memset(buf, 0, 28);
              v600 = 0;
              *&buf[32] = 0u;
              v598 = 0u;
              v599 = 0;
              if (v349)
              {
                re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(buf, v349);
                v350 = v598;
              }

              else
              {
                v350 = 0;
              }

              if (v350 < v349)
              {
                re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&buf[40], v349);
              }

              [v344 selectVariant:@"default" variantSet:@"lodVariant"];
              v351 = [v343 nodeAtPath:v345];
              re::findSkeletonAndSkeletalAnimationIndices(v603, v351, v553);
              if (v603[0] & LOBYTE(v603[1]))
              {
                v352 = &v603[2];
              }

              else
              {
                v352 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
              }

              re::DynamicArray<unsigned long>::add(buf, v352);
              if (v603[0] & LOBYTE(v603[3]))
              {
                v353 = &v604;
              }

              else
              {
                v353 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
              }

              re::DynamicArray<unsigned long>::add(&buf[40], v353);
              if (v603[0] & 1) == 0 && v603[3] && (v604)
              {
                (*(*v603[3] + 40))();
              }

              v551 = v348;
              if (v348)
              {
                v354 = 2;
              }

              else
              {
                v354 = 1;
              }

              if (v354 < v349)
              {
                do
                {
                  v355 = [v346 objectAtIndexedSubscript:v354];
                  [v344 selectVariant:v355 variantSet:@"lodVariant"];

                  v356 = [v343 nodeAtPath:v345];
                  re::findSkeletonAndSkeletalAnimationIndices(v603, v356, v553);
                  if (v603[0] & LOBYTE(v603[1]))
                  {
                    v357 = &v603[2];
                  }

                  else
                  {
                    v357 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                  }

                  re::DynamicArray<unsigned long>::add(buf, v357);
                  if (v603[0] & LOBYTE(v603[3]))
                  {
                    v358 = &v604;
                  }

                  else
                  {
                    v358 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                  }

                  re::DynamicArray<unsigned long>::add(&buf[40], v358);
                  if (v603[0] & 1) == 0 && v603[3] && (v604)
                  {
                    (*(*v603[3] + 40))();
                  }

                  ++v354;
                }

                while (v349 != v354);
              }

              v226 = v511;
              if (v551)
              {
                [v344 selectVariant:@"card" variantSet:@"lodVariant"];
                v359 = [v343 nodeAtPath:v345];
                re::findSkeletonAndSkeletalAnimationIndices(v603, v359, v553);
                if (v603[0] & LOBYTE(v603[1]))
                {
                  v360 = &v603[2];
                }

                else
                {
                  v360 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                }

                re::DynamicArray<unsigned long>::add(buf, v360);
                if (v603[0] & LOBYTE(v603[3]))
                {
                  v361 = &v604;
                }

                else
                {
                  v361 = &re::USDImportContext::NodeStackItem::kInvalidIndex;
                }

                re::DynamicArray<unsigned long>::add(&buf[40], v361);
                if (v603[0] & 1) == 0 && v603[3] && (v604)
                {
                  (*(*v603[3] + 40))();
                }
              }

              [v344 selectVariant:@"default" variantSet:@"lodVariant"];

              re::loadAllLodModelsForModelPathHelper(v603, v343, v344, v345, v553, v569, v346, buf);
              if (LOBYTE(v603[0]) == 1)
              {
                re::FixedArray<float>::FixedArray(&v570, &v572);
                re::USDImportContext::setModelsWithLods(v553, &v603[1], buf, &buf[40], &v570);
                v363 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v553 + 624, *(*(v553 + 106) + 8 * *(v553 + 104) - 8));
                re::DynamicArray<re::AssetHandle>::operator=(v363 + 808, &v566);
                v227 = v520;
                v228 = v527;
                if (v570.__r_.__value_.__r.__words[0] && v570.__r_.__value_.__l.__size_)
                {
                  (*(*v570.__r_.__value_.__l.__data_ + 40))();
                }
              }

              else
              {
                v364 = *re::pipelineLogObjects(v362);
                v227 = v520;
                v228 = v527;
                if (os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
                {
                  std::error_code::message(&v570, &v603[1]);
                  v366 = &v570;
                  if ((v570.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v366 = v570.__r_.__value_.__r.__words[0];
                  }

                  v367 = &v604 + 1;
                  if (v604)
                  {
                    v367 = *&v605[6];
                  }

                  *v589 = 136315394;
                  *&v589[4] = v366;
                  *&v589[12] = 2080;
                  *&v589[14] = v367;
                  _os_log_error_impl(&dword_1E1C61000, v364, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", v589, 0x16u);
                  if (SHIBYTE(v570.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v570.__r_.__value_.__l.__data_);
                  }
                }
              }

              v365 = [v343 nodeAtPath:v345];
              re::updateMeshOverrideCompileOptions(v553, v365);

              if (LOBYTE(v603[0]) == 1)
              {
                re::DynamicArray<re::GeomModelDescriptor>::deinit(&v603[1]);
                v342 = v531;
              }

              else
              {
                v342 = v531;
                if (v603[3] && (v604 & 1) != 0)
                {
                  (*(*v603[3] + 40))();
                }
              }

              if (*&buf[40])
              {
                if (v600)
                {
                  (*(**&buf[40] + 40))();
                }

                v600 = 0;
                v598 = 0uLL;
                *&buf[40] = 0;
                ++v599;
              }

              if (*buf && *&buf[32])
              {
                (*(**buf + 40))();
              }

              re::DynamicArray<re::AssetHandle>::deinit(&v566);
              re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v569);
              re::USDImportContext::popNodePath(v553);
              goto LABEL_398;
            }

LABEL_332:
            v340 = *re::pipelineLogObjects(v280);
            if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v340, OS_LOG_TYPE_DEFAULT, "Lods specified, but leaf level mesh nodes have inconsistent transforms and/or possess animations.  Lods will be ignored.", buf, 2u);
            }

            v228 = v527;

            v341 = [v255 nodeAtPath:v257];
            a3 = v553;
            re::loadTransformAndMeshNodes(v255, v341, v553, v527 != 0);

            v227 = v520;
            v342 = v531;
LABEL_398:

            v248 = v342 + 1;
          }

          while (v248 != v523);
        }
      }

      else
      {
      }

      if (v572 && v573)
      {
        (*(*v572 + 40))();
      }

      v16 = v533;
      v9 = v517;
    }
  }

  else if (!re::uskNodeIsBlendShapeRoot(v16) || (*(*(a3 + 40) + 165) & 1) == 0)
  {
    v368 = [v16 childIterator];
    v369 = [v368 nextObject];
    if (v369)
    {
      v370 = v369;
      do
      {
        v371 = [v16 metadataWithKey:@"kind"];
        v372 = [v371 stringValue];
        v373 = [v372 isEqual:@"sceneLibrary"];

        if ((v373 & 1) == 0)
        {
          re::loadTransformAndMeshNodes(v524, v370, v553, 0);
        }

        v374 = [v368 nextObject];

        v370 = v374;
      }

      while (v374);
    }

    a3 = v553;
    v9 = v517;
  }

  if (v514)
  {
    re::USDImportContext::popNodePath(a3);
  }
}

uint64_t re::SampledAnimationAssetData<re::GenericSRT<float>>::makeAdditive(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v5[0] = *(a1 + 120);
  v5[1] = v3;
  v6[0] = a2;
  v6[1] = 1;
  result = re::AnimationHelper::makeAdditiveForValues<re::GenericSRT<float>>(v5, v6, v5[0], v3);
  *(a1 + 72) = result;
  return result;
}

void re::addPhysicsMaterialAsset(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(v46, 0, sizeof(v46));
  if (re::hasPhysicsMaterialAPI(v5))
  {
    v6 = *(a4 + 32);
    if (v6)
    {
      v7 = 0;
      v8 = *(a4 + 16);
      do
      {
        v9 = *v8;
        v8 += 18;
        if (v9 < 0)
        {
          goto LABEL_8;
        }

        ++v7;
      }

      while (v6 != v7);
      LODWORD(v7) = *(a4 + 32);
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_8:
    if (v7 == v6)
    {
      goto LABEL_9;
    }

    v10 = *(a4 + 16);
    while (1)
    {
      v11 = *(v10 + 72 * v7 + 48);
      v12 = v11;
      if (!v11)
      {
        goto LABEL_24;
      }

      v13 = v11;
      v14 = [v13 path];
      v15 = [v14 stringValue];

      if (!v15)
      {
        v15 = &stru_1F5D319D0;
      }

      if (!re::hasPhysicsMaterialAPI(v13))
      {
        goto LABEL_23;
      }

      re::importPhysicsMaterial(v13, &v47);
      if ((v47 & 1) == 0)
      {
        break;
      }

      v17 = v48;

      if (v17)
      {
        v24 = [v13 path];
        v25 = [v24 stringValue];
        v26 = [v25 UTF8String];

        v27 = *(a3 + 104);
        v28 = strlen(v26);
        v29 = re::PhysicsMaterialAsset::assetType(v28);
        v30 = re::ImportAssetTable::importedAsset(v27, v26, v28, v29);
        if (v30)
        {
          v31 = v30;
          v32 = re::PhysicsFactory::m_defaultAllocator;
          (**v17)(v17);
          v33 = (*(*v32 + 40))(v32, v17);
        }

        else
        {
          v34 = re::globalAllocators(0);
          re::PhysicsMaterial::createGenericMaterial(v17, v34[2]);
          v36 = v35;
          v37 = re::globalAllocators(v35);
          v38 = (*(*v37[2] + 32))(v37[2], 16, 8);
          *v38 = v36;
          v38[1] = v17;
          v39 = *(a3 + 104);
          v40 = strlen(v26);
          v41 = re::PhysicsMaterialAsset::assetType(v40);
          v33 = re::ImportAssetTable::addAsset(v39, v26, v40, v38, v41);
          v31 = v33;
        }

        v48 = 0;
        v49 = 0;
        v47 = 0;
        if (*(v31 + 8))
        {
          v42 = *(v31 + 16);
        }

        else
        {
          v42 = (v31 + 9);
        }

        re::AssetHandle::operator=(v46, &v47);
        re::AssetHandle::~AssetHandle(&v47);

        v43 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a2 + 624, *(*(a2 + 848) + 8 * *(a2 + 832) - 8));
        re::AssetHandle::operator=(v43 + 848, v46);
        goto LABEL_9;
      }

LABEL_24:

      if (*(a4 + 32) <= (v7 + 1))
      {
        v19 = v7 + 1;
      }

      else
      {
        v19 = *(a4 + 32);
      }

      v10 = *(a4 + 16);
      while (v19 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 72 * v7) & 0x80000000) != 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v7) = v19;
LABEL_32:
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    v18 = *re::pipelineLogObjects(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = v15;
      v21 = v18;
      v22 = [(__CFString *)v15 UTF8String];
      v23 = v52;
      if (v51)
      {
        v23 = *&v52[7];
      }

      *buf = 136315394;
      v54 = v22;
      v55 = 2080;
      v56 = v23;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Physics material (%s) import error: %s.", buf, 0x16u);
    }

    if (v47 & 1) == 0 && v50 && (v51)
    {
      (*(*v50 + 40))();
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_9:
  re::AssetHandle::~AssetHandle(v46);
}

void re::updateMeshOverrideCompileOptions(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[106] + 8 * a1[104] - 8);
  v5 = [v3 path];
  v6 = [v5 stringValue];
  v7 = [v6 UTF8String];
  v36 = 0;
  __s2 = &str_67;

  v8 = 0;
  v9 = v4 + 1;
  while (1)
  {
    v10 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[]((a1 + 78), v8);
    v11 = v36;
    if ((v36 ^ *(v10 + 24)) <= 1)
    {
      v12 = v10;
      v13 = *(v10 + 32);
      if (v13 == __s2)
      {
        break;
      }

      v10 = strcmp(v13, __s2);
      if (!v10)
      {
        break;
      }
    }

    if (v9 == ++v8)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  v14 = a1[5];
  v15 = v3;
  v34[0] = 0;
  *&v34[2] = 257;
  v34[4] = 1;
  *&v34[5] = 0x101000000000000;
  v34[13] = 1;
  memset(v35, 0, sizeof(v35));
  DWORD1(v35[2]) = 0x7FFFFFFF;
  v34[1] = *(v14 + 161);
  v34[6] = *(v14 + 164);
  v34[14] = v34[6];
  v16 = [v15 customMetadataWithKey:@"RE:mesh:v1:generateVertexFaceAdjacencyAttributes"];
  v17 = v16;
  if (v16)
  {
    v34[0] = [v16 BOOLValue];
  }

  v18 = [v15 customMetadataWithKey:@"RE:mesh:v1:reorderVertexCaching"];
  v19 = v18;
  if (v18)
  {
    v34[1] = [v18 BOOLValue];
  }

  v20 = [v15 customMetadataWithKey:@"RE:mesh:v1:repairTangents"];
  v21 = v20;
  if (v20)
  {
    v34[2] = [v20 BOOLValue];
  }

  v22 = [v15 customMetadataWithKey:@"RE:mesh:v1:mergeVerticesIfPolygonSoup"];
  v23 = v22;
  if (v22)
  {
    v34[3] = [v22 BOOLValue];
  }

  v24 = [v15 customMetadataWithKey:@"RE:mesh:v1:preserveSharpFeatures"];
  v25 = v24;
  if (v24)
  {
    v34[5] = [v24 BOOLValue];
  }

  v26 = [v15 customMetadataWithKey:@"RE:mesh:v1:forceRetainFaceNormals"];
  v27 = v26;
  if (v26)
  {
    v34[7] = [v26 BOOLValue];
  }

  v28 = [v15 customMetadataWithKey:@"RE:mesh:v1:generateLaplacianStencilDataAttributes"];
  v29 = v28;
  if (v28)
  {
    v34[8] = [v28 BOOLValue];
  }

  v30 = [v15 customMetadataWithKey:@"RE:mesh:v1:computeAdjacentFaceArea"];
  v31 = v30;
  if (v30)
  {
    v34[9] = [v30 BOOLValue];
  }

  *(v12 + 168) = *v34;
  *(v12 + 175) = *&v34[7];
  if ((v12 + 184) != v35)
  {
    if (*(v12 + 184))
    {
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(v12 + 184);
      if (!*&v35[0])
      {
        goto LABEL_32;
      }

      if (*(v12 + 208) < HIDWORD(v35[1]))
      {
        re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(v12 + 184, HIDWORD(v35[1]));
      }

      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(v12 + 184, v35);
    }

    else
    {
      *&v35[0] = 0;
      v32 = *(v12 + 192);
      v33 = *(v12 + 208);
      *(v12 + 192) = 0;
      *(v12 + 200) = 0;
      *(v35 + 8) = v32;
      *(v12 + 208) = xmmword_1E3058120;
      *(&v35[1] + 8) = v33;
    }

    ++*(v12 + 224);
  }

LABEL_32:
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
  if ((v36 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (v36)
  {
  }

LABEL_35:
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v7 + 40;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v13, a1, a2, v6);
  if (HIDWORD(v14) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 88 * HIDWORD(v14) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v14, v13);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = 0;
  v8 = v7 + 40;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = *(a3 + 8);
  *v8 = *a3;
  *(v8 + 8) = v9;
  *a3 = 0;
  *(a3 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a3 + 16);
  *(a3 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a3 + 32);
  *(a3 + 32) = v11;
  ++*(a3 + 24);
  ++*(v8 + 24);
  ++*(a1 + 40);
  return v8;
}

double re::createAnimationAssets(re *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = 0x7FFFFFFFLL;
  if (*(a2 + 16))
  {
    v6 = 0;
    v7 = 0;
    v8 = 112;
    do
    {
      v9 = *(a3 + 136);
      if (v9 <= v7)
      {
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v7;
        v34 = 2048;
        v35 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        v31 = 789;
        v32 = 2048;
        v33 = v7;
        v34 = 2048;
        v35 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(v23 + 13);
      v11 = *(a3 + 152) + v6;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = re::globalAllocators(a1);
      v15 = (*(*v14[2] + 32))(v14[2], 120, 8);
      v3 = *(a2 + 16);
      if (v3 <= v7)
      {
        goto LABEL_14;
      }

      if (v12)
      {
        v3 = v12 >> 1;
      }

      else
      {
        v3 = v12 >> 1;
      }

      if (v12)
      {
        v16 = v13;
      }

      else
      {
        v16 = v11 + 9;
      }

      v17 = *(a2 + 32) + v8;
      re::SampledAnimation<re::SkeletalPose>::SampledAnimation(v15, v17 - 112);
      *v18 = &unk_1F5CAF198;
      v19 = *v17;
      *(v18 + 114) = *(v17 + 2);
      *(v18 + 112) = v19;
      TimelineAsset = re::AssetHelper::makeTimelineAsset(v18, v24);
      v21 = re::TimelineAsset::assetType(TimelineAsset);
      a1 = re::ImportAssetTable::addAsset(v10, v16, v3, TimelineAsset, v21);
      ++v7;
      v8 += 120;
      v6 += 32;
    }

    while (v7 < *(a2 + 16));
  }

  return re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v24);
}

uint64_t re::importSceneWithMDLAsset(void *a1, id *a2, uint64_t a3, CFErrorRef *a4)
{
  v235 = *MEMORY[0x1E69E9840];
  if (*(a3 + 40))
  {
    v7 = *(a3 + 48);
  }

  else
  {
    v7 = (a3 + 41);
  }

  v8 = (a1 + 13);
  v9 = *(a3 + 72);
  v10 = *a2;
  v129 = *a3;
  v130 = *(a3 + 8);
  v131 = *(a3 + 16);
  v132 = *(a3 + 18);
  v133 = *(a3 + 19);
  if (v133 == 1)
  {
    v134 = *(a3 + 20);
  }

  *v135 = *(a3 + 21);
  *&v135[7] = *(a3 + 28);
  v11 = [(_anonymous_namespace_ *)v10 URL];

  v136 = v11;
  *(&v137 + 1) = 0;
  v138 = 0uLL;
  re::DynamicString::setCapacity(&v137, 0);
  memset(v139, 0, 3);
  v140 = 0;
  v141 = 257;
  v142 = v8;
  memset(v143, 0, 36);
  *&v143[36] = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v143, v128, 3);
  v144 = 0;
  v145 = v9;
  v146 = 1;
  memset(v147, 0, sizeof(v147));
  v149 = 0x7FFFFFFFLL;
  memset(v150, 0, sizeof(v150));
  v148 = 0;
  v151 = 0;
  v152 = 0x7FFFFFFFLL;
  memset(v153, 0, sizeof(v153));
  v154 = 0;
  v155 = 0x7FFFFFFFLL;
  memset(v156, 0, sizeof(v156));
  v157 = 0;
  v158 = 0x7FFFFFFFLL;
  v159 = 0;
  if (v7)
  {
    v13 = strlen(v7);
    v210.n128_u64[0] = v7;
    v210.n128_u64[1] = v13;
    re::DynamicString::operator=(&v137, &v210);
  }

  *v196 = *MEMORY[0x1E696E0A8];
  v210.n128_u64[0] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:v196 count:1];
  v15 = v140;
  v140 = v14;

  LOBYTE(v139[0]) = *(a3 + 64);
  *(v139 + 1) = *(a3 + 65);
  BYTE2(v146) = *(a3 + 74);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v147, a3 + 88);
  re::ImportedScene::ImportedScene(&v210);
  re::DynamicArray<re::ImportedScene>::add((a1 + 36), &v210);
  re::DynamicArray<re::AssetHandle>::deinit(&v216 + 8);
  re::AssetHandle::~AssetHandle((&v214 + 8));
  if (*&v213[8])
  {
    if (v213[16])
    {
      (*(**&v213[8] + 40))();
    }

    memset(&v213[8], 0, 32);
  }

  v16 = v211;
  if (v211 && (BYTE8(v211) & 1) != 0)
  {
    v16 = (*(*v211 + 40))();
  }

  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 40, 8);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  if (!a1[38])
  {
    *buf = 0;
    memset(v213, 0, 32);
    v211 = 0uLL;
    v212 = 0uLL;
    v210 = 0uLL;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v196 = 136315906;
    *&v196[4] = "operator[]";
    *&v196[12] = 1024;
    *&v196[14] = 789;
    *&v196[18] = 2048;
    *&v196[20] = 0;
    *&v196[28] = 2048;
    *&v196[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = v18;
  *(a1[40] + 48) = v18;
  v20 = *(a3 + 67);
  v21 = *a2;
  v22 = v21;
  if (v20 == 1)
  {
    v127 = v21;
    v124 = *(a3 + 68);
    v195 = 0;
    v193 = 0;
    v191 = 0;
    v192 = 0;
    v194 = 0;
    v190 = 0;
    v188 = 0;
    v186 = 0;
    v187 = 0;
    v189 = 0;
    v185 = 0;
    v183 = 0;
    v181 = 0;
    v182 = 0;
    v184 = 0;
    *&v211 = 0;
    v210 = 0u;
    v212 = 0u;
    memset(v213, 0, 20);
    DWORD2(v211) = 0;
    *&v213[24] = 0u;
    v214 = 0u;
    v216 = 0u;
    v217 = 0u;
    v215 = 0;
    v218 = 0;
    v219 = 0u;
    memset(v220, 0, sizeof(v220));
    v221 = 0x7FFFFFFFLL;
    v222 = 0u;
    v223 = 0u;
    v225 = 0x7FFFFFFFLL;
    v226 = 0u;
    v227 = 0u;
    v224 = 0;
    v228 = 0;
    v229 = 0x7FFFFFFFLL;
    v234 = 0;
    v232 = 0;
    v233 = 0;
    v230 = 0;
    v231 = 0;
    v23 = [v21 resolver];

    v198 = 0u;
    v202 = 0;
    v199 = 0u;
    v200 = 0u;
    memset(v196, 0, sizeof(v196));
    *&v196[16] = &str_67;
    v196[24] = 1;
    v197 = 0;
    *&v198 = 0;
    DWORD2(v198) = 0;
    v201 = 0;
    re::DynamicArray<re::ecs2::EntityAssetData>::add(v19, v196);
    re::ecs2::EntityAssetData::~EntityAssetData(v196);
    v24 = (*(v19 + 32) + 112 * *(v19 + 16) - 112);
    v25 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(v24);
    *(v25 + 4) = 0x3F8000003F800000;
    *(v25 + 5) = 1065353216;
    *(v25 + 6) = 0;
    *(v25 + 7) = 0x3F80000000000000;
    *(v25 + 8) = 0;
    *(v25 + 9) = 0;
    [v127 upAxis];
    v27 = vmulq_f32(v26, v26);
    v27.f32[0] = fabsf(v27.f32[2] + vaddv_f32(*v27.f32));
    v28.i32[0] = 786163454;
    v29 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v28, v27), 0), xmmword_1E3047680, v26);
    v30 = vmulq_f32(v29, v29);
    v31 = v30.f32[2] + vaddv_f32(*v30.f32);
    if (fabsf(v31) >= 1.0e-10)
    {
      v32 = v31;
      v33 = vrsqrte_f32(LODWORD(v31));
      v34 = vmul_f32(v33, vrsqrts_f32(LODWORD(v32), vmul_f32(v33, v33)));
      v29 = vmulq_n_f32(v29, vmul_f32(v34, vrsqrts_f32(LODWORD(v32), vmul_f32(v34, v34))).f32[0]);
    }

    v35 = vrsqrte_f32(1065353216);
    v36 = vmul_f32(v35, vrsqrts_f32(1065353216, vmul_f32(v35, v35)));
    v37 = vmulq_n_f32(xmmword_1E3047680, vmul_f32(v36, vrsqrts_f32(1065353216, vmul_f32(v36, v36))).f32[0]);
    v38 = vmulq_f32(v29, v37);
    v38.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32);
    if (v38.f32[0] == -1.0 || (v39 = ((fabsf(v38.f32[0]) + 1.0) + 1.0) * 0.00001, v38.f32[0] = v38.f32[0] + 1.0, fabsf(v38.f32[0]) < v39))
    {
      if (fabsf(v29.f32[2]) >= 0.00001)
      {
        v40.i32[0] = 0;
        v40.f32[1] = -v29.f32[2];
        v40.i64[1] = v29.u32[1];
      }

      else
      {
        v40 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v29.f32[1]), v29);
      }

      v46 = v124;
      v47 = vmulq_f32(v40, v40);
      *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v49 = vmulq_n_f32(v40, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
      v50 = 0.0;
    }

    else
    {
      v109 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v29)), v37, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
      v38.f32[0] = sqrtf(v38.f32[0] + v38.f32[0]);
      v50 = v38.f32[0] * 0.5;
      v49 = vdivq_f32(vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL), vdupq_lane_s32(*v38.f32, 0));
      v46 = v124;
    }

    v49.f32[3] = v50;
    *(v25 + 2) = vdupq_lane_s32(v46, 0);
    *(v25 + 3) = v49;
    LOBYTE(v173) = 0;
    WORD1(v173) = 257;
    BYTE4(v173) = 1;
    *(&v173 + 5) = 0x101000000000000;
    BYTE13(v173) = 1;
    v175 = 0u;
    v176 = 0u;
    v174 = 0u;
    DWORD1(v176) = 0x7FFFFFFF;
    BYTE1(v173) = v145;
    BYTE6(v173) = BYTE2(v146);
    BYTE14(v173) = BYTE2(v146);
    memset(buf, 0, 28);
    v204 = 0u;
    v205 = 0u;
    LODWORD(v206[0]) = 0;
    memset(&v206[1], 0, 32);
    LODWORD(v207) = 0;
    memset(v208, 0, sizeof(v208));
    v209 = 0x7FFFFFFFLL;
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    *v180 = 0x7FFFFFFFLL;
    if (re::convertMDLAssetToGeomSceneAndImportAnimation(&v127, "", buf, &v177, &v191, &v186, &v181, &v210, &v173 + 10, a4))
    {
      re::makeMeshAssetDataFromGeomScene(buf, &v173, v196);
      if (v196[0] == 1)
      {
        re::createAnimationAssets(&v128, &v181, &v210);
        v172 = 0;
        v170 = 0;
        v168 = 0;
        v169 = 0;
        v171 = 0;
        if (*(&v217 + 1))
        {
          v52 = (v219 + 16);
          v53 = 32 * *(&v217 + 1);
          do
          {
            v54 = *(v52 - 1);
            if (v54)
            {
              v55 = *v52;
            }

            else
            {
              v55 = v52 - 7;
            }

            v56 = v54 >> 1;
            v57 = v54 >> 1;
            if (*(v52 - 1))
            {
              v58 = v56;
            }

            else
            {
              v58 = v57;
            }

            v59 = re::TimelineAsset::assetType(v51);
            re::ImportAssetTable::compiledAssetPath(v55, v58, v59, &v160);
            v60 = re::DynamicArray<re::DynamicString>::add(&v168, &v160);
            v51 = v160;
            if (v160 && (v161 & 1) != 0)
            {
              v51 = (*(*v160 + 40))(v60);
            }

            v52 += 4;
            v53 -= 32;
          }

          while (v53);
        }

        v61 = re::AnimationLibraryAsset::buildAsset(&v196[8], &v216 + 8, &v213[32], &v212 + 8, &v168);
        v62 = re::globalAllocators(v61);
        v63 = (*(*v62[2] + 32))(v62[2], 1272, 8);
        v64 = re::MeshAsset::MeshAsset(v63, &v196[8]);
        v65 = v142;
        v66 = re::MeshAsset::assetType(v64);
        v67 = re::ImportAssetTable::addAsset(v65, "singleMesh", 10, v63, v66);
        re::DynamicString::DynamicString(&v165, v67);
        v164 = 0;
        v161 = 0;
        v162 = 0;
        v160 = 0;
        v163 = 0;
        re::createMaterialAssetsFromMaterialTable(&v128, &v177, &v160);
        re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(v24);
        re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(v24);
        re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(v24);
        if (v193 && v188)
        {
          re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(v24);
        }

        v68 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(v24);
        v69 = v68;
        if (v166)
        {
          v70 = *&v167[7];
        }

        else
        {
          v70 = v167;
        }

        v71 = re::DynamicArray<re::AssetHandle>::operator=((v69 + 7), &v160);
        if (v61)
        {
          v72 = v142;
          v73 = re::AnimationLibraryAsset::assetType(v71);
          v74 = re::ImportAssetTable::addAsset(v72, "animationLibrary", 16, v61, v73);
          v75 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(v24);
          v76 = v75;
          if (*(v74 + 8))
          {
            v77 = *(v74 + 16);
          }

          else
          {
            v77 = (v74 + 9);
          }
        }

        re::DynamicArray<re::AssetHandle>::deinit(&v160);
        if (v165 && (v166 & 1) != 0)
        {
          (*(*v165 + 40))();
        }

        re::DynamicArray<re::DynamicString>::deinit(&v168);
      }

      re::Result<re::MeshAssetData,re::DetailedError>::~Result(v196);
    }

    re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(&v177);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v208[8]);
    re::DynamicArray<re::GeomSkeleton>::deinit(&v206[2]);
    if (*(&v204 + 1))
    {
      if (v206[1])
      {
        (*(**(&v204 + 1) + 40))();
      }

      v206[1] = 0;
      v205 = 0uLL;
      *(&v204 + 1) = 0;
      ++LODWORD(v206[0]);
    }

    re::DynamicArray<re::GeomModelWithLods>::deinit(buf);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v174);

    v108 = a1;
    if (v230)
    {
      if (v234)
      {
        (*(*v230 + 40))();
      }

      v234 = 0;
      v231 = 0;
      v232 = 0;
      v230 = 0;
      ++v233;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v226);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v222);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v219 + 1);
    re::DynamicArray<re::DynamicString>::deinit(&v216 + 8);
    re::DynamicArray<re::DynamicString>::deinit(&v213[32]);
    if (*(&v212 + 1))
    {
      if (*&v213[24])
      {
        (*(**(&v212 + 1) + 40))();
      }

      *&v213[24] = 0;
      *v213 = 0;
      *&v213[8] = 0;
      *(&v212 + 1) = 0;
      ++*&v213[16];
    }

    re::DynamicArray<re::DynamicString>::deinit(&v210);
    re::DynamicArray<re::SkeletalPoseSampledAnimation>::deinit(&v181);
    re::DynamicArray<re::ModelIOSkinningData>::deinit(&v186);
    re::DynamicArray<re::ModelIOSkeleton>::deinit(&v191);
    v101 = v127;
  }

  else
  {
    v125 = *(a3 + 68);
    v195 = 0;
    v193 = 0;
    v191 = 0;
    v192 = 0;
    v194 = 0;
    v190 = 0;
    v188 = 0;
    v186 = 0;
    v187 = 0;
    v189 = 0;
    v185 = 0;
    v183 = 0;
    v181 = 0;
    v182 = 0;
    v184 = 0;
    *&v211 = 0;
    v210 = 0u;
    v212 = 0u;
    memset(v213, 0, 20);
    DWORD2(v211) = 0;
    *&v213[24] = 0u;
    v214 = 0u;
    v216 = 0u;
    v217 = 0u;
    v215 = 0;
    v218 = 0;
    v219 = 0u;
    memset(v220, 0, sizeof(v220));
    v221 = 0x7FFFFFFFLL;
    v222 = 0u;
    v223 = 0u;
    v225 = 0x7FFFFFFFLL;
    v226 = 0u;
    v227 = 0u;
    v224 = 0;
    v228 = 0;
    v229 = 0x7FFFFFFFLL;
    v234 = 0;
    v232 = 0;
    v233 = 0;
    v230 = 0;
    v231 = 0;
    LOBYTE(v177) = 1;
    re::importSkinningAndSkeletalAnimations(v21, &v191, &v186, &v181, &v210, v196);
    v41 = re::Result<re::Unit,re::DetailedError>::operator=(&v177, v196);
    if ((v196[0] & 1) == 0)
    {
      v41 = *&v196[24];
      if (*&v196[24])
      {
        if (v196[32])
        {
          v41 = (*(**&v196[24] + 40))();
        }
      }
    }

    if ((v177 & 1) == 0)
    {
      v42 = *re::pipelineLogObjects(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(v196, (&v177 + 8));
        v122 = v196[23] >= 0 ? v196 : *v196;
        v123 = (v179 & 1) != 0 ? *&v180[4] : (&v179 + 1);
        *buf = 136315394;
        *&buf[4] = v122;
        *&buf[12] = 2080;
        *&buf[14] = v123;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Error: %s\nDetails:\n%s", buf, 0x16u);
        if ((v196[23] & 0x80000000) != 0)
        {
          operator delete(*v196);
        }
      }

      if (a4)
      {
        *a4 = CFErrorCreate(0, @"REPipelineErrorDomain", 3, 0);
      }
    }

    v198 = 0u;
    v202 = 0;
    v199 = 0u;
    v200 = 0u;
    memset(v196, 0, sizeof(v196));
    *&v196[16] = &str_67;
    v196[24] = 1;
    v197 = 0;
    *&v198 = 0;
    DWORD2(v198) = 0;
    v201 = 0;
    re::DynamicArray<re::ecs2::EntityAssetData>::add(v19, v196);
    re::ecs2::EntityAssetData::~EntityAssetData(v196);
    v43 = *(v19 + 32) + 112 * *(v19 + 16);
    if (v136)
    {
      v44 = [v136 lastPathComponent];
      re::DynamicString::format("rootEntity-%s", &v168, [v44 UTF8String]);
    }

    else
    {
      v45 = re::DynamicString::format("rootEntity-%s", &v168, "mdlAsset");
    }

    if (v169)
    {
      v78 = v170;
    }

    else
    {
      v78 = &v169 + 1;
    }

    *v196 = 0;
    *&v196[8] = &str_67;
    v79 = re::StringID::operator=((v43 - 104), v196);
    if (v196[0])
    {
      if (v196[0])
      {
      }
    }

    v80 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>((v43 - 112));
    [v22 upAxis];
    v82 = vmulq_f32(v81, v81);
    v82.f32[0] = fabsf(v82.f32[2] + vaddv_f32(*v82.f32));
    v83.i32[0] = 786163454;
    v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v83, v82), 0), xmmword_1E3047680, v81);
    v85 = vmulq_f32(v84, v84);
    v86 = v85.f32[2] + vaddv_f32(*v85.f32);
    if (fabsf(v86) >= 1.0e-10)
    {
      v87 = v86;
      v88 = vrsqrte_f32(LODWORD(v86));
      v89 = vmul_f32(v88, vrsqrts_f32(LODWORD(v87), vmul_f32(v88, v88)));
      v84 = vmulq_n_f32(v84, vmul_f32(v89, vrsqrts_f32(LODWORD(v87), vmul_f32(v89, v89))).f32[0]);
    }

    v90 = vrsqrte_f32(1065353216);
    v91 = vmul_f32(v90, vrsqrts_f32(1065353216, vmul_f32(v90, v90)));
    v92 = vmulq_n_f32(xmmword_1E3047680, vmul_f32(v91, vrsqrts_f32(1065353216, vmul_f32(v91, v91))).f32[0]);
    v93 = vmulq_f32(v84, v92);
    v93.f32[0] = v93.f32[2] + vaddv_f32(*v93.f32);
    if (v93.f32[0] == -1.0 || (v94 = ((fabsf(v93.f32[0]) + 1.0) + 1.0) * 0.00001, v93.f32[0] = v93.f32[0] + 1.0, fabsf(v93.f32[0]) < v94))
    {
      if (fabsf(v84.f32[2]) >= 0.00001)
      {
        v95.i32[0] = 0;
        v95.f32[1] = -v84.f32[2];
        v95.i64[1] = v84.u32[1];
      }

      else
      {
        v95 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v84.f32[1]), v84);
      }

      v96 = v125;
      v97 = vmulq_f32(v95, v95);
      *&v98 = v97.f32[2] + vaddv_f32(*v97.f32);
      *v97.f32 = vrsqrte_f32(v98);
      *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
      v99 = vmulq_n_f32(v95, vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
      v100 = 0.0;
    }

    else
    {
      v110 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL), vnegq_f32(v84)), v92, vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL));
      v93.f32[0] = sqrtf(v93.f32[0] + v93.f32[0]);
      v100 = v93.f32[0] * 0.5;
      v99 = vdivq_f32(vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL), vdupq_lane_s32(*v93.f32, 0));
      v96 = v125;
    }

    v99.f32[3] = v100;
    *(v80 + 2) = vdupq_lane_s32(v96, 0);
    *(v80 + 3) = v99;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v101 = v22;
    v102 = [v101 countByEnumeratingWithState:&v173 objects:v196 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v174;
      do
      {
        for (i = 0; i != v103; ++i)
        {
          if (*v174 != v104)
          {
            objc_enumerationMutation(v101);
          }

          v106 = *(*(&v173 + 1) + 8 * i);
          v207 = 0;
          v205 = 0u;
          memset(buf, 0, sizeof(buf));
          *&buf[16] = &str_67;
          buf[24] = 1;
          v204 = 0uLL;
          *&v205 = 0;
          DWORD2(v205) = 0;
          memset(v206, 0, sizeof(v206));
          re::DynamicArray<re::ecs2::EntityAssetData>::add(v43 - 40, buf);
          re::ecs2::EntityAssetData::~EntityAssetData(buf);
          re::loadMDLObject(&v128, v106, *(v43 - 8) + 112 * *(v43 - 24) - 112, &v191, &v186, &v210);
        }

        v103 = [v101 countByEnumeratingWithState:&v173 objects:v196 count:16];
      }

      while (v103);
    }

    v107.n128_f64[0] = re::createAnimationAssets(&v128, &v181, &v210);
    if (v168 && (v169 & 1) != 0)
    {
      (*(*v168 + 40))(v107.n128_f64[0]);
    }

    v108 = a1;
    if (v177 & 1) == 0 && *(&v178 + 1) && (v179)
    {
      (*(**(&v178 + 1) + 40))(v107);
    }

    if (v230)
    {
      if (v234)
      {
        (*(*v230 + 40))(v107);
      }

      v234 = 0;
      v231 = 0;
      v232 = 0;
      v230 = 0;
      ++v233;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v226);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v222);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v219 + 1);
    re::DynamicArray<re::DynamicString>::deinit(&v216 + 8);
    re::DynamicArray<re::DynamicString>::deinit(&v213[32]);
    if (*(&v212 + 1))
    {
      if (*&v213[24])
      {
        (*(**(&v212 + 1) + 40))();
      }

      *&v213[24] = 0;
      *v213 = 0;
      *&v213[8] = 0;
      *(&v212 + 1) = 0;
      ++*&v213[16];
    }

    re::DynamicArray<re::DynamicString>::deinit(&v210);
    re::DynamicArray<re::SkeletalPoseSampledAnimation>::deinit(&v181);
    re::DynamicArray<re::ModelIOSkinningData>::deinit(&v186);
    re::DynamicArray<re::ModelIOSkeleton>::deinit(&v191);
  }

  v111 = v108 + 1;
  if (v108 + 1 != v143)
  {
    v112 = *v111;
    v113 = *v143;
    if (!*v111 || v112 == *v143)
    {
      v108[1] = *v143;
      *v143 = v112;
      v118 = *&v143[8];
      v119 = *(v108 + 2);
      *&v143[8] = *(v108 + 1);
      v120 = *&v143[24];
      *(v108 + 1) = v118;
      *(v108 + 2) = v120;
      *&v143[24] = v119;
LABEL_133:
      ++*(v108 + 12);
      goto LABEL_134;
    }

    if (*(v108 + 9))
    {
      v114 = *(v108 + 8);
      if (v114)
      {
        memset_pattern16(v108[2], &unk_1E304C660, 4 * v114);
      }

      if (*(v108 + 10))
      {
        v115 = 0;
        v116 = 0;
        do
        {
          re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((v108[3] + v115));
          ++v116;
          v115 += 328;
        }

        while (v116 < *(v108 + 10));
      }

      *(v108 + 9) = 0;
      *(v108 + 10) = 0;
      v117 = *(v108 + 12) + 1;
      *(v108 + 11) = 0x7FFFFFFF;
      *(v108 + 12) = v117;
      v113 = *v143;
    }

    if (v113)
    {
      if (*(v108 + 8) < *&v143[28])
      {
        re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity((v108 + 1), *&v143[28]);
      }

      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move((v108 + 1), v143);
      goto LABEL_133;
    }
  }

LABEL_134:
  re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v156);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v153);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v150);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v147);
  re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v143);

  if (v137)
  {
    if (BYTE8(v137))
    {
      (*(*v137 + 40))();
    }

    v137 = 0u;
    v138 = 0u;
  }

  return 1;
}