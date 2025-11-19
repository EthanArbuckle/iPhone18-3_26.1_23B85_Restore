BOOL re::TextureAssetLoader::serializeAssetBlob(int a1, uint64_t a2, re::TextureAsset *this, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  isCompletelyLoadedTexture = re::TextureAsset::isCompletelyLoadedTexture(this);
  v8 = isCompletelyLoadedTexture;
  v9 = *(this + 21);
  if (!isCompletelyLoadedTexture)
  {
    if (!v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v10 = !isCompletelyLoadedTexture | ((*(this + 64) & 4) >> 2);
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (!a4)
  {
LABEL_19:
    v21 = 0;
    v22 = 0;
    v25 = 0;
    v24 = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_20:
    v23 = v25;
    v20 = !v8;
    goto LABEL_21;
  }

LABEL_7:
  if (re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "writeAsSourceImage"))
  {
    return 1;
  }

  v12 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "blobOverrideParameterKey");
  if (v12 && *(v12 + 32) == 1)
  {
    v13 = *v12;
    v14 = (*(*a2 + 16))(a2, [v13 bytes], objc_msgSend(v13, "length"));
    v11 = v14 == [v13 length];

    return v11;
  }

  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "kGBA8ToASTCCompressionWriteParameters"))
  {
    goto LABEL_19;
  }

  v43 = "kGBA8ToASTCCompressionWriteParameters";
  v15 = re::Hash<re::DynamicString>::operator()(v40, "kGBA8ToASTCCompressionWriteParameters");
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a4, &v43, v15, v40);
  v16 = *(a4 + 16) + 88 * HIDWORD(v41);
  if (*(v16 + 72) == 1)
  {
    v17 = *(v16 + 40);
    v18 = [v17 bytes];
    if (v10)
    {
      v19 = *(v18 + 16);
      v20 = !v8;
      if (!v8 || (*(v18 + 16) & 1) != 0)
      {

        if (v19)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
LABEL_21:
          v26 = re::copySourceKTX((this + 168), a2);
          v11 = v26;
          if (!v20)
          {
            v25 = v23;
            if ((v26 & 1) == 0)
            {
LABEL_23:
              v27 = (this + 112);
              if (v24)
              {
                v40[0] = 0;
                if (shouldForceToLinearPixelFormat)
                {
                  re::reinterpretAsLinear(buf, v27);
                  LOBYTE(v43) = 1;
                  LOBYTE(v44) = 0;
                  v45 = -1;
                  shouldForceToLinearPixelFormat = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v44, buf);
                  if (v40[0])
                  {
                    if (v43)
                    {
                      shouldForceToLinearPixelFormat = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v41, &v44);
                    }

                    else
                    {
                      if (LODWORD(v42[0]) != -1)
                      {
                        shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v42[0])])(&v46, &v41);
                      }

                      LODWORD(v42[0]) = -1;
                      v40[0] = 0;
                    }
                  }

                  else if (v43)
                  {
                    v40[0] = 1;
                    LOBYTE(v41) = 0;
                    LODWORD(v42[0]) = -1;
                    shouldForceToLinearPixelFormat = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v41, &v44);
                  }

                  if (v43 == 1)
                  {
                    if (v45 != -1)
                    {
                      shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v45])(&v46, &v44);
                    }

                    v45 = -1;
                  }

                  if (HIDWORD(v48) != -1)
                  {
                    shouldForceToLinearPixelFormat = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[HIDWORD(v48)])(&v46, buf);
                  }
                }

                if (v40[0])
                {
                  v27 = &v41;
                }

                v34 = *(this + 22);
                v35 = v34;
                v11 = re::exportToKtxWithRGBA8ToASTCCompression(a2, v27, v34, v25, v22 | (v21 << 32), *(this + 89));
                if (v40[0] == 1 && LODWORD(v42[0]) != -1)
                {
                  (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[LODWORD(v42[0])])(&v43, &v41);
                }
              }

              else
              {
                v43 = 0;
                v44 = 0;
                if (v29)
                {
                  re::reinterpretAsLinear(v40, v27);
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v43, v40);
                  if (v41 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v41])(buf, v40);
                  }

                  v27 = &v43;
                }

                v30 = *(this + 22);
                v31 = v30;
                re::exportToKtx(a2, v27, v30, 0, 0, v40);
                if ((v40[0] & 1) == 0)
                {
                  v33 = *re::assetTypesLogObjects(v32);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    if (v42[0])
                    {
                      v37 = v42[1];
                    }

                    else
                    {
                      v37 = v42 + 1;
                    }

                    *buf = 136315138;
                    v48 = v37;
                    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
                  }
                }

                v11 = v40[0];
                if (v40[0] & 1) == 0 && v41 && (v42[0])
                {
                  (*(*v41 + 40))();
                }

                if (v44 != -1)
                {
                  (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(v40, &v43);
                }
              }
            }
          }

          return v11;
        }

        return 0;
      }
    }

    else if (!v8)
    {

      return 0;
    }

    v25 = *v18;
    v22 = *(v18 + 8);
    v21 = *(v18 + 12);

    v24 = 1;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v38 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(v38, v39);
}

BOOL re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return v5[3] != 0x7FFFFFFF;
}

uint64_t re::anonymous namespace::shouldForceToLinearPixelFormat(int a1, re::TextureData *this, uint64_t a3)
{
  if (!a3 || (v4 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, "DeploymentTarget")) == 0 || *(v4 + 32) || ((*(v4 + 8) & 1) != 0 ? (v5 = *(v4 + 16)) : (v5 = (v4 + 9)), atoi(v5) <= 4))
  {
    re::TextureData::pixelFormat(this);
    MTLPixelFormatGetInfoForDevice();
  }

  return 0;
}

void re::TextureAssetLoader::writeAssetToRealityFile(uint64_t a1@<X0>, re::TextureAsset *a2@<X1>, re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v116 = *MEMORY[0x1E69E9840];
  *v107 = a7;
  v17 = *(a4 + 44);
  v19 = *(a4 + 24) > 14 && v17 != 0;
  v106 = v19;
  v20 = re::AssetHandle::loadedAsset<re::TextureAsset>(a2);
  v21 = *(v20 + 344);
  ComponentCount = re::getComponentCount();
  re::TextureAssetLoader::getOrCreateImportOptions(a2, v99);
  if ((v100 - 3) <= 1 || *(v20 + 360) == 1 && !*(*(a2 + 1) + 264))
  {
    v106 = 0;
  }

  if (v99[4] != 1)
  {
    v106 = 0;
  }

  if ((re::isHDR(v21) & 1) != 0 || *(v20 + 348) != 2 || ComponentCount == 2 || ComponentCount >= 5)
  {
    v106 = 0;
  }

  if (((v21 - 10) > 0x3D || ((1 << (v21 - 10)) & 0x3000000000000003) == 0) && (re::isASTCPixelFormat(v21) & 1) == 0)
  {
    v106 = 0;
  }

  if (*(v20 + 288) || *(v20 + 264) || (v23 = *(v20 + 272), v23 < re::TextureData::mipmapLevelCount((v20 + 112))))
  {
    v106 = 0;
  }

  v24 = re::estimateExportedTextureSizeWithCompressionOptions((a1 + 40), (v20 + 112), v100, v101);
  v26 = vcvts_n_f32_u64(v24, 1uLL);
  v27 = (v26 / 1.5);
  v97 = v26;
  v98 = v27;
  if (!v106)
  {
    goto LABEL_38;
  }

  v28 = *(a4 + 44);
  v29 = 0.0;
  if (v28 <= 1)
  {
    if (v28 != 1)
    {
      if (!v28)
      {
        v78 = "assertion failure: '%s' (%s:line %i) Unexpected";
        re::internal::assertLog(4, v25, 0.0);
        _os_crash();
        __break(1u);
        goto LABEL_116;
      }

      goto LABEL_35;
    }

    v30 = ComponentCount == 1;
    v31 = &unk_1E305F178;
  }

  else if (v28 == 2)
  {
    v30 = ComponentCount == 1;
    v31 = &unk_1E305F170;
  }

  else
  {
    if (v28 != 3)
    {
      goto LABEL_35;
    }

    v30 = ComponentCount == 1;
    v31 = &unk_1E305F168;
  }

  v29 = v31[v30];
LABEL_35:
  v32 = *(v20 + 252);
  if (((v29 * *(v20 + 248)) * v32) + 940 <= v27)
  {
    v97 = ((v29 * *(v20 + 248)) * v32) + 940;
  }

  else
  {
    v106 = 0;
  }

LABEL_38:
  v95 = 0u;
  v96 = 0u;
  re::DynamicString::setCapacity(&v95, 0);
  re::DynamicString::rfind(a3, 46, v93);
  v80 = a5;
  if (v93[0] == 1)
  {
    re::DynamicString::substr(a3, 0, v94, buf);
    re::DynamicString::operator=(&v95, buf);
    if (*buf && (buf[8] & 1) != 0)
    {
      (*(**buf + 40))(*buf, *&buf[16]);
    }
  }

  else
  {
    re::DynamicString::operator=(&v95, a3);
  }

  LOBYTE(a5) = a10;
  v79 = &v95 | 9;
  if (BYTE8(v95))
  {
    v33 = v96;
  }

  else
  {
    v33 = &v95 | 9;
  }

  isAllowedPassthroughFormat = re::DynamicString::format("%s%s", &v90, v33, ".sourceimage");
  v89 = 0;
  if (!v17)
  {
    goto LABEL_71;
  }

  v36 = *(*(a2 + 1) + 264);
  if (v36)
  {
    if (isAllowedPassthroughFormat)
    {
      v37 = *(v36 + 24);
      if (v37)
      {
        v114 = re::globalAllocators(isAllowedPassthroughFormat)[2];
        v115 = 0;
        v38 = (*(*v114 + 32))(v114, 56, 0);
        *v38 = &unk_1F5CC3E00;
        v38[1] = &v98;
        v38[2] = &v106;
        v38[3] = &v97;
        v38[4] = &v90;
        v38[5] = v107;
        v38[6] = &v89;
        v115 = v38;
        (*(*v37 + 48))(v108, v37, v113);
        isAllowedPassthroughFormat = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v113);
        if ((v108[0] & 1) == 0)
        {
          v39 = *re::assetsLogObjects(isAllowedPassthroughFormat);
          isAllowedPassthroughFormat = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          if (isAllowedPassthroughFormat)
          {
            v40 = re::AssetHandle::assetInfo(a2);
            if (v40[17])
            {
              v41 = v40[18];
            }

            else
            {
              v41 = v40 + 137;
            }

            v42 = re::WrappedError::localizedDescription(v108 + 1);
            *buf = 136315394;
            *&buf[4] = v41;
            *&buf[12] = 2080;
            *&buf[14] = v42;
            _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Failed to preserve source texture data for asset '%s': '%s'.", buf, 0x16u);
          }
        }

        if ((v108[0] & 1) == 0)
        {
        }
      }
    }
  }

  if (v89)
  {
    goto LABEL_59;
  }

  if (!v106)
  {
LABEL_71:
    re::AssetLoader::writeAssetToRealityFile(a1, a2, a3, a4, v80, a6, *v107, a8, a9, a10);
    goto LABEL_135;
  }

  v44 = *(a4 + 44);
  v10 = 1.0;
  v45 = v44 == 1;
  if (v44 > 1)
  {
    if (v44 == 2)
    {
      v10 = 0.4;
    }

    else if (v44 == 3)
    {
      v10 = 0.2;
    }

    goto LABEL_147;
  }

LABEL_116:
  if (v45)
  {
    v10 = 0.8;
  }

  else if (!v44)
  {
    re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) Unexpected", "!Unreachable code", "writeAssetToRealityFile", 2028);
    _os_crash();
    __break(1u);
    return;
  }

LABEL_147:
  if ((atomic_load_explicit(&qword_1EE195EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EA8))
  {
    re::Defaults::BOOLValue("encodeSmallTexturesAsHEIC", v76, buf);
    if (buf[0])
    {
      v77 = buf[1];
    }

    else
    {
      v77 = 0;
    }

    _MergedGlobals_72[0] = v77;
    __cxa_guard_release(&qword_1EE195EA8);
  }

  v67 = (*(v20 + 356) - 3) < 2 && ComponentCount == 4;
  v68 = *(v20 + 176);
  v69 = v68;
  if (_MergedGlobals_72[0] == 1)
  {
    v70 = [*MEMORY[0x1E6982E00] identifier];
  }

  else
  {
    v70 = re::UTTypes::AVIF(v69);
  }

  re::encodeTextureSliceToImageData((a1 + 40), (v20 + 112), v68, v70, v67, v10, 0, 0, 0, buf, v78);
  if ((buf[0] & 1) == 0)
  {
    if (buf[16])
    {
      v74 = v111;
    }

    else
    {
      v74 = &buf[17];
    }

    re::WrappedError::make(@"RERealityFileWriterErrorDomain", 5, v74, v108);
    v75 = *&v108[0];
    *&v108[0] = 0;
    *a9 = 0;
    *(a9 + 8) = v75;

    if (buf[0] & 1) == 0 && *&buf[8] && (buf[16])
    {
      (*(**&buf[8] + 40))();
    }

    goto LABEL_135;
  }

  if (v91)
  {
    v71 = *&v92[7];
  }

  else
  {
    v71 = v92;
  }

  re::RealityFileWriter::saveEntryToArchive(*&buf[8], v71, *v107, 1, 0, 0, v108);
  v72 = LOBYTE(v108[0]);
  if ((v108[0] & 1) == 0)
  {
    v73 = *(&v108[0] + 1);
    *a9 = 0;
    *(a9 + 8) = v73;
    if ((v108[0] & 1) == 0)
    {
    }
  }

  CFRelease(*&buf[8]);
  if ((buf[0] & 1) == 0)
  {
    isAllowedPassthroughFormat = *&buf[8];
    if (*&buf[8])
    {
      if (buf[16])
      {
        isAllowedPassthroughFormat = (*(**&buf[8] + 40))();
      }
    }
  }

  if (v72)
  {
LABEL_59:
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 1;
    v111 = 0;
    v112 = 0;
    *&v108[0] = *&v88[0];
    *(&v108[1] + 1) = *(&v88[1] + 1);
    *(v108 + 8) = *(v88 + 8);
    memset(v88, 0, sizeof(v88));
    v109 = 0;
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a6, "writeAsSourceImage", v108);
    if (v109 != -1)
    {
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v109))(&v85, v108);
    }

    v109 = -1;
    if (*&v88[0] && (BYTE8(v88[0]) & 1) != 0)
    {
      (*(**&v88[0] + 40))();
    }

    re::AssetLoader::writeCompiledAssetToRealityFile(a2, a1, a3, a4, v80, a6, *v107, a8, v108, a5);
    v43 = LOBYTE(v108[0]);
    if (v108[0])
    {
      re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, a3);
    }

    else
    {
      v46 = *(&v108[0] + 1);
      *a9 = 0;
      *(a9 + 8) = v46;
    }

    if (LOBYTE(v108[0]) == 1)
    {
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v108 + 1);
      if (!v43)
      {
        goto LABEL_134;
      }
    }

    else
    {

      if (!v43)
      {
LABEL_134:
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(buf);
        goto LABEL_135;
      }
    }

    v47 = re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, &v90);
    memset(v108, 0, sizeof(v108));
    re::DynamicString::setCapacity(v108, 0);
    v109 = 0;
    if (v89 == 1)
    {
      v48 = v102;
      if (v102)
      {
        CStringPtr = CFStringGetCStringPtr(v102, 0x8000100u);
        v50 = strlen(CStringPtr);
        *&v88[0] = CStringPtr;
        *(&v88[0] + 1) = v50;
        v48 = re::DynamicString::operator=(v108, v88);
      }

      if (v99[0] == 1)
      {
        v109 = *(v20 + 344);
      }
    }

    else
    {
      v48 = re::DynamicString::operator=(v108, (v20 + 368));
    }

    memset(v88, 0, sizeof(v88));
    v51 = re::DynamicString::setCapacity(v88, 0);
    v87[0] = &unk_1F5D0B0E8;
    v87[1] = v88;
    if ((atomic_load_explicit(&qword_1EE195F18, memory_order_acquire) & 1) == 0)
    {
      v51 = __cxa_guard_acquire(&qword_1EE195F18);
      if (v51)
      {
        qword_1EE195F10 = re::internal::getOrCreateInfo("SidecarImageImportOptions", re::allocInfo_SidecarImageImportOptions, re::initInfo_SidecarImageImportOptions, &unk_1EE195F00, 0);
        __cxa_guard_release(&qword_1EE195F18);
      }
    }

    v52 = qword_1EE195F10;
    v85 = *(v52 + 32);
    {
      v57 = v56;
      v58 = v79;
      if (BYTE8(v95))
      {
        v58 = v96;
      }

      re::DynamicString::format("%s%s", &v85, v58, "_importOptions.json");
      if (BYTE8(v85))
      {
        v59 = v86;
      }

      else
      {
        v59 = &v85 + 9;
      }

      re::RealityFileWriter::saveEntryToArchive(v57, v59, *v107, 1, 0, 0, &v83);
      v60 = v83;
      if (v83)
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::add(buf, &v85);
      }

      else
      {
        v65 = v84;
        *a9 = 0;
        *(a9 + 8) = v65;
      }

      if ((v83 & 1) == 0)
      {
      }

      if (v85 && (BYTE8(v85) & 1) != 0)
      {
        (*(*v85 + 40))();
      }

      CFRelease(v57);
      if (*&v88[0] && (BYTE8(v88[0]) & 1) != 0)
      {
        (*(**&v88[0] + 40))();
      }

      if (*&v108[0] && (BYTE8(v108[0]) & 1) != 0)
      {
        (*(**&v108[0] + 40))();
      }

      if (v60)
      {
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(v108, buf);
        *a9 = 1;
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(a9 + 8, v108);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v108);
      }
    }

    else
    {
      v61 = re::AssetHandle::assetInfo(a2);
      if (v61[17])
      {
        v62 = v61[18];
      }

      else
      {
        v62 = v61 + 137;
      }

      re::DynamicString::format("Failed to serialize source image import options for texture asset '%s'", &v85, v62);
      if (BYTE8(v85))
      {
        v63 = v86;
      }

      else
      {
        v63 = &v85 + 9;
      }

      re::WrappedError::make(@"RERealityFileWriterErrorDomain", 5, v63, &v83);
      v64 = v83;
      v83 = 0;
      *a9 = 0;
      *(a9 + 8) = v64;

      if (v85 && (BYTE8(v85) & 1) != 0)
      {
        (*(*v85 + 40))();
      }

      if (*&v88[0] && (BYTE8(v88[0]) & 1) != 0)
      {
        (*(**&v88[0] + 40))();
      }

      if (*&v108[0] && (BYTE8(v108[0]) & 1) != 0)
      {
        (*(**&v108[0] + 40))();
      }
    }

    goto LABEL_134;
  }

LABEL_135:
  if (v90 && (v91 & 1) != 0)
  {
    (*(*v90 + 40))();
  }

  if (v95 && (BYTE8(v95) & 1) != 0)
  {
    (*(*v95 + 40))();
  }

  if (v103)
  {
    if (v104)
    {
      (*(*v103 + 40))();
      v104 = 0;
      v105 = 0;
    }

    v103 = 0;
  }
}

uint64_t re::AssetHandle::loadedAsset<re::TextureAsset>(re::TextureAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::TextureAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::TextureAsset::assetType(void)::type, 1);
}

uint64_t *re::TextureAssetLoader::getOrCreateImportOptions@<X0>(re::TextureAssetLoader *this@<X0>, uint64_t a2@<X8>)
{
  v5 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(this);
  if (!v5)
  {
    v5 = re::AssetHandle::loadedAsset<re::TextureAsset>(this);
  }

  v6 = *(*(this + 1) + 264);

  return re::TextureAssetLoader::getOrCreateImportOptions(v5, v6, a2);
}

BOOL re::anonymous namespace::isAllowedPassthroughFormat(_BOOL8 cf1, const __CFString *a2)
{
  if (cf1)
  {
    v2 = cf1;
    if ((atomic_load_explicit(&qword_1EE195F08, memory_order_acquire) & 1) == 0)
    {
      v6 = __cxa_guard_acquire(&qword_1EE195F08);
      if (v6)
      {
        qword_1EE195F38 = re::UTTypes::JPEG(v6);
        qword_1EE195F40 = re::UTTypes::HEIC(qword_1EE195F38);
        qword_1EE195F48 = re::UTTypes::AVIF(qword_1EE195F40);
        __cxa_guard_release(&qword_1EE195F08);
      }
    }

    v3 = 0;
    do
    {
      v4 = CFEqual(v2, *&_MergedGlobals_72[v3 + 152]);
      v5 = v4 == 0;
      cf1 = v4 != 0;
      v5 = !v5 || v3 == 16;
      v3 += 8;
    }

    while (!v5);
  }

  return cf1;
}

void re::TextureAsset::copyColorSpaceToCFStringPtr(re::TextureAsset *this, uint64_t a2)
{
  *this = 0;
  v2 = *(a2 + 376);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    if (v2)
    {
      v5 = *(a2 + 384);
    }

    else
    {
      v5 = (a2 + 377);
    }

    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
    *this = v6;

    CFRelease(v6);
  }
}

