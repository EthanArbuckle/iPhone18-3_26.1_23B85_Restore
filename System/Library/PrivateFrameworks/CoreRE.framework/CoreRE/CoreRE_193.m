_DWORD *re::internal::anonymous namespace::addSkinningInfluenceIndicesEndToMesh(re::internal::_anonymous_namespace_ *this, re::GeomMesh *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationInfluenceEndIndices");
  if (!result)
  {
    v4 = *(this + 4);
    v5 = re::GeomMesh::addAttribute(this, "skinnedAnimationInfluenceEndIndices", 4, 2);
    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = v5;
    (*(*v5 + 24))(v5, v4);
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v7);
    if (v4)
    {
      for (i = v8; i; --i)
      {
        *result++ = 0;
        if (!--v4)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_9:
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "influencesEndOffsetAttr != nullptr", "addSkinningInfluenceIndicesEndToMesh", 30);
      _os_crash();
      __break(1u);
    }
  }

  return result;
}

_BYTE *re::internal::anonymous namespace::addOffsetToAllValuesForAttribute(re::internal::_anonymous_namespace_ *this, re::GeomMesh *a2, const char *a3)
{
  v3 = a3;
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  if (result)
  {
    v5 = result;
    if (result[17] == 3)
    {
      if ((*(*result + 16))(result))
      {
        if (!v5[5])
        {
          goto LABEL_13;
        }

        v6 = v5[7];
        v7 = (*(*v5 + 16))(v5);
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      result = (*(*v5 + 16))(v5);
      if (result)
      {
        v8 = 0;
        while (v7 != v8)
        {
          *(v6 + 4 * v8++) += v3;
          if (result == v8)
          {
            return result;
          }
        }

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
    }
  }

  return result;
}

void re::ktxMipInfo(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  MTLPixelFormatGetInfoForDevice();
  if ((v7 & 1) == 0)
  {

    v3 = 0;
  }

  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v4 = (*(a2 + 80) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = *(a2 + 40);
  v6 = *(a2 + 32) * v4;
  *(a2 + 80) = v4;
  *(a2 + 88) = v6;
  *(a2 + 96) = v5 * v6;
}

void re::createTextureWithKTXData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, const char *a4@<X3>, __int128 *a5@<X4>, re::Allocator *a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t a12)
{
  v16 = a2;
  v224[1] = *MEMORY[0x1E69E9840];
  if (a11 && (v19 = atomic_load((a11 + 24)), (v19 & 1) != 0) || a12 && (v20 = atomic_load((a12 + 24)), (v20 & 1) != 0))
  {
    v21 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", buf, 2u);
    }

    *(a9 + 72) = 0;
    *(a9 + 80) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0;
    *(a9 + 88) &= 0xFC00u;
    *(a9 + 104) = 0;
    *(a9 + 112) = 0;
    *(a9 + 96) = 0;
    *(a9 + 128) = 0u;
    *(a9 + 144) = 0u;
    *(a9 + 156) = 0u;
    *(a9 + 176) = 0;
    *(a9 + 184) = 0;
    return;
  }

  v207 = 0;
  v208 = 0;
  *buf = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0;
  v209 &= 0xFC00u;
  memset(v210, 0, 24);
  v211 = 0u;
  memset(v212, 0, 28);
  v213 = 0uLL;
  if ((v191[0] & 1) == 0)
  {
    v26 = *re::pipelineLogObjects(v22);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    if (BYTE8(v192))
    {
      v59 = v193;
    }

    else
    {
      v59 = &v192 + 9;
    }

    LODWORD(v219) = 136315138;
    *(&v219 + 4) = v59;
    v30 = "Failed to parse texture info from KTX: %s";
    v31 = v26;
    v32 = 12;
    goto LABEL_89;
  }

  v170 = a10;
  v169 = (a10 + 3);
  if (!a11 || (v23 = atomic_load((a11 + 24)), (v23 & 1) == 0))
  {
    if (!a12 || (v24 = atomic_load((a12 + 24)), (v24 & 1) == 0))
    {
      v27 = (*(*v16 + 40))(v16);
      v28 = (*(*v16 + 64))(v16);
      if (v27 < v28)
      {
        v181 = 0;
        v189[0] = &unk_1F5D0B2C8;
        v189[1] = &v181;
        v190 = v189;
        if (!a10)
        {
          v28 = (*(*v16 + 80))(v16);
          if (v28 && (v28 = (*(*v16 + 88))(v16), v28))
          {
            v169 = &v190;
            v28 = (*(*v16 + 72))(v16);
            v181 = v28;
            if (v28)
            {
              v16 = v28;
            }

            v170 = v189;
          }

          else
          {
            v169 = 24;
            v170 = 0;
          }
        }

        *buf = v192;
        v202 = v193;
        v203 = *v194;
        v204 = *&v194[16];
        if (v205)
        {
          if ((v199 & 1) == 0)
          {
            v205 = 0;
            goto LABEL_46;
          }
        }

        else
        {
          if ((v199 & 1) == 0)
          {
            goto LABEL_46;
          }

          v205 = 1;
        }

        v206 = v200;
LABEL_46:
        if (a11 && (v33 = atomic_load((a11 + 24)), (v33 & 1) != 0) || a12 && (v34 = atomic_load((a12 + 24)), (v34 & 1) != 0))
        {
          v35 = *re::pipelineLogObjects(v28);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v219) = 0;
            _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", &v219, 2u);
          }

          *(a9 + 72) = 0;
          *(a9 + 80) = 0;
          *a9 = 0u;
          *(a9 + 16) = 0u;
          *(a9 + 32) = 0u;
          *(a9 + 48) = 0u;
          *(a9 + 64) = 0;
          *(a9 + 88) &= 0xFC00u;
          *(a9 + 104) = 0;
          *(a9 + 112) = 0;
          *(a9 + 96) = 0;
          *(a9 + 128) = 0u;
          *(a9 + 144) = 0u;
          *(a9 + 156) = 0u;
          *(a9 + 176) = 0;
          *(a9 + 184) = 0;
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v189);
          re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v191);
          goto LABEL_20;
        }

        v36 = a5[1];
        v172 = *a5;
        *v173 = v36;
        *&v173[16] = a5[2];
        *&v173[28] = *(a5 + 44);
        v174 = *(a5 + 8);
        v175 = *(a5 + 72);
        v176 = *(a5 + 22);
        re::FixedArray<short>::FixedArray(&v177, a5 + 12);
        v180 = *(a5 + 120);
        v187 = a3;
        v37 = (*(*v16 + 64))(v16);
        v38 = v195;
        v186 = v38;
        v168 = [v38 pixelFormat];
        if (a8)
        {
          [v38 setStorageMode_];
        }

        v39 = *&v194[4];
        v40 = *&v194[12];
        v41 = *&v194[20];
        v42 = v197[1];
        if ((v197[0] & 1) == 0)
        {
          v42 = v197 + 1;
        }

        v43 = LOBYTE(v197[0]) >> 1;
        if (v197[0])
        {
          v43 = v197[0] >> 1;
        }

        *&v219 = v42;
        *(&v219 + 1) = v43;
        v44 = v198[1];
        if ((v198[0] & 1) == 0)
        {
          v44 = v198 + 1;
        }

        v45 = LOBYTE(v198[0]) >> 1;
        if (v198[0])
        {
          v45 = v198[0] >> 1;
        }

        *v215 = v44;
        *&v215[8] = v45;
        isHDR = re::isHDR(v168);
        ColorSpaceName = re::getColorSpaceName(&v219, v215, isHDR);
        v185 = 0;
        {
          *v215 = 0;
          *&v215[8] = 0;
          *v216 &= 0xFC00u;
          memset(&v216[8], 0, 24);
          memset(&v216[40], 0, 44);
          v217 = 0uLL;
          goto LABEL_305;
        }

        v167 = v185;
        *&v219 = 0;
        DWORD2(v219) = 0;
        LOWORD(v220[0]) &= 0xFC00u;
        memset(&v220[1], 0, 24);
        v221 = 0u;
        memset(v222, 0, 28);
        v223 = 0uLL;
        if (*(a1 + 16) != 1)
        {
          goto LABEL_68;
        }

        if ((*&v173[40] - 3) > 1)
        {
          goto LABEL_68;
        }

        v48 = v174;
        v49 = v174;
        if (!v48 || re::ColorHelpers::isGrayScaleCGColorSpaceName(v48, v50))
        {
          goto LABEL_68;
        }

        v215[0] = 0;
        if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v48, v215))
        {
          [v186 pixelFormat];
          if (re::getComponentCount() == 1)
          {
LABEL_68:
            v165 = 0;
            goto LABEL_69;
          }

          if (*(a1 + 19))
          {
            v97 = *(a1 + 20);
          }

          else
          {
            v97 = 0;
          }

          v98 = v215[0] != v97;
        }

        else
        {
          v98 = 1;
        }

        v165 = v98;
LABEL_69:
        if (SkippedMipsForDownsampling <= v176)
        {
          v52 = v176;
        }

        else
        {
          v52 = SkippedMipsForDownsampling;
        }

        v166 = v37;
        if (v52 && *&v194[24] >= 2u)
        {
          v53 = 0;
          v54 = 0;
          v55 = *&v194[20];
          if (*&v194[20] <= 1u)
          {
            v55 = 1;
          }

          if (*&v194[16])
          {
            v56 = *&v194[16];
          }

          else
          {
            v56 = v55;
          }

          if (v52 >= *&v194[24] - 1)
          {
            v57 = (*&v194[24] - 1);
          }

          else
          {
            v57 = v52;
          }

          while (1)
          {
            *v215 = 0u;
            memset(v216, 0, sizeof(v216));
            re::ktxMipInfo(a1, v215);
            if (HIDWORD(*&v216[80]))
            {
              break;
            }

            v53 += *&v216[80] * v56 + 4;
            if (v57 == ++v54)
            {
              LODWORD(v54) = v57;
LABEL_94:
              v61 = vmax_u32(vshl_u32(*&v194[4], vneg_s32(vdup_n_s32(v54))), 0x100000001);
              *&v194[4] = v61;
              v62 = *&v194[12] >> v54;
              if (*&v194[12] >> v54 <= 1u)
              {
                v62 = 1;
              }

              *&v194[12] = v62;
              *&v194[24] -= v54;
              [v186 setWidth_];
              [v186 setHeight_];
              [v186 setDepth_];
              [v186 setMipmapLevelCount_];
              (*(*v16 + 32))(v16, v53);
              v63 = 1;
              v64 = 1 << v54;
              if (1 << v54 < *v173)
              {
                v63 = *v173 / v64;
                if (*v173 / v64 >= 1)
                {
                  v63 = 1;
                }
              }

              *v173 = v63;
              goto LABEL_100;
            }
          }

          v60 = *re::pipelineLogObjects(v58);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v218 = 0;
            _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Overflow when computing image block bytes during KTX load", v218, 2u);
          }

          if (v54)
          {
            goto LABEL_94;
          }
        }

LABEL_100:
        if (*&v194[24] >= HIWORD(v176) - v52)
        {
          v65 = HIWORD(v176) - v52;
        }

        else
        {
          v65 = *&v194[24];
        }

        *&v194[24] = v65;
        if (*&v173[4] == 2)
        {
          [v186 setMipmapLevelCount_];
        }

        v184[0] = 0;
        v184[1] = 0;
        v183 = v184;
        isASTCPixelFormat = re::isASTCPixelFormat(v168);
        if (v178)
        {
          v67 = 0;
          v68 = v179;
          while (1)
          {
            v69 = *v68;
            if ((v69 & 0x80000000) == 0)
            {
              break;
            }

            if (v69 != -1)
            {
              v99 = *re::pipelineLogObjects(isASTCPixelFormat);
              if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_161;
              }

              *v215 = 67109120;
              *&v215[4] = v69;
              v96 = "Unexpected source slice requested: %d";
              goto LABEL_326;
            }

            if (isASTCPixelFormat)
            {
              v70 = -1;
              goto LABEL_121;
            }

            ++v67;
            if (++v68 == &v179[v178])
            {
              [v186 setArrayLength_];
              goto LABEL_124;
            }
          }

          if (*&v194[16] <= v69)
          {
            v81 = *re::pipelineLogObjects(isASTCPixelFormat);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *v215 = 67109376;
              *&v215[4] = v69;
              *&v215[8] = 1024;
              *&v215[10] = *&v194[16];
              _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "Out of range source slice requested: %d/%u", v215, 0xEu);
            }
          }

          else
          {
            v70 = *v68;
            v71 = v184[0];
            if (!v184[0])
            {
              goto LABEL_121;
            }

            v72 = v184;
            do
            {
              v73 = v71[4];
              v74 = v73 >= *v68;
              v75 = v73 < *v68;
              if (v74)
              {
                v72 = v71;
              }

              v71 = v71[v75];
            }

            while (v71);
            if (v72 == v184 || v72[4] > *v68)
            {
LABEL_121:
              *v215 = v70;
              *&v215[8] = v67;
              std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_multi<std::pair<long const,unsigned long>>();
            }

            v99 = *re::pipelineLogObjects(isASTCPixelFormat);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              *v215 = 67109120;
              *&v215[4] = v69;
              v96 = "Duplicate source slice requested: %d";
LABEL_326:
              _os_log_error_impl(&dword_1E1C61000, v99, OS_LOG_TYPE_ERROR, v96, v215, 8u);
            }
          }

LABEL_161:
          *v215 = 0;
          *&v215[8] = 0;
          *v216 &= 0xFC00u;
          memset(&v216[8], 0, 24);
          memset(&v216[40], 0, 44);
          v217 = 0uLL;
          goto LABEL_297;
        }

LABEL_124:
        (*(*v16 + 120))(&v182, v16);
        if (v76)
        {
          if (v178)
          {
            v77 = *re::pipelineLogObjects(v76);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v215 = 0;
              _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "Sparse slices are not supported for textures loaded with ImageIO", v215, 2u);
            }

LABEL_137:
            *v215 = 0;
            *&v215[8] = 0;
            *v216 &= 0xFC00u;
            memset(&v216[8], 0, 24);
            memset(&v216[40], 0, 44);
            v217 = 0uLL;
            goto LABEL_295;
          }

          if (!v167)
          {
            memset(v216, 0, 40);
            *v215 = 0u;
            InfoForDevice = MTLPixelFormatGetInfoForDevice();
            if ((*&v215[8] & 0x400) != 0)
            {
              v84 = *re::pipelineLogObjects(InfoForDevice);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *v215 = 136315138;
                *&v215[4] = a4;
                _os_log_impl(&dword_1E1C61000, v84, OS_LOG_TYPE_DEFAULT, "Using ImageIO to import KTX '%s' will decompress the texture, increasing memory usage.", v215, 0xCu);
              }
            }
          }

          [v186 pixelFormat];
          memset(v216, 0, 40);
          *v215 = 0u;
          MTLPixelFormatGetInfoForDevice();
          if ((*&v215[8] & 0x800) != 0)
          {
            *&v173[32] = 2;
          }

          re::SeekableInputStreamSlice::SeekableInputStreamSlice(v218, v16, -1);
          v85 = v186;
          [v85 pixelFormat];
          memset(v216, 0, 40);
          *v215 = 0u;
          MTLPixelFormatGetInfoForDevice();
          if ((*&v215[8] & 0x800) != 0)
          {
            *&v173[32] = 2;
          }

          v86 = [v85 mipmapLevelCount];
          if (v86 >= 2)
          {
            *&v173[4] = 0;
          }

          v87 = re::globalAllocators(v86);
          v88 = (*(*v87[2] + 32))(v87[2], 80, 8);
          v89 = *v194;
          v90 = v193;
          v91 = *&v194[16];
          *v88 = v192;
          v88[1] = v90;
          v88[2] = v89;
          v88[3] = v91;
          *(v88 + 8) = v218;
          *(v88 + 9) = 0;
          *(v88 + 15) = 0;
          v224[0] = *MEMORY[0x1E696E0A8];
          *v214 = MEMORY[0x1E695E110];
          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v214 forKeys:v224 count:1];
          v94 = CGImageSourceCreateWithDataProvider(Sequential, v92);
          v95 = *re::pipelineLogObjects(v94);
          if (v94)
          {
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
            {
              *v215 = 136315138;
              *&v215[4] = a4;
              _os_log_debug_impl(&dword_1E1C61000, v95, OS_LOG_TYPE_DEBUG, "Creating texture '%s' from KTX data using Image I/O fallback for non-native pixel format", v215, 0xCu);
            }
          }

          else if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *v215 = 136315138;
            *&v215[4] = a4;
            _os_log_error_impl(&dword_1E1C61000, v95, OS_LOG_TYPE_ERROR, "Failed to create image source for texture '%s'", v215, 0xCu);
          }

          CGDataProviderRelease(Sequential);

          if (v85)
          {
          }

          if (!v94)
          {
            v112 = *re::pipelineLogObjects(v106);
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              *v215 = 136315138;
              *&v215[4] = a4;
              _os_log_error_impl(&dword_1E1C61000, v112, OS_LOG_TYPE_ERROR, "Failed to create image source from KTX: %s", v215, 0xCu);
            }

            goto LABEL_197;
          }

          re::loadMetalTextureWithReleasedCGImageSource(&v172, v94, a1, &v186, a4, a6, v170, v215);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v219, v215);
          LOWORD(v220[0]) = *v216;
          *&v220[1] = *&v216[8];
          *(&v220[2] + 4) = *&v216[20];
          v107 = *(&v221 + 1);
          v108 = *&v216[40];
          *&v216[40] = v221;
          *&v216[48] = 0;
          v221 = v108;

          re::DynamicArray<short>::operator=(v222, &v216[56]);
          *(&v223 + 1) = *(&v217 + 1);
          if (*&v216[56])
          {
            if (v217)
            {
              (*(**&v216[56] + 40))();
            }

            *&v217 = 0;
            memset(&v216[56], 0, 24);
            ++*&v216[80];
          }

          if (*&v216[40])
          {

            *&v216[40] = 0;
          }

          v110 = &selRef_isLimitedRenderAsset;
          if (*&v215[8] != -1)
          {
            v109 = (off_1F5D0B2A8[*&v215[8]])(v214, v215);
          }

          if (DWORD2(v219))
          {
            if (DWORD2(v219) != 1)
            {
              goto LABEL_328;
            }

            if (!*(v219 + 48))
            {
LABEL_195:
              v113 = *re::pipelineLogObjects(v109);
              if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
              {
                *v215 = 136315138;
                *&v215[4] = a4;
                _os_log_fault_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_FAULT, "Failed to create texture '%s' from KTX", v215, 0xCu);
              }

LABEL_197:
              *v215 = 0;
              *&v215[8] = 0;
              *v216 &= 0xFC00u;
              memset(&v216[8], 0, 24);
              memset(&v216[40], 0, 44);
              v217 = 0uLL;
              re::SeekableInputStreamSlice::detach(v218);
LABEL_295:
              if (v182)
              {
              }

LABEL_297:
              std::__tree<unsigned long long>::destroy(&v183, v184[0]);
              if (v222[0])
              {
                if (v223)
                {
                  (*(*v222[0] + 40))();
                }

                *&v223 = 0;
                memset(v222, 0, 24);
                ++LODWORD(v222[3]);
              }

              if (v221)
              {

                *&v221 = 0;
              }

              if (DWORD2(v219) != -1)
              {
                (off_1F5D0B2A8[DWORD2(v219)])(v218, &v219);
              }

LABEL_305:
              if (v186)
              {
              }

              std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v207, v215);
              v209 = *v216;
              *v210 = *&v216[8];
              *&v210[12] = *&v216[20];
              v154 = *(&v211 + 1);
              v155 = *&v216[40];
              *&v216[40] = v211;
              *&v216[48] = 0;
              v211 = v155;

              re::DynamicArray<short>::operator=(v212, &v216[56]);
              *(&v213 + 1) = *(&v217 + 1);
              if (*&v216[56])
              {
                if (v217)
                {
                  (*(**&v216[56] + 40))();
                }

                *&v217 = 0;
                memset(&v216[56], 0, 24);
                ++*&v216[80];
              }

              if (*&v216[40])
              {

                *&v216[40] = 0;
              }

              if (*&v215[8] != -1)
              {
                (off_1F5D0B2A8[*&v215[8]])(&v219, v215);
              }

              *&v215[8] = -1;
              if (v177)
              {
                if (v178)
                {
                  (*(*v177 + 40))();
                  v178 = 0;
                  v179 = 0;
                }

                v177 = 0;
              }

              if (v170)
              {
                if (!*v169)
                {
LABEL_327:
                  std::__throw_bad_function_call[abi:nn200100]();
                  goto LABEL_328;
                }

                (*(**v169 + 48))(*v169);
              }

              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v189);
              re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v191);
              v156 = v202;
              *a9 = *buf;
              *(a9 + 16) = v156;
              v157 = v204;
              *(a9 + 32) = v203;
              *(a9 + 48) = v157;
              v158 = v205;
              *(a9 + 64) = v205;
              if (v158 == 1)
              {
                *(a9 + 66) = v206;
              }

              *(a9 + 72) = 0;
              v159 = a9 + 72;
              *(v159 + 8) = -1;
              std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v159, &v207);
              *(v159 + 16) = v209;
              *(v159 + 24) = *v210;
              *(v159 + 36) = *&v210[12];
              v160 = v211;
              v211 = 0u;
              *(v159 + 56) = v160;
              *(v159 + 72) = *&v212[0];
              *&v212[0] = 0;
              *(v159 + 80) = *(v212 + 8);
              *(v212 + 8) = 0u;
              ++DWORD2(v212[1]);
              *(v159 + 96) = 1;
              v161 = v213;
              *&v213 = 0;
              *(v159 + 104) = v161;
              goto LABEL_20;
            }

            v111 = (v219 + 24);
          }

          else
          {
            v111 = &v219;
          }

          if (*v111)
          {
            re::SeekableInputStreamSlice::detach(v218);
            goto LABEL_228;
          }

          goto LABEL_195;
        }

        if (!canLoadPixelFormat)
        {
          v82 = *re::pipelineLogObjects(canLoadPixelFormat);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            v128 = v186;
            v129 = v82;
            LODWORD(v128) = [v128 pixelFormat];
            v130 = [v186 textureType];
            *v215 = 67109376;
            *&v215[4] = v128;
            *&v215[8] = 1024;
            *&v215[10] = v130;
            _os_log_error_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_ERROR, "Unsupported pixel format %d for texture type %d", v215, 0xEu);
          }

          goto LABEL_137;
        }

        v79 = v167;
        if (v167)
        {
          [v186 setPixelFormat_];
          if (!*a1)
          {
            v80 = 0;
            goto LABEL_166;
          }
        }

        else if (!*a1)
        {
          v105 = 0;
          *v214 = 0;
          goto LABEL_199;
        }

        [v186 pixelFormat];
        [v186 textureType];
        v79 = v167;
        isSupportedPixelFormat = re::isSupportedPixelFormat();
        v102 = isSupportedPixelFormat;
        v103 = *a1;
        if (!v167 || v103)
        {
          *v214 = v103;
          if (v102)
          {
LABEL_168:
            v105 = 0;
LABEL_199:
            *v218 = 0;
            *&v218[8] = 0;
            v114 = *(a1 + 24);
            v115 = *v214;
            v116 = v115;
            if (v114 && v166 > 0x500000)
            {
              v117 = *(a1 + 24);
              os_unfair_lock_lock(v117 + 64);
              v118 = v116;
              *v215 = v118;

              os_unfair_lock_unlock(v117 + 64);
              if ((v119 & 1) == 0)
              {
LABEL_202:
                *v215 = 0;
                *&v215[8] = 0;
                *v216 &= 0xFC00u;
                memset(&v216[8], 0, 24);
                memset(&v216[40], 0, 44);
                v217 = 0uLL;
                if (*&v218[8] != -1)
                {
                  (off_1F5D0B2A8[*&v218[8]])(&v188, v218);
                }

                goto LABEL_295;
              }
            }

            else
            {
              v224[0] = v115;

              if (!v120)
              {
                goto LABEL_202;
              }
            }

            std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v219, v218);
            if (*&v218[8] != -1)
            {
              (off_1F5D0B2A8[*&v218[8]])(v215, v218);
            }

            v110 = &selRef_isLimitedRenderAsset;
            if (v165)
            {
              v214[0] = 0;
              if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v174, v214))
              {
                v121 = *(a1 + 19) ? *(a1 + 20) : 0;
                if (v214[0] != v121)
                {
                  if (!*(&v221 + 1))
                  {
                    v122 = v174;
                    v123 = v174;
                    re::TextureImportData::setColorSpace(&v219, v122);
                  }

                  [v186 pixelFormat];
                  memset(v216, 0, 40);
                  *v215 = 0u;
                  v124 = MTLPixelFormatGetInfoForDevice();
                  if ((*&v215[8] & 0x400) != 0)
                  {
                    v125 = *re::pipelineLogObjects(v124);
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                    {
                      *v215 = 136315138;
                      *&v215[4] = a4;
                      _os_log_impl(&dword_1E1C61000, v125, OS_LOG_TYPE_DEFAULT, "Applying gamut conversion for '%s' will decompress the texture, increasing memory usage.", v215, 0xCu);
                    }
                  }

                  v126 = *(a1 + 20);
                  if (!*(a1 + 19))
                  {
                    v126 = 0;
                  }

                  re::convertTextureColorSpace(v126, &v219, v215);
                  isValid = re::TextureData::isValid(v215);
                  if (isValid)
                  {
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v219, v215);
                    re::TextureImportData::ImportReport::operator=(v220, v216);
                  }

                  else
                  {
                    v131 = *re::pipelineLogObjects(isValid);
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                    {
                      *v218 = 136315138;
                      *&v218[4] = a4;
                      _os_log_error_impl(&dword_1E1C61000, v131, OS_LOG_TYPE_ERROR, "Failed to convert KTX texture colorspace for '%s'", v218, 0xCu);
                    }
                  }

                  re::TextureImportData::~TextureImportData(v215);
                  v110 = &selRef_isLimitedRenderAsset;
                }
              }
            }

