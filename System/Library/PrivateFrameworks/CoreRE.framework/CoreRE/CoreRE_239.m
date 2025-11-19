uint64_t re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::findEntry<float>(uint64_t result, uint64_t a2, unint64_t a3, float a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 40 * v6 + 4) == a4)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 4) == a4)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
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
  *result = a3;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(a1, v18[2] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 3);
                *(v19 + 8) = *(v18 - 1);
                *(v18 - 1) = 0;
                *(v19 + 16) = 0;
                *(v19 + 24) = 0;
                if (v18[1])
                {
                  if (*v18)
                  {
                    *(v19 + 16) = *v18;
                    *(v19 + 24) = v18[1];
                    v18[1] = 0;
                  }
                }
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::deinit(v26);
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
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

uint64_t re::VideoSDRDefaults::gammaToneCurveAllowed(re::VideoSDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.sdr.gamma_tone_curve.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoSDRDefaults::gammaToneCurveAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[840];
}

uint64_t re::VideoSDRDefaults::colorSpaceTransformationAllowed(re::VideoSDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.sdr.color_space_transformation.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoSDRDefaults::colorSpaceTransformationAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[856];
}

uint64_t re::VideoSDRDefaults::brightnessScalingAllowed(re::VideoSDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.sdr.brightness_scaling.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoSDRDefaults::brightnessScalingAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[872];
}

uint64_t re::VideoSDRDefaults::gammaBoostAllowed(re::VideoSDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.sdr.gamma_boost.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoSDRDefaults::gammaBoostAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[888];
}

uint64_t re::videoPlaybackCreateHDRConfigs(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, uint64_t *a6, re::VideoSimplePixelBufferAllocator *a7, void *a8, unint64_t a9, unint64_t *a10, void *a11)
{
  v175[1] = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  Height = re::VideoDefaults::logEnabled(v16);
  if (Height)
  {
    Height = [v16 appendString:@"Processing HDR pixel buffers."];
  }

  v150 = a6;
  v157 = *a8;
  v19.isa = a1->isa;
  if (a1->isa)
  {
    isPhysicalHardware = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = &a1[isPhysicalHardware];
      isa = v23[2].isa;
      if (isa)
      {
        isa = CVPixelBufferGetWidth(isa);
        v19.isa = a1->isa;
      }

      if (v19.isa <= isPhysicalHardware)
      {
        break;
      }

      if (v21 <= isa)
      {
        v21 = isa;
      }

      Height = v23[2].isa;
      if (Height)
      {
        Height = CVPixelBufferGetHeight(Height);
        v19.isa = a1->isa;
      }

      if (v22 <= Height)
      {
        v22 = Height;
      }

      if (++isPhysicalHardware >= v19.isa)
      {
        goto LABEL_17;
      }
    }

LABEL_185:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, isPhysicalHardware, v19.isa);
    _os_crash();
    __break(1u);
LABEL_186:
    re::internal::assertLog(6, v99, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v101);
    _os_crash();
    __break(1u);
LABEL_187:
    re::internal::assertLog(6, v103, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v104);
    _os_crash();
    __break(1u);
LABEL_188:
    re::internal::assertLog(6, v129, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v132);
    _os_crash();
    __break(1u);
LABEL_189:
    re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v118);
    _os_crash();
    __break(1u);
LABEL_190:
    re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v119);
    _os_crash();
    __break(1u);
LABEL_191:
    re::internal::assertLog(6, v120, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v121);
    _os_crash();
    __break(1u);
    goto LABEL_192;
  }

  v22 = 0;
  v21 = 0;
LABEL_17:
  if (v157)
  {
    if (*a8 <= (v157 - 1))
    {
      re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, *a8, *a8);
      _os_crash();
      __break(1u);
LABEL_197:
      re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash();
      __break(1u);
      goto LABEL_198;
    }

    v25 = a8 + 7;
    v26 = v157;
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      if (v21 >= v27)
      {
        v21 = v27;
      }

      if (v22 >= v28)
      {
        v22 = v28;
      }

      v25 += 4;
      --v26;
    }

    while (v26);
  }

  if (*(a4 + 464))
  {
    v29 = re::TargetDisplayInfoProvider::{unnamed type#10}::operator()(a4 + 432);
  }

  else
  {
    v29 = re::VideoHDRDefaults::targetNits(Height);
  }

  v30 = re::VideoHDRDefaults::overrideTargetNits(v29);
  v151 = v30;
  if (*(a4 + 512))
  {
    v32 = re::TargetDisplayInfoProvider::{unnamed type#11}::operator()(a4 + 480);
  }

  else
  {
    v32 = re::VideoHDRDefaults::maxEdrValue(v30);
  }

  v34 = re::VideoHDRDefaults::overrideMaxEdrValue(v31, v32);
  if (*(a4 + 560))
  {
    v36 = re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(a4 + 528);
  }

  else
  {
    v36 = re::VideoHDRDefaults::maxEdrFactor(v33);
  }

  v38 = re::VideoHDRDefaults::overrideMaxEdrFactor(v35, v36);
  if (*(a4 + 416))
  {
    v40 = re::TargetDisplayInfoProvider::{unnamed type#9}::operator()(a4 + 384);
  }

  else
  {
    v40 = re::VideoHDRDefaults::currentMaxNits(v37);
  }

  v42 = re::VideoHDRDefaults::overrideCurrentMaxNits(v39, v40);
  if (*(a4 + 368))
  {
    v44 = re::TargetDisplayInfoProvider::{unnamed type#8}::operator()(a4 + 336);
  }

  else
  {
    v44 = re::VideoHDRDefaults::currentMinNits(v41);
  }

  v156 = re::VideoHDRDefaults::overrideCurrentMinNits(v43, v44);
  v155 = re::VideoHDRDefaults::overrideAmbientLightInNits(v45, v42 * (*(*(a3 + 120) + 2196) + (a5[53] * (a5[54] - *(*(a3 + 120) + 2196)))));
  if (*(a4 + 272))
  {
    v48 = re::TargetDisplayInfoProvider::{unnamed type#6}::operator()(a4 + 240);
  }

  else
  {
    v48 = re::VideoHDRDefaults::sdrMaxBrightnessInNits(v46);
  }

  v154 = re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(v47, v48);
  v50 = re::defaultVideoHDRDisplayInfo(v49);
  v51 = *(v50 + 2);
  *v168 = *v50;
  v169[0] = v51;
  if (*(a4 + 128))
  {
    v52 = re::TargetDisplayInfoProvider::{unnamed type#3}::operator()(a4 + 96);
  }

  else
  {
    v52 = HIDWORD(v168[0]);
  }

  HIDWORD(v168[0]) = re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits(v52);
  if (*(a4 + 80))
  {
    v53 = re::TargetDisplayInfoProvider::{unnamed type#2}::operator()(a4 + 48);
  }

  else
  {
    v53 = LODWORD(v168[1]);
  }

  v54 = re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits(v53);
  LODWORD(v168[1]) = v54;
  if (*(a4 + 32))
  {
    v55 = re::TargetDisplayInfoProvider::{unnamed type#1}::operator()(a4);
  }

  else
  {
    v55 = *(&v168[1] + 1);
  }

  HIDWORD(v168[1]) = re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(v54, v55);
  if (*(a4 + 176))
  {
    v57 = re::TargetDisplayInfoProvider::{unnamed type#4}::operator()(a4 + 144);
  }

  else
  {
    v57 = *v169;
  }

  LODWORD(v169[0]) = re::VideoHDRDefaults::overrideDisplayContrastRatio(v56, v57);
  if (*(a4 + 224))
  {
    v58 = re::TargetDisplayInfoProvider::{unnamed type#5}::operator()(a4 + 192);
  }

  else
  {
    v58 = BYTE4(v169[0]);
  }

  BYTE4(v169[0]) = re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel((v58 & 1));
  if (*(a5 + 112))
  {
    v59 = *a5;
  }

  else
  {
    v59 = 0;
  }

  v162 = re::VideoHDRDefaults::overridePixelFormat(1882468912);
  {
    v162 = re::VideoHDRDefaults::overridePixelFormat(1380411457);
  }

  v60 = 0x9090C01u >> (8 * v59);
  if ((v59 & 0xFC) != 0)
  {
    LOBYTE(v60) = 2;
  }

  v166 = re::VideoHDRDefaults::overrideColorPrimaries((v60 & 0xF));
  v160 = re::VideoHDRDefaults::overrideTransferFunction(0xD);
  v159 = re::VideoHDRDefaults::overrideYCbCrMatrix(1);
  v61 = re::VideoDefaults::logEnabled(v159);
  if (v61)
  {
    [v16 appendFormat:@"\n     Working HDR pixel format: %s (%d)", "(undefined)", v162];
    [v16 appendFormat:@"\n  Working HDR Color Primaries: %s (%d)", "(undefined)", v166];
    [v16 appendFormat:@"\nWorking HDR Transfer Function: %s (%d)", "(undefined)", v160];
    [v16 appendFormat:@"\n     Working HDR YCbCr Matrix: %s (%d)", "(undefined)", v159];
    v147 = *re::videoLogObjects([v16 appendFormat:@"\n         Working HDR Extended: %s", "Yes"]);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      *v172 = 136315138;
      *&v172[4] = [v16 cStringUsingEncoding:1];
      _os_log_impl(&dword_1E1C61000, v147, OS_LOG_TYPE_DEFAULT, "%s", v172, 0xCu);
    }
  }

  v149 = v16;
  v164 = v22 * a9;
  v165 = v21 * a9;
  v16 = 0;
  if (a1->isa)
  {
    v62 = 0;
    p_isa = &a1[2].isa;
    v64 = v150;
    do
    {
      v61 = re::VideoPixelBufferBase::protectionOptions(p_isa);
      v16 |= v61;
      v62 = (v62 + 1);
      ++p_isa;
    }

    while (v62 < a1->isa);
  }

  else
  {
    v64 = v150;
  }

  if (!*v64)
  {
    {
      v65 = 1;
    }

    else
    {
      v65 = 2;
    }

    v66 = *(a3 + 208);
    re::VideoHDRProcessor::init(v64, v165, v164, v166, v162, v151, v65, v66);
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a10);
  v174 = 0;
  v175[0] = 0;
  *v172 = 0u;
  v173 = 0u;
  v68 = a1->isa;
  v69 = v157;
  if (v157 || v68 != 1)
  {
    if (v68 == 1 && v157 == 1)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, a1[2].isa);
      if (*a8)
      {
        *v172 = *(a8 + 1);
        goto LABEL_83;
      }

      goto LABEL_197;
    }

    if (v68 == 1 && v157 == 2)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, a1[2].isa);
      if (!a1->isa)
      {
LABEL_198:
        re::internal::assertLog(6, v73, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
        goto LABEL_199;
      }

      re::VideoObject<re::VideoPixelBufferBase>::setRef(v175, v175, a1[2].isa);
      v75 = *a8;
      if (!*a8)
      {
LABEL_199:
        re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
        goto LABEL_200;
      }

      *v172 = *(a8 + 1);
      if (v75 == 1)
      {
LABEL_200:
        re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v75, v75);
        _os_crash();
        __break(1u);
        goto LABEL_201;
      }

      goto LABEL_89;
    }

    if (v68 == 2 && v157 == 1)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, a1[2].isa);
      v78 = a1->isa;
      if (a1->isa <= 1)
      {
LABEL_201:
        re::internal::assertLog(6, v77, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v78);
        _os_crash();
        __break(1u);
        goto LABEL_202;
      }

      re::VideoObject<re::VideoPixelBufferBase>::setRef(v175, v175, a1[3].isa);
      if (!*a8)
      {
LABEL_202:
        re::internal::assertLog(6, v79, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
        goto LABEL_203;
      }

      v76 = *(a8 + 1);
      *v172 = v76;
      goto LABEL_95;
    }

    if (v68 == 2 && v157 == 2)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, a1[2].isa);
      v142 = a1->isa;
      if (a1->isa <= 1)
      {
LABEL_203:
        re::internal::assertLog(6, v141, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, v142);
        _os_crash();
        __break(1u);
LABEL_204:
        re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
        _os_crash();
        __break(1u);
      }

      re::VideoObject<re::VideoPixelBufferBase>::setRef(v175, v175, a1[3].isa);
      v144 = *a8;
      if (!*a8)
      {
        goto LABEL_204;
      }

      *v172 = *(a8 + 1);
      if (v144 != 1)
      {
LABEL_89:
        v76 = *(a8 + 2);
LABEL_95:
        v173 = v76;
LABEL_96:
        v72 = 2;
        goto LABEL_97;
      }

      re::internal::assertLog(6, v143, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 1, 1);
      v67 = _os_crash();
      __break(1u);
    }

    if (v69 || v68 != 2)
    {
      a1 = *re::videoLogObjects(v67);
      a4 = v149;
      if (!os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
      {
LABEL_181:
        v138 = 1;
        goto LABEL_166;
      }

LABEL_192:
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, a1, OS_LOG_TYPE_ERROR, "Unsupported channel configuration.", buf, 2u);
      goto LABEL_181;
    }

    v145 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](a1, 0);
    re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, *v145);
    v146 = re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[](a1, 1uLL);
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v175, v175, *v146);
    goto LABEL_96;
  }

  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v174, &v174, a1[2].isa);
LABEL_83:
  v72 = 1;
LABEL_97:
  v158 = v72;
  v80 = re::VideoDefaults::compressionAllowed(v70);
  v148 = v34;
  if (v80)
  {
  }

  else
  {
    isPhysicalHardware = 0;
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a10, v158);
  v81 = 0;
  v153 = a10 + 2;
  a4 = 2;
  a1 = &v174;
  do
  {
    v22 = a4 - 2;
    re::VideoSimplePixelBufferAllocator::createPixelBuffer(a7, v165, v164, v162, v166, v160, v159, 1, buf, 0x400u, 0x10u, isPhysicalHardware, v16);
    if (*a10 <= a4 - 2)
    {
      re::internal::assertLog(6, v82, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a4 - 2, *a10);
      _os_crash();
      __break(1u);
LABEL_183:
      re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a4 - 2, v95);
      _os_crash();
      __break(1u);
LABEL_184:
      re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a4 - 2, v98);
      _os_crash();
      __break(1u);
      goto LABEL_185;
    }

    v83 = *buf;
    a10[a4] = *buf;
    if (v83)
    {
      IOSurface = CVPixelBufferGetIOSurface(v83);
      CFRetain(IOSurface);
    }

    else
    {
      IOSurface = 0;
    }

    v167 = IOSurface;
    re::VideoSurfaceBase::setEdrFactor(&v167, v38);
    v86 = re::VideoPixelBufferBase::cleanRect(&v175[v81 - 1]);
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v175[v81 - 1];
    if (v93)
    {
      CVImageBufferGetDisplaySize(v93);
      v94 = v175[v81 - 1];
      if (v94)
      {
        CVImageBufferGetDisplaySize(v94);
      }
    }

    v95 = *a10;
    if (*a10 <= v22)
    {
      goto LABEL_183;
    }

    v96 = &a10[v81];
    re::VideoPixelBufferBase::setCleanRect(&a10[v81 + 2], v86 * a9, v88 * a9, v90 * a9, v92 * a9);
    v98 = *a10;
    if (*a10 <= v22)
    {
      goto LABEL_184;
    }

    if (a10[a4])
    {
      CVImageBufferSetDisplayDimensions();
    }

    v100 = re::VideoPixelBufferBase::horizontalDisparityAdjustment(&v175[v81 - 1]);
    if (v100 > 0.0)
    {
      v101 = *a10;
      if (*a10 <= v22)
      {
        goto LABEL_186;
      }

      re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(v96 + 2, v100);
    }

    re::VideoPixelBufferBase::rectangularMask(&v175[v81 - 1], a4 - 2, buf);
    if (v171 == 1)
    {
      v104 = *a10;
      if (*a10 <= v22)
      {
        goto LABEL_187;
      }

      re::VideoPixelBufferBase::setRectangularMask(v96 + 2, COERCE_DOUBLE(vmul_n_f32(*&buf[8], a9)), COERCE_DOUBLE(vmul_n_f32(*&buf[16], a9)), COERCE_DOUBLE(vmul_n_f32(*buf, a9)));
    }

    if (v167)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v167);
    }

    ++a4;
    ++v81;
  }

  while (a4 - v158 != 2);
  a4 = a11;
  v105 = v158 - *a11;
  if (v158 <= *a11)
  {
    v107 = v150;
    v108 = v148;
    if (v158 >= *a11)
    {
      goto LABEL_135;
    }

    v109 = v158;
    v110 = &a11[10 * v158 + 4];
    do
    {
      if (*v110)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v110);
      }

      *v110 = 0;
      if (*(v110 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v110 - 1);
      }

      *(v110 - 1) = 0;
      if (*(v110 - 2))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v110 - 2);
      }

      *(v110 - 2) = 0;
      ++v109;
      a4 = a11;
      v110 += 10;
    }

    while (v109 < *a11);
  }

  else
  {
    v106 = &a11[10 * *a11 + 2];
    v107 = v150;
    v108 = v148;
    do
    {
      *(v106 + 64) = 0;
      *(v106 + 32) = 0uLL;
      *(v106 + 48) = 0uLL;
      *v106 = 0uLL;
      *(v106 + 16) = 0uLL;
      v106 += 80;
      --v105;
    }

    while (v105);
  }

  *a4 = v158;
  ++*(a4 + 8);
LABEL_135:
  v111 = 0;
  v16 = 0;
  v112 = (a4 + 48);
  v113 = 1;
  v114 = v172;
  while (1)
  {
    v115 = re::VideoDefaults::logEnabled(MSRConfig);
    if (v115)
    {
      v136 = *re::videoLogObjects(v115);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v16 + 1;
        *&buf[12] = 2048;
        *&buf[14] = v158;
        _os_log_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_DEFAULT, "Processing pixel buffer %zu of %zu:", buf, 0x16u);
      }
    }

    v116 = re::mtl::Device::isPhysicalHardware(a1);
    if (v116)
    {
      v118 = *a10;
      if (*a10 <= v16)
      {
        goto LABEL_189;
      }

      v119 = *a4;
      if (*a4 <= v16)
      {
        goto LABEL_190;
      }

      MSRConfig = re::VideoHDRProcessor::createMSRConfig(v107, &v175[v111 - 1], &v153[v111], v168, (v112 - 2), v108, v38, v42, v156, v155, v154);
      v121 = *a4;
      if (*a4 <= v16)
      {
        goto LABEL_191;
      }

      v122 = MSRConfig;
      *v112 = *v114;
    }

    else
    {
      v163 = v113;
      v123 = v107;
      v124 = a1;
      v125 = a3;
      v126 = *(a3 + 112);
      if (!v126)
      {
        v127 = *re::videoLogObjects(v116);
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v127, OS_LOG_TYPE_ERROR, "Drawing manager does not exist, so cannot submit MTL Command Buffer to perform HDR processing", buf, 2u);
        }

        v125 = a3;
      }

      v128 = re::RenderFrameBox::get((v126 + 328), *(*(v125 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v125 + 144) + 16) << 60));
      QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v128);
      v131 = v175[v16 - 1];
      if (v131)
      {
        a4 = CVPixelBufferGetIOSurface(v131);
        CFRetain(a4);
      }

      else
      {
        a4 = 0;
      }

      a1 = v124;
      *buf = a4;
      v132 = *a10;
      if (*a10 <= v16)
      {
        goto LABEL_188;
      }

      v107 = v123;
      v133 = v153[v16];
      if (v133)
      {
        v134 = CVPixelBufferGetIOSurface(v133);
        CFRetain(v134);
      }

      else
      {
        v134 = 0;
      }

      v113 = v163;
      v167 = v134;
      v135 = *(QueuedCommandBuffer + 16);
      v122 = re::VideoHDRProcessor::processViaGPU(v107, buf, &v167, v168, v135, v108, v38, v42, v156, v155, v154);

      if (v167)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v167);
      }

      a4 = a11;
      if (*buf)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buf);
      }
    }

    if (v122)
    {
      break;
    }

    v113 = ++v16 < v158;
    v114 += 16;
    ++v111;
    v112 += 5;
    if (v158 == v16)
    {
      v138 = 0;
      a4 = v149;
      goto LABEL_166;
    }
  }

  v137 = *re::videoLogObjects(MSRConfig);
  a4 = v149;
  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v137, OS_LOG_TYPE_ERROR, "Unable to process HDR pixel buffer.", buf, 2u);
  }

  v138 = v113;
LABEL_166:
  for (i = 1; i != -1; --i)
  {
    if (v175[i - 1])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v175[i - 1]);
    }

    v175[i - 1] = 0;
  }

  return v138;
}

uint64_t re::videoPlaybackCreatePSEConfigs(uint64_t a1, uint64_t a2, uint64_t a3, re::VideoSimplePixelBufferAllocator *a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = *a1;
  if (*a1 > 1uLL)
  {
    return 2;
  }

  if (!*a3)
  {
    v22 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given PSE processor is invalid.";
LABEL_28:
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v23, buffer, 2u);
    return 1;
  }

  if (!**a3)
  {
    v22 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given PSE processor is not initialized.";
    goto LABEL_28;
  }

  v15 = a1;
  if (v7 != 1)
  {
    goto LABEL_22;
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    v22 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LOWORD(buffer[0]) = 0;
    v23 = "[videoPlaybackCreatePSEConfigs] The given pixel buffers are invalid.";
    goto LABEL_28;
  }

  IOSurface = CVPixelBufferGetIOSurface(v16);
  CFRetain(IOSurface);
  buffer[0] = IOSurface;
  v18 = **a3;
  if (!v18)
  {
    goto LABEL_19;
  }

  if (!IOSurface)
  {
    return 2;
  }

  v19 = [*v18 canProcessSurface:IOSurface];
  IOSurface = buffer[0];
  if (!v19)
  {
LABEL_19:
    if (IOSurface)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    }

    return 2;
  }

  if (buffer[0])
  {
    PixelFormat = IOSurfaceGetPixelFormat(buffer[0]);
    canConvertToGammaSpaceRGBColorModel = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormat);
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    if (canConvertToGammaSpaceRGBColorModel)
    {
      goto LABEL_22;
    }

    return 2;
  }

  a1 = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(0);
  if ((a1 & 1) == 0)
  {
    return 2;
  }

LABEL_22:
  if (!*(a2 + 560) || !*(a2 + 416))
  {
    v22 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buffer[0]) = 0;
      v23 = "[videoPlaybackCreatePSEConfigs] The given display info provider is not initialized.";
      goto LABEL_28;
    }

    return 1;
  }

  v24 = re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(a2 + 528);
  v25 = re::TargetDisplayInfoProvider::{unnamed type#9}::operator()(a2 + 384);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a5, v7);
  if (*a6 >= v7)
  {
    if (*a6 <= v7)
    {
      goto LABEL_40;
    }

    v27 = (a6 + 48 * v7 + 48);
    v28 = v7;
    do
    {
      if (*v27)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v27);
      }

      *v27 = 0;
      if (*(v27 - 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v27 - 1);
      }

      *(v27 - 1) = 0;
      v29 = *(v27 - 3);
      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      ++v28;
      v27 += 6;
    }

    while (v28 < *a6);
  }

  else
  {
    bzero((a6 + 16), 48 * v7);
  }

  *a6 = v7;
  ++*(a6 + 8);