void re::TextureAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v123 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72))
  {
    v102 = 0;
    LODWORD(v103) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 112, &v102);
    if (v103 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v103])(v91, &v102);
    }

    v102 = 0;
    LODWORD(v103) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 232, &v102);
    if (v103 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v103])(v91, &v102);
    }

    LOWORD(v102) = 0;
    v103 = 0;
    v104 = 0;
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
    v111 = 0;
    *&v112[0] = 0;
    *(a2 + 128) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v6 = *(a2 + 168);
    v105 = 0;
    v107 = v6;
    v7 = (a2 + 176);
    *(a2 + 168) = 0;
    if ((a2 + 176) != &v108)
    {
      v8 = *v7;
      *v7 = 0;
    }

    re::DynamicArray<short>::operator=(a2 + 184, &v108 + 8);
    v9 = *(&v108 + 1);
    *(a2 + 224) = *&v112[0];
    if (v9)
    {
      if (v111)
      {
        (*(*v9 + 40))(v9);
      }

      v111 = 0;
      v109 = 0uLL;
      *(&v108 + 1) = 0;
      ++v110;
    }

    if (v107)
    {
    }

    *(a2 + 344) = 0x200000000;
    *(a2 + 352) = 84148994;
    *(a2 + 356) = 6;
    v102 = "";
    v103 = 0;
    re::DynamicString::operator=((a2 + 368), &v102);
    *(a2 + 256) = 1;
    *(a2 + 248) = 0x100000001;
    *(a2 + 82) = 0;
    if (*(a2 + 86) == 1)
    {
      *(a2 + 86) = 0;
    }

    *(a2 + 80) = 0;
    return;
  }

  if ((re::TextureData::isValid((a2 + 112)) & 1) != 0 || !a3)
  {
    return;
  }

  re::TextureAsset::copyColorSpaceToCFStringPtr(&v101, a2);
  v14 = v101;
  v15 = v101;
  if (!v101)
  {
    if ((*(a2 + 356) - 3) > 1)
    {
      v15 = 0;
    }

    else
    {
      v16 = re::translateLinearPixelFormatToSRGB(*(a2 + 344));
      v15 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v16, 0);
      v101 = v15;
    }
  }

  v100 = *(a2 + 352);
  if (a5)
  {
    v17 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a5, "SkipBackcompGamutConversion");
    v18 = *(a2 + 356);
    if (v17)
    {
      v19 = (v18 - 3) >= 2;
    }

    else
    {
      v19 = 1;
    }

    LODWORD(a5) = !v19 && v14 == 0;
  }

  else
  {
    v18 = *(a2 + 356);
  }

  v21 = -1;
  v22 = *(a2 + 264);
  v23 = *(a2 + 272);
  if (v22 >= 0xFFFF)
  {
    LOWORD(v22) = -1;
  }

  LOWORD(v95) = v22;
  if (v23 < 0xFFFF)
  {
    v21 = v23;
  }

  HIWORD(v95) = v21;
  re::FixedArray<short>::operator=(&v96, (a2 + 280));
  v82[0] = v91[0];
  v82[1] = v91[1];
  v83[0] = v92[0];
  *(v83 + 12) = *(v92 + 12);
  v84 = v93;
  v85 = v94;
  v86 = v95;
  re::FixedArray<short>::FixedArray(&v87, &v96);
  v90 = v99;
  re::TextureAssetLoader::parseKTXData(&v102, a1, a3, v82, &v100, a5);
  if (v87)
  {
    if (v88)
    {
      (*(*v87 + 40))();
      v88 = 0;
      v89 = 0;
    }

    v87 = 0;
  }

  v24 = *(a2 + 252);
  if (v24 <= 1)
  {
    v24 = 1;
  }

  v25 = v107;
  if (v107 <= 1)
  {
    v25 = 1;
  }

  if (v24 != v25)
  {
    goto LABEL_58;
  }

  v26 = *(a2 + 248);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  v27 = v106;
  if (v106 <= 1)
  {
    v27 = 1;
  }

  if (v26 == v27)
  {
    v28 = *(a2 + 256);
    if (v28 <= 1)
    {
      v28 = 1;
    }

    v29 = HIDWORD(v107);
    if (HIDWORD(v107) <= 1)
    {
      v29 = 1;
    }

    v30 = v28 == v29;
  }

  else
  {
LABEL_58:
    v30 = 0;
  }

  *(a2 + 84) = v30;
  if (*(a2 + 86))
  {
    if ((v109 & 1) == 0)
    {
      *(a2 + 86) = 0;
      goto LABEL_65;
    }
  }

  else
  {
    if ((v109 & 1) == 0)
    {
      goto LABEL_65;
    }

    *(a2 + 86) = 1;
  }

  *(a2 + 88) = WORD1(v109);
LABEL_65:
  v31 = &v109 + 1;
  if (v110)
  {
    if (v110 != 1)
    {
      v71 = std::__throw_bad_variant_access[abi:nn200100]();
      return;
    }

    if (!*(*(&v109 + 1) + 48))
    {
      goto LABEL_71;
    }

    v31 = (*(&v109 + 1) + 24);
  }

  if (*v31)
  {
    *(a2 + 128) = v111;
    *(a2 + 136) = v112[0];
    *(a2 + 148) = *(v112 + 12);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 168), v113);
    re::ObjCObject::operator=((a2 + 176), &v114);
    re::DynamicArray<short>::operator=(a2 + 184, v115);
    *(a2 + 224) = v118;
    v81 = *(a2 + 360);
    v32 = *(a2 + 176);
    v33 = v32;
    v34 = *(a2 + 200);
    v78 = *(a2 + 216);
    v79 = v34;
    re::TextureAsset::setTexture(a2, (a1 + 40), &v109 + 8, (a2 + 356), &v81, v32, &v78);
  }

LABEL_71:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a2 + 232, a2 + 112);
  if ((*(a2 + 84) & 1) == 0)
  {
    LODWORD(v36) = v107;
    if (v107 <= v106)
    {
      LODWORD(v36) = v106;
    }

    if (v36 <= HIDWORD(v107))
    {
      v36 = HIDWORD(v107);
    }

    else
    {
      v36 = v36;
    }

    if (*(a2 + 248) <= *(a2 + 252))
    {
      v37 = *(a2 + 252);
    }

    else
    {
      v37 = *(a2 + 248);
    }

    if (v37 <= *(a2 + 256))
    {
      v37 = *(a2 + 256);
    }

    v38 = v37;
    v39 = 32 - __clz(v36);
    v40 = v39 - 1;
    v41 = ~(-1 << (v39 - 1));
    if (!v36)
    {
      v41 = 0;
      v40 = 0;
    }

    if ((v41 & v36) != 0)
    {
      v42 = v39;
    }

    else
    {
      v42 = v40;
    }

    v43 = 64 - __clz(v37);
    v44 = v43 - 1;
    v45 = v37 == 0;
    if (v37)
    {
      v46 = ~(-1 << (v43 - 1));
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v44 = 0;
    }

    if ((v46 & v38) != 0)
    {
      v47 = v43;
    }

    else
    {
      v47 = v44;
    }

    v48 = v47 - v42;
    if (v48 < 1)
    {
      *(a2 + 84) = 1;
    }

    else if (DWORD2(v108))
    {
      v49 = (DWORD2(v108) + 7) & 0x1FFFFFFF8;
      v35.i16[0] = *(a2 + 80);
      v50 = vdupq_n_s64(DWORD2(v108) - 1);
      v51 = xmmword_1E305F210;
      v52 = xmmword_1E3049660;
      v53 = xmmword_1E3049640;
      v54 = xmmword_1E3049620;
      v55 = vdupq_n_s64(v48);
      v56 = vdupq_n_s64(1uLL);
      v57 = vdupq_n_s64(8uLL);
      do
      {
        v58 = v51;
        v59 = v52;
        v60 = v53;
        v61 = v54;
        v62 = v35;
        v35 = vorrq_s8(v35, vuzp1q_s16(vuzp1q_s32(vshlq_u64(v56, vaddq_s64(v54, v55)), vshlq_u64(v56, vaddq_s64(v53, v55))), vuzp1q_s32(vshlq_u64(v56, vaddq_s64(v52, v55)), vshlq_u64(v56, vaddq_s64(v51, v55)))));
        v52 = vaddq_s64(v52, v57);
        v53 = vaddq_s64(v53, v57);
        v54 = vaddq_s64(v54, v57);
        v51 = vaddq_s64(v51, v57);
        v49 -= 8;
      }

      while (v49);
      v63 = vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v61, v50), vcgtq_u64(v60, v50)), vuzp1q_s32(vcgtq_u64(v59, v50), vcgtq_u64(v58, v50))), v62, v35);
      *v63.i8 = vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
      *(a2 + 80) = v63.i16[0] | v63.i16[2] | ((v63.i32[0] | v63.i32[1]) >> 16);
    }
  }

  isValid = re::TextureData::isValid((a2 + 112));
  if (isValid)
  {
    LoadedMipmapRange = re::TextureAsset::getLoadedMipmapRange(a2);
    *(a2 + 264) = LoadedMipmapRange;
    *(a2 + 272) = v66;
    v67 = *(a2 + 280);
    if (!v67)
    {
    }

    v68 = *(a2 + 336);
    v69 = *(a2 + 320);
    v79 = 0;
    v80 = 0;
    v78 = 0;
    re::FixedArray<short>::init<>(&v78, v67, v69);
    re::FixedArray<short>::copy(&v78, v68, v69);
    re::FixedArray<short>::operator=((a2 + 280), &v78);
    if (v78 && v79)
    {
      (*(*v78 + 40))();
    }
  }

  else
  {
    v70 = *re::assetTypesLogObjects(isValid);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v78) = 0;
      _os_log_error_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_ERROR, "Failed to load compiled texture blob", &v78, 2u);
    }
  }

  if (v120)
  {
    if (v121)
    {
      (*(*v120 + 40))();
      v121 = 0;
      v122 = 0;
    }

    v120 = 0;
  }

  if (v115[0])
  {
    if (v117)
    {
      (*(*v115[0] + 40))();
    }

    v117 = 0;
    memset(v115, 0, sizeof(v115));
    ++v116;
  }

  if (v113)
  {

    v113 = 0;
  }

  if (v110 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v110])(&v78, &v109 + 8);
  }

  if (v96)
  {
    if (v97)
    {
      (*(*v96 + 40))();
      v97 = 0;
      v98 = 0;
    }

    v96 = 0;
  }
}

void re::anonymous namespace::createTextureFromImageOptions(uint64_t a1, int a2, char a3, void *a4, int a5, char a6, int *a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 2;
  *(a1 + 24) = 0;
  v12 = (a1 + 24);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 29) = 0;
  *(a1 + 52) = a3;
  *(a1 + 56) = a5;
  v13 = a4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = v13;
  *(a1 + 88) = -65536;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if ((a6 & 1) == 0)
  {
    *v12 = 1;
  }

  if ((a5 - 3) <= 1 && (v14 = *a7, re::translateLinearPixelFormatToSRGB(*a7) == v14) && (re::isHDR(v14) & 1) == 0)
  {
    *(a1 + 48) = 2;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v19 = 1;
  if (v13 && re::ColorHelpers::getColorGamutFromCGColorSpaceName(v13, &v19) && v19 == 1)
  {
    isHDR = re::isHDR(*a7);
    if (isHDR)
    {
      if (re::getComponentCount() >= 3)
      {
        v17 = MEMORY[0x1E695F0F0];
LABEL_23:
        re::TextureFromImageOptions::setColorSpace(a1, *v17);
        goto LABEL_24;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      MTLPixelFormatGetInfoForDevice();
      v18 = v15 | ((WORD4(v20) & 0x800) >> 11);
      if (re::getComponentCount() >= 3)
      {
        if (v18)
        {
          v17 = MEMORY[0x1E695F0B8];
        }

        else
        {
          v17 = MEMORY[0x1E695F198];
        }

        goto LABEL_23;
      }

      if (v18)
      {
        v17 = MEMORY[0x1E695F128];
        goto LABEL_23;
      }
    }

    v17 = MEMORY[0x1E695F0F8];
    if (!isHDR)
    {
      v17 = MEMORY[0x1E695F1A0];
    }

    goto LABEL_23;
  }

LABEL_24:
  if (a2 >= 2)
  {
    *(a1 + 8) = 1;
  }
}

uint64_t *re::FixedArray<short>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<short>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<short>::copy(a1, a2);
    }
  }

  return a1;
}

void re::TextureAssetLoader::parseKTXData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 40);
  v12 = *(a2 + 48);
  v30 = v12;
  *v31 = *(a2 + 56);
  v31[2] = *(a2 + 58);
  v32 = *(a2 + 59);
  if (v32 == 1)
  {
    v33 = *(a2 + 60);
  }

  *v34 = *(a2 + 61);
  *&v34[7] = *(a2 + 68);
  if (a6)
  {
    v13 = *(a2 + 57);
    v31[0] = 0;
    *&v31[1] = v13;
  }

  v14 = *a5;
  v15 = *(a4 + 16);
  v20[0] = *a4;
  v20[1] = v15;
  v21[0] = *(a4 + 32);
  *(v21 + 12) = *(a4 + 44);
  v22 = *(a4 + 64);
  v23 = *(a4 + 72);
  v24 = *(a4 + 88);
  re::FixedArray<short>::FixedArray(&v25, (a4 + 96));
  v28 = *(a4 + 120);
  if (v25)
  {
    if (v26)
    {
      (*(*v25 + 40))();
      v26 = 0;
      v27 = 0;
    }

    v25 = 0;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) &= 0xFC00u;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = -65536;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  *(a1 + 304) = 0;
  *(a1 + 64) = 0;
  v16 = v36[1];
  *a1 = v36[0];
  *(a1 + 16) = v16;
  v17 = v36[3];
  *(a1 + 32) = v36[2];
  *(a1 + 48) = v17;
  if (v37 == 1)
  {
    *(a1 + 64) = v37;
    *(a1 + 66) = v38;
  }

  v18 = *(a4 + 16);
  *(a1 + 192) = *a4;
  *(a1 + 208) = v18;
  *(a1 + 224) = *(a4 + 32);
  *(a1 + 236) = *(a4 + 44);
  re::ObjCObject::operator=((a1 + 256), (a4 + 64));
  *(a1 + 264) = *(a4 + 72);
  *(a1 + 280) = *(a4 + 88);
  re::FixedArray<short>::operator=((a1 + 288), (a4 + 96));
  *(a1 + 312) = *(a4 + 120);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1 + 72, &v39);
  *(a1 + 88) = v41;
  *(a1 + 96) = v42[0];
  *(a1 + 108) = *(v42 + 12);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 128), v43);
  re::ObjCObject::operator=((a1 + 136), &v44);
  re::DynamicArray<short>::operator=(a1 + 144, v45);
  v19 = v45[0];
  *(a1 + 184) = v48;
  if (v19)
  {
    if (v47)
    {
      (*(*v19 + 40))(v19);
    }

    v47 = 0;
    memset(v45, 0, sizeof(v45));
    ++v46;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v40 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v40])(&v35, &v39);
  }
}

void re::TextureAssetLoader::createRuntimeData(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 8);
  if (!v9)
  {
    if ((*(*a1 + 24))(a1, a2, a3, a5))
    {
      *a6 = 1;
      *(a6 + 8) = 0;
    }

    else
    {
      re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, "Failed to create runtime data for texture asset.", buf);
      v38 = *buf;
      *buf = 0;
      *a6 = 0;
      *(a6 + 8) = v38;
    }

    return;
  }

  if (v9 <= 2)
  {
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v11 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected: TextureAsset has more than two auxiliary stream.", buf, 2u);
    }

    v9 = *(a4 + 8);
    v59 = 0;
    v60 = 0;
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  v12 = *a4;
  v13 = *a4 + 8 * v9;
  do
  {
    v14 = *v12;
    if (*v12)
    {
      v15 = (v14 + 8);
    }

    v16 = (*(*v14 + 32))(v14);
    if (*(v16 + 8))
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = (v16 + 9);
    }

    v19 = re::path::ext(v18, v17);
    if (v19)
    {
      if (!strncmp(v19, ".sourceimage", 0xCuLL))
      {
        v27 = &v60;
        goto LABEL_29;
      }

      v20 = *((*(*v14 + 32))(v14) + 8);
      if (v20)
      {
        v21 = v20 >> 1;
      }

      else
      {
        v21 = v20 >> 1;
      }

      if (v21 >= 0x13)
      {
        v22 = (*(*v14 + 32))(v14);
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        if ((v23 & 1) == 0)
        {
          v24 = v22 + 9;
        }

        v25 = v23 >> 1;
        v26 = v23 >> 1;
        if (*(v22 + 8))
        {
          v26 = v25;
        }

        if (!strncmp((v24 + v26 - 19), "_importOptions.json", 0x13uLL))
        {
          v27 = &v59;
LABEL_29:
          re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v27, v14);
        }
      }
    }

    ++v12;
  }

  while (v12 != v13);
  v29 = v60;
  if (!v60)
  {
LABEL_35:
    v37 = "Unexpected: TextureAsset has no source image auxiliary stream.";
LABEL_38:
    re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v37, buf);
    v39 = *buf;
    *buf = 0;
    *a6 = 0;
    *(a6 + 8) = v39;
    v40 = 0;
    goto LABEL_52;
  }

  if (!v59)
  {
    v37 = "Unexpected: TextureAsset has no source image import options auxiliary stream.";
    goto LABEL_38;
  }

  memset(buf, 0, sizeof(buf));
  *v51 = 1;
  *&v51[24] = 0;
  v51[28] = 0;
  *&v51[32] = 0;
  v51[36] = 0;
  memset(&v51[4], 0, 17);
  *&v51[40] = 6;
  v53 = 0uLL;
  v52 = 0;
  v54 = -65536;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v62 = re::globalAllocators(v28)[2];
  v30 = (*(*v62 + 32))(v62, 40, 0);
  *v30 = &unk_1F5CC3E68;
  v30[1] = a1;
  v30[2] = a2;
  v30[3] = &v59;
  v30[4] = buf;
  v63 = v30;
  (*(*v29 + 48))(&v48, v29, v61);
  v31 = re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v61);
  if (v48)
  {
    v32 = v45;
    v33 = *&v51[28];
    v35 = *v51;
    v34 = *&v51[16];
    v45[2] = *buf;
    v32[3] = v35;
    v32[4] = v34;
    *(v32 + 76) = v33;
    re::ObjCObject::operator=(v32 + 12, &v52);
    *(v32 + 104) = v53;
    *(v32 + 30) = v54;
    re::FixedArray<short>::operator=(v32 + 16, &v55);
    *(v32 + 152) = v58;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v32 + 3, v60);
    *(v32 + 20) = *(a2 + 224);
    v36 = v32 + 8;
    *a6 = 1;
    *(a6 + 8) = v32;
  }

  else
  {
    v41 = re::WrappedError::localizedDescription(&v49);
    re::DynamicString::format("Failed to create runtime data for TextureAsset due to error: %s", &v45, v41);
    if (v46)
    {
      v42 = *&v47[7];
    }

    else
    {
      v42 = v47;
    }

    re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v42, &v44);
    v43 = v44;
    v44 = 0;
    *a6 = 0;
    *(a6 + 8) = v43;

    if (v45 && (v46 & 1) != 0)
    {
      (*(*v45 + 40))();
    }
  }

  if ((v48 & 1) == 0)
  {
  }

  if (v55)
  {
    if (v56)
    {
      (*(*v55 + 40))();
      v56 = 0;
      v57 = 0;
    }

    v55 = 0;
  }

  v40 = v52;
LABEL_52:

  if (v59)
  {
  }

  if (v60)
  {
  }
}

uint64_t re::TextureAssetLoader::assetByteSize(re::TextureAssetLoader *this, void *a2)
{
  v4 = (*(*this + 56))(this);
  v5 = *(a2 + 30);
  if (v5 == 1)
  {
    v12 = *(a2 + 14);
    v13 = *(v12 + 48);
    if (v13)
    {
      v14 = *(v12 + 64);
      v15 = 40 * v13;
      do
      {
        re::DynamicArray<BOOL>::DynamicArray(&v22, v14);
        v16 = v23;
        if (v22 && v24)
        {
          (*(*v22 + 40))();
        }

        v4 += v16;
        v14 += 5;
        v15 -= 40;
      }

      while (v15);
    }

    return v4;
  }

  if (!v5)
  {
    v6 = [*(a2 + 14) mipmapLevelCount];
    v7 = *(a2 + 14);
    v8 = [v7 arrayLength];
    if ([v7 textureType] - 5 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 6 * v8;
    }

    if (v6)
    {
      v10 = 0;
      v21 = v6;
      do
      {
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = *(this + 2);
        [*(a2 + 14) pixelFormat];
        [*(a2 + 14) width];
        [*(a2 + 14) height];
        [*(a2 + 14) depth];
        [*(a2 + 14) sampleCount];
        re::mtl::getTextureLevelInfo((v11 + 208), &v22);
        v4 += v28 * v9;
        ++v10;
      }

      while (v21 != v10);
    }

    return v4;
  }

  v18 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureAssetLoader::registerAsset(v18, v19, v20);
}