LABEL_228:
            if (DWORD2(v219))
            {
              if (DWORD2(v219) != 1)
              {
                goto LABEL_328;
              }

              if (!*(v219 + 48))
              {
LABEL_241:
                if (DWORD2(v219))
                {
                  if (DWORD2(v219) != 1)
                  {
                    goto LABEL_328;
                  }

                  if (!*(v219 + 48))
                  {
                    goto LABEL_264;
                  }

                  v136 = (v219 + 24);
                }

                else
                {
                  v136 = &v219;
                }

                if (*v136 && *a1)
                {
                  v137 = [*a1 supportsTextureSwizzle];
                  v138 = v187;
                  if (v187 == 84148994)
                  {
                    v139 = 1;
                  }

                  else
                  {
                    v139 = v137;
                  }

                  if (v167 && !re::MTLToASTCPixelFormat([v186 pixelFormat], 1))
                  {
                    [v186 pixelFormat];
                    memset(v216, 0, 40);
                    *v215 = 0u;
                    v140 = MTLPixelFormatGetInfoForDevice();
                    if ((*&v215[8] & 0x400) != 0)
                    {
                      v141 = *re::pipelineLogObjects(v140);
                      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                      {
                        v142 = [v186 pixelFormat];
                        *v215 = 67109120;
                        *&v215[4] = v142;
                        _os_log_impl(&dword_1E1C61000, v141, OS_LOG_TYPE_DEFAULT, "Source compressed pixel format '%d' does not match compression options: will decompress and recompress", v215, 8u);
                      }
                    }
                  }

                  else if (v139)
                  {
                    goto LABEL_264;
                  }

                  LOWORD(v220[0]) |= 0x40u;
                  if (DWORD2(v219))
                  {
                    goto LABEL_328;
                  }

                  re::internal::createRepackedTexture(a1, &v219, v138, v218);
                  *v215 = *v218;
                  *&v215[8] = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v219, v215);
                  if (*&v215[8] != -1)
                  {
                    (off_1F5D0B2A8[*&v215[8]])(v214, v215);
                  }

                  *&v215[8] = -1;
                  if (*v218)
                  {
                  }
                }

LABEL_264:
                if (v167)
                {
                  if (DWORD2(v219))
                  {
                    if (DWORD2(v219) != 1)
                    {
                      goto LABEL_328;
                    }

                    v143 = (v219 + 24);
                  }

                  else
                  {
                    v143 = &v219;
                  }

                  v144 = re::MTLToASTCPixelFormat([*v143 pixelFormat], 1);
                  if (v144)
                  {
                    *v218 = *&v173[12];
                    if (*&v173[8] == 3)
                    {
                      *v218 = 1;
                    }

                    re::logTextureCompressionInfo("createTextureWithKTXData", &v219, v218);
                    re::createCompressedTextureData(&v219, *&v173[40], v218, a1, 0, 0, v215);
                    if (v215[0])
                    {
                      LOWORD(v220[0]) |= 8u;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v219, &v215[8]);
                    }

                    else
                    {
                      v148 = *re::pipelineLogObjects(v145);
                      if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                      {
                        *v214 = 136315138;
                        *&v214[4] = a4;
                        _os_log_error_impl(&dword_1E1C61000, v148, OS_LOG_TYPE_ERROR, "ASTC compression failed for '%s'", v214, 0xCu);
                      }
                    }

                    re::Result<re::TextureData,re::DynamicString>::~Result(v215);
                  }

                  else
                  {
                    v146 = *re::pipelineLogObjects(v144);
                    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                    {
                      v147 = re::TextureData::pixelFormat(&v219);
                      *v215 = 67109120;
                      *&v215[4] = v147;
                      _os_log_impl(&dword_1E1C61000, v146, OS_LOG_TYPE_DEFAULT, "Ignoring ASTC compression options: not supported for source pixel format '%d'", v215, 8u);
                    }
                  }
                }

                [v186 pixelFormat];
                memset(v216, 0, 40);
                *v215 = 0u;
                MTLPixelFormatGetInfoForDevice();
                if ((*&v215[8] & 0x400) == 0)
                {
                  v149 = v220[0];
LABEL_290:
                  LOWORD(v220[0]) = v149 & 0xFFDF | (32 * (v196 & 1));
                  v220[1] = v39;
                  v220[2] = v40;
                  v220[3] = v41;
                  LODWORD(v220[4]) = v168;
                  if (v221)
                  {

                    *&v221 = 0;
                  }

                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v221, v182);
                  *(&v223 + 1) = re::UTTypes::KTX(v151);
                  if (v178)
                  {
                    *v215 = v179;
                    *&v215[8] = v178;
                    re::DynamicArray<short>::operator=(v222, v215);
                  }

                  v215[0] = 0;
                  *&v215[8] = -1;
                  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v215, &v219);
                  *v216 = v220[0];
                  *&v216[8] = *&v220[1];
                  *&v216[20] = *(&v220[2] + 4);
                  v152 = v221;
                  v221 = 0u;
                  *&v216[40] = v152;
                  *&v216[56] = v222[0];
                  memset(v222, 0, 24);
                  *&v216[64] = *&v222[1];
                  ++LODWORD(v222[3]);
                  *&v216[80] = 1;
                  v153 = v223;
                  *&v223 = 0;
                  v217 = v153;
                  goto LABEL_295;
                }

                if (!DWORD2(v219))
                {
                  v150 = &v219;
LABEL_287:
                  [*v150 pixelFormat];
                  memset(v216, 0, 40);
                  *v215 = 0u;
                  MTLPixelFormatGetInfoForDevice();
                  if ((*&v215[8] & 0x400) != 0)
                  {
                    v149 = v220[0];
                  }

                  else
                  {
                    v149 = LOWORD(v220[0]) | 4;
                  }

                  goto LABEL_290;
                }

                if (DWORD2(v219) == 1)
                {
                  v150 = (v219 + 24);
                  goto LABEL_287;
                }

LABEL_328:
                v162 = std::__throw_bad_variant_access[abi:nn200100]();
                return;
              }

              v132 = (v219 + 24);
            }

            else
            {
              v132 = &v219;
            }

            if (*v132 && (*&v173[40] - 3) <= 1 && !*(&v221 + 1) && *(a1 + 16) == 1)
            {
              v133 = [v186 v110[204]];
              if (*(a1 + 19))
              {
                v134 = *(a1 + 20);
              }

              else
              {
                v134 = 0;
              }

              CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v133, v134);
              re::TextureImportData::setColorSpace(&v219, CGColorSpaceNameForPixelFormat);
            }

            goto LABEL_241;
          }

LABEL_170:
          re::ObjCObject::operator=(v214, 0);
          v105 = 1;
          goto LABEL_199;
        }

        v80 = isSupportedPixelFormat ^ 1;
LABEL_166:
        v104 = re::isASTCPixelFormat(v79);
        *v214 = 0;
        if ((v80 & 1) == 0 && (v104 & 1) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_170;
      }

      v29 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v219) = 0;
      v30 = "Stream is too small for KTX";
      v31 = v29;
      v32 = 2;
LABEL_89:
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, v30, &v219, v32);
      goto LABEL_19;
    }
  }

  v25 = *re::pipelineLogObjects(v22);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v219) = 0;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", &v219, 2u);
  }

  if (!a10)
  {
    goto LABEL_19;
  }

  if (!*v169)
  {
    goto LABEL_327;
  }

  (*(**v169 + 48))(*v169);
LABEL_19:
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  *(a9 + 88) &= 0xFC00u;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 156) = 0u;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0;
  re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v191);
LABEL_20:
  if (*&v212[0])
  {
    if (v213)
    {
      (*(**&v212[0] + 40))();
    }

    *&v213 = 0;
    memset(v212, 0, 24);
    ++DWORD2(v212[1]);
  }

  if (v211)
  {

    *&v211 = 0;
  }

  if (v208 != -1)
  {
    (off_1F5D0B2A8[v208])(v191, &v207);
  }
}

void re::anonymous namespace::parseKTXHeader(uint64_t a1, uint64_t a2, int a3)
{
  v83 = *MEMORY[0x1E69E9840];
  StandardKTXMetadata = (*(*a2 + 104))(a2, 64, &v79);
  if (!StandardKTXMetadata)
  {
    v8 = "Tried to load a too-small file as KTX";
    goto LABEL_76;
  }

  if (v79 != 0xBB31312058544BABLL || DWORD2(v79) != 169478669)
  {
    v8 = "Tried to load a non-KTX file as KTX (header identifier mismatch)";
LABEL_76:
    goto LABEL_77;
  }

  if (HIDWORD(v79) != 67305985)
  {
    v8 = "Tried to load a KTX file with unsupported endianness";
    goto LABEL_76;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  if (HIDWORD(v82))
  {
    StandardKTXMetadata = re::readStandardKTXMetadata(a2, HIDWORD(v82), &v56);
  }

  if (DWORD1(v81))
  {
    v9 = DWORD2(v81) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v10 != 1 || HIDWORD(v81) == 0)
  {
    if (v82)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = 1;
      v14 = 3;
    }

    else
    {
      v15 = 2;
      if ((v10 & (DWORD1(v82) == 6)) != 0)
      {
        v15 = 5;
      }

      if (v10)
      {
        v14 = v15;
      }

      else
      {
        v14 = 0;
      }

      if (!DWORD1(v81))
      {
        re::DynamicString::format("Bad dimensions in KTX: (%u, %u, %u)", buf, 0, DWORD2(v81), HIDWORD(v81));
        goto LABEL_77;
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 7;
  }

  v16 = v56;
  v17 = &xmmword_1E30FD278 + 12;
  v18 = 8432;
  while (v80 != *(v17 - 3) || *(&v80 + 1) != *(v17 - 4))
  {
    v17 += 68;
    v18 -= 68;
    if (!v18)
    {
      v19 = 0;
      v20 = 1;
      goto LABEL_40;
    }
  }

  v19 = *(v17 - 8);
  v23 = v81;
  v20 = v81 == 6408;
  v24 = *(v17 - 2);
  if (DWORD1(v80) != v24)
  {
    v25 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 67110144;
      *&buf[4] = v80;
      *&buf[8] = 1024;
      *&buf[10] = DWORD2(v80);
      *&buf[14] = 1024;
      LODWORD(v63) = HIDWORD(v80);
      WORD2(v63) = 1024;
      *(&v63 + 6) = v24;
      WORD5(v63) = 1024;
      HIDWORD(v63) = DWORD1(v80);
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "KTX with type 0x%x, format 0x%x, internal format 0x%x has unexpected type size (expected: %u, actual: %u)", buf, 0x20u);
    }
  }

  if (v57 == 1 && v23 != 6408)
  {
    v26 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Metadata mismatch: Pre-multiplied alpha specified when format has no alpha channel", buf, 2u);
    }

    v20 = 0;
    v57 = 0;
  }

LABEL_40:
  if (v16)
  {
    if (v19 == v16)
    {
      goto LABEL_52;
    }

    if ((v19 - 204) <= 0xE && v19 != 209)
    {
      if (StandardKTXMetadata == v16)
      {
        goto LABEL_52;
      }
    }

    v21 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 67109376;
      *&buf[4] = v16;
      *&buf[8] = 1024;
      *&buf[10] = v19;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Metadata mismatch: Pixel format mismatch metadata (%u) != inferred (%u), using inferred format", buf, 0xEu);
    }
  }

  if ((v19 - 204) > 0xE || v19 == 209)
  {
    if (v19)
    {
LABEL_65:
      v22 = 0;
      goto LABEL_66;
    }

    re::DynamicString::format("Unsupported KTX pixel format: type 0x%x, type size %u, format 0x%x, internal format 0x%x", buf, v80, DWORD1(v80), DWORD2(v80), HIDWORD(v80));
LABEL_77:
    v33 = *buf;
    v34 = v63;
    *a1 = 0;
    *(a1 + 8) = v33;
    *(a1 + 24) = v34;
    return;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v16 = StandardKTXMetadata;
LABEL_52:
      v22 = 0;
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v22 = 1;
LABEL_66:
  v16 = v19;
LABEL_67:
  v27 = DWORD2(v82);
  if (!DWORD2(v82))
  {
    v8 = "Unsupported number of mipmaps (0) in KTX";
    goto LABEL_76;
  }

  v28 = DWORD1(v81);
  v29 = DWORD2(v81);
  if (DWORD1(v81) <= DWORD2(v81))
  {
    v30 = DWORD2(v81);
  }

  else
  {
    v30 = DWORD1(v81);
  }

  v31 = HIDWORD(v81);
  if (v30 <= HIDWORD(v81))
  {
    v30 = HIDWORD(v81);
  }

  v32 = log2(v30);
  if (v27 > v32 + 1)
  {
    re::DynamicString::format("Bad MipmapLevelCount (%u) in KTX header - dimensions (%u, %u, %u) can only support a max of %u levels", buf, v27, v28, v29, v31, v32 + 1);
    goto LABEL_77;
  }

  v35 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v35 setTextureType_];
  if (DWORD1(v81) <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = DWORD1(v81);
  }

  [v35 setWidth_];
  if (DWORD2(v81) <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = DWORD2(v81);
  }

  [v35 setHeight_];
  if (HIDWORD(v81) <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = HIDWORD(v81);
  }

  [v35 setDepth_];
  if (v13)
  {
    [v35 setArrayLength_];
  }

  [v35 setMipmapLevelCount_];
  [v35 setPixelFormat_];
  [v35 setResourceOptions_];
  *buf = v79;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v35;
  LOBYTE(v67) = v20;
  HIBYTE(v67) = v57;
  v68 = v22;
  v71 = 0;
  v72 = 0;
  if (*(&v58 + 1))
  {
    v39 = *(&v58 + 1) + 1;
  }

  else
  {
    v39 = 0;
  }

  v70 = 0;
  re::DynamicString::setCapacity(&v69, v39);
  v40 = re::DynamicString::operator=(&v69, &v58);
  v75 = 0;
  v76 = 0;
  if (*(&v59 + 1))
  {
    v41 = *(&v59 + 1) + 1;
  }

  else
  {
    v41 = 0;
  }

  v74 = 0;
  re::DynamicString::setCapacity(&v73, v41);
  re::DynamicString::operator=(&v73, &v59);
  v42 = v60;
  v77 = v60;
  if (v60)
  {
    v43 = v61;
    v78 = v61;
  }

  else
  {
    v43 = v78;
  }

  v44 = v66;
  v45 = v69;
  v46 = v70;
  v66 = 0;
  v69 = 0;
  v70 = 0;
  v47 = v72;
  v48 = v73;
  v72 = 0;
  v73 = 0;
  v49 = v71;
  v71 = 0;
  v51 = v75;
  v50 = v76;
  v75 = 0;
  v76 = 0;
  v52 = v74;
  v74 = 0;
  *a1 = 1;
  v53 = *buf;
  v54 = v63;
  v55 = v64;
  *(a1 + 56) = v65;
  *(a1 + 40) = v55;
  *(a1 + 24) = v54;
  *(a1 + 8) = v53;
  *(a1 + 72) = v44;
  LOWORD(v44) = v67;
  *(a1 + 82) = v68;
  *(a1 + 80) = v44;
  *(a1 + 104) = v49;
  *(a1 + 112) = v47;
  *(a1 + 88) = v45;
  *(a1 + 96) = v46;
  *(a1 + 136) = v51;
  *(a1 + 144) = v50;
  *(a1 + 120) = v48;
  *(a1 + 128) = v52;
  *(a1 + 152) = v42;
  if (v42)
  {
    *(a1 + 154) = v43;
  }

  if (v35)
  {
  }
}

uint64_t re::Result<re::KTXHeaderData,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 120));
    re::DynamicString::deinit((a1 + 88));
    v2 = *(a1 + 72);
    if (v2)
    {

      *(a1 + 72) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::createTextureDescriptorForKTXData@<X0>(id *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, id *a9@<X8>, unsigned __int8 a10)
{
  v111 = *MEMORY[0x1E69E9840];
  v81 = a4;
  v76 = &unk_1F5D0A468;
  v77 = 0;
  v78 = a2;
  v79 = a3;
  re::FixedArrayInputStream::FixedArrayInputStream(v80, a2, a3, -1);
  if ((v91[0] & 1) == 0)
  {
    v22 = *re::pipelineLogObjects(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      if (v91[16])
      {
        v35 = *&v92[7];
      }

      else
      {
        v35 = v92;
      }

      *v84 = 136315138;
      *&v84[4] = v35;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create texture from KTX: %s", v84, 0xCu);
    }

    *a9 = 0;
    goto LABEL_90;
  }

  v70 = a8;
  v71 = a9;
  v73 = v99;
  v75 = v73;
  v17 = &selRef_isLimitedRenderAsset;
  if (v101 != 1)
  {
    goto LABEL_52;
  }

  v18 = [v99 textureType];
  v82 = [v99 pixelFormat];
  v19 = *a1;
  if (v18 == 5)
  {
    v21 = 6;
  }

  else if (v18 == 3)
  {
    v21 = v96;
  }

  else
  {
    v21 = 1;
  }

  v69 = v21;
  if (!v98)
  {

    goto LABEL_52;
  }

  v67 = v19;
  v23 = 0;
  v24 = 0;
  *&v20 = 67109376;
  v66 = v20;
  v68 = a1;
  while (1)
  {
    LODWORD(v104) = 0;
    v25 = v76[13](&v76, 4, &v104);
    if (v25 != 4)
    {
      v36 = *re::pipelineLogObjects(v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v84 = 0;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Unexpected end of file when reading image size from KTX", v84, 2u);
      }

LABEL_37:
      v37 = v82;

      goto LABEL_50;
    }

    {
      goto LABEL_37;
    }

    v27 = v17;
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    *v84 = 0u;
    v85 = 0u;
    re::ktxMipInfo(a1, v84);
    if (DWORD1(v86[3]))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing row block bytes during KTX load";
      goto LABEL_46;
    }

    v29 = DWORD2(v86[3]);
    if (HIDWORD(*(&v86[3] + 1)))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image block bytes during KTX load";
      goto LABEL_46;
    }

    v30 = v87;
    if (HIDWORD(v87))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image block bytes during KTX load";
      goto LABEL_46;
    }

    v31 = v104;
    if (v97 == 6 && !v96)
    {
      if (*(&v86[3] + 1) != ((v104 + 3) & 0x1FFFFFFFCLL))
      {
        v32 = *re::pipelineLogObjects(v28);
        v28 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          *buf = v66;
          *&buf[4] = v29;
          *&buf[8] = 1024;
          *&buf[10] = v104;
          _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "KTX image size field for non-array cubemap is unexpected (expected: %u, got: %u)", buf, 0xEu);
        }

        v31 = v104;
        v30 = v87;
      }

      v31 *= 6;
    }

    v33 = v30 * v69;
    if ((v30 * v69) >> 32)
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image size during KTX load";
LABEL_46:
      v40 = v38;
      v41 = 2;
LABEL_47:
      _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
      goto LABEL_49;
    }

    if (v31 < v33)
    {
      break;
    }

    *buf = 0;
    LODWORD(v83[0]) = 0;
    if ((v76[2](&v76, buf, v83) & 1) == 0)
    {
      goto LABEL_49;
    }

    (v76[3])(&v76, LODWORD(v83[0]) - v31);
    v23 |= v34;
    if (v34)
    {
      goto LABEL_49;
    }

    ++v24;
    a1 = v68;
    v17 = v27;
    if (v24 >= v98)
    {
      goto LABEL_37;
    }
  }

  v42 = *re::pipelineLogObjects(v28);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = v66;
    *&buf[4] = v33;
    *&buf[8] = 1024;
    *&buf[10] = v31;
    v39 = "KTX image size field is too small for given pixel format and dimensions (expected: %u, got: %u)";
    v40 = v42;
    v41 = 14;
    goto LABEL_47;
  }

LABEL_49:
  v37 = v82;

  a1 = v68;
  v17 = v27;
LABEL_50:
  if (v23)
  {
    [v73 setPixelFormat_];
  }