LABEL_40:
  if (v7 != 1)
  {
    return 0;
  }

  if (!*v15)
  {
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
LABEL_62:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
    _os_crash();
    __break(1u);
LABEL_63:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_64;
  }

  re::VideoPixelBufferBase::surface((v15 + 16), buffer);
  v31 = buffer[0];
  if (buffer[0])
  {
    v32 = IOSurfaceGetPixelFormat(buffer[0]);
  }

  else
  {
    v32 = 0;
  }

  if (!*v15)
  {
    goto LABEL_62;
  }

  v33 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(v32);
  v34 = re::VideoPixelBufferBase::colorTags((v15 + 16));
  if (v31)
  {
    Width = IOSurfaceGetWidth(v31);
    Height = IOSurfaceGetHeight(v31);
    ProtectionOptions = IOSurfaceGetProtectionOptions();
  }

  else
  {
    Height = 0;
    Width = 0;
    ProtectionOptions = 0;
  }

  re::VideoSimplePixelBufferAllocator::createPixelBuffer(a4, Width, Height, v33, v34, HIBYTE(v34), 0, 1, &v44, 0x400u, 0x10u, 0, ProtectionOptions);
  if (!*a5)
  {
    goto LABEL_63;
  }

  *(a5 + 16) = v44;
  if (!*a6)
  {
LABEL_64:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash();
    __break(1u);
LABEL_65:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_66;
  }

  v40 = *a3;
  v39 = *(a3 + 8);
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
  }

  v41 = *(a6 + 24);
  *(a6 + 16) = v40;
  *(a6 + 24) = v39;
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  if (!*a6)
  {
    goto LABEL_65;
  }

  *(a6 + 32) = a7;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a6 + 40, (a6 + 40), v31);
  if (!*a5)
  {
LABEL_66:
    re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_67;
  }

  re::VideoPixelBufferBase::surface((a5 + 16), &v44);
  if (*a6)
  {
    *(a6 + 48) = v44;
    *(a6 + 56) = v25;
    *(a6 + 60) = v24;
    if (v31)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buffer);
    }

    return 0;
  }

LABEL_67:
  re::internal::assertLog(6, v43, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::VideoThroughput::update(uint64_t a1, CMTime *a2, CMTime *a3, unint64_t *a4)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  v9 = Seconds;
  v10 = (a1 + 2048);
  v11 = *(a1 + 2048);
  v12 = *(a1 + 2056);
  if (v11 == v12)
  {
    v12 = *(a1 + 2048);
  }

  else
  {
    if (Seconds - *(a1 + 16 * ((v12 - 1) & 0x7F)) <= 1.0)
    {
      while (1)
      {
        v25 = a1 + 16 * (v11 & 0x7F);
        v26 = Seconds - *v25;
        if (v26 < 0.0)
        {
          break;
        }

        if (v26 < 1.0)
        {
          goto LABEL_5;
        }

        v27 = *(v25 + 8);
        *(a1 + 2048) = ++v11;
        *(a1 + 2120) -= v27;
        if (v12 == v11)
        {
          v11 = v12;
          goto LABEL_5;
        }
      }
    }

    *v10 = 0;
    *(a1 + 2056) = 0;
    *(a1 + 2120) = 0;
    v12 = 0;
    v11 = 0;
    *(a1 + 2088) = 0;
    v13 = MEMORY[0x1E6960C70];
    ++*(a1 + 2096);
    *(a1 + 2064) = *v13;
    *(a1 + 2080) = *(v13 + 16);
    *(a1 + 2112) = 0;
  }

LABEL_5:
  v14 = *a4;
  time.value = 0;
  time.timescale = 0;
  if (!v14)
  {
    v17 = 0;
LABEL_22:
    if (v11 == v12 || v17 != *(a1 + 2112) || (time1 = *a3, time2 = *(a1 + 2064), CMTimeCompare(&time1, &time2)) || v14 != *(a1 + 2088) || (result = memcmp(&time.flags, (a1 + 2100), 4 * v14), result))
    {
      v29 = *(a1 + 2056);
      if (v29 - *(a1 + 2048) == 128)
      {
        *v10 = v29 - 127;
      }

      *(a1 + 2056) = v29 + 1;
      v30 = (a1 + 16 * (v29 & 0x7F));
      *v30 = v9;
      *(v30 + 1) = v17;
      *(a1 + 2120) += v17;
      *(a1 + 2112) = v17;
      v31 = *&a3->value;
      *(a1 + 2080) = a3->epoch;
      *(a1 + 2064) = v31;
      return re::DynamicInlineArray<unsigned int,2ul>::operator=((a1 + 2088), &time);
    }

    return result;
  }

  if (v14 >= 3)
  {
    goto LABEL_33;
  }

  bzero(&time.flags, 4 * v14);
  v16 = 0;
  v17 = 0;
  time.value = v14;
  time.timescale = 1;
  v18 = 2;
  while (*a4 > v16)
  {
    v19 = &a4[v16];
    v20 = v19[2];
    if (v20)
    {
      Width = CVPixelBufferGetWidth(v20);
      v22 = v19[2];
      if (v22)
      {
        Height = CVPixelBufferGetHeight(v22);
        goto LABEL_14;
      }
    }

    else
    {
      Width = 0;
    }

    Height = 0;
LABEL_14:
    v24 = re::VideoPixelBufferBase::surfaceID(&a4[v18]);
    if (v14 <= v16)
    {
      goto LABEL_32;
    }

    v17 += Height * Width;
    *(&time.flags + v16++) = v24;
    ++v18;
    if (v14 == v16)
    {
      v11 = *(a1 + 2048);
      v12 = *(a1 + 2056);
      v10 = (a1 + 2048);
      goto LABEL_22;
    }
  }

  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v16, *a4);
  _os_crash();
  __break(1u);
LABEL_32:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v16, v14);
  _os_crash();
  __break(1u);
LABEL_33:
  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
  result = _os_crash();
  __break(1u);
  return result;
}

float re::VideoHDRDefaults::maxEdrValue(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.edr.max_value", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 2.0;
      }

      re::VideoHDRDefaults::maxEdrValue(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 226);
}

float re::VideoHDRDefaults::overrideMaxEdrValue(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.edr.max_value", v3, &re::VideoHDRDefaults::overrideMaxEdrValue(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideMaxEdrValue(float)::value)
  {
    return *&dword_1ECF1D39C;
  }

  return result;
}

float re::VideoHDRDefaults::maxEdrFactor(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.edr.max_factor", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 0.5;
      }

      re::VideoHDRDefaults::maxEdrFactor(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 234);
}

float re::VideoHDRDefaults::overrideMaxEdrFactor(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.edr.max_factor", v3, &re::VideoHDRDefaults::overrideMaxEdrFactor(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideMaxEdrFactor(float)::value)
  {
    return *&dword_1ECF1D3BC;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::targetNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue("video.hdr.nits.target", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 100;
      }

      re::VideoHDRDefaults::targetNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 242);
}

uint64_t re::VideoHDRDefaults::overrideTargetNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue("video.hdr.override.nits.target", v1, &re::VideoHDRDefaults::overrideTargetNits::value);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideTargetNits::value)
  {
    return dword_1ECF1D3DC;
  }

  else
  {
    return this;
  }
}

float re::VideoHDRDefaults::currentMaxNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.nits.current_max", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 800.0;
      }

      re::VideoHDRDefaults::currentMaxNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 250);
}

float re::VideoHDRDefaults::overrideCurrentMaxNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.nits.current_max", v3, &re::VideoHDRDefaults::overrideCurrentMaxNits(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideCurrentMaxNits(float)::value)
  {
    return *&dword_1ECF1D3FC;
  }

  return result;
}

float re::VideoHDRDefaults::currentMinNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.nits.current_min", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 0.005;
      }

      re::VideoHDRDefaults::currentMinNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 258);
}

float re::VideoHDRDefaults::overrideCurrentMinNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.nits.current_min", v3, &re::VideoHDRDefaults::overrideCurrentMinNits(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideCurrentMinNits(float)::value)
  {
    return *&dword_1ECF1D41C;
  }

  return result;
}

float re::VideoHDRDefaults::overrideAmbientLightInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.nits.ambient_light", v3, &re::VideoHDRDefaults::overrideAmbientLightInNits(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideAmbientLightInNits(float)::value)
  {
    return *&dword_1ECF1D42C;
  }

  return result;
}

float re::VideoHDRDefaults::sdrMaxBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue("video.hdr.nits.sdr_max_brightness", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 150.0;
      }

      re::VideoHDRDefaults::sdrMaxBrightnessInNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 270);
}

float re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.nits.sdr_max_brightness", v3, &re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideSdrMaxBrightnessInNits(float)::value)
  {
    return *&dword_1ECF1D44C;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::displayAdjustsBlackLevel(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.hdr.display.adjusts_black_level", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoHDRDefaults::displayAdjustsBlackLevel(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[1112];
}

uint64_t re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::BOOLValue("video.hdr.override.display.adjusts_black_level", v3, &re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(BOOL)::value);
      LOBYTE(this) = v5;
    }
  }

  v1 = byte_1ECF1D469;
  if (!re::VideoHDRDefaults::overrideDisplayAdjustsBlackLevel(BOOL)::value)
  {
    v1 = this;
  }

  return v1 & 1;
}

uint64_t re::VideoHDRDefaults::displayDiagonalSize(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue("video.hdr.display.diagonal_size", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 10;
      }

      re::VideoHDRDefaults::displayDiagonalSize(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 286);
}

uint64_t re::VideoHDRDefaults::displayMaximumBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue("video.hdr.display.nits.max_brightness", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 800;
      }

      re::VideoHDRDefaults::displayMaximumBrightnessInNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 290);
}

uint64_t re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue("video.hdr.override.display.nits.max_brightness", v1, &re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits::value);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayMaximumBrightnessInNits::value)
  {
    return dword_1ECF1D49C;
  }

  else
  {
    return this;
  }
}

uint64_t re::VideoHDRDefaults::displayAverageBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::intValue("video.hdr.display.nits.average_brightness", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 400;
      }

      re::VideoHDRDefaults::displayAverageBrightnessInNits(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 298);
}

uint64_t re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::intValue("video.hdr.override.display.nits.average_brightness", v1, &re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits::value);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayAverageBrightnessInNits::value)
  {
    return dword_1ECF1D4BC;
  }

  else
  {
    return this;
  }
}

float re::VideoHDRDefaults::displayMinimumBrightnessInNits(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.display.nits.min_brightness", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 0.005;
      }

      re::VideoHDRDefaults::displayMinimumBrightnessInNits(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 306);
}

float re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.display.nits.min_brightness", v3, &re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayMinimumBrightnessInNits(float)::value)
  {
    return *&dword_1ECF1D4DC;
  }

  return result;
}

float re::VideoHDRDefaults::displayContrastRatio(re::VideoHDRDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdr.display.contrast_ratio", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 0.000667;
      }

      re::VideoHDRDefaults::displayContrastRatio(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 314);
}

float re::VideoHDRDefaults::overrideDisplayContrastRatio(re::VideoHDRDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.hdr.override.display.contrast_ratio", v3, &re::VideoHDRDefaults::overrideDisplayContrastRatio(float)::value);
      result = v4;
    }
  }

  if (re::VideoHDRDefaults::overrideDisplayContrastRatio(float)::value)
  {
    return *&dword_1ECF1D4FC;
  }

  return result;
}

uint64_t re::VideoHDRDefaults::overridePixelFormat(uint64_t this)
{
  {
    v3 = this;
    LODWORD(this) = v3;
    if (v2)
    {
      re::Defaults::uintValue("video.hdr.override.pixel_format", v1, &re::VideoHDRDefaults::overridePixelFormat::value);
      LODWORD(this) = v3;
    }
  }

  if (re::VideoHDRDefaults::overridePixelFormat::value)
  {
    return dword_1ECF1D50C;
  }

  else
  {
    return this;
  }
}

uint64_t re::VideoHDRDefaults::overrideColorPrimaries(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue("video.hdr.override.color_primaries", v3, &re::VideoHDRDefaults::overrideColorPrimaries(unsigned char)::value);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D51C;
  if (!re::VideoHDRDefaults::overrideColorPrimaries(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

uint64_t re::VideoHDRDefaults::overrideTransferFunction(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue("video.hdr.override.transfer_function", v3, &re::VideoHDRDefaults::overrideTransferFunction(unsigned char)::value);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D52C;
  if (!re::VideoHDRDefaults::overrideTransferFunction(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

uint64_t re::VideoHDRDefaults::overrideYCbCrMatrix(re::VideoHDRDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::uintValue("video.hdr.override.ycbcr_matrix", v3, &re::VideoHDRDefaults::overrideYCbCrMatrix(unsigned char)::value);
      LOBYTE(this) = v5;
    }
  }

  v1 = dword_1ECF1D53C;
  if (!re::VideoHDRDefaults::overrideYCbCrMatrix(unsigned char)::value)
  {
    return this;
  }

  return v1;
}

double re::VideoColorTuner::calculateColor(uint64_t a1, float *a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, int8x16_t a7, int8x16_t a8)
{
  *(a1 + 32) = re::VideoColorTuner::calculateTargetColor(a1, a2, a3->f32, (a1 + 32), a4, a5, a6, a7, a8);
  *(a1 + 40) = v11;
  v20 = *(a1 + 32);
  v12 = powf(a2[1], a3[7].f32[0]);
  v13 = a3[7].f32[1];
  v14 = v13 + (v12 * (1.0 - v13));
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  if (v14 < v13)
  {
    v14 = a3[7].f32[1];
  }

  v20 = vmlaq_n_f32(vmulq_n_f32(v20, v14), a3[6], 1.0 - v14);
  v15.i64[0] = re::SmoothDampener::smooth(&v20, a1 + 48, a1 + 16, a3[5].f32[2], a3[5].f32[1], *a2);
  v15.i64[1] = v16;
  *(a1 + 48) = v15.i64[0];
  *(a1 + 56) = v16;
  v17 = a3[5].f32[0];
  *v18.i32 = 1.0 - v17;
  *&result = vaddq_f32(vdupq_lane_s32(v18, 0), vmulq_n_f32(v15, v17)).u64[0];
  return result;
}

re::VideoDefaults *re::VideoColorTuner::calculateTargetColor(float *a1, float *a2, float *a3, float *a4, float32x4_t *a5, double a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v79 = *MEMORY[0x1E69E9840];
  v14 = re::VideoColorUtils::rgbToHsv(a5->f32, a6, a7, a8, a9);
  v15.i32[0] = v14;
  v75 = v15;
  v16 = *(&v14 + 1);
  v18 = v17;
  v19 = re::VideoDefaults::logEnabled(v14);
  if (v19)
  {
    v54 = *re::videoLogObjects(v19);
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v55)
    {
      v56 = a5->f32[0];
      v57 = a5->f32[1];
      v58 = a5->f32[2];
      *buf = 134218496;
      *&buf[4] = v56;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      v77 = 2048;
      v78 = v58;
      _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input Color: %f, %f, %f", buf, 0x20u);
    }

    v59 = *re::videoLogObjects(v55);
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
    if (v60)
    {
      v61 = (((a5->f32[0] * 100.0) * 254.0) / 100.0);
      v62 = (((a5->f32[1] * 100.0) * 254.0) / 100.0);
      v63 = (a5->f32[2] * 100.0) * 254.0;
      *buf = 134218496;
      *&buf[4] = v61;
      *&buf[12] = 2048;
      *&buf[14] = v62;
      v77 = 2048;
      v78 = (v63 / 100.0);
      _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input Color RGB Values: R:%f, G:%f, B:%f", buf, 0x20u);
    }

    v64 = *re::videoLogObjects(v60);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Input HSV: %f, %f, %f", buf, 0x20u);
    }
  }

  v24 = ((*a2 * *a3) * fabsf((*v75.i32 - COERCE_FLOAT(re::VideoColorUtils::rgbToHsv(a4, v20, v21, v22, v23))) / *a2)) + (*a1 * (1.0 - (*a2 * *a3)));
  *a1 = v24;
  v25 = powf(v16, a3[5]);
  v26 = a3[6];
  v27 = a3[7];
  v28 = ((v24 - a3[2]) / (a3[1] - a3[2])) + 0.0;
  if (v28 > 1.0)
  {
    v28 = 1.0;
  }

  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  v30 = powf(1.0 - v28, a3[3]);
  v31 = v25 * ((v27 * (1.0 - v30)) + (v26 * (1.0 - (1.0 - v30))));
  v32 = vmulq_f32(*a5, xmmword_1E310ADA0);
  v33 = v32.f32[2] + vaddv_f32(*v32.f32);
  if (v33 <= v18)
  {
    v33 = v18;
  }

  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  v74 = 0.0;
  if (v33 >= 0.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = re::VideoDefaults::logEnabled(v29);
  if (v35)
  {
    v65 = *re::videoLogObjects(v35);
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Hue Dependent Saturation: %f, %f, %f", buf, 0x20u);
    }

    v67 = *re::videoLogObjects(v66);
    v35 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
    if (v35)
    {
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor luminance: %f", buf, 0xCu);
    }
  }

  if (v34 > 0.0001)
  {
    v36 = a3[9];
    if (v31 <= v36)
    {
      v36 = v31;
    }

    if (v36 >= 0.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = powf(a3[11], (v34 - a3[10]) * -40.0);
    v74 = (v37 * (1.0 / (v38 + 1.0))) + ((1.0 - (1.0 / (v38 + 1.0))) * 0.0);
  }

  v39 = re::VideoDefaults::logEnabled(v35);
  if (v39)
  {
    v68 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      v77 = 2048;
      v78 = v18;
      _os_log_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Brightness Dependent Saturation: %f, %f, %f", buf, 0x20u);
    }
  }

  v40 = a2[12];
  v41 = a3[12];
  v42 = a3[13];
  v43 = powf(a3[17], (v18 - a3[16]) * -40.0);
  *&v44 = v40 * ((v42 * (1.0 / (v43 + 1.0))) + (v41 * (1.0 - (1.0 / (v43 + 1.0)))));
  v73 = v44;
  v46 = re::VideoDefaults::logEnabled(v45);
  if (v46)
  {
    v69 = *re::videoLogObjects(v46);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *v75.i32;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      v77 = 2048;
      v78 = *&v73;
      _os_log_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output HSV: %f, %f, %f", buf, 0x20u);
    }
  }

  v48 = v75;
  *&v48.i32[1] = v74;
  v48.i32[2] = LODWORD(v73);
  *buf = v48;
  v49 = re::VideoColorUtils::hsvToRgb(buf, v48, v73, v47);
  v51 = v50;
  v52 = re::VideoDefaults::logEnabled(v49);
  if (v52)
  {
    v70 = *re::videoLogObjects(v52);
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
    if (v71)
    {
      *buf = 134218496;
      *&buf[4] = *&v49;
      *&buf[12] = 2048;
      *&buf[14] = *(&v49 + 1);
      v77 = 2048;
      v78 = v51;
      _os_log_impl(&dword_1E1C61000, v70, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output Color: %f, %f, %f", buf, 0x20u);
    }

    v72 = *re::videoLogObjects(v71);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = (((*&v49 * 100.0) * 254.0) / 100.0);
      *&buf[12] = 2048;
      *&buf[14] = (((*(&v49 + 1) * 100.0) * 254.0) / 100.0);
      v77 = 2048;
      v78 = (((v51 * 100.0) * 254.0) / 100.0);
      _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "VideoColorTuner::calculateTargetColor Output Color RGB Values: %f, %f, %f", buf, 0x20u);
    }
  }

  return v49;
}

uint64_t re::VideoTextureCache::init(CVMetalTextureCacheRef *this)
{
  if (*this)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = MTLCreateSystemDefaultDevice();
  LODWORD(v3) = CVMetalTextureCacheCreate(v3, 0, v4, 0, this);

  if (!v3)
  {
    return 1;
  }

  result = 0;
  *this = 0;
  return result;
}

uint64_t re::VideoTextureCache::createTexturesFromPixelBuffer(re::VideoTextureCache *this, CVPixelBufferRef pixelBuffer, re::VideoPixelBufferTextures *a3, int a4, char a5)
{
  if (!pixelBuffer)
  {
    v15 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  if (!*this)
  {
    v15 = *re::videoLogObjects(this);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid texture cache.";
      goto LABEL_24;
    }

    return 1;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (!IOSurface)
  {
    v15 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  v11 = IOSurface;
  PlaneCount = IOSurfaceGetPlaneCount(IOSurface);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  IsTriPlanar = re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType);
  if (IsTriPlanar && PlaneCount != 3)
  {
    v15 = *re::videoLogObjects(IsTriPlanar);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
LABEL_24:
      v23 = texture;
LABEL_25:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, v23, 2u);
      return 1;
    }

    return 1;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (!Width || (v19 = Height) == 0)
  {
    v15 = *re::videoLogObjects(Height);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(texture[0]) = 0;
      v16 = "Invalid input pixel buffer.";
      goto LABEL_24;
    }

    return 1;
  }

  textureOut = 0;
  texture[0] = 0;
  v50 = 0;
  if (re::VideoPlatform::isLegacyDevice(Height) & 1) != 0 || (a5)
  {
    v25 = re::CoreVideoUtils::uncompressedPixelFormat(PixelFormatType);
    v26 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 0, a5);
    if (!v26)
    {
      v15 = *re::videoLogObjects(v26);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v16 = "Could not determine pixel buffer's pixel format for plane 1.";
      goto LABEL_36;
    }

    v27 = *MEMORY[0x1E695E480];
    TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], *this, pixelBuffer, 0, v26, Width, v19, 0, texture);
    if (TextureFromImage)
    {
      v15 = *re::videoLogObjects(TextureFromImage);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v16 = "Unable to create texture from texture cache.";
      goto LABEL_36;
    }

    if (PlaneCount < 2)
    {
      goto LABEL_55;
    }

    v29 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 1, a5);
    if (!v29)
    {
      v34 = *re::videoLogObjects(v29);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v35 = "Could not determine pixel buffer's pixel format for plane 2.";
      goto LABEL_51;
    }

    v30 = v29;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(v11, 1uLL);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v11, 1uLL);
    v33 = CVMetalTextureCacheCreateTextureFromImage(v27, *this, pixelBuffer, 0, v30, WidthOfPlane, HeightOfPlane, 1uLL, &textureOut);
    if (v33)
    {
      v34 = *re::videoLogObjects(v33);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v35 = "Unable to create texture from texture cache.";
      goto LABEL_51;
    }

    if (PlaneCount == 2)
    {
      goto LABEL_55;
    }

    v42 = re::CoreVideoUtils::metalPixelFormatFromPixelFormat(v25, 2, a5);
    if (v42)
    {
      v43 = v42;
      v44 = IOSurfaceGetWidthOfPlane(v11, 2uLL);
      v45 = IOSurfaceGetHeightOfPlane(v11, 2uLL);
      v46 = CVMetalTextureCacheCreateTextureFromImage(v27, *this, pixelBuffer, 0, v43, v44, v45, 2uLL, &v50);
      if (!v46)
      {
        goto LABEL_55;
      }

      v47 = *re::videoLogObjects(v46);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        if (texture[0])
        {
          CFRelease(texture[0]);
        }

        v38 = textureOut;
        if (!textureOut)
        {
          return 1;
        }

        goto LABEL_53;
      }

      *buf = 0;
      v48 = "Unable to create texture from texture cache.";
    }

    else
    {
      v47 = *re::videoLogObjects(v42);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 0;
      v48 = "Could not determine pixel buffer's pixel format for plane 3.";
    }

    _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, v48, buf, 2u);
    goto LABEL_66;
  }

  v20 = re::CoreVideoUtils::metalPixelFormatForPixelBuffer(pixelBuffer, 0, a4);
  if (!v20)
  {
    v15 = *re::videoLogObjects(v20);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v16 = "Could not determine pixel buffer's pixel format for plane 1.";
    goto LABEL_36;
  }

  v21 = *MEMORY[0x1E695E480];
  v22 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], *this, pixelBuffer, 0, v20, Width, v19, 0, texture);
  if (v22)
  {
    v15 = *re::videoLogObjects(v22);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v16 = "Unable to create texture from texture cache.";
LABEL_36:
    v23 = buf;
    goto LABEL_25;
  }

  if (PlaneCount != 3)
  {
    goto LABEL_55;
  }

  v36 = re::CoreVideoUtils::metalPixelFormatForPixelBuffer(pixelBuffer, 2, a4);
  if (!v36)
  {
    v34 = *re::videoLogObjects(v36);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v35 = "Could not determine pixel buffer's pixel format for plane 3.";
LABEL_51:
    _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
LABEL_52:
    v38 = texture[0];
    if (!texture[0])
    {
      return 1;
    }

LABEL_53:
    CFRelease(v38);
    return 1;
  }

  v37 = CVMetalTextureCacheCreateTextureFromImage(v21, *this, pixelBuffer, 0, v36, Width, v19, 2uLL, &textureOut);
  if (v37)
  {
    v34 = *re::videoLogObjects(v37);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v35 = "Unable to create texture from texture cache.";
    goto LABEL_51;
  }