uint64_t re::TextureAssetLoader::registerAsset(re::TextureAssetLoader *this, void **a2, const re::ExistingAssetInformation *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  if (v6 && *(v6 + 208) && (!a2[2] || !a2[1]) && re::TextureData::isValid((a2 + 14)) && !*(a2 + 30))
  {
    re::TextureManager::registerTexture(*(*(this + 2) + 56), a2 + 14, &v33);
    re::TextureHandle::operator=((a2 + 1), &v33);
    re::TextureHandle::invalidate(&v33);
  }

  if (!*(this + 9) || !a2[9])
  {
    v16 = *(this + 1);
    if (!v16)
    {
      goto LABEL_40;
    }

    if (*(a2 + 82) == 1)
    {
      if (*(a2 + 84))
      {
        goto LABEL_40;
      }

      if (!*(a2 + 60))
      {
        v30 = a2[29];
        re::makeLoadedTextureView(&v30, a2 + 40, &v31);
        if (v30)
        {

          v30 = 0;
        }

        v33 = v31;
        *v34 = 0;
        v29 = *(a2 + 90);
        v17 = a2[22];
        v18 = v17;
        v19 = a2[40];
        *dst = a2[42];
        *&dst[8] = v19;
        re::TextureAsset::setTexture(a2, (this + 40), &v33, a2 + 89, &v29, v17, dst);
        if (*v34 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*v34])(dst, &v33);
        }

        goto LABEL_30;
      }

LABEL_44:
      v28 = std::__throw_bad_variant_access[abi:nn200100]();
      _Unwind_Resume(v28);
    }

    (*(*v16 + 8))(&v33);
    (*(**(this + 1) + 24))(dst);
    re::AssetHandle::loadNow(*&dst[8], 0);
    if (*&dst[8])
    {
      v23 = atomic_load((*&dst[8] + 896));
      if (v23 == 2)
      {
        re::AssetHandle::mutateAssetCommon(dst);
        ++*(*&dst[8] + 276);
        v24 = re::AssetHandle::loadedAsset<re::TextureAsset>(dst);
        if (v24)
        {
          if (*(a2 + 30))
          {
            goto LABEL_44;
          }

          re::TextureAsset::updateMips(v24, (this + 40), a2[14]);
          v25 = *&dst[8];
          *(*&dst[8] + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v25);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*&dst[8]);
        }
      }
    }

    re::AssetHandle::~AssetHandle(dst);
    re::AssetHandle::~AssetHandle(&v33);
    goto LABEL_40;
  }

  v7 = re::DirectTexturePayload::connectionId(a2 + 9);
  v8 = [a2[9] identifier];
  v33 = v7;
  uuid_copy(v34, v8);
  v9 = *(this + 9);
  *dst = v33;
  uuid_copy(&dst[8], v34);
  if (*(a3 + 10) == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a3 + 10);
  }

  re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v9, dst, v10);
  v11 = *(this + 9);
  v12 = v33;
  uuid_copy(dst, v34);
  Resource = re::DirectResourceAssetTracker::findResource(v11, v12, dst);
  if (!Resource)
  {
    goto LABEL_40;
  }

  v14 = Resource;
  v15 = DRResourceAsTexture();
  if (v15)
  {
    [a2[9] setDirectTexture:v15];
    v31 = DRTextureReadTexture();
    if (a2[2] && a2[1])
    {
      re::TextureHandle::setMetalTexture((a2 + 1), &v31);
    }

    else
    {
      v20 = *(this + 2);
      if (v20)
      {
        re::TextureManager::registerTexture(*(v20 + 56), &v31, dst);
        re::TextureHandle::operator=((a2 + 1), dst);
        re::TextureHandle::invalidate(dst);
      }
    }

    re::TextureHandle::setMetalTexture((a2 + 12), &v31);
LABEL_30:
    if (v31)
    {
    }

    goto LABEL_40;
  }

  v21 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = re::DirectTexturePayload::connectionId(a2 + 9);
    *dst = 134218240;
    *&dst[4] = v22;
    *&dst[12] = 2048;
    *&dst[14] = v14;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "TexturePayload resourceDidUpdate received a non-texture DirectResource for connectionId: %llu resource: %p", dst, 0x16u);
  }

LABEL_40:
  v26 = *(this + 3);
  if (v26 && a2[7])
  {
    (**v26)(v26, a2);
  }

  return 0;
}

void re::TextureAssetLoader::unregisterAsset(uint64_t a1, re::DirectTexturePayload *this, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  if (v6 && *(this + 7))
  {
    (*(*v6 + 8))(v6, this);
  }

  if (*(a1 + 72) && *(this + 9))
  {
    v7 = re::DirectTexturePayload::connectionId(this + 9);
    v8 = [*(this + 9) identifier];
    v13 = v7;
    uuid_copy(v14, v8);
    v9 = *(a1 + 72);
    v11 = v7;
    uuid_copy(v12, v14);
    if (*(a3 + 80) == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a3 + 80);
    }

    re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v9, &v11, v10);
  }

  if (*(this + 2) && *(this + 1))
  {
    re::TextureHandle::invalidate((this + 8));
  }

  if (*(this + 13))
  {
    if (*(this + 12))
    {
      re::TextureHandle::invalidate((this + 96));
    }
  }
}

void re::TextureAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && (v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "TextureDownsampleFactor")) != 0 && !*(v8 + 32))
  {
    if (*(v8 + 8))
    {
      v10 = *(v8 + 16);
    }

    else
    {
      v10 = (v8 + 9);
    }

    v9 = atoi(v10);
  }

  else
  {
    v9 = 1;
  }

  re::TextureAssetLoader::createRuntimeData(a1, a2, a3, v9, a4);
}

uint64_t re::TextureAssetLoader::createRuntimeDataWithMemoryAttribution(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution: task token cannot be null", "memoryAttributionTarget != ((task_id_token_t) 0)", "createRuntimeDataWithMemoryAttribution", 2633);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution called while !supportsMemoryAttribution", "supportsMemoryAttribution()", "createRuntimeDataWithMemoryAttribution", 2634);
    _os_crash();
    __break(1u);
  }

  if (((*(*a1 + 320))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = (*(*a1 + 24))(a1, a2, a4, a5);
  v12 = v11;
  if (!v11)
  {
    return v12;
  }

  v13 = *(a2 + 120);
  v14 = *re::assetTypesLogObjects(v11);
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Texture asset memory attribution requires Metal storage.", buf, 2u);
    }

    return v12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v22 = a3;
    _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Attributing texture asset to %llu", buf, 0xCu);
  }

  if (!*(a2 + 120))
  {
    v20 = *(a2 + 112);
    v15 = re::AssetHelper::attributeResourceMemory(&v20, a3);
    if (v15)
    {
      *(a2 + 128) |= 0x100u;
    }

    else
    {
      v16 = *re::assetTypesLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_msgSend(v20 label)];
        *buf = 134218242;
        v22 = a3;
        v23 = 2080;
        v24 = v18;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Texture asset memory attribution failed for task_id %llu and buffer %s.", buf, 0x16u);
      }
    }

    if (v20)
    {
    }

    return v12;
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::TextureAssetLoader::supportsMemoryAttribution(v19);
}

re *re::internal::destroyPersistent<re::TextureAsset>(re *result, uint64_t a2, void (***a3)(void))
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

uint64_t re::TextureAssetLoader::introspectionType(re::TextureAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::internal::getOrCreateInfo("TextureAsset", re::allocInfo_TextureAsset, re::initInfo_TextureAsset, &re::internal::introspectionInfoStorage<re::TextureAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

void re::TextureAssetLoader::cloneAsset(id *this, char *a2, re::AssetSerializationScheme *a3)
{
  v5 = *(a2 + 30);
  if (v5)
  {
    if (v5 != 1)
    {
      v15 = std::__throw_bad_variant_access[abi:nn200100]();
      return;
    }

    v6 = *(a2 + 14);
    if (*(v6 + 48) && *(v6 + 24))
    {
      v23 = 0;
      v24 = 0;
      v7 = *(a2 + 14);
      v8 = re::globalAllocators(this);
      v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
      v21 = re::CPUTexture::CPUTexture(v9, (v7 + 24), (v7 + 32));
      if (v21)
      {
        v10 = (v9 + 8);
      }

      v22 = 1;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v23, &v21);
      if (v22 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v22])(&v20, &v21);
      }

      v22 = -1;
      if (!v9)
      {
        goto LABEL_15;
      }

      v11 = (v9 + 8);
      goto LABEL_14;
    }
  }

  else if (*(a2 + 14))
  {
    v23 = 0;
    v24 = 0;
    v13 = *(a2 + 14);
    v20 = v13;
    v14 = v19;
    if (!v19)
    {
      if (v13)
      {
      }

      goto LABEL_16;
    }

    v21 = v19;
    v22 = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v23, &v21);
    if (v22 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v22])(&v25, &v21);
    }

    if (!v13)
    {
LABEL_15:
      TextureAsset = re::TextureAsset::makeTextureAsset(&v23, (a2 + 128), *(a2 + 89), *(a2 + 90));
      *(TextureAsset + 82) = a2[82];
      *(TextureAsset + 83) = *(a2 + 83);
      *(TextureAsset + 80) = *(a2 + 40);
      re::DynamicString::operator=((TextureAsset + 24), (a2 + 24));
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(TextureAsset + 232, TextureAsset + 112);
LABEL_16:
      if (v24 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v24])(&v21, &v23);
      }

      return;
    }

    v11 = v13;
LABEL_14:

    goto LABEL_15;
  }

  re::AssetLoader::cloneAsset(this, a2, a3);
}

void re::anonymous namespace::makeCopyOfTextureCommitAndWaitForGPU(id *a1, id *a2, id *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  re::createDescriptorFromTexture(a2, a3, &v21);
  if (a4)
  {
    [v21 setStorageMode_];
    re::mtl::Device::makeSharedTexture(v21, a2, &v20);
  }

  else
  {
    re::mtl::Device::makeTexture(v21, a2, &v20);
  }

  if (v20)
  {
    [v20 setLabel_];
    re::ImportGraphicsContext::getOrCreateCommandQueue(a2, &re::internal::copyTextureQueueName(void)::queueName, 1, &v19);
    re::mtl::CommandQueue::makeCommandBuffer(&v19, &v18);
    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v18, &v17);
    re::mtl::BlitCommandEncoder::textureCopy(&v17, *a3, v20);
    [v17 endEncoding];
    [v18 commit];
    [v18 waitUntilCompleted];
    re::internal::getCommandBufferError(&v18, v13);
    if (v13[0])
    {
      v9 = [*a3 label];
      if (v9)
      {
        [v20 setLabel_];
      }

      *a1 = v20;
      v20 = 0;
    }

    else
    {
      v10 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_msgSend(*a3 label)];
        if (v15)
        {
          v12 = *&v16[7];
        }

        else
        {
          v12 = v16;
        }

        *buf = 136315394;
        v23 = v11;
        v24 = 2080;
        v25 = v12;
      }

      *a1 = 0;
    }

    if (v13[0] & 1) == 0 && v14 && (v15)
    {
      (*(*v14 + 40))();
    }

    if (v20)
    {
    }
  }

  else
  {
    *a1 = 0;
  }

  if (v21)
  {
  }
}

uint64_t re::TextureAssetLoader::allocateSampleAsset(id *this)
{
  v23[1] = *MEMORY[0x1E69E9840];
  re::mtl::makeDefaultDevice(v23);
  v22 = 4;
  v20 = 0;
  v21 = 80;
  v9 = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v23, &v20, &v21, &v22, &v9);
  v3 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  if (([v3 respondsToSelector_] & 1) != 0 || objc_msgSend(v3, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v3 setCompressionType_];
  }

  [v3 setPixelFormat_];
  [v3 setWidth_];
  [v3 setHeight_];
  [v3 setUsage_];
  [v3 setStorageMode_];
  Texture = re::mtl::Device::makeTexture(v3, this + 5, &v19);
  MEMORY[0x1EEE9AC00](Texture);
  qmemcpy(v8, " !#$%&'()*+,-./0123456789:;<=>?", sizeof(v8));
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = vdupq_n_s64(4uLL);
  *&v13 = 1;
  [v19 replaceRegion:&v9 mipmapLevel:0 withBytes:0x706050403020100 bytesPerRow:{0xF0E0D0C0B0A0908, 0x1716151413121110, 0x1F1E1D1C1B1A1918, v8[0], v8[1], v8[2], v8[3]}];
  v5 = v19;
  v16 = 0;
  v17 = v5;
  v18 = 0;
  LOWORD(v9) = 0;
  v11 = 0;
  v12.i64[0] = 0;
  v10 = 0;
  v13 = 0u;
  memset(v14, 0, 28);
  v15 = 0;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v17, &v9, 1, 0);
  if (*&v14[0])
  {
    if (v15)
    {
      (*(**&v14[0] + 40))(*&v14[0]);
    }

    v15 = 0;
    memset(v14, 0, 24);
    ++DWORD2(v14[1]);
  }

  if (v13)
  {
  }

  if (v18 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v18])(&v9, &v17);
  }

  if (v19)
  {
  }

  if (v3)
  {
  }

  return TextureAsset;
}

void re::TextureAssetLoader::makeSharedResourcePayload(re::TextureAssetLoader *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X2>, RESerializedPayload **a4@<X8>)
{
  v5 = *(a2 + 9);
  if (v5)
  {
    *a4 = v5;
    return;
  }

  if (!*(a2 + 30))
  {
    v8 = this;
    this = *(a2 + 14);
    if (this)
    {
      v10 = this;
      v39 = v10;
      if (re::TextureData::isValid((a2 + 232)))
      {
        if (re::TextureData::isShareable((a2 + 232)))
        {
          v11 = [(re::TextureAssetLoader *)v10 isShareable];
          if ((v11 & 1) == 0)
          {
            v12 = *re::assetTypesLogObjects(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Copying a texture to create a shared version.", buf, 2u);
            }

            v13 = v38;
            if (v38)
            {
              *buf = v38;
              v37 = 0;
              v35 = *(a2 + 90);
              v14 = *(a2 + 22);
              v15 = v14;
              v16 = *(a2 + 40);
              v33 = *(a2 + 42);
              v34 = v16;
              re::TextureAsset::setTexture(a2, (v8 + 40), buf, a2 + 89, &v35, v14, &v33);
              if (v37 != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v37])(&v33, buf);
              }
            }
          }
        }
      }

      v17 = [(re::TextureAssetLoader *)v10 iosurface];
      v18 = [(re::TextureAssetLoader *)v10 isShareable];
      if (*(v8 + 88) != 1 || v17 || (v18 & 1) != 0)
      {
        *buf = 0;
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v19 = *re::assetTypesLogObjects(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Last attempt to copying a texture to create a shared version", buf, 2u);
        }

        v20 = v38;
        if (!v38)
        {
          *buf = 0;
          goto LABEL_36;
        }

        *buf = v38;
        v37 = 0;
        v35 = *(a2 + 90);
        v21 = *(a2 + 22);
        v22 = v21;
        v23 = *(a2 + 40);
        v33 = *(a2 + 42);
        v34 = v23;
        re::TextureAsset::setTexture(a2, (v8 + 40), buf, a2 + 89, &v35, v21, &v33);
        if (v37 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v37])(&v33, buf);
        }

        if (*(a2 + 30))
        {
          v31 = std::__throw_bad_variant_access[abi:nn200100]();
          re::TextureData::isShareable(v31);
          return;
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v39, a2 + 14);
        v17 = [(re::TextureAssetLoader *)v39 iosurface];
        v24 = [(re::TextureAssetLoader *)v39 isShareable];

        *buf = 0;
        if ((v24 & 1) == 0)
        {
LABEL_28:
          if (v17)
          {
            re::IOSurfaceTexturePayload::make(&v39, &v33);
LABEL_38:
            v27 = v33;
            v33 = 0;
            *buf = v27;

            goto LABEL_39;
          }

LABEL_36:
          if (!*(a2 + 7))
          {
            goto LABEL_42;
          }

          re::AssetLoader::makeSharedResourcePayload(v8, a2, a3, &v33);
          goto LABEL_38;
        }
      }

      v25 = a2[85];
      v26 = *(a2 + 89);
      re::DynamicString::DynamicString(v32, (a2 + 368));
      re::SharedTexturePayload::make(&v39, v25, v26, v32, &v33);
      v27 = v33;
      v33 = 0;
      *buf = v27;

      if (*&v32[0])
      {
        if (BYTE8(v32[0]))
        {
          (*(**&v32[0] + 40))();
        }

        memset(v32, 0, sizeof(v32));
      }

LABEL_39:
      if (v27)
      {
        v28 = *(a2 + 7);
        if (v28)
        {
          re::DrawableQueue::makeSharedResourcePayload(v28, &v33);
          re::DrawableQueueTexturePayload::make(&v33, &v38);
          v29 = v38;
          v38 = 0;
          *a4 = v29;

          v30 = *buf;
        }

        else
        {
          v30 = 0;
          *buf = 0;
          *a4 = v27;
        }

LABEL_44:

        if (v39)
        {
        }

        return;
      }

LABEL_42:
      re::AssetLoader::makeSharedResourcePayload(v8, a2, a3, a4);
      v30 = 0;
      goto LABEL_44;
    }
  }

  v7 = *re::assetsLogObjects(this);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create a shared resource payload for a texture asset with an invalid Metal texture.", buf, 2u);
  }

  *a4 = 0;
}

id re::TextureData::isShareable(re::TextureData *this)
{
  v2 = *(this + 2);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::TextureAssetLoader::postInitializeAssetFromPayload(v5);
  }

  else
  {
    v3 = *this;

    return [v3 isShareable];
  }
}

uint64_t re::TextureAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, uint64_t a3)
{
  v12 = *a2;
  (*(*a1 + 248))(a1, a3, &v12, re::PassthroughAssetSerialization::instance(void)::instance);

  v11 = *a2;
  v6 = re::AssetLoader::createRuntimeDataWithPayload(a1, a3, &v11, 0);

  if ((v6 & 1) == 0)
  {
    v8 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "createRuntimeData returned false for asset created from a payload", v10, 2u);
    }
  }

  return v6;
}

void re::TextureAssetLoader::resourceDidUpdate(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  re::DrawableQueueTexturePayload::dynamicCast(a3, &v49);
  if (!v49)
  {
LABEL_6:
    *(a2 + 85) = 0;
    re::DirectTexturePayload::dynamicCast(a3, &v47);
    re::SharedTexturePayload::dynamicCast(a3, &v46);
    re::IOSurfaceTexturePayload::dynamicCast(a3, &v45);
    if (*(a1 + 72) && v47)
    {
      re::ObjCObject::operator=((a2 + 72), &v47);
      goto LABEL_23;
    }

    if (v46)
    {
      v13 = re::SharedTexturePayload::handle(&v46);
      v15 = *(a1 + 40);
      v14 = (a1 + 40);
      v16 = [v15 newSharedTextureWithHandle_];
      re::SharedTexturePayload::colorSpace(&v46, buf);
      re::DynamicString::operator=((a2 + 368), buf);
      if (*buf && (v44 & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::TextureAsset::copyColorSpaceToCFStringPtr(&v42, a2);
      re::ObjCObject::operator=((a2 + 176), &v42);
      *buf = v16;
      LODWORD(v44) = 0;
      v17 = [v46 semantic];
      v40 = *(a2 + 360);
      v41 = v17;
      v18 = *(a2 + 176);
      v19 = v18;
      v20 = *(a2 + 320);
      v38 = *(a2 + 336);
      v39 = v20;
      re::TextureAsset::setTexture(a2, v14, buf, &v41, &v40, v18, &v38);
      if (v44 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
      }

      *(a2 + 85) = [v46 isLimitedRenderAsset];

      if (!v16)
      {
        goto LABEL_23;
      }

      v21 = v16;
    }

    else
    {
      if (!v45)
      {
        v26 = *re::assetsLogObjects(v12);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Using fallback Texture resourceDidUpdate, no shared texture or iosurface found.", buf, 2u);
        }

        v37 = *a3;
        re::AssetLoader::resourceDidUpdate(a1, a2, &v37, a4);

        v27 = (a1 + 40);
        v28 = [*(a1 + 40) supportsSharedTextureHandles];
        if (v28)
        {
          v29 = *re::assetTypesLogObjects(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "TextureAssetLoader::resourceDidUpdate: unexpected to get here if shared texture handles are supported", buf, 2u);
          }
        }

        *buf = 0;
        LODWORD(v44) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a2 + 112, buf);
        if (v44 != -1)
        {
          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
        }

        v36 = *a3;
        v30 = re::AssetLoader::createRuntimeDataWithPayload(a1, a2, &v36, 0);

        if (v30)
        {
          LODWORD(v38) = *(a2 + 360);
          v32 = *(a2 + 176);
          v33 = v32;
          v34 = *(a2 + 320);
          *buf = *(a2 + 336);
          v44 = v34;
          re::TextureAsset::setTexture(a2, v27, a2 + 112, (a2 + 356), &v38, v32, buf);
        }

        else
        {
          v35 = *re::assetsLogObjects(v31);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "createRuntimeData returned false for asset created from a payload", buf, 2u);
          }
        }

        goto LABEL_23;
      }

      re::IOSurfaceTexturePayload::makeTextureWithDevice(&v45, (a1 + 40), &v42);
      *buf = v42;
      LODWORD(v44) = 0;
      v41 = *(a2 + 360);
      v23 = *(a2 + 176);
      v24 = v23;
      v25 = *(a2 + 320);
      v38 = *(a2 + 336);
      v39 = v25;
      re::TextureAsset::setTexture(a2, (a1 + 40), buf, (a2 + 356), &v41, v23, &v38);
      if (v44 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v44])(&v38, buf);
      }

      v21 = v42;
      if (!v42)
      {
LABEL_23:

        v22 = v47;
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  re::DrawableQueueTexturePayload::drawableQueue(&v49, buf);
  v8 = *(a1 + 16);
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 448, 8);
  v48 = v11;
  re::TextureAssetLoader::setDrawableQueueForTextureAsset(a1, a2, &v48);
  if (v11)
  {

    v48 = 0;
  }

  re::DrawableQueueTexturePayload::placeholderTexture(&v49, &v38);
  if (v38)
  {
    re::ObjCObject::operator=(a3, &v38);

    goto LABEL_6;
  }

  v22 = *buf;