LABEL_52:
  if (a7)
  {
    *&v43 = v93;
    *(&v43 + 1) = v94;
    *a7 = v43;
    *(a7 + 16) = v95;
    *v70 = v100;
  }

  v44 = *(a6 + 16);
  *v84 = *a6;
  v85 = v44;
  v86[0] = *(a6 + 32);
  *(v86 + 12) = *(a6 + 44);
  *&v86[2] = *(a6 + 64);
  *(&v86[2] + 8) = *(a6 + 72);
  DWORD2(v86[3]) = *(a6 + 88);
  re::FixedArray<short>::FixedArray(&v87, (a6 + 96));
  v90 = *(a6 + 120);
  v82 = 0;
  v45 = v102[1];
  if ((v102[0] & 1) == 0)
  {
    v45 = v102 + 1;
  }

  v46 = LOBYTE(v102[0]) >> 1;
  if (v102[0])
  {
    v46 = v102[0] >> 1;
  }

  *buf = v45;
  *&buf[8] = v46;
  v47 = v103[1];
  if ((v103[0] & 1) == 0)
  {
    v47 = v103 + 1;
  }

  v48 = LOBYTE(v103[0]) >> 1;
  if (v103[0])
  {
    v48 = v103[0] >> 1;
  }

  v83[0] = v47;
  v83[1] = v48;
  isHDR = re::isHDR([v73 v17[204]]);
  ColorSpaceName = re::getColorSpaceName(buf, v83, isHDR);
  {
    {
      v51 = v75;
      v52 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
      [v51 v17[204]];
      *&v107 = 0;
      v106 = 0u;
      memset(buf, 0, sizeof(buf));
      MTLPixelFormatGetInfoForDevice();
      if ((*&buf[8] & 0x800) != 0)
      {
        LODWORD(v86[1]) = 2;
      }

      if ([v51 mipmapLevelCount] >= 2)
      {
        DWORD1(v85) = 0;
      }

      v104 = *MEMORY[0x1E696E0A8];
      v83[0] = MEMORY[0x1E695E110];
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v104 count:1];
      v54 = CGImageSourceCreateWithData(v52, v53);
      v55 = *re::pipelineLogObjects(v54);
      if (v54)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = a5;
          _os_log_debug_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEBUG, "Creating texture '%s' from KTX data using Image I/O fallback for non-native pixel format", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = a5;
        _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Failed to create image source for texture '%s'", buf, 0xCu);
      }

      if (v51)
      {
      }

      if (v54)
      {
        re::createTextureDescriptorForCGImageSource(v54, a1, &v75, v84, 0, 0, 0, v71);
        CFRelease(v54);
      }

      else
      {
        *v71 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      }
    }

    else
    {
      v57 = v75;
      v58 = [v75 copy];
      *v71 = v58;
      v59 = [v57 mipmapLevelCount];
      if (SkippedMipsForDownsampling >= v59)
      {
        v60 = *re::pipelineLogObjects(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v60;
          v62 = [v57 mipmapLevelCount];
          *buf = 134218240;
          *&buf[4] = v62;
          *&buf[12] = 2048;
          *&buf[14] = SkippedMipsForDownsampling;
          _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "Downsampling a texture with %lu mipmaps by %lu", buf, 0x16u);
        }

        SkippedMipsForDownsampling = [v57 mipmapLevelCount] - 1;
      }

      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      memset(buf, 0, sizeof(buf));
      v63 = v17[204];
      v64 = *a1;
      [v57 v63];
      [v57 width];
      [v57 height];
      [v57 depth];
      [v57 sampleCount];
      MTLGetTextureLevelInfoForDevice();

      [v58 setWidth_];
      [v58 setHeight_];
      [v58 setDepth_];
      [v58 setMipmapLevelCount_];
    }
  }

  else
  {
    *v71 = 0;
  }

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

  if (v75)
  {
  }

LABEL_90:
  re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v91);
  v76 = &unk_1F5D0A468;
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v80);
}

uint64_t re::anonymous namespace::updateTextureDescriptorAndOptions(_BOOL8 a1, __CFString *a2, id *a3, unsigned __int8 *a4, uint8_t *this, unsigned int *a6)
{
  v11 = a1;
  *a6 = 0;
  if (*this == 1)
  {
    v12 = *re::pipelineLogObjects(a1);
    a1 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring explicit pixel format option for KTX", buf, 2u);
    }

    *this = 0;
  }

  if (this[120] == 1)
  {
    v13 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Loading with reduced memory peak is not supported for KTX", buf, 2u);
    }
  }

  re::internal::applySemanticToOptions(this, buf);
  v14 = v37;
  *this = *buf;
  *(this + 1) = v14;
  *(this + 2) = *v38;
  *(this + 44) = *&v38[12];
  if (buf != this)
  {
    v15 = v39;
    v39 = 0;
    v16 = *(this + 8);
    *(this + 8) = v15;
  }

  *(this + 72) = v40;
  *(this + 22) = v41;
  re::FixedArray<short>::operator=(this + 12, &v42);
  this[120] = v45;
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

  v18 = *(this + 8);
  if (a2 && !*(this + 8))
  {
    re::TextureFromImageOptions::setColorSpace(this, a2);
  }

  if (*(this + 19))
  {
    [*a3 setHeight_];
  }

  if (*(this + 18))
  {
    [*a3 setWidth_];
  }

  if (*(this + 20))
  {
    [*a3 setDepth_];
  }

  if (*(this + 21))
  {
    [*a3 setMipmapLevelCount_];
  }

  v19 = *(this + 1);
  if (v19 != 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        goto LABEL_36;
      }

      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Semantics should have been applied at this point", "!Unreachable code", "updateTextureDescriptorAndOptions", 312);
      _os_crash();
      __break(1u);
    }

    [*a3 pixelFormat];
    if (re::getComponentCount() == 1)
    {
      *a4 = re::internal::broadcastRToRGB(a4);
    }

    else
    {
      *a4 = 84148994;
    }

LABEL_36:
    isHDR = re::isHDR([*a3 pixelFormat]);
    DestinationTransferFunctionFromOptions = re::internal::getDestinationTransferFunctionFromOptions(this, 0, isHDR);
    if (!DestinationTransferFunctionFromOptions)
    {
      if (dyld_program_sdk_at_least())
      {
        [*a3 pixelFormat];
        v37 = 0u;
        memset(v38, 0, 24);
        *buf = 0u;
        MTLPixelFormatGetInfoForDevice();
        if ((*&buf[8] & 0x800) != 0)
        {
          DestinationTransferFunctionFromOptions = 2;
        }

        else
        {
          DestinationTransferFunctionFromOptions = 1;
        }
      }

      else if ((*(this + 14) - 3) >= 2)
      {
        DestinationTransferFunctionFromOptions = 1;
      }

      else
      {
        DestinationTransferFunctionFromOptions = 2;
      }
    }

    v25 = *(this + 8);
    v26 = v25;
    if (v25 && (DestinationTransferFunctionFromOptions == 2) != re::colorSpaceNameHasSRGBTransfer(v25, v27))
    {
      v29 = (DestinationTransferFunctionFromOptions == 2 ? re::getLinearColorSpaceNameFromSRGB(v25, v28) : re::getSRGBColorSpaceNameFromLinear(v25, v28));
      if (v29)
      {
        re::TextureFromImageOptions::setColorSpace(this, v29);
      }
    }

    [*a3 pixelFormat];
    v37 = 0u;
    memset(v38, 0, 24);
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x800) == 0 || DestinationTransferFunctionFromOptions == 2)
    {
      if ((*&buf[8] & 0x800) != 0 || DestinationTransferFunctionFromOptions != 2)
      {
        goto LABEL_60;
      }

      v30 = re::translateLinearPixelFormatToSRGB([*a3 pixelFormat]);
    }

    else
    {
      v30 = re::translateSRGBPixelFormatToLinear([*a3 pixelFormat]);
    }

    v31 = v30;
    if (v30 != [*a3 pixelFormat] && v31)
    {
      [*a3 setPixelFormat_];
      [*a3 pixelFormat];
      v37 = 0u;
      memset(v38, 0, 24);
      *buf = 0u;
      MTLPixelFormatGetInfoForDevice();
    }

LABEL_60:
    if (*v11)
    {
      v32 = [*v11 supportsTextureSwizzle];
      v33 = *a3;
      if (!v32)
      {
        [v33 pixelFormat];
        v37 = 0u;
        memset(v38, 0, 24);
        *buf = 0u;
        MTLPixelFormatGetInfoForDevice();
        if ((*&buf[8] & 0x800) != 0 && *a4 != 84148994)
        {
          [*a3 setUsage_];
        }

        goto LABEL_67;
      }
    }

    else
    {
      v33 = *a3;
    }

    [v33 setSwizzle_];
LABEL_67:
    [*a3 pixelFormat];
    if (re::internal::textureMightNeedPixelFormatViewUsage())
    {
      [*a3 setUsage_];
    }

    v34 = [*a3 pixelFormat];
    v22 = 1;
    if (re::internal::applyCompressionOptionsToTextureDescriptor(v11, this, 0, 1, a3) && re::isASTCPixelFormat([*a3 pixelFormat]))
    {
      *a6 = v34;
    }

    goto LABEL_72;
  }

  [*a3 pixelFormat];
  ComponentCount = re::getComponentCount();
  if (ComponentCount == 1)
  {
    goto LABEL_36;
  }

  v21 = *re::pipelineLogObjects(ComponentCount);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "TextureChannelsMode::kSingleChannel is not supported for ktx images with multiple channels", buf, 2u);
  }

  v22 = 0;
LABEL_72:

  return v22;
}

uint64_t re::anonymous namespace::useImageIOForTextureImport(uint64_t a1, id *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([*a2 textureType] != 2)
  {
    return 0;
  }

  if ((canLoadPixelFormat & 1) == 0)
  {
    v17 = *re::pipelineLogObjects(canLoadPixelFormat);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a2;
      v13 = v17;
      *buf = 134217984;
      *&buf[4] = [v18 pixelFormat];
      v14 = "KTX Texture Import: Pixel format %lu is not supported on current platform, using ImageIO to perform conversion to supported pixel format.";
      v15 = v13;
      v16 = 12;
      goto LABEL_11;
    }

    return 1;
  }

  if (*(a1 + 16) != 1 || (*(a3 + 56) - 3) > 1)
  {
    return 0;
  }

  v7 = *(a3 + 64);
  result = v7;
  if (!v7)
  {
    return result;
  }

  [*a2 pixelFormat];
  v39 = 0;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  MTLPixelFormatGetInfoForDevice();
  HasSRGBTransfer = re::colorSpaceNameHasSRGBTransfer(v7, v9);
  if (HasSRGBTransfer)
  {
    v11 = *re::pipelineLogObjects(HasSRGBTransfer);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a2;
      v13 = v11;
      *buf = 134218754;
      *&buf[4] = [v12 pixelFormat];
      *&buf[12] = 2080;
      *&buf[14] = "is";
      *&buf[22] = 2080;
      *&buf[24] = CFStringGetCStringPtr(v7, 0x8000100u);
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "does not use";
      v14 = "Pixel format %lu %s linear while colorspace %s %s a linear transfer function. Using ImageIO to facilitate the gamma transfer function conversion.";
      v15 = v13;
      v16 = 42;
LABEL_11:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);

      return 1;
    }

    return 1;
  }

  v19 = CGColorSpaceCreateWithName(v7);
  if (!v19)
  {
    v27 = *re::pipelineLogObjects(0);
    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v28 = v27;
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(v7, 0x8000100u);
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Invalid colorSpaceNameOverride: %s", buf, 0xCu);

    return 0;
  }

  v20 = v19;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v19);
  IsExtendedOrHDR = re::internal::colorSpaceIsExtendedOrHDR(v20, v22);
  CGColorSpaceRelease(v20);
  [*a2 pixelFormat];
  v39 = 0;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 19))
    {
      v25 = *(a1 + 20);
    }

    else
    {
      v25 = 0;
    }

    InfoForDevice = re::ColorHelpers::getCGColorSpaceNameForGamut(NumberOfComponents, (*&buf[8] >> 11) & 1, IsExtendedOrHDR, v25);
    v26 = InfoForDevice;
  }

  else
  {
    v29 = MEMORY[0x1E695F1C0];
    if (NumberOfComponents <= 2)
    {
      v29 = MEMORY[0x1E695F128];
    }

    v26 = *v29;
  }

  if (!v26)
  {
    v35 = *re::pipelineLogObjects(InfoForDevice);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "KTX Texture Import: Working colorspace was nullptr, skipping ImageIO.", buf, 2u);
    return 0;
  }

  result = CFStringCompare(v7, v26, 0);
  if (result)
  {
    ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(v7, &v36);
    v31 = ColorGamutFromCGColorSpaceName;
    if ((ColorGamutFromCGColorSpaceName & 1) == 0)
    {
      v32 = *re::pipelineLogObjects(ColorGamutFromCGColorSpaceName);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        if (*(a1 + 19))
        {
          v34 = *(a1 + 20);
        }

        else
        {
          v34 = 0;
        }

        *buf = 67109120;
        *&buf[4] = v34;
        _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "KTX Texture Import: Using ImageIO to convert from source color gamut to destination color gamut: %d", buf, 8u);
      }
    }

    return v31 ^ 1u;
  }

  return result;
}

uint64_t re::loadDescriptor@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (v12[0])
  {
    v5 = v15;
    [v5 pixelFormat];
    [v5 textureType];
    if ((re::isSupportedPixelFormat() & 1) == 0)
    {
      [v5 setPixelFormat_];
    }

    v6 = v5;
    *a3 = 1;
    *(a3 + 8) = v6;
    if (v5)
    {
    }
  }

  else
  {
    v7 = *re::pipelineLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v13[8])
      {
        v9 = *&v14[7];
      }

      else
      {
        v9 = v14;
      }

      *v10 = 136315138;
      *&v10[4] = v9;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to parse KTX: %s", v10, 0xCu);
    }

    re::DynamicString::DynamicString(v10, v13);
    *a3 = 0;
    *(a3 + 8) = *v10;
    *(a3 + 32) = v11;
    *(a3 + 16) = *&v10[8];
  }

  return re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v12);
}

void re::makeLoadedTextureView(id *a1@<X0>, _WORD *a2@<X1>, id *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = __clz(__rbit64(v5));
    if (v6 > 0xE)
    {
      v8 = 1;
    }

    else
    {
      v7 = v6 + 1;
      v8 = 1;
      while (((v5 >> v7) & 1) != 0)
      {
        ++v8;
        if (++v7 == 16)
        {
          v8 = 16 - v6;
          break;
        }
      }
    }

    v10 = *a1;
    v11 = [*a1 arrayLength];
    if ([v10 textureType] - 5 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 6 * v11;
    }

    *a3 = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:objc_msgSend(*a1 slices:sel_textureType), v6, v8, 0, v12];
  }

  else
  {
    v9 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "updateTextureView called with no mipsLoaded", v13, 2u);
    }

    *a3 = *a1;
    *a1 = 0;
  }
}

BOOL re::copyTextureMipsAndSlices(uint64_t a1, id *a2, id *a3, unsigned __int16 a4, unsigned __int16 **a5)
{
  v8 = [*a2 width];
  v9 = [*a2 height];
  v10 = [*a2 depth];
  v11 = [*a3 width];
  v12 = [*a3 height];
  v13 = [*a3 depth];
  v53 = v8;
  if (v8 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v11 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  v16 = 64 - __clz(v14);
  v17 = v16 - 1;
  if (v14)
  {
    v18 = ~(-1 << (v16 - 1));
  }

  else
  {
    v18 = 0;
  }

  if (!v14)
  {
    v17 = 0;
  }

  if ((v18 & v14) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = 64 - __clz(v15);
  v21 = v20 - 1;
  if (v15)
  {
    v22 = ~(-1 << (v20 - 1));
  }

  else
  {
    v22 = 0;
  }

  if (!v15)
  {
    v21 = 0;
  }

  if ((v22 & v15) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v24 = *a2;
  v25 = [*a2 arrayLength];
  if ([v24 textureType] - 5 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 6 * v25;
  }

  v27 = *a3;
  v28 = [*a3 arrayLength];
  if ([v27 textureType] - 5 < 2)
  {
    v28 *= 6;
  }

  [*a2 sampleCount];
  v29 = [*a2 mipmapLevelCount];
  v30 = [*a3 mipmapLevelCount];
  v31 = v23 - v19;
  if (v23 - v19 < 0)
  {
    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: unexpected mipmapOffset";
LABEL_66:
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    }

    return 0;
  }

  v32 = a5[1];
  if (v32)
  {
    v33 = *a5;
    v34 = &(*a5)[2 * v32];
    v35 = v53;
    while (v26 > *v33 && v28 > v33[1])
    {
      v33 += 2;
      if (v33 == v34)
      {
        goto LABEL_44;
      }
    }

    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: out of range source or dest slice index";
      goto LABEL_66;
    }

    return 0;
  }

  v35 = v53;
  if (v26 != v28)
  {
    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: Cannot copy mismatched slice counts without from->to map.";
      goto LABEL_66;
    }

    return 0;
  }

LABEL_44:
  if (v29)
  {
    v38 = 0;
    v39 = v31;
    while (((a4 >> v38) & 1) == 0 || v39 < v30)
    {
      ++v38;
      ++v39;
      if (v29 == v38)
      {
        goto LABEL_49;
      }
    }

    return 0;
  }

LABEL_49:
  v49 = a5;
  v50 = [*a2 device];
  *buf = 0x1A5463132DE0FDD9;
  *&buf[8] = "CopyKTXTextureMipsAndSlicesQueue";
  re::ImportGraphicsContext::getOrCreateCommandQueue(a1, buf, 1, v63);
  re::mtl::CommandQueue::makeCommandBuffer(v63, &v62);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v62, &v61);
  [*a2 pixelFormat];
  if (!v29)
  {
LABEL_63:
    [v61 endEncoding];
    [v62 commit];
    [v62 waitUntilCompleted];
    re::mtl::CommandBuffer::error(&v62, buf);
    v47 = *buf == 0;

    goto LABEL_70;
  }

  v40 = 0;
  while (((a4 >> v40) & 1) == 0)
  {
LABEL_62:
    if (++v40 == v29)
    {
      goto LABEL_63;
    }
  }

  v41 = v40 + v31;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  v55 = 0u;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (*buf == 0 && !v55)
  {
    v42 = v35;
    v43 = v49[1];
    if (v43)
    {
      v44 = *v49;
      v45 = &(*v49)[2 * v43];
      do
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v61, *a2, *v44, v40, 0, 0, 0, *buf, *&buf[8], v55, *a3, v44[1], v41, 0, 0, 0);
        v44 += 2;
      }

      while (v44 != v45);
    }

    else if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v61, *a2, i, v40, 0, 0, 0, *buf, *&buf[8], v55, *a3, i, v41, 0, 0, 0);
      }
    }

    v35 = v42;
    goto LABEL_62;
  }

  v47 = 0;
LABEL_70:

  return v47;
}

void re::copyTextureMips(uint64_t a1, id *a2, id *a3, _WORD *a4)
{
  v7 = *a4;
  v8 = [*a2 width];
  v9 = [*a2 height];
  v10 = [*a2 depth];
  v11 = [*a3 width];
  v12 = [*a3 height];
  v13 = [*a3 depth];
  if (v8 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v11 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  v16 = 64 - __clz(v14);
  v17 = v16 - 1;
  if (v14)
  {
    v18 = ~(-1 << (v16 - 1));
  }

  else
  {
    v18 = 0;
  }

  if (!v14)
  {
    v17 = 0;
  }

  if ((v18 & v14) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = 64 - __clz(v15);
  v21 = v20 - 1;
  if (v15)
  {
    v22 = ~(-1 << (v20 - 1));
  }

  else
  {
    v22 = 0;
  }

  if (!v15)
  {
    v21 = 0;
  }

  if ((v22 & v15) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v24 = *a2;
  v25 = [*a2 arrayLength];
  if ([v24 textureType] - 5 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 6 * v25;
  }

  [*a2 sampleCount];
  v27 = [*a2 mipmapLevelCount];
  v28 = v23 - v19;
  if (v23 - v19 < 0)
  {
    v32 = *re::pipelineLogObjects(v27);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failed copyTextureMips: unexpected mipmapOffset", buf, 2u);
    }
  }

  else
  {
    v29 = v27;
    v36 = [*a2 device];
    *buf = 0x3676813F7E71551;
    *&buf[8] = "CopyKTXTextureMipsQueue";
    re::ImportGraphicsContext::getOrCreateCommandQueue(a1, buf, 1, v46);
    re::mtl::CommandQueue::makeCommandBuffer(v46, &v45);
    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v45, &v44);
    [*a2 pixelFormat];
    if (v29)
    {
      v30 = 0;
      v33 = v28;
      v34 = v29;
      do
      {
        if (((1 << (v30 + v28)) & v7) == 0)
        {
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *buf = 0u;
          v38 = 0u;
          MTLGetTextureLevelInfoForDeviceWithOptions();
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (*buf != 0 || v38)
          {
            goto LABEL_42;
          }

          if (v26)
          {
            for (i = 0; i != v26; ++i)
            {
              re::mtl::BlitCommandEncoder::textureCopy(&v44, *a2, i, v30, 0, 0, 0, *buf, *&buf[8], v38, *a3, i, v30 + v28, 0, 0, 0);
            }
          }

          v7 |= (1 << (v30 + v28));
          v28 = v33;
          v29 = v34;
        }

        ++v30;
      }

      while (v30 != v29);
    }

    [v44 endEncoding];
    [v45 commit];
    [v45 waitUntilCompleted];
    *a4 = v7;
LABEL_42:
  }
}

uint64_t re::loadCPUTextureInMetal@<X0>(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, const re::TextureData *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v23 = this;
  v24 = 1;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v35 = 0;
  v36 = 0;
  if (*(a2 + 2) != 1)
  {
LABEL_34:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v6 = *a2;
  if (*(*a2 + 80))
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = v6 + 81;
  }

  {
    *a4 = 0;
    *(a4 + 8) = 0;
    goto LABEL_15;
  }

  if (!re::TextureData::mipmapLevelCount(a2))
  {
LABEL_13:
    goto LABEL_15;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v39 = 0;
    v38 = 0u;
    memset(v37, 0, sizeof(v37));
    v10 = *v23;
    re::TextureData::pixelFormat(a2);
    re::TextureData::width(a2);
    re::TextureData::height(a2);
    re::TextureData::depth(a2);
    MTLGetTextureLevelInfoForDeviceWithOptions();

    v11 = *(v6 + 48);
    if (v11 <= v9)
    {
      v40 = 0;
      v42 = 0u;
      memset(v43, 0, 48);
      v41 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v9;
      v45 = 2048;
      v46 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    v12 = *(v6 + 64) + v8;
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_12:
    ++v9;
    v8 += 40;
    if (v9 >= re::TextureData::mipmapLevelCount(a2))
    {
      goto LABEL_13;
    }
  }

  v14 = *(v12 + 32);
  *&v41 = &unk_1F5D0A468;
  BYTE8(v41) = 0;
  *&v42 = v14;
  *(&v42 + 1) = v13;
  re::FixedArrayInputStream::FixedArrayInputStream(v43, v14, v13, -1);
  LODWORD(v40) = re::TextureData::pixelFormat(a2);
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  std::__tree<unsigned long long>::destroy(buf, *&buf[8]);
  if (v15)
  {
    *&v41 = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
    goto LABEL_12;
  }

  v21 = *re::pipelineLogObjects(v16);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if (*(v6 + 80))
    {
      v22 = *(v6 + 88);
      if (!v22)
      {
        v22 = "<no label>";
      }
    }

    else
    {
      v22 = (v6 + 81);
    }

    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to load texture mip for '%s'", buf, 0xCu);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *&v41 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
LABEL_15:

  v17 = v31;
  if (v31)
  {
    v18 = v35;
    if (v35)
    {
      if (v33)
      {
        v19 = 232 * v33;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v18);
          v18 = (v18 + 232);
          v19 -= 232;
        }

        while (v19);
        v17 = v31;
        v18 = v35;
      }

      (*(*v17 + 40))(v17, v18);
    }

    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    ++v34;
  }

  if (v29 != -1)
  {
    (off_1F5D0B2A8[v29])(v37, &v28);
  }

  v29 = -1;
  return re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v25);
}

uint64_t re::anonymous namespace::getASTCHDRFormatForPixelFormat(int a1)
{
  if ((a1 - 204) > 0x20)
  {
    return 0;
  }

  else
  {
    return dword_1E30FCDA0[a1 - 204];
  }
}