LABEL_55:
  v39 = texture[0];
  CVPixelBufferRetain(texture[0]);
  *(a3 + 13) = v39;
  v40 = textureOut;
  CVPixelBufferRetain(textureOut);
  *(a3 + 14) = v40;
  v41 = v50;
  CVPixelBufferRetain(v50);
  *(a3 + 15) = v41;
  if (texture[0])
  {
    CFRelease(texture[0]);
  }

  if (textureOut)
  {
    CFRelease(textureOut);
  }

  result = v50;
  if (v50)
  {
    CFRelease(v50);
    return 0;
  }

  return result;
}

uint64_t re::memoryAttributionVideoPixelBufferPool(re *this, const re::VideoPixelBufferPool *a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = *(this + 1);
  if (v2)
  {
    v4 = re::VideoPixelBufferPool::numPooledPixelBuffers(this);
    if (v4)
    {
      v7 = 1;
      v5 = re::globalAllocators(v4)[2];
      v9[0] = &unk_1F5D1B040;
      v9[1] = &v7;
      v9[2] = &v8;
      v9[3] = v5;
      v9[4] = v9;
      re::VideoPixelBufferPool::iterateIOSurface(this);
      re::FunctionBase<24ul,void ()(__IOSurface *)>::destroyCallable(v9);
      LOBYTE(v2) = v7;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t re::memoryAttributionCVPixelBufferPool(re *this, __CVPixelBufferPool *const *a2)
{
  v2 = *this;
  if (*this)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966188], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966180], v4);
    CVPixelBufferPoolScanIOSurfacesWithOptions();
    CFRelease(Mutable);
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

__CVBuffer *re::memoryAttributionVideoPixelBuffer(__CVBuffer **a1, int a2)
{
  result = *a1;
  if (result)
  {
    IOSurface = CVPixelBufferGetIOSurface(result);
    CFRetain(IOSurface);
    v8 = IOSurface;
    if (!IOSurface)
    {
      return 0;
    }

    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    v6 = CVPixelBufferGetIOSurface(result);
    CFRetain(v6);
    v8 = v6;
    if (a2 && v6)
    {
      v7 = IOSurfaceSetOwnershipIdentity() == 0;
    }

    else
    {
      v7 = 0;
      result = 0;
      if (!v6)
      {
        return result;
      }
    }

    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
    return v7;
  }

  return result;
}

__CVBuffer *re::memoryAttributionCVPixelBuffer(__CVBuffer **this, __CVBuffer *const *a2)
{
  result = *this;
  if (result)
  {
    v3 = a2;
    IOSurface = CVPixelBufferGetIOSurface(result);
    result = 0;
    if (v3)
    {
      if (IOSurface)
      {
        return (IOSurfaceSetOwnershipIdentity() == 0);
      }
    }
  }

  return result;
}

BOOL re::memoryAttributionMTLResource(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a1;
    v2 = (objc_opt_respondsToSelector() & 1) != 0 && [v4 setOwnerWithIdentity:a2] == 0;
  }

  return v2;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **(a1 + 16) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    result = IOSurfaceSetOwnershipIdentity();
    v5 = result == 0;
  }

  **(a1 + 8) &= v5;
  return result;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B040;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::memoryAttributionVideoPixelBufferPool(re::VideoPixelBufferPool const&,unsigned int)::$_0,void ()(__IOSurface *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1B040;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(__IOSurface *)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::memoryAttributionCVPixelBufferPool(__CVPixelBufferPool * const&,unsigned int)::$_0::__invoke(uint64_t result, uint64_t a2)
{
  v3 = 0;
  if (result && *(a2 + 4))
  {
    result = IOSurfaceSetOwnershipIdentity();
    v3 = result == 0;
  }

  *a2 &= v3;
  return result;
}

BOOL re::VideoPipelineHDRConfigGenerator::init(re::VideoPipelineHDRConfigGenerator *this, int a2, int a3, int a4, int a5, int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    return 0;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[3] = a6;
  v27 = 1;
  v10 = re::VideoDefaults::logEnabled(this);
  if (v10)
  {
    v23 = *re::videoLogObjects(v10);
    v10 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v24 = v23;
      *buf = 136315394;
      *&buf[4] = "(undefined)";
      *&buf[12] = 1024;
      *&buf[14] = a5;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[VideoHDRConfigGenerator]->init :: HDR pixel format: %s (%d)", buf, 0x12u);
    }
  }

  if (!a5)
  {
    v12 = *re::videoLogObjects(v10);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 134217984;
      *&buf[4] = 0;
      v13 = "Unsupported output pixel format '%llu'.";
      v14 = v12;
      v15 = 12;
LABEL_24:
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      return 0;
    }

    return result;
  }

  v25[4] = a5;
  switch(a4)
  {
    case 1:
      v11 = MEMORY[0x1E6965DB8];
      break;
    case 9:
      v11 = MEMORY[0x1E6965DB0];
      break;
    case 12:
      v11 = MEMORY[0x1E6965DD0];
      break;
    default:
      goto LABEL_19;
  }

  v16 = *v11;
  if (v16)
  {
    v26 = v16;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getHDRProcessorClass(void)::softClass;
    v31 = getHDRProcessorClass(void)::softClass;
    if (!getHDRProcessorClass(void)::softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL20getHDRProcessorClassv_block_invoke_0;
      v33 = &unk_1E8722530;
      v34 = &v28;
      ___ZL20getHDRProcessorClassv_block_invoke_0(buf);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = [[v17 alloc] initWithConfig:v25];
    v20 = *this;
    *this = v19;

    if (*this)
    {
      return 1;
    }

    v22 = *re::videoLogObjects(v21);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v13 = "Could not create HDR processor.";
      goto LABEL_23;
    }

    return result;
  }

LABEL_19:
  v22 = *re::videoLogObjects(v10);
  result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v13 = "Target color primaries not supported.";
LABEL_23:
    v14 = v22;
    v15 = 2;
    goto LABEL_24;
  }

  return result;
}

uint64_t re::VideoPipelineHDRConfigGenerator::createConfig(re::VideoDefaults *a1, re **a2, re **a3, unsigned int *a4, float *a5, uint64_t a6)
{
  v147 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v12 = re::VideoDefaults::logEnabled(a1);
    if (v12)
    {
      goto LABEL_120;
    }

    while (1)
    {
      v13 = *a2;
      if (!*a2)
      {
        v76 = *re::videoLogObjects(0);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 0;
        v77 = "[VideoHDRConfigGenerator::createConfig]: invalid input pixel buffer.";
        goto LABEL_76;
      }

      if (!*a3)
      {
        v76 = *re::videoLogObjects(v13);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 0;
        v77 = "[VideoHDRConfigGenerator::createConfig]: invalid output pixel buffer.";
LABEL_76:
        _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, v77, buf, 2u);
        return 1;
      }

      IOSurface = CVPixelBufferGetIOSurface(v13);
      CFRetain(IOSurface);
      v119 = IOSurface;
      v15 = *a3;
      if (!*a3)
      {
        v118 = 0;
        if (IOSurface)
        {
LABEL_80:
          v80 = *re::videoLogObjects(v15);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v80, OS_LOG_TYPE_ERROR, "[VideoHDRConfigGenerator::createConfig]: invalid output IO surface.", buf, 2u);
          }

          v78 = 1;
LABEL_89:
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v119);
          return v78;
        }

        v16 = 0;
LABEL_84:
        v81 = *re::videoLogObjects(v15);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "[VideoHDRConfigGenerator::createConfig]: invalid input IO surface.", buf, 2u);
        }

        v82 = 1;
        v78 = 1;
        if (!v16)
        {
          goto LABEL_88;
        }

LABEL_87:
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v118);
        goto LABEL_88;
      }

      v16 = CVPixelBufferGetIOSurface(v15);
      v15 = CFRetain(v16);
      v118 = v16;
      if (!IOSurface)
      {
        goto LABEL_84;
      }

      if (!v16)
      {
        goto LABEL_80;
      }

      a3 = [MEMORY[0x1E695DF90] dictionary];
      v17 = getkHDRProcessingDolbyVisionRPUDataKey();
      v18 = IOSurfaceCopyValue(IOSurface, v17);
      if (IOSurfaceGetPixelFormat(IOSurface) == 1380411457)
      {
        break;
      }

      v146 = 0;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      *buf = 0u;
      v139 = 0u;
      re::_IOSurfaceGetBulkAttachments(IOSurface, buf);
      if (v83)
      {
        v84 = *re::videoLogObjects(v83);
        v19 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          *v129 = 0;
          _os_log_error_impl(&dword_1E1C61000, v84, OS_LOG_TYPE_ERROR, "Unable to read input surface properties.", v129, 2u);
        }

LABEL_93:
        v85 = *re::videoLogObjects(v19);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_ERROR, "Unable to determine HDR content type of input surface.", buf, 2u);
        }

        v75 = 0;
LABEL_96:

        v86 = *a1;
        v88 = v118;
        v87 = v119;
        v117 = 0;
        v89 = [v86 generateMSRColorConfigWithOperation:3 inputSurface:v119 outputSurface:v118 metadata:v75 histogram:0 config:&v117];
        v90 = v117;
        v91 = v90;
        if (v89 == -17000)
        {
          if (v90)
          {
            if (*a6)
            {
              re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a6);
            }

            *a6 = v91;
            CFRetain(v91);
            v92 = [v75 allKeys];
            *(a6 + 8) = [v92 containsObject:getkHDRProcessingDolbyVisionRPUDataKey()];

            v78 = 0;
LABEL_108:

            v82 = v87 == 0;
            if (!v88)
            {
LABEL_88:
              if (v82)
              {
                return v78;
              }

              goto LABEL_89;
            }

            goto LABEL_87;
          }

          v97 = *re::videoLogObjects(0);
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
LABEL_107:
            v78 = 1;
            goto LABEL_108;
          }

          *buf = 0;
          v94 = "[VideoHDRConfigGenerator::createConfig]: invalid hardware params.";
          v95 = v97;
          v96 = 2;
        }

        else
        {
          v93 = *re::videoLogObjects(v90);
          if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          *buf = 134217984;
          *&buf[4] = v89;
          v94 = "[VideoHDRConfigGenerator::createConfig]: Failed to generate MSR color config with error %ld.";
          v95 = v93;
          v96 = 12;
        }

        _os_log_error_impl(&dword_1E1C61000, v95, OS_LOG_TYPE_ERROR, v94, buf, v96);
        goto LABEL_107;
      }

      if (v18 && (BYTE12(v141) & 0xFD) == 0x10)
      {
        v19 = getkHDRProcessingSourceContentTypeDolbyVision();
      }

      else
      {
        if (BYTE12(v141) != 18)
        {
          if (BYTE12(v141) == 16 && BYTE11(v141) <= 0xCu && ((1 << SBYTE11(v141)) & 0x1202) != 0)
          {
            break;
          }

          v19 = IOSurfaceCopyValue(IOSurface, @"isHLG");
          if (!v19)
          {
            goto LABEL_93;
          }

          v98 = v19;
          Value = CFBooleanGetValue(v19);
          CFRelease(v98);
          if (!Value)
          {
            goto LABEL_93;
          }
        }

        v19 = getkHDRProcessingSourceContentTypeHLG();
      }