LABEL_24:
}

void re::TextureAssetLoader::setDrawableQueueForTextureAsset(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (a2 + 56);
  v3 = *(a2 + 56);
  v5 = *a3;
  if (v3 != *a3)
  {
    if (v5)
    {
      v7 = *(a2 + 72) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (*(a2 + 16))
      {
        v8 = *(a2 + 8) == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v10 = *(a1 + 24);
        if (v10)
        {
          v12 = *a3;
          if (v3)
          {
            (*(*v10 + 8))(v10, a2);
            v12 = *a3;
          }

          if (v5)
          {
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v12);
            (***(a1 + 24))(*(a1 + 24), a2);
            v5 = *a3;
          }

          else
          {
            v5 = v12;
          }
        }
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v5);
      v13 = *v4;
      if (*v4 && (*(a2 + 68) & 0xFFFFFF) != 0)
      {
        v14 = *(a2 + 64);

        re::DrawableQueue::setActiveRealityRendererScene(v13, v14);
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.", "!drawableQueue || !textureAsset.directTexturePayload.isValid()", "setDrawableQueueForTextureAsset", 3137);
      _os_crash();
      __break(1u);
    }
  }
}

void *re::TextureAssetLoader::checkCredentialsOfNetworkAsset@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
{
  if (a2)
  {
    result = result[4];
    if (result)
    {
      result = (*(*result + 72))(result, a3);
    }

    *a4 = 257;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t re::TextureAssetLoader::needsCustomSerializationCopy(re::TextureAssetLoader *this, void *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!*(a2 + 7) && !*(a2 + 9))
  {
    return 0;
  }

  re::TextureHandle::unsynchronizedMetalTexture(a2 + 1, &v10);
  v4 = *(a2 + 7);
  if (v4)
  {
    re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture(v4, &v8);
    if (v8 == 1)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v10, &v9);
      if (v8)
      {
        if (v9)
        {
        }
      }
    }
  }

  if (!v10)
  {
    return 0;
  }

  v8 = v10;
  LODWORD(v9) = 0;
  canExportToKtx = re::canExportToKtx(&v8, v5);
  if (v9 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v9])(&v11, &v8);
  }

  if ((canExportToKtx & 1) == 0)
  {
    if (v10)
    {
    }

    return 0;
  }

  if (v10)
  {
  }

  return 1;
}

id *re::TextureAssetLoader::tryMakeCustomSerializationCopy(re::TextureAssetLoader *this, void *a2, int a3)
{
  if (!a3 || !*(a2 + 7) && !*(a2 + 9))
  {
    return 0;
  }

  re::TextureHandle::unsynchronizedMetalTexture(a2 + 1, &v13);
  v5 = *(a2 + 7);
  if (v5)
  {
    TextureAsset = &v11;
    re::DrawableQueue::getLatestReadableUnSynchronizedMetalTexture(v5, &v11);
    if (v11 == 1)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(&v13, &v12);
      if (v11)
      {
        if (v12)
        {
        }
      }
    }
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v11 = v13;
  LODWORD(v12) = 0;
  canExportToKtx = re::canExportToKtx(&v11, v6);
  v8 = canExportToKtx;
  if (canExportToKtx)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset(&v11, a2 + 128, *(a2 + 89), *(a2 + 90));
  }

  if (v12 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v12])(&v14, &v11);
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
LABEL_16:
    v9 = 1;
  }

  if (v13)
  {
  }

  if (v9)
  {
    return 0;
  }

  return TextureAsset;
}

void re::TextureAssetLoader::editRealityFileSerializationParameters(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  re::TextureAssetLoader::getOrCreateImportOptions(a2, a4, v12);
  if (!re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "writeAsSourceImage") && re::shouldASTCCompress((a2 + 14), v13, &v14))
  {
    if (v13 == 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1;
      LODWORD(v14) = 1;
      HIDWORD(v14) = 1056964608;
    }

    v11 = v6;
    v10 = v14;
    re::Data::makeDataWithBytes(&v10, 0x14, &v9);
    v7[0] = v9;
    v8 = 1;
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a3, "kGBA8ToASTCCompressionWriteParameters", v7);
    if (v8 != -1)
    {
      (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v8))(&v19, v7);
    }
  }

  if (v16)
  {
    if (v17)
    {
      (*(*v16 + 40))();
      v17 = 0;
      v18 = 0;
    }

    v16 = 0;
  }
}

uint64_t *re::TextureAssetLoader::getOrCreateImportOptions@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *(a2 + 48);
    *a3 = *(a2 + 32);
    *(a3 + 16) = v5;
    *(a3 + 32) = *(a2 + 64);
    *(a3 + 44) = *(a2 + 76);
    *(a3 + 64) = *(a2 + 96);
    *(a3 + 72) = *(a2 + 104);
    *(a3 + 88) = *(a2 + 120);
    result = re::FixedArray<short>::FixedArray((a3 + 96), (a2 + 128));
    *(a3 + 120) = *(a2 + 152);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 40) = 0;
    *(a3 + 44) = 0;
    *(a3 + 48) = 0;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 64) = 0;
    *(a3 + 88) = -65536;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    *(a3 + 96) = 0;
    *(a3 + 120) = 0;
    v8 = re::TextureData::mipmapLevelCount((a1 + 14));
    result = 0;
    v9 = *(a1 + 30);
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 56) = *(a1 + 89);
    v11 = *(a1 + 90);
    if (v8 >= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = 2;
    }

    *(a3 + 20) = v12;
    *(a3 + 24) = v11;
    if (!v9)
    {
      result = [a1[14] isShareable];
    }

    *(a3 + 52) = result;
  }

  return result;
}

void re::TextureAssetLoader::injectMipsFromKTX(re::TextureAssetLoader *this, re::TextureAsset *a2, id *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 22);
  v7 = *(a2 + 90) != 1;
  v8 = [*a3 bytes];
  v9 = [*a3 length];
  v18 = &unk_1F5D0A468;
  v19 = 0;
  v20 = v8;
  v21 = v9;
  re::FixedArrayInputStream::FixedArrayInputStream(v22, v8, v9, -1);
  v23[0] = v32[0];
  v23[1] = v32[1];
  v24[0] = v33[0];
  *(v24 + 12) = *(v33 + 12);
  v25 = v34;
  v26 = v35;
  v27 = v36;
  re::FixedArray<short>::FixedArray(&v28, &v37);
  v31 = v40;
  re::TextureAssetLoader::parseKTXData(v41, this, &v18, v23, a2 + 88, 0);
  if (v28)
  {
    if (v29)
    {
      (*(*v28 + 40))(v28, v30, v10, v11);
      v29 = 0;
      v30 = 0;
    }

    v28 = 0;
  }

  if (v37)
  {
    if (v38)
    {
      (*(*v37 + 40))(v37, v39, v12, v13);
      v38 = 0;
      v39 = 0;
    }

    v37 = 0;
  }

  if (v43)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  re::TextureAsset::updateMips(a2, (this + 40), v42);
  if (v52)
  {
    if (v53)
    {
      (*(*v52 + 40))(v52, v54, v14, v15);
      v53 = 0;
      v54 = 0;
    }

    v52 = 0;
  }

  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))(v46, v50, v16, v17);
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  if (v44)
  {

    v44 = 0;
  }

  if (v43 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v43])(v32, &v42);
  }

  v18 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v22);
}

void re::TextureAssetLoader::setDirectTextureForTextureAsset(uint64_t a1, id *this, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = this + 9;
  if (this[9])
  {
    v9 = re::DirectTexturePayload::directTexture(this + 9);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != a3)
  {
    if (a3 && this[7])
    {
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) It is ill-formed for a texture asset to be backed by both a DrawableQueue and a DirectTexture.", "!directTexture || !textureAsset.drawableQueue", "setDirectTextureForTextureAsset", 3176);
      _os_crash();
      __break(1u);
    }

    if (*(a1 + 72))
    {
      if (*v8)
      {
        v10 = re::DirectTexturePayload::connectionId(v8);
        v11 = [*v8 identifier];
        v26 = v10;
        uuid_copy(v27, v11);
        v12 = *(a1 + 72);
        v24 = v26;
        uuid_copy(v25, v27);
        if (*(a4 + 80) == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(a4 + 80);
        }

        re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v12, &v24, v13);
        v14 = *v8;
        *v8 = 0;
      }

      if (a3)
      {
        re::DirectTexturePayload::make(a3, &v26);
        if (v8 != &v26)
        {
          v15 = v26;
          v26 = 0;
          v16 = *v8;
          *v8 = v15;
        }

        v17 = re::DirectTexturePayload::connectionId(v8);
        v18 = [this[9] identifier];
        v26 = v17;
        uuid_copy(v27, v18);
        v19 = *(a1 + 72);
        v24 = v26;
        uuid_copy(v25, v27);
        if (*(a4 + 80) == -1)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(a4 + 80);
        }

        re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v19, &v24, v20);
        v23 = this[9];
        re::AssetLoader::createRuntimeDataWithPayload(a1, this, &v23, 0);

        v22 = DRTextureReadTexture();
        if (this[2] && this[1])
        {
          re::TextureHandle::setMetalTexture((this + 1), &v22);
        }

        else
        {
          v21 = *(a1 + 16);
          if (v21)
          {
            re::TextureManager::registerTexture(*(v21 + 56), &v22, &v24);
            re::TextureHandle::operator=((this + 1), &v24);
            re::TextureHandle::invalidate(&v24);
          }
        }

        re::TextureHandle::setMetalTexture((this + 12), &v22);
        if (v22)
        {
        }
      }
    }
  }
}

uint64_t re::TextureAssetLoader::setBlobOverrideSerializationParameter(uint64_t a1, id *a2)
{
  v4[0] = *a2;
  v5 = 1;
  result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1, "blobOverrideParameterKey", v4);
  if (v5 != -1)
  {
    return (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_4DataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0 + v5))(&v6, v4);
  }

  return result;
}

uint64_t re::TextureAssetLoader::fetchSourceImageTextureDescriptor@<X0>(re::TextureAssetLoader *this@<X0>, re::RealityFile *a2@<X1>, re::RealityFile *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider(this, a2, a3, a4, 1, a5, 0, v13);
  if (v13[0])
  {
    re::TextureProvider::lazyFetchProperties(&v14, v7);
    v8 = v16;
    *a6 = 1;
    *(a6 + 8) = v8;
  }

  else
  {
    re::DynamicString::DynamicString(&v10, &v14);
    *a6 = 0;
    *(a6 + 8) = v10;
    *(a6 + 32) = v12;
    *(a6 + 16) = v11;
  }

  result = v14;
  if (v13[0] == 1)
  {
    return (*v14)(&v14);
  }

  if (v14)
  {
    if (v15)
    {
      return (*(*v14 + 40))();
    }
  }

  return result;
}

uint64_t re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider@<X0>(re::TextureAssetRealityFileProviderCallbacks *this@<X0>, const re::TextureAssetLoader *a2@<X1>, re::RealityFile *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X6>, uint64_t *a7@<X5>, uint64_t a8@<X8>)
{
  v102 = *MEMORY[0x1E69E9840];
  re::DynamicString::rfind(&v85, 46, v83);
  if (v83[0] == 1)
  {
    v59 = a5;
    v58 = this;
    v60 = a3;
    re::DynamicString::resize(&v85, v84, 42);
    if (v86)
    {
      v17 = v88;
    }

    else
    {
      v17 = v87;
    }

    re::DynamicString::format("%s%s%s", &v79, "assets/", v17, ".json");
    if (v86)
    {
      v18 = v88;
    }

    else
    {
      v18 = v87;
    }

    re::DynamicString::format("%s%s%s", &v75, "assets/", v18, ".sourceimage");
    v19 = &v80;
    v20 = v82;
    v21 = v81;
    if (v80)
    {
      v22 = v82[0];
    }

    else
    {
      v22 = v81;
    }

    re::RealityFile::getInputStream(a2, v22, 1, v100);
    if (v76)
    {
      v23 = v78[0];
    }

    else
    {
      v23 = v77;
    }

    InputStream = re::RealityFile::getInputStream(a2, v23, 1, v98);
    if (v100[0])
    {
      v25 = &v76;
      v26 = v78;
      v27 = v77;
      if (v98[0])
      {
        if (a7)
        {
          v28 = *re::assetsLogObjects(InputStream);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *a7;
            *buf = 136315650;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = a4;
            *&buf[22] = 2048;
            v90 = v29;
          }
        }

        if (v101[54] < 3u)
        {
          v74 = 0;
          v71 = 0;
          v72 = 0;
          v70 = 0;
          v73 = 0;
          v67 = 0;
          v68 = 0;
          v66 = v101;
          v69 = 0;
          if (!re::SeekableInputStreamBufferedReader::readNext(&v66, 0xFFFFFFFFFFFFFFFFLL))
          {
            re::DynamicString::format("Unexpected error reading source image options for asset path: '%s'.", buf, v60);
            v42 = *buf;
            v43 = *&buf[16];
            v44 = v90;
            *a8 = 0;
            *(a8 + 8) = v42;
            *(a8 + 24) = v43;
            *(a8 + 32) = v44;
LABEL_69:
            if (v69)
            {
              (*(*v66 + 24))(v66);
              v69 = 0;
            }

            v66 = 0;
            v67 = 0;
            v68 = 0;
            if (v70 && v74)
            {
              (*(*v70 + 40))();
            }

            goto LABEL_45;
          }

          v30 = *MEMORY[0x1E695E480];
          cf = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v67, v68, *MEMORY[0x1E695E498]);
          re::parseTextureFromImageOptions(&cf, v96);
          if ((v96[0] & 1) == 0)
          {
            re::DynamicString::DynamicString(buf, v97);
            *a8 = 0;
            v49 = v90;
            *(a8 + 8) = *buf;
            *(a8 + 32) = v49;
            *(a8 + 16) = *&buf[8];
LABEL_68:
            re::Result<re::TextureFromImageOptions,re::DynamicString>::~Result(v96);
            goto LABEL_69;
          }

          CFRelease(cf);
          if (v59)
          {
            v97[2] = 1;
            v97[4] = v59;
          }

          v64 = 0;
          if (v99[54] < 3u)
          {
            v95 = 0;
            v93 = 0;
            v91 = 0;
            v92 = 0;
            v94 = 0;
            *&buf[16] = 0;
            *buf = v99;
            *&buf[8] = 0;
            LODWORD(v90) = 0;
            Next = re::SeekableInputStreamBufferedReader::readNext(buf, 0xFFFFFFFFFFFFFFFFLL);
            if (Next)
            {
              v32 = CFDataCreate(v30, *&buf[8], *&buf[16]);
              v64 = v32;
              v33 = v32 == 0;
            }

            else
            {
              re::DynamicString::format("Unexpected error reading source image for asset path: '%s'.", &v61, v60);
              v32 = 0;
              v50 = v61;
              v51 = v62;
              v52 = v63;
              *a8 = 0;
              *(a8 + 8) = v50;
              *(a8 + 24) = v51;
              *(a8 + 32) = v52;
              v33 = 1;
            }

            if (v90)
            {
              (*(**buf + 24))(*buf);
              LODWORD(v90) = 0;
            }

            memset(buf, 0, sizeof(buf));
            if (v91 && v95)
            {
              (*(*v91 + 40))();
            }

            if (Next)
            {
              if (v33)
              {
                re::DynamicString::format("Cound not allocate source image for asset path: '%s'.", buf, v60);
                v53 = *buf;
                v54 = *&buf[16];
                v55 = v90;
                *a8 = 0;
                *(a8 + 8) = v53;
                *(a8 + 24) = v54;
                *(a8 + 32) = v55;
              }

              else
              {
                re::DataTextureProvider::DataTextureProvider(buf, (v58 + 40), *(v58 + 88), &v64, 0);
                if (v32)
                {
                  CFRelease(v32);
                }

                re::TextureProvider::setOptions(buf, v97);
                re::DataTextureProvider::DataTextureProvider(&v61, buf);
                *a8 = 1;
                re::DataTextureProvider::DataTextureProvider(a8 + 8, &v61);
                re::DataTextureProvider::~DataTextureProvider(&v61);
                re::DataTextureProvider::~DataTextureProvider(buf);
              }
            }

            goto LABEL_68;
          }
        }

        v56 = std::__throw_bad_variant_access[abi:nn200100]();
        return re::TextureAssetLoader::createTextureAssetDataFromProvider(v56, v57);
      }
    }

    else
    {
      v25 = &v80;
      v26 = v82;
      v27 = v81;
      v19 = &v76;
      v20 = v78;
      v21 = v77;
      if ((v98[0] & 1) == 0)
      {
        if (a6)
        {
          v41 = a6;
        }

        else
        {
          v41 = "Source image and options not found";
        }

        goto LABEL_44;
      }
    }

    v38 = *v26;
    if (*v25)
    {
      v39 = v38;
    }

    else
    {
      v39 = v27;
    }

    if (*v19)
    {
      v40 = *v20;
    }

    else
    {
      v40 = v21;
    }

    re::DynamicString::format("Unexpected: could open texture source image's '%s' but not '%s'.", buf, v40, v39);
LABEL_44:
    v45 = *buf;
    v46 = *&buf[16];
    v47 = v90;
    *a8 = 0;
    *(a8 + 8) = v45;
    *(a8 + 24) = v46;
    *(a8 + 32) = v47;
LABEL_45:
    re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v98);
    re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v100);
    if (v75 && (v76 & 1) != 0)
    {
      (*(*v75 + 40))();
    }

    if (v79 && (v80 & 1) != 0)
    {
      (*(*v79 + 40))();
    }

    goto LABEL_51;
  }

  if (v86)
  {
    v34 = v88;
  }

  else
  {
    v34 = v87;
  }

  re::DynamicString::format("Unexpected: asset entry has no extension: '%s'.", buf, v34);
  v35 = *buf;
  v36 = *&buf[16];
  v37 = v90;
  *a8 = 0;
  *(a8 + 8) = v35;
  *(a8 + 24) = v36;
  *(a8 + 32) = v37;
LABEL_51:
  result = v85;
  if (v85)
  {
    if (v86)
    {
      return (*(*v85 + 40))();
    }
  }

  return result;
}

id *re::TextureAssetLoader::createTextureAssetDataFromProvider@<X0>(re::TextureAssetLoader *this@<X0>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(this);
  re::loadTextureDataWithProvider(this, v5[2], v6, &v48);
  if (v48)
  {
    v8 = v47;
    v10 = *(this + 4);
    v9 = *(this + 5);
    v11 = *(this + 3);
    *(v47 + 76) = *(this + 92);
    *(v8 + 48) = v10;
    *(v8 + 64) = v9;
    *(v8 + 32) = v11;
    re::ObjCObject::operator=((v8 + 96), this + 14);
    v12 = *(this + 120);
    *(v8 + 120) = *(this + 34);
    *(v8 + 104) = v12;
    re::FixedArray<short>::operator=((v8 + 128), this + 18);
    *(v8 + 152) = *(this + 168);
    v13 = (*(*this + 104))(&v45, this);
    if ((v45 & 1) == 0)
    {
      v14 = *re::assetsLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = re::WrappedError::localizedDescription(&v46);
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Failed to preserve source texture data: '%s'.", buf, 0xCu);
      }
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v8 + 24), v46);
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] &= 0xFC00u;
    memset(v59, 0, 24);
    v60 = 0u;
    memset(v61, 0, 28);
    v62 = 0u;
    v36 = 0;
    v37 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v36, v49);
    v16 = v52;
    v39[0] = v51[0];
    *(v39 + 12) = *(v51 + 12);
    v38 = v50;
    v52 = 0u;
    v40 = v16;
    v41 = v53;
    v53 = 0;
    v42 = v54;
    v54 = 0u;
    ++v55;
    v43 = 1;
    v17 = v56;
    *&v56 = 0;
    v44 = v17;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v49, buf);
    v50 = *&buf[16];
    v18 = *(&v52 + 1);
    v19 = v60;
    v51[0] = *v59;
    *(v51 + 12) = *&v59[12];
    v60 = v52;
    v52 = v19;

    re::DynamicArray<short>::operator=(&v53, v61);
    *(&v56 + 1) = *(&v62 + 1);
    if (*v61)
    {
      if (v62)
      {
        (*(**v61 + 40))(*v61);
      }

      *&v62 = 0;
      memset(v61, 0, 24);
      ++*&v61[24];
    }

    if (v60)
    {

      *&v60 = 0;
    }

    if (*&buf[8] != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*&buf[8]])(&v24, buf);
    }

    *(v8 + 160) = *(&v44 + 1);
    v23 = v8;
    v20 = (v8 + 8);
    re::TextureAssetData::TextureAssetData(&v24, &v36, &v38, &v23);
    re::TextureAssetData::TextureAssetData(buf, &v24);
    *a2 = 1;
    re::TextureAssetData::TextureAssetData(a2 + 8, buf);
    *buf = &unk_1F5CC40A0;
    if (v65)
    {

      v65 = 0;
    }

    if (*&v61[24])
    {
      if (v64)
      {
        (*(**&v61[24] + 40))(*&v61[24]);
      }

      v64 = 0;
      v62 = 0uLL;
      *&v61[24] = 0;
      ++v63;
    }

    if (*&v61[8])
    {

      *&v61[8] = 0;
    }

    if (*&v59[8] != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[*&v59[8]])(&v57, v59);
    }

    *&v59[8] = -1;
    *buf = &unk_1F5CCF868;
    objc_destructInstance(&buf[8]);
    v24 = &unk_1F5CC40A0;
    if (v35)
    {

      v35 = 0;
    }

    if (v30)
    {
      if (v34)
      {
        (*(*v30 + 40))();
      }

      v34 = 0;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      ++v33;
    }

    if (v28)
    {

      v28 = 0;
    }

    if (v27 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v27])(&v57, &v26);
    }

    v27 = -1;
    v24 = &unk_1F5CCF868;
    objc_destructInstance(&v25);

    if (v41)
    {
      if (v44)
      {
        (*(*v41 + 40))();
      }

      *&v44 = 0;
      v42 = 0uLL;
      v41 = 0;
      ++v43;
    }

    if (v40)
    {

      *&v40 = 0;
    }

    if (v37 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v37])(buf, &v36);
    }

    if (v45 == 1)
    {
      if (v46)
      {
      }
    }

    else
    {
    }
  }

  else
  {
    re::DynamicString::DynamicString(buf, v49);
    *a2 = 0;
    v21 = *v59;
    *(a2 + 8) = *buf;
    *(a2 + 32) = v21;
    *(a2 + 16) = *&buf[8];
  }

  return re::Result<re::TextureImportData,re::DynamicString>::~Result(&v48);
}