void *re::anonymous namespace::getSkippedMipsForDownsampling(id *a1, id *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 1)
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 1;
  }

  v5 = re::internal::downsampleFactorToFitDeviceLimits(a2, [*a1 textureType], objc_msgSend(*a1, sel_width), objc_msgSend(*a1, sel_height), objc_msgSend(*a1, sel_depth));
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
    v7 = *re::pipelineLogObjects(v5);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v8 = __clz(v6);
      v9 = (0x80000000 >> v8) - 1;
      v10 = 32 - v8;
      v11 = v8 ^ 0x1F;
      if ((v9 & v6) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = *a1;
      v14 = v7;
      v15 = [v13 width];
      v16 = [*a1 height];
      v24 = 134218496;
      v25 = v12;
      v26 = 2048;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Loading mip #%zu from imported %zux%zu KTX to match device limits", &v24, 0x20u);
    }
  }

  v17 = __clz(v6);
  v18 = (0x80000000 >> v17) - 1;
  v19 = 32 - v17;
  v20 = 31 - v17;
  if (!v6)
  {
    v18 = 0;
    v20 = 0;
  }

  if ((v18 & v6) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if (v6 != 1 << v21)
  {
    v22 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218496;
      v25 = v6;
      v26 = 2048;
      v27 = v21;
      v28 = 1024;
      LODWORD(v29) = 1 << v21;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Passed a downsampleFactor %zu which is not a power of two; falling back to the previous mipmap %lu (with a downsampling factor of %i).", &v24, 0x1Cu);
    }
  }

  return v21;
}

uint64_t re::anonymous namespace::canLoadPixelFormat(void *a1, id *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (re::isASTCPixelFormat([*a2 pixelFormat]))
  {
    return 1;
  }

  [*a2 textureType];
  result = re::isSupportedPixelFormat();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t re::anonymous namespace::processKtxMips(id *a1, id *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, uint64_t a7, id *a8, char a9, uint64_t a10, re *a11)
{
  v108 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = a5[10];
  v70 = a5[9];
  v69 = a5[11];
  v18 = [*a8 width];
  v19 = [*a8 height];
  v20 = [*a8 depth];
  v65 = a2;
  *v88 = a2;
  *&v88[8] = 1;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  v94 = 0;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v98 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v99 = 0;
  v100 = 0;
  v64 = a4;
  v21 = 0;
  {
    if (v18 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v22 <= v20)
    {
      v22 = v20;
    }

    v23 = 64 - __clz(v22);
    v24 = v23 - 1;
    if (v22)
    {
      v25 = ~(-1 << (v23 - 1));
    }

    else
    {
      v25 = 0;
    }

    if (!v22)
    {
      v24 = 0;
    }

    if ((v25 & v22) != 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    LODWORD(v27) = v70;
    if (v70 <= v17)
    {
      LODWORD(v27) = v17;
    }

    if (v27 <= v69)
    {
      v27 = v69;
    }

    else
    {
      v27 = v27;
    }

    v28 = 32 - __clz(v27);
    v29 = v28 - 1;
    v30 = ~(-1 << (v28 - 1));
    if (!v27)
    {
      v30 = 0;
      v29 = 0;
    }

    if ((v30 & v27) != 0)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    v32 = v26 - v31;
    v33 = a1;
    v74 = *a1;
    v75 = *a8;
    v76 = a5;
    v77 = a5;
    v78 = v88;
    v80[0] = 0;
    v80[1] = 0;
    v79 = v80;
    if (*a6 != a6 + 1)
    {
      operator new();
    }

    v81 = v32;
    v82 = 0;
    v34 = [*a8 textureType];
    [*a8 pixelFormat];
    v35 = [*a8 arrayLength];
    [*a8 sampleCount];
    if (v34 == 5)
    {
      v36 = 6;
    }

    else if (v34 == 3)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1;
    }

    v68 = v36;
    if (a5[14])
    {
      v37 = 0;
      v66 = a5;
      v67 = a8;
      while (1)
      {
        v86 = 0;
        v38 = (*(*a7 + 104))(a7, 4, &v86);
        if (v38 != 4)
        {
          v52 = *re::pipelineLogObjects(v38);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Unexpected end of file when reading image size from KTX";
          goto LABEL_70;
        }

        {
          goto LABEL_73;
        }

        v85 = 0;
        v84 = 0u;
        memset(v83, 0, sizeof(v83));
        re::ktxMipInfo(v33, v83);
        v41 = v84;
        if (DWORD1(v84))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing row block bytes during KTX load";
          goto LABEL_70;
        }

        v42 = DWORD2(v84);
        if (HIDWORD(*(&v84 + 1)))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing image block bytes during KTX load";
          goto LABEL_70;
        }

        v43 = v85;
        if (HIDWORD(v85))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing image block bytes during KTX load";
          goto LABEL_70;
        }

        v44 = v86;
        if (a5[13] == 6 && !a5[12])
        {
          if (*(&v84 + 1) != ((v86 + 3) & 0x1FFFFFFFCLL))
          {
            v45 = *re::pipelineLogObjects(v40);
            v40 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              *buf = 67109376;
              *&buf[4] = v42;
              *&buf[8] = 1024;
              *&buf[10] = v86;
              _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "KTX image size field for non-array cubemap is unexpected (expected: %u, got: %u)", buf, 0xEu);
            }

            v44 = v86;
            v42 = (v86 + 3) & 0xFFFFFFFC;
            v43 = v85;
          }

          v44 *= 6;
        }

        v46 = v43 * v68;
        if ((v43 * v68) >> 32)
        {
          break;
        }

        if (v44 < v46)
        {
          v56 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
LABEL_73:
            v21 = 0;
            goto LABEL_74;
          }

          *buf = 67109376;
          *&buf[4] = v46;
          *&buf[8] = 1024;
          *&buf[10] = v44;
          v53 = "KTX image size field is too small for given pixel format and dimensions (expected: %u, got: %u)";
          v54 = v56;
          v55 = 14;
LABEL_71:
          _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
          goto LABEL_73;
        }

        if (v82)
        {
          v47 = atomic_load((v82 + 24));
          if (v47)
          {
            goto LABEL_73;
          }
        }

        v107 = 0;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        *buf = 0u;
        v102 = 0u;
        v48 = v75;
        v49 = v74;
        [v48 pixelFormat];
        [v75 sampleCount];
        MTLGetTextureLevelInfoForDevice();

        v87 = [*(v77 + 8) pixelFormat];
        LODWORD(v49) = v87;
        if (v49 != [v75 pixelFormat])
        {
          [v75 setPixelFormat_];
          [*(v77 + 8) setPixelFormat_];
        }

        a8 = v67;
        v33 = a1;
        if ((v50 & 1) == 0)
        {
          goto LABEL_73;
        }

        ++v37;
        a5 = v66;
        if (v37 >= v66[14])
        {
          goto LABEL_54;
        }
      }

      v52 = *re::pipelineLogObjects(v40);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v53 = "Overflow when computing image size during KTX load";
LABEL_70:
      v54 = v52;
      v55 = 2;
      goto LABEL_71;
    }

LABEL_54:
    if (a10)
    {
      v51 = *(a10 + 24);
      if (!v51)
      {
        v63 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_multi<std::pair<long const,unsigned long>>(v63);
      }

      (*(*v51 + 48))(v51);
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, buf);
    if (*&buf[8] != -1)
    {
      (off_1F5D0B2A8[*&buf[8]])(v83, buf);
    }

    v21 = 1;
LABEL_74:
    std::__tree<unsigned long long>::destroy(&v79, v80[0]);
    if (v75)
    {

      v75 = 0;
    }
  }

  v57 = v95;
  if (v95)
  {
    v58 = v99;
    if (v99)
    {
      if (v97)
      {
        v59 = 232 * v97;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v58);
          v58 = (v58 + 232);
          v59 -= 232;
        }

        while (v59);
        v57 = v95;
        v58 = v99;
      }

      (*(*v57 + 40))(v57, v58);
    }

    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    ++v98;
  }

  if (v93 != -1)
  {
    (off_1F5D0B2A8[v93])(buf, &v92);
  }

  v93 = -1;
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v89);
  objc_autoreleasePoolPop(context);
  if (!v21)
  {
    return 0;
  }

  if (!a9)
  {
    return 1;
  }

  v61 = *re::pipelineLogObjects(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *v88 = 136315138;
    *&v88[4] = v64;
    _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "ASTC compressed textures are not supported by this device, decompressing '%s'.", v88, 0xCu);
  }

  re::decompressCPUTexture(a11, v88);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, v88);
  if (*&v88[8] != -1)
  {
    (off_1F5D0B2A8[*&v88[8]])(buf, v88);
  }

  result = re::TextureData::isValid(a11);
  if (result)
  {
    if (!*v65)
    {
      return 1;
    }

    re::loadCPUTextureInMetal(v65, a11, *(a3 + 52), v88);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, v88);
    if (*&v88[8] != -1)
    {
      (off_1F5D0B2A8[*&v88[8]])(buf, v88);
    }

    result = re::TextureData::isValid(a11);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

size_t re::anonymous namespace::CGImageStreamLoader::getBytesCallback(re::_anonymous_namespace_::CGImageStreamLoader *this, char *__dst, unint64_t a3)
{
  v3 = a3;
  v4 = __dst;
  v6 = *(this + 9);
  if (v6 > 0x3F)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 += (*(**(this + 8) + 104))(*(this + 8), v3, v4);
    goto LABEL_9;
  }

  if (a3 >= 64 - v6)
  {
    v7 = 64 - v6;
  }

  else
  {
    v7 = a3;
  }

  memcpy(__dst, this + v6, v7);
  v3 -= v7;
  v4 += v7;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(this + 9) += v7;
  return v7;
}

char *re::anonymous namespace::CGImageStreamLoader::skipForwardCallback(re::_anonymous_namespace_::CGImageStreamLoader *this, char *a2)
{
  v4 = (*(**(this + 8) + 40))(*(this + 8));
  if (((*(**(this + 8) + 32))(*(this + 8), a2) & 1) == 0)
  {
    return &a2[v4 - (*(**(this + 8) + 40))(*(this + 8))];
  }

  return a2;
}

re *re::anonymous namespace::CGImageStreamLoader::releaseInfoCallback(re *this, void *a2)
{
  if (this)
  {
    v2 = *(*re::globalAllocators(this)[2] + 40);

    return v2();
  }

  return this;
}

uint64_t re::anonymous namespace::TextureBuilderKTX::init(uint64_t a1, id *a2, char a3, uint64_t a4)
{
  *(a1 + 8) = re::internal::getFaceOrArrayLength(a2);
  *(a1 + 12) = [*a2 pixelFormat];
  if (**a1)
  {
    *(a1 + 72) = [*a2 storageMode] == 2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN2re12_GLOBAL__N_117TextureBuilderKTX4initERKN2NS9SharedPtrIN3MTL17TextureDescriptorEEEbPKc_block_invoke;
    v16[3] = &__block_descriptor_57_e5_B8__0l;
    v17 = a3;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a4;
    v8 = _Block_copy(v16);
    v9 = v8;
    if (*(a1 + 72) != 1)
    {
      v14 = (*(v8 + 2))(v8);

      return v14;
    }

    v10 = [*a2 mipmapLevelCount];
    if (*(a1 + 88) < v10)
    {
    }

    v11 = _Block_copy(v9);
    v12 = *(a1 + 120);
    *(a1 + 120) = v11;
  }

  else
  {
    v13 = [*a2 mipmapLevelCount];
    if (*(a1 + 24) < v13)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a1 + 16), v13);
    }
  }

  return 1;
}

void re::anonymous namespace::TextureBuilderKTX::finish(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*(a2 + 72) != 1)
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 8) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1, a2 + 56);
      return;
    }

    if ((*(*(a2 + 120) + 16))())
    {
      memset(v25, 0, sizeof(v25));
      re::internal::BlitCommandQueue::init(v25, *a2, &re::internal::KTXTextureUploadQueueName(void)::queueName);
      if (*(a2 + 96))
      {
        v6 = 0;
        do
        {
          v7 = *(a2 + 112);
          v8 = objc_autoreleasePoolPush();
          if (*(a2 + 8))
          {
            v9 = 0;
            v10 = v7 + 232 * v6;
            do
            {
              if (*(a2 + 64))
              {
                std::__throw_bad_variant_access[abi:nn200100]();
              }

              v11 = *(v10 + 224);
              v12 = re::internal::BlitCommandQueue::blitCommandEncoder(v25);
              v24[0] = 0;
              re::internal::TextureInMetalBuffers::replaceTextureSlice(v10, (a2 + 56), v11 + v6, v9++, v12, v24);
            }

            while (v9 < *(a2 + 8));
          }

          objc_autoreleasePoolPop(v8);
          ++v6;
        }

        while (v6 < *(a2 + 96));
      }

      re::internal::BlitCommandQueue::commit(v25);
      re::internal::BlitCommandQueue::waitUntilCompleted(v25, &v20);
      if (v20)
      {
        re::internal::BlitCommandQueue::~BlitCommandQueue(v25);
        goto LABEL_13;
      }

      v18 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v22)
        {
          v19 = *&v23[7];
        }

        else
        {
          v19 = v23;
        }

        *buf = 136315138;
        v27 = v19;
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      if (v20 & 1) == 0 && v21 && (v22)
      {
        (*(*v21 + 40))();
      }

      re::internal::BlitCommandQueue::~BlitCommandQueue(v25);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    if ([*a4 mipmapLevelCount] > *(a2 + 32))
    {
      re::DynamicArray<re::DynamicArray<float>>::resize((a2 + 16), [*a4 mipmapLevelCount]);
    }

    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(a4, a2 + 16, &v20);
    v15 = v20;
    *a1 = v20;
    if (v15)
    {
      v16 = (v15 + 8);
      v17 = v20;
      *(a1 + 8) = 1;
      if (v17)
      {
      }
    }

    else
    {
      *(a1 + 8) = 1;
    }
  }
}

re *___ZN2re12_GLOBAL__N_117TextureBuilderKTX4initERKN2NS9SharedPtrIN3MTL17TextureDescriptorEEEbPKc_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    re::mtl::Device::makeSharedTexture(**(a1 + 40), *v2, &v9);
  }

  else
  {
    re::mtl::Device::makeTexture(**(a1 + 40), *v2, &v9);
  }

  *buf = v9;
  *&buf[8] = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>((v2 + 7), buf);
  if (*&buf[8] != -1)
  {
    (off_1F5D0B2A8[*&buf[8]])(&v10, buf);
  }

  *&buf[8] = -1;
  if (v9)
  {
  }

  isValid = re::TextureData::isValid((v2 + 7));
  v4 = isValid;
  if (isValid)
  {
    v5 = *(a1 + 48);
    if (v5 && *v5)
    {
      re::TextureData::setLabel((v2 + 7), v5);
    }
  }

  else
  {
    v6 = *re::pipelineLogObjects(isValid);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 48);
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Failed to create texture '%s' from KTX", buf, 0xCu);
    }
  }

  return v4;
}

id re::TextureData::setLabel(re::TextureData *this, const char *a2)
{
  v2 = *(this + 2);
  if (v2 == 1)
  {
    v7 = *this;

    return re::CPUTexture::setLabel(v7, a2);
  }

  if (v2)
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::CPUTexture::setLabel(v7, a2);
  }

  v3 = *this;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];

  return [v3 setLabel_];
}

uint64_t re::CPUTexture::setLabel(re::CPUTexture *this, const char *a2)
{
  re::DynamicString::operator=((this + 72), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::TextureBuilderKTX::CopyFromBufferToTextureInfo>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE8uLL))
        {
          v2 = 232 * a2;
          result = (*(*result + 32))(result, 232 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 232, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 232 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v14 = *(v8 + v10);
          v15 = *(v8 + v10 + 8);
          *v12 = v14;
          v12[1] = v15;
          re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v7[v10 / 8 + 2], (v8 + v10 + 16));
          re::DynamicArray<BOOL>::DynamicArray(&v7[v10 / 8 + 17], (v8 + v10 + 136));
          v16 = *(v8 + v10 + 176);
          *(v12 + 92) = *(v8 + v10 + 184);
          v12[22] = v16;
          LODWORD(v16) = *(v8 + v10 + 192);
          *(v12 + 192) = v16;
          if (v16 == 1)
          {
            v17 = *(v13 + 200);
            v12[27] = *(v13 + 216);
            *(v12 + 25) = v17;
          }

          v12[28] = *(v13 + 224);
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((v8 + v10));
          v10 += 232;
        }

        while (v13 + 232 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = a2 + 24;
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = a1 + 24;
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v19 = *(a1 + 8);
        if (v4 != v19)
        {
          v20 = (v8 + 96 * v4);
          v21 = 96 * v19 - 96 * v4;
          do
          {
            if (*v20)
            {

              *v20 = 0;
            }

            v20 += 12;
            v21 -= 96;
          }

          while (v21);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = v5 + 96 * v4;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v7, v5);
      v15 = *(v5 + 24);
      *(v7 + 8) = *(v5 + 8);
      *(v7 + 24) = v15;
      v16 = *(v5 + 56);
      v17 = *(v5 + 72);
      v18 = *(v5 + 88);
      *(v7 + 40) = *(v5 + 40);
      *(v7 + 88) = v18;
      *(v7 + 72) = v17;
      *(v7 + 56) = v16;
      v5 += 96;
      v7 += 96;
    }

    while (v5 != v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, *(a2 + 8));
  if (*(a2 + 16))
  {
    v9 = a2 + 24;
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_28:
    v22 = v9 + 96 * v10;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v12, v9);
      v23 = *(v9 + 24);
      *(v12 + 8) = *(v9 + 8);
      *(v12 + 24) = v23;
      v24 = *(v9 + 56);
      v25 = *(v9 + 72);
      v26 = *(v9 + 88);
      *(v12 + 40) = *(v9 + 40);
      *(v12 + 88) = v26;
      *(v12 + 72) = v25;
      *(v12 + 56) = v24;
      v9 += 96;
      v12 += 96;
    }

    while (v9 != v22);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v13 = a1 + 24;
    goto LABEL_32;
  }

  v12 = a1 + 24;
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_15:
  v13 = *(a1 + 32);
LABEL_32:
  v27 = *(a1 + 8);
  v28 = *(a2 + 32);
  if (*(a2 + 16))
  {
    v28 = a2 + 24;
  }

  if (v27 != v4)
  {
    v29 = 3 * v27;
    v30 = v28 + 96 * v4;
    v31 = v28 + 32 * v29;
    v32 = v13 + 32 * v29;
    do
    {
      *v32 = *v31;
      v33 = *(v31 + 24);
      *(v32 + 8) = *(v31 + 8);
      *(v32 + 24) = v33;
      v34 = *(v31 + 56);
      v35 = *(v31 + 72);
      v36 = *(v31 + 88);
      *(v32 + 40) = *(v31 + 40);
      *(v32 + 88) = v36;
      *(v32 + 72) = v35;
      *(v32 + 56) = v34;
      v31 += 96;
      v32 += 96;
    }

    while (v31 != v30);
  }

LABEL_37:
  *(a1 + 8) = v4;
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v15 = a1[4];
        if (v7)
        {
          v16 = a1 + 3;
        }

        else
        {
          v16 = a1[4];
        }

        if (v9)
        {
          a1[3] = *v16;
          *v16 = 0;
          v17 = *(v16 + 3);
          *(a1 + 2) = *(v16 + 1);
          *(a1 + 3) = v17;
          v18 = *(v16 + 5);
          v19 = *(v16 + 7);
          v20 = *(v16 + 9);
          a1[14] = v16[11];
          *(a1 + 5) = v19;
          *(a1 + 6) = v20;
          *(a1 + 4) = v18;
          if (*v16)
          {

            *v16 = 0;
            v5 = *a1;
          }
        }

        (*(*v5 + 40))(v5, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x60uLL))
      {
        v2 = 96 * a2;
        v10 = (*(*v5 + 32))(v5, 96 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v21 = a1[1];
          if (v21)
          {
            v22 = 96 * v21;
            v23 = v10;
            do
            {
              *v23 = *v14;
              *v14 = 0;
              v24 = *(v14 + 1);
              *(v23 + 24) = *(v14 + 3);
              *(v23 + 8) = v24;
              v25 = *(v14 + 5);
              v26 = *(v14 + 7);
              v27 = *(v14 + 9);
              *(v23 + 88) = v14[11];
              *(v23 + 72) = v27;
              *(v23 + 56) = v26;
              *(v23 + 40) = v25;
              if (*v14)
              {

                *v14 = 0;
              }

              v14 += 12;
              v23 += 96;
              v22 -= 96;
            }

            while (v22);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 96, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

BOOL re::anonymous namespace::checkAlignment(re::_anonymous_namespace_ *this, unsigned int *a2)
{
  v2 = *this;
  v3 = (v2 + 3) & 0x1FFFFFFFCLL;
  if (v3 == v2)
  {
    return 1;
  }

  v5 = *re::pipelineLogObjects(this);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "KTX image size field was not a multiple of 4, which should not be possible", buf, 2u);
  }

  *this = v3;
  if (v2 < 0xFFFFFFFD)
  {
    return 1;
  }

  v7 = *re::pipelineLogObjects(v6);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Overflow when computing aligned image size during KTX load", v9, 2u);
    return 0;
  }

  return result;
}