LABEL_10:
      v20 = v19;
      if (!v19)
      {
        goto LABEL_93;
      }

      if (re::VideoDefaults::logEnabled(v19))
      {
        v101 = [MEMORY[0x1E696AD60] stringWithString:@"HDR Processing Parameters"];
        [v101 appendFormat:@"\n                 Source Content Type: %s", CFStringGetCStringPtr(v20, 0x8000100u)];
        [v101 appendFormat:@"\n                       Max EDR Value: %f", a5[1]];
        [v101 appendFormat:@"\n                      Max EDR Factor: %f", a5[2]];
        [v101 appendFormat:@"\n                    Current Max Nits: %f", a5[3]];
        [v101 appendFormat:@"\n                Current Minimum Nits: %f", a5[4]];
        [v101 appendFormat:@"\n               Ambient Light in Nits: %f", a5[6]];
        [v101 appendFormat:@"\n          SDR Max Brightness in Nits: %f", a5[7]];
        [v101 appendFormat:@"\n     Display Diagonal Size in Inches: %d", *a4];
        [v101 appendFormat:@"\n      Display Max Brightness in Nits: %d", a4[1]];
        [v101 appendFormat:@"\n  Display Average Brightness in Nits: %d", a4[2]];
        [v101 appendFormat:@"\n  Display Minimum Brightness in Nits: %f", *(a4 + 3)];
        v102 = *re::videoLogObjects([v101 appendFormat:@"\n              Display Contrast Ratio: %f", *(a4 + 4)]);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v103 = v101;
          v104 = v102;
          v105 = [v101 cStringUsingEncoding:1];
          *buf = 136315138;
          *&buf[4] = v105;
          _os_log_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        }
      }

      *v129 = 0;
      v130 = v129;
      v131 = 0x2020000000;
      a2 = &qword_1EE1C4000;
      v21 = _MergedGlobals_577;
      v132 = _MergedGlobals_577;
      if (!_MergedGlobals_577)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v139 = ___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke_0;
        *(&v139 + 1) = &unk_1E8722530;
        *&v140 = v129;
        v22 = HDRProcessingLibrary();
        v23 = dlsym(v22, "kHDRProcessingDisplayPipelineCompensationTypeNone");
        *(*(v140 + 8) + 24) = v23;
        _MergedGlobals_577 = *(*(v140 + 8) + 24);
        v21 = *(v130 + 3);
      }

      _Block_object_dispose(v129, 8);
      if (v21)
      {
        a2 = *v21;
        *v129 = 0;
        v130 = v129;
        v131 = 0x2020000000;
        v24 = qword_1EE1C47D0;
        v132 = qword_1EE1C47D0;
        if (!qword_1EE1C47D0)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&v139 = ___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke_0;
          *(&v139 + 1) = &unk_1E8722530;
          *&v140 = v129;
          v25 = HDRProcessingLibrary();
          v26 = dlsym(v25, "kHDRProcessingDisplayPipelineCompensationType");
          *(*(v140 + 8) + 24) = v26;
          qword_1EE1C47D0 = *(*(v140 + 8) + 24);
          v24 = *(v130 + 3);
        }

        _Block_object_dispose(v129, 8);
        if (v24)
        {
          [a3 setValue:a2 forKey:*v24];
          v27 = getkHDRProcessingSourceContentTypeDolbyVision();
          if (v18 && v20 == v27)
          {
            [a3 setValue:v18 forKey:getkHDRProcessingDolbyVisionRPUDataKey()];
          }

          *&v28 = a5[7];
          v29 = [MEMORY[0x1E696AD98] numberWithFloat:{v28, v106}];
          *v129 = 0;
          v130 = v129;
          v131 = 0x2020000000;
          v30 = qword_1EE1C47D8;
          v132 = qword_1EE1C47D8;
          if (!qword_1EE1C47D8)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&v139 = ___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke_0;
            *(&v139 + 1) = &unk_1E8722530;
            *&v140 = v129;
            v31 = HDRProcessingLibrary();
            v32 = dlsym(v31, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
            *(*(v140 + 8) + 24) = v32;
            qword_1EE1C47D8 = *(*(v140 + 8) + 24);
            v30 = *(v130 + 3);
          }

          a2 = v129;
          _Block_object_dispose(v129, 8);
          if (v30)
          {
            [a3 setValue:v29 forKey:*v30];
            *&v33 = a5[1];
            v116 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
            *v129 = 0;
            v130 = v129;
            v131 = 0x2020000000;
            v34 = qword_1EE1C47E0;
            v132 = qword_1EE1C47E0;
            if (!qword_1EE1C47E0)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&v139 = ___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke_0;
              *(&v139 + 1) = &unk_1E8722530;
              *&v140 = v129;
              v35 = HDRProcessingLibrary();
              v36 = dlsym(v35, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
              *(*(v140 + 8) + 24) = v36;
              qword_1EE1C47E0 = *(*(v140 + 8) + 24);
              v34 = *(v130 + 3);
            }

            a2 = v129;
            _Block_object_dispose(v129, 8);
            if (v34)
            {
              [a3 setValue:v116 forKey:*v34];
              *&v37 = a5[2];
              v115 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
              *v129 = 0;
              v130 = v129;
              v131 = 0x2020000000;
              v38 = qword_1EE1C47E8;
              v132 = qword_1EE1C47E8;
              if (!qword_1EE1C47E8)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&v139 = ___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke_0;
                *(&v139 + 1) = &unk_1E8722530;
                *&v140 = v129;
                v39 = HDRProcessingLibrary();
                v40 = dlsym(v39, "kHDRProcessingEDRFactorKey");
                *(*(v140 + 8) + 24) = v40;
                qword_1EE1C47E8 = *(*(v140 + 8) + 24);
                v38 = *(v130 + 3);
              }

              a2 = v129;
              _Block_object_dispose(v129, 8);
              if (v38)
              {
                [a3 setValue:v115 forKey:*v38];
                *&v41 = a5[3] * a5[1];
                v114 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
                *v129 = 0;
                v130 = v129;
                v131 = 0x2020000000;
                v42 = qword_1EE1C47F0;
                v132 = qword_1EE1C47F0;
                if (!qword_1EE1C47F0)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&v139 = ___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke_0;
                  *(&v139 + 1) = &unk_1E8722530;
                  *&v140 = v129;
                  v43 = HDRProcessingLibrary();
                  v44 = dlsym(v43, "kHDRProcessingCurrentMaxPanelNitsKey");
                  *(*(v140 + 8) + 24) = v44;
                  qword_1EE1C47F0 = *(*(v140 + 8) + 24);
                  v42 = *(v130 + 3);
                }

                a2 = v129;
                _Block_object_dispose(v129, 8);
                if (v42)
                {
                  [a3 setValue:v114 forKey:*v42];
                  *&v45 = a5[4];
                  v113 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
                  *v129 = 0;
                  v130 = v129;
                  v131 = 0x2020000000;
                  v46 = qword_1EE1C47F8;
                  v132 = qword_1EE1C47F8;
                  if (!qword_1EE1C47F8)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&v139 = ___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke_0;
                    *(&v139 + 1) = &unk_1E8722530;
                    *&v140 = v129;
                    v47 = HDRProcessingLibrary();
                    v48 = dlsym(v47, "kHDRProcessingCurrentMinPanelNitsKey");
                    *(*(v140 + 8) + 24) = v48;
                    qword_1EE1C47F8 = *(*(v140 + 8) + 24);
                    v46 = *(v130 + 3);
                  }

                  a2 = v129;
                  _Block_object_dispose(v129, 8);
                  if (v46)
                  {
                    [a3 setValue:v113 forKey:*v46];
                    *&v49 = a5[6];
                    v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
                    *v129 = 0;
                    v130 = v129;
                    v131 = 0x2020000000;
                    a5 = qword_1EE1C4800;
                    v132 = qword_1EE1C4800;
                    if (!qword_1EE1C4800)
                    {
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&v139 = ___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke_0;
                      *(&v139 + 1) = &unk_1E8722530;
                      *&v140 = v129;
                      v51 = HDRProcessingLibrary();
                      v52 = dlsym(v51, "kHDRProcessingAmbientLightInNitsKey");
                      *(*(v140 + 8) + 24) = v52;
                      qword_1EE1C4800 = *(*(v140 + 8) + 24);
                      a5 = *(v130 + 3);
                    }

                    a2 = v129;
                    _Block_object_dispose(v129, 8);
                    if (a5)
                    {
                      [a3 setValue:v50 forKey:*a5];
                      v112 = [MEMORY[0x1E696AD98] numberWithInt:*(a4 + 20)];
                      *v129 = 0;
                      v130 = v129;
                      v131 = 0x2020000000;
                      a5 = qword_1EE1C4808;
                      v132 = qword_1EE1C4808;
                      if (!qword_1EE1C4808)
                      {
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&v139 = ___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke_0;
                        *(&v139 + 1) = &unk_1E8722530;
                        *&v140 = v129;
                        v53 = HDRProcessingLibrary();
                        v54 = dlsym(v53, "kHDRProcessingDisplayAdjustsBlackLevelKey");
                        *(*(v140 + 8) + 24) = v54;
                        qword_1EE1C4808 = *(*(v140 + 8) + 24);
                        a5 = *(v130 + 3);
                      }

                      a2 = v129;
                      _Block_object_dispose(v129, 8);
                      if (a5)
                      {
                        [a3 setValue:v112 forKey:*a5];
                        v111 = [MEMORY[0x1E696AD98] numberWithInt:0];
                        *v129 = 0;
                        v130 = v129;
                        v131 = 0x2020000000;
                        a5 = qword_1EE1C4810;
                        v132 = qword_1EE1C4810;
                        if (!qword_1EE1C4810)
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&v139 = ___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke_0;
                          *(&v139 + 1) = &unk_1E8722530;
                          *&v140 = v129;
                          v55 = HDRProcessingLibrary();
                          v56 = dlsym(v55, "kHDRProcessingOrientationKey");
                          *(*(v140 + 8) + 24) = v56;
                          qword_1EE1C4810 = *(*(v140 + 8) + 24);
                          a5 = *(v130 + 3);
                        }

                        a2 = v129;
                        _Block_object_dispose(v129, 8);
                        if (a5)
                        {
                          [a3 setValue:v111 forKey:*a5];
                          *v129 = 0;
                          v130 = v129;
                          v131 = 0x2020000000;
                          a2 = &qword_1EE1C4000;
                          a5 = qword_1EE1C4818;
                          v132 = qword_1EE1C4818;
                          if (!qword_1EE1C4818)
                          {
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 3221225472;
                            *&v139 = ___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke_0;
                            *(&v139 + 1) = &unk_1E8722530;
                            *&v140 = v129;
                            v57 = HDRProcessingLibrary();
                            v58 = dlsym(v57, "kHDRProcessingSourceContentTypeKey");
                            *(*(v140 + 8) + 24) = v58;
                            qword_1EE1C4818 = *(*(v140 + 8) + 24);
                            a5 = *(v130 + 3);
                          }

                          _Block_object_dispose(v129, 8);
                          if (a5)
                          {
                            v136 = *a5;
                            v137 = v20;
                            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                            *v129 = getkHDRProcessingDestinationDisplayTypeKey();
                            *buf = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                            v125 = 0;
                            v126 = &v125;
                            v127 = 0x2020000000;
                            a5 = qword_1EE1C4820;
                            v128 = qword_1EE1C4820;
                            if (!qword_1EE1C4820)
                            {
                              v120 = MEMORY[0x1E69E9820];
                              v121 = 3221225472;
                              v122 = ___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke_0;
                              v123 = &unk_1E8722530;
                              v124 = &v125;
                              v60 = HDRProcessingLibrary();
                              v126[3] = dlsym(v60, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
                              qword_1EE1C4820 = *(v124[1] + 24);
                              a5 = v126[3];
                            }

                            v110 = v18;
                            a2 = &v125;
                            _Block_object_dispose(&v125, 8);
                            if (a5)
                            {
                              v130 = *a5;
                              v61 = [MEMORY[0x1E696AD98] numberWithInt:*a4];
                              *&buf[8] = v61;
                              v125 = 0;
                              v126 = &v125;
                              v127 = 0x2020000000;
                              a5 = qword_1EE1C4828;
                              v128 = qword_1EE1C4828;
                              if (!qword_1EE1C4828)
                              {
                                v120 = MEMORY[0x1E69E9820];
                                v121 = 3221225472;
                                v122 = ___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                v123 = &unk_1E8722530;
                                v124 = &v125;
                                v62 = HDRProcessingLibrary();
                                v126[3] = dlsym(v62, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
                                qword_1EE1C4828 = *(v124[1] + 24);
                                a5 = v126[3];
                              }

                              v109 = v50;
                              a2 = &v125;
                              _Block_object_dispose(&v125, 8);
                              if (a5)
                              {
                                v131 = *a5;
                                v63 = [MEMORY[0x1E696AD98] numberWithInt:a4[1]];
                                *&v139 = v63;
                                v125 = 0;
                                v126 = &v125;
                                v127 = 0x2020000000;
                                a5 = qword_1EE1C4830;
                                v128 = qword_1EE1C4830;
                                if (!qword_1EE1C4830)
                                {
                                  v120 = MEMORY[0x1E69E9820];
                                  v121 = 3221225472;
                                  v122 = ___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                  v123 = &unk_1E8722530;
                                  v124 = &v125;
                                  v64 = HDRProcessingLibrary();
                                  v126[3] = dlsym(v64, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
                                  qword_1EE1C4830 = *(v124[1] + 24);
                                  a5 = v126[3];
                                }

                                v108 = v59;
                                a2 = &v125;
                                _Block_object_dispose(&v125, 8);
                                if (a5)
                                {
                                  v107 = v29;
                                  v132 = *a5;
                                  a5 = [MEMORY[0x1E696AD98] numberWithInt:a4[2]];
                                  *(&v139 + 1) = a5;
                                  v125 = 0;
                                  v126 = &v125;
                                  v127 = 0x2020000000;
                                  a2 = &qword_1EE1C4000;
                                  v65 = qword_1EE1C4838;
                                  v128 = qword_1EE1C4838;
                                  if (!qword_1EE1C4838)
                                  {
                                    v120 = MEMORY[0x1E69E9820];
                                    v121 = 3221225472;
                                    v122 = ___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke_0;
                                    v123 = &unk_1E8722530;
                                    v124 = &v125;
                                    v66 = HDRProcessingLibrary();
                                    v126[3] = dlsym(v66, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
                                    qword_1EE1C4838 = *(v124[1] + 24);
                                    v65 = v126[3];
                                  }

                                  _Block_object_dispose(&v125, 8);
                                  if (v65)
                                  {
                                    v133 = *v65;
                                    LODWORD(v67) = a4[3];
                                    a2 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
                                    *&v140 = a2;
                                    v125 = 0;
                                    v126 = &v125;
                                    v127 = 0x2020000000;
                                    v68 = qword_1EE1C4840;
                                    v128 = qword_1EE1C4840;
                                    if (!qword_1EE1C4840)
                                    {
                                      v120 = MEMORY[0x1E69E9820];
                                      v121 = 3221225472;
                                      v122 = ___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke_0;
                                      v123 = &unk_1E8722530;
                                      v124 = &v125;
                                      v69 = HDRProcessingLibrary();
                                      v126[3] = dlsym(v69, "kHDRProcessingDisplayContrastRatioKey");
                                      qword_1EE1C4840 = *(v124[1] + 24);
                                      v68 = v126[3];
                                    }

                                    _Block_object_dispose(&v125, 8);
                                    if (v68)
                                    {
                                      v134 = *v68;
                                      LODWORD(v70) = a4[4];
                                      v71 = [MEMORY[0x1E696AD98] numberWithFloat:v70];
                                      *(&v140 + 1) = v71;
                                      v135 = getkHDRProcessingDestinationDisplayTypeKey();
                                      *&v141 = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                                      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v129 count:7];

                                      v125 = 0;
                                      v126 = &v125;
                                      v127 = 0x2020000000;
                                      a4 = qword_1EE1C4848;
                                      v128 = qword_1EE1C4848;
                                      if (!qword_1EE1C4848)
                                      {
                                        v120 = MEMORY[0x1E69E9820];
                                        v121 = 3221225472;
                                        v122 = ___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke_0;
                                        v123 = &unk_1E8722530;
                                        v124 = &v125;
                                        v73 = HDRProcessingLibrary();
                                        v126[3] = dlsym(v73, "kHDRProcessingDisplayKey");
                                        qword_1EE1C4848 = *(v124[1] + 24);
                                        a4 = v126[3];
                                      }

                                      a2 = &v125;
                                      _Block_object_dispose(&v125, 8);
                                      a5 = v109;
                                      v18 = v110;
                                      if (a4)
                                      {
                                        [a3 setValue:v72 forKey:*a4];
                                        v125 = 0;
                                        v126 = &v125;
                                        v127 = 0x2020000000;
                                        a2 = &qword_1EE1C4000;
                                        a4 = qword_1EE1C4850;
                                        v128 = qword_1EE1C4850;
                                        if (!qword_1EE1C4850)
                                        {
                                          v120 = MEMORY[0x1E69E9820];
                                          v121 = 3221225472;
                                          v122 = ___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke_0;
                                          v123 = &unk_1E8722530;
                                          v124 = &v125;
                                          v74 = HDRProcessingLibrary();
                                          v126[3] = dlsym(v74, "kHDRProcessingSourceContentKey");
                                          qword_1EE1C4850 = *(v124[1] + 24);
                                          a4 = v126[3];
                                        }

                                        _Block_object_dispose(&v125, 8);
                                        if (a4)
                                        {
                                          [a3 setValue:v108 forKey:*a4];
                                          v75 = a3;

                                          goto LABEL_96;
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
        }
      }

      v106 = dlerror();
      v12 = abort_report_np();
LABEL_120:
      v100 = *re::videoLogObjects(v12);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_DEFAULT, "Using Legacy HDRProcessing SPI", buf, 2u);
      }
    }

    v19 = getkHDRProcessingSourceContentTypeHDR10();
    goto LABEL_10;
  }

  v76 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v77 = "VideoHDRConfigGenerator is not initialized.";
    goto LABEL_76;
  }

  return 1;
}

Class ___ZL20getHDRProcessorClassv_block_invoke_0(uint64_t a1)
{
  HDRProcessingLibrary();
  result = objc_getClass("HDRProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHDRProcessorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return HDRProcessingLibrary();
  }

  return result;
}

uint64_t ___ZL24HDRProcessingLibraryCorePPc_block_invoke_0()
{
  result = _sl_dlopen();
  HDRProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL48getkHDRProcessingSourceContentTypeHDR10SymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHDR10");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeHLGSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHLG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationTypeNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_577 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkHDRProcessingSourceContentTypeDolbyVisionSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeDolbyVision");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingEDRFactorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMaxPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMinPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingAmbientLightInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4800 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAdjustsBlackLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingOrientationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4810 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4818 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkHDRProcessingDestinationDisplayTypeKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeInternalPanel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4820 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4830 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4838 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayContrastRatioKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4840 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4850 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingDolbyVisionRPUDataKeySymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDolbyVisionRPUDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t re::VideoPipelineUpscalingNode::createUpscalingConfig(uint64_t a1, unint64_t a2, CVPixelBufferRef *a3, CVPixelBufferRef *a4, uint64_t a5)
{
  if (a2 >= 2)
  {
    v5 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[VideoPipelineUpscalingNode::createUpscalingConfig] Channel index out of range.", buf, 2u);
    }

    return 1;
  }

  v11 = a1 + 16 * a2;
  v13 = *(v11 + 56);
  v12 = (v11 + 56);
  if (!v13)
  {
    operator new();
  }

  if (*a3)
  {
    Width = CVPixelBufferGetWidth(*a3);
    if (*a3)
    {
      Height = CVPixelBufferGetHeight(*a3);
      goto LABEL_12;
    }
  }

  else
  {
    Width = 0;
  }

  Height = 0;
LABEL_12:
  if (!*a4)
  {
    v16 = 0;
    goto LABEL_16;
  }

  v16 = CVPixelBufferGetWidth(*a4);
  if (!*a4)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v17 = CVPixelBufferGetHeight(*a4);
LABEL_17:
  v18 = *v12;
  v20 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v6 = re::VideoPipelineASEConfigGenerator::createConfig((a1 + 16), Width, Height, v16, v17, &v20, a5);
  if (*(&v20 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v20 + 1));
  }

  return v6;
}

uint64_t re::VideoPipelineMipGenNode::init(uint64_t a1, id *a2)
{
  re::VideoTextureCache::init((a1 + 16));
  v4 = *a2;
  v8 = v4;
  v6 = *(a1 + 72);
  v5 = (a1 + 72);
  if (!v6)
  {
    re::ObjCObject::operator=(v5, &v8);
  }

  return 0;
}

uint64_t re::VideoPipelineMipGenNode::execute(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v8 = a6;
  v92 = *MEMORY[0x1E69E9840];
  isa = a6[265].isa;
  v11 = re::VideoDefaults::mipmapPixelsPerSecondMax(497664000);
  j = vcvtpd_u64_f64(v11 * 0.1);
  v13 = re::VideoDefaults::logEnabled(v11);
  if (v13)
  {
    goto LABEL_96;
  }

LABEL_2:
  if (isa > v11 + j)
  {
    v14 = *re::videoLogObjects(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] Exceeded pixels per second. Skipping.", buf, 2u);
    }

    return 4;
  }

  re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(a7 + 72, *(a3 + 72));
  if (!*(a3 + 72))
  {
    return 0;
  }

  v11 = 0;
  v66 = a7;
  v67 = a3 + 88;
  v64 = a7 + 88;
  v65 = a3;
  isa = buf;
  while (1)
  {
    v18 = *(a7 + 72);
    if (v18 <= v11)
    {
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v11, v18);
      v13 = _os_crash();
      __break(1u);
LABEL_96:
      v61 = v8[257].isa;
      v62 = v8[256].isa;
      v8 = *re::videoLogObjects(v13);
      v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        *buf = 134218752;
        *&buf[4] = isa;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        *&buf[22] = 2048;
        *v85 = j;
        *&v85[8] = 2048;
        *&v85[10] = v61 - v62;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] pixelsPerSecond: %lld / %lld (+ %lld) (%zu samples)", buf, 0x2Au);
      }

      goto LABEL_2;
    }

    v19 = v67 + 160 * v11;
    v20 = *(v19 + 128);
    if (v20 != 1)
    {
      if (!v20)
      {
        v57 = *re::videoLogObjects(v16);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v58 = "[VideoPipelineMipGenNode::execute] Image not valid. Skipping.";
          goto LABEL_94;
        }

        return 1;
      }

      v21 = re::VideoImage::planeCount(v67 + 160 * v11);
      if (v21 != 1)
      {
        v59 = *re::videoLogObjects(v21);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_91;
        }

        return 4;
      }
    }

    v22 = re::VideoImage::planeCount(v19);
    if (v22 >= 3)
    {
      v59 = *re::videoLogObjects(v22);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        return 4;
      }

      *buf = 0;
LABEL_91:
      _os_log_error_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Content does not have only one working plane.", buf, 2u);
      return 4;
    }

    v23 = *(v19 + 128);
    if (v23 != 3)
    {
      break;
    }

    re::VideoImage::asMetalTextures(v19, buf);
    v27 = *(&v89 + 1);
    for (i = 120; i != 96; i -= 8)
    {
    }

LABEL_29:
    if (v89)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v89);
    }

LABEL_55:
    if (!v27)
    {
LABEL_80:
      v57 = *re::videoLogObjects(v22);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v58 = "[VideoPipelineMipGenNode::execute] Resolved input texture is not valid.";
LABEL_94:
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, v58, buf, 2u);
        return 1;
      }

      return 1;
    }

    isConvertibleToLinearRGBColorModel = re::CoreVideoUtils::isConvertibleToLinearRGBColorModel([v27 pixelFormat]);
    if ((isConvertibleToLinearRGBColorModel & 1) == 0)
    {
      v60 = *re::videoLogObjects(isConvertibleToLinearRGBColorModel);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "[VideoPipelineMipGenNode::execute] Resolved input texture can not be converted to use a linear RGB color model. Skipping.", buf, 2u);
      }

      return 4;
    }

    v37 = [v27 pixelFormat];
    v38 = [v27 width];
    v39 = [v27 height];
    v40 = re::CoreVideoUtils::convertToLinearRGBColorModel(v37);
    a1[84] = *(a2 + 14);
    v41 = [v27 protectionOptions];
    v43 = re::VideoTextureAllocator::createTexture((a1 + 24), v38, v39, v40, MTLStorageModePrivate, 3, 1, 1, v42, v41);
    v44 = re::VideoImage::colorTags(v19);
    v45 = v44;
    v46 = v44 >> 8;
    v47 = HIWORD(v44);
    if (re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction(v37))
    {
      v48 = 8;
    }

    else
    {
      v48 = v46;
    }

    re::VideoImage::rectangularMask(v19, v11, v80);
    v72 = *MEMORY[0x1E695F060];
    v49 = *(MEMORY[0x1E695F058] + 16);
    v73 = *MEMORY[0x1E695F058];
    v74 = v49;
    v75 = 0.0;
    LOBYTE(v76) = 0;
    v78 = 0;
    memset(v79, 0, sizeof(v79));
    LOBYTE(v71) = v45;
    BYTE1(v71) = v48;
    BYTE2(v71) = v47;
    *&v72 = re::VideoImage::displayDimensions(v19);
    *(&v72 + 1) = v50;
    *&v73 = re::VideoImage::cleanRect(v19);
    *(&v73 + 1) = v51;
    *&v74 = v52;
    *(&v74 + 1) = v53;
    v75 = re::VideoImage::horizontalDisparityAdjustment(v19);
    objc_storeStrong(&v79[1], v43);
    if (v82 == 1)
    {
      v76 = *v80;
      v77 = v81;
      if ((v78 & 1) == 0)
      {
        v78 = 1;
      }
    }

    v54 = *(v19 + 128);
    a3 = v65;
    a7 = v66;
    if (v54 == 3 || v54 == 2)
    {
      *buf = 0;
      v55 = *(v19 + 96);
    }

    else
    {
      if (v54 != 1)
      {
        *buf = 0;
        goto LABEL_70;
      }

      *buf = 0;
      v55 = *v19;
    }

    re::VideoObject<re::VideoPixelBufferBase>::setRef(buf, buf, v55);
LABEL_70:
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v79, v79, *buf);
    if (*buf)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(buf);
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<3ul,re::VideoMetalTextures,re::VideoMetalTextures const&>(v64 + 160 * v11, v64 + 160 * v11, &v71);
    v56 = v27;
    v8 = v43;
    *buf = v56;
    *&buf[8] = v8;
    v91 = 2;
    re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
    if (v91 != -1)
    {
      (*(&off_1F5D1B248 + v91))(&v83, buf);
    }

    for (j = 120; j != 96; j -= 8)
    {
    }

    if (v79[0])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v79);
    }

    if (++v11 >= *(v65 + 72))
    {
      return 0;
    }
  }

  if (v23 == 2)
  {
    re::VideoImage::asPixelBufferTextures(v19, buf);
    v71 = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(&v71, &v71, *(&v89 + 1));
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(&v71);
    v27 = v22;
    if (v71)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v71);
    }

    for (k = 120; k != 96; k -= 8)
    {
      if (*&buf[k])
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf[k]);
      }

      *&buf[k] = 0;
    }

    goto LABEL_29;
  }

  if (v23 != 1)
  {
    goto LABEL_80;
  }

  v71 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v71, &v71, *v19);
  buf[2] = 2;
  *buf = 514;
  *&buf[8] = *MEMORY[0x1E695F060];
  v24 = *(MEMORY[0x1E695F058] + 16);
  *v85 = *MEMORY[0x1E695F058];
  *&v85[16] = v24;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0u;
  v90 = 0u;
  TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a1 + 16), v71, buf, 0, 0);
  if (TexturesFromPixelBuffer)
  {
    v26 = *re::videoLogObjects(TexturesFromPixelBuffer);
    v22 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *v80 = 0;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Unable to create input texture from pixel buffer.", v80, 2u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 1;
    goto LABEL_45;
  }

  v32 = 1;
  if (*(&v89 + 1))
  {
    v32 = 2;
  }

  if (v90)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(&v89 + 1) != 0;
  }

  if (*(&v90 + 1))
  {
    ++v33;
  }

  if (v33 == 1)
  {
    *v80 = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v80, v80, *(&v89 + 1));
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(v80);
    v27 = v22;
    if (*v80)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v80);
    }

    v28 = 1;
  }

  else
  {
    v34 = *re::videoLogObjects(TexturesFromPixelBuffer);
    v22 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *v80 = 0;
      _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[VideoPipelineMipGenNode::execute] Content does not have only one working plane.", v80, 2u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 4;
LABEL_45:
    v63 = v29;
  }

  for (m = 120; m != 96; m -= 8)
  {
    if (*&buf[m])
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&buf[m]);
    }

    *&buf[m] = 0;
  }

  if (v89)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v89);
  }

  if (v71)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v71);
  }

  if (v28)
  {
    goto LABEL_55;
  }

  return v63;
}

void re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(uint64_t a1, unint64_t a2)
{
  if (a2 <= *a1)
  {
    if (a2 >= *a1)
    {
      return;
    }

    v4 = (a1 + 160 * a2 + 144);
    v5 = a2;
    do
    {
      v6 = *(v4 + 3);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      if (*(v4 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v4 + 1);
      }

      *(v4 + 1) = 0;
      v7 = *v4;
      if (v7 != -1)
      {
        (off_1F5D1B228[v7])(&v8, v4 - 32);
      }

      *v4 = -1;
      v4 += 40;
      ++v5;
    }

    while (v5 < *a1);
  }

  else
  {
    if (a2 >= 3)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      _os_crash();
      __break(1u);
      return;
    }

    bzero((a1 + 160 * *a1 + 16), 160 * (a2 - *a1));
  }

  *a1 = a2;
  ++*(a1 + 8);
}

size_t re::VideoImage::planeCount(size_t this)
{
  if (this)
  {
    v1 = *(this + 128);
    if (v1 == 3 || v1 == 2)
    {
      v2 = *(this + 104);
      v3 = v2 == 0;
      v4 = v2 != 0;
      v5 = 1;
      if (!v3)
      {
        v5 = 2;
      }

      if (*(this + 112))
      {
        v4 = v5;
      }

      if (*(this + 120))
      {
        return v4 + 1;
      }

      else
      {
        return v4;
      }
    }

    else if (v1 == 1)
    {
      this = *this;
      if (this)
      {
        return CVPixelBufferGetPlaneCount(this);
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

double re::VideoImage::asPixelBufferTextures@<D0>(re::VideoImage *this@<X0>, uint64_t a2@<X8>)
{
  if (this && *(this + 32) == 2)
  {
    v4 = *(this + 3);
    *(a2 + 32) = *(this + 2);
    *(a2 + 48) = v4;
    *(a2 + 64) = *(this + 4);
    *(a2 + 73) = *(this + 73);
    v5 = *(this + 1);
    *a2 = *this;
    *(a2 + 16) = v5;
    *(a2 + 96) = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(this + 12));
    v6 = 0;
    v7 = (a2 + 104);
    v8 = this + 104;
    v9 = v7;
    do
    {
      *v9++ = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v7, v7, *&v8[8 * v6++]);
      v7 = v9;
    }

    while (v6 != 3);
  }

  else
  {
    result = 0.0;
    v11 = MEMORY[0x1E695F060];
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 8) = *v11;
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 16);
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 24) = v12;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *a2 = 514;
    *(a2 + 2) = 2;
    *(a2 + 40) = v13;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
  }

  return result;
}

double re::VideoImage::asMetalTextures@<D0>(re::VideoImage *this@<X0>, uint64_t a2@<X8>)
{
  if (this && *(this + 32) == 3)
  {
    v4 = *(this + 3);
    *(a2 + 32) = *(this + 2);
    *(a2 + 48) = v4;
    *(a2 + 64) = *(this + 4);
    *(a2 + 73) = *(this + 73);
    v5 = *(this + 1);
    *a2 = *this;
    *(a2 + 16) = v5;
    *(a2 + 96) = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(this + 12));
    v6 = 0;
    v7 = a2 + 104;
    v8 = this + 104;
    do
    {
      *(v7 + v6) = *&v8[v6];
      v6 += 8;
    }

    while (v6 != 24);
  }

  else
  {
    result = 0.0;
    v10 = MEMORY[0x1E695F060];
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 8) = *v10;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 16);
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 24) = v11;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *a2 = 514;
    *(a2 + 2) = 2;
    *(a2 + 40) = v12;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
  }

  return result;
}

uint64_t re::VideoImage::colorTags(re::VideoImage *this)
{
  result = 131586;
  if (this)
  {
    v3 = *(this + 32);
    if (v3 == 3 || v3 == 2)
    {
      return *this | (*(this + 2) << 16);
    }

    else if (v3 == 1)
    {
      return re::VideoPixelBufferBase::colorTags(this);
    }
  }

  return result;
}

__n128 re::VideoImage::rectangularMask@<Q0>(CVBufferRef *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!this)
  {
LABEL_6:
    *a3 = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v3 = *(this + 32);
  if (v3 != 3 && v3 != 2)
  {
    if (v3 == 1)
    {
      re::VideoPixelBufferBase::rectangularMask(this, a2, a3);
      return result;
    }

    goto LABEL_6;
  }

  result = *(this + 4);
  v5 = *(this + 5);
  *a3 = result;
  *(a3 + 16) = v5;
  return result;
}