id *re::Result<re::TextureImportData,re::DynamicString>::~Result(id *this)
{
  v2 = (this + 1);
  if (*this == 1)
  {
    re::DynamicArray<unsigned long>::deinit((this + 10));

    v3 = this[8];
    if (v3)
    {

      this[8] = 0;
    }

    v4 = *(this + 4);
    if (v4 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v6, v2);
    }

    *(this + 4) = -1;
  }

  else
  {
    re::DynamicString::deinit((this + 1));
  }

  return this;
}

void re::TextureAssetLoader::createTextureAssetData(re *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v19;
  v10 = a3[1];
  v9 = a3[2];
  v11 = *a3;
  *(v19 + 76) = *(a3 + 44);
  *(v8 + 48) = v10;
  *(v8 + 64) = v9;
  *(v8 + 32) = v11;
  v12 = (v8 + 96);
  v13 = (a3 + 4);
  if ((v8 + 96) != a3 + 4)
  {
    v14 = *v13;
    *v13 = 0;
    v15 = *v12;
    *v12 = v14;
  }

  v16 = *(a3 + 72);
  *(v8 + 120) = *(a3 + 22);
  *(v8 + 104) = v16;
  re::FixedArray<short>::operator=((v8 + 128), a3 + 12);
  *(v8 + 152) = *(a3 + 120);
  *(v8 + 160) = *(a2 + 96);
  v18 = v8;
  v17 = (v8 + 8);
  re::TextureAssetData::TextureAssetData(a4, a1, a2, &v18);
}

void re::TextureAssetLoader::createTextureAssetDataWithOptionsOverride(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v21;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v21 + 24), *(a3 + 24));
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  *(v10 + 76) = *(a4 + 44);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 32) = v11;
  v14 = (v10 + 96);
  v15 = (a4 + 4);
  if ((v10 + 96) != a4 + 4)
  {
    v16 = *v15;
    *v15 = 0;
    v17 = *v14;
    *v14 = v16;
  }

  v18 = *(a4 + 72);
  *(v10 + 120) = *(a4 + 22);
  *(v10 + 104) = v18;
  re::FixedArray<short>::operator=((v10 + 128), a4 + 12);
  *(v10 + 152) = *(a4 + 120);
  *(v10 + 160) = *(a2 + 96);
  v20 = v10;
  v19 = (v10 + 8);
  re::TextureAssetData::TextureAssetData(a5, a1, a2, &v20);
}

uint64_t re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(re::TextureAsset *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 1) + 328) == 1)
  {
    re::TextureAsset::assetType(a1);
    result = re::AssetHandle::assetWithTypeRaw(a1, &re::TextureAsset::assetType(void)::type, 1);
    if (result)
    {
      return result;
    }

    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = re::AssetHandle::assetInfo(a1);
      if (v4[17])
      {
        v5 = v4[18];
      }

      else
      {
        v5 = v4 + 137;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v6, 0xCu);
    }
  }

  return 0;
}

void re::TextureAssetLoader::downgradeTextureAssetToSpring2023(re::TextureAssetLoader *this@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(this + 89) - 3) >= 2 || ((v7 = (this + 176), v8 = *(this + 22), v47 = 0, ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(v8, &v47), ColorGamutFromCGColorSpaceName) ? (v10 = v47 == 0) : (v10 = 1), v10))
  {
    *a3 = 1;
    return;
  }

  re::TextureAsset::assetType(ColorGamutFromCGColorSpaceName);
  v11 = a2[226];
  v37 = &re::TextureAsset::assetType(void)::type;
  v12 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v11, &v37);
  (*(**v12 + 128))(*v12);
  v13 = *v12;
  LOBYTE(v37) = 0;
  v38 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v37, this + 112);
  v14 = *(this + 21);
  v39 = *(this + 64);
  v40[0] = *(this + 136);
  *(v40 + 12) = *(this + 148);
  v41 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
  }

  v42 = *(this + 22);
  re::DynamicArray<short>::DynamicArray(v43, this + 23);
  v46 = *(this + 28);
  v16 = &v27;
  re::convertTextureColorSpace(0, &v37, &v27);
  if (v28)
  {
    if (v28 != 1)
    {
      v22 = std::__throw_bad_variant_access[abi:nn200100]();
      re::TextureAssetLoader::downgradeTextureAssetToSpring2024(v22, v23, v24);
      return;
    }

    if (!*(v27 + 48))
    {
      goto LABEL_17;
    }

    v16 = (v27 + 24);
  }

  if (!*v16)
  {
LABEL_17:
    v21 = *re::assetTypesLogObjects(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to convert texture asset's color space before writing", v25, 2u);
    }

    goto LABEL_19;
  }

  *(this + 64) = v29;
  *(this + 136) = v30[0];
  *(this + 148) = *(v30 + 12);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 21, v31);
  re::ObjCObject::operator=(v7, &v32);
  re::DynamicArray<short>::operator=(this + 184, v33);
  v18 = v32;
  *(this + 28) = v36;
  v26 = *(this + 90);
  v19 = v18;
  v20 = *(this + 40);
  v25[0] = *(this + 42);
  v25[1] = v20;
  re::TextureAsset::setTexture(this, (v13 + 40), &v27, this + 89, &v26, v18, v25);
LABEL_19:
  *a3 = 1;
  if (v33[0])
  {
    if (v35)
    {
      (*(*v33[0] + 40))();
    }

    v35 = 0;
    memset(v33, 0, sizeof(v33));
    ++v34;
  }

  if (v31)
  {

    v31 = 0;
  }

  if (v28 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v28])(v25, &v27);
  }

  if (v43[0])
  {
    if (v45)
    {
      (*(*v43[0] + 40))();
    }

    v45 = 0;
    memset(v43, 0, sizeof(v43));
    ++v44;
  }

  if (v41)
  {

    v41 = 0;
  }

  if (v38 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v38])(&v27, &v37);
  }
}

re::DynamicString *re::TextureAssetLoader::downgradeTextureAssetToSpring2024@<X0>(re::DynamicString *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 87) | 4) == 7)
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    *a2 = 0;
    *(a2 + 8) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
  }

  else
  {
    *a2 = 1;
  }

  return this;
}

void *re::allocInfo_TextureCompileOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196080, "TextureCompileOptions");
    __cxa_guard_release(&qword_1EE195EB0);
  }

  return &unk_1EE196080;
}

void re::initInfo_TextureCompileOptions(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x8FAC598B1297B58CLL;
  v11[1] = "TextureCompileOptions";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE195EC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195EC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_TextureCompressionType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "compressionType";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 7;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE195EB8 = v9;
      __cxa_guard_release(&qword_1EE195EC0);
    }
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE195EB8;
  *(this + 9) = re::internal::defaultConstruct<re::TextureCompileOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureCompileOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureCompileOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureCompileOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

uint64_t *re::introspect_TextureSemantic(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE195ED0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE195ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195ED8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE195FC8, "TextureSemantic", 4, 4, 1, 1);
      qword_1EE195FC8 = &unk_1F5D0C658;
      qword_1EE196008 = &re::introspect_TextureSemantic(BOOL)::enumTable;
      dword_1EE195FD8 = 9;
      __cxa_guard_release(&qword_1EE195ED8);
    }

    if (v2)
    {
      if (byte_1EE195EA1)
      {
        return &qword_1EE195FC8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v52);
      v3 = byte_1EE195EA1;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v52);
      if (v3)
      {
        return &qword_1EE195FC8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE195EA1)
      {
        goto LABEL_46;
      }
    }

    byte_1EE195EA1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE195FC8, a2);
    v49 = 0xACDB0069060A27C2;
    v50 = "TextureSemantic";
    v53 = 0x607DD0F01DCLL;
    v54 = "uint32_t";
    v9 = v52[0];
    v10 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE195ED0);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "Unspecified";
      qword_1EE195F50 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "Raw";
      qword_1EE195F58 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "Scalar";
      qword_1EE195F60 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "Color";
      qword_1EE195F68 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "HDRColor";
      qword_1EE195F70 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "Normal";
      qword_1EE195F78 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 8) = 6;
      *(v48 + 16) = "None";
      qword_1EE195F80 = v48;
      __cxa_guard_release(&qword_1EE195ED0);
    }
  }

  v11 = qword_1EE196008;
  v53 = v9;
  v54 = v10;
  re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v51.var0 = 2 * v16;
        v51.var1 = v15;
        re::TypeBuilder::addEnumConstant(v52, v20, &v51);
        if (*&v51.var0)
        {
          if (*&v51.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v51.var0 = 2 * v25;
          v51.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v52, v29, &v51);
          if (*&v51.var0)
          {
            if (*&v51.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v52, v31);
  xmmword_1EE195FE8 = v51;
  if (v49)
  {
    if (v49)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE195FC8;
}

void re::IntrospectionInfo<re::FixedArray<short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195F20))
  {
    re::IntrospectionFixedArray<short>::IntrospectionFixedArray();
    __cxa_guard_release(&qword_1EE195F20);
  }

  if ((byte_1EE195EA2 & 1) == 0)
  {
    v2 = re::introspect_short(1, a2);
    if ((byte_1EE195EA2 & 1) == 0)
    {
      v3 = v2;
      byte_1EE195EA2 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE195F88, 0);
      qword_1EE195F98 = 0x1800000004;
      unk_1EE195FA0 = v4;
      word_1EE195FA4 = 0;
      *&xmmword_1EE195FA8 = 0;
      *(&xmmword_1EE195FA8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195FB8 = v3;
      qword_1EE195FC0 = 0;
      qword_1EE195F88 = &unk_1F5CC4008;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE195F88, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x18uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195FA8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::allocInfo_TextureAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196110, "TextureAsset");
    __cxa_guard_release(&qword_1EE195EE8);
  }

  return &unk_1EE196110;
}

void re::initInfo_TextureAsset(re *this, re::IntrospectionBase *a2)
{
  v56[0] = 0x3DA0ACA55D0EE56ALL;
  v56[1] = "TextureAsset";
  if (v56[0])
  {
    if (v56[0])
    {
    }
  }

  *(this + 2) = v57;
  if ((atomic_load_explicit(&qword_1EE195EE0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195EE0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_int(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "width";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0xF800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196010 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_int(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "height";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0xFC00000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196018 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_int(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "depth";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x10000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE196020 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::mtl::introspect_PixelFormat(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "pixelFormat";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x15800000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE196028 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::mtl::introspect_TextureType(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "textureType";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x15C00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE196030 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::mtl::introspect_TextureSwizzleChannels(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "swizzle";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x16000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE196038 = v28;
      v29 = re::introspectionAllocator(v28);
      v30 = v29;
      v31 = qword_1EE195EC8;
      if (!qword_1EE195EC8)
      {
        v31 = re::allocInfo_TextureCompileOptions(v29);
        qword_1EE195EC8 = v31;
        re::initInfo_TextureCompileOptions(v31, v32);
      }

      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "compileOptions";
      *(v33 + 16) = v31;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x16800000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE196040 = v33;
      v34 = re::introspectionAllocator(v33);
      re::introspect_TextureSemantic(1, v35);
      v36 = (*(*v34 + 32))(v34, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "semantic";
      *(v36 + 16) = &qword_1EE195FC8;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x16400000008;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE196048 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::IntrospectionInfo<re::DynamicString>::get(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "colorSpace";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x17000000009;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE196050 = v40;
      v41 = re::introspectionAllocator(v40);
      v43 = re::introspect_int(1, v42);
      v44 = (*(*v41 + 32))(v41, 72, 8);
      *v44 = 1;
      *(v44 + 8) = "arrayLength";
      *(v44 + 16) = v43;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0x1040000000ALL;
      *(v44 + 40) = 0;
      *(v44 + 48) = 0;
      *(v44 + 56) = 0;
      *(v44 + 64) = 0;
      qword_1EE196058 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = re::introspect_Range(1);
      v47 = (*(*v45 + 32))(v45, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "defaultMipmapRange";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x1080000000BLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE196060 = v47;
      v48 = re::introspectionAllocator(v47);
      re::IntrospectionInfo<re::FixedArray<short>>::get(v48, v49);
      v50 = (*(*v48 + 32))(v48, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "defaultSlices";
      *(v50 + 16) = &qword_1EE195F88;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x1180000000CLL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE196068 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 64, 8);
      *v52 = 6;
      *(v52 + 8) = 1;
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0;
      *(v52 + 40) = 1;
      *(v52 + 48) = re::TextureAssetLoader::downgradeTextureAssetToSpring2023;
      *(v52 + 56) = 2;
      qword_1EE196070 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 64, 8);
      *v54 = 6;
      *(v54 + 8) = 1;
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0;
      *(v54 + 40) = 1;
      *(v54 + 48) = re::TextureAssetLoader::downgradeTextureAssetToSpring2024;
      *(v54 + 56) = 3;
      qword_1EE196078 = v54;
      __cxa_guard_release(&qword_1EE195EE0);
    }
  }

  *(this + 2) = 0x19800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE196010;
  *(this + 9) = re::internal::defaultConstruct<re::TextureAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TextureAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::TextureAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::TextureAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_12TextureAssetELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS4_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS7_ENS0_8priorityILi1EEEENUlSC_S7_E_8__invokeESC_S7_;
  re::internal::prepare(this, v4);
  v55 = v57;
}

void *re::allocInfo_SidecarImageImportOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195EF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1961A0, "SidecarImageImportOptions");
    __cxa_guard_release(&qword_1EE195EF0);
  }

  return &unk_1EE1961A0;
}

void re::initInfo_SidecarImageImportOptions(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x1B5556AE59D30EF6;
  v15[1] = "SidecarImageImportOptions";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE195EF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195EF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::mtl::introspect_PixelFormat(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "pixelFormat";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x2000000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE195F28 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicString>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "colorSpace";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE195F30 = v13;
      __cxa_guard_release(&qword_1EE195EF8);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195F28;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::anonymous namespace::SidecarImageImportOptions>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::anonymous namespace::SidecarImageImportOptions>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 32) = 0;
  return result;
}

re::TextureAsset *re::TextureAsset::TextureAsset(re::TextureAsset *this)
{
  *this = &unk_1F5CC3D38;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v2 = (this + 24);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 7) = 0;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 9) = 0;
  *(this + 40) = 0;
  *(this + 82) = 65537;
  *(this + 86) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 30) = 0;
  *(this + 64) &= 0xFC00u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 60) = 0;
  *(this + 29) = 0;
  *(this + 248) = xmmword_1E305F260;
  *(this + 33) = 0;
  *(this + 34) = 0xFFFFFFFFLL;
  *(this + 42) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 82) = 0;
  *(this + 43) = 0x200000073;
  *(this + 88) = 84148994;
  *(this + 356) = 6;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  re::DynamicString::setCapacity(this + 46, 0);
  *(this + 100) = 0;
  return this;
}

void re::TextureAsset::~TextureAsset(re::TextureAsset *this)
{
  re::TextureAsset::~TextureAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC3D38;
  re::DynamicString::deinit((this + 368));
  re::DynamicArray<unsigned long>::deinit(this + 304);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  v2 = *(this + 60);
  if (v2 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v2])(&v6, this + 232);
  }

  *(this + 60) = -1;
  re::DynamicArray<unsigned long>::deinit(this + 184);

  v3 = *(this + 21);
  if (v3)
  {

    *(this + 21) = 0;
  }

  v4 = *(this + 30);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, this + 112);
  }

  *(this + 30) = -1;
  re::TextureHandle::invalidate((this + 96));

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  re::DynamicString::deinit((this + 24));
  re::TextureHandle::invalidate((this + 8));
}

id re::CPUTexture::compressionType(re::CPUTexture *this)
{
  v1 = *(this + 3);
  if ([v1 respondsToSelector_])
  {
    return [v1 compressionType];
  }

  result = [v1 methodSignatureForSelector_];
  if (result)
  {
    return [v1 compressionType];
  }

  return result;
}

double re::TextureAssetData::TextureAssetData(re::TextureAssetData *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CC40A0;
  *(this + 8) = 0;
  *(this + 20) &= 0xFC00u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CC3D68[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSC_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

uint64_t **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSC_SG_EEEEEEDcSQ_DpT0_(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  **result = *a2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

_anonymous_namespace_ *re::FixedArray<short>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<short>::copy(a1, *a2, *(a2 + 8));
  }

  return a1;
}

void *re::FixedArray<short>::copy(void *result, const void *a2, uint64_t a3)
{
  if (result[1] == a3)
  {
    if (a3)
    {
      v5 = 2 * a3;
      v6 = result[2];

      return memmove(v6, a2, v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::FixedArray<short>::init<>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 2 * a3;
  v6 = (*(*a2 + 32))(a2, 2 * a3, 2);
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
    bzero(v6, v5 - 2);
    v8 = (v8 + v5 - 2);
  }

  *v8 = 0;
}

uint64_t *re::FixedArray<short>::FixedArray(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<short>::init<>(a1, v4, a2[1]);
    re::FixedArray<short>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<short>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 2 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CC3D88;
  *(a1 + 8) = *a2;
  *(a1 + 16) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 18);
  *(a1 + 24) = v4;
  v5 = *(a2 + 19);
  *(a1 + 27) = v5;
  if (v5 == 1)
  {
    *(a1 + 28) = *(a2 + 20);
  }

  v6 = *(a2 + 21);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 29) = v6;
  *(a1 + 40) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 92) = *(a2 + 84);
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 48) = v7;
  v10 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 112) = v10;
  v11 = *(a2 + 112);
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  v12 = *(a2 + 144);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 152) = v12;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v13 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 152);
  *(a2 + 152) = v13;
  *(a1 + 168) = *(a2 + 160);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 176) = v14;
  *(a1 + 192) = v15;
  return a1;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CC3D88;
  re::FixedArray<CoreIKTransform>::deinit((a1 + 144));

  return a1;
}

void re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5CC3D88;
  re::FixedArray<CoreIKTransform>::deinit((a1 + 144));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v17[0] = *(a1 + 48);
  v17[1] = v7;
  v18[0] = *(a1 + 80);
  *(v18 + 12) = *(a1 + 92);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 136);
  re::FixedArray<short>::FixedArray(&v22, (a1 + 144));
  v25 = *(a1 + 168);
  re::createTextureWithKTXData(a1 + 8, a2, 0x5040302u, v6, v17, *(a1 + 176), *(a1 + 184), 0, v27, 0, **(a1 + 200), **(a1 + 208));
  v8 = *(a1 + 192);
  v9 = v27[0];
  v10 = v27[1];
  v11 = v27[3];
  *(v8 + 32) = v27[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  if (*(v8 + 64))
  {
    if ((v28 & 1) == 0)
    {
      *(v8 + 64) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(v8 + 64) = 1;
  }

  *(v8 + 66) = v29;
LABEL_7:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v8 + 72, &v30);
  *(v8 + 88) = v32;
  v12 = v33[0];
  *(v8 + 108) = *(v33 + 12);
  *(v8 + 96) = v12;
  v13 = *(v8 + 128);
  *(v8 + 128) = v34;
  v34 = v13;
  if (v8 != v27)
  {
    v14 = v35;
    v35 = 0;
    v15 = *(v8 + 136);
    *(v8 + 136) = v14;
  }

  re::DynamicArray<short>::operator=(v8 + 144, v36);
  v16 = v36[0];
  *(v8 + 184) = v39;
  if (v16)
  {
    if (v38)
    {
      (*(*v16 + 40))(v16);
    }

    v38 = 0;
    memset(v36, 0, sizeof(v36));
    ++v37;
  }

  if (v34)
  {

    v34 = 0;
  }

  if (v31 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v31])(&v26, &v30);
  }

  v31 = -1;
  if (v22)
  {
    if (v23)
    {
      (*(*v22 + 40))();
      v23 = 0;
      v24 = 0;
    }

    v22 = 0;
  }

  *a3 = 1;
}