uint64_t re::anonymous namespace::TextureBuilderKTX::setMip(uint64_t a1, id *a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint8_t **a9, uint64_t a10, char a11, int *a12)
{
  v90 = *MEMORY[0x1E69E9840];
  isHDR = (*(*a4 + 40))(a4);
  v64 = isHDR;
  if (a11)
  {
    isHDR = re::isHDR(*a12);
    v66 = isHDR ^ 1;
  }

  else
  {
    v66 = 0;
  }

  v20 = buf;
  v21 = (a10 + a3);
  v22 = *a2;
  if (!*a2)
  {
    v28 = (v21 + 1);
    if (*(a1 + 32) < v28)
    {
      isHDR = re::DynamicArray<re::DynamicArray<float>>::resize((a1 + 16), v28);
    }

    v29 = a12;
    if (a9[2])
    {
      v30 = *(a1 + 8);
      v80[4] = 0;
      v31 = v30 * a7;
      memset(&v80[1], 0, 20);
      re::DynamicArray<BOOL>::setCapacity(v80, v31);
      ++LODWORD(v80[3]);
      v20 = v80;
      v32 = *(a1 + 32);
      if (v32 <= v21)
      {
LABEL_91:
        v67 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *(v20 + 56) = 136315906;
        *(v20 + 228) = "operator[]";
        *(v20 + 118) = 1024;
        *(v20 + 238) = 789;
        *(v20 + 121) = 2048;
        *(v20 + 244) = v21;
        *(v20 + 126) = 2048;
        *(v20 + 254) = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_92:
        v47 = v80;
        *&v89[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v80[0]) = 136315906;
        *(v80 + 4) = "operator[]";
        WORD2(v80[1]) = 1024;
        *(&v80[1] + 6) = 789;
        WORD1(v80[2]) = 2048;
        *(&v80[2] + 4) = v21;
        WORD2(v80[3]) = 2048;
        *(&v80[3] + 6) = v32;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_93:
        *&v89[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v80[0]) = 136315906;
        *(v80 + 4) = "operator[]";
        WORD2(v80[1]) = 1024;
        *(&v80[1] + 6) = 789;
        WORD1(v80[2]) = 2048;
        *(&v80[2] + 4) = v21;
        WORD2(v80[3]) = 2048;
        *(&v80[3] + 6) = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_94;
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(*(a1 + 48) + 40 * v21, v80);
      if (v80[0] && v80[4])
      {
        (*(*v80[0] + 40))(v80[0]);
      }

      v32 = *(a1 + 32);
      if (v32 <= v21)
      {
        goto LABEL_92;
      }

      re::DynamicArray<BOOL>::resize(*(a1 + 48) + 40 * v21, v31);
      v20 = *a9;
      if (*a9 != (a9 + 1))
      {
        v33 = 0;
        v32 = a7;
        while (1)
        {
          v34 = *(v20 + 4);
          if ((v34 & 0x8000000000000000) == 0 && v34 != v33)
          {
            (*(*a4 + 32))(a4, (v34 - v33) * a7);
          }

          v35 = *(a1 + 32);
          if (v35 <= v21)
          {
            break;
          }

          v36 = *(*(a1 + 48) + 40 * v21 + 32);
          v37 = *(v20 + 5);
          if ((*(v20 + 4) & 0x8000000000000000) != 0)
          {
            memset_pattern16((v36 + v37 * a7), &re::internal::AstcVoidExtentMagenta, a7);
            v29 = a12;
          }

          else
          {
            v29 = a12;
            if ((*(*a4 + 104))(a4, a7, v36 + v37 * a7) != a7)
            {
              return 0;
            }

            v33 = *(v20 + 4) + 1;
          }

          v38 = *(v20 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v20 + 2);
              v40 = *v39 == v20;
              v20 = v39;
            }

            while (!v40);
          }

          v20 = v39;
          if (v39 == a9 + 1)
          {
            goto LABEL_62;
          }
        }

        *&v89[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v80[0]) = 136315906;
        *(v80 + 4) = "operator[]";
        WORD2(v80[1]) = 1024;
        *(&v80[1] + 6) = 789;
        WORD1(v80[2]) = 2048;
        *(&v80[2] + 4) = v21;
        WORD2(v80[3]) = 2048;
        *(&v80[3] + 6) = v35;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {
      v80[4] = 0;
      memset(&v80[1], 0, 20);
      re::DynamicArray<BOOL>::setCapacity(v80, a5);
      ++LODWORD(v80[3]);
      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
LABEL_94:
        v67 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v89[0]) = 136315906;
        *(v89 + 4) = "operator[]";
        WORD6(v89[0]) = 1024;
        *(v89 + 14) = 789;
        WORD1(v89[1]) = 2048;
        *(&v89[1] + 4) = v21;
        WORD6(v89[1]) = 2048;
        *(&v89[1] + 14) = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_95:
        *&v89[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *(v20 + 68) = 136315906;
        *(v80 + 4) = "operator[]";
        WORD2(v80[1]) = 1024;
        *(&v80[1] + 6) = 789;
        WORD1(v80[2]) = 2048;
        *(&v80[2] + 4) = v21;
        WORD2(v80[3]) = 2048;
        *(&v80[3] + 6) = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_96;
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(*(a1 + 48) + 40 * v21, v80);
      if (v80[0] && v80[4])
      {
        (*(*v80[0] + 40))(v80[0]);
      }

      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
        goto LABEL_95;
      }

      re::DynamicArray<BOOL>::resize(*(a1 + 48) + 40 * v21, a5);
      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
LABEL_96:
        *&v89[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v80[0]) = 136315906;
        *(v80 + 4) = "operator[]";
        WORD2(v80[1]) = 1024;
        *(&v80[1] + 6) = 789;
        WORD1(v80[2]) = 2048;
        *(&v80[2] + 4) = v21;
        WORD2(v80[3]) = 2048;
        *(&v80[3] + 6) = v47;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_97:
        std::__throw_bad_variant_access[abi:nn200100]();
      }

      v48 = (*(*a4 + 104))(a4, a5, *(*(a1 + 48) + 40 * v21 + 32));
      if (v48 != a5)
      {
        v49 = *re::pipelineLogObjects(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_FAULT, "Failed to load data for texture", buf, 2u);
        }
      }
    }

LABEL_62:
    if (!v66)
    {
      goto LABEL_87;
    }

    v47 = *(a1 + 32);
    if (v47 > v21)
    {
      goto LABEL_87;
    }

    goto LABEL_93;
  }

  v23 = *(a8 + 16);
  memset(v89, 0, 24);
  *(&v89[1] + 8) = *a8;
  *(&v89[2] + 1) = v23;
  if (*(a1 + 72) == 1)
  {
    v80[0] = v22;
    v80[1] = @"createTextureWithKTXData staging buffer";
    v80[2] = 0;
    v80[3] = 0;
    LODWORD(v80[4]) = 1;
    v80[5] = 0;
    v80[6] = 0;
    memset(v81, 0, sizeof(v81));
    v82 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    CFRetain(@"createTextureWithKTXData staging buffer");
    *&v71 = 0;
    v69 = 0u;
    v70 = 0u;
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    v24.i32[0] = 0;
    v25.i32[0] = *&buf[8] & 0x400;
    v26 = re::internal::TextureInMetalBuffers::allocate(v80, a5, a6, vbsl_s8(vdup_lane_s32(vceq_s32(v25, v24), 0), 0x100000001, vmovn_s64(v70)).u32[1], a4, &v89[1] + 1, *(a1 + 8), a9);
    if ((v26 & 1) == 0)
    {
      v46 = *re::pipelineLogObjects(v26);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_FAULT, "Failed to create staging buffer for KTX data", buf, 2u);
      }

      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v80);
      return 0;
    }

    if (v66)
    {
      v27 = *a2;
      operator new();
    }

    *buf = v80[0];
    *&buf[8] = v80[1];
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v69, &v80[2]);
    v52 = re::DynamicArray<BOOL>::DynamicArray(v73, v81);
    v74 = v84;
    v75 = v85;
    v76 = v86;
    if (v86 == 1)
    {
      v77 = v87;
      v78 = v88;
    }

    v79 = a10;
    v53 = *(a1 + 88);
    v54 = *(a1 + 96);
    if (v54 >= v53)
    {
      v55 = v54 + 1;
      if (v53 < v54 + 1)
      {
        if (*(a1 + 80))
        {
          v56 = 2 * v53;
          v40 = v53 == 0;
          v57 = 8;
          if (!v40)
          {
            v57 = v56;
          }

          if (v57 <= v55)
          {
            v58 = v55;
          }

          else
          {
            v58 = v57;
          }
        }

        else
        {
          ++*(a1 + 104);
        }
      }
    }

    v59 = *(a1 + 112) + 232 * *(a1 + 96);
    *v59 = *buf;
    *(v59 + 8) = *&buf[8];
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v59 + 16, &v69);
    re::DynamicArray<BOOL>::DynamicArray(v59 + 136, v73);
    v60 = v74;
    *(v59 + 184) = v75;
    *(v59 + 176) = v60;
    LODWORD(v60) = v76;
    *(v59 + 192) = v76;
    if (v60 == 1)
    {
      v61 = v77;
      *(v59 + 216) = v78;
      *(v59 + 200) = v61;
    }

    *(v59 + 224) = v79;
    ++*(a1 + 96);
    ++*(a1 + 104);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v80);
    goto LABEL_87;
  }

  v80[4] = 0;
  memset(v80, 0, 28);
  if (*(a1 + 8))
  {
    v41 = 0;
    while (1)
    {
      if (*(a1 + 64))
      {
        goto LABEL_97;
      }

      v42 = *(a1 + 56);
      v67 = 0;
      v43 = (*(*a4 + 96))(a4, a7, v80, &v67);
      v44 = v43;
      if (v43 == a7)
      {
        break;
      }

      v45 = *re::pipelineLogObjects(v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_FAULT, "Failed to load data for texture", buf, 2u);
        if (!v42)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (v42)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (v44 != a7)
      {
        v50 = v80[0];
        if (!v80[0])
        {
          return 0;
        }

        goto LABEL_68;
      }

      if (++v41 >= *(a1 + 8))
      {
        v50 = v80[0];
        if (!v80[0])
        {
          goto LABEL_87;
        }

LABEL_68:
        if (v80[4])
        {
          (*(*v50 + 40))(v50);
        }

        if (v44 != a7)
        {
          return 0;
        }

        goto LABEL_87;
      }
    }

    if (v66)
    {
    }

    *buf = v89[0];
    v69 = v89[1];
    v70 = v89[2];
    [v42 replaceRegion:buf mipmapLevel:v21 slice:v41 withBytes:v67 bytesPerRow:a6 bytesPerImage:a7];
    if (!v42)
    {
      goto LABEL_45;
    }

LABEL_44:

    goto LABEL_45;
  }

LABEL_87:
  v62 = v64 + a5;
  v63 = (*(*a4 + 40))(a4);
  if (v62 > v63)
  {
    (*(*a4 + 32))(a4, (v62 - v63));
  }

  return 1;
}

BOOL re::anonymous namespace::slowAstcHdrCheck(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v5 = [RETextureLoaderASTCHelper isASTCHDRData:v4 textureType:2 error:0];
  if (v5 == 1)
  {
  }

  return v5 == 1;
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5D0B228;

  return a1;
}

void std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5D0B228;

  JUMPOUT(0x1E6906520);
}

__n128 std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::__clone(uint64_t a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_1F5D0B228;
  a2->n128_u64[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[1] = result;
  return result;
}

void std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (**(result + 16) == 1)
  {
    v3 = *a2;
    v4 = *a3;
    v5 = *(result + 24);
    result = re::isHDR(*v5);
    if ((result & 1) == 0)
    {
    }
  }

  return result;
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0B2C8;
  a2[1] = v2;
  return result;
}

re *std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::operator()(re *result)
{
  v1 = *(result + 1);
  v2 = *v1;
  if (*v1)
  {
    v3 = result;
    v4 = re::globalAllocators(result)[2];
    (**v2)(v2);
    result = (*(*v4 + 40))(v4, v2);
    v1 = *(v3 + 1);
  }

  *v1 = 0;
  return result;
}

uint64_t std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::internal::TextureProviderProperties::~TextureProviderProperties(re::internal::TextureProviderProperties *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {

    *(this + 1) = 0;
  }
}

re::internal::TextureProviderProperties *re::internal::TextureProviderProperties::TextureProviderProperties(re::internal::TextureProviderProperties *this, const re::internal::TextureProviderProperties *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  v5 = v4;
  v6 = *(a2 + 2);
  *(this + 1) = v5;
  *(this + 2) = v6;
  if (*this)
  {
    CFRetain(*this);
    v6 = *(this + 2);
  }

  if (v6)
  {
    CFRetain(v6);
  }

  return this;
}

uint64_t re::internal::TextureProviderProperties::operator=(uint64_t a1, void **a2)
{
  if (a1 != a2)
  {
    NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), a2 + 1);
    *(a1 + 16) = a2[2];
    v4 = *a1;
    v5 = *a2;
    if (*a1 != *a2)
    {
      if (v4)
      {
        CFRelease(v4);
        v5 = *a2;
      }

      *a1 = v5;
      *a2 = 0;
      v6 = *(a1 + 16);
      v7 = a2[2];
      if (v6 != v7)
      {
        if (v6)
        {
          CFRelease(v6);
          v7 = a2[2];
        }

        *(a1 + 16) = v7;
        a2[2] = 0;
      }
    }
  }

  return a1;
}

uint64_t re::ImageSourceAndIndex::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v5)
  {
    CFRetain(v5);
  }

  return a1;
}

uint64_t re::TextureProvider::TextureProvider(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D0B348;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  re::DynamicString::setCapacity(v4, 0);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 64);
  v5 = *(a2 + 80);
  v7 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v6;
  *(a1 + 80) = v5;
  *(a1 + 48) = v7;
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v8;
  re::FixedArray<short>::FixedArray((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = _Block_copy(*(a2 + 176));
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 200);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 200) = v9;
  v10 = *(a2 + 203);
  *(a1 + 203) = v10;
  if (v10 == 1)
  {
    *(a1 + 204) = *(a2 + 204);
  }

  v11 = *(a2 + 205);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 205) = v11;
  v13 = *(a2 + 216);
  v12 = a2 + 216;
  *(a1 + 216) = v13;
  *(a1 + 232) = *(v12 + 16);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(a1 + 240) = *(v12 + 24);

  *(v12 - 176) = 0;
  v14 = *(v12 - 40);
  *(v12 - 40) = 0;

  v16[0] = 0;
  v16[1] = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v16[2] = 0;
  re::internal::TextureProviderProperties::operator=(v12, v16);
  re::internal::TextureProviderProperties::~TextureProviderProperties(v16);
  *(v12 + 24) = 0;
  return a1;
}

re::TextureProvider *re::TextureProvider::TextureProvider(re::TextureProvider *this, const re::TextureProvider *a2)
{
  *this = &unk_1F5D0B348;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v4 = (this + 8);
  re::DynamicString::setCapacity(v4, 0);
  *(this + 5) = *(a2 + 5);
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = *(a2 + 3);
  *(this + 92) = *(a2 + 92);
  *(this + 4) = v6;
  *(this + 5) = v5;
  *(this + 3) = v7;
  *(this + 14) = *(a2 + 14);
  v8 = *(a2 + 34);
  *(this + 120) = *(a2 + 120);
  *(this + 34) = v8;
  re::FixedArray<short>::FixedArray(this + 18, a2 + 18);
  *(this + 168) = *(a2 + 168);
  *(this + 22) = 0;
  *(this + 23) = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  v9 = *(a2 + 100);
  *(this + 202) = *(a2 + 202);
  *(this + 100) = v9;
  v10 = *(a2 + 203);
  *(this + 203) = v10;
  if (v10 == 1)
  {
    *(this + 204) = *(a2 + 204);
  }

  v11 = *(a2 + 205);
  *(this + 53) = *(a2 + 53);
  *(this + 205) = v11;
  re::internal::TextureProviderProperties::TextureProviderProperties((this + 216), (a2 + 216));
  *(this + 240) = *(a2 + 240);
  return this;
}

re::TextureProvider *re::TextureProvider::TextureProvider(re::TextureProvider *this, const re::ImportGraphicsContext *a2, int a3)
{
  *this = &unk_1F5D0B348;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v6 = (this + 8);
  re::DynamicString::setCapacity(v6, 0);
  v7 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v7;
  *(this + 16) = 1;
  *(this + 22) = 0;
  *(this + 92) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 68) = 0;
  *(this + 26) = 6;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 34) = -65536;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 168) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = *a2;
  *(this + 24) = *(a2 + 1);
  v8 = *(a2 + 8);
  *(this + 202) = *(a2 + 18);
  *(this + 100) = v8;
  v9 = *(a2 + 19);
  *(this + 203) = v9;
  if (v9 == 1)
  {
    *(this + 204) = *(a2 + 20);
  }

  v10 = *(a2 + 21);
  *(this + 53) = *(a2 + 7);
  *(this + 205) = v10;
  *(this + 27) = 0;
  *(this + 28) = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *(this + 29) = 0;
  *(this + 240) = 1;
  [*(this + 5) setResourceOptions_];
  *(this + 100) = a3;
  v11 = *(this + 23);
  if (v11)
  {
    if (a3)
    {
      v12 = [v11 supportsSharedTextureHandles];
    }

    else
    {
      v12 = 0;
    }

    *(this + 100) = v12;
  }

  return this;
}

uint64_t re::TextureProvider::canHaveAlpha(re::TextureProvider *this, const re::TextureProvider *a2)
{
  re::TextureProvider::lazyFetchProperties(this, a2);
  v3 = CFDictionaryGetValue(*(this + 27), *MEMORY[0x1E696DD50]);
  v4 = [v3 BOOLValue];

  return v4;
}

void re::TextureProvider::lazyFetchProperties(id *this, const re::TextureProvider *a2)
{
  if (*(this + 240) == 1)
  {
    v5[5] = v2;
    v5[6] = v3;
    re::internal::createTextureProviderProperties(this, a2, v5);
    re::internal::TextureProviderProperties::operator=((this + 27), v5);
    re::internal::TextureProviderProperties::~TextureProviderProperties(v5);
    *(this + 240) = 0;
  }
}

void re::TextureProvider::setOptions(re::TextureProvider *this, const re::TextureFromImageOptions *a2)
{
  v4 = *(a2 + 1);
  v6 = *a2;
  v7 = v4;
  *v8 = *(a2 + 2);
  *&v8[12] = *(a2 + 44);
  v9 = *(a2 + 8);
  v10 = *(a2 + 72);
  v11 = *(a2 + 22);
  re::FixedArray<short>::FixedArray(&v12, a2 + 12);
  v15 = *(a2 + 120);
  v8[20] = *(this + 100);
  if ((re::TextureFromImageOptions::operator==(this + 48, &v6) & 1) == 0)
  {
    v5 = v7;
    *(this + 3) = v6;
    *(this + 4) = v5;
    *(this + 5) = *v8;
    *(this + 92) = *&v8[12];
    re::ObjCObject::operator=(this + 14, &v9);
    *(this + 120) = v10;
    *(this + 34) = v11;
    re::FixedArray<short>::operator=(this + 18, &v12);
    *(this + 168) = v15;
    *(this + 240) = 1;
  }

  if (v12)
  {
    if (v13)
    {
      (*(*v12 + 40))();
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }
}

void **re::TextureProvider::setTemplateDescriptor(void **result, void **a2, char a3)
{
  v3 = result + 5;
  if (result[5] != *a2)
  {
    v5 = result;
    result = NS::SharedPtr<MTL::Buffer>::operator=(result + 5, a2);
    if ((a3 & 1) == 0)
    {
      result = [*v3 setResourceOptions_];
    }

    *(v5 + 240) = 1;
  }

  return result;
}

void re::CGImageSourceTextureProvider::~CGImageSourceTextureProvider(re::CGImageSourceTextureProvider *this)
{
  *this = &unk_1F5D0B3C8;
  v2 = *(this + 31);
  if (v2)
  {
    CFRelease(v2);
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::CGImageSourceTextureProvider::~CGImageSourceTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

const void *re::CGImageSourceTextureProvider::tryCreateImageSource(re::CGImageSourceTextureProvider *this, const __CFDictionary *a2)
{
  result = *(this + 31);
  if (result)
  {
    CFRetain(result);
    return *(this + 31);
  }

  return result;
}

uint64_t re::CGImageSourceTextureProvider::tryCreateOrDetachImageSource(re::CGImageSourceTextureProvider *this, const __CFDictionary *a2)
{
  v2 = *(this + 31);
  *(this + 31) = 0;
  return v2;
}

void re::CGImageTextureProvider::~CGImageTextureProvider(CGImageRef *this)
{
  *this = &unk_1F5D0B448;
  CGImageRelease(this[31]);

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5D0B448;
  CGImageRelease(this[31]);
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

re::TextureProvider *re::CGImageArrayTextureProvider::CGImageArrayTextureProvider(re::TextureProvider *a1, const re::ImportGraphicsContext *a2, int a3, uint64_t *a4, int a5)
{
  v8 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v8 = &unk_1F5D0B4C8;
  *(v8 + 61) = a5;
  re::DynamicArray<char const*>::DynamicArray(v8 + 248, a4);
  v9 = *(a1 + 33);
  if (v9)
  {
    v10 = *(a1 + 35);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      CGImageRetain(v12);
      v11 -= 8;
    }

    while (v11);
  }

  return a1;
}

void re::CGImageArrayTextureProvider::~CGImageArrayTextureProvider(re::CGImageArrayTextureProvider *this)
{
  *this = &unk_1F5D0B4C8;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      CGImageRelease(v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 31);
  if (v6)
  {
    if (*(this + 35))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 35) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 31) = 0;
    ++*(this + 68);
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::CGImageArrayTextureProvider::~CGImageArrayTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

re::TextureProvider *re::ResourceTextureProvider::ResourceTextureProvider(re::TextureProvider *a1, const re::ImportGraphicsContext *a2, int a3, const re::DynamicString *a4)
{
  v6 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v6 = &unk_1F5CC4C98;
  v7 = (v6 + 8);
  re::DynamicString::DynamicString((v6 + 248), a4);
  re::DynamicString::operator=(v7, a4);
  return a1;
}

re::TextureProvider *re::USKTextureProvider::USKTextureProvider(re::TextureProvider *a1, const re::ImportGraphicsContext *a2, int a3, const re::DynamicString *a4)
{
  re::DynamicString::DynamicString(&v8, a4);
  re::ResourceTextureProvider::ResourceTextureProvider(a1, a2, a3, &v8);
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  *a1 = &unk_1F5D0B5C8;
  return a1;
}

id re::USKTextureProvider::tryCreateRawImageData(re::USKTextureProvider *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 256))
  {
    v2 = *(this + 33);
  }

  else
  {
    v2 = (this + 257);
  }

  re::usdkit::Resource::makeWithPath(v2, &v9);
  re::usdkit::Resource::makeMappedData(&v9, &v8);
  v4 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  else
  {
    v5 = *re::pipelineLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v7 = *(this + 33);
      }

      else
      {
        v7 = this + 257;
      }

      *buf = 136315138;
      v11 = v7;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to open texture resource '%s'", buf, 0xCu);
    }
  }

  return v4;
}

CGImageSourceRef re::USKTextureProvider::tryCreateImageSource(re::USKTextureProvider *this, const __CFDictionary *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 40))(this);
  v12 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  if (re::internal::isBasisTextureData(&v12, v5))
  {
    CFRelease(v6);
    return 0;
  }

  v7 = CGImageSourceCreateWithData(v6, a2);
  CFRelease(v6);
  if (!v7)
  {
    v9 = *re::pipelineLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v11 = *(this + 33);
      }

      else
      {
        v11 = this + 257;
      }

      *buf = 136315138;
      v14 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture resource '%s'", buf, 0xCu);
    }

    return 0;
  }

  return v7;
}

void re::USKTextureProvider::tryReadHeaderBytes(re::USKTextureProvider *this, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  operator new();
}

re::FileTextureProvider *re::FileTextureProvider::FileTextureProvider(re::FileTextureProvider *this, const re::ImportGraphicsContext *a2, int a3, const char *a4)
{
  re::ResourceTextureProvider::ResourceTextureProvider(this, a2, a3, &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  *this = &unk_1F5D0B648;
  return this;
}

void *re::FileTextureProvider::tryCreateRawImageData(re::FileTextureProvider *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 256))
  {
    v2 = *(this + 33);
  }

  else
  {
    v2 = this + 257;
  }

  v3 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v2 isDirectory:0 relativeToURL:0];
  v10 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    CFRetain(v4);
  }

  else
  {
    v7 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v9 = *(this + 33);
      }

      else
      {
        v9 = this + 257;
      }

      *buf = 136315394;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create texture from path: %s: %@", buf, 0x16u);
    }
  }

  return v4;
}

void re::FileTextureProvider::tryCreateImageSource(re::FileTextureProvider *this, const __CFDictionary *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  operator new();
}

FILE *re::FileTextureProvider::tryReadHeaderBytes@<X0>(re::FileTextureProvider *this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(this + 256))
  {
    v7 = *(this + 33);
  }

  else
  {
    v7 = (this + 257);
  }

  re::FileStreamReader::open(v7, v17);
  if (v17[0])
  {
    v8 = fread(a2, 1uLL, a3, __stream);
    *a4 = 1;
    *(a4 + 8) = v8;
  }

  else
  {
    if (v20)
    {
      v9 = *&v21[7];
    }

    else
    {
      v9 = v21;
    }

    re::DynamicString::format("Failed to open image file: %s", &v14, v9);
    v10 = v14;
    v11 = v15;
    v12 = v16;
    *a4 = 0;
    *(a4 + 8) = v10;
    *(a4 + 24) = v11;
    *(a4 + 32) = v12;
  }

  if (v17[0] == 1)
  {
    result = __stream;
    if (__stream)
    {
      if (v20 == 1)
      {
        return fclose(__stream);
      }
    }
  }

  else
  {
    result = v19;
    if (v19 && (v20 & 1) != 0)
    {
      return (*(*v19 + 40))();
    }
  }

  return result;
}