double re::VideoImage::displayDimensions(re::VideoImage *this)
{
  if (!this)
  {
    return *MEMORY[0x1E695F060];
  }

  v2 = *(this + 32);
  if (v2 == 3 || v2 == 2)
  {
    return *(this + 1);
  }

  if (v2 != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  v3 = *this;
  if (!*this)
  {
    return 0.0;
  }

  *&v4 = *&CVImageBufferGetDisplaySize(v3);
  if (*this)
  {
    CVImageBufferGetDisplaySize(*this);
  }

  return v4;
}

double re::VideoImage::cleanRect(re::VideoImage *this)
{
  if (!this)
  {
    return *MEMORY[0x1E695F058];
  }

  v1 = *(this + 32);
  if (v1 != 3 && v1 != 2)
  {
    if (v1 == 1)
    {
      return re::VideoPixelBufferBase::cleanRect(this);
    }

    return *MEMORY[0x1E695F058];
  }

  return *(this + 3);
}

float re::VideoImage::horizontalDisparityAdjustment(__CVBuffer **this)
{
  result = 0.0;
  if (this)
  {
    v2 = *(this + 32);
    if (v2 == 3 || v2 == 2)
    {
      return *(this + 14);
    }

    else if (v2 == 1)
    {
      return re::VideoPixelBufferBase::horizontalDisparityAdjustment(this);
    }
  }

  return result;
}

uint64_t re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<unsigned long long,16ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 176 * *a1;
    *(v5 + 16) = 0;
    v5 += 16;
    *(v5 + 160) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(v5, a2);
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::VideoPipelineMipGenNode::deinit(re::VideoPipelineMipGenNode *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  re::ObjCObject::operator=(this + 9, 0);
  re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(this + 24);
  return 0;
}

uint64_t re::VideoPipelineMipGenNode::setOwner(uint64_t this, int a2)
{
  if (*(this + 80) != a2)
  {
    *(this + 80) = a2;
  }

  return this;
}

void re::VideoPipelineMipGenNode::~VideoPipelineMipGenNode(void **this)
{
  re::VideoTextureAllocator::~VideoTextureAllocator(this + 3);
  v2 = this[2];
  if (v2)
  {
    CFRelease(v2);
    this[2] = 0;
  }
}

{
  re::VideoTextureAllocator::~VideoTextureAllocator(this + 3);
  v2 = this[2];
  if (v2)
  {
    CFRelease(v2);
    this[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<3ul,re::VideoMetalTextures,re::VideoMetalTextures const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128) == 3)
  {
    v5 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v5;
    v6 = *(a3 + 32);
    v7 = *(a3 + 48);
    v8 = *(a3 + 64);
    *(a2 + 73) = *(a3 + 73);
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    *(a2 + 32) = v6;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(a3 + 96));
    v9 = 0;
    v10 = (a2 + 104);
    v11 = a3 + 104;
    do
    {
      objc_storeStrong(v10++, *(v11 + 8 * v9++));
    }

    while (v9 != 3);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<3ul,re::VideoMetalTextures const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<3ul,re::VideoMetalTextures const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4 != -1)
  {
    (off_1F5D1B228[v4])(&v6, a1);
  }

  *(a1 + 128) = -1;
  std::__construct_at[abi:nn200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,std::in_place_index_t<3ul> const&,re::VideoMetalTextures const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>*>(a1, &std::in_place_index<3ul>, a2);
  *(a1 + 128) = 3;
  return a1;
}

uint64_t std::__construct_at[abi:nn200100]<std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,std::in_place_index_t<3ul> const&,re::VideoMetalTextures const&,std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *a1 = *a3;
  *(a1 + 16) = v5;
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  *(a1 + 73) = *(a3 + 73);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  *(a1 + 96) = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1 + 96, (a1 + 96), *(a3 + 96));
  for (i = 104; i != 128; i += 8)
  {
    *(a1 + i) = *(a3 + i);
  }

  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, __CVBuffer **a2)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(a2);
  }

  *a2 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 120);
  v4 = -24;
  do
  {
    if (*v3)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v3);
    }

    *v3-- = 0;
    v4 += 8;
  }

  while (v4);
  v6 = *(a2 + 96);
  v5 = (a2 + 96);
  if (v6)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
  }

  *v5 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJS8_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 120;
  do
  {

    v3 -= 8;
  }

  while (v3 != -24);
  v6 = *(a2 + 96);
  v5 = (a2 + 96);
  if (v6)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v5);
  }

  *v5 = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, void **a2)
{
  v3 = *a2;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 32));
  }

  v3 = *(a2 + 24);
  *(a2 + 32) = 0;
  if (v3)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a2 + 24));
  }

  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSF_1EJS8_SA_SB_SC_SD_EEEEEEDcSH_DpT0_(uint64_t a1, const void **a2)
{
  if (a2[1])
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2 + 1);
  }

  a2[1] = 0;
  if (*a2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2);
  }

  *a2 = 0;
}

void re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(re::VideoPipelineSurfaceAcceleratorConfig *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(this + 12))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 12);
  }

  *(this + 12) = 0;
  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(this + 8))
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 8);
  }

  v6 = *(this + 2);
  *(this + 8) = 0;
  if (v6)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 2);
  }

  v7 = *(this + 1);
  *(this + 2) = 0;
  if (v7)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 1);
  }

  *(this + 1) = 0;
  if (*this)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this);
  }

  *this = 0;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 160);
  if (v4 != -1)
  {
    result = (*(&off_1F5D1B248 + v4))(&v7, result);
  }

  *(v3 + 160) = -1;
  v5 = *(a2 + 160);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5D1B270[v5])(&v6, a2);
    *(v3 + 160) = v5;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0u;
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 24) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = 0;
  *(v2 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v2 + 72) = *(a2 + 72);
  *(v2 + 80) = *(a2 + 80);
  *(a2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 104) = 0u;
  *(v2 + 120) = *(a2 + 120);
  *(a2 + 120) = 0u;
  *(v2 + 136) = *(a2 + 136);
  *(a2 + 136) = 0u;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *v2 = result;
  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  *(v2 + 16) = result;
  *(v2 + 24) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 40) = *(a2 + 40);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  result = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v2 + 57) = *(a2 + 57);
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 16) = result;
  return result;
}

uint64_t re::VideoPipelinePSENode::execute(re *value, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v50 = value;
  v7 = *(value + 18);
  if (v7 && *v7)
  {
    v9 = *(a3 + 72);
    if (v9 > 1)
    {
      return 4;
    }

    if (v9)
    {
      v13 = 0;
      v14 = (a3 + 216);
      while (1)
      {
        if (*v14 != 1)
        {
          v11 = *re::videoLogObjects(value);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LOWORD(pixelBuffer.value) = 0;
            v47 = "[VideoPipelinePSENode::execute] Input is not a pixel buffer.";
LABEL_76:
            _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v47, &pixelBuffer, 2u);
          }

          return 1;
        }

        value = re::VideoImage::planeCount((v14 - 16));
        if (value > 2)
        {
          return 4;
        }

        v15 = *v14;
        pixelBuffer.value = 0;
        if (v15 == 1 && (re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v14 - 16)), (value = pixelBuffer.value) != 0))
        {
          IOSurface = CVPixelBufferGetIOSurface(pixelBuffer.value);
          value = CFRetain(IOSurface);
        }

        else
        {
          IOSurface = 0;
        }

        buffer = IOSurface;
        v17 = **(v50 + 18);
        if (!v17)
        {
          goto LABEL_20;
        }

        if (!IOSurface)
        {
          v19 = 0;
          goto LABEL_26;
        }

        value = [*v17 canProcessSurface:IOSurface];
        IOSurface = buffer;
        if (value)
        {
          if (buffer)
          {
            PixelFormat = IOSurfaceGetPixelFormat(buffer);
            IOSurface = buffer;
          }

          else
          {
            PixelFormat = 0;
          }

          value = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormat);
          v19 = value;
          if (IOSurface)
          {
LABEL_25:
            re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&buffer);
          }
        }

        else
        {
LABEL_20:
          v19 = 0;
          if (IOSurface)
          {
            goto LABEL_25;
          }
        }

LABEL_26:
        if (pixelBuffer.value)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
        }

        if ((v19 & 1) == 0)
        {
          return 4;
        }

        ++v13;
        v20 = *(a3 + 72);
        v14 += 20;
        if (v13 >= v20)
        {
          goto LABEL_32;
        }
      }
    }

    v20 = 0;
LABEL_32:
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(a7 + 72, v20);
    if (*(a3 + 72))
    {
      v21 = 0;
      v22 = (a7 + 88);
      v23 = (a3 + 216);
      do
      {
        buffer = 0;
        v56 = 0;
        cf = 0;
        v59 = 0;
        v24 = *v23;
        v54 = 0;
        if (v24 == 1)
        {
          re::VideoObject<re::VideoPixelBufferBase>::setRef(&v54, &v54, *(v23 - 16));
        }

        v25 = re::VideoPixelBufferBase::colorTags(&v54);
        if (v54)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v54);
          Height = v54;
          v28 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(PixelFormatType);
          v53 = 0;
          if (Height)
          {
            Width = CVPixelBufferGetWidth(Height);
            ProtectionOptions = v54;
            if (v54)
            {
              Height = CVPixelBufferGetHeight(v54);
              ProtectionOptions = v54;
              if (v54)
              {
                CVPixelBufferGetIOSurface(v54);
                ProtectionOptions = IOSurfaceGetProtectionOptions();
              }
            }

            else
            {
              Height = 0;
            }
          }

          else
          {
            Width = 0;
            ProtectionOptions = 0;
          }
        }

        else
        {
          v28 = re::CoreVideoUtils::convertToGammaSpaceRGBColorModel(0);
          Width = 0;
          Height = 0;
          ProtectionOptions = 0;
          v53 = 0;
        }

        re::VideoSimplePixelBufferAllocator::createPixelBuffer((v50 + 16), Width, Height, v28, v25, HIBYTE(v25), 0, 1, &pixelBuffer, 0x400u, 0x10u, 0, ProtectionOptions);
        v53 = pixelBuffer.value;
        re::VideoImage::displayDimensions((v23 - 16));
        v31 = re::VideoImage::cleanRect((v23 - 16));
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = re::VideoImage::horizontalDisparityAdjustment(v23 - 16);
        re::VideoImage::rectangularMask(v23 - 16, v21, v51);
        if (v53)
        {
          CVImageBufferSetDisplayDimensions();
        }

        re::VideoPixelBufferBase::setCleanRect(&v53, v31, v33, v35, v37);
        re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v53, v38);
        if (v52 == 1)
        {
          re::VideoPixelBufferBase::setRectangularMask(&v53, v51[1], v51[2], v51[0]);
        }

        v40 = *(a7 + 72);
        if (v40 <= v21)
        {
          re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v40);
          _os_crash();
          __break(1u);
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v22, v22, &v53);
        *(a7 + 54) = 1;
        v42 = *(v50 + 18);
        v41 = *(v50 + 19);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = v56;
        buffer = v42;
        v56 = v41;
        if (v43)
        {
          std::__shared_weak_count::__release_weak(v43);
        }

        pixelBuffer = *(a3 + 24);
        Seconds = CMTimeGetSeconds(&pixelBuffer);
        if (v54)
        {
          v44 = CVPixelBufferGetIOSurface(v54);
          CFRetain(v44);
        }

        else
        {
          v44 = 0;
        }

        cf = v44;
        if (v53)
        {
          v45 = CVPixelBufferGetIOSurface(v53);
          CFRetain(v45);
        }

        else
        {
          v45 = 0;
        }

        v59 = v45;
        v46 = *(a5 + 48);
        LODWORD(v60) = *(a5 + 56);
        HIDWORD(v60) = v46;
        pixelBuffer.value = buffer;
        *&pixelBuffer.timescale = v56;
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        pixelBuffer.epoch = Seconds;
        v63 = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v63, &v63, cf);
        v64[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v64, v64, v59);
        v64[1] = v60;
        v65 = 3;
        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, &pixelBuffer);
        if (v65 != -1)
        {
          (*(&off_1F5D1B338 + v65))(&v61, &pixelBuffer);
        }

        if (v53)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v53);
        }

        if (v54)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v54);
        }

        if (v59)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v59);
        }

        v59 = 0;
        if (cf)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&cf);
        }

        cf = 0;
        if (v56)
        {
          std::__shared_weak_count::__release_weak(v56);
        }

        ++v21;
        v22 += 20;
        v23 += 20;
      }

      while (v21 < *(a3 + 72));
    }

    return 0;
  }

  else
  {
    v11 = *re::videoLogObjects(value);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBuffer.value) = 0;
      v47 = "[VideoPipelinePSENode::execute] The processor is not initialized.";
      goto LABEL_76;
    }

    return 1;
  }
}

uint64_t re::VideoPipelinePSENode::deinit(re::VideoPipelinePSENode *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    re::VideoMipProcessor::deinit(v1);
  }

  return 0;
}

uint64_t re::VideoPipelinePSENode::setOwner(uint64_t this, const re::VideoPixelBufferPool *a2)
{
  if (*(this + 136) != a2)
  {
    *(this + 136) = a2;
    return re::memoryAttributionVideoPixelBufferPool((this + 56), a2);
  }

  return this;
}

void re::VideoPipelinePSENode::~VideoPipelinePSENode(re::VideoPipelinePSENode *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 56));
}

{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 56));

  JUMPOUT(0x1E6906520);
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(uint64_t a1, __CVBuffer **a2, CVPixelBufferRef *a3)
{
  if (*(a1 + 128) == 1)
  {
    re::VideoObject<re::VideoPixelBufferBase>::setRef(a2, a2, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase> const&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__emplace[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase> const&>(uint64_t a1, CVPixelBufferRef *a2)
{
  v4 = *(a1 + 128);
  if (v4 != -1)
  {
    (off_1F5D1B318[v4])(&v6, a1);
  }

  *(a1 + 128) = -1;
  *a1 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(a1, a1, *a2);
  *(a1 + 128) = 1;
  return a1;
}

uint64_t re::VideoPipelineSDRNode::execute(int8x8_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 72);
  if (!v7)
  {
    v65 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *v90 = 0;
    v66 = "[VideoPipelineSDRNode::execute] No pixel buffers found in input.";
LABEL_98:
    _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, v66, v90, 2u);
    return 1;
  }

  v8 = a7;
  v10 = a3;
  v11 = (a3 + 216);
  do
  {
    v12 = *v11;
    v11 += 40;
    if (v12 != 1)
    {
      v65 = *re::videoLogObjects(a1);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *v90 = 0;
      v66 = "[VideoPipelineSDRNode::execute] Input image is not a pixel buffer.";
      goto LABEL_98;
    }

    --v7;
  }

  while (v7);
  v13 = 0;
  v14 = 0;
  allocator = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E696CE60];
  v74 = *MEMORY[0x1E696D0F0];
  v73 = *MEMORY[0x1E69660D8];
  v72 = *MEMORY[0x1E6966140];
  do
  {
    v97 = 0;
    cf = 0;
    v100[0] = 0;
    v99 = 0;
    memset(&v100[8], 0, 41);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0;
    v15 = v10 + v13;
    v16 = *(v10 + v13 + 216);
    pixelBuffer = 0;
    if (v16 == 1)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v15 + 88));
    }

    v87 = 0;
    Height = re::VideoPixelBufferBase::colorTags(&pixelBuffer);
    v19 = Height;
    v20 = BYTE2(Height);
    if (a2[4] != 1)
    {
      goto LABEL_58;
    }

    Height = pixelBuffer;
    if (pixelBuffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = pixelBuffer;
      if (pixelBuffer)
      {
        Height = CVPixelBufferGetHeight(pixelBuffer);
      }
    }

    else
    {
      Width = 0;
    }

    if (Height * Width > 0xE1000)
    {
LABEL_58:
      if (*(a5 + 16) != v19 || __PAIR64__(*(a5 + 18), *(a5 + 17)) != __PAIR64__(v20, HIBYTE(v19)))
      {
        v60 = *(v8 + 72);
        if (v60 <= v14)
        {
          re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v60, v72, v73, v74, key, allocator);
          _os_crash();
          __break(1u);
          re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v69);
          _os_crash();
          __break(1u);
          re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v71);
          _os_crash();
          __break(1u);
LABEL_100:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v27);
          _os_crash();
          __break(1u);
LABEL_101:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v33);
          _os_crash();
          __break(1u);
LABEL_102:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v39);
          _os_crash();
          __break(1u);
LABEL_103:
          re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v14, v42);
          _os_crash();
          __break(1u);
LABEL_104:
          re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v46);
          _os_crash();
          __break(1u);
        }

        v78 = v78 & 0xFFFFFFFFFF000000 | *(a5 + 16) | (*(a5 + 18) << 16);
        Height = re::VideoPipelineColorTransformGenerator::computeTransform(a1 + 11, &pixelBuffer, v78, *(a5 + 19), (v8 + v13 + 224));
        if (Height)
        {
          v61 = *re::videoLogObjects(Height);
          Height = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
          if (Height)
          {
            *v90 = 0;
            _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "[VideoPipelineSDRNode::execute] Unable to compute color transformation.", v90, 2u);
          }
        }
      }

      if (*a2 == 1)
      {
        re::VideoHistogram::create(Height);
      }

      v62 = v87;
      if (!v87)
      {
        v59 = 1;
        goto LABEL_86;
      }

      if (pixelBuffer)
      {
        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(IOSurface);
        v62 = v87;
        v97 = IOSurface;
        if (!v87)
        {
          v64 = 0;
LABEL_73:
          cf = v64;
          *v90 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v90, v90, IOSurface);
          *&v90[8] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v90[8], &v90[8], cf);
          v91[0] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v91, v91, v99);
          *&v91[1] = *v100;
          *&v91[3] = *&v100[16];
          v91[5] = *&v100[32];
          v92 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v92, &v92, *&v100[40]);
          v93 = v100[48];
          v94 = v101;
          if (*(&v101 + 1))
          {
            atomic_fetch_add_explicit((*(&v101 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v95[0] = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(v95, v95, v102);
          v95[1] = *(&v102 + 1);
          v95[2] = v103;
          v10 = a3;
          if (v103)
          {
            atomic_fetch_add_explicit((v103 + 16), 1uLL, memory_order_relaxed);
          }

          v95[3] = *(&v103 + 1);
          v95[4] = v104;
          if (v104)
          {
            atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
          }

          v95[5] = *(&v104 + 1);
          v95[6] = v105;
          if (v105)
          {
            atomic_fetch_add_explicit(v105 + 1, 1uLL, memory_order_relaxed);
          }

          v96 = 1;
          re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, v90);
          if (v96 != -1)
          {
            (*(&off_1F5D1B3F8 + v96))(&v83, v90);
          }

          v59 = 1;
          goto LABEL_84;
        }
      }

      else
      {
        v97 = 0;
      }

      v64 = CVPixelBufferGetIOSurface(v62);
      CFRetain(v64);
      IOSurface = v97;
      goto LABEL_73;
    }

    *(v8 + 48) = 2;
    ProtectionOptions = pixelBuffer;
    if (!pixelBuffer)
    {
      v25 = 0;
      PixelFormatType = 0;
LABEL_21:
      v24 = 0;
      goto LABEL_22;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    ProtectionOptions = pixelBuffer;
    if (!pixelBuffer)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v24 = CVPixelBufferGetWidth(pixelBuffer);
    ProtectionOptions = pixelBuffer;
    if (pixelBuffer)
    {
      v25 = CVPixelBufferGetHeight(pixelBuffer);
      ProtectionOptions = pixelBuffer;
      if (pixelBuffer)
      {
        CVPixelBufferGetIOSurface(pixelBuffer);
        ProtectionOptions = IOSurfaceGetProtectionOptions();
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_22:
    re::VideoSimplePixelBufferAllocator::createPixelBuffer(&a1[21], (2 * v24), (2 * v25), PixelFormatType, v19, HIBYTE(v19), v20, 1, v90, 0x400u, 0x10u, 1, ProtectionOptions);
    v87 = *v90;
    v27 = *(a3 + 72);
    if (v27 <= v14)
    {
      goto LABEL_100;
    }

    v29 = re::VideoImage::cleanRect((v15 + 88));
    v33 = *(a3 + 72);
    if (v33 <= v14)
    {
      goto LABEL_101;
    }

    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    re::VideoImage::displayDimensions((v15 + 88));
    v39 = *(a3 + 72);
    if (v39 <= v14)
    {
      goto LABEL_102;
    }

    v41 = re::VideoImage::horizontalDisparityAdjustment((v15 + 88));
    v42 = *(a3 + 72);
    if (v42 <= v14)
    {
      goto LABEL_103;
    }

    v43 = v41;
    re::VideoImage::rectangularMask((v15 + 88), v14, &v83);
    v8 = a7;
    v44 = *(a7 + 48);
    if (v86 == 1)
    {
      v84 = vmul_n_f32(v84, v44);
      v85 = vmul_n_f32(v85, v44);
      v83 = vmul_n_f32(v83, v44);
    }

    re::VideoPixelBufferBase::setCleanRect(&v87, v34 * v44, v35 * v44, v36 * v44, v37 * v44);
    if (v87)
    {
      CVImageBufferSetDisplayDimensions();
    }

    re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v87, v43);
    if (v86 == 1)
    {
      re::VideoPixelBufferBase::setRectangularMask(&v87, *&v84, *&v85, *&v83);
    }

    v46 = *(a7 + 72);
    if (v46 <= v14)
    {
      goto LABEL_104;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(a7 + v13 + 88, (a7 + v13 + 88), &v87);
    memset(v91, 0, 40);
    *v90 = 0u;
    v47 = re::VideoPipelineUpscalingNode::createUpscalingConfig(a1, v14, &pixelBuffer, &v87, v90);
    v48 = v47;
    if (v47)
    {
      v49 = *re::videoLogObjects(v47);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "[VideoPipelineSDRNode::execute] Unable to create upscaling config.", buf, 2u);
      }
    }

    else
    {
      v51 = *&v90[8];
      v50 = v91[0];
      if (v91[0])
      {
        atomic_fetch_add_explicit(&v91[0]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = v103;
      *(&v102 + 1) = v51;
      *&v103 = v50;
      if (v52)
      {
        std::__shared_weak_count::__release_weak(v52);
      }

      re::VideoObject<re::VideoColorTransformBase>::setRef(&v102, &v102, *v90);
      v54 = v91[1];
      v53 = v91[2];
      if (v91[2])
      {
        atomic_fetch_add_explicit(&v91[2]->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = v104;
      *(&v103 + 1) = v54;
      *&v104 = v53;
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      v57 = v91[3];
      v56 = v91[4];
      if (v91[4])
      {
        atomic_fetch_add_explicit(&v91[4]->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v58 = v105;
      *(&v104 + 1) = v57;
      v105 = v56;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v58);
      }
    }

    v10 = a3;
    if (v91[4])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v91[4]);
    }

    if (v91[2])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v91[2]);
    }

    Height = v91[0];
    if (v91[0])
    {
      std::__shared_weak_count::__release_weak(v91[0]);
    }

    if (*v90)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v90);
    }

    if (!v48)
    {
      goto LABEL_58;
    }

    v59 = 0;
LABEL_84:
    if (v87)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v87);
    }

LABEL_86:
    if (pixelBuffer)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
    }

    re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(&v97);
    if (!v59)
    {
      break;
    }

    ++v14;
    v13 += 160;
  }

  while (v14 < *(v10 + 72));
  return v59 ^ 1u;
}

__CVBuffer *re::VideoPipelineSDRNode::setOwner(re::VideoPipelineSDRNode *this, re::VideoPixelBufferPool *a2)
{
  v2 = a2;
  if (*(this + 72) != a2)
  {
    *(this + 72) = a2;
    re::memoryAttributionVideoPixelBufferPool((this + 208), a2);
  }

  return re::memoryAttributionVideoPixelBuffer(this + 37, v2);
}

void re::VideoPipelineSDRNode::~VideoPipelineSDRNode(__CVBuffer **this)
{
  if (this[37])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 37);
  }

  this[37] = 0;
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 26));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 11));

  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);
}

{
  if (this[37])
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(this + 37);
  }

  this[37] = 0;
  re::VideoPixelBufferPool::~VideoPixelBufferPool((this + 26));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 11));
  re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(this);

  JUMPOUT(0x1E6906520);
}