uint64_t re::internal::Callable<re::anonymous namespace::createUpdatedTexture(re::ImportGraphicsContext const&,re::TextureFromImageOptions,re::Optional<re::Slice<short> const> &,re::Optional<re::Range const> &,re::mtl::PixelFormat,re::DynamicArray<short> const&,re::Range const&,re::SharedPtr<re::InputStreamSource>,unsigned long,char const*,BOOL &,re::Range&,re::FixedArray<short> &,unsigned long &,re::CancellationToken const*,re::CancellationToken const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3D88;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a2 + 26) = *(a1 + 26);
  *(a2 + 24) = v4;
  v5 = *(a1 + 27);
  *(a2 + 27) = v5;
  if (v5 == 1)
  {
    *(a2 + 28) = *(a1 + 28);
  }

  v6 = *(a1 + 29);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 29) = v6;
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  *(a2 + 112) = *(a1 + 112);
  v10 = *(a1 + 136);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = v10;
  re::FixedArray<short>::FixedArray((a2 + 144), (a1 + 144));
  *(a2 + 168) = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 192);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 176) = v11;
  *(a2 + 192) = v12;
  return a2;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CC3DD0[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>> &&>(void **result, void *a2)
{
  **result = *a2;
  *a2 = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CC3DE0[v4])(&v5, result, a2);
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture> const&>(uint64_t a1, void **a2, id *a3)
{
  if (*(a1 + 8))
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture> const&>(a1, a3);
  }

  else
  {
    return NS::SharedPtr<MTL::Buffer>::operator=(a2, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture> const&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 0;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture>,re::SharedPtr<re::CPUTexture> const&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a2, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture> const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__emplace[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture> const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v8, a1);
  }

  *(a1 + 8) = -1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a1 + 8) = 1;
  return a1;
}

unint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*a2 + 64))(a2);
  if (result > **(a1 + 8) || **(a1 + 16) == 1 && result > (**(a1 + 24) * 1.5))
  {
    *a3 = 1;
    return result;
  }

  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  bytes = 0;
  length = 0;
  v16 = a2;
  v19 = 0;
  if (re::SeekableInputStreamBufferedReader::readNext(&v16, 0xFFFFFFFFFFFFFFFFLL) && length)
  {
    v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (*(v9 + 8))
      {
        v10 = *(v9 + 16);
      }

      else
      {
        v10 = v9 + 9;
      }

      v13 = 1;
      re::RealityFileWriter::saveEntryToArchive(v7, v10, **(a1 + 40), 1, 0, 0, &v14);
      if (v14)
      {
        **(a1 + 48) = 1;
      }

      else
      {
        *(a3 + 8) = v15;
        v13 = 0;
      }

      *a3 = v13;
      if ((v14 & 1) == 0)
      {
      }

      CFRelease(v8);
      goto LABEL_13;
    }

    v11 = "Failed to allocate source image data";
  }

  else
  {
    v11 = "Failed to read source image data";
  }

  re::WrappedError::make(@"RERealityFileWriterErrorDomain", 5, v11, &v14);
  v12 = v14;
  v14 = 0;
  *a3 = 0;
  *(a3 + 8) = v12;

LABEL_13:
  if (v19)
  {
    (*(*v16 + 24))(v16);
    v19 = 0;
  }

  v16 = 0;
  bytes = 0;
  length = 0;
  result = v20;
  if (v20)
  {
    if (v24)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E00;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E00;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::DynamicArray<short>::operator=(uint64_t result, uint64_t a2)
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

void re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  *(v9 + 56) = *(v6 + 356);
  *(v9 + 12) = 0;
  v10 = *(v6 + 264);
  if (v10 >= 0xFFFF)
  {
    LOWORD(v10) = -1;
  }

  *(v9 + 88) = v10;
  v11 = *(v6 + 272);
  if (v11 >= 0xFFFF)
  {
    LOWORD(v11) = -1;
  }

  *(v9 + 90) = v11;
  re::FixedArray<short>::operator=((v9 + 96), (v6 + 280));
  v12 = *v7;
  if (*(*v7 + 360) == 1)
  {
    *(*(a1 + 32) + 24) = 1;
  }

  v13 = *(v12 + 376);
  v14 = v13 >> 1;
  if ((v13 & 1) == 0)
  {
    v14 = v13 >> 1;
  }

  if (v14)
  {
    if (v13)
    {
      v15 = *(v12 + 384);
    }

    else
    {
      v15 = (v12 + 377);
    }

    v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
    re::TextureFromImageOptions::setColorSpace(*(a1 + 32), v16);
    CFRelease(v16);
  }

  *(*(a1 + 32) + 52) = *(v8 + 88);
  v76 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v17 = [v76 setSwizzle_];
  v18 = *(a1 + 32);
  v19 = **(a1 + 24);
  v78 = re::globalAllocators(v17)[2];
  v20 = (*(*v78 + 32))(v78, 40, 0);
  *v20 = &unk_1F5CC3EC0;
  v20[1] = v18;
  v20[2] = v8;
  v20[3] = v7;
  v20[4] = &v76;
  v79 = v20;
  (*(*v19 + 48))(&v74, v19, v77);
  re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v77);
  if (v74)
  {
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    v66 = 0;
    v67 = 0;
    v65 = a2;
    v68 = 0;
    if (!re::SeekableInputStreamBufferedReader::readNext(&v65, 0xFFFFFFFFFFFFFFFFLL))
    {
      re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, "Unexpected error reading texture's source image data.", &v57);
      v40 = v57;
      v57 = 0;
      *a3 = 0;
      *(a3 + 8) = v40;

      goto LABEL_40;
    }

    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    v64 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v66, v67, *MEMORY[0x1E695E498]);
    v21 = *(v8 + 88);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 0x40000000;
    v56[2] = ___ZZNK2re18TextureAssetLoader17createRuntimeDataEPvPNS_19SeekableInputStreamEOKNS_5SliceINS_9SharedPtrINS_17InputStreamSourceEEEEEPKNS_9HashTableINS_13DynamicStringENSt3__17variantIJSC_NS_4DataEmEEENS_4HashISC_EENS_7EqualToISC_EELb1ELb0EEEENK3__0clERS2__block_invoke;
    v56[3] = &unk_1E871B060;
    v56[4] = &v61;
    v56[5] = &v65;
    re::DataTextureProvider::DataTextureProvider(&v57, (v8 + 40), v21, v62 + 3, v56);
    re::TextureProvider::setOptions(&v57, *(a1 + 32));
    v22 = re::TextureProvider::setTemplateDescriptor(&v57, &v76, 0);
    v23 = re::globalAllocators(v22);
    re::loadTextureDataWithProvider(&v57, v23[2], v24, &v48);
    v25 = v62[3];
    if (v25)
    {
      CFRelease(v25);
    }

    if (v48)
    {
      v26 = *v7;
      *(v26 + 128) = v51;
      *(v26 + 136) = v52[0];
      *(v26 + 148) = *(v52 + 12);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v26 + 168), v53);
      re::ObjCObject::operator=((v26 + 176), &v54);
      re::DynamicArray<short>::operator=(v26 + 184, v55);
      *(v26 + 224) = v55[5];
      {
        *(*(a1 + 16) + 128) |= 0x80u;
        v28 = *(a1 + 16);
        v29 = *(a1 + 32);
        v30 = *(v28 + 176);
        v31 = v30;
        v32 = *(a1 + 16);
        v33 = *(v32 + 216);
        v34 = *(v32 + 200);
        v45 = v33;
        v46[0] = v34;
        re::TextureAsset::setTexture(v28, (v8 + 40), v49, (v29 + 56), (v29 + 24), v30, &v45);
        *a3 = 1;
LABEL_39:
        re::Result<re::TextureImportData,re::DynamicString>::~Result(&v48);
        re::DataTextureProvider::~DataTextureProvider(&v57);
        _Block_object_dispose(&v61, 8);
LABEL_40:
        if (v68)
        {
          (*(*v65 + 24))(v65);
          v68 = 0;
        }

        v65 = 0;
        v66 = 0;
        v67 = 0;
        v38 = v69;
        if (v69)
        {
          v39 = v73;
          if (v73)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_45;
      }

      CStringPtr = CFStringGetCStringPtr(*(*v7 + 224), 0x8000100u);
      re::DynamicString::format("Unsupported source image format for texture: %s", &v45, CStringPtr);
    }

    else
    {
      if (v49[8])
      {
        v41 = v51;
      }

      else
      {
        v41 = v50;
      }

      re::DynamicString::format("Unexpected error creating texture from image: %s", &v45, v41);
    }

    if (v46[0])
    {
      v42 = v46[1];
    }

    else
    {
      v42 = v46 + 1;
    }

    re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v42, &v47);
    v43 = v47;
    v47 = 0;
    *a3 = 0;
    *(a3 + 8) = v43;

    if (v45 && (v46[0] & 1) != 0)
    {
      (*(*v45 + 40))();
    }

    goto LABEL_39;
  }

  v35 = re::WrappedError::localizedDescription(&v75);
  re::DynamicString::format("Failed to create runtime data for TextureAsset due to error: %s", &v57, v35);
  if (v58)
  {
    v36 = v60;
  }

  else
  {
    v36 = v59;
  }

  re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v36, &v48);
  v37 = v48;
  v48 = 0;
  *a3 = 0;
  *(a3 + 8) = v37;

  v38 = v57;
  if (v57 && (v58 & 1) != 0)
  {
    v39 = v60;
LABEL_44:
    (*(*v38 + 40))(v38, v39);
  }

LABEL_45:
  if ((v74 & 1) == 0)
  {
  }

  if (v76)
  {
  }
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t ___ZZNK2re18TextureAssetLoader17createRuntimeDataEPvPNS_19SeekableInputStreamEOKNS_5SliceINS_9SharedPtrINS_17InputStreamSourceEEEEEPKNS_9HashTableINS_13DynamicStringENSt3__17variantIJSC_NS_4DataEmEEENS_4HashISC_EENS_7EqualToISC_EELb1ELb0EEEENK3__0clERS2__block_invoke(uint64_t a1)
{
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v2 = *(a1 + 40);

  return re::SeekableInputStreamBufferedReader::detachAndDeallocate(v2);
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = &unk_1F5D0AE00;
  v29 = a2;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = (*(*a2 + 40))(a2);
  v34 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = re::DynamicString::setCapacity(&v23, 0);
  v27 = 0;
  if ((atomic_load_explicit(&qword_1EE195F18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE195F18);
    if (v5)
    {
      qword_1EE195F10 = re::internal::getOrCreateInfo("SidecarImageImportOptions", re::allocInfo_SidecarImageImportOptions, re::initInfo_SidecarImageImportOptions, &unk_1EE195F00, 0);
      __cxa_guard_release(&qword_1EE195F18);
    }
  }

  v6 = qword_1EE195F10;
  v16 = *(v6 + 32);
  if (v19[0])
  {
    v7 = v24 >> 1;
    if ((v24 & 1) == 0)
    {
      v7 = v24 >> 1;
    }

    if (v7)
    {
      if (v24)
      {
        v8 = v25;
      }

      else
      {
        v8 = &v24 + 1;
      }

      v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
      re::TextureFromImageOptions::setColorSpace(*(a1 + 8), v9);
      CFRelease(v9);
    }

    else
    {
      v13 = *(a1 + 8);
      v14 = *(v13 + 64);
      *(v13 + 64) = 0;
    }

    if (v27 && re::isSupportedPixelFormat())
    {
      [**(a1 + 32) setPixelFormat_];
      **(a1 + 8) = 1;
    }

    *a3 = 1;
  }

  else
  {
    if (v21)
    {
      v10 = *&v22[7];
    }

    else
    {
      v10 = v22;
    }

    re::DynamicString::format("Unexpected error while loading source image import options: %s", &v16, v10);
    if (BYTE8(v16))
    {
      v11 = v17;
    }

    else
    {
      v11 = &v16 + 9;
    }

    re::WrappedError::make(@"REAssetLoadingErrorDomain", 6, v11, &v18);
    v12 = v18;
    v18 = 0;
    *a3 = 0;
    *(a3 + 8) = v12;

    if (v16 && (BYTE8(v16) & 1) != 0)
    {
      (*(*v16 + 40))();
    }
  }

  if (v19[0] & 1) == 0 && v20 && (v21)
  {
    (*(*v20 + 40))();
  }

  result = v23;
  if (v23 && (v24 & 1) != 0)
  {
    result = (*(*v23 + 40))();
  }

  if (v31)
  {
    return (*(*v29 + 24))(v29);
  }

  return result;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::Result<re::TextureFromImageOptions,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 104));
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::DynamicArray<short>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<short>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<short>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<short>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<short>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 2 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 2 * v5, (*(a2 + 32) + 2 * v5), 2 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 2 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<short>::setCapacity(void *result, unint64_t a2)
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

        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 2);
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
            memcpy(v7, v5[4], 2 * v5[2]);
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
        result = re::DynamicArray<short>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::FixedArray<short>::init<int>(void *result, uint64_t a2, uint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 2 * a3, 2);
  v6[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *a4;
  v9 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = v8;
      result = (result + 2);
      --v9;
    }

    while (v9);
  }

  *result = v8;
  return result;
}

void re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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
  v6 = (*(*a2 + 32))(a2, 4 * a3, 2);
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

uint64_t re::DynamicArray<short>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<short>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<short>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

void *re::DynamicArray<short>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
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
    this = memmove((this[4] + 2 * a2), __src, 2 * a4);
  }

  else
  {
    re::DynamicArray<short>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[2 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 2 * v5), __src, 2 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 2 * v5), v12, 2 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::DynamicArray<short>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<short>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<short>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::make::shared::object<re::anonymous namespace::TextureImportSource>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 168, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CC3F18;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 72) = 0;
  *(v4 + 76) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 60) = 0;
  *(v4 + 52) = 0;
  *(v4 + 68) = 0;
  *(v4 + 88) = 6;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 96) = 0;
  *(v4 + 120) = -65536;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 152) = 0;
  *(v4 + 144) = 0;
  *(v4 + 160) = 0;
  *a2 = v4;
}

void re::anonymous namespace::TextureImportSource::~TextureImportSource(re::_anonymous_namespace_::TextureImportSource *this)
{
  *this = &unk_1F5CC3F18;
  re::FixedArray<CoreIKTransform>::deinit(this + 16);

  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC3F18;
  re::FixedArray<CoreIKTransform>::deinit(this + 16);

  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::DynamicArray<short>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<short>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 2 * v4), 2 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::make::shared::object<re::TextureAssetRealityFileProviderCallbacks,re::TextureAssetLoader *>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 40, 8);
  v6 = *a1;
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 24) = v6;
  *v5 = &unk_1F5CC3F78;
  *(v5 + 32) = *(v6 + 16) != 0;
  *a2 = v5;
}

void re::TextureAssetRealityFileProviderCallbacks::~TextureAssetRealityFileProviderCallbacks(re::TextureAssetRealityFileProviderCallbacks *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::TextureAssetRealityFileProviderCallbacks::tryCreateMissingAsset@<X0>(uint64_t a1@<X0>, const re::TextureAssetLoader *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v8 = *(a1 + 24);
  if (*(a3 + 80))
  {
    v9 = *(a3 + 88);
  }

  else
  {
    v9 = (a3 + 81);
  }

  if (*(a3 + 16))
  {
    v10 = *(a3 + 24);
  }

  else
  {
    v10 = (a3 + 17);
  }

  if (*(a5 + 8))
  {
    v11 = *(a5 + 16);
  }

  else
  {
    v11 = (a5 + 9);
  }

  v12 = re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider(v8, a2, v9, v10, *(a3 + 112), v11, &v42, v37);
  if (v37[0])
  {
    v13 = re::globalAllocators(v12);
    re::loadTextureDataWithProvider(&v38, v13[2], v14, &v34);
    v16 = *re::assetsLogObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (*(a3 + 80))
      {
        v17 = *(a3 + 88);
      }

      else
      {
        v17 = a3 + 81;
      }

      if (*(a3 + 16))
      {
        v18 = *(a3 + 24);
      }

      else
      {
        v18 = a3 + 17;
      }

      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 2048;
      v44 = v42;
    }

    if (v34)
    {
      v32[0] = 0;
      v33 = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v32, &v35);
      TextureAsset = re::TextureAsset::makeTextureAsset(v32, v36, v41, v40);
      if (TextureAsset)
      {
        v20 = TextureAsset;
        v21 = re::TextureAsset::assetType(TextureAsset);
        v22 = re::TextureAsset::assetType(void)::type;
        LOBYTE(v45) = 0;
        BYTE8(v45) = 0;
        v23 = *buf;
        v24 = *&buf[16];
        v25 = v44;
        *(a6 + 56) = v45;
        *a6 = 1;
        *(a6 + 8) = v23;
        *(a6 + 24) = v24;
        *(a6 + 32) = v25;
        *(a6 + 40) = v20;
        *(a6 + 48) = 0;
      }

      else
      {
        if (*(a3 + 80))
        {
          v27 = *(a3 + 88);
        }

        else
        {
          v27 = a3 + 81;
        }

        re::DynamicString::format("Failed to create texture asset for asset path: '%s'.", buf, v27);
        v28 = *buf;
        v29 = *&buf[16];
        v30 = v44;
        *a6 = 0;
        *(a6 + 8) = v28;
        *(a6 + 24) = v29;
        *(a6 + 32) = v30;
      }

      if (v33 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v33])(buf, v32);
      }
    }

    else
    {
      re::DynamicString::DynamicString(buf, &v35);
      *a6 = 0;
      v26 = v44;
      *(a6 + 8) = *buf;
      *(a6 + 32) = v26;
      *(a6 + 16) = *&buf[8];
    }

    re::Result<re::TextureImportData,re::DynamicString>::~Result(&v34);
  }

  else
  {
    re::DynamicString::DynamicString(&v34, &v38);
    *a6 = 0;
    *(a6 + 8) = v34;
    *(a6 + 32) = v36[0];
    *(a6 + 16) = v35;
  }

  result = v38;
  if (v37[0] == 1)
  {
    return (*v38)(&v38);
  }

  if (v38)
  {
    if (v39)
    {
      return (*(*v38 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::TextureAssetRealityFileProviderCallbacks::prepareDeserializationContext(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == 1 && *(a2 + 104) == 1)
  {
    v6 = 0uLL;
    v7 = 0;
    re::DynamicString::setCapacity(&v5, 0);
    v8 = v5;
    v10 = v7;
    v9 = v6;
    v11 = 0;
    result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a3, "SkipBackcompGamutConversion", &v8);
    if (v11 != -1)
    {
      result = (*(&off_1F5CC3FE0 + v11))(&v12, &v8);
    }
  }

  if (*(a2 + 112) != 1)
  {
    re::DynamicString::format("%d", &v5, *(a2 + 112));
    v8 = v5;
    v10 = v7;
    v9 = v6;
    v11 = 0;
    result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a3, "TextureDownsampleFactor", &v8);
    if (v11 != -1)
    {
      return (*(&off_1F5CC3FE0 + v11))(&v12, &v8);
    }
  }

  return result;
}

uint64_t re::TextureAssetRealityFileProviderCallbacks::postLoadProcessing@<X0>(re::RealityFile *this@<X2>, uint64_t a2@<X0>, re::TextureAsset *a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 80))
  {
    v8 = *(a4 + 88);
  }

  else
  {
    v8 = (a4 + 81);
  }

  re::RealityFile::makeArchiveReader(this, v44);
  if ((v44[0] & 1) == 0)
  {
    v24 = re::WrappedError::localizedDescription(&v45);
    v25 = v40;
    v26 = v41;
    v27 = v42;
    *a5 = 0;
    *(a5 + 8) = v25;
    *(a5 + 24) = v26;
    *(a5 + 32) = v27;
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v44);
  }

  v29 = a3;
  v9 = v45;
  if (v45)
  {
    v10 = v45 + 8;
  }

  re::RealityArchive::entryNames(v9, &v40);
  if (!v41)
  {
LABEL_35:
    re::DynamicArray<re::DynamicString>::deinit(&v40);
    *a5 = 1;
    if (!v9)
    {
      return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v44);
    }

LABEL_36:

    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v44);
  }

  v11 = v43;
  v12 = 32 * v41;
  while (1)
  {
    re::DynamicString::rfind(v11, 46, v38);
    if (v38[0] == 1)
    {
      v13 = (*(v11 + 8) & 1) != 0 ? *(v11 + 2) : (v11 + 9);
      v14 = v39;
      if (!strcmp(v13 + v39, ".ktx"))
      {
        re::DynamicString::rfind(v11, 46, v14, v36);
        if (v36[0] == 1)
        {
          v15 = *(v11 + 1);
          if (v15)
          {
            v16 = *(v11 + 2);
          }

          else
          {
            v16 = v11 + 9;
          }

          v17 = v37;
          v18 = strncmp(v16, "assets/", 7uLL);
          v19 = v17 - 7;
          if (v18)
          {
            v19 = v17;
          }

          v20 = 7;
          if (v18)
          {
            v20 = 0;
          }

          if (!strncmp(&v16[v20], v8, v19 - 1))
          {
            v21 = (v15 & 1) != 0 ? *(v11 + 2) : v11 + 9;
            re::RealityArchive::newDataByLoadingEntryWithName(v9, v21, v33);
            v22 = v33[0];
            if (v33[0])
            {
              v23 = v34;
              v30 = v23;
              re::TextureAssetLoader::injectMipsFromKTX(*(a2 + 24), v29, &v30);
            }

            else
            {
              re::DynamicString::DynamicString(&v30, &v34);
              *a5 = 0;
              *(a5 + 8) = v30;
              *(a5 + 32) = v32;
              *(a5 + 16) = v31;
            }

            if (v33[0] & 1) == 0 && v34 && (v35)
            {
              (*(*v34 + 40))();
            }

            if (!v22)
            {
              break;
            }
          }
        }
      }
    }

    v11 = (v11 + 32);
    v12 -= 32;
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  re::DynamicArray<re::DynamicString>::deinit(&v40);
  if (v9)
  {
    goto LABEL_36;
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v44);
}