uint64_t re::FileTextureProvider::tryCreateInputStreamSource@<X0>(re::FileTextureProvider *this@<X0>, uint64_t a2@<X8>)
{
  re::DynamicString::DynamicString(&v10, (this + 248));
  re::FileInputStreamSource::create((this + 248), 0, -1, v8);
  v4 = v9;
  if (v8[0])
  {
    v9 = 0;
    if (v4)
    {
      v5 = v4 + 8;
      *a2 = 1;
      *(a2 + 8) = v4;
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    v6 = v9;
    *a2 = 0;
    *(a2 + 8) = v6;
  }

  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v8);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::DataTextureProvider::DataTextureProvider(uint64_t a1, uint64_t a2)
{
  *re::TextureProvider::TextureProvider(a1, a2) = &unk_1F5D0B6C8;
  v4 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = _Block_copy(v4);
  v5 = *(a2 + 256);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;

  return a1;
}

uint64_t re::DataTextureProvider::DataTextureProvider(uint64_t a1, const re::ImportGraphicsContext *a2, int a3, void *a4, void *a5)
{
  v9 = a5;
  re::TextureProvider::TextureProvider(a1, a2, a3);
  *a1 = &unk_1F5D0B6C8;
  *(a1 + 248) = *a4;
  v10 = _Block_copy(v9);

  *(a1 + 256) = v10;
  CFRetain(*(a1 + 248));
  return a1;
}

void re::DataTextureProvider::~DataTextureProvider(re::DataTextureProvider *this)
{
  *this = &unk_1F5D0B6C8;
  v2 = *(this + 31);
  if (v2)
  {
    CFRelease(v2);
    *(this + 31) = 0;
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::DataTextureProvider::~DataTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::DataTextureProvider::doneWithSource(re::DataTextureProvider *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(this + 32);
    *(this + 32) = 0;
  }

  v4 = *(this + 22);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(this + 22);
    *(this + 22) = 0;
  }
}

const void *re::DataTextureProvider::tryCreateRawImageData(re::DataTextureProvider *this)
{
  result = *(this + 31);
  if (result)
  {
    CFRetain(result);
    return *(this + 31);
  }

  return result;
}

uint64_t re::DataTextureProvider::tryCreateOrDetachRawImageData(re::DataTextureProvider *this)
{
  v1 = *(this + 31);
  *(this + 31) = 0;
  return v1;
}

const __CFData *re::DataTextureProvider::tryCreateImageSource(re::DataTextureProvider *this, const __CFDictionary *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = *(this + 31);
  if (result)
  {
    result = CGImageSourceCreateWithData(result, a2);
    if (!result)
    {
      v4 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 16))
        {
          v5 = *(this + 3);
        }

        else
        {
          v5 = this + 17;
        }

        v6 = 136315138;
        v7 = v5;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture data '%s'", &v6, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::DataTextureProvider::tryCreateOrDetachImageSource(re::DataTextureProvider *this, const __CFDictionary *a2)
{
  v3 = (*(*this + 24))(this, a2);
  v4 = *(this + 31);
  if (v4)
  {
    CFRelease(v4);
    *(this + 31) = 0;
  }

  return v3;
}

__n128 re::DataTextureProvider::tryReadHeaderBytes@<Q0>(re::DataTextureProvider *this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 31);
  if (v5)
  {
    Length = CFDataGetLength(*(this + 31));
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(v5);
    memcpy(a2, BytePtr, a3);
    *a4 = 1;
    *(a4 + 8) = a3;
  }

  else
  {
    result = v13;
    v11 = v14;
    v12 = v15;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v11;
    *(a4 + 32) = v12;
  }

  return result;
}

uint64_t re::StreamSourceTextureProvider::StreamSourceTextureProvider(uint64_t a1, const re::ImportGraphicsContext *a2, int a3, uint64_t *a4)
{
  v6 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v6 = &unk_1F5D0B748;
  v7 = *a4;
  *(v6 + 31) = *a4;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  *(a1 + 256) = 0;
  *(a1 + 376) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 324) = 0u;
  return a1;
}

void re::StreamSourceTextureProvider::~StreamSourceTextureProvider(re::StreamSourceTextureProvider *this)
{
  *this = &unk_1F5D0B748;
  re::StreamSourceTextureProvider::doneWithSource(this);
  if (*(this + 84))
  {
    (*(**(this + 39) + 24))(*(this + 39));
    *(this + 84) = 0;
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 344);
  if (*(this + 256) == 1)
  {
    re::DynamicString::deinit((this + 264));
  }

  v2 = *(this + 31);
  if (v2)
  {

    *(this + 31) = 0;
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::StreamSourceTextureProvider::~StreamSourceTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::StreamSourceTextureProvider::doneWithSource(re::StreamSourceTextureProvider *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    CFRelease(v2);
    *(this + 37) = 0;
  }

  v3 = *(this + 38);
  if (v3)
  {
    v4 = re::globalAllocators(v2)[2];
    (**v3)(v3);
    (*(*v4 + 40))(v4, v3);
    *(this + 38) = 0;
    if (*(this + 84))
    {
      (*(**(this + 39) + 24))(*(this + 39));
      *(this + 84) = 0;
    }

    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 41) = 0;
  }

  v5 = *(this + 22);
  if (v5)
  {
    (*(v5 + 16))();
    v6 = *(this + 22);
    *(this + 22) = 0;
  }
}

void re::StreamSourceTextureProvider::lazyCreateCachedData(re::StreamSourceTextureProvider *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(this + 37) && (*(this + 256) & 1) == 0)
  {
    v2 = *(this + 31);
    if (v2)
    {
      v3 = re::globalAllocators(this)[2];
      v15[0] = &unk_1F5D0B898;
      v15[1] = this;
      v15[3] = v3;
      v15[4] = v15;
      (*(*v2 + 48))(&v10, v2, v15);
      re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v15);
      if (v10)
      {
        if (*(this + 38) && re::SeekableInputStreamBufferedReader::readNext((this + 312), 0xFFFFFFFFFFFFFFFFLL))
        {
          *(this + 37) = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(this + 40), *(this + 41), *MEMORY[0x1E695E498]);
LABEL_34:
          if ((v10 & 1) == 0)
          {
          }

          return;
        }

        if (*(this + 16))
        {
          v5 = *(this + 3);
        }

        else
        {
          v5 = this + 17;
        }

        re::DynamicString::format("Failed to read source texture data for '%s'", &v12, v5);
      }

      else
      {
        if (*(this + 16))
        {
          v4 = *(this + 3);
        }

        else
        {
          v4 = this + 17;
        }

        v6 = re::WrappedError::localizedDescription(&v11);
        v7 = re::DynamicString::format("Failed to read source texture data for '%s': %s", &v12, v4, v6);
        v8 = *re::pipelineLogObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          if (v13)
          {
            v9 = *&v14[7];
          }

          else
          {
            v9 = v14;
          }

          *buf = 136315138;
          *v17 = v9;
          _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        }
      }

      buf[0] = 1;
      re::DynamicString::DynamicString(&v17[4], &v12);
      re::Optional<re::DynamicString>::operator=(this + 256, buf);
      if (buf[0] == 1 && *&v17[4] && (v18 & 1) != 0)
      {
        (*(**&v17[4] + 40))();
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      goto LABEL_34;
    }

    buf[0] = 1;
    re::DynamicString::DynamicString(&v17[4], &v12);
    re::Optional<re::DynamicString>::operator=(this + 256, buf);
    if (buf[0] == 1 && *&v17[4] && (v18 & 1) != 0)
    {
      (*(**&v17[4] + 40))(*&v17[4], v19);
    }

    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }
  }
}

const void *re::StreamSourceTextureProvider::tryCreateRawImageData(re::StreamSourceTextureProvider *this)
{
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  result = *(this + 37);
  if (result)
  {
    CFRetain(result);
    return *(this + 37);
  }

  return result;
}

const __CFData *re::StreamSourceTextureProvider::tryCreateImageSource(re::StreamSourceTextureProvider *this, const __CFDictionary *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  result = *(this + 37);
  if (result)
  {
    result = CGImageSourceCreateWithData(result, a2);
    if (!result)
    {
      v5 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 16))
        {
          v6 = *(this + 3);
        }

        else
        {
          v6 = this + 17;
        }

        v7 = 136315138;
        v8 = v6;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture data '%s'", &v7, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

void *re::StreamSourceTextureProvider::tryReadHeaderBytes@<X0>(const __CFData **this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  if (*(this + 256) == 1)
  {
    result = re::DynamicString::DynamicString(&v12, (this + 33));
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 32) = v14;
    *(a4 + 16) = v13;
  }

  else
  {
    v9 = this[37];
    Length = CFDataGetLength(v9);
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(v9);
    result = memcpy(a2, BytePtr, a3);
    *a4 = 1;
    *(a4 + 8) = a3;
  }

  return result;
}

void *re::StreamSourceTextureProvider::tryCreateInputStreamSource@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[31];
  if (v3)
  {
    this = (v3 + 8);
  }

  *a2 = 1;
  *(a2 + 8) = v3;
  return this;
}

uint64_t re::CGImageTextureProvider::tryCreateOrDetachImage(re::CGImageTextureProvider *this)
{
  v1 = *(this + 31);
  *(this + 31) = 0;
  return v1;
}

uint64_t re::CGImageArrayTextureProvider::tryGetTextureTypeForImageArray@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 4) = *(this + 244);
  return this;
}

void re::USKTextureProvider::~USKTextureProvider(re::USKTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::FileTextureProvider::~FileTextureProvider(re::FileTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::CGImageSourceArrayTextureProvider::~CGImageSourceArrayTextureProvider(re::CGImageSourceArrayTextureProvider *this)
{
  *this = &unk_1F5D0B548;
  re::DynamicArray<re::ImageSourceAndIndex>::deinit(this + 248);

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5D0B548;
  re::DynamicArray<re::ImageSourceAndIndex>::deinit(this + 248);
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::CGImageSourceArrayTextureProvider::tryGetImageSourceAndIndexArray(re::CGImageSourceArrayTextureProvider *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  *a2 = 1;
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(this + 31);
  if (v4)
  {
    v6 = *(this + 33);
    *(a2 + 8) = v4;
    re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v3, v6);
    ++*(a2 + 32);
    v7 = *(this + 33);
    v8 = *(a2 + 24);
    if (v7 >= v8)
    {
      re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v3, *(this + 33));
      v15 = *(this + 35);
      v16 = *(a2 + 24);
      v17 = *(a2 + 40);
      if (v16)
      {
        v18 = 16 * v16;
        do
        {
          v19 = re::ImageSourceAndIndex::operator=(v17, v15);
          v15 += 16;
          v17 = v19 + 16;
          v18 -= 16;
        }

        while (v18);
        v17 = *(a2 + 40);
        v16 = *(a2 + 24);
        v15 = *(this + 35);
      }

      if (v16 != v7)
      {
        v20 = v15 + 16 * v7;
        v21 = v15 + 16 * v16;
        v22 = (v17 + 16 * v16);
        do
        {
          v23 = *v21;
          v24 = *(v21 + 8);
          *v22 = *v21;
          v22[1] = v24;
          if (v23)
          {
            CFRetain(v23);
          }

          v21 += 16;
          v22 += 2;
        }

        while (v21 != v20);
      }
    }

    else
    {
      v9 = *(a2 + 40);
      if (v7)
      {
        v10 = *(this + 35);
        v11 = 16 * v7;
        do
        {
          v12 = re::ImageSourceAndIndex::operator=(v9, v10);
          v10 += 16;
          v9 = v12 + 16;
          v11 -= 16;
        }

        while (v11);
        v9 = *(a2 + 40);
        v8 = *(a2 + 24);
      }

      if (v7 != v8)
      {
        v13 = (v9 + 16 * v7);
        v14 = 16 * v8 - 16 * v7;
        do
        {
          if (*v13)
          {
            CFRelease(*v13);
          }

          v13 += 2;
          v14 -= 16;
        }

        while (v14);
      }
    }

    *(a2 + 24) = v7;
  }
}

uint64_t re::CGImageSourceArrayTextureProvider::tryGetTextureTypeForImageArray@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 4) = *(this + 244);
  return this;
}

uint64_t re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 8);
  result = (*(*a2 + 72))(a2);
  *(v4 + 304) = result;
  *(v4 + 312) = result;
  *a3 = 1;
  return result;
}

void *re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0B898;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0B898;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0B8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    Length = CFDataGetLength(v2);
    if (Length < v5)
    {
      v5 = Length;
    }

    BytePtr = CFDataGetBytePtr(v3);
    memcpy(v4, BytePtr, v5);
    **(a1 + 16) = v5;

    CFRelease(v3);
  }
}

uint64_t std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0B970;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (*(v2 + 256))
  {
    v3 = *(v2 + 264);
  }

  else
  {
    v3 = v2 + 257;
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v3 isDirectory:0 relativeToURL:0];
  v5 = CGImageSourceCreateWithURL(v4, *(a1 + 16));
  **(a1 + 24) = v5;
  if (!**(a1 + 24))
  {
    v6 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 256))
      {
        v7 = *(v2 + 264);
      }

      else
      {
        v7 = v2 + 257;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture resource '%s'", &v8, 0xCu);
    }
  }
}

uint64_t std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::ImageSourceAndIndex>::deinit(uint64_t a1)
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
        do
        {
          if (*v3)
          {
            CFRelease(*v3);
          }

          v3 += 2;
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

void *re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
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
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = v12[1];
          *v11 = *v12;
          v11[1] = v13;
          v11 += 2;
          *v12 = 0;
          v12 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

void re::internal::createGeomMeshFromUSKNode(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v31 = 0x7FFFFFFFLL;
  *v18 = 0uLL;
  re::makeGeomModelDescriptorFromUSKNode(v11, a2, v29, a3, a4, a5, v18, 0, v26);
  if (v26[0] != 1)
  {
    *v18 = v27;
    re::DynamicString::DynamicString(&v18[16], &v28);
    *a6 = 0;
    *(a6 + 8) = *v18;
    *(a6 + 24) = *&v18[16];
    *(a6 + 48) = v20;
    *(a6 + 32) = v19;
LABEL_20:
    re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(v26);
    re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v29);

    return;
  }

  re::makeGeomMeshFromModelDescriptor(&v27, v18);
  if (v18[0] == 1)
  {
    re::GeomMesh::GeomMesh(&v14, &v18[8]);
    *a6 = 1;
    re::GeomMesh::GeomMesh(a6 + 8, &v14);
    re::GeomMesh::~GeomMesh(&v14);
  }

  else
  {
    v14 = *&v18[8];
    re::DynamicString::DynamicString(&v15, &v19);
    *a6 = 0;
    *(a6 + 8) = v14;
    *(a6 + 24) = v15;
    *(a6 + 48) = v17;
    *(a6 + 32) = v16;
  }

  if (v18[0] != 1)
  {
    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    goto LABEL_20;
  }

  v13 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v25);
  switch(v21)
  {
    case 2:
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v22);
      goto LABEL_19;
    case 1:
      if (v22[0])
      {
        if (v24)
        {
          (*(*v22[0] + 40))(v13);
        }

        v24 = 0;
        memset(v22, 0, sizeof(v22));
        ++v23;
      }

      goto LABEL_19;
    case 0:
      LODWORD(v22[0]) = 0;
LABEL_19:
      re::GeomMesh::~GeomMesh(&v18[8]);
      goto LABEL_20;
  }

  re::internal::assertLog(4, v12, v13, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}

void re::internal::createGeomModelFromUSKNode(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v99 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v73 = 0x7FFFFFFFLL;
  v10 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v9];
  v47 = a4;
  if ([v10 count])
  {
    v44 = a5;
    memset(v48, 0, sizeof(v48));
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:v48 objects:v78 count:16];
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12;
    v42 = v9;
    v43 = v10;
    v41 = a6;
    v14 = **&v48[1];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (**&v48[1] != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v48[0] + 1) + 8 * i) inheritedMaterialBinding];
        if (v16)
        {
          v75 = 0;
          v77 = 0;
          re::ObjCObject::operator=(&v75, v16);
          v76 = HIDWORD(v71);
          v77 = 0;
          v17 = [v16 path];
          v18 = [v17 stringValue];
          v19 = [v18 UTF8String];
          LOBYTE(v67) = 0;
          re::DynamicString::DynamicString(&v68, v74);
          re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v70, &v67, &v75);
          if (v68)
          {
            if (BYTE8(v68))
            {
              (*(*v68 + 40))();
            }

            v69[0] = 0u;
            v68 = 0u;
          }

          if (*&v74[0])
          {
            if (BYTE8(v74[0]))
            {
              (*(**&v74[0] + 40))();
            }

            memset(v74, 0, sizeof(v74));
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:v48 objects:v78 count:16];
    }

    while (v13);
    a6 = v41;
    v9 = v42;
    a5 = v44;
  }

  else
  {
    v11 = [v9 inheritedMaterialBinding];
    if (!v11)
    {
      goto LABEL_31;
    }

    v43 = v10;
    v67 = 0;
    BYTE4(v68) = 0;
    re::ObjCObject::operator=(&v67, v11);
    LODWORD(v68) = HIDWORD(v71);
    BYTE4(v68) = 0;
    v20 = [v11 path];
    v21 = [v20 stringValue];
    v22 = [v21 UTF8String];
    v78[0] = 0;
    re::DynamicString::DynamicString(&v78[8], v48);
    re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v70, v78, &v67);
    if (*&v78[8])
    {
      if (v78[16])
      {
        (*(**&v78[8] + 40))();
      }

      memset(&v78[8], 0, 32);
    }

    if (*&v48[0])
    {
      if (BYTE8(v48[0]))
      {
        (*(**&v48[0] + 40))();
      }

      memset(v48, 0, 32);
    }
  }

  v10 = v43;
LABEL_31:

  *v78 = 0uLL;
  re::makeGeomModelDescriptorFromUSKNode(v9, a2, &v70, a3, v47, a5, v78, 0, &v67);
  if (v67 == 1)
  {
    re::makeGeomModelFromModelDescriptor(&v68, v78);
    v23 = &v78[8];
    if (v78[0] == 1)
    {
      v24 = *&v78[8];
      v25 = *&v78[16];
      memset(&v78[8], 0, 40);
      v26 = *&v78[24];
      v27 = *&v78[32];
      *(&v48[1] + 8) = *&v78[32];
      *&v48[0] = v24;
      *(v48 + 8) = *&v78[16];
      v28 = *&v78[40];
      v30 = *(&v79 + 1);
      v29 = v79;
      *(&v48[2] + 8) = v79;
      v79 = 0u;
      DWORD2(v48[3]) = 1;
      v31 = v81;
      v49 = v81;
      v81 = 0u;
      v32 = v82;
      v50 = v82;
      v82 = 0u;
      v33 = v84;
      v52 = v84;
      v84 = 0;
      ++v80;
      ++v83;
      v51 = 1;
      v34 = v85;
      v53 = v85;
      if (v85 == 1)
      {
        v54 = v86;
        v55 = v87;
        v86 = 0;
        v87 = 0uLL;
        v57 = v89;
        v89 = 0;
        ++v88;
        v56 = 1;
      }

      v35 = v90;
      v58 = v90;
      if (v90 == 1)
      {
        v59 = v91;
        v60 = v92;
        v91 = 0;
        v92 = 0uLL;
        v62 = v94;
        v94 = 0;
        ++v93;
        v61 = 1;
      }

      v36 = v95;
      v37 = v96;
      v95 = 0;
      v38 = *(&v96 + 1);
      v64 = v96;
      v96 = 0u;
      v39 = v98;
      v66 = v98;
      v98 = 0;
      ++v97;
      v65 = 1;
      *a6 = 1;
      *(a6 + 24) = v26;
      *(a6 + 32) = v27;
      v48[1] = 0uLL;
      *(a6 + 8) = v24;
      *(a6 + 16) = v25;
      v48[0] = 0uLL;
      *&v48[2] = 0;
      *(a6 + 40) = v28;
      *(a6 + 48) = v29;
      *(a6 + 56) = v30;
      *(&v48[2] + 8) = 0u;
      DWORD2(v48[3]) = 2;
      *(a6 + 64) = 1;
      *(a6 + 72) = v31;
      *(a6 + 88) = v32;
      v49 = 0u;
      v50 = 0u;
      *(a6 + 112) = v33;
      v63 = v36;
      v52 = 0;
      v51 = 2;
      *(a6 + 104) = 1;
      *(a6 + 120) = v34;
      if (v34)
      {
        *(a6 + 128) = v54;
        *(a6 + 136) = v55;
        v54 = 0;
        v55 = 0uLL;
        *(a6 + 160) = v57;
        v57 = 0;
        ++v56;
        *(a6 + 152) = 1;
      }

      *(a6 + 168) = v35;
      if (v35)
      {
        *(a6 + 176) = v59;
        *(a6 + 184) = v60;
        v59 = 0;
        v60 = 0uLL;
        *(a6 + 208) = v62;
        v62 = 0;
        ++v61;
        *(a6 + 200) = 1;
      }

      *(a6 + 216) = v36;
      *(a6 + 224) = v37;
      *(a6 + 232) = v38;
      v64 = 0uLL;
      v63 = 0;
      *(a6 + 248) = v39;
      v66 = 0;
      v65 = 2;
      *(a6 + 240) = 1;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v63);
      if (v58 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v59);
      }

      if (v53 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v54);
      }

      if (*(&v49 + 1))
      {
        if (v52)
        {
          (*(**(&v49 + 1) + 40))();
        }

        v52 = 0;
        v50 = 0uLL;
        *(&v49 + 1) = 0;
        ++v51;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v48[2]);
      if (*&v48[0] && (BYTE8(v48[0]) & 1) != 0)
      {
        (*(**&v48[0] + 40))();
      }
    }

    else
    {
      v48[0] = *&v78[8];
      re::DynamicString::DynamicString(&v48[1], &v78[24]);
      *a6 = 0;
      *(a6 + 8) = v48[0];
      *(a6 + 24) = *&v48[1];
      *(a6 + 48) = *(&v48[2] + 1);
      *(a6 + 32) = *(&v48[1] + 8);
    }

    if (v78[0] == 1)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v95);
      if (v90 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v91);
      }

      if (v85 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v86);
      }

      if (*(&v81 + 1))
      {
        if (v84)
        {
          (*(**(&v81 + 1) + 40))();
        }

        v84 = 0;
        v82 = 0uLL;
        *(&v81 + 1) = 0;
        ++v83;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v78[40]);
    }

    else
    {
      v23 = &v78[24];
    }

    re::DynamicString::deinit(v23);
  }

  else
  {
    *v78 = v68;
    re::DynamicString::DynamicString(&v78[16], v69);
    *a6 = 0;
    *(a6 + 8) = *v78;
    v40 = *&v78[40];
    *(a6 + 24) = *&v78[16];
    *(a6 + 48) = v40;
    *(a6 + 32) = *&v78[24];
  }

  re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(&v70);
}