void re::VideoPipelineUpscalingNode::~VideoPipelineUpscalingNode(re::VideoPipelineUpscalingNode *this)
{
  *this = &unk_1F5D1B430;
  for (i = 80; i != 48; i -= 16)
  {
    v3 = *(this + i);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::~__hash_table(this + 16);
}

uint64_t std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::__unordered_map_hasher<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::hash<re::VideoPipelineASEConfigurationKey>,std::equal_to<re::VideoPipelineASEConfigurationKey>,true>,std::__unordered_map_equal<re::VideoPipelineASEConfigurationKey,std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>,std::equal_to<re::VideoPipelineASEConfigurationKey>,std::hash<re::VideoPipelineASEConfigurationKey>,true>,std::allocator<std::__hash_value_type<re::VideoPipelineASEConfigurationKey,re::VideoPipelineASEConfigGenerator::Entry>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t re::VideoPipelineASEConfigGenerator::createConfig(re *a1, re *this, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, uint64_t a7)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*a6)
  {
    v18 = *re::videoLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v62 = 0;
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[VideoASEConfigGenerator::createConfig] The given frame measurement is not valid.", v62, 2u);
    }

    return 1;
  }

  v8 = a6;
  v11 = a3;
  v12 = this;
  *v62 = 0x400000001;
  v63 = this;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v14 = re::videoHashCombine(this, a3, 4uLL, 1, a4, a5);
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    if (v16.u32[0] > 1uLL)
    {
      v17 = v14;
      if (v14 >= *&v15)
      {
        v17 = v14 % *&v15;
      }
    }

    else
    {
      v17 = (*&v15 + 0x3FFFFFFFFFFFFFFFLL) & v14;
    }

    v19 = *(*a1 + 8 * v17);
    if (v19)
    {
      for (i = *v19; i; i = *i)
      {
        v21 = i[1];
        if (v21 == v14)
        {
          if (*(i + 6) == v12 && *(i + 7) == v11 && *(i + 5) == 4 && *(i + 4) == 1 && *(i + 8) == a4 && *(i + 9) == a5)
          {
            v51 = i[5];
            v54 = v51;
            if (v51)
            {
              goto LABEL_50;
            }

            goto LABEL_75;
          }
        }

        else
        {
          if (v16.u32[0] > 1uLL)
          {
            if (v21 >= *&v15)
            {
              v21 %= *&v15;
            }
          }

          else
          {
            v21 &= *&v15 - 1;
          }

          if (v21 != v17)
          {
            break;
          }
        }
      }
    }
  }

  v55 = v11;
  v56 = v12;
  v57 = v8;
  v22 = [objc_alloc(MEMORY[0x1E6986508]) initWithConfig:v62];
  [v22 setDestinationWidth:v65];
  [v22 setDestinationHeight:v66];
  v23 = *v62;
  v24 = *&v62[4];
  v25 = v63;
  v26 = v64;
  v27 = v65;
  v28 = v66;
  v58 = v22;
  v29 = re::videoHashCombine(v25, v26, v24, v23, v27, v28);
  v30 = *(a1 + 8);
  if (!*&v30)
  {
    goto LABEL_48;
  }

  v31 = vcnt_s8(v30);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    v32 = v29;
    if (v29 >= *&v30)
    {
      v32 = v29 % *&v30;
    }
  }

  else
  {
    v32 = (*&v30 + 0x3FFFFFFFFFFFFFFFLL) & v29;
  }

  v33 = *(*a1 + 8 * v32);
  if (!v33 || (v34 = *v33) == 0)
  {
LABEL_48:
    operator new();
  }

  while (1)
  {
    v35 = v34[1];
    if (v35 == v29)
    {
      break;
    }

    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v30)
      {
        v35 %= *&v30;
      }
    }

    else
    {
      v35 &= *&v30 - 1;
    }

    if (v35 != v32)
    {
      goto LABEL_48;
    }

LABEL_47:
    v34 = *v34;
    if (!v34)
    {
      goto LABEL_48;
    }
  }

  if (*(v34 + 6) != v25 || *(v34 + 7) != v26 || *(v34 + 5) != v24 || *(v34 + 4) != v23 || *(v34 + 8) != v27 || *(v34 + 9) != v28)
  {
    goto LABEL_47;
  }

  v54 = v58;
  v11 = v55;

  v8 = v57;
  v12 = v56;
  if (!v58)
  {
LABEL_75:
    v52 = *re::videoLogObjects(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(memptr) = 67109376;
      HIDWORD(memptr) = v12;
      v68 = 1024;
      v69 = v11;
      _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Unable to create ASE Processor for config %d x %d.", &memptr, 0xEu);
    }

    goto LABEL_77;
  }

LABEL_50:
  isVariableRateDirectionalScalingSupported = re::VideoPlatform::isVariableRateDirectionalScalingSupported(v51);
  v37 = *v8;
  if (!isVariableRateDirectionalScalingSupported)
  {
    v60 = 0;
    v43 = [(re *)v54 processFrameWithInput:v37 + 472 outputData:&v60];
    v44 = v60;
    v40 = v44;
    if (v43 != -18000)
    {
      v41 = *re::videoLogObjects(v44);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      LOWORD(memptr) = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to process upscale with ASEFrameMeasurement.";
LABEL_64:
      p_memptr = &memptr;
      goto LABEL_72;
    }

LABEL_55:
    re::VideoObject<re::VideoColorTransformBase>::setRef(a7, a7, v40);
    v46 = *v8;
    v45 = v8[1];
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
    }

    v47 = *(a7 + 16);
    *(a7 + 8) = v46;
    *(a7 + 16) = v45;
    if (v47)
    {
      std::__shared_weak_count::__release_weak(v47);
    }

    if (re::VideoPlatform::isVariableRateDirectionalScalingSupported(v47))
    {
      memptr = 0;
      v48 = malloc_type_posix_memalign(&memptr, 8uLL, 0x1D0uLL, 0x100004019C028F0uLL);
      if (memptr)
      {
        operator new();
      }

      v41 = *re::videoLogObjects(v48);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to allocate new measurement data V3.";
    }

    else
    {
      memptr = 0;
      v50 = malloc_type_posix_memalign(&memptr, 8uLL, 0x17CuLL, 0x10000401B70AB38uLL);
      if (memptr)
      {
        operator new();
      }

      v41 = *re::videoLogObjects(v50);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v42 = "[VideoASEConfigGenerator::createConfig] Unable to allocate new measurement data.";
    }

    p_memptr = buf;
LABEL_72:
    _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, v42, p_memptr, 2u);
    goto LABEL_73;
  }

  v61 = 0;
  v38 = [(re *)v54 processFrameWithInput:v37 + 472 outputData:&v61];
  v39 = v61;
  v40 = v39;
  if (v38 == -18000)
  {
    goto LABEL_55;
  }

  v41 = *re::videoLogObjects(v39);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    LOWORD(memptr) = 0;
    v42 = "[VideoASEConfigGenerator::createConfig] Unable to process upscale with cast ASEFrameMeasurementV3.";
    goto LABEL_64;
  }

LABEL_73:

LABEL_77:
  return 1;
}

void std::__shared_ptr_emplace<re::VideoPipelineASEFrameMeasurement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_pointer<ASEFrameMeasurementV3 *,void (*)(void *),std::allocator<ASEFrameMeasurementV3>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<ASEFrameMeasurementV3 *,void (*)(void *),std::allocator<ASEFrameMeasurementV3>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ASEFrameMeasurement *,void (*)(void *),std::allocator<ASEFrameMeasurement>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<ASEFrameMeasurement *,void (*)(void *),std::allocator<ASEFrameMeasurement>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

unint64_t re::videoHashCombine(unint64_t this, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a2 + (this << 6) + (this >> 2) - 0x61C8864680B583E9) ^ this;
  v7 = ((v6 << 6) + (v6 >> 2) + ((a4 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3) - 0x61C8864680B583E9) ^ v6;
  return (((a6 + (a5 << 6) + (a5 >> 2) - 0x61C8864680B583E9) ^ a5) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
}

void re::VideoPipeline::~VideoPipeline(std::__shared_weak_count **this)
{
  re::VideoPipeline::deinit(this);
  v2 = this[287];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  re::VideoPixelFormatDescriptionManager::~VideoPixelFormatDescriptionManager((this + 267));
  v3 = this[266];
  if (v3)
  {
    CFRelease(v3);
    this[266] = 0;
  }

  this[261] = 0;
  ++*(this + 524);
}

void re::VideoPipeline::deinit(re::VideoPipeline *this)
{
  v2 = 0;
  v3 = (this + 2184);
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      (*(*v4 + 56))(v4);
      v5 = *(v3 + v2);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    v2 += 8;
  }

  while (v2 != 64);
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v6 = *(this + 266);
  if (v6)
  {
    CFRelease(v6);
    *(this + 266) = 0;
  }
}

uint64_t re::VideoPipeline::process(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v222 = v5;
  v7 = v6;
  LODWORD(v9) = v8;
  v11 = v10;
  j = v12;
  v14 = v2;
  v281 = *MEMORY[0x1E69E9840];
  if (*(v12 + 7) == 1)
  {
    goto LABEL_279;
  }

  while (1)
  {
    v15 = (v11 + 56);
    if (!*(v11 + 56) || (*(v11 + 12) & 1) == 0 || (*(v11 + 36) & 1) == 0)
    {
      return 1;
    }

    v217 = v4;
    v255 = 0;
    v256 = 0;
    v17 = *(j + 8);
    if (v17 == 1)
    {
      v257[0] = re::VideoPipeline::selectNode(v14, 5);
      v18 = 1;
      v255 = 1;
      v256 = 1;
      v17 = *(j + 8);
      v19 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if (v17 != *(v14 + 2272))
    {
      v20 = *(v14 + 2224);
      if (v20)
      {
        v21 = *v20;
        if (v17)
        {
          (*(v21 + 32))();
        }

        else
        {
          (*(v21 + 40))();
        }
      }
    }

    if (*(j + 7) == 1)
    {
      v205 = re::VideoPipeline::selectNode(v14, 4);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v206);
      v257[v19++] = v205;
      v255 = v19;
      v256 = ++v18;
    }

    if (*(j + 9) == 1)
    {
      v22 = re::VideoPipeline::selectNode(v14, 6);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v23);
      v1 = v257;
      v257[v19] = v22;
      v255 = v19 + 1;
      v256 = v18 + 1;
      if (*(j + 7) == 1)
      {
        v220 = re::VideoPipeline::selectNode(v14, 4);
        re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19 + 1, v211);
        v257[v19 + 1] = v220;
        v19 += 2;
        v255 = v19;
        v18 += 2;
        v256 = v18;
      }

      else
      {
        ++v18;
        ++v19;
      }
    }

    if (*(j + 9) != *(v14 + 2273))
    {
      v24 = *(v14 + 2232);
      if (v24)
      {
        v25 = *v24;
        if (*(j + 9))
        {
          (*(v25 + 32))();
        }

        else
        {
          (*(v25 + 40))();
        }
      }
    }

    v26 = *(j + 12);
    if (v26 == 1)
    {
      v27 = re::VideoPipeline::selectNode(v14, 1);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v28);
      v257[v19++] = v27;
      v255 = v19;
      v256 = ++v18;
      v26 = *(j + 12);
    }

    if (v26 != *(v14 + 2276))
    {
      v29 = *(v14 + 2192);
      if (v29)
      {
        v30 = *v29;
        if (v26)
        {
          (*(v30 + 32))();
        }

        else
        {
          (*(v30 + 40))();
        }
      }
    }

    if (*(j + 13) == 1)
    {
      v31 = re::VideoPipeline::selectNode(v14, 0);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v32);
      v257[v19++] = v31;
      v255 = v19;
      v256 = ++v18;
    }

    if (*(j + 5) != *(v14 + 2269))
    {
      v33 = *(v14 + 2184);
      if (v33)
      {
        v34 = *v33;
        if (*(j + 5))
        {
          (*(v34 + 32))();
        }

        else
        {
          (*(v34 + 40))();
        }
      }
    }

    if (*(j + 7) == 1)
    {
      v207 = re::VideoPipeline::selectNode(v14, 4);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v208);
      v257[v19++] = v207;
      v255 = v19;
      v256 = ++v18;
    }

    if (*(j + 5) == 1)
    {
      v35 = re::VideoPipeline::selectNode(v14, 2);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v36);
      v1 = v257;
      v257[v19] = v35;
      v255 = v19 + 1;
      v256 = v18 + 1;
      if (*(j + 7) == 1)
      {
        v221 = re::VideoPipeline::selectNode(v14, 4);
        re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19 + 1, v212);
        v257[v19 + 1] = v221;
        v19 += 2;
        v255 = v19;
        v18 += 2;
        v256 = v18;
      }

      else
      {
        ++v18;
        ++v19;
      }
    }

    if (*(j + 5) != *(v14 + 2269))
    {
      v37 = *(v14 + 2200);
      if (v37)
      {
        v38 = *v37;
        if (*(j + 5))
        {
          (*(v38 + 32))();
        }

        else
        {
          (*(v38 + 40))();
        }
      }
    }

    v39 = *(j + 6);
    if (v39 == 1)
    {
      v40 = re::VideoPipeline::selectNode(v14, 3);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v41);
      v257[v19++] = v40;
      v255 = v19;
      v256 = ++v18;
      v39 = *(j + 6);
    }

    if (v39 != *(v14 + 2270))
    {
      v42 = *(v14 + 2208);
      if (v42)
      {
        v43 = *v42;
        if (v39)
        {
          (*(v43 + 32))();
        }

        else
        {
          (*(v43 + 40))();
        }
      }
    }

    v44 = *(j + 7);
    if (v44 == 1)
    {
      v209 = re::VideoPipeline::selectNode(v14, 4);
      re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(v19, v210);
      v257[v19] = v209;
      v255 = v19 + 1;
      v256 = v18 + 1;
      v44 = *(j + 7);
    }

    if (v44 != *(v14 + 2271))
    {
      v45 = *(v14 + 2216);
      if (v45)
      {
        v46 = *v45;
        if (v44)
        {
          (*(v46 + 32))();
        }

        else
        {
          (*(v46 + 40))();
        }
      }
    }

    v214 = v7;
    _Q0 = *j;
    *(v14 + 2279) = *(j + 15);
    *(v14 + 2264) = _Q0;
    v244[8] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v244[12] = _Q0;
    v245 = 0;
    v246 = 0;
    v251 = 0;
    v253 = 0;
    v242 = *v11;
    v52 = *(v11 + 16);
    *&v243[8] = *(v11 + 24);
    v53 = *(v11 + 40);
    *v243 = v52;
    *&v243[24] = v53;
    v244[4] = *(v11 + 48);
    v244[5] = *(v11 + 50);
    *v244 = 1;
    *&v244[6] = 0;
    v249 = *(v11 + 96);
    v54 = *(v11 + 112);
    v250 = *(v11 + 104);
    objc_storeStrong(&v251, v54);
    v55 = *(v11 + 128);
    v252 = *(v11 + 120);
    objc_storeStrong(&v253, v55);
    v254 = *(v11 + 136);
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::resize(&v245, *(v11 + 56));
    v219 = j;
    if (*(v11 + 56))
    {
      v57 = 0;
      v1 = 0;
      j = v11;
      v58 = v11 + 72;
      v59 = &v247;
      v60 = *MEMORY[0x1E6966290];
      while (1)
      {
        v61 = v245;
        if (v245 <= v1)
        {
          goto LABEL_103;
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v59, v59, (v58 + v57));
        buf[0].value = 0;
        v63 = *v15;
        if (*v15 <= v1)
        {
          break;
        }

        v64 = *(v58 + 8 * v1);
        if (v64)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v64);
        }

        else
        {
          PixelFormatType = 0;
        }

        if (!re::VideoPixelFormatDescriptionManager::descriptionForPixelFormat(v14 + 2136, PixelFormatType, buf))
        {
          v66 = (v244[7] & 1) != 0 || re::VideoPixelFormatDescriptionBase::BOOLeanValue(buf, v60, 0);
          v244[7] = v66;
        }

        if (buf[0].value)
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buf);
        }

        ++v1;
        v56 = *v15;
        v59 += 20;
        v57 += 8;
        if (v1 >= *v15)
        {
          v11 = j;
          goto LABEL_79;
        }
      }

LABEL_104:
      re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v1, v63);
      _os_crash();
      __break(1u);
LABEL_105:
      re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v69);
      v70 = _os_crash();
      __break(1u);
LABEL_106:
      v4 = *re::videoLogObjects(v70);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_287;
      }

      goto LABEL_107;
    }

    v56 = 0;
LABEL_79:
    v239 = 0;
    v240 = 0;
    v7 = &v239;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v239, v56);
    if (*v15)
    {
      v1 = 0;
      j = v11 + 72;
      v68 = &v241;
      do
      {
        v69 = v239;
        if (v239 <= v1)
        {
          goto LABEL_105;
        }

        re::VideoObject<re::VideoPixelBufferBase>::setRef(v68, v68, *(j + 8 * v1++));
        ++v68;
      }

      while (v1 < *v15);
    }

    v213 = v9;
    buf[0] = *v11;
    *texture = *(v11 + 24);
    v215 = v11;
    *v272 = *(v11 + 40);
    v218 = v14;
    re::VideoThroughput::update(v14, buf, texture, v15);
    buf[0].value = 0;
    buf[0].timescale = 0;
    v225 = *&v243[16];
    v226 = *v244;
    v227 = *&v244[16];
    v223 = v242;
    v224 = *v243;
    v228 = 0;
    v229 = 0;
    re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(&v228, &v245);
    obj = v249;
    v233 = v250;
    v234 = v251;
    v235 = v252;
    v70 = v253;
    v236 = v70;
    v237 = v254;
    if (v255)
    {
      v7 = &v257[v255];
      v72 = v257;
      while (1)
      {
        v73 = *v72;
        if (!*v72)
        {
          goto LABEL_106;
        }

        if (*(v219 + 7) == 1)
        {
          v78 = *re::videoLogObjects(v70);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v1 = *(*v73 + 64);
            j = *v73 + 64;
            v79 = v78;
            v80 = (v1)(v73);
            LODWORD(texture[0]) = 136315138;
            *(texture + 4) = v80;
            _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::process] Executing %s", texture, 0xCu);
          }
        }

        v74 = (*(*v73 + 24))(v73, v219, &v242, buf, v222, v14, &v223);
        if (v74)
        {
          break;
        }

        *&v243[16] = v225;
        *v244 = v226;
        *&v244[16] = v227;
        *v243 = v224;
        v242 = v223;
        re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(&v245, &v228);
        ++v246;
        objc_storeStrong(&v249, obj);
        v250 = v233;
        objc_storeStrong(&v251, v234);
        v252 = v235;
        objc_storeStrong(&v253, v236);
        v254 = v237;
        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v239, v228);
        if (v228)
        {
          v75 = 0;
          v76 = v231;
          j = 16;
          do
          {
            if (*v76 == 1)
            {
              texture[0] = 0;
              re::VideoObject<re::VideoPixelBufferBase>::setRef(texture, texture, *(v76 - 16));
              v77 = texture[0];
              if (texture[0])
              {
                if (v239 <= v75)
                {
                  re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v75, v239);
                  _os_crash();
                  __break(1u);
LABEL_103:
                  re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v61);
                  _os_crash();
                  __break(1u);
                  goto LABEL_104;
                }

                v1 = (&v239 + v75);
                if (*(v1 + 16))
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((&v239 + j));
                }

                *(v1 + 16) = v77;
                v70 = CVPixelBufferRetain(v77);
                if (texture[0])
                {
                  re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(texture);
                }
              }
            }

            ++v75;
            j += 8;
            v76 += 20;
          }

          while (v75 < v228);
        }

        if (++v72 == v7)
        {
          goto LABEL_124;
        }
      }

      v16 = v74;
      v81 = *re::videoLogObjects(v74);
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
      if (v82)
      {
        v202 = *(*v73 + 64);
        v203 = v81;
        v204 = v202(v73);
        LODWORD(texture[0]) = 136315138;
        *(texture + 4) = v204;
        _os_log_error_impl(&dword_1E1C61000, v203, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Failed to execute %s", texture, 0xCu);
      }

      if ((v16 & 0xFFFFFFFB) != 0)
      {
        v83 = *re::videoLogObjects(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          LOWORD(texture[0]) = 0;
          _os_log_error_impl(&dword_1E1C61000, v83, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Processing failed.", texture, 2u);
        }

        if (!buf[0].value)
        {
          goto LABEL_253;
        }

        v84 = 176 * buf[0].value;
        p_epoch = &buf[0].epoch;
        while (1)
        {
          LOBYTE(texture[0]) = 0;
          v279 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(texture, p_epoch);
          v86 = v279;
          if (v279 != 1)
          {
            goto LABEL_118;
          }

          if (*v273)
          {
            break;
          }

          v86 = 1;
LABEL_121:
          (*(&off_1F5D1B5E8 + v86))(v265, texture);
LABEL_122:
          p_epoch += 22;
          v84 -= 176;
          if (!v84)
          {
            goto LABEL_253;
          }
        }

        (*v273)(7, *&v273[8]);
        v86 = v279;
LABEL_118:
        if (v86 == 0xFFFFFFFFLL)
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      }
    }

LABEL_124:
    v280 = 0u;
    v276 = 0;
    *texture = *v215;
    v87 = *(v215 + 2);
    *&v272[8] = *(v215 + 24);
    v88 = *(v215 + 5);
    *v272 = v87;
    *&v272[24] = v88;
    *&v273[15] = *(v219 + 15);
    *v273 = *v219;
    *&v273[20] = v226;
    *&v273[24] = WORD3(v226);
    v275 = 0;
    v274 = 0;
    v273[26] = *(v215 + 49);
    v89 = v228;
    v90 = v217;
    if (!v228)
    {
      break;
    }

    if (v228 > 2)
    {
      re::internal::assertLog(4, v71, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v222 = v277;
    v91 = MEMORY[0x1E695F060];
    v92 = &v278;
    v11 = MEMORY[0x1E695F058];
    v93 = v228;
    do
    {
      v94 = *v91;
      *(v92 + 3) = *v91;
      *(v92 + 5) = v94;
      v95 = *(v11 + 16);
      *(v92 + 7) = *v11;
      *(v92 - 10) = 0;
      *v92 = 0;
      v92[1] = 0;
      v92[2] = 0;
      *(v92 - 3) = 0;
      *(v92 - 2) = 0;
      *(v92 - 4) = 0;
      *(v92 - 8) = 0;
      *(v92 + 9) = v95;
      *(v92 + 22) = 0;
      *(v92 + 96) = 0;
      *(v92 + 120) = 0;
      *(v92 + 130) = 2;
      *(v92 + 64) = 514;
      *(v92 + 17) = 0uLL;
      *(v92 + 19) = 0uLL;
      v92 += 26;
      --v93;
    }

    while (v93);
    v14 = 0;
    v275 = v89;
    v276 = 1;
    v4 = v230;
    v1 = v258;
    v216 = (v218 + 2128);
    v9 = v265;
    while (v275 > v14)
    {
      v96 = &v230[10 * v14];
      v7 = &v277[13 * v14];
      if (*(v7 + 40) == 1)
      {
        re::VideoObject<re::VideoColorTransformBase>::setRef(v7 + 32, v7 + 4, v96[17]);
      }

      else
      {
        v7[4] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v7 + 32, v7 + 4, v96[17]);
        *(v7 + 40) = 1;
      }

      v97 = re::VideoImage::colorTags(&v230[10 * v14]);
      *(v7 + 84) = v97;
      *(v7 + 170) = BYTE2(v97);
      *(v7 + 10) = re::VideoImage::displayDimensions(&v230[10 * v14]);
      v7[11] = v98;
      v99 = *(v96 + 32);
      if (v99 == 3)
      {
        width = re::VideoMetalTextures::encodedSize(&v230[10 * v14]);
      }

      else if (v99 == 2)
      {
        width = re::VideoPixelBufferTextures::encodedSize(&v230[10 * v14]);
      }

      else if (v99 == 1 && *v96)
      {
        EncodedSize = CVImageBufferGetEncodedSize(*v96);
        height = EncodedSize.height;
        width = EncodedSize.width;
      }

      else
      {
        width = *MEMORY[0x1E695F060];
        height = *(MEMORY[0x1E695F060] + 8);
      }

      *(v7 + 8) = width;
      *(v7 + 9) = height;
      *(v7 + 12) = re::VideoImage::cleanRect(&v230[10 * v14]);
      v7[13] = v103;
      v7[14] = v104;
      v7[15] = v105;
      v106 = *(v96 + 32);
      switch(v106)
      {
        case 3:
          re::VideoPixelBufferDerived::normalizedRectangularMask(v265, &v230[10 * v14]);
          *(v7 + 17) = *v265;
          *(v7 + 145) = *&v265[9];
LABEL_153:
          re::VideoImage::asMetalTextures(&v230[10 * v14], v258);
          goto LABEL_177;
        case 2:
          re::VideoPixelBufferDerived::normalizedRectangularMask(v265, &v230[10 * v14]);
          *(v7 + 17) = *v265;
          *(v7 + 145) = *&v265[9];
LABEL_171:
          re::VideoImage::asPixelBufferTextures(&v230[10 * v14], v265);
          re::VideoPixelBufferTextures::asMetalTextures(v265, v258);
          for (i = 120; i != 96; i -= 8)
          {
            if (*&v265[i])
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v265[i]);
            }

            *&v265[i] = 0;
          }

          if (v270[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v270);
          }

          goto LABEL_177;
        case 1:
          re::VideoPixelBufferBase::normalizedRectangularMask(&v230[10 * v14], v14, v265);
          v106 = *(v96 + 32);
          break;
        default:
          v265[0] = 0;
          v265[24] = 0;
          break;
      }

      *(v7 + 17) = *v265;
      *(v7 + 145) = *&v265[9];
      switch(v106)
      {
        case 3:
          goto LABEL_153;
        case 2:
          goto LABEL_171;
        case 1:
          if (*v216)
          {
            v107 = 1;
          }

          else
          {
            re::VideoTextureCache::init(v216);
            v107 = *(v96 + 32) == 1;
          }

          v109 = 0;
          *&v265[8] = *MEMORY[0x1E695F060];
          v110 = *(v11 + 16);
          *&v265[24] = *v11;
          v265[2] = 2;
          *v265 = 514;
          v266 = v110;
          v267 = 0;
          v268 = 0;
          v269 = 0;
          memset(v270, 0, sizeof(v270));
          pixelBuffer[0] = 0;
          if (v107)
          {
            re::VideoObject<re::VideoPixelBufferBase>::setRef(pixelBuffer, pixelBuffer, *v96);
            v109 = pixelBuffer[0];
          }

          TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer(v216, v109, v265, 0, 0);
          v112 = TexturesFromPixelBuffer;
          if (pixelBuffer[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(pixelBuffer);
          }

          if (v112)
          {
            v113 = *re::videoLogObjects(TexturesFromPixelBuffer);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(pixelBuffer[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::convertToMetalTexture] Failed.", pixelBuffer, 2u);
            }
          }

          else
          {
            re::VideoPixelBufferTextures::asMetalTextures(v265, v258);
          }

          v114 = 120;
          v90 = v217;
          do
          {
            if (*&v265[v114])
            {
              re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v265[v114]);
            }

            *&v265[v114] = 0;
            v114 -= 8;
          }

          while (v114 != 96);
          if (v270[0])
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v270);
          }

          if (!v112)
          {
            goto LABEL_177;
          }

          goto LABEL_171;
      }

      v261 = 0u;
      v260 = 0u;
      *&v259[8] = 0u;
      memset(v258, 0, sizeof(v258));
      *&v258[8] = *MEMORY[0x1E695F060];
      v108 = *(v11 + 16);
      *&v258[24] = *v11;
      *v258 = 514;
      v258[2] = 2;
      *v259 = v108;
      v262 = 0u;
      v263 = 0u;