uint64_t re::IntrospectionFixedArray<short>::IntrospectionFixedArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE195F88, 0);
  *(&qword_1EE195F98 + 6) = 0;
  qword_1EE195F98 = 0;
  *&xmmword_1EE195FA8 = 0;
  *(&xmmword_1EE195FA8 + 1) = 0xFFFFFFFFLL;
  qword_1EE195F88 = &unk_1F5CAE268;
  qword_1EE195FC0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE195FB8);
  qword_1EE195F88 = &unk_1F5CC4008;
  return result;
}

void *re::IntrospectionFixedArray<short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<short>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<short>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, uint64_t a5)
{
  re::FixedArray<short>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 2;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<short>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, uint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<short>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 2 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_12TextureAssetELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS4_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS7_ENS0_8priorityILi1EEEENUlSC_S7_E_8__invokeESC_S7_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  if (re::TextureAsset::isCompletelyLoadedTexture(a1) && !*(a1 + 264) && *(a1 + 272) >= *(a1 + 156))
  {
    if ((*(a1 + 348) | 4) == 7)
    {
      v4 = &v19;
      v5 = 12;
      re::getRequiredDeploymentTargetsForRelease(0xC, &v19);
      if (v20)
      {
        v12 = *&v22.var0;
      }

      else
      {
        v12 = v21;
      }

      snprintf(__str, 0x100uLL, "%s %s %s", "2D array and 3D textures are available for", v12, "and later.");
      goto LABEL_9;
    }

LABEL_30:
    *a2 = 1;
    *(a2 + 8) = 0;
    return;
  }

  v4 = &v19;
  v5 = 15;
  re::getRequiredDeploymentTargetsForRelease(0xF, &v19);
  if (v20)
  {
    v6 = *&v22.var0;
  }

  else
  {
    v6 = v21;
  }

  snprintf(__str, 0x100uLL, "%s %s %s", "Streamed textures are available for", v6, "and later.");
LABEL_9:
  v7 = v19;
  if (v19 && (v20 & 1) != 0)
  {
    v7 = (*(*v19 + 40))();
  }

  v20 = 0;
  LODWORD(v19) = v5;
  v14 = 0;
  v15 = &str_67;
  v8 = strlen(__str);
  v16[0] = 1;
  v17 = v14;
  v18 = v15;
  v14 = 0;
  v15 = &str_67;
  v9 = re::Optional<re::StringID>::operator=(&v20, v16);
  if (v16[0] == 1)
  {
    if (v17)
    {
      if (v17)
      {
      }
    }

    v17 = 0;
    v18 = &str_67;
  }

  if (v14)
  {
    if (v14)
    {
    }
  }

  v10 = v20;
  if (v20 == 1)
  {
    LOBYTE(v4) = v22.var0;
    v13 = v22;
  }

  *a2 = v19;
  *(a2 + 8) = v10;
  if (v10)
  {
    v11 = re::StringID::StringID((a2 + 16), &v13);
    if (v4)
    {
    }
  }
}

void sub_1E200DFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = REAudioPayload;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E200F2A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E200F97C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void re::AudioPayload::makeBufferPayloadWithProperties(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X5>, char a7@<W6>, int a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, uint64_t a12, int a13, uint64_t a14)
{
  v31 = a1;
  v22 = a2;
  v23 = a6;
  v24 = [REAudioPayload alloc];
  LODWORD(v28) = a13;
  HIDWORD(v27) = a8;
  LOBYTE(v27) = a7;
  *&v25 = a10;
  v26 = [REAudioPayload initWithBuffer:v24 format:"initWithBuffer:format:length:inputMode:referenceLevel:loopCount:mixGroupName:streaming:normalizationMode:calibrationMode:calibrationLevel:layoutTag:taskToken:audioAssetID:" length:v31 inputMode:v22 referenceLevel:a3 loopCount:a4 mixGroupName:a5 streaming:v23 normalizationMode:v25 calibrationMode:a11 calibrationLevel:v27 layoutTag:a12 taskToken:v28 audioAssetID:a14];
  *a9 = v26;
}

void re::AudioPayload::makeFilePayloadWithProperties(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unsigned int a7@<W6>, unsigned int a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, int a13, uint64_t a14, void *a15)
{
  v31 = a4;
  v25 = a15;
  v26 = [REAudioPayload alloc];
  LODWORD(v29) = a13;
  *&v27 = a10;
  v28 = [(REAudioPayload *)v26 initWithFilePath:a1 inputMode:a2 referenceLevel:a3 loopCount:v31 mixGroupName:a5 streaming:a6 normalizationMode:v27 calibrationMode:a11 calibrationLevel:a12 layoutTag:__PAIR64__(a8 taskToken:a7) targetLUFS:v29 audioAssetID:a14 urlQueryItems:v25];
  *a9 = v28;
}

void re::AudioPayload::makeFileBufferPayloadWithProperties(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, void *a7@<X6>, char a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, int a12, unsigned int a13, unsigned int a14, int a15, uint64_t a16)
{
  v33 = a1;
  v23 = a2;
  v24 = a7;
  v25 = [REAudioPayload alloc];
  LODWORD(v29) = a15;
  HIDWORD(v28) = a12;
  LOBYTE(v28) = a8;
  *&v26 = a10;
  v27 = [(REAudioPayload *)v25 initWithFileBuffer:v33 format:v23 length:a3 bufferSize:a4 inputMode:a5 referenceLevel:a6 loopCount:v26 mixGroupName:a11 streaming:v24 normalizationMode:v28 calibrationMode:__PAIR64__(a14 calibrationLevel:a13) layoutTag:v29 taskToken:a16 audioAssetID:?];
  *a9 = v27;
}

void re::AudioPayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v7 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v7;
  if (isKindOfClass)
  {
    v6 = v7;
    v5 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

BOOL re::AssetCompatibilityManager::isScene(re::AssetCompatibilityManager *this, const re::AssetHandle *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    v3 = *(v2 + 280);
  }

  else
  {
    v3 = 0;
  }

  return v3 == re::SceneAsset::assetType(this);
}

uint64_t re::AssetCompatibilityManager::isAssetAvailableForVersion(re::SkeletonAsset *a1, re::SceneAsset *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = *(v7 + 280);
    if (v8 == re::SkeletonAsset::assetType(a1))
    {
      return 1;
    }
  }

  else
  {
    re::SkeletonAsset::assetType(a1);
  }

  return re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(a2, a3, a4, 0);
}

void re::AssetCompatibilityManager::isAssetAllowedInRealityFile(const re::AssetHandle *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0;
  }

  re::TypeAvailabilityUtilities::isAssetAllowedInRealityFile(v4, a2);
}

uint64_t re::AssetCompatibilityManager::emitAssetTypeBeginSignpost(re::AssetCompatibilityManager *this, const re::AssetType *a2)
{
  v3 = re::MeshAsset::assetType(this);
  if (v3 == a2)
  {
    result = re::internal::enableSignposts(0, 0);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v4 = re::MaterialAsset::assetType(v3);
    if (v4 == a2)
    {
      result = re::internal::enableSignposts(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = re::TextureAsset::assetType(v4);
      if (result != a2)
      {
        return result;
      }

      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }
    }
  }

  return kdebug_trace();
}

uint64_t re::AssetCompatibilityManager::emitAssetTypeEndSignpost(re::AssetCompatibilityManager *this, const re::AssetType *a2)
{
  v3 = re::MeshAsset::assetType(this);
  if (v3 == a2)
  {
    result = re::internal::enableSignposts(0, 0);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v4 = re::MaterialAsset::assetType(v3);
    if (v4 == a2)
    {
      result = re::internal::enableSignposts(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = re::TextureAsset::assetType(v4);
      if (result != a2)
      {
        return result;
      }

      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }
    }
  }

  return kdebug_trace();
}

uint64_t re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::SceneAssetRemapperImplementation::remapSceneAsset(re::SceneAssetRemapperImplementation *this@<X0>, const re::AssetHandle *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(&v27, a2);
  if (!*(this + 5))
  {
LABEL_16:
    re::AssetHandle::AssetHandle(&v30, &v27);
    *a4 = 1;
    *(a4 + 8) = v30;
    v30 = 0uLL;
    *(a4 + 24) = v31;
    v31 = 0;
    re::AssetHandle::~AssetHandle(&v30);
    goto LABEL_17;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  re::StringID::StringID(&v30, a3);
  v10 = re::make::shared::object<re::ecs2::Scene,re::StringID>(&v30, &v26);
  if (v30)
  {
    if (v30)
    {
    }
  }

  re::ecs2::ECSSerialization::loadFromAsset(v26, v9, a2, v11);
  v12 = *(this + 5);
  if (!v12)
  {
LABEL_14:
    if (v26)
    {
    }

    goto LABEL_16;
  }

  v13 = 0;
  v14 = *(this + 7);
  v15 = 40 * v12;
  while (1)
  {
    v32 = *(v14 + 24);
    v33 = 0;
    re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(&v30, v14);
    v29 = v26;
    (*(*v33 + 16))(&v24);
    if (v25)
    {
      break;
    }

    v13 |= v24;
    v16 = re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(&v30);
    v14 += 40;
    v15 -= 40;
    if (!v15)
    {
      if (v13)
      {
        v17 = re::globalAllocators(v16);
        v18 = (*(*v17[2] + 32))(v17[2], 40, 8);
        *v18 = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0;
        re::ecs2::ECSSerialization::saveIntoSceneAssetData(v26, v18, 1);
        v20 = re::SceneAsset::assetType(v19);
        (*(v9->var0 + 53))(&v30, v9, v18, v20, 0, 0, 0);
        v21 = v27;
        v27 = v30;
        v30 = v21;
        v22 = v28;
        v28 = v31;
        v31 = v22;
        re::AssetHandle::~AssetHandle(&v30);
      }

      goto LABEL_14;
    }
  }

  v23 = v25;
  *a4 = 0;
  *(a4 + 8) = v23;

  re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(&v30);
  if (v26)
  {
  }

LABEL_17:
  re::AssetHandle::~AssetHandle(&v27);
}

void re::SceneAssetRemapperImplementation::~SceneAssetRemapperImplementation(re::SceneAssetRemapperImplementation *this)
{
  *this = &unk_1F5CC4188;
  re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC4188;
  re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(uint64_t a1)
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
          re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v3);
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

void *re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
LABEL_28:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

re::ecs2::Scene *re::make::shared::object<re::ecs2::Scene,re::StringID>@<X0>(re *a1@<X0>, re::ecs2::Scene **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 384, 8);
  result = re::ecs2::Scene::Scene(v5, a1);
  *a2 = result;
  return result;
}

uint64_t re::PbrEmulationLoadHelper::isWaitingForAssetDependencies(uint64_t a1, uint64_t a2)
{
  if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken, &__block_literal_global_14_1);
  }

  if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion != 1)
  {
    goto LABEL_26;
  }

  v4 = 0;
  v5 = atomic_load((a1 + 256));
  if ((v5 & 1) == 0 && *(a2 + 40))
  {
    v7 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>((a2 + 32));
    if ((atomic_load_explicit(&qword_1EE196238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196238))
    {
      _MergedGlobals_73 = re::hashStringCaseInsensitive("Pbr", v6);
      __cxa_guard_release(&qword_1EE196238);
    }

    if ((atomic_load_explicit(&qword_1EE196248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196248))
    {
      qword_1EE196240 = re::hashStringCaseInsensitive("TransparentPbr", v6);
      __cxa_guard_release(&qword_1EE196248);
    }

    v8 = re::hashStringCaseInsensitive(*(*(v7 + 744) + 1424), v6);
    if (v8 != _MergedGlobals_73 && v8 != qword_1EE196240)
    {
LABEL_26:
      v4 = 0;
      return v4 & 1;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re22PbrEmulationLoadHelper29isWaitingForAssetDependenciesERKNS_12MaterialFileE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (qword_1EE196250 != -1)
    {
      dispatch_once(&qword_1EE196250, block);
    }

    os_unfair_lock_lock((a1 + 128));
    v10 = *(a1 + 152);
    if (v10)
    {
      v11 = *(a1 + 168);
      v12 = v11 + 24 * v10;
      do
      {
        while (1)
        {
          v13 = *(v11 + 8);
          if (v13)
          {
            break;
          }

          v11 += 24;
          if (v11 == v12)
          {
            os_unfair_lock_unlock((a1 + 128));
LABEL_29:
            atomic_store(1u, (a1 + 256));
            goto LABEL_31;
          }
        }

        v14 = atomic_load((v13 + 896));
        v11 += 24;
      }

      while (v14 != 1 && v11 != v12);
      os_unfair_lock_unlock((a1 + 128));
      if (v14 != 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 128));
    }

LABEL_31:
    v17 = atomic_load((a1 + 256));
    v4 = v17 ^ 1;
  }

  return v4 & 1;
}

uint64_t re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(re::MaterialDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::MaterialDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

unint64_t re::hashStringCaseInsensitive(re *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 8)
  {
    v5 = 0;
    v4 = 0;
    v6 = 8;
    do
    {
      v7 = 0;
      v8 = *(this + v5);
      v5 = v6;
      __dst = v8;
      do
      {
        *(&__dst + v7) = __tolower(*(&__dst + v7));
        ++v7;
      }

      while (v7 != 8);
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) >> 27));
      v4 = (v4 - 0x61C8864680B583E9 + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2)) ^ v9 ^ (v9 >> 31);
      v6 = v5 + 8;
    }

    while (v5 + 8 <= v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v10 = v3 - v5;
  if (v10)
  {
    __dst = 0;
    memcpy(&__dst, this + v5, v10);
    for (i = 0; i != v10; ++i)
    {
      *(&__dst + i) = __tolower(*(&__dst + i));
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) >> 27));
    return (v4 - 0x61C8864680B583E9 + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2)) ^ v12 ^ (v12 >> 31);
  }

  return v4;
}

void ___ZN2re22PbrEmulationLoadHelper29isWaitingForAssetDependenciesERKNS_12MaterialFileE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 128));
  if (!*(v1 + 152))
  {
    for (i = 0; i != 24; i += 8)
    {
      (*(**v1 + 8))(v3);
      re::DynamicArray<re::AssetHandle>::add((v1 + 136), v3);
      re::AssetHandle::~AssetHandle(v3);
      re::AssetHandle::loadAsync((*(v1 + 168) + 24 * *(v1 + 152) - 24));
    }
  }

  os_unfair_lock_unlock((v1 + 128));
}

void sub_1E2010FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  re::AssetHandle::~AssetHandle(va);
  os_unfair_lock_unlock(v2 + 32);
  _Unwind_Resume(a1);
}

BOOL re::AudioAssetLoadStrategy_Host::createRuntimeData(re::AudioAssetLoadStrategy_Base *a1, re::AudioFileAsset *a2, uint64_t a3, uint64_t a4, AudioSceneService *a5)
{
  v9 = *(*(a2 + 1) + 16);
  if (v9 || (v9 = *(*(a2 + 1) + 200)) != 0)
  {

LABEL_4:
    re::AudioFileAsset::completeLoad(a2, a5);
    return 1;
  }

  v11 = *(*(a2 + 1) + 208);

  if (v11)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if ((*(*a1 + 48))(a1, a3, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if ((*(*(*(a2 + 1) + 48) + 64))())
  {
    if ((*(*a1 + 56))(a1, *(a2 + 1) + 48, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  RuntimeDataWithAudioFile = re::AudioAssetLoadStrategy_Base::createRuntimeDataWithAudioFile(a1, a2);
  if (RuntimeDataWithAudioFile)
  {
    goto LABEL_4;
  }

  v13 = *re::audioLogObjects(RuntimeDataWithAudioFile);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v14 = 0;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to create runtime data with audio file.", v14, 2u);
    return 0;
  }

  return result;
}

void re::AudioAssetLoadStrategy_Host::unregisterAsset(re::AudioAssetLoadStrategy_Host *this, re::AudioFileAsset *a2, AudioSceneService *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a2 + 1) + 24);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Unregistered audio asset: %llu", &v7, 0xCu);
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  (*(a3->var0 + 19))(a3, *(*(a2 + 1) + 24));
}

void re::AudioAssetLoadStrategy_Host::resourceDidUpdate(int a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a2;
  v9 = *a3;
  v12[0] = &unk_1F5CC4268;
  v12[1] = &v11;
  v12[2] = &v10;
  v12[3] = v12;
  v13 = 1;
  re::AudioAssetLoadStrategy_Base::resourceDidUpdate(a1, a2, &v9, a4, a5, v12);
  if (v13 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  }
}

void sub_1E2011338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetLoadStrategy_Host::createRuntimeDataWithRealityFile(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, id **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 72))(this, a2, a3, 0);
  if (v6)
  {
    v7 = *(a3 + 108);
    re::AudioAssetLoadStrategy_Base::setAudioFileFormat(this, a3, v6);
    v8 = (*(*a2 + 112))(&v24, a2);
    if (v24)
    {
      v22[0] = v24;
      v23 = v25;
      v9 = (*(*a2 + 64))(a2);
      v10 = re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(this, v22, v9);
      v11 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(re *)v10 absoluteString];
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Streaming reality file from url: %@", buf, 0xCu);
      }

      v15 = a3[1];
      v14 = (a3 + 1);
      v13 = v15;
      v16 = 50000;
      if ((*(v14 + 33) + 1) < 2)
      {
        v16 = 100000;
      }

      *(v14 + 20) = v16;
      objc_storeStrong(v13, v6);
      objc_storeStrong((*v14 + 32), v10);
    }

    else
    {
      v18 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Cannot read reality file as NSURL without file path and offset. Attempting to load asset blob.", buf, 2u);
      }

      if (!v7)
      {
        v17 = (*(*this + 64))(this, a2, a3);
        goto LABEL_19;
      }

      v10 = v6;
      a3[18] = [(re *)v10 getReaderFileLength];
      v19 = (*(*a2 + 64))(a2);
      v20 = v19 / 0x64;
      if (v19 / 0x64 <= 0xC350)
      {
        v20 = 50000;
      }

      if ((*(a3 + 35) + 1) <= 1)
      {
        v20 += v19;
      }

      a3[21] = v20;
      objc_storeStrong(a3[1], v6);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

uint64_t re::AudioAssetLoadStrategy_Host::createRuntimeDataWithUSDZ(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  *(*(a3 + 1) + 160) = (*(*(*(a3 + 1) + 48) + 40))();
  v6 = (*(*this + 72))(this, a2, a3, 0);
  if (v6)
  {
    v7 = *(a3 + 108);
    re::AudioAssetLoadStrategy_Base::setAudioFileFormat(this, a3, v6);
    if (v7)
    {
      *(a3 + 18) = [(AVAudioFile *)v6 getReaderFileLength];
      v8 = (*(*a2 + 64))(a2);
      v9 = v8 / 0x64;
      if (v8 / 0x64 <= 0xC350)
      {
        v9 = 50000;
      }

      if ((*(a3 + 35) + 1) <= 1)
      {
        v9 += v8;
      }

      *(a3 + 21) = v9;
      objc_storeStrong(*(a3 + 1), v6);
      v10 = 1;
    }

    else
    {
      v10 = (*(*this + 64))(this, a2, a3);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id re::AudioAssetLoadStrategy_Host::createREAudioFile(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*a2 + 112))(v17, a2);
  if (a4)
  {
    v7 = [_REAudioFile audioFileWithStream:a2 ownsStream:1];
  }

  else if (*(a3 + 108) != 1 || (v17[0] & 1) != 0)
  {
    v7 = [_REAudioFile audioFileWithStream:a2 ownsStream:0];
  }

  else
  {
    v7 = [_REAudioFile audioFileWithStream:(*(*a2 + 72))(a2) ownsStream:1];
  }

  v8 = v7;
  if (!v7)
  {
    v9 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a3 + 1) + 24);
      *buf = 134217984;
      v19 = v15;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to load embedded audio asset(%llu) due to nil audio file", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v9 = [v7 processingFormat];
  v11 = re::audio::layoutTagFromFormat(v9, v10);
  *(a3 + 34) = v11;
  if (v11 == -65536)
  {
    v12 = *re::audioLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a3 + 1) + 24);
      *buf = 134217984;
      v19 = v16;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to load embedded audio asset(%llu) due to missing channel layout.", buf, 0xCu);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = v8;
LABEL_16:

  return v13;
}

__n128 std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC4268;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  if (*(*(**(result + 8) + 8) + 24))
  {
    return (*(***(result + 16) + 152))();
  }

  return result;
}

uint64_t std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::CGPerspectiveContextAsset::assetType(re::CGPerspectiveContextAsset *this)
{
  {
    re::CGPerspectiveContextAsset::assetType(void)::type = "CGPerspectiveContext";
    qword_1EE1C6588 = 0;
    re::AssetType::generateCompiledExtension(&re::CGPerspectiveContextAsset::assetType(void)::type);
  }

  return &re::CGPerspectiveContextAsset::assetType(void)::type;
}

uint64_t re::CGPerspectiveContextAssetLoader::unloadAsset(re::CGPerspectiveContextAssetLoader *this, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a2[1] = 0;
  *a2 = -1;
  a2[4] = 0;
  ++*(a2 + 10);
  v4 = re::globalAllocators(v3)[2];
  v5 = a2[1];
  if (v5)
  {
    CFRelease(v5);
  }

  a2[1] = 0;
  *a2 = -1;
  a2[4] = 0;
  ++*(a2 + 10);
  re::DynamicArray<unsigned long>::deinit((a2 + 2));
  v6 = *(*v4 + 40);

  return v6(v4, a2);
}