double re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 96 * v8;
            re::DynamicArray<unsigned long>::deinit(v9 + 56);
            re::FixedArray<CoreIKTransform>::deinit((v9 + 32));
            re::FixedArray<CoreIKTransform>::deinit((v9 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
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

void re::importVertexCacheAnimationFromUSKNode(void *a1@<X0>, float32x2_t *a2@<X1>, unint64_t a3@<X8>, double a4@<D0>)
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = [v6 property:@"points"];
  v8 = [v6 property:@"faceVertexIndices"];
  v9 = v8;
  if (!v7 || !v8 || ([v7 isAnimated] & 1) == 0)
  {
    *a3 = 1;
    goto LABEL_109;
  }

  v10 = &v114;
  v11 = [v7 timeSamples];
  v12 = v11;
  if (!v11)
  {
    v35 = v114;
    v36 = v115;
    *a3 = 0;
    *(a3 + 8) = 1024;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v35;
    *(a3 + 40) = v36;
    goto LABEL_108;
  }

  v99 = v9;
  v13 = [v11 dataNoCopy];
  v14 = [v13 bytes];
  v15 = [v12 arraySize];

  if (!v15)
  {
LABEL_127:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
    _os_crash();
    __break(1u);
LABEL_128:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v10, v15);
    _os_crash();
    __break(1u);
LABEL_129:
    re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
    _os_crash();
    __break(1u);
    goto LABEL_130;
  }

  v17 = [v7 arraySizeAtTime:*v14];
  v114 = 0uLL;
  *&v115 = 0;
  memset(v111, 0, 24);
  v19 = 1;
  if (v15 != 1)
  {
    while (v17 == [v7 float3Array:*&v111[16] maxCount:v17 atTime:v14[v19]] && *(&v114 + 1) == *&v111[8])
    {
      if (*(&v114 + 1))
      {
        v31 = v115;
        v32 = *&v111[16];
        v33 = 16 * *(&v114 + 1);
        do
        {
          v34 = vceqq_f32(*v31, *v32);
          v34.i32[3] = v34.i32[2];
          if ((vminvq_u32(v34) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          ++v31;
          ++v32;
          v33 -= 16;
        }

        while (v33);
      }

      if (++v19 == v15)
      {
        v19 = v15;
        break;
      }
    }
  }

LABEL_7:
  v10 = v19 - 1;
  if (v15 < v10)
  {
    goto LABEL_128;
  }

  if (*v111 && *&v111[8])
  {
    (*(**v111 + 40))();
  }

  v20 = v114;
  if (v114 && *(&v114 + 1))
  {
    v20 = (*(*v114 + 40))(v114, v115);
  }

  v97 = a3;
  v98 = v12;
  if (v15 == v10)
  {
    goto LABEL_129;
  }

  v100 = v6;
  v95 = v15;
  v96 = &v14[v15];
  a3 = (*(v96 - 1) - v14[v10] + 1.5);
  v105 = 0;
  v106 = 0;
  v107 = 0;
  if (!a3)
  {
    a2[2] = 0;
    goto LABEL_36;
  }

  v22 = 0;
  v6 = v106;
  v23 = v107;
  do
  {
    if (v6 == v22)
    {
      *&v109 = 0;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v114 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v111 = 136315906;
      *&v111[4] = "operator[]";
      *&v111[12] = 1024;
      *&v111[14] = 468;
      *&v111[18] = 2048;
      *&v111[20] = v6;
      v112 = 2048;
      v113 = v6;
      _os_log_send_and_compose_impl();
      v73 = _os_crash_msg();
      __break(1u);
LABEL_112:
      re::DynamicString::format("Sampled index count does not matched for frame %zu: %zu != %zu", &v114, v10, v73, v12);
      v88 = v114;
      v89 = v115;
      *v97 = 0;
      *(v97 + 8) = 1025;
      *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(v97 + 24) = v88;
      *(v97 + 40) = v89;
      v6 = v100;
LABEL_116:
      v12 = v98;
      if (v102 && v103)
      {
        (*(*v102 + 40))();
      }

      if (v109 && *(&v109 + 1))
      {
        (*(*v109 + 40))();
      }

      goto LABEL_104;
    }

    v23[v22] = v14[v10] + v22;
    ++v22;
  }

  while (a3 != v22);
  a2[2] = a3;
  if (a3 >> 58)
  {
    goto LABEL_131;
  }

  a2[3] = v25;
  if (!v25)
  {
    goto LABEL_132;
  }

  v27 = a3 - 1;
  if (a3 != 1)
  {
    v28.i64[0] = 0x7F0000007FLL;
    v28.i64[1] = 0x7F0000007FLL;
    v29 = vnegq_f32(v28);
    do
    {
      *v25 = v29;
      *(v25 + 16) = v28;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 32) = 0;
      v25 += 64;
      --v27;
    }

    while (v27);
  }

  v30.i64[0] = 0x7F0000007FLL;
  v30.i64[1] = 0x7F0000007FLL;
  *v25 = vnegq_f32(v30);
  *(v25 + 16) = v30;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 32) = 0;
LABEL_36:
  if (!v106)
  {
LABEL_130:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 440);
    _os_crash();
    __break(1u);
LABEL_131:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, a3);
    _os_crash();
    __break(1u);
LABEL_132:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_133:
    v102 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_134:
    v102 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v108 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_136:
    v108 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_137:
    re::internal::assertLog(4, v69, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
    _os_crash();
    __break(1u);
    goto LABEL_138;
  }

  v37.f64[0] = *v107;
  v37.f64[1] = v107[v106 - 1];
  *a2 = vcvt_f32_f64(vmulq_n_f64(v37, a4));
  if (!a3)
  {
LABEL_45:
    v6 = v100;
    v41 = [v100 property:@"extent"];
    v17 = v41;
    if (v41 && [(_anonymous_namespace_ *)v41 isAnimated])
    {
      v42 = v17;
      v43 = [(_anonymous_namespace_ *)v17 timeSamples];
      v44 = [v43 dataNoCopy];
      v45 = [v44 bytes];
      v46 = [v43 arraySize];

      if (!v46)
      {
LABEL_138:
        re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
        _os_crash();
        __break(1u);
        goto LABEL_139;
      }

      v48 = v43;
      if ((*v14 == *v45 || vabdd_f64(*v14, *v45) < (fabs(*v14) + fabs(*v45) + 1.0) * 1.0e-12) && ((v49 = *(v96 - 1), v50 = v45[v46 - 1], v49 == v50) || vabdd_f64(v49, v50) < (fabs(v49) + fabs(v50) + 1.0) * 1.0e-12))
      {
        v51 = v107;
        re::FixedArray<double>::operator[](v106);
        v17 = v42;
        if ([(_anonymous_namespace_ *)v42 arraySizeAtTime:*v51]== 2)
        {
          v9 = v99;
          if (a3)
          {
            v52 = 0;
            v10 = 0;
            while (1)
            {
              v6 = v106;
              if (v106 <= v10)
              {
                goto LABEL_133;
              }

              v53 = [(_anonymous_namespace_ *)v17 float3Array:&v109 maxCount:2 atTime:v107[v10]];
              if (v53 != 2)
              {
                break;
              }

              v6 = a2[2];
              if (v6 <= v10)
              {
                goto LABEL_134;
              }

              v54 = *__s1;
              v55 = (*&a2[3] + v52);
              *v55 = v109;
              v55[1] = v54;
              ++v10;
              v52 += 64;
              if (a3 == v10)
              {
                goto LABEL_59;
              }
            }

            re::DynamicString::format("Expected exactly 2 float3 values for extent frame %zu, received: %zu", &v114, v10, v53);
            v86 = v114;
            v87 = v115;
            *v97 = 0;
            *(v97 + 8) = 1025;
            *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(v97 + 24) = v86;
            *(v97 + 40) = v87;

            v6 = v100;
            goto LABEL_103;
          }

LABEL_59:

          v6 = v100;
LABEL_67:
          if (![v9 isAnimated])
          {
LABEL_91:
            *v97 = 1;
LABEL_103:
            v12 = v98;
            goto LABEL_104;
          }

          v65 = v17;
          a2 = [v9 timeSamples];
          v66 = [(float32x2_t *)a2 dataNoCopy];
          v67 = [v66 bytes];
          v68 = [(float32x2_t *)a2 arraySize];

          if (v68)
          {
            if (*v14 != *v67 && vabdd_f64(*v14, *v67) >= (fabs(*v14) + fabs(*v67) + 1.0) * 1.0e-12 || (v70 = *(v96 - 1), v71 = v67[v68 - 1], v70 != v71) && vabdd_f64(v70, v71) >= (fabs(v70) + fabs(v71) + 1.0) * 1.0e-12)
            {
              re::DynamicString::format("Point and Index sample sizes do not match: %zu != %zu", &v114, v95, v68);
              v77 = v114;
              v78 = v115;
              *v97 = 0;
              *(v97 + 8) = 1025;
              *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
              *(v97 + 24) = v77;
              *(v97 + 40) = v78;

              v12 = v98;
              v9 = v99;
              v17 = v65;
LABEL_104:

              goto LABEL_105;
            }

            if (v106)
            {
              v9 = v99;
              v12 = [v99 arraySizeAtTime:*v107];
              v109 = 0uLL;
              __s1[0] = 0;
              if (v106)
              {
                v72 = [v99 intArray:__s1[0] maxCount:v12 atTime:*v107];
                v17 = v65;
                if (v72 != v12)
                {
                  re::DynamicString::format("Read indices does not match expected count: %zu != %zu", &v114, v72, v12);
                  v79 = v114;
                  v80 = v115;
                  *v97 = 0;
                  *(v97 + 8) = 1025;
                  *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v97 + 24) = v79;
                  *(v97 + 40) = v80;
                  if (v109 && *(&v109 + 1))
                  {
                    (*(*v109 + 40))();
                  }

                  goto LABEL_103;
                }

                v102 = 0;
                v103 = 0;
                __s2 = 0;
                if (a3 >= 2)
                {
                  v10 = 1;
                  while (1)
                  {
                    v6 = v106;
                    if (v106 <= v10)
                    {
                      goto LABEL_135;
                    }

                    v73 = [v99 arraySizeAtTime:v107[v10]];
                    if (v73 != v12)
                    {
                      goto LABEL_112;
                    }

                    v6 = v106;
                    if (v106 <= v10)
                    {
                      goto LABEL_136;
                    }

                    v74 = [v99 intArray:__s2 maxCount:v12 atTime:v107[v10]];
                    v6 = v100;
                    if (v74 != v12)
                    {
                      re::DynamicString::format("Read indices does not match expected count for frame %zu: %zu != %zu", &v114, v10, v74, v12);
                      v90 = v114;
                      v92 = *(&v115 + 1);
                      v91 = v115;
                      v93 = v97;
                      *v97 = 0;
                      v94 = 1025;
                      goto LABEL_115;
                    }

                    if (memcmp(__s1[0], __s2, 4 * v12))
                    {
                      break;
                    }

                    if (a3 == ++v10)
                    {
                      goto LABEL_84;
                    }
                  }

                  re::DynamicString::format("Invalid topological change, index buffer does not match for frame %zu", &v114, v10);
                  v90 = v114;
                  v92 = *(&v115 + 1);
                  v91 = v115;
                  v93 = v97;
                  *v97 = 0;
                  v94 = 1033;
LABEL_115:
                  *(v93 + 8) = v94;
                  *(v93 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v93 + 24) = v90;
                  *(v93 + 40) = v91;
                  *(v93 + 48) = v92;
                  goto LABEL_116;
                }

LABEL_84:
                if (v102 && v103)
                {
                  (*(*v102 + 40))();
                }

                if (v109 && *(&v109 + 1))
                {
                  (*(*v109 + 40))();
                }

                goto LABEL_91;
              }

LABEL_140:
              v102 = 0;
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v114 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v111 = 136315906;
              *&v111[4] = "operator[]";
              *&v111[12] = 1024;
              *&v111[14] = 468;
              *&v111[18] = 2048;
              *&v111[20] = 0;
              v112 = 2048;
              v113 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

LABEL_139:
            *&v109 = 0;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v111 = 136315906;
            *&v111[4] = "operator[]";
            *&v111[12] = 1024;
            *&v111[14] = 468;
            *&v111[18] = 2048;
            *&v111[20] = 0;
            v112 = 2048;
            v113 = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_140;
          }

          goto LABEL_137;
        }

        v83 = v107;
        re::FixedArray<double>::operator[](v106);
        re::DynamicString::format("Expected exactly 2 float3 values for extent property, received: %zu", &v114, [(_anonymous_namespace_ *)v42 arraySizeAtTime:*v83]);
        v84 = v114;
        v85 = v115;
        *v97 = 0;
        *(v97 + 8) = 1025;
        *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v97 + 24) = v84;
        *(v97 + 40) = v85;
        v9 = v99;
      }

      else
      {
        re::DynamicString::format("Point and Extent sample sizes do not match: %zu != %zu", &v114, v95, v46);
        v81 = v114;
        v82 = v115;
        *v97 = 0;
        *(v97 + 8) = 1025;
        *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v97 + 24) = v81;
        *(v97 + 40) = v82;
        v9 = v99;
        v17 = v42;
      }

      goto LABEL_103;
    }

    v9 = v99;
    if (!a3)
    {
      goto LABEL_67;
    }

    v10 = 0;
    while (1)
    {
      v56 = a2[2];
      if (v56 <= v10)
      {
        break;
      }

      v57 = (*&a2[3] + (v10 << 6));
      v58 = v57[2].i64[1];
      if (v58)
      {
        v59 = v57[3].i64[0];
        v60 = 16 * v58;
        v61 = *v57;
        v62 = v57[1];
        do
        {
          v63 = *v59++;
          v64 = v63;
          v61.i32[3] = 0;
          v64.i32[3] = 0;
          v61 = vminnmq_f32(v61, v64);
          v62.i32[3] = 0;
          v62 = vmaxnmq_f32(v62, v64);
          *v57 = v61;
          v57[1] = v62;
          v60 -= 16;
        }

        while (v60);
      }

      if (++v10 == a3)
      {
        goto LABEL_67;
      }
    }

    *&v109 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v56;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_124:
    *&v109 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_125:
    *&v109 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_126:
    *&v109 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v111 = 136315906;
    *&v111[4] = "operator[]";
    *&v111[12] = 1024;
    *&v111[14] = 468;
    *&v111[18] = 2048;
    *&v111[20] = v10;
    v112 = 2048;
    v113 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

  v10 = 0;
  v6 = 48;
  while (1)
  {
    v12 = v106;
    if (v106 <= v10)
    {
      goto LABEL_124;
    }

    v38 = [v7 arraySizeAtTime:v107[v10]];
    if (v38 != v17)
    {
      re::DynamicString::format("Sampled vertex count does not matched for frame %zu: %zu != %zu", &v114, v10, v38, v17);
      goto LABEL_94;
    }

    v12 = a2[2];
    if (v12 <= v10)
    {
      goto LABEL_125;
    }

    v39 = a2[3];
    v12 = v106;
    if (v106 <= v10)
    {
      goto LABEL_126;
    }

    v40 = [v7 float3Array:*(*&v39 + v6) maxCount:v17 atTime:v107[v10]];
    if (v40 != v17)
    {
      break;
    }

    ++v10;
    v6 += 64;
    if (a3 == v10)
    {
      goto LABEL_45;
    }
  }

  re::DynamicString::format("Read vertices does not match expected count for frame %zu: %zu != %zu", &v114, v10, v40, v17);
LABEL_94:
  v75 = v114;
  v76 = v115;
  v12 = v98;
  *v97 = 0;
  *(v97 + 8) = 1025;
  *(v97 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(v97 + 24) = v75;
  *(v97 + 40) = v76;
  v9 = v99;
  v6 = v100;
LABEL_105:
  if (v105 && v106)
  {
    (*(*v105 + 40))();
  }

LABEL_108:

LABEL_109:
}

uint64_t re::FixedArray<double>::operator[](uint64_t result)
{
  if (!result)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

BOOL re::isCatmullClarkSurface(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = *MEMORY[0x1E69DEE70];

  v4 = 0;
  if (v2 == v3)
  {
    v5 = [v1 property:@"subdivisionScheme"];
    if (!v5 || (v6 = v5, [v5 tokenValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stringValue"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"catmullClark"), v8, v7, v6, (v9 & 1) != 0))
    {
      v4 = 1;
    }
  }

  return v4;
}

BOOL re::convertMDLAssetToGeomScene(const char *a1, uint64_t a2, _BYTE *a3)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v21, 4504, 0);
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v8 = a3[1];
  v9 = objc_alloc(MEMORY[0x1E6974B48]);
  if (v8)
  {
    v19 = 0;
    v10 = &v19;
    v11 = [v9 initWithURL:v7 bufferAllocator:0 preserveIndexing:1 error:&v19];
  }

  else
  {
    v20 = 0;
    v10 = &v20;
    v11 = [v9 initWithURL:v7 vertexDescriptor:0 bufferAllocator:0 preserveTopology:0 error:&v20];
  }

  v12 = v11;
  v13 = *v10;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 localizedDescription];
    NSLog(&cfstr_Modelconverter.isa, [v15 UTF8String]);
  }

  else
  {
    v15 = v12;
    v18 = v15;
    v56 = 0;
    v53 = 0;
    memset(v54, 0, sizeof(v54));
    v55 = 0;
    v50 = 0;
    memset(v51, 0, sizeof(v51));
    v52 = 0;
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    v32 = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    memset(v35, 0, sizeof(v35));
    v36 = 0x7FFFFFFFLL;
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    v39 = 0x7FFFFFFFLL;
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v42 = 0x7FFFFFFFLL;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v24 = 0x7FFFFFFFLL;
    re::convertMDLAssetToGeomSceneAndImportAnimation(&v18, a1, a2, v22, v54, v51, v48, &v25, a3, 0);
    v16 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v22);
    if (v43)
    {
      if (v47)
      {
        (*(*v43 + 40))(v16);
      }

      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      ++v46;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v40);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v37);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v35[8]);
    re::DynamicArray<re::DynamicString>::deinit(v33 + 8);
    re::DynamicArray<re::DynamicString>::deinit(&v31[1]);
    if (*(&v28 + 1))
    {
      if (v31[0])
      {
        (*(**(&v28 + 1) + 40))();
      }

      v31[0] = 0;
      v29 = 0uLL;
      *(&v28 + 1) = 0;
      ++v30;
    }

    re::DynamicArray<re::DynamicString>::deinit(&v25);
    re::DynamicArray<re::SkeletalPoseSampledAnimation>::deinit(v48);
    re::DynamicArray<re::ModelIOSkinningData>::deinit(v51);
    re::DynamicArray<re::ModelIOSkeleton>::deinit(v54);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v21);
  return v14 == 0;
}