LABEL_177:
      objc_storeStrong(v7 + 1, *(&v262 + 1));
      objc_storeStrong(v7 + 2, v263);
      objc_storeStrong(v7 + 3, *(&v263 + 1));
      v117 = v96[18];
      v116 = v96[19];
      if (v116)
      {
        atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
      }

      v118 = v7[7];
      v7[6] = v117;
      v7[7] = v116;
      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v118);
      }

      v119 = v7[1];
      if (v119)
      {
        v120 = [v119 protectionOptions];
        v274 = (v274 | v120);
      }

      v121 = v7[2];
      if (v121)
      {
        v122 = [v121 protectionOptions];
        v274 = (v274 | v122);
      }

      v123 = v7[3];
      if (v123)
      {
        v124 = [v123 protectionOptions];
        v274 = (v274 | v124);
      }

      v125 = v7[23];
      if (v125)
      {
        v126 = [v125 protectionOptions];
        v274 = (v274 | v126);
      }

      v127 = v7[24];
      if (v127)
      {
        v128 = [v127 protectionOptions];
        v274 = (v274 | v128);
      }

      v129 = v7[25];
      if (v129)
      {
        v130 = [v129 protectionOptions];
        v274 = (v274 | v130);
      }

      for (j = 120; j != 96; j -= 8)
      {
      }

      if (v262)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v262);
      }

      if (++v14 >= v228)
      {
        goto LABEL_198;
      }
    }

    re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v14, v275);
    _os_crash();
    __break(1u);
LABEL_274:
    re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
    _os_crash();
    __break(1u);
LABEL_275:
    re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
    _os_crash();
    __break(1u);
LABEL_276:
    re::internal::assertLog(6, v167, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v168);
    _os_crash();
    __break(1u);
LABEL_277:
    re::internal::assertLog(6, v176, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v177);
    _os_crash();
    __break(1u);
LABEL_278:
    re::internal::assertLog(6, v185, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v186);
    v2 = _os_crash();
    __break(1u);
LABEL_279:
    v201 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_impl(&dword_1E1C61000, v201, OS_LOG_TYPE_DEFAULT, "[VideoPipeline::process] Begin", buf, 2u);
    }
  }

LABEL_198:
  v131 = *v273;
  *&v90[4].isa = *&v272[16];
  *&v90[6].isa = v131;
  *&v90[8].isa = *&v273[16];
  v90[10].isa = v274;
  v132 = *v272;
  *&v90->isa = *texture;
  *&v90[2].isa = v132;
  v11 = v218;
  if (texture != v90)
  {
    v133 = v275;
    isa = v90[11].isa;
    if (v275 >= isa)
    {
      if (isa)
      {
        v143 = 208 * isa;
        v144 = &v90[13];
        v145 = v277;
        do
        {
          v146 = re::VideoPipelineRenderableChannel::operator=(v144, v145);
          v145 += 13;
          v144 = v146 + 208;
          v143 -= 208;
        }

        while (v143);
        v147 = v90[11].isa;
      }

      else
      {
        v147 = 0;
      }

      if (v147 != v133)
      {
        v148 = 26 * v147;
        v149 = texture;
        v150 = v90;
        do
        {
          v151 = &v149[v148];
          v152 = &v149[v148 + 13];
          v153 = &v150[v148];
          LODWORD(v153[13].isa) = *v152;
          v154 = *&v149[v148 + 14];
          *(v152 + 8) = 0;
          *(v152 + 16) = 0;
          *&v153[14].isa = v154;
          v155 = v149[v148 + 16];
          *(v152 + 24) = 0;
          v153[16].isa = v155;
          LOBYTE(v153[17].isa) = 0;
          LOBYTE(v153[18].isa) = 0;
          if (LOBYTE(v149[v148 + 18]) == 1)
          {
            v153[17].isa = v151[17];
            v151[17] = 0;
            LOBYTE(v153[18].isa) = 1;
          }

          v156 = *&v149[v148 + 21];
          *&v153[19].isa = *&v149[v148 + 19];
          v157 = *&v149[v148 + 29];
          *&v153[27].isa = *&v149[v148 + 27];
          *&v153[29].isa = v157;
          *&v153[31].isa = *&v149[v148 + 31];
          *&v153[21].isa = v156;
          v158 = *&v149[v148 + 25];
          *&v153[23].isa = *&v149[v148 + 23];
          *&v153[25].isa = v158;
          *(&v153[32].isa + 3) = *(&v149[v148 + 32] + 3);
          v159 = *&v149[v148 + 37];
          *&v153[35].isa = *&v149[v148 + 35];
          *&v149[v148 + 19] = 0uLL;
          v149 += 26;
          *(v152 + 176) = 0uLL;
          *(v152 + 192) = 0uLL;
          v150 += 26;
          *&v153[37].isa = v159;
        }

        while ((v152 + 208) != &v277[13 * v133]);
      }
    }

    else
    {
      v135 = 208 * v275;
      if (v275)
      {
        v136 = v277;
        v137 = 208 * v275;
        v138 = &v90[13];
        do
        {
          v139 = re::VideoPipelineRenderableChannel::operator=(v138, v136);
          v136 += 13;
          v138 = v139 + 208;
          v137 -= 208;
        }

        while (v137);
        isa = v90[11].isa;
      }

      if (v133 != isa)
      {
        v140 = &v90[26 * v133 + 13];
        v141 = 208 * isa - v135;
        do
        {
          re::VideoPipelineRenderableChannel::~VideoPipelineRenderableChannel(v140);
          v140 = (v142 + 208);
          v141 -= 208;
        }

        while (v141);
      }
    }

    v90[11].isa = v133;
    re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v275);
    ++LODWORD(v90[12].isa);
  }

  v4 = v90 + 65;
  v160 = v280;
  v280 = 0uLL;
  v161 = v90[66].isa;
  *&v90[65].isa = v160;
  if (v161)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v161);
    if (*(&v280 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v280 + 1));
    }
  }

  re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v275);
  v163 = v90[11].isa;
  LODWORD(v9) = v219;
  if (!v163)
  {
    goto LABEL_251;
  }

  v14 = &v90[35];
  j = 2;
  do
  {
    if (v239 > j - 2)
    {
      re::VideoObject<re::VideoPixelBufferBase>::setRef(v14, v14, *(&v239 + j));
      v163 = v90[11].isa;
    }

    v164 = j++ - 1;
    v14 += 208;
  }

  while (v164 < v163);
  if (!v163 || (*(v219 + 11) & 1) == 0)
  {
LABEL_251:
    if (buf[0].value)
    {
      re::VideoPipelineProcessor::dispatch(v214, buf, (v218 + 2288), v213, *(v219 + 14));
    }

    operator new();
  }

  v1 = 0;
  v7 = (&v90[34].isa + 1);
  while (1)
  {
    v165 = *(v7 - 161);
    if (v165)
    {
      v166 = [v165 pixelFormat];
      v168 = v90[11].isa;
      if (v168 <= v1)
      {
        goto LABEL_276;
      }

      v169 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v166, *v7);
      v163 = v90[11].isa;
      if (v169)
      {
        break;
      }
    }

LABEL_236:
    if (v163 <= v1)
    {
      goto LABEL_274;
    }

    v174 = *(v7 - 153);
    if (v174)
    {
      v175 = [v174 pixelFormat];
      v177 = v90[11].isa;
      if (v177 <= v1)
      {
        goto LABEL_277;
      }

      v178 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v175, *v7);
      v163 = v90[11].isa;
      if (v178)
      {
        if (v163 <= v1)
        {
          goto LABEL_283;
        }

        v179 = [*(v7 - 153) newTextureViewWithPixelFormat:v178];
        v181 = v90[11].isa;
        if (v181 <= v1)
        {
          goto LABEL_284;
        }

        v182 = *(v7 + 23);
        *(v7 + 23) = v179;

        v163 = v90[11].isa;
      }
    }

    if (v163 <= v1)
    {
      goto LABEL_275;
    }

    v183 = *(v7 - 145);
    if (v183)
    {
      v184 = [v183 pixelFormat];
      v186 = v90[11].isa;
      if (v186 <= v1)
      {
        goto LABEL_278;
      }

      v187 = re::CoreVideoUtils::metalPixelFormatVariantForTransferFunctionLegacy(v184, *v7);
      v163 = v90[11].isa;
      if (v187)
      {
        if (v163 <= v1)
        {
          goto LABEL_285;
        }

        v188 = [*(v7 - 145) newTextureViewWithPixelFormat:v187];
        v190 = v90[11].isa;
        if (v190 <= v1)
        {
          goto LABEL_286;
        }

        v191 = *(v7 + 31);
        *(v7 + 31) = v188;

        v163 = v90[11].isa;
      }
    }

    ++v1;
    v7 += 26;
    if (v1 >= v163)
    {
      goto LABEL_251;
    }
  }

  if (v163 > v1)
  {
    v170 = [*(v7 - 161) newTextureViewWithPixelFormat:v169];
    v172 = v90[11].isa;
    if (v172 <= v1)
    {
      goto LABEL_282;
    }

    v173 = *(v7 + 15);
    *(v7 + 15) = v170;

    v163 = v90[11].isa;
    goto LABEL_236;
  }

  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash();
  __break(1u);
LABEL_282:
  re::internal::assertLog(6, v171, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v172);
  _os_crash();
  __break(1u);
LABEL_283:
  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash();
  __break(1u);
LABEL_284:
  re::internal::assertLog(6, v180, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v181);
  _os_crash();
  __break(1u);
LABEL_285:
  re::internal::assertLog(6, v162, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v163);
  _os_crash();
  __break(1u);
LABEL_286:
  re::internal::assertLog(6, v189, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v1, v190);
  _os_crash();
  __break(1u);
LABEL_287:
  LOWORD(texture[0]) = 0;
  _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[VideoPipeline::process] Failed to execute node. Node is invalid.", texture, 2u);
LABEL_107:
  v16 = 1;
LABEL_253:

  if (v228)
  {
    v192 = 160 * v228;
    v193 = v231;
    do
    {
      v194 = *(v193 + 3);
      if (v194)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v194);
      }

      if (*(v193 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v193 + 1);
      }

      *(v193 + 1) = 0;
      v195 = *v193;
      if (v195 != -1)
      {
        (off_1F5D1B5A8[v195])(texture, v193 - 32);
      }

      *v193 = -1;
      v193 += 40;
      v192 -= 160;
    }

    while (v192);
  }

  re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(buf);
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v239);

  if (v245)
  {
    v196 = 160 * v245;
    v197 = &v248;
    do
    {
      v198 = *(v197 + 3);
      if (v198)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v198);
      }

      if (*(v197 + 1))
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v197 + 1);
      }

      *(v197 + 1) = 0;
      v199 = *v197;
      if (v199 != -1)
      {
        (off_1F5D1B5A8[v199])(buf, v197 - 32);
      }

      *v197 = -1;
      v197 += 40;
      v196 -= 160;
    }

    while (v196);
  }

  return v16;
}

uint64_t re::VideoPipeline::selectNode(uint64_t a1, int a2)
{
  if (!*(a1 + 2184 + 8 * a2))
  {
    if (a2 > 2)
    {
      if (a2 <= 4)
      {
        if (a2 == 3)
        {
          operator new();
        }

        operator new();
      }

      if (a2 == 5)
      {
        operator new();
      }

      operator new();
    }

    if (a2)
    {
      if (a2 == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  return *(a1 + 2184 + 8 * a2);
}

double re::VideoPipelineHDRNode::VideoPipelineHDRNode(re::VideoPipelineHDRNode *this)
{
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5D1B738;
  *(this + 11) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  *&result = 0x7FFFFFFFLL;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = 0;
  *(this + 104) = 514;
  *(this + 210) = 2;
  *(this + 54) = 0;
  return result;
}

_DWORD *re::VideoPipeline::setOwner(_DWORD *this, int a2)
{
  if (this[562] != a2)
  {
    v2 = this;
    v3 = 0;
    this[562] = a2;
    v4 = this + 546;
    do
    {
      this = *&v4[v3];
      if (this)
      {
        this = (*(*this + 80))(this, v2[562]);
      }

      v3 += 2;
    }

    while (v3 != 16);
  }

  return this;
}

void re::DynamicInlineArray<re::VideoPipelineStageChannel,2ul>::copy(void *a1, uint64_t *a2)
{
  v3 = (a2 + 2);
  v4 = *a2;
  v5 = (a1 + 2);
  if (*a2 >= *a1)
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(v3, v3 + 160 * *a1, v5);
    if (*a1 != v4)
    {
      v10 = v3 + 160 * v4;
      v11 = v3 + 160 * *a1;
      v12 = &a1[20 * *a1 + 21];
      do
      {
        *(v12 - 6) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>((v12 - 19), v11);
        *(v12 - 2) = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v12 - 16, v12 - 2, *(v11 + 136));
        v13 = *(v11 + 152);
        *(v12 - 1) = *(v11 + 144);
        *v12 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v11 += 160;
        v12 += 20;
      }

      while (v11 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(v3, v3 + 160 * v4, v5);
    if (v4 != *a1)
    {
      v6 = 160 * *a1 - 160 * v4;
      v7 = &a1[20 * v4 + 18];
      do
      {
        v8 = *(v7 + 3);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (*(v7 + 1))
        {
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v7 + 1);
        }

        *(v7 + 1) = 0;
        v9 = *v7;
        if (v9 != -1)
        {
          (off_1F5D1B5A8[v9])(&v14, v7 - 32);
        }

        *v7 = -1;
        v7 += 40;
        v6 -= 160;
      }

      while (v6);
    }
  }

  *a1 = v4;
}

void std::__copy_impl::operator()[abi:nn200100]<re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel const*,re::VideoPipelineStageChannel*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>(a3, v5);
      v6 = a3 + 136;
      re::VideoObject<re::VideoColorTransformBase>::setRef(v6, v6, *(v5 + 136));
      v8 = *(v5 + 144);
      v7 = *(v5 + 152);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 16);
      *(v6 + 8) = v8;
      *(v6 + 16) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v5 += 160;
      a3 = v6 + 24;
    }

    while (v5 != a2);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 128);
  v4 = *(a2 + 128);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5D1B5A8[v3])(&v6, result, a2);
    *(v2 + 128) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5D1B5C8[v4])(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJS8_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 128);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_1F5D1B5A8[v2])(&v3, v1);
  }

  *(v1 + 128) = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN2re11VideoObjectINS9_20VideoPixelBufferBaseEEENS9_24VideoPixelBufferTexturesENS9_18VideoMetalTexturesEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJS8_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      v7 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v7;
      v8 = *(a3 + 32);
      v9 = *(a3 + 48);
      v10 = *(a3 + 64);
      *(a2 + 73) = *(a3 + 73);
      *(a2 + 48) = v9;
      *(a2 + 64) = v10;
      *(a2 + 32) = v8;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(a2 + 96, (a2 + 96), *(a3 + 96));
      v11 = 0;
      v12 = (a2 + 104);
      v13 = a3 + 104;
      do
      {
        re::VideoObject<re::VideoPixelBufferBase>::setRef(v12, v12, *(v13 + 8 * v11++));
        ++v12;
      }

      while (v11 != 3);
      return;
    }

    (off_1F5D1B5A8[v5])(&v22, v4);
  }

  *(v4 + 128) = -1;
  v14 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v14;
  v15 = *(a3 + 32);
  v16 = *(a3 + 48);
  v17 = *(a3 + 64);
  *(v4 + 73) = *(a3 + 73);
  *(v4 + 48) = v16;
  *(v4 + 64) = v17;
  *(v4 + 32) = v15;
  *(v4 + 96) = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(v4 + 96, (v4 + 96), *(a3 + 96));
  v18 = 0;
  v19 = (v4 + 104);
  v20 = a3 + 104;
  v21 = (v4 + 104);
  do
  {
    *v21++ = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(v19, v19, *(v20 + 8 * v18++));
    v19 = v21;
  }

  while (v18 != 3);
  *(v4 + 128) = 2;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 160);
  if (v4 != -1)
  {
    result = (*(&off_1F5D1B5E8 + v4))(&v7, result);
  }

  *(v3 + 160) = -1;
  v5 = *(a2 + 160);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5D1B610[v5])(&v6, a2);
    *(v3 + 160) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(void **a1, id *a2)
{
  v3 = *a1;
  *v3 = *a2;
  result = a2[1];
  v3[1] = result;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN2re37VideoPipelineSurfaceAcceleratorConfigENS9_22VideoPipelineMipConfigENS9_22VideoPipelinePSEConfigENS9_25VideoPipelineHDRGPUConfigEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  *v3 = *a2;
  *(v3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(v3 + 16) = *(a2 + 16);
  *(v3 + 24) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v3 + 24, (v3 + 24), *(a2 + 24));
  *(v3 + 32) = 0;
  v5 = v3 + 32;
  re::VideoObject<re::VideoColorTransformBase>::setRef(v5, v5, *(a2 + 32));
  *(v5 + 8) = *(a2 + 40);
}