uint64_t re::CGPerspectiveContextAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  v3 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a2 + 48), *(a2 + 24), *MEMORY[0x1E695E498]);
  *(a2 + 8) = CGPerspectiveCommandsDecode(v3);
  CFRelease(v3);
  return 1;
}

uint64_t re::CGPerspectiveContextAssetLoader::introspectionType(re::CGPerspectiveContextAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE196278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196278))
  {
    qword_1EE196270 = re::internal::getOrCreateInfo("CGPerspectiveContextAsset", re::allocInfo_CGPerspectiveContextAsset, re::initInfo_CGPerspectiveContextAsset, &unk_1EE196268, 0);
    __cxa_guard_release(&qword_1EE196278);
  }

  return qword_1EE196270;
}

void *re::allocInfo_CGPerspectiveContextAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_74, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_74))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196290, "CGPerspectiveContextAsset");
    __cxa_guard_release(&_MergedGlobals_74);
  }

  return &unk_1EE196290;
}

void re::initInfo_CGPerspectiveContextAsset(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xC5C5E34969555BB2;
  v15[1] = "CGPerspectiveContextAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE196260, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE196260);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "networkVersion";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE196280 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "commandsBuffer";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE196288 = v13;
      __cxa_guard_release(&qword_1EE196260);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE196280;
  *(this + 9) = re::internal::defaultConstruct<re::CGPerspectiveContextAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CGPerspectiveContextAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::CGPerspectiveContextAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::CGPerspectiveContextAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

double re::internal::defaultConstruct<re::CGPerspectiveContextAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::CGPerspectiveContextAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a3 + 8) = 0;
  *a3 = -1;
  *(a3 + 32) = 0;
  ++*(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3 + 16);
}

double re::internal::defaultConstructV2<re::CGPerspectiveContextAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::CGPerspectiveContextAsset>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  *a1 = -1;
  *(a1 + 32) = 0;
  ++*(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1 + 16);
}

uint64_t re::ecs2::ECSSerialization::saveToStream(re::ecs2::ECSSerialization *this, re::ecs2::Scene *a2, AssetService *a3, google::protobuf::io::ZeroCopyOutputStream *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v45 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  re::ecs2::ECSSerialization::saveIntoSceneAssetData(this, v43, 0);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0);
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v42);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0);
  }

  re::TypeInfo::TypeInfo(v41, v15);
  re::DefaultAssetSerialize::DefaultAssetSerialize(&v35, 0);
  v34 = 0u;
  v33 = 0u;
  v32 = &v35;
  re::ecs2::ECSJSONSerializer::ECSJSONSerializer(&v14);
  v15[32] = &v32;
  v5 = re::ecs2::serializeObject<re::ecs2::ECSJSONSerializer>(&v14, v43, v41, a3, v10);
  v6 = v10[0];
  if ((v10[0] & 1) == 0)
  {
    v7 = *re::assetTypesLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v8 = *&v13[7];
      }

      else
      {
        v8 = v13;
      }

      *buf = 136315138;
      v47 = v8;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Failed to save scene to stream. Message: %s", buf, 0xCu);
    }
  }

  if (v10[0] & 1) == 0 && v11 && (v12)
  {
    (*(*v11 + 40))();
  }

  v14 = &unk_1F5CC46A8;
  if (v27)
  {
    if (v31)
    {
      (*(*v27 + 40))();
    }

    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    ++v30;
  }

  if (v22)
  {
    if (v26)
    {
      (*(*v22 + 40))();
    }

    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    ++v25;
  }

  if (v17)
  {
    if (v21)
    {
      (*(*v17 + 40))();
    }

    v21 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    ++v20;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v16);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v14);
  v35 = &unk_1F5CB98A0;
  if (v36 == 1)
  {
    if (v39)
    {
      if (BYTE8(v39))
      {
        (*(*v39 + 40))();
      }

      v40 = 0u;
      v39 = 0u;
    }

    if (v37 && (v38 & 1) != 0)
    {
      (*(*v37 + 40))();
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v42);
  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v43);
  return v6;
}

double re::ecs2::ECSSerialization::saveIntoSceneAssetData(re *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  v7 = v6[2];
  v8 = re::globalAllocators(v6)[2];
  if (a3)
  {
    v29 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v28[0] = v9;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v27 = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v25, v8, 3);
  v10 = *(a1 + 13);
  v11 = *(v10 + 360);
  v12 = *(v10 + 344);
  if (v12)
  {
    v13 = 8 * v12;
    do
    {
      v14 = *v11++;
      v13 -= 8;
    }

    while (v13);
    v15 = *(a1 + 13);
    v11 = *(v15 + 360);
    v12 = *(v15 + 344);
  }

  v21 = 0u;
  v22 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = a1;
  v20[3] = v25;
  v23 = v20;
  v24 = 0;
  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v11;
      if (!a3 || (*(v17 + 305) & 0x10) == 0)
      {
        re::DynamicArray<re::ecs2::EntityAssetData>::add(a2, v19);
        re::ecs2::EntityAssetData::~EntityAssetData(v19);
      }

      ++v11;
      v16 -= 8;
    }

    while (v16);
  }

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 288);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 280) = *(*(a1 + 272) + 24);
  return result;
}

_anonymous_namespace_ *re::ecs2::serializeObject<re::ecs2::ECSJSONSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "object", 1, a2, a3, a3, 0);
  }

  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

uint64_t re::ecs2::ECSSerialization::loadFromAsset(re::ecs2::ECSSerialization *this, AssetService *a2, AssetService *a3, const re::AssetHandle *a4)
{
  re::AssetHandle::loadNow(a3[1].var0, 0);
  var0 = a3[1].var0;
  if (!var0)
  {
    return 0;
  }

  v8 = atomic_load(var0 + 224);
  if (v8 != 2)
  {
    return 0;
  }

  v9 = re::AssetHandle::loadedAsset<re::SceneAsset>(a3);
  re::ecs2::ECSSerialization::loadFromAssetData(this, a2, v9);
  return 1;
}

{
  re::AssetHandle::loadNow(a3[1].var0, 0);
  var0 = a3[1].var0;
  if (!var0)
  {
    return 0;
  }

  v8 = atomic_load(var0 + 224);
  if (v8 != 2)
  {
    return 0;
  }

  v9 = re::AssetHandle::loadedAsset<re::SceneAsset>(a3);
  re::ecs2::ECSSerialization::loadFromAssetData(this, a2, v9);
  return 1;
}

uint64_t re::AssetHandle::loadedAsset<re::SceneAsset>(re::SceneAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SceneAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::ecs2::ECSSerialization::loadFromAssetData(re *a1, AssetService *a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 76) = 0x7FFFFFFF;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0x7FFFFFFF00000000;
  *(v7 + 128) = 0;
  *(v7 + 88) = 0u;
  v17 = &unk_1F5CC44F0;
  v18[2] = &v17;
  v20[3] = v20;
  v19 = v7;
  v20[0] = &unk_1F5CC44F0;
  v8 = std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::~__value_func[abi:nn200100](&v17);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 36) = 0x7FFFFFFF;
  v16[0] = &unk_1F5CC4580;
  v16[3] = v16;
  v17 = v10;
  v18[3] = v18;
  v18[0] = &unk_1F5CC4580;
  std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100](v16);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 32);
    v13 = 112 * v11;
    do
    {
      v14 = *(a1 + 13);
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v14 + 320), v16);
      if (v16[0])
      {
      }

      v12 += 112;
      v13 -= 112;
    }

    while (v13);
  }

  re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(v19);
  std::unique_ptr<re::internal::MeshSortGroupFixupTable,std::function<void ()(re::internal::MeshSortGroupFixupTable*)>>::~unique_ptr[abi:nn200100](&v17);
  std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](&v19);
  return 1;
}

{
  v17[4] = *MEMORY[0x1E69E9840];
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 76) = 0x7FFFFFFF;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0x7FFFFFFF00000000;
  *(v7 + 128) = 0;
  *(v7 + 88) = 0u;
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 48, 8);
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *(v9 + 36) = 0x7FFFFFFF;
  v15[0] = &unk_1F5CC4460;
  v15[3] = v15;
  v16 = v9;
  v17[3] = v17;
  v17[0] = &unk_1F5CC4460;
  std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100](v15);
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = *(a3 + 32);
    v12 = 112 * v10;
    do
    {
      v13 = v15[0];
      re::ecs2::Entity::setParentInternal(v15[0], a1, 0xFFFFFFFFFFFFFFFFLL);
      if (v13)
      {
      }

      v11 += 112;
      v12 -= 112;
    }

    while (v12);
  }

  re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(v7);
  re::internal::destroyPersistent<re::internal::EntityHandleHookupTable>(v7);
  std::unique_ptr<re::internal::MeshSortGroupFixupTable,std::function<void ()(re::internal::MeshSortGroupFixupTable*)>>::~unique_ptr[abi:nn200100](&v16);
  return 1;
}

void re::ecs2::ECSSerialization::createSerializedJsonData(re::ecs2::ECSSerialization *this@<X0>, uint64_t a2@<X8>)
{
  Mutable = CFDataCreateMutable(0, 0);
  re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(v37, &Mutable, -1);
  v5 = (*(*this + 40))(this);
  v6 = (*(*v5 + 48))(v5);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v36);
  re::ecs2::ECSJSONSerializer::ECSJSONSerializer(v19);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v19, *(v6 + 32));
  re::ecs2::serializeComponent<re::ecs2::ECSJSONSerializer>(v19, this, v37, v15);
  if (v15[0])
  {
    v19[0] = &unk_1F5CC46A8;
    if (v31)
    {
      if (v35)
      {
        (*(*v31 + 40))();
      }

      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      ++v34;
    }

    if (v26)
    {
      if (v30)
      {
        (*(*v26 + 40))();
      }

      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      ++v29;
    }

    if (v21)
    {
      if (v25)
      {
        (*(*v21 + 40))();
      }

      v25 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      ++v24;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v20);
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v19);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
    v7 = Mutable;
    *a2 = 1;
    *(a2 + 8) = v7;
  }

  else
  {
    CFRelease(Mutable);
    if (v17)
    {
      v8 = *&v18[7];
    }

    else
    {
      v8 = v18;
    }

    re::DynamicString::format("Serialization failed. Message: %s", &v12, v8);
    v9 = v12;
    v10 = v13;
    v11 = v14;
    *a2 = 0;
    *(a2 + 8) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    if (v15[0] & 1) == 0 && v16 && (v17)
    {
      (*(*v16 + 40))();
    }

    v19[0] = &unk_1F5CC46A8;
    if (v31)
    {
      if (v35)
      {
        (*(*v31 + 40))();
      }

      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      ++v34;
    }

    if (v26)
    {
      if (v30)
      {
        (*(*v26 + 40))();
      }

      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      ++v29;
    }

    if (v21)
    {
      if (v25)
      {
        (*(*v21 + 40))();
      }

      v25 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      ++v24;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v20);
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v19);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
  }

  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(v37);
}

void re::ecs2::serializeComponent<re::ecs2::ECSJSONSerializer>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v33);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v25);
  re::TypeRegistry::typeInfo(v8, &v25, v31);
  if ((v31[0] & 1) == 0)
  {
    v11 = (*(*a2 + 40))(a2);
    v12 = (*(*v11 + 48))(v11);
    PrettyTypeName = re::getPrettyTypeName(v12, &v25);
    v14 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v26)
      {
        v15 = *(&v26 + 1);
      }

      else
      {
        v15 = &v26 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v26)
    {
      v16 = *(&v26 + 1);
    }

    else
    {
      v16 = &v26 + 1;
    }

    re::DynamicString::format("Serialization failed. Type info (%s) not found.", buf, v16);
    v17 = *buf;
    v18 = v35;
    v19 = v36;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v17;
    *(a4 + 40) = v18;
    *(a4 + 48) = v19;
    v20 = v25;
    if (!v25 || (v26 & 1) == 0)
    {
      goto LABEL_34;
    }

    v21 = *(&v26 + 1);
LABEL_15:
    (*(*v20 + 40))(v20, v21);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v32, v32, 0);
  }

  (*(*a1 + 56))(a1);
  v22 = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    *a4 = 1;
    goto LABEL_34;
  }

  v23 = *re::assetTypesLogObjects(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v25) = *(a1 + 64);
    if (v25)
    {
      v26 = *(a1 + 72);
      re::DynamicString::DynamicString(&v27, (a1 + 88));
      v24 = (v28 & 1) != 0 ? v30 : v29;
    }

    else
    {
      v24 = v29;
    }

    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
    if (v25 == 1 && v27 && (v28 & 1) != 0)
    {
      (*(*v27 + 40))();
    }
  }

  LOBYTE(v25) = *(a1 + 64);
  if (v25 == 1)
  {
    v26 = *(a1 + 72);
    re::DynamicString::DynamicString(&v27, (a1 + 88));
  }

  *buf = v26;
  re::DynamicString::DynamicString(&v35, &v27);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = v35;
  *(a4 + 48) = v37;
  *(a4 + 32) = v36;
  v37 = 0;
  v35 = 0;
  v36 = 0uLL;
  if (v25 == 1)
  {
    v20 = v27;
    if (v27)
    {
      if (v28)
      {
        v21 = v30;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v33);
}

void **re::ecs2::ECSSerialization::addOrUpdateComponentFromJsonStream(uint64_t a1, AssetService *a2, uint64_t a3, const re::ecs2::ComponentTypeBase *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), a4);
  if (v6)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v40);
    re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(v17, a2);
    v7 = (*(*v6 + 5))(v6);
    v8 = (*(*v7 + 48))(v7);
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v17, *(v8 + 32));
    re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(v17, v6, a3, v13);
    if ((v13[0] & 1) == 0)
    {
      v10 = *re::assetTypesLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v11 = *&v16[7];
        }

        else
        {
          v11 = v16;
        }

        *buf = 136315138;
        v42 = v11;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Message: %s", buf, 0xCu);
      }

      v6 = 0;
    }

    if (v13[0] & 1) == 0 && v14 && (v15)
    {
      (*(*v14 + 40))();
    }

    v17[0] = &unk_1F5CC4600;
    v34 = &unk_1F5CB95A0;
    if (v35 == 1)
    {
      if (v38)
      {
        if (BYTE8(v38))
        {
          (*(*v38 + 40))();
        }

        v38 = 0u;
        v39 = 0u;
      }

      if (v36)
      {
        if (BYTE8(v36))
        {
          (*(*v36 + 40))();
        }

        v36 = 0u;
        v37 = 0u;
      }
    }

    v17[0] = &unk_1F5CBB1E0;
    if (v29)
    {
      if (v33)
      {
        (*(*v29 + 40))();
      }

      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      ++v32;
    }

    if (v24)
    {
      if (v28)
      {
        (*(*v24 + 40))();
      }

      v28 = 0;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      ++v27;
    }

    if (v19)
    {
      if (v23)
      {
        (*(*v19 + 40))();
      }

      v23 = 0;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      ++v22;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v18);
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v17);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v40);
  }

  return v6;
}

void re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v35);
  v9 = (*(*a2 + 5))(a2);
  (*(*v9 + 56))(&v27);
  re::TypeRegistry::typeInfo(v8, &v27, v33);
  if ((v33[0] & 1) == 0)
  {
    v12 = (*(*a2 + 5))(a2);
    v13 = (*(*v12 + 48))(v12);
    PrettyTypeName = re::getPrettyTypeName(v13, &v27);
    v15 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v28)
      {
        v16 = *(&v28 + 1);
      }

      else
      {
        v16 = &v28 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v28)
    {
      v17 = *(&v28 + 1);
    }

    else
    {
      v17 = &v28 + 1;
    }

    re::DynamicString::format("Deserialization failed. Type info (%s) not found.", buf, v17);
    v18 = *buf;
    v19 = *&buf[16];
    v20 = v37;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    *(a4 + 48) = v20;
    v21 = v27;
    if (!v27 || (v28 & 1) == 0)
    {
      goto LABEL_34;
    }

    v22 = *(&v28 + 1);
LABEL_15:
    (*(*v21 + 40))(v21, v22);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v34, v34, 0);
  }

  (*(*a1 + 56))(a1);
  v23 = re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    re::ecs2::Component::markDirty(a2);
    *a4 = 1;
    goto LABEL_34;
  }

  v24 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = re::TypeInfo::name(v34)[1];
    LOBYTE(v27) = *(a1 + 64);
    if (v27)
    {
      v28 = *(a1 + 72);
      re::DynamicString::DynamicString(&v29, (a1 + 88));
      v26 = (v30 & 1) != 0 ? v32 : v31;
    }

    else
    {
      v26 = v31;
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
    if (v27 == 1 && v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }
  }

  LOBYTE(v27) = *(a1 + 64);
  if (v27 == 1)
  {
    v28 = *(a1 + 72);
    re::DynamicString::DynamicString(&v29, (a1 + 88));
  }

  *buf = v28;
  re::DynamicString::DynamicString(&buf[16], &v29);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = *&buf[16];
  *(a4 + 48) = v38;
  *(a4 + 32) = v37;
  v38 = 0;
  *&buf[16] = 0;
  v37 = 0uLL;
  if (v27 == 1)
  {
    v21 = v29;
    if (v29)
    {
      if (v30)
      {
        v22 = v32;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v35);
}

void re::ecs2::ECSJSONDeserializer::~ECSJSONDeserializer(re::ecs2::ECSJSONDeserializer *this)
{
  *this = &unk_1F5CC4600;
  *(this + 64) = &unk_1F5CB95A0;
  if (*(this + 520) == 1)
  {
    re::DynamicString::deinit((this + 568));
    re::DynamicString::deinit((this + 536));
  }

  *this = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);

  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);
}

{
  *this = &unk_1F5CC4600;
  *(this + 64) = &unk_1F5CB95A0;
  if (*(this + 520) == 1)
  {
    re::DynamicString::deinit((this + 568));
    re::DynamicString::deinit((this + 536));
  }

  *this = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ECSSerialization::loadFromStream(re *a1, AssetService *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0);
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v62);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0);
  }

  re::TypeInfo::TypeInfo(v61, &v34);
  re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(&v33, a2);
  v32 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  if (v36 != 1)
  {
    (*(v33 + 9))(&v33, "object", 1, v30, v61, v61, 0);
  }

  (*(v33 + 7))(&v33);
  v8 = re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close(&v35);
  v9 = v36;
  if (v36 == 1)
  {
    v10 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = re::TypeInfo::name(v61)[1];
      v72[0] = v36;
      if (v36)
      {
        *&v73[4] = v37;
        re::DynamicString::DynamicString(&v74, v38);
        v12 = (v75 & 1) != 0 ? v77 : v76;
      }

      else
      {
        v12 = v76;
      }

      *buf = 136315394;
      *v68 = v11;
      *&v68[8] = 2080;
      *&v68[10] = v12;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
      if (v72[0] == 1 && v74 && (v75 & 1) != 0)
      {
        (*(*v74 + 40))(v74, v77, v13, v14, v15);
      }
    }

    v72[0] = v36;
    if (v36 == 1)
    {
      *&v73[4] = v37;
      re::DynamicString::DynamicString(&v74, v38);
    }

    v63 = *&v73[4];
    v16 = re::DynamicString::DynamicString(&v64, &v74);
    v69 = v64;
    buf[0] = 0;
    *&v68[4] = v63;
    v71 = v66;
    v70 = v65;
    v66 = 0;
    v64 = 0;
    v65 = 0uLL;
    if (v72[0] == 1)
    {
      v16 = v74;
      if (v74)
      {
        if (v75)
        {
          v16 = (*(*v74 + 40))(v74, v77, v17, v18, v19);
        }
      }
    }

    v20 = *re::assetTypesLogObjects(v16);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT) || ((v70 & 1) != 0 ? (v24 = *(&v70 + 1)) : (v24 = &v70 + 1), *v72 = 136315138, *v73 = v24, _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Failed to load scene from stream. Message: %s", v72, 0xCu), (buf[0] & 1) == 0))
    {
      if (v69 && (v70 & 1) != 0)
      {
        (*(*v69 + 40))(v69, *(&v70 + 1), v21, v22, v23);
      }
    }
  }

  else
  {
    re::ecs2::ECSSerialization::loadFromAssetData(a1, a2, v30);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v30);
  v33 = &unk_1F5CC4600;
  v55 = &unk_1F5CB95A0;
  if (v56 == 1)
  {
    if (v59)
    {
      if (BYTE8(v59))
      {
        (*(*v59 + 40))(v59, v60, v25, v26, v27, v28);
      }

      v59 = 0u;
      v60 = 0u;
    }

    if (v57)
    {
      if (BYTE8(v57))
      {
        (*(*v57 + 40))(v57, v58, v25, v26, v27, v28);
      }

      v57 = 0u;
      v58 = 0u;
    }
  }

  v33 = &unk_1F5CBB1E0;
  if (v50)
  {
    if (v54)
    {
      (*(*v50 + 40))(v50, v54, v25, v26, v27, v28);
    }

    v54 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    ++v53;
  }

  if (v45)
  {
    if (v49)
    {
      (*(*v45 + 40))(v45, v49, v25, v26, v27, v28);
    }

    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    ++v48;
  }

  if (v40)
  {
    if (v44)
    {
      (*(*v40 + 40))(v40, v44, v25, v26, v27, v28);
    }

    v44 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    ++v43;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v39);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v33);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v62);
  return v9 ^ 1u;
}