uint64_t re::convertMDLAssetToGeomSceneAndImportAnimation(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, _BYTE *a9, CFErrorRef *a10)
{
  v162.i64[0] = a6;
  v164.i64[0] = a5;
  v265 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 16);
  *(a3 + 16) = 0;
  if (v15)
  {
    v16 = *(a3 + 32);
    v17 = 152 * v15;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v16 + 112);
      re::DynamicArray<unsigned long>::deinit(v16 + 72);
      re::DynamicArray<re::GeomModel>::deinit(v16 + 32);
      re::DynamicString::deinit(v16);
      v16 = (v16 + 152);
      v17 -= 152;
    }

    while (v17);
  }

  ++*(a3 + 24);
  *(a3 + 56) = 0;
  ++*(a3 + 64);
  v18 = *(a3 + 96);
  *(a3 + 96) = 0;
  if (v18)
  {
    v19 = 0;
    v20 = *(a3 + 112);
    v21 = 160 * v18;
    do
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v20 + v19 + 112));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 88));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 64));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 40));
      re::FixedArray<re::StringID>::deinit((v20 + v19 + 16));
      re::StringID::destroyString((v20 + v19));
      v19 += 160;
    }

    while (v21 != v19);
  }

  ++*(a3 + 104);
  v22 = *a1;
  v193 = 0;
  memset(v191, 0, sizeof(v191));
  v192 = 0;
  v182[0] = 1;
  re::importSkinningAndSkeletalAnimations(v22, v164.i64[0], v162.i64[0], a7, a8, &v237);
  v24 = re::Result<re::Unit,re::DetailedError>::operator=(v182, &v237);
  if ((v237 & 1) == 0)
  {
    v24 = *(&v238 + 1);
    if (*(&v238 + 1))
    {
      if (v239)
      {
        v24 = (*(**(&v238 + 1) + 40))();
      }
    }
  }

  if ((v182[0] & 1) == 0)
  {
    v25 = *re::pipelineLogObjects(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v237, &v183);
      v26 = (SBYTE7(v238) & 0x80u) == 0 ? &v237 : v237;
      v27 = (v185 & 1) != 0 ? *&v186[7] : v186;
      *buf = 136315394;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Error: %s\nDetails:\n%s", buf, 0x16u);
      if (SBYTE7(v238) < 0)
      {
        operator delete(v237);
      }
    }

    if (a10)
    {
      *a10 = CFErrorCreate(0, @"REPipelineErrorDomain", 3, 0);
    }
  }

  v180 = 0;
  v178 = 0u;
  v179 = 0u;
  v181 = 0x7FFFFFFFLL;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v177 = 0x7FFFFFFFLL;
  *v222 = 0;
  memset(buf, 0, sizeof(buf));
  *&v222[4] = 0x7FFFFFFFLL;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v28 = v22;
  v29 = [(_anonymous_namespace_ *)v28 countByEnumeratingWithState:&v170 objects:v251 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v171;
    v166 = xmmword_1E30474D0;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v171 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v170 + 1) + 8 * i);
        v237 = xmmword_1E3047670;
        v238 = xmmword_1E3047680;
        v239 = xmmword_1E30476A0;
        v240 = xmmword_1E30474D0;
      }

      v30 = [(_anonymous_namespace_ *)v28 countByEnumeratingWithState:&v170 objects:v251 count:16];
    }

    while (v30);
  }

  if (!*&buf[28])
  {
    goto LABEL_79;
  }

  v34 = *v222;
  v169 = a3;
  if (*v222)
  {
    v35 = 0;
    v36 = *&buf[16];
    while (1)
    {
      v37 = *v36;
      v36 += 16;
      if (v37 < 0)
      {
        break;
      }

      if (*v222 == ++v35)
      {
        LODWORD(v35) = *v222;
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  v38 = *v222;
  if (v35 != *v222)
  {
    v39 = *&buf[16];
    do
    {
      v40 = *(v39 + (v35 << 6) + 8);
      *&v237 = v40;
      re::collectMeshMaterialsFromMDLMesh(&v237, a4, a9[4]);

      v38 = *v222;
      if (*v222 <= (v35 + 1))
      {
        v41 = v35 + 1;
      }

      else
      {
        v41 = *v222;
      }

      v39 = *&buf[16];
      while (v41 - 1 != v35)
      {
        LODWORD(v35) = v35 + 1;
        if ((*(*&buf[16] + (v35 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_48;
        }
      }

      LODWORD(v35) = v41;
LABEL_48:
      ;
    }

    while (v35 != v34);
  }

  if ((*a9 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v38)
  {
    v42 = 0;
    v43 = *&buf[16];
    while (1)
    {
      v44 = *v43;
      v43 += 16;
      if (v44 < 0)
      {
        break;
      }

      if (v38 == ++v42)
      {
        LODWORD(v42) = v38;
        break;
      }
    }
  }

  else
  {
    LODWORD(v42) = 0;
  }

  if (v42 != v38)
  {
    v46 = *&buf[16];
    do
    {
      v47 = *(v46 + (v42 << 6) + 8);
      v48 = [v47 vertexAttributeDataForAttributeNamed:@"textureCoordinate"];

      if (v48)
      {
        [v47 addTangentBasisForTextureCoordinateAttributeNamed:@"textureCoordinate" tangentAttributeNamed:@"tangent" bitangentAttributeNamed:@"bitangent"];
      }

      v45 = *v222;
      if (*v222 <= (v42 + 1))
      {
        v49 = v42 + 1;
      }

      else
      {
        v49 = *v222;
      }

      v46 = *&buf[16];
      while (v49 - 1 != v42)
      {
        LODWORD(v42) = v42 + 1;
        if ((*(*&buf[16] + (v42 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }
      }

      LODWORD(v42) = v49;
LABEL_70:
      ;
    }

    while (v42 != v38);
  }

  else
  {
LABEL_58:
    v45 = v38;
  }

  if (v45)
  {
    v50 = 0;
    v51 = *&buf[16];
    while (1)
    {
      v52 = *v51;
      v51 += 16;
      if (v52 < 0)
      {
        break;
      }

      if (v45 == ++v50)
      {
        LODWORD(v50) = v45;
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  if (v50 == v45)
  {
LABEL_79:
    goto LABEL_80;
  }

  v168 = a4;
  v54 = 0;
  v55 = 0;
  v56 = *&buf[16];
  do
  {
    v57 = v56 + (v50 << 6);
    v58 = *(v57 + 8);
    v60 = v58;
    if ((a9[2] & 1) != 0 || (v61 = *(v57 + 32), isSkinnedMesh = re::isSkinnedMesh(v58, v59), v56 = *&buf[16], isSkinnedMesh))
    {
      ++v54;
      v63 = &v174;
    }

    else
    {
      v55 += v61;
      v54 += v61;
      v63 = &v178;
    }

    v237 = 0uLL;
    *&v238 = 0;
    if (HIDWORD(v237) == 0x7FFFFFFF)
    {
      v64 = v56 + (v50 << 6);
      v66 = v60;
      *(v65 + 48) = 0;
      *(v65 + 40) = 0;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 8) = v66;
      *(v65 + 16) = 0;
      *(v65 + 16) = *(v64 + 16);
      *(v64 + 16) = 0;
      *(v65 + 24) = *(v64 + 24);
      *(v64 + 24) = 0;
      v67 = *(v65 + 32);
      *(v65 + 32) = *(v64 + 32);
      *(v64 + 32) = v67;
      v68 = *(v65 + 48);
      *(v65 + 48) = *(v64 + 48);
      *(v64 + 48) = v68;
      ++*(v64 + 40);
      ++*(v65 + 40);
      ++*(v63 + 10);
    }

    if (*v222 <= (v50 + 1))
    {
      v69 = v50 + 1;
    }

    else
    {
      v69 = *v222;
    }

    v56 = *&buf[16];
    while (v69 - 1 != v50)
    {
      LODWORD(v50) = v50 + 1;
      if ((*(*&buf[16] + (v50 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_106;
      }
    }

    LODWORD(v50) = v69;
LABEL_106:
    ;
  }

  while (v50 != v45);
  v70 = v169;
  if (!v54)
  {
    goto LABEL_80;
  }

  if (v169[1] < v54)
  {
    re::DynamicArray<re::GeomModelWithLods>::setCapacity(v169, v54);
  }

  if (v55 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v55;
  }

  if (v169[6] < v71)
  {
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v169 + 5, v71);
  }

  v72 = *(v164.i64[0] + 16);
  *&v237 = *(v164.i64[0] + 32);
  *(&v237 + 1) = v72;
  re::GeomScene::setSkeletons(v169, &v237);
  if (v176)
  {
    j = 0;
    v74 = v175;
    while (1)
    {
      v75 = *v74;
      v74 += 16;
      if (v75 < 0)
      {
        break;
      }

      if (v176 == ++j)
      {
        j = v176;
        break;
      }
    }
  }

  else
  {
    j = 0;
  }

  if (j != v176)
  {
    v76 = v175;
    *&v166 = v176;
    while (1)
    {
      v77 = v76 + (j << 6);
      v78 = *(v77 + 8);
      v79 = *(v70 + 4);
      v80 = v78;
      *buf = v80;

      re::GeomModelWithLods::GeomModelWithLods(buf);
      re::DynamicArray<re::GeomModel>::add(v222, &v237);
      v81.n128_f64[0] = re::DynamicArray<re::GeomModelWithLods>::add(v70, buf);
      v82 = *(v77 + 32);
      if (v82)
      {
        break;
      }

LABEL_137:
      if (v229)
      {
        if (v233)
        {
          (*(*v229 + 40))(v81);
        }

        v233 = 0;
        v230 = 0;
        v231 = 0;
        v229 = 0;
        ++v232;
      }

      if (v224)
      {
        if (v228)
        {
          (*(*v224 + 40))(v81);
        }

        v228 = 0;
        v225 = 0;
        v226 = 0;
        v224 = 0;
        ++v227;
      }

      re::DynamicArray<re::GeomModel>::deinit(v222);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v250);
      if (v248 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v249);
      }

      if (v246 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v247);
      }

      if (*(&v241 + 1))
      {
        if (v245)
        {
          (*(**(&v241 + 1) + 40))();
        }

        v245 = 0;
        v242 = 0;
        v243 = 0;
        *(&v241 + 1) = 0;
        ++v244;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v239);
      if (v237 && (BYTE8(v237) & 1) != 0)
      {
        (*(*v237 + 40))();
      }

      if (v166 <= j + 1)
      {
        v90 = (j + 1);
      }

      else
      {
        v90 = v166;
      }

      while (v90 - 1 != j)
      {
        j = (j + 1);
        if ((*(v76 + (j << 6)) & 0x80000000) != 0)
        {
          goto LABEL_166;
        }
      }

      j = v90;
LABEL_166:
      if (j == v166)
      {
        goto LABEL_167;
      }
    }

    v83 = 0;
    v84 = 80;
    while (1)
    {
      v85 = *(v77 + 32);
      if (v85 <= v83)
      {
        break;
      }

      v86 = (*(v77 + 48) + v84);
      v87 = *v86;
      v88 = v86[1];
      v89 = v86[3];
      v209 = v86[2];
      v210 = v89;
      v207 = v87;
      v208 = v88;
      LODWORD(v211) = v79;
      if ((*(&v87 + 3) == 0.0 || vabds_f32(0.0, *(&v207 + 3)) < ((fabsf(*(&v207 + 3)) + 1.0) * 0.00001)) && (*(&v208 + 3) == 0.0 || vabds_f32(0.0, *(&v208 + 3)) < ((fabsf(*(&v208 + 3)) + 1.0) * 0.00001)) && (*(&v209 + 3) == 0.0 || vabds_f32(0.0, *(&v209 + 3)) < ((fabsf(*(&v209 + 3)) + 1.0) * 0.00001)) && (*(&v89 + 3) == 1.0 || vabds_f32(1.0, *(&v89 + 3)) < (((fabsf(*(&v89 + 3)) + 1.0) + 1.0) * 0.00001)))
      {
        HIDWORD(v207) = 0;
        HIDWORD(v208) = 0;
        HIDWORD(v209) = 0;
        HIDWORD(v210) = 1065353216;
      }

      v70 = v169;
      v81 = re::DynamicArray<re::GeomInstance>::add((v169 + 5), &v207);
      ++v83;
      v84 += 144;
      if (v82 == v83)
      {
        goto LABEL_137;
      }
    }

LABEL_347:
    *&v260 = 0;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 797;
    *&v198[4] = 2048;
    *&v198[6] = v83;
    *&v198[14] = 2048;
    *&v198[16] = v85;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_348:
    v194 = 0;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v260 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 789;
    v256 = 2048;
    v257 = 0;
    v258 = 2048;
    v259 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_349:
    v194 = 0;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v260 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 789;
    v256 = 2048;
    v257 = v76;
    v258 = 2048;
    v259 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_350:
    v194 = 0;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v260 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 789;
    v256 = 2048;
    v257 = v76;
    v258 = 2048;
    v259 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_351:
    v194 = 0;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v260 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 789;
    v256 = 2048;
    v257 = j;
    v258 = 2048;
    v259 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_352:
    v194 = 0;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v260 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 789;
    v256 = 2048;
    v257 = j;
    v258 = 2048;
    v259 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_353:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = j;
    *&v198[14] = 2048;
    *&v198[16] = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_354:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = 0;
    *&v198[14] = 2048;
    *&v198[16] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_355:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = j;
    *&v198[14] = 2048;
    *&v198[16] = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_356:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = 0;
    *&v198[14] = 2048;
    *&v198[16] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_357:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = j;
    *&v198[14] = 2048;
    *&v198[16] = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_358:
    *&v260 = 0;
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v237 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v195 = 136315906;
    v196 = "operator[]";
    v197 = 1024;
    *v198 = 789;
    *&v198[4] = 2048;
    *&v198[6] = 0;
    *&v198[14] = 2048;
    *&v198[16] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_359:
    v194 = 0;
    v263 = v115;
    v264 = v115;
    v261 = v115;
    v262 = v115;
    v260 = v115;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v252 = 136315906;
    v253 = "operator[]";
    v254 = 1024;
    v255 = 797;
    v256 = 2048;
    v257 = v83;
    v258 = 2048;
    v259 = v84;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_167:
  v91 = v168;
  if (HIDWORD(v179))
  {
    re::GeomModel::GeomModel(&v237);
    if (v180)
    {
      v92 = 0;
      v93 = v179;
      while (1)
      {
        v94 = *v93;
        v93 += 16;
        if (v94 < 0)
        {
          break;
        }

        if (v180 == ++v92)
        {
          LODWORD(v92) = v180;
          break;
        }
      }

      v95 = v92;
    }

    else
    {
      v95 = 0;
    }

    if (v95 == v180)
    {
LABEL_176:
      if (a2)
      {
        v96 = a2;
      }

      else
      {
        v96 = "";
      }

      v97 = strlen(v96);
      *buf = v96;
      *&buf[8] = v97;
      re::DynamicString::operator=(&v237, buf);
      v207 = xmmword_1E3047670;
      v208 = xmmword_1E3047680;
      v209 = xmmword_1E30476A0;
      v210 = xmmword_1E30474D0;
      LODWORD(v211) = v70[2];
      re::GeomModelWithLods::GeomModelWithLods(buf);
      re::DynamicArray<re::GeomModel>::add(v222, &v237);
      re::DynamicArray<re::GeomModelWithLods>::add(v70, buf);
      v98 = re::DynamicArray<re::GeomInstance>::add((v70 + 5), &v207);
      if (v229)
      {
        if (v233)
        {
          (*(*v229 + 40))(v98);
        }

        v233 = 0;
        v230 = 0;
        v231 = 0;
        v229 = 0;
        ++v232;
      }

      if (v224)
      {
        if (v228)
        {
          (*(*v224 + 40))(v98);
        }

        v228 = 0;
        v225 = 0;
        v226 = 0;
        v224 = 0;
        ++v227;
      }

      re::DynamicArray<re::GeomModel>::deinit(v222);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v250);
      if (v248 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v249);
      }

      if (v246 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v247);
      }

      if (*(&v241 + 1))
      {
        if (v245)
        {
          (*(**(&v241 + 1) + 40))();
        }

        v245 = 0;
        v242 = 0;
        v243 = 0;
        *(&v241 + 1) = 0;
        ++v244;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v239);
      if (v237 && (BYTE8(v237) & 1) != 0)
      {
        (*(*v237 + 40))();
      }

      goto LABEL_201;
    }

    j = &v207;
    v103 = v179;
    v151 = v179;
    v152 = v180;
    while (1)
    {
      v154 = v95;
      v104 = v103 + (v95 << 6);
      v105 = *(v104 + 8);
      *&v207 = v105;
      v153 = v105;

      v108 = *(v104 + 32);
      v107 = (v104 + 32);
      v106 = v108;
      v109 = v240 + v108 * v223;
      if (v109 <= 1)
      {
        v110 = 1;
      }

      else
      {
        v110 = v109;
      }

      if (*(&v239 + 1) < v110)
      {
        re::DynamicArray<re::GeomMesh>::setCapacity(&v239, v110);
        v106 = *v107;
      }

      if (v106)
      {
        break;
      }

      v148 = v164;
      v147 = v166;
      v149 = v162;
LABEL_326:
      v162 = v149;
      v164 = v148;
      v166 = v147;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v236);
      if (v234 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v235);
      }

      if (v229 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v230);
      }

      if (v224)
      {
        if (v228)
        {
          (*(*v224 + 40))();
        }

        v228 = 0;
        v225 = 0;
        v226 = 0;
        v224 = 0;
        ++v227;
      }

      re::DynamicArray<re::GeomMesh>::deinit(v222);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v95 = v154;
      v103 = v151;
      if (v152 <= v154 + 1)
      {
        v150 = v154 + 1;
      }

      else
      {
        v150 = v152;
      }

      while (v150 - 1 != v95)
      {
        if ((*(v151 + (++v95 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_344;
        }
      }

      v95 = v150;
LABEL_344:
      if (v95 == v152)
      {
        goto LABEL_176;
      }
    }

    v83 = 0;
    v111 = v107 - 2;
    v112 = v162.i32[3];
    v113 = v164.i32[3];
    v114 = HIDWORD(v166);
    v155 = v111;
    v156 = v106;
    while (1)
    {
      v158 = v114;
      v159 = v113;
      v160 = v112;
      re::DynamicString::DynamicString(&v207, buf);
      re::DynamicArray<re::GeomMesh>::DynamicArray(&v209, v222);
      re::DynamicArray<float>::DynamicArray(&v211 + 8, &v224);
      v216 = v229;
      if (v229 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v217, &v230);
      }

      v218 = v234;
      if (v234 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v219, v235);
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::DynamicArray(v220, v236);
      v115 = 0uLL;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      memset(&v198[2], 0, 32);
      v205 = xmmword_1E30474D0;
      v206 = 0u;
      v84 = v111[2];
      if (v84 <= v83)
      {
        goto LABEL_359;
      }

      v157 = v83;
      v116 = &v111[4][144 * v83];
      v266.columns[0] = *(v116 + 80);
      v266.columns[1] = *(v116 + 96);
      v117 = *(v116 + 128);
      v199 = *(v116 + 112);
      v200 = v117;
      *&v198[2] = v266.columns[0];
      *&v198[18] = v266.columns[1];
      v266.columns[2] = v199;
      v267 = __invert_f3(v266);
      v165 = v267.columns[1];
      v167 = v267.columns[0];
      DWORD2(v201) = v267.columns[2].i32[0];
      *&v201 = vzip1q_s32(v267.columns[0], v267.columns[1]).u64[0];
      DWORD2(v202) = v267.columns[2].i32[1];
      v163 = v267.columns[2];
      DWORD2(v203) = v267.columns[2].i32[2];
      *&v202 = vtrn2q_s32(v267.columns[0], v267.columns[1]).u64[0];
      *&v203 = vzip1q_s32(vdupq_laneq_s32(v267.columns[0], 2), vdupq_laneq_s32(v267.columns[1], 2)).u64[0];
      re::decomposeScaleRotationTranslation<float>(&v198[2], &v204, &v205, &v206);
      v195 = 0;
      if (*&v198[2] == 1.0 || fabsf(*&v198[2] + -1.0) < (((fabsf(*&v198[2]) + 1.0) + 1.0) * 0.00001))
      {
        if (*&v198[6] == 0.0 || (v118 = fabsf(*&v198[6]), v118 < ((v118 + 1.0) * 0.00001)))
        {
          if (*&v198[10] == 0.0 || (v119 = fabsf(*&v198[10]), v119 < ((v119 + 1.0) * 0.00001)))
          {
            if (*&v198[14] == 0.0 || (v120 = fabsf(*&v198[14]), v120 < ((v120 + 1.0) * 0.00001)))
            {
              if (*&v198[18] == 0.0 || (v121 = fabsf(*&v198[18]), v121 < ((v121 + 1.0) * 0.00001)))
              {
                if (*&v198[22] == 1.0 || fabsf(*&v198[22] + -1.0) < (((fabsf(*&v198[22]) + 1.0) + 1.0) * 0.00001))
                {
                  if (*&v198[26] == 0.0 || (v122 = fabsf(*&v198[26]), v122 < ((v122 + 1.0) * 0.00001)))
                  {
                    if (*&v198[30] == 0.0 || (v123 = fabsf(*&v198[30]), v123 < ((v123 + 1.0) * 0.00001)))
                    {
                      if (v199.f32[0] == 0.0 || (v124 = fabsf(v199.f32[0]), v124 < ((v124 + 1.0) * 0.00001)))
                      {
                        if (v199.f32[1] == 0.0 || (v125 = fabsf(v199.f32[1]), v125 < ((v125 + 1.0) * 0.00001)))
                        {
                          if (v199.f32[2] == 1.0 || fabsf(v199.f32[2] + -1.0) < (((fabsf(v199.f32[2]) + 1.0) + 1.0) * 0.00001))
                          {
                            if (v199.f32[3] == 0.0 || (v126 = fabsf(v199.f32[3]), v126 < ((v126 + 1.0) * 0.00001)))
                            {
                              if (v200.f32[0] == 0.0 || (v127 = fabsf(v200.f32[0]), v127 < ((v127 + 1.0) * 0.00001)))
                              {
                                if (v200.f32[1] == 0.0 || (v128 = fabsf(v200.f32[1]), v128 < ((v128 + 1.0) * 0.00001)))
                                {
                                  if (v200.f32[2] == 0.0 || (v129 = fabsf(v200.f32[2]), v129 < ((v129 + 1.0) * 0.00001)))
                                  {
                                    if (v200.f32[3] == 1.0 || fabsf(v200.f32[3] + -1.0) < (((fabsf(v200.f32[3]) + 1.0) + 1.0) * 0.00001))
                                    {
                                      break;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v130 = vmulq_f32(v206, v206);
      if (fabsf(v130.f32[2] + vaddv_f32(*v130.f32)) >= 1.0e-10)
      {
        v131 = 1;
        v195 = 1;
      }

      else
      {
        v131 = 0;
      }

      if (*v204.i32 != 1.0 && fabsf(*v204.i32 + -1.0) >= (((fabsf(*v204.i32) + 1.0) + 1.0) * 0.00001) || *&v204.i32[1] != 1.0 && fabsf(*&v204.i32[1] + -1.0) >= (((fabsf(*&v204.i32[1]) + 1.0) + 1.0) * 0.00001) || *&v204.i32[2] != 1.0 && fabsf(*&v204.i32[2] + -1.0) >= (((fabsf(*&v204.i32[2]) + 1.0) + 1.0) * 0.00001))
      {
        v131 |= 2u;
        v195 = v131;
      }

      if ((*&v205 == 0.0 || (v132 = fabsf(*&v205), v132 < ((v132 + 1.0) * 0.00001))) && (*(&v205 + 1) == 0.0 || (v133 = fabsf(*(&v205 + 1)), v133 < ((v133 + 1.0) * 0.00001))) && (*(&v205 + 2) == 0.0 || (v134 = fabsf(*(&v205 + 2)), v134 < ((v134 + 1.0) * 0.00001))) && (*(&v205 + 3) == 1.0 || fabsf(*(&v205 + 3) + -1.0) < (((fabsf(*(&v205 + 3)) + 1.0) + 1.0) * 0.00001)))
      {
        if (!v131)
        {
          break;
        }
      }

      else
      {
        v195 = v131 | 4;
      }

      v135 = v210;
      if (v210)
      {
        v76 = 0;
        while (1)
        {
          v84 = v210;
          if (v210 <= v76)
          {
            goto LABEL_349;
          }

          re::transform((v211 + 736 * v76), &v198[2]);
          v84 = v210;
          if (v210 <= v76)
          {
            goto LABEL_350;
          }

          j = v211 + 736 * v76;
          v136 = *(j + 200);
          if (v136)
          {
            v85 = 0;
            v137 = *(j + 16);
            do
            {
              v138 = re::internal::GeomAttributeContainer::attributeByIndex((j + 176), v85);
              if (*(v138 + 17) == 7)
              {
                v139 = v138;
                v83 = *(v138 + 8);
                v140 = strlen(v83);
                if (v140 >= 0x15)
                {
                  v141 = *&v83[v140 - 21] == 0x6154646E656C627CLL && *&v83[v140 - 13] == 0x44736F5074656772;
                  if (v141 && *&v83[v140 - 8] == 0x7361746C6544736FLL)
                  {
                    if ((*(*v139 + 16))(v139))
                    {
                      if (!v139[5])
                      {
                        goto LABEL_348;
                      }

                      v83 = v139[7];
                      v84 = (*(*v139 + 16))(v139);
                      if (v137)
                      {
LABEL_302:
                        v143 = 0;
                        while (v84 != v143)
                        {
                          v144 = vaddq_f32(v200, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v198[2], COERCE_FLOAT(*&v83[16 * v143])), *&v198[18], *&v83[16 * v143], 1), v199, *&v83[16 * v143], 2));
                          *&v83[16 * v143++] = vdivq_f32(v144, vdupq_laneq_s32(v144, 3));
                          if (v137 == v143)
                          {
                            goto LABEL_305;
                          }
                        }

                        v194 = 0;
                        v263 = 0u;
                        v264 = 0u;
                        v261 = 0u;
                        v262 = 0u;
                        v260 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v252 = 136315906;
                        v253 = "operator[]";
                        v254 = 1024;
                        v255 = 621;
                        v256 = 2048;
                        v257 = v84;
                        v258 = 2048;
                        v259 = v84;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_347;
                      }
                    }

                    else
                    {
                      v84 = 0;
                      v83 = 0;
                      if (v137)
                      {
                        goto LABEL_302;
                      }
                    }
                  }
                }
              }

LABEL_305:
              v85 = (v85 + 1);
            }

            while (v85 != v136);
          }

          ++v76;
          v70 = v169;
          if (v76 == v135)
          {
            goto LABEL_307;
          }
        }
      }

LABEL_312:
      j = &v207;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v220);
      v91 = v168;
      if (v218 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v219);
      }

      if (v216 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v217);
      }

      v111 = v155;
      if (*(&v211 + 1))
      {
        if (v215)
        {
          (*(**(&v211 + 1) + 40))();
        }

        v215 = 0;
        v212 = 0;
        v213 = 0;
        *(&v211 + 1) = 0;
        ++v214;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v209);
      if (v207 && (BYTE8(v207) & 1) != 0)
      {
        (*(*v207 + 40))();
      }

      v147 = v167;
      HIDWORD(v147) = v158;
      v148 = v165;
      v148.i32[3] = v159;
      v83 = v157 + 1;
      v149 = v163;
      v149.i32[3] = v160;
      v112 = v160;
      v113 = v159;
      v114 = v158;
      if (v157 + 1 == v156)
      {
        goto LABEL_326;
      }
    }

LABEL_307:
    v145 = v210;
    if (v210)
    {
      v83 = 0;
      v146 = 0;
      j = 0;
      while (1)
      {
        v84 = v210;
        if (v210 <= j)
        {
          goto LABEL_351;
        }

        re::DynamicArray<re::GeomMesh>::add(&v239, &v83[v211]);
        v84 = v213;
        if (v213 <= j)
        {
          goto LABEL_352;
        }

        re::DynamicArray<int>::add(&v241 + 1, (v215 + v146));
        ++j;
        v146 += 4;
        v83 += 736;
        if (v145 == j)
        {
          goto LABEL_312;
        }
      }
    }

    goto LABEL_312;
  }

LABEL_201:
  if (a9[3] == 1)
  {
    v99 = v70[2];
    if (v99)
    {
      v83 = 0;
      for (j = 0; j != v99; ++j)
      {
        *v222 = 0;
        memset(buf, 0, 28);
        *&v209 = 0;
        *&v208 = 0;
        v207 = 0uLL;
        DWORD2(v208) = 0;
        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_353;
        }

        v100 = &v83[v70[4]];
        if (!*(v100 + 6))
        {
          goto LABEL_354;
        }

        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_355;
        }

        v101 = &v83[v70[4]];
        if (!*(v101 + 6))
        {
          goto LABEL_356;
        }

        re::DynamicArray<re::GeomMesh>::operator=(*(v101 + 8) + 32, buf);
        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_357;
        }

        v102 = &v83[v70[4]];
        if (!*(v102 + 6))
        {
          goto LABEL_358;
        }

        re::DynamicArray<re::RigComponentConstraint>::operator=(*(v102 + 8) + 72, &v207);
        if (v207 && v209)
        {
          (*(*v207 + 40))();
        }

        re::DynamicArray<re::GeomMesh>::deinit(buf);
        v83 += 152;
      }
    }
  }

LABEL_80:
  if (v182[0] & 1) == 0 && v184 && (v185)
  {
    (*(*v184 + 40))();
  }

  if (v187 && (v188 & 1) != 0)
  {
    (*(*v187 + 40))();
  }

  if (v189 && (v190 & 1) != 0)
  {
    (*(*v189 + 40))();
  }

  re::DynamicArray<re::ObjCObject>::deinit(v191);

  return 1;
}