re::VideoPipelineSurfaceAcceleratorConfig *re::VideoPipelineSurfaceAcceleratorConfig::VideoPipelineSurfaceAcceleratorConfig(re::VideoPipelineSurfaceAcceleratorConfig *this, const re::VideoPipelineSurfaceAcceleratorConfig *a2)
{
  *this = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this, this, *a2);
  *(this + 1) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 8, this + 1, *(a2 + 1));
  *(this + 2) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 16, this + 2, *(a2 + 2));
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 7);
  *(this + 8) = 0;
  *(this + 7) = v6;
  *(this + 40) = v5;
  *(this + 24) = v4;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 64, this + 8, *(a2 + 8));
  *(this + 72) = *(a2 + 72);
  v7 = *(a2 + 11);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(this + 12) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(this + 96, this + 12, *(a2 + 12));
  v8 = *(a2 + 14);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 18);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::__variant_detail::__alt<4ul,re::VideoPipelineHDRGPUConfig>::__alt[abi:nn200100]<re::VideoPipelineHDRGPUConfig const&>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1, a1, *a2);
  *(a1 + 8) = 0;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 8, (a1 + 8), *(a2 + 8));
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t re::VideoPipelineRenderableChannel::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;

  v8 = *(a2 + 24);
  *(a2 + 24) = 0;
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  else if (*(a1 + 40))
  {
    if (*(a1 + 32))
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release((a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  v10 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v11 = *(a1 + 56);
  *(a1 + 48) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(a2 + 64);
  v13 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v13;
  *(a1 + 64) = v12;
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v15;
  *(a1 + 144) = v16;
  *(a1 + 112) = v14;
  v17 = *(a2 + 176);
  *(a2 + 184) = 0;
  v18 = *(a1 + 184);
  *(a1 + 176) = v17;
  *(a2 + 176) = 0;

  v19 = *(a2 + 192);
  *(a2 + 192) = 0;
  v20 = *(a1 + 192);
  *(a1 + 192) = v19;

  v21 = *(a2 + 200);
  *(a2 + 200) = 0;
  v22 = *(a1 + 200);
  *(a1 + 200) = v21;

  return a1;
}

void *re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 176 * *result;
    v3 = result + 22;
    do
    {
      v4 = *v3;
      if (v4 != -1)
      {
        result = (*(&off_1F5D1B5E8 + v4))(&v5, v3 - 40);
      }

      *v3 = -1;
      v3 += 44;
      v2 -= 176;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::VideoPixelBufferDerived::normalizedRectangularMask(re::VideoPixelBufferDerived *this, uint64_t a2)
{
  v2 = *(a2 + 80);
  *this = *(a2 + 64);
  *(this + 1) = v2;
  if (*(this + 24) == 1)
  {
    v3 = vcvt_f32_f64(*(a2 + 8));
    v4 = vdiv_f32(v3, *this);
    v5 = vmul_f32(*(this + 8), v4);
    v6 = vmul_f32(v4, *(this + 16));
    v7 = vadd_f32(v5, v6);
    v8 = vbsl_s8(vcgt_f32(v7, v3), v3, v7);
    v9 = vbsl_s8(vcgt_f32(v6, v3), v3, v6);
    *&v2 = vbic_s8(v9, vcltz_f32(v9));
    *(this + 1) = vsub_f32(vbic_s8(v8, vcltz_f32(v8)), *&v2);
    *(this + 2) = v2;
  }

  return *&v2;
}

double re::VideoPipelineSDRNode::VideoPipelineSDRNode(re::VideoPipelineSDRNode *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5D1B370;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 0;
  *(this + 260) = 0x7FFFFFFFLL;
  *(this + 34) = 0;
  *(this + 140) = 514;
  *(this + 282) = 2;
  *(this + 72) = 0;
  *(this + 37) = 0;
  return result;
}

void std::__shared_ptr_emplace<std::atomic<re::VideoReturn>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D1B648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

unint64_t re::DynamicInlineArray<re::VideoPipelineNode *,32ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0x1F)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::VideoPipelinePolicy::CanUpscale(re::VideoPipelinePolicy *this, const re::VideoSample *a2)
{
  result = re::VideoDefaults::aseAllowed(this);
  if (result)
  {
    if (result)
    {
      {
        v4 = *(this + 48);
        if (v4 > 3 || v4 == 1)
        {
          if (!*(this + 7))
          {
            return 1;
          }

          v5 = 0;
          v6 = this + 72;
          while (1)
          {
            PixelFormatType = *&v6[8 * v5];
            if (PixelFormatType)
            {
              PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
            }

            if (re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType))
            {
              break;
            }

            Height = *&v6[8 * v5];
            if (Height)
            {
              Width = CVPixelBufferGetWidth(Height);
              Height = *&v6[8 * v5];
              if (Height)
              {
                Height = CVPixelBufferGetHeight(Height);
              }
            }

            else
            {
              Width = 0;
            }

            if (Height * Width > 0xE1000)
            {
              break;
            }

            ++v5;
            result = 1;
            if (v5 >= *(this + 7))
            {
              return result;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

__CVBuffer *re::VideoPipelinePolicy::CanDimFlashingLights(__CVBuffer **this, const re::VideoSample *a2)
{
  v3 = re::VideoDefaults::pseAllowed(this);
  result = 0;
  if (v3 && this[7] == 1)
  {
    if ((*(this + 48) | 2) == 2)
    {
      return 0;
    }

    PixelFormatType = this[9];
    if (PixelFormatType)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
    }

    result = re::CoreVideoUtils::canConvertToGammaSpaceRGBColorModel(PixelFormatType);
    if (result)
    {
      {
      }

      result = this[9];
      if (result)
      {
        IOSurface = CVPixelBufferGetIOSurface(result);
        CFRetain(IOSurface);
        v8 = IOSurface;
        {
          if (!IOSurface)
          {
            return 0;
          }

LABEL_16:
          re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v8);
          return v7;
        }

        v7 = 0;
        result = 0;
        if (IOSurface)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::VideoPipelinePolicy::CanGenerateMipMap(re::VideoPipelinePolicy *this, const re::VideoSample *a2)
{
  result = re::VideoDefaults::mipmapEnabled(this);
  if (result)
  {
    result = 0;
    if (isPhysicalHardware)
    {
      if (*(this + 7) == 1)
      {
        return (*(this + 48) == 1);
      }
    }
  }

  return result;
}

uint64_t re::VideoPipelineColorTransformGenerator::computeTransform(int8x8_t *a1, __CVBuffer **a2, int a3, int a4, const void **a5)
{
  v9 = re::VideoPipelineColorTransformGenerator::colorSyncProfile(a1, a2);
  v10 = re::VideoPipelineColorTransformGenerator::colorSyncProfile(a1, a3 & 0xFFFFFF, a4);

  return re::VideoPipelineColorTransformGenerator::computeTransform(a1, v9, v10, a5);
}

ColorSyncProfileRef re::VideoPipelineColorTransformGenerator::colorSyncProfile(void *a1, __CVBuffer **this)
{
  v4 = re::VideoPixelBufferBase::colorTags(this);
  v13 = v4;
  v14 = BYTE2(v4);
  v5 = std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(a1, &v13);
  if (v5)
  {
    return v5[3];
  }

  v7 = re::VideoPixelBufferBase::colorSpace(this);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CGColorSpaceCopyICCData(v7);
  if (!v9)
  {
    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  v6 = ColorSyncProfileCreate(v9, 0);
  CFRelease(v10);
  CFRelease(v8);
  if (v6)
  {
    v12[0] = v13 | (v14 << 16);
    v12[1] = v6;
    std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(a1, v12);
  }

  return v6;
}

ColorSyncProfileRef re::VideoPipelineColorTransformGenerator::colorSyncProfile(void *a1, int a2, int a3)
{
  *v14 = a2;
  v15 = BYTE2(a2);
  v5 = std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(a1, v14);
  if (v5)
  {
    return v5[3];
  }

  v7 = re::CoreVideoUtils::colorSpaceNameFromColorTags(v14[0], v14[1], v15, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = CGColorSpaceCreateWithName(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CGColorSpaceCopyICCData(v8);
  if (!v10)
  {
    CFRelease(v9);
    return 0;
  }

  v11 = v10;
  v6 = ColorSyncProfileCreate(v10, 0);
  CFRelease(v11);
  CFRelease(v9);
  if (v6)
  {
    v13[0] = *v14 | (v15 << 16);
    v13[1] = v6;
    std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(a1, v13);
  }

  return v6;
}

uint64_t re::VideoPipelineColorTransformGenerator::computeTransform(int8x8_t *a1, CFTypeRef cf, const void *a3, const void **a4)
{
  result = 1;
  if (!cf || !a3)
  {
    return result;
  }

  *&v50 = cf;
  *(&v50 + 1) = a3;
  v8 = CFHash(cf);
  v9 = CFHash(a3);
  v10 = a1[6];
  if (v10)
  {
    v11 = ((v8 << 6) + (v8 >> 2) + v9 - 0x61C8864680B583E9) ^ v8;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v11;
      if (v11 >= *&v10)
      {
        v14 = v11 % *&v10;
      }
    }

    else
    {
      v14 = v11 & (*&v10 - 1);
    }

    v15 = *(*&a1[5] + 8 * v14);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          if (std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(i + 2, &v50))
          {
            v43 = i[4];
            goto LABEL_47;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v17 >= *&v10)
            {
              v17 %= *&v10;
            }
          }

          else
          {
            v17 &= *&v10 - 1;
          }

          if (v17 != v14)
          {
            break;
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, 0, 0);
  v20 = MEMORY[0x1E695BBD0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD0], cf);
  v21 = MEMORY[0x1E695BBD8];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD8], *MEMORY[0x1E695BBE0]);
  v22 = MEMORY[0x1E695BC18];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BC18], *MEMORY[0x1E695BC00]);
  v23 = MEMORY[0x1E695BB18];
  v24 = *MEMORY[0x1E695E4C0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BB18], *MEMORY[0x1E695E4C0]);
  v25 = CFDictionaryCreateMutable(v18, 4, 0, 0);
  CFDictionaryAddValue(v25, *v20, a3);
  CFDictionaryAddValue(v25, *v21, *MEMORY[0x1E695BBE8]);
  CFDictionaryAddValue(v25, *v22, *MEMORY[0x1E695BC10]);
  CFDictionaryAddValue(v25, *v23, v24);
  v26 = CFArrayCreateMutable(0, 2, 0);
  CFArraySetValueAtIndex(v26, 0, Mutable);
  CFArraySetValueAtIndex(v26, 1, v25);
  v28 = 0;
  if (re::VideoDefaults::useBT1886ForCoreVideoGamma(v27))
  {
    v28 = CFDictionaryCreateMutable(v18, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v28, *MEMORY[0x1E695BC20], *MEMORY[0x1E695E4D0]);
  }

  v29 = ColorSyncTransformCreate(v26, v28);
  if (!v29)
  {
    v38 = re::VideoDefaults::logEnabled(0);
    if (v38)
    {
      v44 = *re::videoLogObjects(v38);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cfa[0]) = 0;
        _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "[VideoColorManager::computeTransform]: color transformation failed to create", cfa, 2u);
      }
    }

    v43 = 0;
    if (v28)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v30 = v29;
  v31 = MEMORY[0x1E6903650](v29, *MEMORY[0x1E695BC08], 0);
  v43 = v31;
  if (!v31)
  {
    goto LABEL_44;
  }

  v45 = v30;
  *cfa = v50;
  v49 = v31;
  v32 = CFHash(v50);
  v33 = ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + CFHash(cfa[1])) ^ v32;
  v34 = a1[6];
  v46 = v33;
  if (!*&v34)
  {
    goto LABEL_43;
  }

  v35 = vcnt_s8(v34);
  v35.i16[0] = vaddlv_u8(v35);
  v36 = v35.u32[0];
  if (v35.u32[0] > 1uLL)
  {
    v37 = v33;
    if (v33 >= *&v34)
    {
      v37 = v33 % *&v34;
    }
  }

  else
  {
    v37 = v33 & (*&v34 - 1);
  }

  v39 = *(*&a1[5] + 8 * v37);
  if (!v39 || (v40 = *v39) == 0)
  {
LABEL_43:
    operator new();
  }

  while (1)
  {
    v41 = v40[1];
    if (v41 == v33)
    {
      break;
    }

    if (v36 > 1)
    {
      if (v41 >= *&v34)
      {
        v41 %= *&v34;
      }
    }

    else
    {
      v41 &= *&v34 - 1;
    }

    if (v41 != v37)
    {
      goto LABEL_43;
    }

LABEL_42:
    v40 = *v40;
    if (!v40)
    {
      goto LABEL_43;
    }
  }

  v42 = std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(v40 + 2, cfa);
  v33 = v46;
  if ((v42 & 1) == 0)
  {
    goto LABEL_42;
  }

  v30 = v45;
LABEL_44:
  CFRelease(v30);
  if (v28)
  {
LABEL_45:
    CFRelease(v28);
  }

LABEL_46:
  CFRelease(v26);
  CFRelease(Mutable);
  CFRelease(v25);
LABEL_47:
  if (!v43)
  {
    return 1;
  }

  if (*a4)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a4);
  }

  *a4 = v43;
  CFRetain(v43);
  return 0;
}

void *re::VideoPipelineColorTransformGenerator::clear(re::VideoPipelineColorTransformGenerator *this)
{
  for (i = *(this + 2); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this);
  for (j = *(this + 7); j; j = *j)
  {
    v5 = j[4];
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(this + 5);
}

uint64_t **std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::find<re::VideoColorTags>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (v5 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (result = *v10; result; result = *result)
  {
    v12 = result[1];
    if (v12 == v7)
    {
      if (*(result + 16) == v3 && __PAIR64__(*(result + 18), *(result + 17)) == __PAIR64__(v5, v4))
      {
        return result;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }
      }

      else
      {
        v12 &= *&v2 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::__unordered_map_hasher<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::hash<re::VideoColorTags>,std::equal_to<re::VideoColorTags>,true>,std::__unordered_map_equal<re::VideoColorTags,std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>,std::equal_to<re::VideoColorTags>,std::hash<re::VideoColorTags>,true>,std::allocator<std::__hash_value_type<re::VideoColorTags,ColorSyncProfile const*>>>::__emplace_unique_key_args<re::VideoColorTags,std::pair<re::VideoColorTags,ColorSyncProfile const*>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = (v3 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v6 = (v4 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v4 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 16) != v2 || __PAIR64__(*(v11 + 18), *(v11 + 17)) != __PAIR64__(v4, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t std::equal_to<std::pair<ColorSyncProfile const*,ColorSyncProfile const*>>::operator()(CFTypeRef *a1, CFTypeRef *a2)
{
  result = CFEqual(*a1, *a2);
  if (result)
  {
    return CFEqual(a1[1], a2[1]) != 0;
  }

  return result;
}

uint64_t re::VideoPipelineHDRNode::init(uint64_t a1, uint64_t a2)
{
  {
    v4 = 1882468912;
  }

  else
  {
    v4 = 1380411457;
  }

  v5 = re::VideoHDRDefaults::overridePixelFormat(v4);
  re::VideoPipelineHDRConfigGenerator::init((a1 + 88), 3840, 2160, *(a2 + 16), v5, *(a2 + 24));
  return 0;
}

uint64_t re::VideoPipelineHDRNode::execute(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v97 = *MEMORY[0x1E69E9840];
  {
    v10 = 1882468912;
  }

  else
  {
    v10 = 1380411457;
  }

  v11 = re::VideoHDRDefaults::overridePixelFormat(v10);
  v69 = v11;
  v70 = a1;
  v63 = (a1 + 11);
  if (!a1[11])
  {
    v12 = *re::videoLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[VideoPipelineHDRNode::execute] HDR Config Generator is not initialized.", buf, 2u);
    }

    re::VideoPipelineHDRConfigGenerator::init(v63, 3840, 2160, *(a5 + 16), v69, *(a5 + 24));
  }

  v68 = re::VideoHDRDefaults::overrideColorPrimaries(*(a5 + 16));
  v67 = re::VideoHDRDefaults::overrideTransferFunction(0xD);
  v66 = re::VideoHDRDefaults::overrideYCbCrMatrix(1);
  if (!*(a3 + 72))
  {
    return 0;
  }

  v13 = 0;
  v14 = a7 + 240;
  v15 = (a3 + 216);
  v65 = a3;
  while (1)
  {
    v16 = re::VideoImage::planeCount((v15 - 16));
    if (v16 >= 3)
    {
      v57 = *re::videoLogObjects(v16);
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 0;
      v58 = "[VideoPipelineHDRNode] Input image has more than two planes.";
      goto LABEL_113;
    }

    if (*v15 != 1)
    {
      break;
    }

    v18 = *(a7 + 72);
    if (v18 <= v13)
    {
      re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v18);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v60);
      _os_crash();
      __break(1u);
      re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v13, v62);
      _os_crash();
      __break(1u);
    }

    pixelBuffer = 0;
    re::VideoObject<re::VideoPixelBufferBase>::setRef(&pixelBuffer, &pixelBuffer, *(v15 - 16));
    Height = pixelBuffer;
    if (!pixelBuffer)
    {
      Width = 0;
LABEL_17:
      v21 = 0;
      goto LABEL_18;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_17;
    }

    Height = CVPixelBufferGetHeight(pixelBuffer);
    v21 = Height;
LABEL_18:
    if (a2[4] == 1 && v21 * Width <= 0xE1000)
    {
      *(a7 + 48) = 2;
      Width *= 2;
      v21 *= 2;
    }

    v82 = 0;
    ProtectionOptions = pixelBuffer;
    if (pixelBuffer)
    {
      CVPixelBufferGetIOSurface(pixelBuffer);
      ProtectionOptions = IOSurfaceGetProtectionOptions();
    }

    re::VideoSimplePixelBufferAllocator::createPixelBuffer((v70 + 96), Width, v21, v69, v68, v67, v66, 1, buf, 0x400u, 0x10u, isPhysicalHardware, ProtectionOptions);
    v82 = *buf;
    v24 = re::VideoImage::cleanRect((v15 - 16));
    v26 = v25;
    v28 = v27;
    v30 = v29;
    re::VideoImage::displayDimensions((v15 - 16));
    re::VideoImage::rectangularMask(v15 - 16, v13, &v78);
    {
      cf = 0;
      v90 = 0;
      v33 = v65;
      if (pixelBuffer)
      {
        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(IOSurface);
      }

      else
      {
        IOSurface = 0;
      }

      cf = IOSurface;
      if (v82)
      {
        v38 = CVPixelBufferGetIOSurface(v82);
        CFRetain(v38);
        IOSurface = cf;
      }

      else
      {
        v38 = 0;
      }

      v90 = v38;
      *v91 = *(a5 + 20);
      v91[2] = *(a5 + 36);
      *&v91[3] = *(a5 + 44);
      *&v91[5] = *(a5 + 60);
      LOBYTE(v91[7]) = *(a5 + 16);
      *buf = 0;
      re::VideoObject<re::VideoColorTransformBase>::setRef(buf, buf, IOSurface);
      *&buf[8] = 0;
      re::VideoObject<re::VideoColorTransformBase>::setRef(&buf[8], &buf[8], v90);
      *v85 = *v91;
      *&v85[2] = *&v91[2];
      *&v85[4] = *&v91[4];
      *(&v85[5] + 1) = *(&v91[5] + 1);
      v88 = 4;
      re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
      if (v88 != -1)
      {
        (*(&off_1F5D1B7A8 + v88))(&v74, buf);
      }

      if (v90)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v90);
      }

      v90 = 0;
      if (cf)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&cf);
      }

LABEL_94:
      v54 = re::VideoImage::horizontalDisparityAdjustment(v15 - 16);
      re::VideoPixelBufferBase::setCleanRect(&v82, v24, v26, v28, v30);
      if (v82)
      {
        CVImageBufferSetDisplayDimensions();
      }

      re::VideoPixelBufferBase::setHorizontalDisparityAdjustment(&v82, v54);
      if (v81 == 1)
      {
        re::VideoPixelBufferBase::setRectangularMask(&v82, *&v79, *&v80, *&v78);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,re::VideoObject<re::VideoPixelBufferBase>,re::VideoPixelBufferTextures,re::VideoMetalTextures>>::__assign_alt[abi:nn200100]<1ul,re::VideoObject<re::VideoPixelBufferBase>,re::VideoObject<re::VideoPixelBufferBase> const&>(v14 - 152, (v14 - 152), &v82);
      v55 = 1;
      goto LABEL_100;
    }

    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v32 = re::VideoPipelineHDRConfigGenerator::createConfig(v63, &pixelBuffer, &v82, (a5 + 20), (a5 + 44), &v74);
    v33 = v65;
    if (v32)
    {
      v34 = *re::videoLogObjects(v32);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Unable to create HDR configuration.", buf, 2u);
      }

      v35 = 0;
    }

    else
    {
      cf = 0;
      v90 = 0;
      LOBYTE(v91[1]) = 0;
      v91[0] = 0;
      memset(&v91[2], 0, 41);
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0;
      if (pixelBuffer)
      {
        v37 = CVPixelBufferGetIOSurface(pixelBuffer);
        CFRetain(v37);
      }

      else
      {
        v37 = 0;
      }

      cf = v37;
      if (v82)
      {
        v39 = CVPixelBufferGetIOSurface(v82);
        CFRetain(v39);
      }

      else
      {
        v39 = 0;
      }

      v90 = v39;
      re::VideoObject<re::VideoColorTransformBase>::setRef(&v91[6], &v91[6], v74);
      LOBYTE(v91[7]) = v75;
      if (*a2 == 1)
      {
        re::VideoHistogram::create(v40);
      }

      if (*(v65 + 48) == *(a7 + 48))
      {
        goto LABEL_77;
      }

      memset(v85, 0, 40);
      *buf = 0u;
      v41 = re::VideoPipelineUpscalingNode::createUpscalingConfig(v70, v13, &pixelBuffer, &v82, buf);
      v42 = v41;
      if (v41)
      {
        v43 = *re::videoLogObjects(v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v73 = 0;
          _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "[VideoPipelineHDRNode::execute] Unable to create upscaling configuration.", v73, 2u);
        }
      }

      else
      {
        v45 = *&buf[8];
        v44 = v85[0];
        if (v85[0])
        {
          atomic_fetch_add_explicit(&v85[0]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = v94;
        *(&v93 + 1) = v45;
        *&v94 = v44;
        if (v46)
        {
          std::__shared_weak_count::__release_weak(v46);
        }

        re::VideoObject<re::VideoColorTransformBase>::setRef(&v93, &v93, *buf);
        v48 = v85[1];
        v47 = v85[2];
        if (v85[2])
        {
          atomic_fetch_add_explicit(&v85[2]->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v49 = v95;
        *(&v94 + 1) = v48;
        *&v95 = v47;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v49);
        }

        v51 = v85[3];
        v50 = v85[4];
        if (v85[4])
        {
          atomic_fetch_add_explicit(&v85[4]->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v52 = v96;
        *(&v95 + 1) = v51;
        v96 = v50;
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v52);
        }

        v53 = *(a7 + 48);
        v24 = v24 * v53;
        v26 = v26 * v53;
        v28 = v28 * v53;
        v30 = v30 * v53;
        if (v81 == 1)
        {
          v79 = vmul_n_f32(v79, v53);
          v80 = vmul_n_f32(v80, v53);
          v78 = vmul_n_f32(v78, v53);
        }
      }

      if (v85[4])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85[4]);
      }

      if (v85[2])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85[2]);
      }

      if (v85[0])
      {
        std::__shared_weak_count::__release_weak(v85[0]);
      }

      if (*buf)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(buf);
      }

      if (!v42)
      {
LABEL_77:
        *buf = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(buf, buf, cf);
        *&buf[8] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&buf[8], &buf[8], v90);
        v85[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v85, v85, v91[0]);
        *&v85[1] = *&v91[1];
        *&v85[3] = *&v91[3];
        v85[5] = v91[5];
        v85[6] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v85[6], &v85[6], v91[6]);
        LOBYTE(v85[7]) = v91[7];
        v86 = v92;
        if (*(&v92 + 1))
        {
          atomic_fetch_add_explicit((*(&v92 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        v87[0] = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(v87, v87, v93);
        v87[1] = *(&v93 + 1);
        v87[2] = v94;
        if (v94)
        {
          atomic_fetch_add_explicit((v94 + 16), 1uLL, memory_order_relaxed);
        }

        v87[3] = *(&v94 + 1);
        v87[4] = v95;
        if (v95)
        {
          atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
        }

        v87[5] = *(&v95 + 1);
        v87[6] = v96;
        if (v96)
        {
          atomic_fetch_add_explicit(v96 + 1, 1uLL, memory_order_relaxed);
        }

        v88 = 1;
        re::DynamicInlineArray<std::variant<std::monostate,re::VideoPipelineSurfaceAcceleratorConfig,re::VideoPipelineMipConfig,re::VideoPipelinePSEConfig,re::VideoPipelineHDRGPUConfig>,16ul>::add(a4, buf);
        if (v88 != -1)
        {
          (*(&off_1F5D1B7A8 + v88))(v73, buf);
        }

        v35 = 1;
      }

      else
      {
        v35 = 0;
      }

      re::VideoPipelineSurfaceAcceleratorConfig::~VideoPipelineSurfaceAcceleratorConfig(&cf);
    }

    if (v77)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v77);
    }

    if (v74)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v74);
    }

    if (v35)
    {
      goto LABEL_94;
    }

    v55 = 0;
LABEL_100:
    if (v82)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v82);
    }

    if (pixelBuffer)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&pixelBuffer);
    }

    if (v55)
    {
      ++v13;
      v14 += 160;
      v15 += 20;
      if (v13 < *(v33 + 72))
      {
        continue;
      }
    }

    return v55 ^ 1u;
  }

  v57 = *re::videoLogObjects(v16);
  if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    return 1;
  }

  *buf = 0;
  v58 = "[VideoPipelineHDRNode] Input image is not a pixel buffer.";
LABEL_113:
  _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, v58, buf, 2u);
  return 1;
}