void *re::anonymous namespace::createImageProperties(re::_anonymous_namespace_ *this, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E696DD50];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E696DED8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:this];
  v9[1] = v4;
  v8[2] = *MEMORY[0x1E696DEC8];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:this];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  CFRetain(v6);
  return v6;
}

void re::loadTextureFromFile(id *a1@<X0>, const char *a2@<X1>, id *a3@<X2>, re::internal *a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695DFF8];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v12 = [v10 fileURLWithPath:v11];

  v13 = CGImageSourceCreateWithURL(v12, 0);
  if (v13)
  {
    v14 = v13;
    isValid = re::TextureData::isValid(a5);
    if ((isValid & 1) == 0)
    {
      v16 = *re::pipelineLogObjects(isValid);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315138;
        v19 = a2;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to create texture from file '%s' using descriptor", &v18, 0xCu);
      }
    }
  }

  else
  {
    v17 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to create image source from file '%s' using descriptor", &v18, 0xCu);
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= 0xFC00u;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 24) = 0;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 84) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
  }
}

void re::loadTextureFileAndConvertToCubeMap(id *a1@<X0>, const char *a2@<X1>, id *a3@<X2>, __int128 *a4@<X3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  memset(v65, 0, 24);
  v66 = 0u;
  memset(v67, 0, 28);
  v68 = 0uLL;
  v14 = a4[1];
  v52 = *a4;
  v53 = v14;
  v54[0] = a4[2];
  *(v54 + 12) = *(a4 + 44);
  v55 = *(a4 + 8);
  v56 = *(a4 + 72);
  v57 = *(a4 + 22);
  re::FixedArray<short>::FixedArray(&v58, a4 + 12);
  v61 = *(a4 + 120);
  DWORD1(v53) = 2;
  DWORD2(v52) = 0;
  v56 = 0uLL;
  v42 = *a3;
  re::loadTextureFromFile(a1, a2, &v42, &v52, &v43);
  if (v42)
  {

    v42 = 0;
  }

  if (v44)
  {
    if (v44 != 1)
    {
      goto LABEL_58;
    }

    if (!*(v43 + 48))
    {
      goto LABEL_11;
    }

    v15 = (v43 + 24);
  }

  else
  {
    v15 = &v43;
  }

  if (!*v15)
  {
LABEL_11:
    v17 = 0;
    *(a7 + 16) &= 0xFC00u;
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
    *(a7 + 24) = 0;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    *(a7 + 84) = 0u;
    *(a7 + 104) = 0;
    *(a7 + 112) = 0;
    goto LABEL_28;
  }

  if (*(a4 + 2) == 2)
  {
    v16 = *(a4 + 18);
  }

  else
  {
    v16 = 0;
  }

  v18 = *(a4 + 5);
  if (v18)
  {
    v19 = v18 == 3;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  re::createCubeMapFromLatLongTexture(a1, &v43, v20, v16, a5, a6, v33);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v62, v33);
  v64 = v35;
  *v65 = v36[0];
  *&v65[12] = *(v36 + 12);
  v21 = *(&v66 + 1);
  v22 = v37;
  v37 = v66;
  v66 = v22;

  re::DynamicArray<short>::operator=(v67, v38);
  *(&v68 + 1) = v41;
  if (v38[0])
  {
    if (v40)
    {
      (*(*v38[0] + 40))();
    }

    v40 = 0;
    memset(v38, 0, sizeof(v38));
    ++v39;
  }

  if (v37)
  {

    *&v37 = 0;
  }

  if (v34 != -1)
  {
    (off_1F5D0BA18[v34])(&v69, v33);
  }

  v17 = 1;
LABEL_28:
  if (v47)
  {
    if (v51)
    {
      (*(*v47 + 40))();
    }

    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    ++v50;
  }

  if (v45)
  {

    v45 = 0;
  }

  if (v44 != -1)
  {
    (off_1F5D0BA18[v44])(v33, &v43);
  }

  if (v58)
  {
    if (v59)
    {
      (*(*v58 + 40))();
      v59 = 0;
      v60 = 0;
    }

    v58 = 0;
  }

  if (!v17)
  {
    if (v67[0])
    {
      if (v68)
      {
        (*(*v67[0] + 40))();
      }

      *&v68 = 0;
      memset(v67, 0, 24);
      ++LODWORD(v67[3]);
    }

    goto LABEL_53;
  }

  if (!v63)
  {
    v23 = &v62;
LABEL_50:
    if (*v23)
    {
      re::TextureData::setLabel(&v62, a2);
    }

    goto LABEL_52;
  }

  if (v63 != 1)
  {
LABEL_58:
    v26 = std::__throw_bad_variant_access[abi:nn200100]();
    re::createCubeMapFromLatLongTexture(v26, v27, v28, v29, v30, v31, v32);
    return;
  }

  if (*(v62 + 48))
  {
    v23 = (v62 + 24);
    goto LABEL_50;
  }

LABEL_52:
  *a7 = 0;
  *(a7 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, &v62);
  *(a7 + 16) = v64;
  *(a7 + 24) = *v65;
  *(a7 + 36) = *&v65[12];
  v24 = v66;
  v66 = 0u;
  *(a7 + 56) = v24;
  *(a7 + 72) = v67[0];
  v67[0] = 0;
  *(a7 + 80) = *&v67[1];
  *&v67[1] = 0u;
  ++LODWORD(v67[3]);
  *(a7 + 96) = 1;
  v25 = v68;
  *&v68 = 0;
  *(a7 + 104) = v25;
LABEL_53:

  if (v66)
  {

    *&v66 = 0;
  }

  if (v63 != -1)
  {
    (off_1F5D0BA18[v63])(&v52, &v62);
  }
}

id re::createCubeMapFromLatLongTexture@<X0>(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, const re::TextureImportData *a3@<X2>, unint64_t a4@<X3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a3;
  v185 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *(a7 + 8) = 0;
  v12 = *(a7 + 16) & 0xFC00;
  *(a7 + 24) = 0;
  v13 = (a7 + 24);
  *(a7 + 16) = v12;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 56) = 0u;
  *(a7 + 84) = 0u;
  *(a7 + 72) = 0u;
  v14 = a7 + 72;
  *(a7 + 104) = 0;
  *(a7 + 112) = 0;
  if (!*this)
  {
    re::computeCubeMapFromLatLongTextureParameters(&v136, this, a2, a3, a4, a5);
    if (v136)
    {
      v99 = a6;
      v101 = [v136 pixelFormat];
      v15 = *re::pipelineLogObjects(v101);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        loga = v15;
        v94 = re::TextureData::width(a2);
        v16 = re::TextureData::width(a2);
        v17 = [v136 width];
        v18 = [v136 height];
        LODWORD(buf) = 67110144;
        v13 = (a7 + 24);
        DWORD1(buf) = v94;
        WORD4(buf) = 1024;
        *(&buf + 10) = v16;
        v14 = a7 + 72;
        HIWORD(buf) = 2048;
        *&v163[0] = v17;
        WORD4(v163[0]) = 2048;
        *(v163 + 10) = v18;
        WORD1(v163[1]) = 1024;
        DWORD1(v163[1]) = v101;
        _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "Converting on CPU %dx%d texture to %zux%zux6 cubemap with format %d\n", &buf, 0x28u);
      }

      v19 = 1;
      if (!*this && (v138 & 1) != 0 && v8)
      {
        if (re::getComponentCount() == 4)
        {
          ComponentCount = re::getComponentCount();
          v21 = 115;
          if (ComponentCount == 2)
          {
            v21 = 65;
          }

          if (ComponentCount == 1)
          {
            v22 = 25;
          }

          else
          {
            v22 = v21;
          }

          [v136 setPixelFormat_];
          v19 = 0;
        }

        else
        {
          v19 = 1;
        }
      }

      re::convertForMetalEmulationIfNeeded(a2, v125);
      if (v125[0] == 1)
      {
        if (v127 != 1)
        {
          goto LABEL_177;
        }

        v52 = &v126;
      }

      else
      {
        v52 = a2;
        if (*(a2 + 2) != 1)
        {
          goto LABEL_177;
        }
      }

      v53 = *v52;
      re::wrapAsTextureMip(*v52, 0, v150);
      v167 = v158;
      v168 = v159;
      v169 = v160;
      v170 = v161;
      v163[5] = v154;
      v164 = v155;
      v165 = v156;
      v166 = v157;
      v163[1] = v150[2];
      v163[2] = v151;
      v163[3] = v152;
      v163[4] = v153;
      buf = v150[0];
      v163[0] = v150[1];
      if (LOWORD(v150[0]))
      {
        v124 = 0;
        memset(v122, 0, sizeof(v122));
        v123 = 0;
        v55 = re::CPUTexture::Data::allocateMips(v122, &v136);
        if (v55)
        {
          v96 = v13;
          re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v136, v122, &v121);
          v116.i32[0] = v119;
          v116.i32[1] = v120;
          v57 = (v19 & v138);
          if (v57 == 1)
          {
            [v136 setPixelFormat_];
          }

          if (!v121[6])
          {
            v105 = 0;
            v151 = 0u;
            v152 = 0u;
            memset(v150, 0, sizeof(v150));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v141 = 136315906;
            *&v141[4] = "operator[]";
            v142 = 1024;
            v143 = 797;
            v144 = 2048;
            *&v145[0] = 0;
            WORD4(v145[0]) = 2048;
            *(v145 + 10) = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          MetalEmulation::wrapRenderTargetMip(v136, 0, &v116, *(v121[8] + 4), *(v121[8] + 2), v150);
          v179 = v156;
          v180 = v157;
          v181 = v158;
          v182 = v159;
          v175 = v152;
          v176 = v153;
          v177 = v154;
          v178 = v155;
          v171 = v150[0];
          v172 = v150[1];
          v173 = v150[2];
          v174 = v151;
          v58 = MetalEmulation::generateCubeMap;
          if (v57)
          {
            [v136 setPixelFormat_];
            v58 = MetalEmulation::generateCubeMapWithLinearToSRGB;
          }

          v59 = v58;
          v184 = v99;
          v183 = v139;
          v60 = [v136 width];
          v61 = [v136 height];
          HIDWORD(v62) = 393222;
          LOWORD(v62) = v60;
          WORD1(v62) = v61;
          v63 = MetalEmulation::internal::_executeShader(v59, &buf, v62);
          v114 = v121;
          if (v121)
          {
            v63 = v121 + 1;
          }

          v115 = 1;
          if (v140 == 1)
          {
            v64 = *re::pipelineLogObjects(v63);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v150[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Generate MIPs for cubemap\n", v150, 2u);
            }
          }

          v66 = *(a2 + 8);
          if (*(this + 19))
          {
            v67 = *(this + 20);
          }

          else
          {
            v67 = 0;
          }

          LOBYTE(v104) = v67;
          if (v66)
          {
            re::ColorHelpers::getColorGamutFromCGColorSpaceName(v66, &v104);
          }

          LOWORD(v105) = *(a2 + 8);
          v106[0] = *(a2 + 24);
          *(v106 + 12) = *(a2 + 36);
          v68 = *(a2 + 7);
          v107 = v68;
          if (v68)
          {
            v69 = (v68 + 8);
          }

          v108 = *(a2 + 8);
          re::DynamicArray<short>::DynamicArray(v109, a2 + 9);
          v113 = *(a2 + 14);
          v70 = &v114;
          re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v106, &v114);
          if (v115)
          {
            if (v115 != 1)
            {
              goto LABEL_177;
            }

            v70 = (v114 + 24);
          }

          v71 = [*v70 pixelFormat];
          v72 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v71, v104);
          v73 = v108;
          v108 = v72;

          v110 = 0;
          ++v111;
          v74 = re::TextureImportData::TextureImportData(v141, &v114, &v105);
          if (*&v141[8])
          {
            v76 = v19;
          }

          else
          {
            v76 = 1;
          }

          if ((v76 & 1) == 0)
          {
            re::convertFloatCPUTextureTo8Unorm_sRGB(v141, v75);
          }

          v77 = *re::pipelineLogObjects(v74);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v150[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "Done\n", v150, 2u);
          }

          v13 = v96;
          if (v109[0])
          {
            if (v112)
            {
              (*(*v109[0] + 40))();
            }

            v112 = 0;
            v109[1] = 0;
            v110 = 0;
            v109[0] = 0;
            ++v111;
          }

          if (v107)
          {
          }

          if (v115 != -1)
          {
            (off_1F5D0BA18[v115])(v150, &v114);
          }

          if (v121)
          {
          }
        }

        else
        {
          v79 = *re::pipelineLogObjects(v55);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v150[0]) = 0;
            _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Failed to allocate cubemap from latlong texture data", v150, 2u);
          }

          memset(v141, 0, sizeof(v141));
          HIWORD(v143) &= 0xFC00u;
          *(v145 + 12) = 0;
          *(&v145[1] + 4) = 0;
          *(v145 + 4) = 0;
          v146 = 0u;
          memset(v147, 0, 28);
          v148 = 0;
          v149 = 0;
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v122);
      }

      else
      {
        v78 = *re::pipelineLogObjects(v54);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v86 = v53[3];
          v87 = v78;
          v88 = [v86 pixelFormat];
          LODWORD(v150[0]) = 67109120;
          DWORD1(v150[0]) = v88;
          _os_log_error_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_ERROR, "Texture format not supported on CPU: %d", v150, 8u);
        }

        memset(v141, 0, sizeof(v141));
        HIWORD(v143) &= 0xFC00u;
        *(v145 + 12) = 0;
        *(&v145[1] + 4) = 0;
        *(v145 + 4) = 0;
        v146 = 0u;
        memset(v147, 0, 28);
        v148 = 0;
        v149 = 0;
      }

      if (v125[0] == 1)
      {
        if (v131)
        {
          if (v135)
          {
            (*(*v131 + 40))(v131);
          }

          v135 = 0;
          v132 = 0;
          v133 = 0;
          v131 = 0;
          ++v134;
        }

        if (v129)
        {

          v129 = 0;
        }

        if (v127 != -1)
        {
          (off_1F5D0BA18[v127])(&buf, &v126);
        }
      }

      if (v136)
      {
      }
    }

    else
    {
      memset(v141, 0, sizeof(v141));
      HIWORD(v143) = 0;
      *(v145 + 12) = 0;
      *(&v145[1] + 4) = 0;
      *(v145 + 4) = 0;
      v146 = 0u;
      memset(v147, 0, 28);
      v148 = 0;
      v149 = 0;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, v141);
    *(a7 + 16) = HIWORD(v143);
    *v13 = *(v145 + 4);
    *(v13 + 12) = v145[1];
    v80 = *(a7 + 56);
    *(a7 + 56) = v146;
    *&v146 = v80;
    if (v141 != a7)
    {
      v81 = *(&v146 + 1);
      *(&v146 + 1) = 0;
      v82 = *(a7 + 64);
      *(a7 + 64) = v81;
    }

    re::DynamicArray<short>::operator=(v14, v147);
    *(a7 + 112) = v149;
    if (v147[0])
    {
      if (v148)
      {
        (*(*v147[0] + 40))(v147[0]);
      }

      v148 = 0;
      memset(v147, 0, 24);
      ++LODWORD(v147[3]);
    }

    if (v146)
    {

      *&v146 = 0;
    }

    if (*&v141[8] != -1)
    {
      (off_1F5D0BA18[*&v141[8]])(&buf, v141);
    }

    goto LABEL_164;
  }

  re::computeCubeMapFromLatLongTextureParameters(v141, this, a2, a3, a4, a5);
  if (*v141)
  {
    v104 = a6;
    v117 = 0;
    v118 = 0;
    if (re::TextureData::isShareable(a2))
    {
      re::mtl::Device::makeSharedTexture(*v141, this, &v105);
    }

    else
    {
      re::mtl::Device::makeTexture(*v141, this, &v105);
    }

    *&buf = v105;
    DWORD2(buf) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v117, &buf);
    if (DWORD2(buf) != -1)
    {
      (off_1F5D0BA18[DWORD2(buf)])(v150, &buf);
    }

    log = [v105 newTextureViewWithPixelFormat:*&v141[8] textureType:3 levels:0 slices:1, 0, 6];
    v23 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
    if (v142)
    {
      v24 = "generateCubeMapWithLinearToSRGB";
    }

    else
    {
      v24 = "generateCubeMap";
    }

    [v23 setName_];
    v95 = v23;
    re::mtl::Library::makeFunctionWithDescriptor(this + 1, v23, v122);
    v136 = [objc_msgSend(MEMORY[0x1E6974030] alloc)];
    v92 = v136;
    v93 = v122[0];
    [v136 setComputeFunction_];
    re::mtl::Device::makeComputePipelineState(this, &v136, &v114);
    *&buf = 0x51B2FD90430C103CLL;
    *(&buf + 1) = "createCubeMapFromLatLongTextureQueue";
    re::ImportGraphicsContext::getOrCreateCommandQueue(this, &buf, 1, &v121);
    re::mtl::CommandQueue::makeCommandBuffer(&v121, &v116);
    re::mtl::CommandBuffer::makeComputeCommandEncoder(&v116, &v103);
    v25 = v114;
    v26 = [v114 threadExecutionWidth];
    v100 = v25;
    v27 = [v25 maxTotalThreadsPerThreadgroup] / v26;
    v28 = ([*v141 width] + v26 - 1) / v26;
    v29 = [*v141 width];
    v30 = (v27 + v29 - 1) / v27;
    v31 = *re::pipelineLogObjects(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67110400;
      DWORD1(buf) = v28;
      WORD4(buf) = 1024;
      *(&buf + 10) = v30;
      HIWORD(buf) = 1024;
      LODWORD(v163[0]) = 6;
      WORD2(v163[0]) = 1024;
      *(v163 + 6) = v26;
      WORD5(v163[0]) = 1024;
      HIDWORD(v163[0]) = v27;
      LOWORD(v163[1]) = 1024;
      *(&v163[1] + 2) = 1;
      _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &buf, 0x26u);
    }

    [v103 setComputePipelineState:v100];
    if (!*(a2 + 2))
    {
      [v103 setTexture:*a2 atIndex:0];
      [v103 setTexture:log atIndex:1];
      [v103 setBytes:&v143 + 2 length:4 atIndex:0];
      [v103 setBytes:&v104 length:4 atIndex:1];
      *&buf = v28;
      *(&buf + 1) = v30;
      *&v163[0] = 6;
      *&v150[0] = v26;
      *(&v150[0] + 1) = v27;
      *&v150[1] = 1;
      [v103 dispatchThreadgroups:&buf threadsPerThreadgroup:v150];
      [v103 endEncoding];
      if ([v105 storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(&v116, &buf);
        [buf endEncoding];
      }

      [*&v116 commit];
      [*&v116 waitUntilCompleted];
      re::internal::getCommandBufferError(&v116, v125);
      if ((v125[0] & 1) == 0)
      {
        v33 = re::TextureData::label(a2);
        if (v127)
        {
          v34 = v128;
        }

        else
        {
          v34 = &v127 + 1;
        }

        v36 = *re::pipelineLogObjects(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          if (BYTE8(buf))
          {
            v85 = *&v163[0];
          }

          else
          {
            v85 = &buf + 9;
          }

          LODWORD(v150[0]) = 136315138;
          *(v150 + 4) = v85;
          _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "%s", v150, 0xCu);
        }

        v32 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v32 = (*(*buf + 40))();
        }
      }

      if (LOBYTE(v145[0]) == 1)
      {
        v37 = *re::pipelineLogObjects(v32);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "Generate MIPs for cubemap\n", &buf, 2u);
        }
      }

      v39 = *(a2 + 8);
      if (*(this + 19))
      {
        v40 = *(this + 20);
      }

      else
      {
        v40 = 0;
      }

      v102 = v40;
      if (v39)
      {
        re::ColorHelpers::getColorGamutFromCGColorSpaceName(v39, &v102);
      }

      LOWORD(v150[0]) = *(a2 + 8);
      *(v150 + 8) = *(a2 + 24);
      *(&v150[1] + 4) = *(a2 + 36);
      v41 = *(a2 + 7);
      *(&v150[2] + 1) = v41;
      v13 = (a7 + 24);
      if (v41)
      {
        v42 = (v41 + 8);
      }

      *&v151 = *(a2 + 8);
      re::DynamicArray<short>::DynamicArray(&v151 + 8, a2 + 9);
      *&v154 = *(a2 + 14);
      v43 = &v117;
      re::TextureImportData::ImportReport::SourceInfo::setFromTexture((v150 + 8), &v117);
      if (!v118)
      {
        goto LABEL_52;
      }

      if (v118 == 1)
      {
        v43 = (v117 + 24);
LABEL_52:
        v44 = [*v43 pixelFormat];
        v45 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v44, v102);
        v46 = v151;
        *&v151 = v45;

        *(&v152 + 1) = 0;
        LODWORD(v153) = v153 + 1;
        v48 = *re::pipelineLogObjects(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Done\n", &buf, 2u);
        }

        re::TextureImportData::TextureImportData(&buf, &v117, v150);
        if (*(&v151 + 1))
        {
          if (*(&v153 + 1))
          {
            (*(**(&v151 + 1) + 40))();
          }

          *(&v153 + 1) = 0;
          v152 = 0uLL;
          *(&v151 + 1) = 0;
          LODWORD(v153) = v153 + 1;
        }

        if (*(&v150[2] + 1))
        {
        }

        if (v125[0] & 1) == 0 && v126 && (v127)
        {
          (*(*v126 + 40))();
        }

        if (v100)
        {
        }

        if (v92)
        {
        }

        if (v93)
        {
        }

        if (v95)
        {
        }

        if (log)
        {
        }

        if (v105)
        {
        }

        if (v118 != -1)
        {
          (off_1F5D0BA18[v118])(v150, &v117);
        }

        if (*v141)
        {
        }

        goto LABEL_80;
      }
    }

LABEL_177:
    v89 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::loadTextureFileAndConvertTo3DTexture(v89, v90, v91);
  }

  *&buf = 0;
  DWORD2(buf) = 0;
  LOWORD(v163[0]) = 0;
  v163[1] = 0uLL;
  *(&v163[0] + 1) = 0;
  *(&v163[2] + 8) = 0u;
  *(&v163[3] + 8) = 0u;
  *(&v163[4] + 4) = 0u;
  *(&v163[5] + 1) = 0;
  *&v164 = 0;
LABEL_80:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, &buf);
  *(a7 + 16) = v163[0];
  *v13 = *(v163 + 8);
  *(v13 + 12) = *(&v163[1] + 4);
  v49 = *(a7 + 56);
  *(a7 + 56) = *(&v163[2] + 1);
  *(&v163[2] + 1) = v49;
  if (&buf != a7)
  {
    v50 = *&v163[3];
    *&v163[3] = 0;
    v51 = *(a7 + 64);
    *(a7 + 64) = v50;
  }

  re::DynamicArray<short>::operator=(a7 + 72, &v163[3] + 8);
  *(a7 + 112) = v164;
  if (*(&v163[3] + 1))
  {
    if (*(&v163[5] + 1))
    {
      (*(**(&v163[3] + 1) + 40))();
    }

    *(&v163[5] + 1) = 0;
    v163[4] = 0uLL;
    *(&v163[3] + 1) = 0;
    ++LODWORD(v163[5]);
  }

  if (*(&v163[2] + 1))
  {

    *(&v163[2] + 1) = 0;
  }

  if (DWORD2(buf) != -1)
  {
    (off_1F5D0BA18[DWORD2(buf)])(v150, &buf);
  }

LABEL_164:
  result = re::TextureData::label(a7);
  if (result)
  {
    re::DynamicString::format("%s_cubeMap", &buf, result);
    if (BYTE8(buf))
    {
      v84 = *&v163[0];
    }

    else
    {
      v84 = &buf + 9;
    }

    re::TextureData::setLabel(a7, v84);
    result = buf;
    if (buf)
    {
      if (BYTE8(buf))
      {
        return (*(*buf + 40))();
      }
    }
  }

  return result;
}

void re::loadTextureFileAndConvertTo3DTexture(id *this@<X0>, const re::mtl::Device *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v9 = [v7 fileURLWithPath:v8];

  v10 = CGImageSourceCreateWithURL(v9, 0);
  if (!v10)
  {
    v30 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a2;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource from file: %s\n", &buf, 0xCu);
    }

    goto LABEL_13;
  }

  v11 = v10;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  if (!ImageAtIndex)
  {
    v31 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a2;
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Failed to load CGImage from file: %s\n", &buf, 0xCu);
    }

    CFRelease(v11);
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_23;
  }

  v13 = ImageAtIndex;
  v41 = this;
  v42 = a3;
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(v13);
  v16 = Height;
  v17 = Height;
  v18 = Height * Width;
  *(&v19 + 1) = ((Height * Width) >> 64) & 1;
  *&v19 = v18;
  if ((v19 >> 61))
  {
    v32 = *re::pipelineLogObjects(Height);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failure reading LUT texture file: image size - Invalid or Out of range ", &buf, 2u);
    }

    CFRelease(v11);
    CFRelease(v13);
    *v42 = 0;
    *(v42 + 8) = 0;
  }

  else
  {
    v40 = v9;
    v20 = re::globalAllocators(Height);
    v21 = (*(*v20[2] + 32))(v20[2], 8 * v18, 0);
    ColorSpace = CGImageGetColorSpace(v13);
    v39 = v21;
    v23 = CGBitmapContextCreate(v21, Width, v17, 0x10uLL, 8 * Width, ColorSpace, 0x1105u);
    if (!v23)
    {
      v33 = *re::pipelineLogObjects(0);
      v9 = v40;
      v29 = v42;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to create a bitmap context for file: %s\n", &buf, 0xCu);
      }

      CFRelease(v11);
      CFRelease(v13);
      goto LABEL_20;
    }

    v24 = v23;
    CGContextSetBlendMode(v23, kCGBlendModeCopy);
    v50.size.width = Width;
    v50.size.height = v16;
    v50.origin.x = 0.0;
    v50.origin.y = 0.0;
    CGContextDrawImage(v24, v50, v13);
    CFRelease(v13);
    CFRelease(v11);
    CGContextRelease(v24);
    v26 = cbrt(v18);
    if (v26 != v26)
    {
      v27 = *re::pipelineLogObjects(v25);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      v9 = v40;
      v29 = v42;
      if (v28)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a2;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Incorrect number of color entries for the 3D LUT file: %s\n", &buf, 0xCu);
      }

LABEL_20:
      if (v39)
      {
        v34 = re::globalAllocators(v28);
        (*(*v34[2] + 40))(v34[2], v39);
      }

      *v29 = 0;
      *(v29 + 8) = 0;
      goto LABEL_23;
    }

    v35 = v26;
    v36 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v36 setTextureType_];
    [v36 setPixelFormat_];
    [v36 setWidth_];
    [v36 setHeight_];
    [v36 setDepth_];
    [v36 setUsage_];
    [v36 setSampleCount_];
    [v36 setMipmapLevelCount_];
    [v36 setStorageMode_];
    re::mtl::Device::makeTexture(v36, v41, &buf);
    NS::SharedPtr<MTL::Texture>::operator=(&v43, &buf);
    v9 = v40;
    if (buf)
    {
    }

    [v43 setLabel_];
    buf = 0uLL;
    v45 = 0;
    v46 = v35;
    v47 = v35;
    v48 = v35;
    v37 = [v43 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:v39 bytesPerRow:8 * v35 bytesPerImage:8 * (v35 * v35)];
    if (v39)
    {
      v38 = re::globalAllocators(v37);
      (*(*v38[2] + 40))(v38[2], v39);
    }

    *v42 = v43;
    *(v42 + 8) = 0;
    if (v36)
    {
    }
  }

LABEL_23:

  if (v43)
  {
  }
}

void re::load3DTextureFromLutDataFile(id *this@<X0>, const re::mtl::Device *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v62[0] = 0;
  re::FileStreamReader::open(a2, v57);
  if (v57[0])
  {
    v70[0] = 0;
    v8 = v59;
    fgetpos(__stream, v70);
    v9 = v70[0];
    v10 = v8 - v70[0];
    __ptr = 0;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    v55 = 0;
    v11 = v8 - v70[0] + 1;
    re::DynamicArray<BOOL>::resize(v53, v11);
    if (v54 == v11 && (v12 = fread(__ptr, 1uLL, v10, __stream), v12 == v10))
    {
      v13 = v54;
      if (v54 <= v10)
      {
        v62[1] = 0;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        memset(v70, 0, sizeof(v70));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v63 = 136315906;
        *&v63[4] = "operator[]";
        v64 = 1024;
        v65 = 789;
        v66 = 2048;
        v67 = v10;
        v68 = 2048;
        v69 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(__ptr + v10) = 0;
      v14 = __ptr;
      v15 = strstr(__ptr, "LUT_3D_SIZE ");
      *v63 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }

      v17 = strtof(v15 + 12, v63);
      v52 = v17;
      v18 = v17 * v17 * v17;
      if ((8 * v18) >= 0x4000001)
      {
        v19 = *re::pipelineLogObjects(v16);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v70[0]) = 136315650;
          *(v70 + 4) = "LUT_3D_SIZE ";
          WORD2(v70[1]) = 1024;
          *(&v70[1] + 6) = v52;
          WORD1(v70[2]) = 2080;
          *(&v70[2] + 4) = a2;
          v20 = "Unexpected %s '%d' (too large) for LUT file '%s'";
          v21 = v19;
          v22 = 28;
LABEL_45:
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, v70, v22);
        }

LABEL_12:
        *a4 = 0;
        *(a4 + 8) = 0;
LABEL_13:
        if (v53[0] && __ptr)
        {
          (*(*v53[0] + 40))();
        }

        goto LABEL_16;
      }

      v51 = v17 * v17;
      v25 = re::globalAllocators(v16);
      v26 = (*(*v25[2] + 32))(v25[2], 8 * v18, 0);
      if (v26)
      {
        if (v52)
        {
          v27 = v26;
          v28 = &v14[v10];
          v29 = v18 > 0;
          v30 = *v63;
          _CF = v18 < 1 || *v63 == 0 || *v63 >= v28;
          v50 = v27;
          if (!_CF)
          {
            v34 = 0;
            v35 = &v14[v8 - v9];
            v49 = v35;
            while (*v30)
            {
              if (v30 < v28)
              {
                v36 = v35 - v30;
                do
                {
                  if (*v30)
                  {
                    v37 = *v30 == 10;
                  }

                  else
                  {
                    v37 = 1;
                  }

                  if (v37)
                  {
                    break;
                  }

                  *v63 = ++v30;
                  --v36;
                }

                while (v36);
              }

              if (v30 == v28 || !*v30)
              {
                break;
              }

              *v63 = ++v30;
              if (v30 < v28 && *v30 - 48 <= 9)
              {
                _S0 = strtof(v30, v63);
                __asm { FCVT            H0, S0 }

                v41 = (v50 + 8 * v34);
                *v41 = LOWORD(_S0);
                _S0 = strtof(*v63, v63);
                __asm { FCVT            H0, S0 }

                *(v50 + 4 * v34 + 1) = LOWORD(_S0);
                _S0 = strtof(*v63, v63);
                v35 = v49;
                __asm { FCVT            H0, S0 }

                v41[2] = LOWORD(_S0);
                v41[3] = COERCE_UNSIGNED_INT(1.0);
                ++v34;
                v30 = *v63;
              }

              v29 = v34 < v18;
              if (v34 >= v18 || !v30 || v30 >= v28)
              {
                goto LABEL_36;
              }
            }

            v29 = 1;
            goto LABEL_68;
          }

LABEL_36:
          if (v30)
          {
LABEL_68:
            if (v30 < v28)
            {
              v44 = &v14[v10] - v30;
              v45 = v30 + 1;
              while (*(v45 - 1) == 10)
              {
                *v63 = v45++;
                if (!--v44)
                {
                  goto LABEL_78;
                }
              }

              if (!*(v45 - 1))
              {
                v29 = 1;
              }

              if (!v29)
              {
                v46 = *re::pipelineLogObjects(v30);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v70[0]) = 136315138;
                  *(v70 + 4) = a2;
                  _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Size of LUT file is larger than its header indicates. It may be loaded incorrectly: '%s'", v70, 0xCu);
                }
              }
            }

LABEL_78:
            v47 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
            [v47 setTextureType_];
            [v47 setPixelFormat_];
            [v47 setWidth_];
            [v47 setHeight_];
            [v47 setDepth_];
            [v47 setUsage_];
            [v47 setSampleCount_];
            [v47 setMipmapLevelCount_];
            [v47 setStorageMode_];
            re::mtl::Device::makeTexture(v47, this, v70);
            NS::SharedPtr<MTL::Texture>::operator=(v62, v70);
            if (v70[0])
            {
            }

            [v62[0] setLabel_];
            memset(v70, 0, 24);
            v70[3] = v52;
            *&v71 = v52;
            *(&v71 + 1) = v52;
            v48 = re::globalAllocators([v62[0] replaceRegion:v70 mipmapLevel:0 slice:0 withBytes:v50 bytesPerRow:8 * v52 bytesPerImage:8 * v51]);
            (*(*v48[2] + 40))(v48[2], v50);
            *a4 = v62[0];
            *(a4 + 8) = 0;
            if (v47)
            {
            }

            goto LABEL_13;
          }

          v24 = *re::pipelineLogObjects(0);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(v70[0]) = 136315138;
          *(v70 + 4) = a2;
          v20 = "Failed to parse LUT from file '%s'";
        }

        else
        {
          v24 = *re::pipelineLogObjects(v26);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(v70[0]) = 136315138;
          *(v70 + 4) = a2;
          v20 = "Failed to find size of LUT from file '%s'";
        }
      }

      else
      {
        v24 = *re::pipelineLogObjects(0);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        LODWORD(v70[0]) = 136315138;
        *(v70 + 4) = a2;
        v20 = "Not enough memory to load LUT file '%s'";
      }
    }

    else
    {
      v24 = *re::pipelineLogObjects(v12);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      LODWORD(v70[0]) = 136315138;
      *(v70 + 4) = a2;
      v20 = "Failed to read content of LUT file '%s'";
    }

    v21 = v24;
    v22 = 12;
    goto LABEL_45;
  }

  v23 = *re::pipelineLogObjects(v7);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    if (v60)
    {
      v33 = *&v61[7];
    }

    else
    {
      v33 = v61;
    }

    LODWORD(v70[0]) = 136315394;
    *(v70 + 4) = a2;
    WORD2(v70[1]) = 2080;
    *(&v70[1] + 6) = v33;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Attempt to open LUT file '%s' did not succeed: %s", v70, 0x16u);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_16:
  if (v57[0] == 1)
  {
    if (__stream && v60 == 1)
    {
      fclose(__stream);
    }
  }

  else if (v59 && (v60 & 1) != 0)
  {
    (*(*v59 + 40))();
  }

  if (v62[0])
  {
  }
}

id re::computeCubeMapFromLatLongTextureParameters(re *this, const re::ImportGraphicsContext *a2, const re::TextureImportData *a3, int a4, unint64_t a5, unsigned int a6)
{
  v43 = *MEMORY[0x1E69E9840];
  result = re::TextureData::textureType(a3);
  *this = 0;
  if (result == 2)
  {
    *(this + 12) = 0;
    *(this + 20) = 0;
    v13 = re::TextureData::width(a3);
    v14 = re::TextureData::height(a3);
    v16 = v14;
    if (a5)
    {
      if (a5 >= 0x2000)
      {
        a5 = 0x2000;
      }
    }

    else
    {
      v17 = (v13 * 0.318309886);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = (v17 - 1) | ((v17 - 1) >> 1) | (((v17 - 1) | ((v17 - 1) >> 1)) >> 2);
      v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
      v20 = v19 | (v19 >> 16) | ((v19 | (v19 >> 16)) >> 32);
      if (v17 - ((v20 + 1) >> 1) >= v20 + 1 - v17)
      {
        a5 = v20 + 1;
      }

      else
      {
        a5 = (v20 + 1) >> 1;
      }
    }

    v21 = v14 / 2;
    if (v14 / 2 <= (v13 / 4))
    {
      v21 = v13 / 4;
    }

    v22 = v21 / a5;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = v22 + 1;
    }

    if (v23 >= 0x40)
    {
      v23 = 64;
    }

    *(this + 4) = v23;
    v24 = 64 - __clz(a5 + 1);
    v25 = v24 - 1;
    if (a5 == -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = ~(-1 << (v24 - 1));
    }

    if (a5 == -1)
    {
      v25 = 0;
    }

    if ((v26 & (a5 + 1)) == 0)
    {
      v24 = v25;
    }

    if (a4)
    {
      v27 = v24;
    }

    else
    {
      v27 = 1;
    }

    v28 = re::internal::chooseWritableTextureFormat(a2, a3, 0, 0, this + 12, v15);
    *(this + 2) = v28;
    v29 = *re::pipelineLogObjects(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v34) = 67110144;
      HIDWORD(v34) = v13;
      v35 = 1024;
      v36 = v16;
      v37 = 2048;
      v38 = a5;
      v39 = 2048;
      v40 = a5;
      v41 = 1024;
      v42 = v28;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Converting %dx%d texture to %zux%zux6 cubemap with format %d\n", &v34, 0x28u);
    }

    if (*(this + 12) == 1)
    {
      *(this + 2) = re::translateSRGBPixelFormatToLinear(v28);
      v30 = 19;
    }

    else
    {
      v30 = 3;
    }

    v34 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(this, &v34);
    if (v34)
    {
    }

    [*this setTextureType_];
    [*this setWidth_];
    [*this setHeight_];
    [*this setPixelFormat_];
    [*this setMipmapLevelCount_];
    [*this setSampleCount_];
    [*this setUsage_];
    v31 = *this;
    if (re::TextureData::isShareable(a3))
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    result = [v31 setStorageMode_];
    if (v27 > 1)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    *(this + 20) = v33;
  }

  else
  {
    *(this + 2) = 0;
    *(this + 12) = 0;
    *(this + 4) = 0;
    *(this + 20) = 0;
  }

  return result;
}

void re::anonymous namespace::generateMipmapsSynchronous(re::_anonymous_namespace_ *this, const re::ImportGraphicsContext *a2, re::TextureData *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v15[0] = 1;
  v4 = *(a2 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      re::generateCPUTextureMipmaps(*a2, buf);
      v5 = re::Result<re::Unit,re::DynamicString>::operator=(v15, buf);
      if ((buf[0] & 1) == 0)
      {
        v5 = *&buf[8];
        if (*&buf[8])
        {
          if (buf[16])
          {
            v5 = (*(**&buf[8] + 40))();
          }
        }
      }

      goto LABEL_13;
    }

LABEL_24:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v7 = objc_autoreleasePoolPush();
  *buf = 0x5C8C10EB3EC8C2FBLL;
  *&buf[8] = "generateMipmapsQueue";
  re::ImportGraphicsContext::getOrCreateCommandQueue(this, buf, 1, &v14);
  re::mtl::CommandQueue::makeCommandBuffer(&v14, &v13);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v13, &v12);
  if (*(a2 + 2))
  {
    goto LABEL_24;
  }

  re::mtl::BlitCommandEncoder::generateMipmaps(&v12, *a2);
  [v12 endEncoding];
  [v13 commit];
  [v13 waitUntilCompleted];
  re::internal::getCommandBufferError(&v13, buf);
  re::Result<re::Unit,re::DynamicString>::operator=(v15, buf);
  if (buf[0] & 1) == 0 && *&buf[8] && (buf[16])
  {
    (*(**&buf[8] + 40))();
  }

  objc_autoreleasePoolPop(v7);
LABEL_13:
  if ((v15[0] & 1) == 0)
  {
    v8 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = re::TextureData::label(a2);
      if (v17)
      {
        v11 = *&v18[7];
      }

      else
      {
        v11 = v18;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
    }

    if (v15[0] & 1) == 0 && v16 && (v17)
    {
      (*(*v16 + 40))();
    }
  }
}

void re::TextureImportData::ImportReport::SourceInfo::setFromTexture(re::TextureImportData::ImportReport::SourceInfo *this, const re::TextureData *a2)
{
  *this = re::TextureData::width(a2);
  *(this + 1) = re::TextureData::height(a2);
  *(this + 2) = re::TextureData::depth(a2);
  *(this + 5) = re::TextureData::mipmapLevelCount(a2);
  *(this + 3) = re::TextureData::arrayLength(a2);
  if (re::TextureData::textureType(a2) - 5 >= 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 6;
  }

  *(this + 4) = v4;
  *(this + 6) = re::TextureData::pixelFormat(a2);
  v5 = *(this + 4);
  if (v5)
  {

    *(this + 4) = 0;
  }
}

void re::encodeProcessTextureCommands(id *a1, id *a2, id *a3, id *a4, id *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = [*a5 mipmapLevelCount];
  v34 = a4;
  v12 = [*a4 mipmapLevelCount];
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = *a5;
  v15 = [*a5 arrayLength];
  if ([v14 textureType] - 5 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 6 * v15;
  }

  v38 = v16;
  v17 = [*a2 maxTotalThreadsPerThreadgroup];
  v31 = [*a2 threadExecutionWidth];
  if (v13)
  {
    v39 = 0;
    *&v18 = 136317186;
    v30 = v18;
    do
    {
      if (v38)
      {
        for (i = 0; i != v38; ++i)
        {
          v40 = [*v34 newTextureViewWithPixelFormat:a6 textureType:a8 levels:v39 slices:1, i, 1, v30];
          v20 = [*a5 newTextureViewWithPixelFormat:a7 textureType:a8 levels:v39 slices:1, i, 1];
          v21 = *a5;
          v22 = *a1;
          [v21 pixelFormat];
          [*a5 width];
          [*a5 height];
          [*a5 depth];
          [*a5 sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();

          v24 = v17 / 0;
          if (v17 / 0 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v17 / 0;
          }

          if (v25 >= (v31 / ((v17 / v31) >> 1) <= v17))
          {
            v26 = v31 / ((v17 / v31) >> 1) <= v17;
          }

          else
          {
            v26 = v25;
          }

          if (v26 > v24)
          {
            v27 = 1;
          }

          else
          {
            v27 = v24;
          }

          if (re::pipelineHighFrequencyLoggingEnabled(void)::onceToken != -1)
          {
            dispatch_once(&re::pipelineHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_47);
          }

          if (re::pipelineHighFrequencyLoggingEnabled(void)::shouldLog == 1)
          {
            v28 = *re::pipelineLogObjects(v23);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = v30;
              *&buf[4] = "Converting texture gamut";
              *&buf[12] = 1024;
              *&buf[14] = 0xFFFFFFFF / 0;
              *&buf[18] = 1024;
              *&buf[20] = (v27 - 1) / v27;
              v43 = 1024;
              v44 = v26 - 1;
              v45 = 1024;
              v46 = 0;
              v47 = 1024;
              v48 = v27;
              v49 = 1024;
              v50 = v26;
              v51 = 2048;
              v52 = v39;
              v53 = 2048;
              v54 = i;
              _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "%s: dispatching %dx%dx%d thread groups of size %dx%dx%d for mipmap level %zu, slice %zu", buf, 0x44u);
            }
          }

          [*a3 setTexture:v40 atIndex:0];
          [*a3 setTexture:v20 atIndex:1];
          v29 = *a3;
          *buf = 0xFFFFFFFF / 0;
          *&buf[8] = (v27 - 1) / v27;
          *&buf[16] = (v26 - 1);
          v41[0] = 0;
          v41[1] = v27;
          v41[2] = v26;
          [v29 dispatchThreadgroups:buf threadsPerThreadgroup:v41];
          if (v20)
          {
          }

          if (v40)
          {
          }
        }
      }

      ++v39;
    }

    while (v39 != v13);
  }
}

void re::convertMetalTextureColorSpace(re::TextureData *this@<X1>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = re::TextureData::pixelFormat(this);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  MTLPixelFormatGetInfoForDevice();
  re::isHDR(v3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) &= 0xFC00u;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 84) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
}

id re::createDescriptorFromTexture@<X0>(id *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a3 = v6;
  [v6 setTextureType_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setDepth_];
  [v6 setArrayLength_];
  [v6 setMipmapLevelCount_];
  [v6 setSampleCount_];
  [v6 setPixelFormat_];
  [v6 setUsage_];
  [v6 setCpuCacheMode_];
  [v6 setStorageMode_];
  v7 = [*a2 compressionType];
  if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v6 setCompressionType_];
  }

  if (!*a1 || (result = [*a1 supportsTextureSwizzle], result))
  {
    v9 = [*a2 swizzle];

    return [v6 setSwizzle_];
  }

  return result;
}

id MTL::TextureDescriptor::setCompressionType(void *a1)
{
  if (([a1 respondsToSelector_] & 1) != 0 || (result = objc_msgSend(a1, sel_methodSignatureForSelector_, sel_setCompressionType_)) != 0)
  {

    return [a1 setCompressionType_];
  }

  return result;
}

void re::convertTextureColorSpace(int a1@<W0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 2))
  {
    re::convertCPUTextureColorSpace(a1, a2, a3);
  }

  else
  {
    re::convertMetalTextureColorSpace(a2, a3);
  }
}

id re::createTextureSlice@<X0>(const re::ImportGraphicsContext *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v9 = *(a1 + 2);
  if (v9 == 1)
  {
    v12 = *a1;
    v13 = *(v12 + 48);
    if (v13 <= a2)
    {
      *v34 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      *&v31[12] = 1024;
      *&v31[14] = 797;
      *&v31[18] = 2048;
      *&v31[20] = a2;
      v32 = 2048;
      *v33 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v22[0] = *(*(v12 + 64) + 40 * a2 + 32) + v26 * a3;
      v22[1] = v26;
      *&v33[2] = 0;
      memset(v31, 0, sizeof(v31));
      re::DynamicArray<unsigned char>::DynamicArray(&buf, v22);
      re::DynamicArray<re::DynamicArray<unsigned int>>::add(v31, &buf);
      v14 = buf;
      if (buf && v43)
      {
        v14 = (*(*buf + 40))(buf);
      }

      if (*&v31[16])
      {
        if (!*(*&v33[2] + 32))
        {
          v18 = *re::pipelineLogObjects(v14);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to allocate CPU texture slice.", &buf, 2u);
          }

          *a4 = 0;
          *(a4 + 8) = 0;
          result = re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v31);
          goto LABEL_27;
        }

        v15 = [*(v12 + 24) copy];
        *v34 = v15;
        [v15 setMipmapLevelCount_];
        [v15 setWidth_];
        [v15 setHeight_];
        [v15 setDepth_];
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(v34, v31, &v29);
        *&buf = v29;
        if (v29)
        {
          v16 = (v29 + 8);
        }

        DWORD2(buf) = 1;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v27, &buf);
        if (DWORD2(buf) != -1)
        {
          (off_1F5D0BA18[DWORD2(buf)])(&v30, &buf);
        }

        DWORD2(buf) = -1;
        if (v29)
        {
        }

        if (*v34)
        {
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v31);
        goto LABEL_22;
      }
    }

    v29 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *&v34[4] = "operator[]";
    v35 = 1024;
    v36 = 789;
    v37 = 2048;
    v38 = 0;
    v39 = 2048;
    v40 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v9)
  {
    v19 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::decompressTexture(v19, v20, v21);
  }

  result = [*a1 newTextureViewWithPixelFormat:re::TextureData::pixelFormat(a1) textureType:2 levels:a2 slices:1, a3, 1];
  if (result)
  {
    v11 = result;
    v23 = result;
    LODWORD(v24) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v27, &v23);
    if (v24 != -1)
    {
      (off_1F5D0BA18[v24])(&buf, &v23);
    }

LABEL_22:
    v17 = re::TextureData::label(a1);
    re::TextureData::setLabel(&v27, v17);
    *a4 = 0;
    *(a4 + 8) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a4, &v27);
    goto LABEL_27;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_27:
  if (v28 != -1)
  {
    return (off_1F5D0BA18[v28])(&v23, &v27);
  }

  return result;
}

void re::decompressTexture(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, re::TextureData *a3@<X8>)
{
  v7 = re::TextureData::pixelFormat(a2);
  if (*(a2 + 2))
  {

    re::decompressCPUTexture(a2, a3);
  }

  else
  {
    v8 = v7;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    MTLPixelFormatGetInfoForDevice();
    if (*(a2 + 2))
    {
      v16 = std::__throw_bad_variant_access[abi:nn200100]();
      re::estimateTextureMemorySize(v16);
    }

    else
    {
      isHDR = re::isHDR(v8);
      v10 = 70;
      if ((v19[1] & 0x800) != 0)
      {
        v10 = 71;
      }

      if (isHDR)
      {
        v11 = 115;
      }

      else
      {
        v11 = v10;
      }

      re::createDescriptorFromTexture(this, a2, v19);
      v12 = v19[0];
      [v19[0] setPixelFormat_];
      [v12 setUsage_];
      [v12 setSwizzle_];
      if ([*a2 isShareable])
      {
        SharedTexture = re::mtl::Device::makeSharedTexture(v12, this, &v18);
      }

      else
      {
        SharedTexture = re::mtl::Device::makeTexture(v12, this, &v18);
      }

      if (v18)
      {
        re::copyTexture(this, a2, &v18, [*a2 swizzle], 0);
        *a3 = v18;
        *(a3 + 2) = 0;
        v14 = re::TextureData::label(a2);
        re::TextureData::setLabel(a3, v14);
      }

      else
      {
        v15 = *re::pipelineLogObjects(SharedTexture);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Decompress Metal texture: failed to create target texture.", v17, 2u);
        }

        *a3 = 0;
        *(a3 + 2) = 0;
      }

      if (v18)
      {
      }

      if (v12)
      {
      }
    }
  }
}

uint64_t re::estimateTextureMemorySize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 16);
  if (v11 >= a2)
  {
    v11 = a2;
  }

  if (*a11)
  {
    v12 = *(a11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (*a11)
  {
    v13 = v11;
  }

  else
  {
    v13 = a2;
  }

  if (v12 < v13)
  {
    do
    {
      MTLGetTextureLevelInfoForDeviceWithOptions();
      ++v12;
    }

    while (v13 != v12);
  }

  return 0;
}

uint64_t re::estimateTextureMemorySize(id *this, const re::mtl::Device *a2, const re::TextureData *a3)
{
  v3 = a3;
  if (!re::TextureData::mipmapLevelCount(a2))
  {
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v6 = 0;
  do
  {
    v7 = *this;
    re::TextureData::pixelFormat(a2);
    re::TextureData::width(a2);
    re::TextureData::height(a2);
    re::TextureData::depth(a2);
    MTLGetTextureLevelInfoForDeviceWithOptions();

    if (re::TextureData::textureType(a2) == 3)
    {
      re::TextureData::arrayLength(a2);
    }

    else
    {
      re::TextureData::textureType(a2);
    }

    ++v6;
  }

  while (v6 < re::TextureData::mipmapLevelCount(a2));
  if (v3)
  {
LABEL_8:
    re::TextureData::compressionType(a2);
  }

  return 0;
}

uint64_t re::internal::applyCompressionOptionsToTextureDescriptor(id *a1, _DWORD *a2, uint64_t a3, uint64_t a4, id *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2[6] == 1)
  {
    return 0;
  }

  [*a5 pixelFormat];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9 = a2[6];
  if ((v9 - 3) < 2)
  {
    ASTCDefaultMode = a2[8];
    if (!ASTCDefaultMode)
    {
      ASTCDefaultMode = re::getASTCDefaultMode([*a5 pixelFormat]);
      v9 = a2[6];
    }

    v12 = a2[7];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    if (v9 == 3)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    MTLPixelFormat = re::getMTLPixelFormat(v13, ASTCDefaultMode);
    if ([*a5 pixelFormat] == MTLPixelFormat)
    {
      return 0;
    }

    [*a5 textureType];
    isSupportedPixelFormat = re::isSupportedPixelFormat();
    if (isSupportedPixelFormat)
    {
      v16 = MTLPixelFormat == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      [*a5 setPixelFormat_];
      return 1;
    }

    v17 = *re::pipelineLogObjects(isSupportedPixelFormat);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "PixelFormatASTC_4x4_LDR not supported by device", buf, 2u);
    return 0;
  }

  if (v9)
  {
    if (v9 == 2)
    {
      v10 = *a5;
      if (([*a5 respondsToSelector_] & 1) != 0 || objc_msgSend(v10, sel_methodSignatureForSelector_, sel_setCompressionType_))
      {
        [v10 setCompressionType_];
      }
    }
  }

  else if (*a1)
  {
    v18 = *a5;
    *buf = [*a5 storageMode];
    v36 = [*a5 pixelFormat];
    v19 = [*a5 usage];
    v34 = 2;
    v35 = v19;
    TextureCompressionType = re::mtl::getTextureCompressionType(a1, buf, &v36, &v35, &v34);
    if (([v18 respondsToSelector_] & 1) != 0 || objc_msgSend(v18, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v18 setCompressionType_];
    }
  }

  v21 = *a5;
  if (([*a5 respondsToSelector_] & 1) == 0)
  {
    result = [v21 methodSignatureForSelector_];
    if (!result)
    {
      return result;
    }
  }

  if ([v21 compressionType] != 1)
  {
    return 0;
  }

  [*a5 pixelFormat];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if ((*&buf[8] & 0x400) == 0)
  {
    [*a5 pixelFormat];
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    v23 = MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x4000000) == 0)
    {
      v24 = *re::pipelineLogObjects(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *a5;
        v26 = v24;
        v27 = [v25 pixelFormat];
        *buf = 67109120;
        *&buf[4] = v27;
        _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_INFO, "Lossy compression not supported for pixel format '%u'", buf, 8u);
      }

      goto LABEL_38;
    }

    if (*a1)
    {
      v30 = [*a1 supportsFamily:1008];
      if ((v30 & 1) == 0)
      {
        v32 = *re::pipelineLogObjects(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v33 = "Ignoring lossy compression request: requires MTLGPUFamilyApple8";
          goto LABEL_49;
        }

LABEL_50:
        MTL::TextureDescriptor::setCompressionType(*a5);
        return 0;
      }
    }

    v31 = [*a5 usage];
    if ((v31 & 0x10) != 0)
    {
      v32 = *re::pipelineLogObjects(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v33 = "Ignoring lossy compression request for texture with MTLTextureUsagePixelFormatView";
LABEL_49:
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, v33, buf, 2u);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    return 1;
  }

  v28 = *re::pipelineLogObjects(InfoForDevice);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_INFO, "Ignoring lossy compression request for compressed pixel format", buf, 2u);
  }

LABEL_38:
  v29 = *a5;
  if (([v29 respondsToSelector_] & 1) != 0 || (result = objc_msgSend(v29, sel_methodSignatureForSelector_, sel_setCompressionType_)) != 0)
  {
    [v29 setCompressionType_];
    return 0;
  }

  return result;
}

void re::createCompressedTextureData(re::TextureData *a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, id *a4@<X3>, id *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1;
  v105 = *MEMORY[0x1E69E9840];
  re::TextureData::pixelFormat(a1);
  *&v103 = 0;
  memset(v102, 0, sizeof(v102));
  MTLPixelFormatGetInfoForDevice();
  v98 = *a3;
  ASTCDefaultMode = DWORD1(v98);
  if (!DWORD1(v98))
  {
    v15 = re::TextureData::pixelFormat(v12);
    ASTCDefaultMode = re::getASTCDefaultMode(v15);
    DWORD1(v98) = ASTCDefaultMode;
  }

  MTLPixelFormat = re::getMTLPixelFormat(v98, ASTCDefaultMode);
  if (!MTLPixelFormat || (v18 = MTLPixelFormat, *a4) && (re::TextureData::textureType(v12), MTLPixelFormat = re::isSupportedPixelFormat(), (MTLPixelFormat & 1) == 0))
  {
    v20 = v102[0];
    v21 = v102[1];
    *a7 = 0;
    *(a7 + 8) = v20;
    *(a7 + 24) = v21;
    return;
  }

  re::internal::synchronizeTextureMipmaps(v12, v17);
  if (a5)
  {
    v19 = *a5;
LABEL_14:
    v23 = v19;
    v97 = v19;
    goto LABEL_15;
  }

  v22 = *(v12 + 8);
  if (v22 == 1)
  {
    v19 = [*(*v12 + 24) copy];
    goto LABEL_14;
  }

  if (v22)
  {
    goto LABEL_121;
  }

  re::createDescriptorFromTexture(a4, v12, &v97);
  v23 = v97;
LABEL_15:
  if (([v23 respondsToSelector_] & 1) != 0 || objc_msgSend(v23, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v23 setCompressionType_];
  }

  v24 = v97;
  [v97 setPixelFormat_];
  v93[0] = 0;
  if (re::TextureData::label(v12))
  {
    v25 = re::TextureData::label(v12);
    LOBYTE(v102[0]) = 1;
    *(&v102[0] + 1) = *v83;
    *&v102[2] = v84;
    v102[1] = *&v83[8];
    *&v84 = 0;
    memset(v83, 0, sizeof(v83));
    re::Optional<re::DynamicString>::operator=(v93, v102);
    if (LOBYTE(v102[0]) == 1 && *(&v102[0] + 1))
    {
      if (v102[1])
      {
        (*(**(&v102[0] + 1) + 40))(*(&v102[0] + 1), *(&v102[1] + 1));
      }

      memset(v102 + 8, 0, 32);
    }

    if (*v83 && (v83[8] & 1) != 0)
    {
      (*(**v83 + 40))();
    }
  }

  v91 = 0;
  v92 = 0;
  if (!*(v12 + 8))
  {
    v73 = v24;
    v77 = a7;
    v78 = a6;
    v76 = objc_autoreleasePoolPush();
    v32 = re::TextureData::mipmapLevelCount(v12);
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(v12, v33);
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v89 = 0;
    v79 = FaceOrArrayLength;
    v35 = v32 * FaceOrArrayLength;
    v36 = re::TextureData::depth(v12);
    if (v36 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v87 < v35 * v37)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v86, v35 * v37);
    }

    LOBYTE(v84) = 0;
    *(&v84 + 4) = 0;
    HIDWORD(v84) = 0;
    *&v83[16] = 0;
    *v83 = 0;
    *&v83[8] = 8;
    v85 = dispatch_get_global_queue(21, 0);
    if (v32)
    {
      v38 = 0;
      for (i = v32; i != v38; v32 = i)
      {
        v39 = re::TextureData::depth(v12);
        if (v79)
        {
          v40 = 0;
          if (v39 >> v38 <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = v39 >> v38;
          }

          while (2)
          {
            v42 = 0;
            do
            {
              v100[0] = &unk_1F5D0BBB8;
              v100[1] = &v86;
              v100[3] = v100;
              re::copyTextureBytesToASTCCompression(a4, v12, &v98, a2, v38, v40, v42, v83, v102, v100);
              std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v100);
              if ((v102[0] & 1) == 0)
              {
                re::DynamicString::DynamicString(v101, (v102 + 8));
                *a7 = 0;
                v49 = *&v101[24];
                *(a7 + 8) = *v101;
                *(a7 + 32) = v49;
                *(a7 + 16) = *&v101[8];
                if (v102[0] & 1) == 0 && *(&v102[0] + 1) && (v102[1])
                {
                  (*(**(&v102[0] + 1) + 40))();
                }

                if (*(&v84 + 1))
                {
                  astcenc_context_free(*(&v84 + 1));
                  *(&v84 + 1) = 0;
                }

                re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v86);
                objc_autoreleasePoolPop(v76);
                goto LABEL_79;
              }

              ++v42;
            }

            while (v41 != v42);
            if (++v40 != v79)
            {
              continue;
            }

            break;
          }
        }

        ++v38;
      }
    }

    if (v78)
    {
      v43 = *(v78 + 24);
      if (!v43)
      {
LABEL_122:
        v70 = std::__throw_bad_function_call[abi:nn200100]();
        re::parseTextureFromImageOptions(v70, v71);
        return;
      }

      (*(*v43 + 48))(v43);
    }

    if (!*(v12 + 8))
    {
      if ([*v12 isShareable])
      {
        SharedTexture = re::mtl::Device::makeSharedTexture(v73, a4, &v82);
      }

      else
      {
        SharedTexture = re::mtl::Device::makeTexture(v73, a4, &v82);
      }

      if (v82)
      {
        *&v102[0] = 0x5D676084A50D34ACLL;
        *(&v102[0] + 1) = "copyCompressedTextureQueue";
        memset(v81, 0, sizeof(v81));
        re::internal::BlitCommandQueue::init(v81, a4, v102);
        if (v32)
        {
          v50 = 0;
          v51 = 0;
          v75 = v32;
          do
          {
            v52 = re::TextureData::depth(v12);
            if (v79)
            {
              v53 = 0;
              if (v52 >> v50 <= 1)
              {
                v54 = 1;
              }

              else
              {
                v54 = v52 >> v50;
              }

              v55 = 224 * v51;
              while (2)
              {
                v56 = v51;
                v51 += v54;
                v57 = v54;
                v58 = v55;
                do
                {
                  v59 = v88;
                  if (v88 <= v56)
                  {
                    v99 = 0;
                    v103 = 0u;
                    v104 = 0u;
                    memset(v102, 0, sizeof(v102));
                    v62 = MEMORY[0x1E69E9C10];
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v101 = 136315906;
                    *&v101[4] = "operator[]";
                    *&v101[12] = 1024;
                    *&v101[14] = 789;
                    *&v101[18] = 2048;
                    *&v101[20] = v56;
                    *&v101[28] = 2048;
                    *&v101[30] = v59;
                    v72 = 38;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_106;
                  }

                  v60 = v90;
                  v61 = re::internal::BlitCommandQueue::blitCommandEncoder(v81);
                  v80[0] = 0;
                  re::internal::TextureInMetalBuffers::replaceTextureSlice(v60 + v58, &v82, v50, v53, v61, v80);
                  ++v56;
                  v58 += 224;
                  --v57;
                }

                while (v57);
                ++v53;
                v55 += 224 * v54;
                if (v53 != v79)
                {
                  continue;
                }

                break;
              }
            }

            ++v50;
          }

          while (v50 != v75);
        }

        re::internal::BlitCommandQueue::commit(v81);
        v62 = v102;
        re::internal::BlitCommandQueue::waitUntilCompleted(v81, v102);
        LOBYTE(v12) = v102[0];
        if (v102[0])
        {
          *v101 = v82;
          *&v101[8] = 0;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v91, v101);
          v63 = v76;
          a7 = v77;
          if (*&v101[8] != -1)
          {
            (off_1F5D0BA18[*&v101[8]])(&v99, v101);
          }
        }

        else
        {
LABEL_106:
          if (v102[1])
          {
            v66 = *(&v102[1] + 1);
          }

          else
          {
            v66 = v62 + 17;
          }

          v67 = *v101;
          v68 = *&v101[16];
          v69 = *&v101[24];
          v63 = v76;
          a7 = v77;
          *v77 = 0;
          *(v77 + 8) = v67;
          *(v77 + 24) = v68;
          *(v77 + 32) = v69;
        }

        if (v102[0] & 1) == 0 && *(&v102[0] + 1) && (v102[1])
        {
          (*(**(&v102[0] + 1) + 40))();
        }

        re::internal::BlitCommandQueue::~BlitCommandQueue(v81);
      }

      else
      {
        LOBYTE(v12) = 0;
        v64 = v102[0];
        v65 = v102[1];
        *a7 = 0;
        *(a7 + 8) = v64;
        *(a7 + 24) = v65;
        v63 = v76;
      }

      if (v82)
      {
      }

      if (*(&v84 + 1))
      {
        astcenc_context_free(*(&v84 + 1));
        *(&v84 + 1) = 0;
      }

      re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v86);
      objc_autoreleasePoolPop(v63);
      if ((v12 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_39;
    }

LABEL_121:
    std::__throw_bad_variant_access[abi:nn200100]();
    goto LABEL_122;
  }

  v26 = re::TextureData::pixelFormat(v12);
  v27 = re::TextureData::swizzle(v12);
  v28 = 1;
  if ((v27 & 0xFF0000) != 0x50000 && v27 != 5 && (v27 & 0xFF00) != 0x500)
  {
    v28 = HIBYTE(v27) == 5;
  }

  if (*(v12 + 8) != 1)
  {
    goto LABEL_121;
  }

  v29 = re::MTLToASTCPixelFormat(v26, v28);
  re::internal::createCompressedCPUTextureData(*v12, v29, a2, &v97, &v98, 0, v102);
  if (v102[0])
  {
    *v83 = *(&v102[0] + 1);
    if (*(&v102[0] + 1))
    {
      v30 = (*(&v102[0] + 1) + 8);
    }

    *&v83[8] = 1;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v91, v83);
    if (*&v83[8] != -1)
    {
      (off_1F5D0BA18[*&v83[8]])(&v86, v83);
    }

    re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v102);
LABEL_39:
    if (v93[0] == 1)
    {
      if (v95)
      {
        v31 = *&v96[7];
      }

      else
      {
        v31 = v96;
      }

      re::TextureData::setLabel(&v91, v31);
    }

    LOBYTE(v102[0]) = 0;
    DWORD2(v102[0]) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v102, &v91);
    *a7 = 1;
    *(a7 + 8) = 0;
    *(a7 + 16) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7 + 8, v102);
    if (DWORD2(v102[0]) != -1)
    {
      (off_1F5D0BA18[DWORD2(v102[0])])(v83, v102);
    }

    goto LABEL_79;
  }

  if (v102[1])
  {
    v45 = *(&v102[1] + 1);
  }

  else
  {
    v45 = &v102[1] + 1;
  }

  re::DynamicString::format("Failed to create compressed texture: %s.", v83, v45);
  v46 = *v83;
  v47 = *&v83[16];
  v48 = v84;
  *a7 = 0;
  *(a7 + 8) = v46;
  *(a7 + 24) = v47;
  *(a7 + 32) = v48;
  re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v102);
LABEL_79:
  if (v92 != -1)
  {
    (off_1F5D0BA18[v92])(v102, &v91);
  }

  if (v93[0] == 1 && v94 && (v95 & 1) != 0)
  {
    (*(*v94 + 40))();
  }

  if (v97)
  {
  }
}

void re::parseTextureFromImageOptions(re *this@<X0>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *this;
  v64 = 0;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v64];
  v6 = v64;
  v7 = v6;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8)
  {
    v9 = [v6 localizedDescription];
    v10 = [v9 UTF8String];
    re::DynamicString::format("JSON deocing error: %s\n%s", &v55, v10, re::kTextureFromImageOptionsJSONFormatHelp);
    v11 = v55;
    v12 = *v56;
    *a2 = 0;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
  }

  else
  {
    v38 = a2;
    v39 = v6;
    v55 = 0uLL;
    *v56 = 1;
    *&v56[24] = 0;
    v56[28] = 0;
    *&v56[32] = 0;
    v56[36] = 0;
    memset(&v56[4], 0, 17);
    *&v56[40] = 6;
    v58 = 0uLL;
    v57 = 0;
    v59 = -65536;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v5;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v52;
      while (1)
      {
        v18 = 0;
        do
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v51 + 1) + 8 * v18);
          v20 = [v13 valueForKey:v19];
          if ([v19 isEqualToString:@"semantic"])
          {
            if ([v20 isEqualToString:@"color"])
            {
              v21 = 3;
            }

            else if ([v20 isEqualToString:@"normal"])
            {
              v21 = 5;
            }

            else
            {
              if (![v20 isEqualToString:@"raw"])
              {
                v36 = [v20 UTF8String];
                re::DynamicString::format("Unsupported semantic: %s\n%s", &v41, v36, re::kTextureFromImageOptionsJSONFormatHelp);
                goto LABEL_47;
              }

              v21 = 1;
            }

            *&v56[40] = v21;
            *&v55 = 0x300000002;
          }

          else if ([v19 isEqualToString:@"compression"])
          {
            if ([v20 isEqualToString:@"none"])
            {
              v22 = 1;
LABEL_30:
              *&v56[8] = v22;
              goto LABEL_31;
            }

            if ([v20 isEqualToString:@"GPULossy"])
            {
              v22 = 2;
              goto LABEL_30;
            }

            if ([v20 isEqualToString:@"ASTC_4x4"])
            {
              v22 = 3;
              goto LABEL_30;
            }

            if ([v20 isEqualToString:@"ASTC_6x6"])
            {
              *&v56[8] = 0x500000004;
            }

            else if ([v20 isEqualToString:@"ASTC_8x8"])
            {
              *&v56[8] = 0x800000004;
            }

            else
            {
              if (![v20 isEqualToString:@"ASTC_10x10"])
              {
                v37 = [v20 UTF8String];
                re::DynamicString::format("Unsupported compression: %s\n%s", &v41, v37, re::kTextureFromImageOptionsJSONFormatHelp);
                goto LABEL_47;
              }

              *&v56[8] = 0xC00000004;
            }

            *&v56[24] = 0;
          }

          else
          {
            if (![v19 isEqualToString:@"colorSpace"])
            {
              v34 = [v19 UTF8String];
              re::DynamicString::format("Unsupported key: %s\n%s", &v41, v34, re::kTextureFromImageOptionsJSONFormatHelp);
LABEL_47:
              v32 = v41;
              v33 = v42;
              *v38 = 0;
              *(v38 + 8) = v32;
              *(v38 + 24) = v33;

              goto LABEL_48;
            }

            v24 = re::CGColorSpaceNameFromOCIOString(v20, v23);
            if (!v24)
            {
              v35 = [v20 UTF8String];
              re::DynamicString::format("Unsupported colorSpace: %s\n%s", &v41, v35, re::kTextureFromImageOptionsJSONFormatHelp);
              goto LABEL_47;
            }

            v25 = v24;
            v57 = v25;

            CFRelease(v25);
            v16 = v25;
          }

LABEL_31:

          ++v18;
        }

        while (v15 != v18);
        v26 = [v13 countByEnumeratingWithState:&v51 objects:v65 count:16];
        v15 = v26;
        if (!v26)
        {
          goto LABEL_43;
        }
      }
    }

    v16 = 0;
LABEL_43:

    v41 = v55;
    v42 = *v56;
    v43[0] = *&v56[16];
    *(v43 + 12) = *&v56[28];
    v44 = v16;
    v45 = v58;
    v46 = v59;
    re::FixedArray<short>::FixedArray(&v47, &v60);
    v27 = v42;
    *(v38 + 8) = v41;
    v28 = v63;
    v50 = v63;
    *v38 = 1;
    *(v38 + 24) = v27;
    *(v38 + 40) = v43[0];
    *(v38 + 52) = *(v43 + 12);
    *(v38 + 72) = v44;
    *(v38 + 80) = v45;
    *(v38 + 96) = v46;
    v29 = v47;
    v30 = v48;
    v44 = 0;
    v47 = 0;
    v48 = 0;
    *(v38 + 104) = v29;
    *(v38 + 112) = v30;
    v31 = v49;
    v49 = 0;
    *(v38 + 120) = v31;
    *(v38 + 128) = v28;
LABEL_48:
    v7 = v39;
    v5 = v40;
    if (v60)
    {
      if (v61)
      {
        (*(*v60 + 40))();
        v61 = 0;
        v62 = 0;
      }

      v60 = 0;
    }
  }
}

void *re::introspect_TextureCompressionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Unspecified";
      re::introspect_TextureCompressionType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "None";
      qword_1EE1C63A8 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "MetalLossy";
      qword_1EE1C63B0 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 3;
      *(v17 + 2) = "ASTC_4x4";
      qword_1EE1C63B8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 4;
      *(v19 + 16) = "ASTC";
      qword_1EE1C63C0 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_TextureCompressionType(BOOL)::info, "TextureCompressionType", 4, 4, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::introspect_TextureCompressionType(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_TextureCompressionType(BOOL)::isInitialized)
    {
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::introspect_TextureCompressionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_TextureCompressionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }
  }

  re::introspect_TextureCompressionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_TextureCompressionType(BOOL)::info, a2);
  v21[0] = 0x661208C0D60D1E8ALL;
  v21[1] = "TextureCompressionType";
  xmmword_1EE1C6378 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_TextureCompressionType(BOOL)::info;
}

void re::introspect_ASTCBlockSize(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BBEF8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BBF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF00))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BBF68, "ASTCBlockSize", 4, 4, 1, 1);
      qword_1EE1BBF68 = &unk_1F5D0C658;
      qword_1EE1BBFA8 = &re::introspect_ASTCBlockSize(BOOL)::enumTable;
      dword_1EE1BBF78 = 9;
      __cxa_guard_release(&qword_1EE1BBF00);
    }

    if (_MergedGlobals_483)
    {
      break;
    }

    _MergedGlobals_483 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BBF68, a2);
    v59 = 0xC9871D6D0725621ALL;
    v60 = "ASTCBlockSize";
    v63 = 208862;
    v64 = "int";
    v4 = v62[0];
    v5 = v62[1];
    if (v63)
    {
      if (v63)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BBFA8;
      v63 = v4;
      v64 = v5;
      re::TypeBuilder::beginEnumType(v62, &v59, 1, 1, &v63);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
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

            v15 = *(v9 + 8);
            *&v61.var0 = 2 * v11;
            v61.var1 = v10;
            re::TypeBuilder::addEnumConstant(v62, v15, &v61);
            if (*&v61.var0)
            {
              if (*&v61.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v61.var0 = 2 * v20;
              v61.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v62, v24, &v61);
              if (*&v61.var0)
              {
                if (*&v61.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v62, v26);
      xmmword_1EE1BBF88 = v61;
      if (v59)
      {
        if (v59)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v60);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1BBEF8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE1BBFF8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "4x4";
      qword_1EE1BC000 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "5x4";
      qword_1EE1BC008 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "5x5";
      qword_1EE1BC010 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "6x5";
      qword_1EE1BC018 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "6x6";
      qword_1EE1BC020 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "8x5";
      qword_1EE1BC028 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "8x6";
      qword_1EE1BC030 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "8x8";
      qword_1EE1BC038 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 9;
      *(v48 + 2) = "10x5";
      qword_1EE1BC040 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 10;
      *(v50 + 2) = "10x6";
      qword_1EE1BC048 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 11;
      *(v52 + 2) = "10x8";
      qword_1EE1BC050 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 12;
      *(v54 + 2) = "10x10";
      qword_1EE1BC058 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 13;
      *(v56 + 2) = "12x10";
      qword_1EE1BC060 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 8) = 14;
      *(v58 + 16) = "12x12";
      qword_1EE1BC068 = v58;
      __cxa_guard_release(&qword_1EE1BBEF8);
    }
  }
}

void re::introspect_ASTCMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BBF08, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BBF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF10))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BBFB0, "ASTCMode", 4, 4, 1, 1);
      qword_1EE1BBFB0 = &unk_1F5D0C658;
      qword_1EE1BBFF0 = &re::introspect_ASTCMode(BOOL)::enumTable;
      dword_1EE1BBFC0 = 9;
      __cxa_guard_release(&qword_1EE1BBF10);
    }

    if (byte_1EE1BBEF1)
    {
      break;
    }

    byte_1EE1BBEF1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BBFB0, a2);
    v37 = 0x36433FB06C8;
    v38 = "ASTCMode";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BBFF0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
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

            v15 = *(v9 + 8);
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1BBFD0 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1BBF08);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unspecified";
      qword_1EE1BBF28 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "LinearLDR";
      qword_1EE1BBF30 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "SRGB_LDR";
      qword_1EE1BBF38 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "LinearHDR";
      qword_1EE1BBF40 = v36;
      __cxa_guard_release(&qword_1EE1BBF08);
    }
  }
}

void *re::allocInfo_ASTCCompressionOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BBF18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC070, "ASTCCompressionOptions");
    __cxa_guard_release(&qword_1EE1BBF18);
  }

  return &unk_1EE1BC070;
}

void re::initInfo_ASTCCompressionOptions(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x9ADC94622CF054B2;
  v21[1] = "ASTCCompressionOptions";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BBF20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BBF20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_ASTCBlockSize(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "blockSize";
      *(v8 + 16) = &qword_1EE1BBF68;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BBF48 = v8;
      v9 = re::introspectionAllocator(v8);
      re::introspect_ASTCMode(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "mode";
      *(v11 + 16) = &qword_1EE1BBFB0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x400000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1BBF50 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "premultipliedAlpha";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x800000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1BBF58 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "quality";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0xC00000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1BBF60 = v19;
      __cxa_guard_release(&qword_1EE1BBF20);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BBF48;
  *(this + 9) = re::internal::defaultConstruct<re::ASTCCompressionOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ASTCCompressionOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::ASTCCompressionOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::ASTCCompressionOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::internal::defaultConstruct<re::ASTCCompressionOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 12) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ASTCCompressionOptions>(uint64_t result)
{
  *(result + 12) = 0;
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t re::types::Ok<re::TextureImportData>::~Ok(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 72);

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 8);
  if (v3 != -1)
  {
    (off_1F5D0BA18[v3])(&v5, a1);
  }

  *(a1 + 8) = -1;
  return a1;
}

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BA38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1)
  {
    *v1 = 0;
    return (*(**(result + 16) + 96))();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<CGImagePtr>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          CGImagePtr::~CGImagePtr(v3);
          v3 = (v3 + 112);
          v5 -= 112;
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

void *re::DynamicArray<CGImagePtr>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<CGImagePtr>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          CGImagePtr::CGImagePtr(v11, v8);
          CGImagePtr::~CGImagePtr(v8);
          v8 += 14;
          v11 += 112;
          v10 -= 112;
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

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const void *std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    CFRelease(result);
    **(a1 + 8) = 0;
    v3 = *(**(a1 + 16) + 96);

    return v3();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1)
  {
    *v1 = 0;
    return (*(**(result + 16) + 96))();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(uint64_t a1)
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
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v3);
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

void *re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 8);
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
        v11 = v8 + 224 * v9;
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

          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((v8 + v10));
          v10 += 224;
        }

        while (v13 + 224 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BBB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 8);
  (*(*a2 + 24))(v5, a2);
  re::DynamicArray<re::internal::TextureInMetalBuffers>::add(v4, v5);
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v5);
  *a3 = 1;
}

uint64_t std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::internal::TextureInMetalBuffers>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::TextureInMetalBuffers>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 224 * v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  *v5 = v6;
  *(v5 + 8) = v7;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v5 + 16, (a2 + 16));
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 136, (a2 + 136));
  v9 = *(a2 + 176);
  *(v5 + 184) = *(a2 + 184);
  *(v5 + 176) = v9;
  LODWORD(v9) = *(a2 + 192);
  *(v5 + 192) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 200);
    *(v5 + 216) = *(a2 + 216);
    *(v5 + 200) = v10;
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::internal::TextureInMetalBuffers>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

BOOL re::meshHasSkinningData(re *this, const re::GeomMesh *a2)
{
  v3 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skeletonPath");
  v4 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationGeometryBindTransform");
  v5 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationWeights");
  v6 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationJointIndices");
  v7 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationInfluenceEndIndices");
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && v5 != 0 && v6 != 0 && v7 != 0;
}

uint64_t re::repairTangentsAndBitangentsAllVertexRateInternal(re *this, re::GeomMesh *a2, re::GeomAttribute *a3, re::GeomAttribute *a4, re::GeomAttribute *a5)
{
  v8 = re::GeomAttribute::accessValues<int>(a2);
  v10 = v9;
  v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
  v13 = v12;
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  v16 = *(this + 4);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 16 * v16;
    do
    {
      if (16 * v13 == v17)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_25:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_26:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (16 * v15 == v17)
      {
        goto LABEL_25;
      }

      v20 = vmulq_f32(*(v11 + v17), *(v11 + v17));
      if (fabsf(v20.f32[2] + vaddv_f32(*v20.f32)) < 1.0e-10 || (v21 = vmulq_f32(*(result + v17), *(result + v17)), fabsf(v21.f32[2] + vaddv_f32(*v21.f32)) < 1.0e-10))
      {
        if (v18 >= v10)
        {
          goto LABEL_26;
        }

        v22 = *(v8 + v17);
        v23 = vext_s8(*v22.f32, *&vextq_s8(v22, v22, 8uLL), 4uLL);
        v24 = vmvn_s8(vceq_f32(v23, v23));
        if ((v24.i8[0] & 1) == 0 && (v24.i8[4] & 1) == 0)
        {
          v25 = vmulq_f32(v22, v22);
          v26 = v25.f32[2] + vaddv_f32(*v25.f32);
          if (fabsf(v26) >= 1.0e-10)
          {
            v27 = v26;
            v28 = vrsqrte_f32(LODWORD(v26));
            v29 = vmul_f32(v28, vrsqrts_f32(LODWORD(v27), vmul_f32(v28, v28)));
            v30 = vmulq_n_f32(v22, vmul_f32(v29, vrsqrts_f32(LODWORD(v27), vmul_f32(v29, v29))).f32[0]);
            v31 = (v11 + v17);
            *v31 = 0;
            v31[1] = 0;
            v32 = vabsq_f32(v30);
            if (v32.f32[1] <= v32.f32[2])
            {
              v33 = 1;
            }

            else
            {
              v33 = 2;
            }

            if (v32.f32[0] <= v32.f32[2] && v32.f32[0] <= v32.f32[1])
            {
              v33 = 0;
            }

            *(v31 + v33) = 1065353216;
            v35 = vmulq_f32(v30, v30);
            v36 = v35.f32[2] + vaddv_f32(*v35.f32);
            v37 = *v31;
            v38 = *v31;
            if (v36 > 0.0)
            {
              v39 = vmulq_f32(v37, v30);
              v38 = vmulq_n_f32(v30, (v39.f32[2] + vaddv_f32(*v39.f32)) / v36);
            }

            v40 = vsubq_f32(v37, v38);
            v41 = vmulq_f32(v40, v40);
            *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
            *v41.f32 = vrsqrte_f32(v42);
            *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
            v43 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
            *(v11 + v17) = v43;
            v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vnegq_f32(v30)), v43, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
            *(result + v17) = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
          }
        }
      }

      ++v18;
      v17 += 16;
    }

    while (v19 != v17);
  }

  return result;
}

uint64_t re::repairTangentsAndBitangentsSlowInternal(re *this, re::GeomMesh *a2, re::GeomAttribute *a3, re::GeomAttribute *a4, re::GeomAttribute *a5)
{
  v7 = a2;
  v68 = *MEMORY[0x1E69E9840];
  v49 = re::GeomAttribute::accessValues<int>(a2);
  v50 = v9;
  v10 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
  v12 = v11;
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  v15 = result;
  v16 = v14;
  v53[0] = 0;
  if (*(v7 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(v7, v14);
    v53[1] = result;
  }

  else
  {
    v53[0] = this;
  }

  v52[0] = 0;
  if (*(a3 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(a3, v14);
    v52[1] = result;
  }

  else
  {
    v52[0] = this;
  }

  v51[0] = 0;
  if (*(a4 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(a4, v14);
    v51[1] = result;
  }

  else
  {
    v51[0] = this;
  }

  v48 = *(this + 10);
  if (*(this + 10))
  {
    v17 = 0;
    v47 = this;
    do
    {
      v18 = *(this + 5);
      if (v18 <= v17)
      {
        goto LABEL_45;
      }

      v18 = 0;
      if (*(*(this + 7) + 16 * v17 + 12) == -1)
      {
        v19 = 3;
      }

      else
      {
        v19 = 4;
      }

      do
      {
        v20 = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v52, v17, v18);
        result = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v51, v17, v18);
        if (v20 != -1 && result != -1)
        {
          if (v20 >= v12)
          {
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v63 = 0u;
            v64 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            v58 = 621;
            v59 = 2048;
            v60 = v20;
            v61 = 2048;
            v62 = v12;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v63 = 0u;
            v64 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            v58 = 621;
            v59 = 2048;
            v60 = v7;
            v61 = 2048;
            v62 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_44:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v63 = 0u;
            v64 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            v58 = 613;
            v59 = 2048;
            v60 = v20;
            v61 = 2048;
            v62 = v50;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_45:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v65 = 0u;
            v63 = 0u;
            v64 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            v58 = 797;
            v59 = 2048;
            v60 = v17;
            v61 = 2048;
            v62 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          LODWORD(v7) = result;
          if (result >= v16)
          {
            goto LABEL_43;
          }

          v22 = (v10 + 16 * v20);
          v7 = (v15 + 16 * result);
          v23 = vmulq_f32(*v22, *v22);
          if (fabsf(v23.f32[2] + vaddv_f32(*v23.f32)) < 1.0e-10 || (v24 = vmulq_f32(*v7, *v7), fabsf(v24.f32[2] + vaddv_f32(*v24.f32)) < 1.0e-10))
          {
            result = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v53, v17, v18);
            if (result != -1)
            {
              v20 = result;
              if (result >= v50)
              {
                goto LABEL_44;
              }

              v25 = *(v49 + 16 * result);
              v26 = vext_s8(*v25.f32, *&vextq_s8(v25, v25, 8uLL), 4uLL);
              v27 = vmvn_s8(vceq_f32(v26, v26));
              if ((v27.i8[0] & 1) == 0 && (v27.i8[4] & 1) == 0)
              {
                v28 = vmulq_f32(v25, v25);
                v29 = v28.f32[2] + vaddv_f32(*v28.f32);
                if (fabsf(v29) >= 1.0e-10)
                {
                  v30 = v29;
                  v31 = vrsqrte_f32(LODWORD(v29));
                  v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
                  v33 = vmulq_n_f32(v25, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
                  v22->i64[0] = 0;
                  v22->i64[1] = 0;
                  v34 = vabsq_f32(v33);
                  v35 = 2;
                  if (v34.f32[1] <= v34.f32[2])
                  {
                    v35 = 1;
                  }

                  if (v34.f32[0] <= v34.f32[2] && v34.f32[0] <= v34.f32[1])
                  {
                    v35 = 0;
                  }

                  v22->i32[v35] = 1065353216;
                  v37 = vmulq_f32(v33, v33);
                  v38 = v37.f32[2] + vaddv_f32(*v37.f32);
                  v39 = *v22;
                  v40 = *v22;
                  if (v38 > 0.0)
                  {
                    v41 = vmulq_f32(v39, v33);
                    v40 = vmulq_n_f32(v33, (v41.f32[2] + vaddv_f32(*v41.f32)) / v38);
                  }

                  v42 = vsubq_f32(v39, v40);
                  v43 = vmulq_f32(v42, v42);
                  *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
                  *v43.f32 = vrsqrte_f32(v44);
                  *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
                  v45 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
                  *v22 = v45;
                  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), vnegq_f32(v33)), v45, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
                  *v7 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
                }
              }
            }
          }
        }

        v18 = (v18 + 1);
      }

      while (v18 < v19);
      ++v17;
      this = v47;
    }

    while (v17 != v48);
  }

  return result;
}

uint64_t re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1)
  {
    if (*(v4 + 40) > a2)
    {
      v12 = *(*(v4 + 56) + 16 * a2);
      v5 = &v12;
      return *(v5 + a3);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v8 = a1[1];
  LODWORD(v12) = a2;
  v9 = *(v8 + 140);
  if (v9 == 2)
  {
    v11 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v8 + 144), &v12);
    if (v11 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = (*(v8 + 152) + 8 * v11 + 4);
LABEL_14:
    LODWORD(a2) = *v10;
    if (*v10 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = a1[1];
LABEL_16:
    if (*(v8 + 24) > a2)
    {
      v5 = (*(v8 + 40) + 16 * a2);
      return *(v5 + a3);
    }

LABEL_21:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v9 == 1)
  {
    if (*(v8 + 160) <= a2)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = (*(v8 + 176) + 4 * a2);
    goto LABEL_14;
  }

  if (*(v8 + 140))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (*(v8 + 144) > a2)
  {
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t re::remapSubdivisionSurfaceAttributes(re *a1, const re::GeomMesh *a2, unint64_t a3)
{
  v7 = a2;
  v8 = a1;
  v82 = *MEMORY[0x1E69E9840];
  result = re::meshHasSubdivCreases(a1, a2);
  if (result)
  {
    v67 = 0;
    v64[1] = 0;
    v65 = 0;
    v64[0] = 0;
    v66 = 0;
    re::DynamicArray<unsigned int>::resize(v64, *(v7 + 16), &re::kInvalidMeshIndex);
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = re::GeomIndexMap::operator[](a3, v11);
        v13 = v12;
        v14 = v65;
        if (v65 <= v12)
        {
          break;
        }

        *(v67 + 4 * v12) = v11;
        v11 = (v11 + 1);
        if (v10 == v11)
        {
          goto LABEL_6;
        }
      }

      v68 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v69 = 136315906;
      v70 = "operator[]";
      v71 = 1024;
      v72 = 789;
      v73 = 2048;
      v74 = v13;
      v75 = 2048;
      v76 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_60;
    }

LABEL_6:
    v63 = v8;
    v14 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), "osdEdgeCreaseWeights");
    v62 = v7;
    v15 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), "osdEdgeCreaseIndices");
    if (v15)
    {
      v16 = v15;
      v17 = (*(*v14 + 16))(v14);
      v18 = re::GeomAttribute::accessValues<int>(v16);
      v11 = v18;
      a3 = v19;
      v7 = 0;
      if (v17)
      {
        v20 = v65;
        v8 = v19;
        v21 = (v18 + 4);
        v3 = 1;
        v22 = v17;
        while (v3 - 1 < v19)
        {
          v4 = *(v21 - 1);
          if (v65 <= v4)
          {
            goto LABEL_61;
          }

          if (v3 >= v19)
          {
            goto LABEL_62;
          }

          v5 = *v21;
          if (v65 <= v5)
          {
            goto LABEL_63;
          }

          if (*(v67 + 4 * v4) == -1 || *(v67 + 4 * v5) == -1)
          {
            v7 = v7;
          }

          else
          {
            v7 = (v7 + 1);
          }

          v21 += 2;
          v3 += 2;
          if (!--v22)
          {
            goto LABEL_20;
          }
        }

LABEL_60:
        v20 = (a3 + 1);
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v20 & 0xFFFFFFFE;
        v75 = 2048;
        v76 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v4;
        v75 = 2048;
        v76 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_62:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_63:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v5;
        v75 = 2048;
        v76 = v20;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_64;
      }

LABEL_20:
      v24 = v17;
      v25 = re::internal::GeomAttributeManager::attributeByName((v63 + 64), "osdEdgeCreaseWeights");
      v26 = re::internal::GeomAttributeManager::attributeByName((v63 + 64), "osdEdgeCreaseIndices");
      (*(*v25 + 24))(v25, v7);
      (*(*v26 + 24))(v26, (2 * v7));
      v14 = re::GeomAttribute::accessValues<int>(v14);
      v7 = v27;
      v4 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
      v29 = v28;
      v30 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
      if (v24)
      {
        v32 = v14;
        v33 = v24;
        LODWORD(v14) = v31;
        v34 = v29;
        v35 = 0;
        v36 = 0;
        v5 = 0;
        v8 = v65;
        v37 = v67;
        v38 = v7;
        while (v35 < a3)
        {
          v7 = *(v11 + 4 * v35);
          if (v8 <= v7)
          {
            goto LABEL_67;
          }

          v3 = v35 + 1;
          if (v3 >= a3)
          {
            goto LABEL_68;
          }

          v3 = *(v11 + 4 * v3);
          if (v8 <= v3)
          {
            goto LABEL_69;
          }

          v39 = *(v37 + 4 * v7);
          v40 = *(v37 + 4 * v3);
          if (v39 != -1 && v40 != -1)
          {
            if (v36 >= v38)
            {
              goto LABEL_75;
            }

            if (v5 >= v34)
            {
              goto LABEL_76;
            }

            *(v4 + 4 * v5) = *(v32 + v36);
            v7 = (2 * v5);
            if (v7 >= v31)
            {
              goto LABEL_77;
            }

            *(v30 + 4 * v7) = v39;
            v7 = v7 | 1;
            if (v7 >= v31)
            {
              goto LABEL_78;
            }

            *(v30 + 4 * v7) = v40;
            v5 = (v5 + 1);
          }

          ++v36;
          v35 += 2;
          if (v33 == v36)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_66;
      }
    }

LABEL_36:
    v14 = re::internal::GeomAttributeManager::attributeByName((v62 + 64), "osdVertexCreaseWeights");
    v42 = re::internal::GeomAttributeManager::attributeByName((v62 + 64), "osdVertexCreaseIndices");
    if (v42)
    {
      v43 = v42;
      a3 = (*(*v14 + 16))(v14);
      v44 = re::GeomAttribute::accessValues<int>(v43);
      v36 = v44;
      v11 = v45;
      v8 = 0;
      if (a3)
      {
        v7 = v65;
        v3 = v45;
        v46 = a3;
        v47 = v45;
        v48 = v44;
        while (v47)
        {
          v4 = *v48;
          if (v65 <= v4)
          {
            goto LABEL_65;
          }

          if (*(v67 + 4 * v4) == -1)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }

          ++v48;
          --v47;
          if (!--v46)
          {
            goto LABEL_45;
          }
        }

LABEL_64:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_65:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v4;
        v75 = 2048;
        v76 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_66:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v35;
        v75 = 2048;
        v76 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_67:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v7;
        v75 = 2048;
        v76 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_68:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = a3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_69:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = v3;
        v75 = 2048;
        v76 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_70:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v11;
        v75 = 2048;
        v76 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_71:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 789;
        v73 = 2048;
        v74 = a3;
        v75 = 2048;
        v76 = v56;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_72:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v5;
        v75 = 2048;
        v76 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_73:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 621;
        v73 = 2048;
        v74 = v4;
        v75 = 2048;
        v76 = v63;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_74:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 621;
        v73 = 2048;
        v74 = v4;
        v75 = 2048;
        v76 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_75:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v60 = v38;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 613;
        v73 = 2048;
        v74 = v36;
        v75 = 2048;
        v76 = v60;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v61 = v34;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 621;
        v73 = 2048;
        v74 = v5;
        v75 = 2048;
        v76 = v61;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 621;
        v73 = 2048;
        v74 = v7;
        v75 = 2048;
        v76 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v68 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v69 = 136315906;
        v70 = "operator[]";
        v71 = 1024;
        v72 = 621;
        v73 = 2048;
        v74 = v7;
        v75 = 2048;
        v76 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_45:
      v49 = re::internal::GeomAttributeManager::attributeByName((v63 + 64), "osdVertexCreaseWeights");
      v50 = re::internal::GeomAttributeManager::attributeByName((v63 + 64), "osdVertexCreaseIndices");
      (*(*v49 + 24))(v49, v8);
      (*(*v50 + 24))(v50, v8);
      v51 = re::GeomAttribute::accessValues<int>(v14);
      LODWORD(v3) = v52;
      v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v49);
      LODWORD(v63) = v53;
      v54 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v50);
      if (a3)
      {
        LODWORD(v14) = v55;
        v5 = 0;
        v4 = 0;
        v56 = v65;
        v57 = v67;
        v3 = v3;
        v11 = v11;
        v58 = a3;
        while (v11 != v5)
        {
          a3 = *(v36 + 4 * v5);
          if (v56 <= a3)
          {
            goto LABEL_71;
          }

          v59 = *(v57 + 4 * a3);
          if (v59 != -1)
          {
            if (v5 >= v3)
            {
              goto LABEL_72;
            }

            if (v4 >= v63)
            {
              goto LABEL_73;
            }

            *(v7 + 4 * v4) = *(v51 + 4 * v5);
            if (v4 >= v55)
            {
              goto LABEL_74;
            }

            *(v54 + 4 * v4++) = v59;
          }

          if (v58 == ++v5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_70;
      }
    }

LABEL_55:
    result = v64[0];
    if (v64[0])
    {
      if (v67)
      {
        return (*(*v64[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::GeomIndexMap::operator[](uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    v5 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a1 + 16), &v6);
    if (v5 != -1)
    {
      return *(*(a1 + 24) + 8 * v5 + 4);
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 1)
  {
    if (*(a1 + 32) > a2)
    {
      return *(*(a1 + 48) + 4 * a2);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 12))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash();
    __break(1u);
  }

  else if (*(a1 + 16) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }

  return result;
}

uint64_t re::remapSkinningAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationWeights");
  v7 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationJointIndices");
  result = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationInfluenceEndIndices");
  if (v6)
  {
    if (v7)
    {
      v9 = result;
      if (result)
      {
        v48 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationWeights");
        v10 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationJointIndices");
        v11 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationInfluenceEndIndices");
        v46 = re::GeomAttribute::accessValues<int>(v6);
        v50 = v12;
        v45 = re::GeomAttribute::accessValues<int>(v7);
        v51 = v13;
        v14 = re::GeomAttribute::accessValues<int>(v9);
        v16 = v15;
        v17 = *(a1 + 16);
        if (v17)
        {
          LODWORD(v18) = 0;
          v19 = 0;
          do
          {
            v20 = re::GeomIndexMap::operator[](a3, v19);
            if (v20)
            {
              if (v20 - 1 >= v16)
              {
                goto LABEL_49;
              }

              v21 = *(v14 + 4 * (v20 - 1));
            }

            else
            {
              v21 = 0;
            }

            if (v20 >= v16)
            {
              goto LABEL_48;
            }

            v18 = (*(v14 + 4 * v20) + v18 - v21);
            v19 = (v19 + 1);
          }

          while (v17 != v19);
        }

        else
        {
          v18 = 0;
        }

        (*(*v48 + 24))(v48, v18);
        (*(*v10 + 24))(v10, v18);
        (*(*v11 + 24))(v11, v17);
        v44 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v48);
        v47 = v22;
        v43 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v10);
        v49 = v23;
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v11);
        if (!v17)
        {
          return result;
        }

        v25 = result;
        v26 = 0;
        LODWORD(v27) = 0;
        v28 = v24;
        do
        {
          result = re::GeomIndexMap::operator[](a3, v26);
          if (result)
          {
            if (result - 1 >= v16)
            {
              goto LABEL_52;
            }

            v29 = *(v14 + 4 * (result - 1));
          }

          else
          {
            v29 = 0;
          }

          if (result >= v16)
          {
            goto LABEL_50;
          }

          v30 = *(v14 + 4 * result);
          v31 = v30 - v29;
          if (v30 <= v29)
          {
            goto LABEL_41;
          }

          v32 = v28;
          v33 = 0;
          v34 = v27;
          if (v29 <= v51)
          {
            v35 = v51;
          }

          else
          {
            v35 = v29;
          }

          v36 = v44 + 4 * v27;
          if (v27 <= v49)
          {
            v37 = v49;
          }

          else
          {
            v37 = v27;
          }

          v38 = v43 + 4 * v27;
          if (v29 <= v50)
          {
            v39 = v50;
          }

          else
          {
            v39 = v29;
          }

          v40 = v46 + 4 * v29;
          if (v27 <= v47)
          {
            v27 = v47;
          }

          else
          {
            v27 = v27;
          }

          v41 = v45 + 4 * v29;
          result = v39 - v29;
          v42 = v35 - v29;
          do
          {
            if (v42 == v33)
            {
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_45:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_46:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_47:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_48:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_49:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_50:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_51:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_52:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            if (!(v34 - v37 + v33))
            {
              goto LABEL_45;
            }

            *(v38 + 4 * v33) = *(v41 + 4 * v33);
            if (result == v33)
            {
              goto LABEL_46;
            }

            if (!(v34 - v27 + v33))
            {
              goto LABEL_47;
            }

            *(v36 + 4 * v33) = *(v40 + 4 * v33);
            ++v33;
          }

          while (v31 != v33);
          LODWORD(v27) = v34 + v33;
          v28 = v32;
LABEL_41:
          if (v26 == v28)
          {
            goto LABEL_51;
          }

          *(v25 + 4 * v26++) = v27;
        }

        while (v26 != v17);
      }
    }
  }

  return result;
}

void re::makeConditionedMeshForGPU(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v13 = a1;
  v306 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v229, 4510, *(a1 + 16));
  re::GeomMesh::copy(v13, a3);
  v14 = 0;
  v15 = *(v13 + 16);
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  if ((v15 - 1) <= 0xFFFFFFFD)
  {
    *&buf[8] = v15 - 1;
    v14 = v15;
    *&buf[4] = 0;
    *buf = v15;
  }

  LODWORD(v240) = v14;
  re::GeomIndexMap::operator=(a4, buf);
  if (buf[12])
  {
    if (buf[12] == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v240);
    }

    else
    {
      if (buf[12] != 1)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_459;
      }

      if (v240 && v242)
      {
        (*(*v240 + 40))();
      }
    }
  }

  v17 = 0;
  v18 = *(v13 + 40);
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  if ((v18 - 1) <= 0xFFFFFFFD)
  {
    *&buf[8] = v18 - 1;
    v17 = v18;
    *&buf[4] = 0;
    *buf = v18;
  }

  LODWORD(v240) = v17;
  re::GeomIndexMap::operator=(a5, buf);
  if (buf[12])
  {
    if (buf[12] == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v240);
      goto LABEL_19;
    }

    if (buf[12] == 1)
    {
      if (v240)
      {
        v19 = v242;
        if (v242)
        {
          (*(*v240 + 40))();
        }
      }

      goto LABEL_19;
    }

LABEL_459:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
    goto LABEL_460;
  }

LABEL_19:
  v228 = a2;
  if (*(a2 + 4) == 1)
  {
    v20 = *(a3 + 424);
    if (v20)
    {
      v21 = 0;
      v6 = 1;
      do
      {
        v22 = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 400), v21);
        v25 = *(v22 + 17);
        if (v25 > 0xA)
        {
          goto LABEL_457;
        }

        if (((1 << v25) & 0x60F) != 0)
        {
          re::mergeDiscreteFaceVaryingAttributeValues(a3, *(v22 + 8), v24);
        }

        else
        {
          re::mergeContinuousFaceVaryingAttributeValues(a3, *(v22 + 8), v24, 0.00000999999975);
        }

        ++v21;
      }

      while (v20 != v21);
    }
  }

  v26 = *(v13 + 16);
  v27 = *(v13 + 40);
  HasSkinningData = re::meshHasSkinningData(a3, v19);
  v28 = v228;
  v223 = a5;
  v224 = v13;
  if (*(v228 + 3) == 1 && (v26 / v27) > 1.2)
  {
    v6 = a4;
    *(v303 + 1) = 257;
    LODWORD(v303[3]) = 981668463;
    v303[4] = 0;
    LOBYTE(v303[0]) = 0;
    *&v303[1] = xmmword_1E30FF820;
    v29 = *(a3 + 200);
    *&v287[2] = 0;
    memset(v285, 0, sizeof(v285));
    if (v29)
    {
      re::DynamicArray<float *>::setCapacity(v285, v29);
      v30 = 0;
      v7 = "vertexNormal";
      do
      {
        *buf = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 176), v30);
        v31 = *(*buf + 8);
        if (strcmp("vertexPosition", v31) && strcmp("vertexUV", v31) && strcmp("vertexNormal", v31) && strcmp("vertexTangent", v31) && strcmp("vertexBitangent", v31))
        {
          re::DynamicArray<re::TransitionCondition *>::add(v285, buf);
        }

        ++v30;
      }

      while (v29 != v30);
      v8 = *&v285[16];
      v28 = v228;
    }

    else
    {
      v8 = 0;
    }

    a4 = v6;
    if (HasSkinningData || v8)
    {
      if (HasSkinningData)
      {
        v32 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationWeights");
        re::GeomAttribute::accessValues<int>(v32);
        v33 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationJointIndices");
        re::GeomAttribute::accessValues<int>(v33);
        v34 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationInfluenceEndIndices");
        re::GeomAttribute::accessValues<int>(v34);
      }

      *&v302[24] = 0;
      operator new();
    }

    re::mergeVertices(a3, a3, v6, v303);
    if (*v285 && *&v287[2])
    {
      (*(**v285 + 40))();
    }
  }

  v35 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  if (!v35 || *(v35 + 17) != 7)
  {
    goto LABEL_57;
  }

  v36 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  v37 = v36[16];
  if (v37 == 4)
  {
    goto LABEL_54;
  }

  if (v37 == 2)
  {
    if (*(v28 + 7) == 1)
    {
      re::internal::GeomBaseMesh::replaceFaceAttributeWithFaceVaryingAttribute((a3 + 16), "vertexNormal");
    }

    else
    {
      re::internal::GeomAttributeManager::deleteAttribute((a3 + 64), "vertexNormal");
      re::computeSmoothFaceVaryingNormals(a3, v53, 0.7854);
    }
  }

  else if (!v36[16])
  {
LABEL_54:
    v38 = *re::pipelineLogObjects(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Recalculating normals defined at an unsupported rate.", buf, 2u);
    }

    re::internal::GeomAttributeManager::deleteAttribute((a3 + 64), "vertexNormal");
  }

LABEL_57:
  v39 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  if (!v39 || *(v39 + 17) != 7)
  {
    if (*(v28 + 5) == 1)
    {
      re::computeSmoothFaceVaryingNormals(a3, v40, 0.7854);
    }

    else
    {
      re::computeSmoothVertexNormals(a3, v40);
    }
  }

  v41 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexTangent");
  if (!v41 || *(v41 + 17) != 7 || (v42 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexBitangent")) == 0 || *(v42 + 17) != 7)
  {
    if (re::internal::GeomAttributeManager::attributeByName((v13 + 64), "vertexUV"))
    {
      v44 = re::internal::GeomAttributeManager::attributeByName((v13 + 64), "vertexUV");
      if ((v44[16] | 2) == 3)
      {
        buf[4] = 1;
        *buf = 1;
        re::computeTangentsAndBitangents(a3, "vertexUV", "vertexTangent", "vertexBitangent", "vertexNormal", buf);
      }

      else
      {
        v52 = *re::pipelineLogObjects(v44);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "Cannot generate tangents+bitangents on mesh without vertex or face-varying rate uvs.", buf, 2u);
        }
      }
    }
  }

  if (*(v28 + 2) == 1)
  {
    v45 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
    v46 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexTangent");
    v47 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexBitangent");
    if (v45)
    {
      if (v46)
      {
        if (v47)
        {
          if (v45[17] == 7 && v46[17] == 7 && v47[17] == 7)
          {
            v49 = v45[16];
            if ((v49 & 0xFFFFFFFD) == 1)
            {
              v50 = v46[16];
              if ((v50 & 0xFFFFFFFD) == 1)
              {
                v51 = v47[16];
                if ((v51 & 0xFFFFFFFD) == 1)
                {
                  if (v49 == 1 && v50 == 1 && v51 == 1)
                  {
                    re::repairTangentsAndBitangentsAllVertexRateInternal(a3, v45, v46, v47, v48);
                  }

                  else
                  {
                    re::repairTangentsAndBitangentsSlowInternal(a3, v45, v46, v47, v48);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(a3 + 8) != *(a3 + 40))
  {
  }

  v54 = re::meshHasSkinningData(a3, v43);
  if (v54 || (*v28 & 1) != 0)
  {
    v55 = 1;
  }

  else
  {
    v55 = *(v28 + 9);
  }

  v225 = v55;
  v227 = a3;
  v216 = a4;
  if (*(v28 + 8) != 1)
  {
    goto LABEL_246;
  }

  v220 = v54;
  *&v293[2] = 0;
  memset(v291, 0, sizeof(v291));
  v237 = 0;
  v234[1] = 0;
  v235 = 0;
  v233 = 0;
  v234[0] = 0;
  v236 = 0;
  v230[1] = 0;
  v231 = 0;
  v230[0] = 0;
  v232 = 0;
  re::GeomConnectivityManifold::GeomConnectivityManifold(buf);
  v269 = 0;
  v268 = 0;
  v271 = 0;
  v270 = 0;
  v284 = 0;
  v272 = 0u;
  v273 = 0u;
  v274 = 0;
  v275 = 0u;
  v276 = 0u;
  v277 = 0;
  v278 = 0u;
  v279 = 0u;
  v280 = 0;
  v281 = 0u;
  v282 = 0u;
  v283 = 0;
  if (!re::GeomConnectivityManifold::buildIfManifold(a3, buf, v56))
  {
    goto LABEL_143;
  }

  v57 = re::GeomMesh::accessVertexPositions(a3);
  v59 = v58;
  v7 = buf;
  re::DynamicArray<re::Vector3<float>>::resize(&v281 + 8, v58);
  if (v59)
  {
    v6 = 0;
    do
    {
      v28 = *(&v282 + 1);
      if (*(&v282 + 1) <= v6)
      {
        goto LABEL_431;
      }

      *&v60 = *v57;
      DWORD2(v60) = *(v57 + 8);
      *(v284 + 16 * v6++) = v60;
      v57 += 16;
    }

    while (v59 != v6);
  }

  v61 = DWORD2(v240);
  re::DynamicArray<float>::resize(&v268, DWORD2(v240));
  if (v61)
  {
    v63 = 0;
    v28 = *(&v240 + 1);
    v64 = *(&v282 + 1);
    v65 = v284;
    v7 = v270;
    v66 = v272;
    v67 = (*(&v241 + 1) + 4);
    v62.i32[0] = 0.5;
    while (v28 != v63)
    {
      v6 = *(v67 - 1);
      if (v64 <= v6)
      {
        goto LABEL_433;
      }

      a5 = *v67;
      if (v64 <= a5)
      {
        goto LABEL_434;
      }

      v13 = v67[1];
      if (v64 <= v13)
      {
        goto LABEL_435;
      }

      if (v7 == v63)
      {
        goto LABEL_436;
      }

      v68 = *(v65 + 16 * v6);
      v69 = vsubq_f32(*(v65 + 16 * a5), v68);
      v70 = vsubq_f32(*(v65 + 16 * v13), v68);
      v71 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vnegq_f32(v69)), v70, vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL));
      v72 = vmulq_f32(v71, v71);
      *(v66 + 4 * v63++) = sqrtf(v72.f32[1] + (v72.f32[2] + v72.f32[0])) * 0.5;
      v67 += 4;
      if (v61 == v63)
      {
        goto LABEL_109;
      }
    }

    goto LABEL_432;
  }

LABEL_109:
  v73 = *buf;
  v7 = buf;
  LODWORD(v303[0]) = 0;
  re::DynamicArray<float>::resize(&v272 + 1, *buf, v303, v62);
  *&v287[2] = 0;
  memset(v285, 0, sizeof(v285));
  if (!v73)
  {
    goto LABEL_123;
  }

  for (i = 0; i != v73; ++i)
  {
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(buf, i, v285);
    v76 = *&v287[2];
    if (*&v285[16])
    {
      a5 = v270;
      v77 = v272;
      v78 = 4 * *&v285[16];
      v79 = *&v287[2];
      v28 = *(&v273 + 1);
      v80 = v275;
      while (1)
      {
        v6 = *v79;
        if (a5 <= v6)
        {
          break;
        }

        if (v28 <= i)
        {
          goto LABEL_258;
        }

        *(v80 + 4 * i) = *(v77 + 4 * v6) + *(v80 + 4 * i);
        ++v79;
        v78 -= 4;
        if (!v78)
        {
          goto LABEL_118;
        }
      }

      *v295 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      i = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v302 = 136315906;
      *&v302[4] = "operator[]";
      *&v302[12] = 1024;
      *&v302[14] = 789;
      *&v302[18] = 2048;
      *&v302[20] = v6;
      *&v302[28] = 2048;
      *&v302[30] = a5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_258:
      *v295 = 0;
      v6 = v285;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v302 = 136315906;
      *&v302[4] = "operator[]";
      *&v302[12] = 1024;
      *&v302[14] = 789;
      *&v302[18] = 2048;
      *&v302[20] = i;
      *&v302[28] = 2048;
      *&v302[30] = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_259:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v295[0] = 136315906;
      *&v295[1] = "operator[]";
      v296 = 1024;
      v297 = 789;
      v298 = 2048;
      v299 = a5;
      v300 = 2048;
      v301 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_260:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v295[0] = 136315906;
      *&v295[1] = "operator[]";
      v296 = 1024;
      v297 = 789;
      v298 = 2048;
      v299 = v13;
      v300 = 2048;
      v301 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_261:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v295[0] = 136315906;
      *&v295[1] = "operator[]";
      v296 = 1024;
      v297 = 789;
      v298 = 2048;
      v299 = a5;
      v300 = 2048;
      v301 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_262:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v295[0] = 136315906;
      *&v295[1] = "operator[]";
      v296 = 1024;
      v297 = 797;
      v298 = 2048;
      v299 = v6;
      v300 = 2048;
      v301 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_263:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v295[0] = 136315906;
      *&v295[1] = "operator[]";
      v296 = 1024;
      v297 = 789;
      v298 = 2048;
      v299 = a5 + 1;
      v300 = 2048;
      v301 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_264:
      *v295 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v302 = 136315906;
      *&v302[4] = "operator[]";
      *&v302[12] = 1024;
      *&v302[14] = 789;
      *&v302[18] = 2048;
      *&v302[20] = v28;
      *&v302[28] = 2048;
      *&v302[30] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_265:
      *v295 = 0;
      v84 = v285;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v302 = 136315906;
      *&v302[4] = "operator[]";
      *&v302[12] = 1024;
      *&v302[14] = 789;
      *&v302[18] = 2048;
      *&v302[20] = v28;
      *&v302[28] = 2048;
      *&v302[30] = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_266:
      v238 = 0;
      v28 = v285;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v6;
      v286 = 2048;
      *v287 = v84;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_267:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v28;
      v286 = 2048;
      *v287 = v84;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_268:
      v238 = 0;
      v6 = v285;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v8;
      v286 = 2048;
      *v287 = v84;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_269:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v6;
      v286 = 2048;
      *v287 = a3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_270:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v28;
      v286 = 2048;
      *v287 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_271:
      v238 = 0;
      v304 = 0u;
      v305 = 0u;
      memset(v303, 0, sizeof(v303));
      v127 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v285 = 136315906;
      *&v285[4] = "operator[]";
      *&v285[12] = 1024;
      *&v285[14] = 789;
      *&v285[18] = 2048;
      *&v285[20] = v8;
      v286 = 2048;
      *v287 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_272:
      v129.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v303[2]);
      goto LABEL_273;
    }

    v28 = *(&v273 + 1);
LABEL_118:
    if (v28 <= i)
    {
      goto LABEL_442;
    }

    *&v74 = *(v275 + 4 * i) / 3.0;
    *(v275 + 4 * i) = LODWORD(v74);
  }

  if (*v285 && v76)
  {
    v74 = (*(**v285 + 40))();
  }

LABEL_123:
  *(&v276 + 1) = 0;
  ++v277;
  LODWORD(v303[0]) = 0;
  re::DynamicArray<float>::resize(&v275 + 1, v262, v303, *&v74);
  *(&v279 + 1) = 0;
  ++v280;
  LODWORD(v303[0]) = 0;
  re::DynamicArray<float>::resize(&v278 + 1, *buf, v303, v81);
  v28 = *(&v240 + 1);
  if (DWORD2(v240))
  {
    v82 = 0;
    a5 = v295;
    v13 = v302;
    a4 = 2;
    while (v28 > v82)
    {
      *v302 = *(*(&v241 + 1) + 16 * v82);
      re::GeomConnectivityManifold::faceIncidentEdges(buf, v82, v295);
      v83 = 0;
      v84 = *(&v282 + 1);
      v85 = v284;
      a3 = *(&v276 + 1);
      v86 = v278;
      v7 = *(&v279 + 1);
      v87 = v281;
      do
      {
        v6 = *&v302[4 * v83];
        if (v84 <= v6)
        {
          goto LABEL_266;
        }

        v88 = v83 + 1;
        if (v83 == 2)
        {
          v89 = 0;
        }

        else
        {
          v89 = v83 + 1;
        }

        v28 = *&v302[4 * v89];
        if (v84 <= v28)
        {
          goto LABEL_267;
        }

        if (v83)
        {
          v90 = (v83 - 1);
        }

        else
        {
          v90 = 2;
        }

        v8 = *&v302[4 * v90];
        if (v84 <= v8)
        {
          goto LABEL_268;
        }

        v91 = *(v85 + 16 * v6);
        v92 = vsubq_f32(*(v85 + 16 * v28), v91);
        v93 = vsubq_f32(*(v85 + 16 * v8), v91);
        v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vnegq_f32(v92)), v93, vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL));
        v95 = vmulq_f32(v94, v94);
        v96 = sqrtf(v95.f32[1] + (v95.f32[2] + v95.f32[0]));
        v97 = 0.0;
        if (v96 > 0.0)
        {
          v98 = vmulq_f32(v92, v93);
          v97 = (v98.f32[2] + vaddv_f32(*v98.f32)) / v96;
        }

        v6 = v295[v89];
        if (a3 <= v6)
        {
          goto LABEL_269;
        }

        *(v86 + 4 * v6) = *(v86 + 4 * v6) - v97;
        if (v7 <= v28)
        {
          goto LABEL_270;
        }

        *(v87 + 4 * v28) = v97 + *(v87 + 4 * v28);
        if (v7 <= v8)
        {
          goto LABEL_271;
        }

        *(v87 + 4 * v8) = v97 + *(v87 + 4 * v8);
        v83 = v88;
      }

      while (v88 != 3);
      ++v82;
      v28 = *(&v240 + 1);
      a3 = v227;
      if (v82 >= DWORD2(v240))
      {
        goto LABEL_143;
      }
    }

LABEL_456:
    *v302 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v285 = 136315906;
    *&v285[4] = "operator[]";
    *&v285[12] = 1024;
    *&v285[14] = 797;
    *&v285[18] = 2048;
    *&v285[20] = v82;
    v286 = 2048;
    *v287 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_457:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Unsupported attribute type.", "!Unreachable code", "makeConditionedMeshForGPU", 717);
    _os_crash();
    __break(1u);
  }

LABEL_143:
  a3 = *(a3 + 16);
  LODWORD(v303[0]) = 0;
  re::DynamicArray<unsigned int>::resize(v234, a3, v303);
  if (a3)
  {
    a4 = 0;
    v7 = v294;
    while (1)
    {
      *&v302[32] = 0;
      memset(v302, 0, 28);
      re::GeomConnectivityManifold::fetchVertexIncidentEdges(buf, a4, v302);
      v6 = *&v302[16];
      memset(v285, 0, sizeof(v285));
      v290 = 0;
      *&v287[2] = 0u;
      v288 = 0u;
      v289 = 0;
      re::DynamicArray<float>::resize(v285, (*&v302[16] + 1));
      re::DynamicArray<float>::resize(&v287[10], (v6 + 1));
      if (!*&v285[16])
      {
        goto LABEL_445;
      }

      **&v287[2] = a4;
      v28 = *(&v279 + 1);
      if (*(&v279 + 1) <= a4)
      {
        goto LABEL_446;
      }

      if (!*(&v288 + 1))
      {
        goto LABEL_447;
      }

      *v290 = *(v281 + 4 * a4) * 0.5;
      v99 = v6;
      if (v6)
      {
        break;
      }

LABEL_156:
      if (*v302 && *&v302[32])
      {
        (*(**v302 + 40))();
      }

      if (*(&v288 + 1))
      {
        v28 = 0;
        v100 = 1;
        do
        {
          v6 = *&v285[16];
          if (*&v285[16] <= v28)
          {
            goto LABEL_264;
          }

          re::DynamicArray<int>::add(v291, (*&v287[2] + 4 * v28));
          v6 = *(&v288 + 1);
          if (*(&v288 + 1) <= v28)
          {
            goto LABEL_265;
          }

          re::DynamicArray<float>::add(v230, &v290[v28]);
          v28 = v100;
        }

        while (*(&v288 + 1) > v100++);
      }

      v28 = v235;
      if (a4)
      {
        v6 = a4 - 1;
        if (v235 <= a4 - 1)
        {
          goto LABEL_454;
        }

        v102 = v237[v6] + *&v285[16];
      }

      else
      {
        v102 = *&v285[16];
      }

      if (v235 <= a4)
      {
        goto LABEL_448;
      }

      v237[a4] = v102;
      if (*&v287[10])
      {
        if (v290)
        {
          (*(**&v287[10] + 40))();
        }

        v290 = 0;
        v288 = 0uLL;
        *&v287[10] = 0;
        ++v289;
      }

      if (*v285 && *&v287[2])
      {
        (*(**v285 + 40))();
      }

      if (++a4 == a3)
      {
        goto LABEL_177;
      }
    }

    a5 = 0;
    v28 = *&v302[16];
    while (v28 > a5)
    {
      re::GeomConnectivityManifold::edgeVertices(buf, *(*&v302[32] + 4 * a5), v294);
      v13 = a5 + 1;
      v6 = *&v285[16];
      if (*&v285[16] <= a5 + 1)
      {
        goto LABEL_260;
      }

      *(*&v287[2] + 4 * a5 + 4) = v294[a4 == v294[0]];
      v28 = *&v302[16];
      if (*&v302[16] <= a5)
      {
        goto LABEL_261;
      }

      v6 = *(*&v302[32] + 4 * a5);
      v8 = *(&v276 + 1);
      if (*(&v276 + 1) <= v6)
      {
        goto LABEL_262;
      }

      v8 = *(&v288 + 1);
      if (*(&v288 + 1) <= v13)
      {
        goto LABEL_263;
      }

      v290[++a5] = *(v278 + 4 * v6) * 0.5;
      if (v99 == v13)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_259;
  }

LABEL_177:
  a3 = v227;
  v103 = re::GeomMesh::addAttribute(v227, "cotangentLaplacianIndices", 4, 3);
  (*(*v103 + 24))(v103, *&v291[16]);
  v104 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v103);
  v106 = *&v291[16];
  if (*&v291[16])
  {
    v107 = *&v293[2];
    v108 = v105;
    v109 = v105;
    while (v109)
    {
      v110 = *v107++;
      *v104++ = v110;
      --v109;
      if (!--v106)
      {
        goto LABEL_181;
      }
    }

LABEL_438:
    *v302 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v285 = 136315906;
    *&v285[4] = "operator[]";
    *&v285[12] = 1024;
    *&v285[14] = 621;
    *&v285[18] = 2048;
    *&v285[20] = v108;
    v286 = 2048;
    *v287 = v108;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_439:
    *v302 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v285 = 136315906;
    *&v285[4] = "operator[]";
    *&v285[12] = 1024;
    *&v285[14] = 621;
    *&v285[18] = 2048;
    *&v285[20] = v108;
    v286 = 2048;
    *v287 = v108;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_440:
    *v302 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    i = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v285 = 136315906;
    *&v285[4] = "operator[]";
    *&v285[12] = 1024;
    *&v285[14] = 621;
    *&v285[18] = 2048;
    *&v285[20] = v108;
    v286 = 2048;
    *v287 = v108;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_441:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 613;
    *&v291[18] = 2048;
    *&v291[20] = i;
    v292 = 2048;
    *v293 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_442:
    *v295 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v302 = 136315906;
    *&v302[4] = "operator[]";
    *&v302[12] = 1024;
    *&v302[14] = 789;
    *&v302[18] = 2048;
    *&v302[20] = i;
    *&v302[28] = 2048;
    *&v302[30] = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_443:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 613;
    *&v291[18] = 2048;
    *&v291[20] = v7;
    v292 = 2048;
    *v293 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_444:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 621;
    *&v291[18] = 2048;
    *&v291[20] = a5;
    v292 = 2048;
    *v293 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_445:
    v238 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v295[0] = 136315906;
    *&v295[1] = "operator[]";
    v296 = 1024;
    v297 = 789;
    v298 = 2048;
    v299 = 0;
    v300 = 2048;
    v301 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_446:
    v238 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v295[0] = 136315906;
    *&v295[1] = "operator[]";
    v296 = 1024;
    v297 = 797;
    v298 = 2048;
    v299 = a4;
    v300 = 2048;
    v301 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_447:
    v238 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v295[0] = 136315906;
    *&v295[1] = "operator[]";
    v296 = 1024;
    v297 = 789;
    v298 = 2048;
    v299 = 0;
    v300 = 2048;
    v301 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_448:
    *v295 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v302 = 136315906;
    *&v302[4] = "operator[]";
    *&v302[12] = 1024;
    *&v302[14] = 789;
    *&v302[18] = 2048;
    *&v302[20] = a4;
    *&v302[28] = 2048;
    *&v302[30] = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_449:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    v188 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 613;
    *&v291[18] = 2048;
    *&v291[20] = a5;
    v292 = 2048;
    *v293 = a4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_450:
    v234[0] = 0;
    v6 = v285;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 621;
    *&v291[18] = 2048;
    *&v291[20] = v188;
    v292 = 2048;
    *v293 = v188;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_451:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 789;
    *&v291[18] = 2048;
    *&v291[20] = v6;
    v292 = 2048;
    *v293 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_452:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 621;
    *&v291[18] = 2048;
    *&v291[20] = v28;
    v292 = 2048;
    *v293 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_453:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 789;
    *&v291[18] = 2048;
    *&v291[20] = v6;
    v292 = 2048;
    *v293 = a5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_454:
    *v295 = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v302 = 136315906;
    *&v302[4] = "operator[]";
    *&v302[12] = 1024;
    *&v302[14] = 789;
    *&v302[18] = 2048;
    *&v302[20] = v6;
    *&v302[28] = 2048;
    *&v302[30] = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_455:
    v234[0] = 0;
    v304 = 0u;
    v305 = 0u;
    memset(v303, 0, sizeof(v303));
    v82 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v291 = 136315906;
    *&v291[4] = "operator[]";
    *&v291[12] = 1024;
    *&v291[14] = 613;
    *&v291[18] = 2048;
    *&v291[20] = v6;
    v292 = 2048;
    *v293 = a4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_456;
  }

LABEL_181:
  v111 = re::GeomMesh::addAttribute(v227, "cotangentLaplacianEndIndices", 4, 3);
  (*(*v111 + 24))(v111, v235);
  v112 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v111);
  v114 = v235;
  a4 = v216;
  a5 = v223;
  v13 = v224;
  v28 = v228;
  if (v235)
  {
    v115 = v237;
    v108 = v113;
    v116 = v113;
    while (v116)
    {
      v117 = *v115++;
      *v112++ = v117;
      --v116;
      if (!--v114)
      {
        goto LABEL_185;
      }
    }

    goto LABEL_439;
  }

LABEL_185:
  v118 = re::GeomMesh::addAttribute(v227, "cotangentLaplacianWeights", 4, 4);
  (*(*v118 + 24))(v118, v231);
  v119 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v118);
  v121 = v231;
  if (v231)
  {
    v122 = v233;
    v108 = v120;
    v123 = v120;
    while (v123)
    {
      v124 = *v122++;
      *v119++ = v124;
      --v123;
      if (!--v121)
      {
        goto LABEL_189;
      }
    }

    goto LABEL_440;
  }

LABEL_189:
  if (*(&v281 + 1))
  {
    if (v284)
    {
      (*(**(&v281 + 1) + 40))();
    }

    v284 = 0;
    v282 = 0uLL;
    *(&v281 + 1) = 0;
    ++v283;
  }

  if (*(&v278 + 1))
  {
    if (v281)
    {
      (*(**(&v278 + 1) + 40))();
    }

    *&v281 = 0;
    v279 = 0uLL;
    *(&v278 + 1) = 0;
    ++v280;
  }

  if (*(&v275 + 1))
  {
    if (v278)
    {
      (*(**(&v275 + 1) + 40))();
    }

    *&v278 = 0;
    v276 = 0uLL;
    *(&v275 + 1) = 0;
    ++v277;
  }

  if (*(&v272 + 1))
  {
    if (v275)
    {
      (*(**(&v272 + 1) + 40))();
    }

    *&v275 = 0;
    v273 = 0uLL;
    *(&v272 + 1) = 0;
    ++v274;
  }

  if (v268)
  {
    if (v272)
    {
      (*(*v268 + 40))();
    }

    *&v272 = 0;
    v269 = 0;
    v270 = 0;
    v268 = 0;
    ++v271;
  }

  if (v265)
  {
    v125 = v267;
    if ((v267 & 1) == 0)
    {
      (*(*v265 + 40))();
      v125 = v267;
    }

    v265 = 0;
    v266 = 0;
    v267 = (v125 | 1) + 2;
  }

  if (v260)
  {
    if (v264)
    {
      (*(*v260 + 40))();
    }

    v264 = 0;
    v261 = 0;
    v262 = 0;
    v260 = 0;
    ++v263;
  }

  if (v255)
  {
    if (v259)
    {
      (*(*v255 + 40))();
    }

    v259 = 0;
    v256 = 0;
    v257 = 0;
    v255 = 0;
    ++v258;
  }

  if (v250)
  {
    if (v254)
    {
      (*(*v250 + 40))();
    }

    v254 = 0;
    v251 = 0;
    v252 = 0;
    v250 = 0;
    ++v253;
  }

  if (v245)
  {
    if (v249)
    {
      (*(*v245 + 40))();
    }

    v249 = 0;
    v246 = 0;
    v247 = 0;
    v245 = 0;
    ++v248;
  }

  if (v242)
  {
    if (v244)
    {
      (*(*v242 + 40))();
    }

    v244 = 0;
    *&v243 = 0;
    v242 = 0uLL;
    ++DWORD2(v243);
  }

  if (*&buf[8] && *(&v241 + 1))
  {
    (*(**&buf[8] + 40))();
  }

  if (v230[0] && v233)
  {
    (*(*v230[0] + 40))();
  }

  if (v234[0] && v237)
  {
    (*(*v234[0] + 40))();
  }

  if (*v291 && *&v293[2])
  {
    (*(**v291 + 40))();
  }

  v54 = v220;
LABEL_246:
  if ((v225 & 1) == 0)
  {
LABEL_297:
    v145 = 0;
    v146 = *(a3 + 16);
    *v285 = 0xFFFFFFFF00000000;
    *&v285[8] = -1;
    v285[12] = 0;
    if (v146 - 1 <= 0xFFFFFFFD)
    {
      *&v285[8] = v146 - 1;
      v145 = v146;
      *v285 = v146;
    }

    *&v285[16] = v145;
    v147 = *(a3 + 424);
    if (!*(a3 + 424))
    {
      goto LABEL_385;
    }

    *&v302[32] = 0;
    memset(v302, 0, 28);
    re::DynamicArray<double>::resize(v302, v147);
    v148 = 0;
    do
    {
      v149 = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 400), v148);
      v6 = *&v302[16];
      if (*&v302[16] <= v148)
      {
        goto LABEL_428;
      }

      *(*&v302[32] + 8 * v148++) = *(v149 + 8);
    }

    while (v147 != v148);
    v6 = buf;
    re::GeomMesh::GeomMesh(buf, 0);
    re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(a3, v302, v285, buf);
    if (v225)
    {
      v150 = re::internal::GeomAttributeManager::attributeByName((v227 + 64), "vertexAdjacencies");
      v151 = re::internal::GeomAttributeManager::attributeByName((v227 + 64), "accumulatedVertexValence");
      v152 = re::internal::GeomAttributeManager::attributeByName(&v243, "vertexAdjacencies");
      v28 = re::internal::GeomAttributeManager::attributeByName(&v243, "accumulatedVertexValence");
      v153 = v240;
      v154 = re::GeomAttribute::accessValues<int>(v151);
      LODWORD(v8) = v155;
      v219 = re::GeomAttribute::accessValues<int>(v150);
      v6 = v156;
      a5 = 0;
      if (v153)
      {
        v7 = 0;
        do
        {
          v157 = re::GeomIndexMap::operator[](v285, v7);
          LODWORD(v13) = v157;
          if (v157 >= v8)
          {
            goto LABEL_437;
          }

          if (v157)
          {
            v158 = *(v154 + 4 * (v157 - 1));
          }

          else
          {
            v158 = 0;
          }

          a5 = (*(v154 + 4 * v157) + a5 - v158);
          v7 = (v7 + 1);
        }

        while (v153 != v7);
      }

      (*(*v28 + 24))(v28, v153);
      (*(*v152 + 24))(v152, a5);
      v28 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
      v160 = v159;
      v218 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v152);
      v221 = v161;
      if (v153)
      {
        v13 = 0;
        a4 = 0;
        a5 = v160;
        while (1)
        {
          v162 = re::GeomIndexMap::operator[](v285, v13);
          LODWORD(v7) = v162;
          if (v162 >= v8)
          {
            goto LABEL_443;
          }

          v163 = v162 ? *(v154 + 4 * (v162 - 1)) : 0;
          v164 = *(v154 + 4 * v162);
          v165 = v164 >= v163;
          v166 = v164 - v163;
          if (v166 != 0 && v165)
          {
            break;
          }

LABEL_329:
          if (v13 == a5)
          {
            goto LABEL_444;
          }

          *(v28 + 4 * v13++) = a4;
          if (v13 == v153)
          {
            goto LABEL_331;
          }
        }

        if (v163 <= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v163;
        }

        v167 = (v218 + 4 * a4);
        if (a4 <= v221)
        {
          v168 = v221;
        }

        else
        {
          v168 = a4;
        }

        v169 = (v168 - a4);
        v170 = v219 + v163;
        v171 = v7 - v163;
        while (v171)
        {
          if (!v169)
          {
            goto LABEL_423;
          }

          v172 = *v170++;
          *v167++ = v172;
          a4 = (a4 + 1);
          --v169;
          --v171;
          if (!--v166)
          {
            goto LABEL_329;
          }
        }

        v234[0] = 0;
        v168 = v285;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v291 = 136315906;
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 613;
        *&v291[18] = 2048;
        *&v291[20] = v7;
        v292 = 2048;
        *v293 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_423:
        v234[0] = 0;
        v6 = v285;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v291 = 136315906;
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 621;
        *&v291[18] = 2048;
        *&v291[20] = v168;
        v292 = 2048;
        *v293 = v221;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_424:
        v234[0] = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 613;
        *v291 = 136315906;
        *&v291[18] = 2048;
        *&v291[20] = (v153 + a5);
        v292 = 2048;
        *v293 = v221;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_425:
        v234[0] = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 621;
        *v291 = 136315906;
        *&v291[18] = 2048;
        *&v291[20] = (v28 + a5);
        v292 = 2048;
        *v293 = v219;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_426:
        v234[0] = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v291 = 136315906;
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 613;
        *&v291[18] = 2048;
        *&v291[20] = a5 + v153;
        v292 = 2048;
        *v293 = v218;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_427:
        v234[0] = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        v148 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v291 = 136315906;
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 621;
        *&v291[18] = 2048;
        *&v291[20] = a5 + v28;
        v292 = 2048;
        *v293 = v215;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_428:
        *v291 = 0;
        v242 = 0u;
        v243 = 0u;
        v241 = 0u;
        *buf = 0u;
        v240 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v303[0]) = 136315906;
        *(v303 + 4) = "operator[]";
        WORD2(v303[1]) = 1024;
        *(&v303[1] + 6) = 789;
        WORD1(v303[2]) = 2048;
        *(&v303[2] + 4) = v148;
        WORD2(v303[3]) = 2048;
        *(&v303[3] + 6) = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_429:
        *v291 = 0;
        v242 = 0u;
        v243 = 0u;
        v241 = 0u;
        *buf = 0u;
        v240 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v302 = 136315906;
        *&v302[4] = "operator[]";
        *&v302[12] = 1024;
        *&v302[14] = 621;
        *&v302[18] = 2048;
        *&v302[20] = v135;
        *&v302[28] = 2048;
        *&v302[30] = v135;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_430:
        *v291 = 0;
        v242 = 0u;
        v243 = 0u;
        v241 = 0u;
        *buf = 0u;
        v240 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v302 = 136315906;
        *&v302[4] = "operator[]";
        *&v302[12] = 1024;
        *&v302[14] = 621;
        *&v302[18] = 2048;
        *&v302[20] = v135;
        *&v302[28] = 2048;
        *&v302[30] = v135;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_431:
        *v302 = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 789;
        *&v285[18] = 2048;
        *&v285[20] = v6;
        v286 = 2048;
        *v287 = v28;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_432:
        *v302 = 0;
        v64 = v285;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 797;
        *&v285[18] = 2048;
        *&v285[20] = v28;
        v286 = 2048;
        *v287 = v28;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_433:
        *v302 = 0;
        v28 = v285;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 789;
        *&v285[18] = 2048;
        *&v285[20] = v6;
        v286 = 2048;
        *v287 = v64;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_434:
        *v302 = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 789;
        *&v285[18] = 2048;
        *&v285[20] = a5;
        v286 = 2048;
        *v287 = v64;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_435:
        *v302 = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 789;
        *&v285[18] = 2048;
        *&v285[20] = v13;
        v286 = 2048;
        *v287 = v64;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_436:
        *v302 = 0;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v285 = 136315906;
        *&v285[4] = "operator[]";
        *&v285[12] = 1024;
        *&v285[14] = 789;
        *&v285[18] = 2048;
        *&v285[20] = v7;
        v286 = 2048;
        *v287 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_437:
        v234[0] = 0;
        v108 = v285;
        v304 = 0u;
        v305 = 0u;
        memset(v303, 0, sizeof(v303));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v291 = 136315906;
        *&v291[4] = "operator[]";
        *&v291[12] = 1024;
        *&v291[14] = 613;
        *&v291[18] = 2048;
        *&v291[20] = v13;
        v292 = 2048;
        *v293 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_438;
      }
    }

LABEL_331:
    if (*(v228 + 8) == 1)
    {
      v222 = re::internal::GeomAttributeManager::attributeByName((v227 + 64), "cotangentLaplacianIndices");
      v173 = re::internal::GeomAttributeManager::attributeByName((v227 + 64), "cotangentLaplacianEndIndices");
      v219 = re::internal::GeomAttributeManager::attributeByName((v227 + 64), "cotangentLaplacianWeights");
      v7 = re::internal::GeomAttributeManager::attributeByName(&v243, "cotangentLaplacianIndices");
      a5 = re::internal::GeomAttributeManager::attributeByName(&v243, "cotangentLaplacianEndIndices");
      v6 = v173;
      v174 = re::internal::GeomAttributeManager::attributeByName(&v243, "cotangentLaplacianWeights");
      v8 = v240;
      v175 = re::GeomAttribute::accessValues<int>(v173);
      if (v8)
      {
        v28 = v175;
        LODWORD(v13) = v176;
        a4 = 0;
        v177 = 0;
        while (1)
        {
          v178 = re::GeomIndexMap::operator[](v285, v177);
          i = v178;
          if (v178 >= v13)
          {
            goto LABEL_441;
          }

          if (v178)
          {
            v179 = *(v28 + 4 * (v178 - 1));
          }

          else
          {
            v179 = 0;
          }

          a4 = (*(v28 + 4 * v178) + a4 - v179);
          v177 = (v177 + 1);
          if (v8 == v177)
          {
            goto LABEL_341;
          }
        }
      }

      a4 = 0;
LABEL_341:
      (*(*v7 + 24))(v7, a4);
      (*(*v174 + 24))(v174, a4);
      (*(*a5 + 24))(a5, v8);
      v214 = re::GeomAttribute::accessValues<int>(v222);
      v221 = v180;
      v13 = re::GeomAttribute::accessValues<int>(v6);
      a4 = v181;
      v213 = re::GeomAttribute::accessValues<int>(v219);
      LODWORD(v218) = v182;
      v212 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v7);
      LODWORD(v219) = v183;
      v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
      v185 = v184;
      v211 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v174);
      v215 = v186;
      if (v8)
      {
        v187 = 0;
        v28 = 0;
        v188 = v185;
        while (1)
        {
          v189 = re::GeomIndexMap::operator[](v285, v187);
          a5 = v189;
          if (v189)
          {
            v6 = (v189 - 1);
            if (v6 >= a4)
            {
              goto LABEL_455;
            }

            LODWORD(v153) = *(v13 + 4 * v6);
          }

          else
          {
            LODWORD(v153) = 0;
          }

          if (v189 >= a4)
          {
            goto LABEL_449;
          }

          v190 = (*(v13 + 4 * v189) - v153);
          if (v190)
          {
            break;
          }

LABEL_366:
          if (v187 == v188)
          {
            goto LABEL_450;
          }

          v28 = (v190 + v28);
          *(v7 + 4 * v187++) = v28;
          if (v187 == v8)
          {
            goto LABEL_368;
          }
        }

        a5 = 0;
        LODWORD(v191) = v221 - v153;
        if (v221 >= v153)
        {
          v191 = v191;
        }

        else
        {
          v191 = 0;
        }

        LODWORD(v192) = v219 - v28;
        if (v219 >= v28)
        {
          v192 = v192;
        }

        else
        {
          v192 = 0;
        }

        LODWORD(v193) = v218 - v153;
        if (v218 >= v153)
        {
          v193 = v193;
        }

        else
        {
          v193 = 0;
        }

        LODWORD(v194) = v215 - v28;
        if (v215 >= v28)
        {
          v194 = v194;
        }

        else
        {
          v194 = 0;
        }

        while (v191 != a5)
        {
          if (v192 == a5)
          {
            goto LABEL_425;
          }

          *(v212 + 4 * v28 + 4 * a5) = *(v214 + 4 * v153 + 4 * a5);
          if (v193 == a5)
          {
            goto LABEL_426;
          }

          if (v194 == a5)
          {
            goto LABEL_427;
          }

          *(v211 + 4 * v28 + 4 * a5) = *(v213 + 4 * v153 + 4 * a5);
          if (v190 == ++a5)
          {
            goto LABEL_366;
          }
        }

        goto LABEL_424;
      }
    }

LABEL_368:
    a4 = v216;
    re::remapIndexMap(v285, v216, v303);
    re::GeomIndexMap::operator=(v216, v303);
    a3 = v227;
    a5 = v223;
    v13 = v224;
    if (!BYTE4(v303[1]))
    {
      goto LABEL_375;
    }

    if (BYTE4(v303[1]) == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v303[2]);
LABEL_375:
      re::GeomMesh::operator=(v227, buf);
      re::GeomMesh::~GeomMesh(buf);
      if (*v302)
      {
        v196 = *&v302[32];
        if (*&v302[32])
        {
          (*(**v302 + 40))(*v302, *&v302[32]);
        }
      }

      v28 = v228;
      switch(v285[12])
      {
        case 0:
          goto LABEL_385;
        case 2:
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v285[16]);
LABEL_385:
          v197 = *(a3 + 16);
          if (*(v28 + 1) != 1)
          {
            goto LABEL_418;
          }

          v198 = *(a3 + 40);
          if (*(a3 + 8) != v198 || (v197 / v198) >= 1.2)
          {
            goto LABEL_418;
          }

          v199 = 0;
          *v285 = 0xFFFFFFFF00000000;
          *&v285[8] = -1;
          v285[12] = 0;
          if (v198 - 1 <= 0xFFFFFFFD)
          {
            *&v285[8] = v198 - 1;
            v199 = v198;
            *v285 = v198;
          }

          *&v285[16] = v199;
          re::internal::makeVertexCacheCoherentMesh(a3, v285, buf);
          re::remapIndexMap(v285, a5, v303);
          re::GeomIndexMap::operator=(a5, v303);
          if (!BYTE4(v303[1]))
          {
            goto LABEL_397;
          }

          if (BYTE4(v303[1]) == 2)
          {
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v303[2]);
LABEL_397:
            if (v225)
            {
              v201 = re::internal::GeomAttributeManager::attributeByName(&v243, "vertexAdjacencies");
              *&v302[32] = 0;
              memset(v302, 0, 28);
              re::DynamicArray<float>::resize(v302, DWORD2(v241));
              a5 = DWORD2(v241);
              if (DWORD2(v241))
              {
                v202 = 0;
                do
                {
                  v203 = re::GeomIndexMap::operator[](v285, v202);
                  v6 = v203;
                  v28 = *&v302[16];
                  if (*&v302[16] <= v203)
                  {
                    goto LABEL_451;
                  }

                  *(*&v302[32] + 4 * v203) = v202;
                  v202 = (v202 + 1);
                }

                while (a5 != v202);
              }

              v204 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v201);
              LODWORD(v28) = v205;
              v206 = (*(*v201 + 16))(v201);
              if (v206)
              {
                a5 = *&v302[16];
                v207 = *&v302[32];
                v28 = v28;
                v208 = v206;
                v209 = v28;
                while (v209)
                {
                  v6 = *v204;
                  if (a5 <= v6)
                  {
                    goto LABEL_453;
                  }

                  *v204++ = *(v207 + 4 * v6);
                  --v209;
                  if (!--v208)
                  {
                    goto LABEL_407;
                  }
                }

                goto LABEL_452;
              }

LABEL_407:
              if (*v302 && *&v302[32])
              {
                (*(**v302 + 40))(*v302, *&v302[32]);
              }
            }

            re::GeomMesh::operator=(a3, buf);
            re::GeomMesh::~GeomMesh(buf);
            switch(v285[12])
            {
              case 0:
                goto LABEL_417;
              case 2:
                re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v285[16]);
LABEL_417:
                v197 = *(a3 + 16);
LABEL_418:
                if (v197 != *(v13 + 16) && HasSkinningData)
                {
                  re::remapSkinningAttributes(a3, v13, a4);
                }

                *a6 = 1;
                re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v229);
                return;
              case 1:
                if (*&v285[16] && v288)
                {
                  (*(**&v285[16] + 40))(*&v285[16], v288);
                }

                goto LABEL_417;
            }

            goto LABEL_463;
          }

          if (BYTE4(v303[1]) == 1)
          {
            if (v303[2] && v304)
            {
              (*(*v303[2] + 40))(v303[2], v304);
            }

            goto LABEL_397;
          }

LABEL_462:
          re::internal::assertLog(4, v200, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash();
          __break(1u);
LABEL_463:
          re::internal::assertLog(4, v210, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash();
          __break(1u);
          goto LABEL_464;
        case 1:
          if (*&v285[16] && v288)
          {
            (*(**&v285[16] + 40))(*&v285[16], v288);
          }

          goto LABEL_385;
      }

LABEL_461:
      re::internal::assertLog(4, v196, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash();
      __break(1u);
      goto LABEL_462;
    }

    if (BYTE4(v303[1]) == 1)
    {
      if (v303[2] && v304)
      {
        (*(*v303[2] + 40))(v303[2], v304);
      }

      goto LABEL_375;
    }

LABEL_460:
    re::internal::assertLog(4, v195, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
    goto LABEL_461;
  }

  if (!v54 || (*(v28 + 8) & 1) != 0 || (v126 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal")) == 0 || *(v126 + 16) != 3)
  {
LABEL_283:
    v303[4] = 0;
    memset(v303, 0, 28);
    *&v287[2] = 0;
    memset(v285, 0, sizeof(v285));
    re::computeVertexFaceConnectivity(a3, v303, v285);
    v130 = re::GeomMesh::addAttribute(a3, "vertexAdjacencies", 4, 3);
    (*(*v130 + 24))(v130, LODWORD(v303[2]));
    v131 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v130);
    v133 = v303[2];
    if (v303[2])
    {
      v134 = v303[4];
      v135 = v132;
      v136 = v132;
      while (v136)
      {
        v137 = *v134++;
        *v131++ = v137;
        --v136;
        if (!--v133)
        {
          goto LABEL_287;
        }
      }

      goto LABEL_429;
    }

LABEL_287:
    v138 = re::GeomMesh::addAttribute(a3, "accumulatedVertexValence", 4, 3);
    (*(*v138 + 24))(v138, *(a3 + 16));
    v139 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v138);
    v141 = *&v285[16];
    if (*&v285[16])
    {
      v142 = *&v287[2];
      v135 = v140;
      v143 = v140;
      while (v143)
      {
        v144 = *v142++;
        *v139++ = v144;
        --v143;
        if (!--v141)
        {
          goto LABEL_291;
        }
      }

      goto LABEL_430;
    }

LABEL_291:
    if (*v285 && *&v287[2])
    {
      (*(**v285 + 40))(*v285, *&v287[2]);
    }

    if (v303[0] && v303[4])
    {
      (*(*v303[0] + 40))(v303[0], v303[4]);
    }

    goto LABEL_297;
  }

  *&v287[2] = 0;
  memset(v285, 0, sizeof(v285));
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  v127 = buf;
  LODWORD(v240) = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v285, &re::GeomAttributeNames::kDefaultNormal);
  re::internal::buildMeshBySplittingFaceVaryingToVertexHelper(a3, v285, buf, a3);
  re::remapIndexMap(buf, a4, v303);
  re::GeomIndexMap::operator=(a4, v303);
  if (!BYTE4(v303[1]))
  {
    goto LABEL_273;
  }

  if (BYTE4(v303[1]) == 2)
  {
    goto LABEL_272;
  }

  if (BYTE4(v303[1]) != 1)
  {
LABEL_464:
    re::internal::assertLog(4, v128, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
    goto LABEL_465;
  }

  if (v303[2])
  {
    v128 = v304;
    if (v304)
    {
      (*(*v303[2] + 40))();
    }
  }

LABEL_273:
  switch(buf[12])
  {
    case 0u:
LABEL_280:
      if (*v285 && *&v287[2])
      {
        (*(**v285 + 40))(v129);
      }

      goto LABEL_283;
    case 2u:
      v129.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((v127 + 16));
      goto LABEL_280;
    case 1u:
      if (v240 && v242)
      {
        (*(*v240 + 40))(v129);
      }

      goto LABEL_280;
  }

LABEL_465:
  re::internal::assertLog(4, v128, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash();
  __break(1u);
}

__n128 std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BC38;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  if (*(a1 + 56) == 1)
  {
    if (v4)
    {
      v6 = *(a1 + 48);
      if (v6 <= v4 - 1)
      {
LABEL_44:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_45:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(a1 + 40) + 4 * (v4 - 1));
    }

    else
    {
      v7 = 0;
      v6 = *(a1 + 48);
    }

    if (v6 <= v4)
    {
      goto LABEL_42;
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 4 * v4);
    if (v5)
    {
      if (v6 <= v5 - 1)
      {
        goto LABEL_45;
      }

      v10 = *(v8 + 4 * (v5 - 1));
    }

    else
    {
      v10 = 0;
    }

    if (v6 <= v5)
    {
      goto LABEL_43;
    }

    if (v9 - v7 != *(v8 + 4 * v5) - v10)
    {
      return 0;
    }

    if (v9 != v7)
    {
      v11 = *(a1 + 16);
      if (v7 <= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v7;
      }

      v13 = *(a1 + 8);
      v14 = *(a1 + 32);
      v15 = *(a1 + 24);
      if (v7 <= v14)
      {
        v16 = *(a1 + 32);
      }

      else
      {
        v16 = v7;
      }

      v17 = (v15 + 4 * v7);
      v18 = v9 - v7;
      v19 = (v13 + 4 * v7);
      v20 = v16 - v7;
      v21 = v12 - v7;
      while (v21)
      {
        if (v11 <= v10)
        {
          goto LABEL_39;
        }

        if (*v19 != *(v13 + 4 * v10))
        {
          return 0;
        }

        if (!v20)
        {
          goto LABEL_40;
        }

        if (v14 <= v10)
        {
          goto LABEL_41;
        }

        if (*v17 != *(v15 + 4 * v10))
        {
          return 0;
        }

        ++v17;
        ++v19;
        --v20;
        --v21;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_38;
    }
  }

LABEL_28:
  if (*(a1 + 64))
  {
    v22 = 0;
    while (1)
    {
      v23 = *(a1 + 72);
      if (*(v23 + 16) <= v22)
      {
        break;
      }

      result = re::GeomAttribute::areValuesAtIndexEqual(*(*(v23 + 32) + 8 * v22), v4, v5);
      if (result)
      {
        if (++v22 < *(a1 + 64))
        {
          continue;
        }
      }

      return result;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  return 1;
}

uint64_t std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::loadGeomSceneFromFile(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v32, 4502, 0);
  v23 = 0;
  v22 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0x7FFFFFFFLL;
  if (re::convertMDLAssetToGeomScene(a1, &v22, (a2 + 10)))
  {
    re::DynamicArray<re::GeomModelWithLods>::DynamicArray(&v10, &v22);
    re::DynamicArray<re::GeomInstance>::DynamicArray(&v13 + 8, &v25 + 1);
    re::DynamicArray<re::GeomSkeleton>::DynamicArray(&v16 + 8, &v28[1]);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(&v19 + 8, &v30[8]);
    *(a3 + 16) = v11;
    v6 = v14;
    *(a3 + 40) = v13;
    *(a3 + 56) = v6;
    v7 = v17;
    *(a3 + 80) = v16;
    *(a3 + 96) = v7;
    v8 = v20;
    *(a3 + 120) = v19;
    *a3 = 1;
    *(a3 + 8) = v10;
    v10 = 0;
    v11 = 0u;
    ++v12;
    *(a3 + 32) = 1;
    v13 = 0u;
    v14 = 0u;
    ++v15;
    *(a3 + 72) = 1;
    v16 = 0u;
    v17 = 0u;
    ++v18;
    *(a3 + 112) = 1;
    *(a3 + 136) = v8;
    v19 = 0u;
    v20 = 0u;
    *(a3 + 152) = v21;
    v21 = xmmword_1E3058120;
    *(a3 + 168) = 1;
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v19 + 1);
    re::DynamicArray<re::GeomSkeleton>::deinit(&v16 + 8);
    if (*(&v13 + 1))
    {
      if (v16)
      {
        (*(**(&v13 + 1) + 40))();
      }

      *&v16 = 0;
      v14 = 0uLL;
      *(&v13 + 1) = 0;
      ++v15;
    }

    re::DynamicArray<re::GeomModelWithLods>::deinit(&v10);
  }

  else
  {
    v9 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v9;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v30[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v28[1]);
  if (*(&v25 + 1))
  {
    if (v28[0])
    {
      (*(**(&v25 + 1) + 40))();
    }

    v28[0] = 0;
    v26 = 0uLL;
    *(&v25 + 1) = 0;
    ++v27;
  }

  re::DynamicArray<re::GeomModelWithLods>::deinit(&v22);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v32);
}

void re::makeMeshAssetDataFromGeomScene(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v314 = *MEMORY[0x1E69E9840];
  v4 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v208, 4506, 0);
  v190 = 0;
  v191 = 0uLL;
  v192 = 0;
  v202 = 0;
  v203 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0uLL;
  v206 = 0;
  v5 = 0uLL;
  v193 = 0u;
  v194 = 0u;
  v196 = 0u;
  v197 = 0u;
  v195 = 0;
  v198 = 0;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v181 = a1;
  v6 = a1[12];
  if (v6)
  {
    v4 = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(&v196 + 1, a1[12]);
    v5 = 0uLL;
  }

  v188 = 0;
  v187[0] = v5;
  v187[1] = v5;
  v189 = 0x7FFFFFFFLL;
  if ((2 * v6) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * v6;
  }

  v8 = a1[12];
  if (v8)
  {
    v9 = a1[14] + 64;
    v10 = 160 * v8;
    do
    {
      re::UniqueNameGenerator::uniqueName(v187, *(v9 - 56), "MeshSkeleton", v216);
      re::FixedArray<re::StringID>::FixedArray(&v216[1], v9 - 48);
      re::FixedArray<unsigned int>::FixedArray(&v217 + 1, v9 - 24);
      re::FixedArray<re::GenericSRT<float>>::FixedArray(v219, v9);
      re::FixedArray<re::Matrix4x4<float>>::FixedArray(&v219[24], v9 + 24);
      re::DynamicArray<re::MeshAssetSkeleton>::add(&v196 + 1, v216);
      if (*&v219[24])
      {
        if (*&v219[32])
        {
          (*(**&v219[24] + 40))();
          *&v219[32] = 0;
          *&v219[40] = 0;
        }

        *&v219[24] = 0;
      }

      if (*v219)
      {
        if (*&v219[8])
        {
          (*(**v219 + 40))();
          *&v219[8] = 0;
          *&v219[16] = 0;
        }

        *v219 = 0;
      }

      if (*(&v217 + 1))
      {
        if (v218)
        {
          (*(**(&v217 + 1) + 40))();
          v218 = 0uLL;
        }

        *(&v217 + 1) = 0;
      }

      v11 = re::FixedArray<re::StringID>::deinit(&v216[1]);
      if (v216[0])
      {
        if (v216[0])
        {
        }
      }

      v9 += 160;
      v10 -= 160;
    }

    while (v10);
  }

  v12 = v273;
  v13 = v181[2];
  re::DynamicArray<re::MeshAssetModel>::resize(&v190, v13);
  v185 = 0;
  memset(v184, 0, sizeof(v184));
  v186 = 0x7FFFFFFFLL;
  if ((2 * v13) <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v13;
  }

  v162 = v13;
  if (v13)
  {
    v16 = 0;
    v17 = &v243[8];
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v171 = vnegq_f32(v18);
    v19 = 248;
    do
    {
      v20 = v181[2];
      if (v20 <= v16)
      {
        goto LABEL_318;
      }

      v20 = *(&v191 + 1);
      if (*(&v191 + 1) <= v16)
      {
        goto LABEL_319;
      }

      v164 = v16;
      v21 = (v181[4] + 152 * v16);
      v161 = v193;
      v182[0] = *a2;
      *(v182 + 7) = *(a2 + 7);
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v183, (a2 + 2));
      v22 = v21[1];
      if (v22)
      {
        v23 = v22 >> 1;
      }

      else
      {
        v23 = v22 >> 1;
      }

      if (v23)
      {
        v24 = re::Hash<re::DynamicString>::operator()(v216, v21);
        re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v216, (a2 + 8), v21, v24);
        if (HIDWORD(v216[0]) != 0x7FFFFFFF)
        {
          v25 = re::Hash<re::DynamicString>::operator()(v216, v21);
          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v216, (a2 + 8), v21, v25);
          v26 = a2[10] + 112 * HIDWORD(v216[0]);
          v27 = *(v26 + 47);
          v182[0] = *(v26 + 40);
          *(v182 + 7) = v27;
          re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v183, v26 + 56);
        }
      }

      HasSkinningData = v21[6];
      *v273 = 0;
      *&v273[8] = &str_67;
      *&v273[16] = v171;
      *&v29 = 0x7F0000007FLL;
      *(&v29 + 1) = 0x7F0000007FLL;
      *&v273[32] = v29;
      v306 = 0;
      v274 = 0u;
      v275 = 0u;
      v276 = 0u;
      v277 = 0u;
      memset(v278, 0, 28);
      v279 = 0u;
      v280 = 0u;
      v281 = 0;
      v282 = 0u;
      v283 = 0u;
      v284 = 0;
      v285 = 0u;
      v286 = 0u;
      v287 = 0;
      v290 = 0;
      v288 = 0u;
      v289 = 0u;
      v291 = 0u;
      v292 = 0u;
      v293 = 0;
      v294 = 0u;
      v295 = 0u;
      v296 = 0;
      v297 = 0u;
      v298 = 0u;
      v299 = 0;
      v300 = 0u;
      v301 = 0u;
      v302 = 0;
      v303 = 0u;
      v304 = 0u;
      v305 = 0;
      if (v21[1])
      {
        v30 = v21[2];
      }

      else
      {
        v30 = v21 + 9;
      }

      v31 = re::UniqueNameGenerator::uniqueName(v184, v30, "MeshModel", v243);
      v33 = *v243;
      *&v243[8] = &str_67;
      *v243 = 0;
      v34 = v273[0];
      v20 = *&v273[8];
      *v273 = v33;
      if (v34)
      {
        if (v243[0])
        {
          if (v243[0])
          {
          }
        }
      }

      v167 = HasSkinningData;
      v35 = (HasSkinningData - 1);
      if (HasSkinningData == 1)
      {
        if (!v21[6])
        {
          goto LABEL_324;
        }

        v36 = *(v21[8] + 48);
        goto LABEL_101;
      }

      if (HasSkinningData)
      {
        re::DynamicArray<re::MeshLodLevelInfo>::resize(&v288 + 1, HasSkinningData);
        v12 = 0;
        v36 = 0;
        do
        {
          v20 = v21[6];
          if (v20 <= v12)
          {
            goto LABEL_299;
          }

          v20 = *(v21[8] + 248 * v12 + 48);
          *&v271[32] = 0;
          memset(v271, 0, 28);
          re::DynamicArray<double>::resize(v271, v20);
          if (v20)
          {
            v37 = 0;
            v19 = *&v271[16];
            v38 = *&v271[32];
            v39 = v36;
            while (v19 != v37)
            {
              *(v38 + 8 * v37++) = v39++;
              if (v20 == v37)
              {
                goto LABEL_55;
              }
            }

            *&v212[0] = 0;
            memset(v243, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v269 = 136315906;
            *&v269[4] = "operator[]";
            *&v269[12] = 1024;
            *&v269[14] = 789;
            *&v269[18] = 2048;
            *&v269[20] = v19;
            *&v269[28] = 2048;
            *&v269[30] = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_289;
          }

LABEL_55:
          v19 = *(&v289 + 1);
          if (*(&v289 + 1) <= v12)
          {
            goto LABEL_300;
          }

          re::DynamicArray<unsigned long long>::operator=(v291 + 48 * v12 + 8, v271);
          if (*v271)
          {
            v32 = *&v271[32];
            if (*&v271[32])
            {
              (*(**v271 + 40))();
            }
          }

          v36 += v20;
          ++v12;
          v19 = 248;
        }

        while (v12 != HasSkinningData);
        v20 = v21[16];
        if (v35 != v20)
        {
          goto LABEL_83;
        }

        if (v20 >= 2)
        {
          v40 = v21[18];
          v41 = *v40;
          if (*v40 < v40[1])
          {
            goto LABEL_83;
          }

          v129 = 0;
          do
          {
            if (v20 - 2 == v129)
            {
              goto LABEL_64;
            }

            v130 = &v40[v129++];
          }

          while (v130[1] >= v130[2]);
          if (v129 + 1 < v20)
          {
LABEL_83:
            v48 = 0;
            v49 = 0;
            v20 = *(&v289 + 1);
            v46 = v291;
            while (1)
            {
              v12 = v49;
              if (v20 <= v49)
              {
                goto LABEL_301;
              }

              *(v46 + 48 * v49++) = (1.0 / (v48 + 2)) * (1.0 / (v48 + 2));
              v48 = (v12 + 1);
              if (v48 >= HasSkinningData)
              {
                goto LABEL_86;
              }
            }
          }
        }

        if (v20)
        {
          v40 = v21[18];
          v41 = *v40;
LABEL_64:
          v42 = v41 >= 0.0 && v41 <= 1.0;
          if (!v42)
          {
            goto LABEL_83;
          }

          v43 = 0;
          do
          {
            if (v20 - 1 == v43)
            {
              goto LABEL_76;
            }

            v44 = v40[++v43];
          }

          while (v44 >= 0.0 && v44 <= 1.0);
          if (v43 < v20)
          {
            goto LABEL_83;
          }

LABEL_76:
          v46 = v291;
          if (v20)
          {
            v47 = 0;
            v19 = *(&v289 + 1);
            while (1)
            {
              v12 = v47;
              if (v20 <= v47)
              {
                break;
              }

              if (v19 <= v47)
              {
                goto LABEL_323;
              }

              *(v46 + 48 * v47) = v40[v47];
              ++v47;
              if (v20 <= (v12 + 1))
              {
                goto LABEL_256;
              }
            }

LABEL_322:
            *v269 = 0;
            memset(v243, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v271 = 136315906;
            *&v271[4] = "operator[]";
            *&v271[12] = 1024;
            *&v271[14] = 797;
            *&v271[18] = 2048;
            *&v271[20] = v12;
            *&v271[28] = 2048;
            *&v271[30] = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_323:
            *v269 = 0;
            memset(v243, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v271 = 136315906;
            *&v271[4] = "operator[]";
            *&v271[12] = 1024;
            *&v271[14] = 789;
            *&v271[18] = 2048;
            *&v271[20] = v12;
            *&v271[28] = 2048;
            *&v271[30] = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_324:
            *v269 = 0;
            memset(v243, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v271 = 136315906;
            *&v271[4] = "operator[]";
            *&v271[12] = 1024;
            *&v271[14] = 797;
            *&v271[18] = 2048;
            *&v271[20] = 0;
            *&v271[28] = 2048;
            *&v271[30] = 0;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_325:
            re::internal::assertLog(4, v111, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
LABEL_326:
            re::internal::assertLog(4, v111, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash();
            __break(1u);
LABEL_327:
            re::internal::assertLog(4, v100, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash();
            __break(1u);
LABEL_328:
            re::internal::assertLog(4, v100, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash();
            __break(1u);
          }
        }

        else
        {
          v46 = v291;
        }

        v19 = *(&v289 + 1);
LABEL_256:
        *(v46 + 48 * v19 - 48) = 0;
LABEL_86:
        v20 = v21[11];
        if (v35 != v20)
        {
          goto LABEL_95;
        }

        v50 = v20 - 2;
        if (v20 >= 2)
        {
          v53 = v21[13];
          if (*v53 > v53[1])
          {
            goto LABEL_95;
          }

          v131 = v53 + 2;
          v132 = -1;
          do
          {
            if (!v50)
            {
              goto LABEL_88;
            }

            v133 = *(v131 - 1);
            v134 = *v131++;
            --v132;
            --v50;
          }

          while (v133 <= v134);
          if (-v132 < v20)
          {
LABEL_95:
            v54 = 0;
            v55 = 0;
            v35 = *(&v289 + 1);
            v56 = v291;
            while (1)
            {
              v20 = v55;
              if (v35 <= v55)
              {
                goto LABEL_306;
              }

              if (v54 > 4)
              {
                v57 = ((100 * v54) - 300);
              }

              else
              {
                v57 = __const__ZN2re29computeDefaultLodMaxViewDepthEjj_kViewDepthTable[v54];
              }

              *(v56 + 48 * v55++ + 4) = v57;
              v54 = (v20 + 1);
              if (v54 >= HasSkinningData)
              {
                goto LABEL_101;
              }
            }
          }
        }

LABEL_88:
        v12 = *(&v289 + 1);
        v51 = 0;
        v52 = v21[13];
        do
        {
          HasSkinningData = v51;
          if (v20 <= v51)
          {
            goto LABEL_316;
          }

          if (v12 <= v51)
          {
            goto LABEL_317;
          }

          *(v46 + 48 * v51 + 4) = *(v52 + 4 * v51);
          ++v51;
        }

        while (v35 > (HasSkinningData + 1));
        *(v46 + 48 * v12 - 44) = 2139095040;
LABEL_101:
        if (!v21[6])
        {
          goto LABEL_320;
        }

        v168 = v36;
        v35 = v21[8];
        v12 = *(v35 + 48);
        if (v12)
        {
          v20 = 0;
          v58.i64[0] = 0x7F0000007FLL;
          v58.i64[1] = 0x7F0000007FLL;
          v59 = vnegq_f32(v58);
          v19 = 1;
          while (1)
          {
            HasSkinningData = *(v35 + 48);
            if (HasSkinningData <= v20)
            {
              goto LABEL_298;
            }

            v174 = v59;
            v177 = v58;
            v60 = *(v35 + 64) + 736 * v20;
            HasSkinningData = re::meshHasSkinningData(v60, v32);
            re::computeAABB(v60, v269);
            if (HasSkinningData)
            {
              v61 = re::internal::GeomAttributeManager::attributeByName((v60 + 64), "skinnedAnimationGeometryBindTransform");
              v62 = re::GeomAttribute::accessValues<int>(v61);
              v20 = v63;
              if (!v63)
              {
                goto LABEL_302;
              }

              if (v63 == 1)
              {
                goto LABEL_303;
              }

              if (v63 <= 2)
              {
                goto LABEL_304;
              }

              if (v63 == 3)
              {
                goto LABEL_305;
              }

              v64 = v62[1];
              v65 = v62[2];
              v66 = v62[3];
              *v243 = *v62;
              *&v243[16] = v64;
              *&v243[32] = v65;
              *&v243[48] = v66;
              re::AABB::transform(v269, v243, v271);
              v67 = v174;
              v67.i32[3] = 0;
              v68 = *v271;
              v69 = *&v271[16];
            }

            else
            {
              v67 = v174;
              v67.i32[3] = 0;
              v68 = *v269;
              v69 = *&v269[16];
            }

            v68.i32[3] = 0;
            v59 = vminnmq_f32(v67, v68);
            v70 = v177;
            v70.i32[3] = 0;
            v69.i32[3] = 0;
            v58 = vmaxnmq_f32(v70, v69);
            v20 = v19;
            v42 = v12 > v19;
            v19 = (v19 + 1);
            if (!v42)
            {
              goto LABEL_115;
            }
          }
        }

        v58.i64[0] = 0x7F0000007FLL;
        v58.i64[1] = 0x7F0000007FLL;
        v59 = vnegq_f32(v58);
LABEL_115:
        *&v273[16] = v59;
        *&v273[32] = v58;
        if (!v21[6])
        {
          goto LABEL_321;
        }

        v71 = v21[8];
        v72 = *(v71 + 48);
        v165 = v21;
        if (v72)
        {
          LODWORD(v73) = 0;
          v74 = 736 * v72;
          v75 = (*(v71 + 64) + 16);
          do
          {
            v73 = (*v75 + v73);
            v75 += 184;
            v74 -= 736;
          }

          while (v74);
        }

        else
        {
          v73 = 0;
        }

        *&v271[32] = 0;
        memset(v271, 0, 28);
        re::DynamicArray<re::Vector3<float>>::resize(v271, v73);
        v77 = *(v71 + 48);
        if (v77)
        {
          v35 = 0;
          v20 = *(v71 + 64);
          v178 = v20 + 736 * v77;
          do
          {
            v19 = re::meshHasSkinningData(v20, v76);
            v78 = *(v20 + 16);
            HasSkinningData = re::GeomMesh::accessVertexPositions(v20);
            v12 = v76;
            if (v19)
            {
              v79 = re::internal::GeomAttributeManager::attributeByName((v20 + 64), "skinnedAnimationGeometryBindTransform");
              v80 = re::GeomAttribute::accessValues<int>(v79);
              v19 = v76;
              if (!v76)
              {
                goto LABEL_312;
              }

              if (v76 == 1)
              {
                goto LABEL_313;
              }

              if (v76 <= 2)
              {
                goto LABEL_314;
              }

              if (v76 == 3)
              {
                goto LABEL_315;
              }

              if (v78)
              {
                v81 = *v80;
                v82 = v80[1];
                v83 = v80[2];
                v84 = v80[3];
                v12 = v12;
                v85 = v12;
                while (v85)
                {
                  v19 = v35;
                  v36 = *&v271[16];
                  if (*&v271[16] <= v35)
                  {
                    goto LABEL_293;
                  }

                  v35 = (v35 + 1);
                  v86 = *HasSkinningData;
                  HasSkinningData += 16;
                  v87 = vaddq_f32(v84, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, v86.f32[0]), v82, *v86.f32, 1), v83, v86, 2));
                  *(*&v271[32] + 16 * v19) = vdivq_f32(v87, vdupq_laneq_s32(v87, 3));
                  --v85;
                  if (!--v78)
                  {
                    goto LABEL_139;
                  }
                }

                goto LABEL_292;
              }
            }

            else if (v78)
            {
              v12 = v76;
              v88 = v76;
              while (v88)
              {
                v19 = v35;
                v36 = *&v271[16];
                if (*&v271[16] <= v35)
                {
                  goto LABEL_291;
                }

                v35 = (v35 + 1);
                v89 = *HasSkinningData;
                HasSkinningData += 16;
                *(*&v271[32] + 16 * v19) = v89;
                --v88;
                if (!--v78)
                {
                  goto LABEL_139;
                }
              }

              goto LABEL_290;
            }

LABEL_139:
            v20 += 736;
          }

          while (v20 != v178);
        }

        MEMORY[0x1E69070C0](*&v271[16], *&v271[32]);
        v94 = *v271;
        if (*v271 && *&v271[32])
        {
          v175 = v91;
          v179 = v90;
          v172 = v92;
          v169 = v93;
          v94 = (*(**v271 + 40))();
          v93 = v169;
          v92 = v172;
          v91 = v175;
          v90 = v179;
        }

        v274 = v90;
        v275 = v91;
        v276 = v92;
        v277 = v93;
        v19 = 248;
        HasSkinningData = v165;
        if (v283 < v168)
        {
          v94 = re::DynamicArray<re::MeshAssetPart>::setCapacity(&v282 + 1, v168);
        }

        v213 = 0;
        memset(v212, 0, sizeof(v212));
        v214 = 0x7FFFFFFFLL;
        v210 = 0;
        memset(v209, 0, sizeof(v209));
        if ((2 * v168) <= 1)
        {
          v95 = 1;
        }

        else
        {
          v95 = 2 * v168;
        }

        v211 = 0x7FFFFFFFLL;
        if (v167)
        {
          v20 = 0;
          while (1)
          {
            v35 = *(HasSkinningData + 48);
            if (v35 <= v20)
            {
              goto LABEL_311;
            }

            v166 = v20;
            v36 = *(HasSkinningData + 64) + 248 * v20;
            v96 = *(v36 + 48);
            if (v96)
            {
              break;
            }

LABEL_222:
            v20 = v166 + 1;
            v19 = 248;
            HasSkinningData = v165;
            if (v166 + 1 == v167)
            {
              goto LABEL_223;
            }
          }

          v19 = 0;
          v176 = *(v36 + 112);
          v173 = *(v36 + 160);
          v170 = v96 * v20;
          v180 = *(v36 + 224);
          while (1)
          {
            v35 = *(v36 + 48);
            if (v35 <= v19)
            {
              break;
            }

            v12 = *(v36 + 64) + 736 * v19;
            if (*(v12 + 40))
            {
              v249 = 0u;
              *&v243[88] = 0;
              memset(v243, 0, 80);
              v243[44] = 1;
              *&v243[52] = 1;
              *&v243[56] = -1;
              *&v243[80] = &str_67;
              *&v243[96] = v171;
              *&v97 = 0x7F0000007FLL;
              *(&v97 + 1) = 0x7F0000007FLL;
              *&v243[112] = v97;
              *&v248[16] = 0x7FFFFFFF00000000;
              *v248 = 0u;
              v247 = 0u;
              *&v243[128] = 0u;
              v244 = 0u;
              v245 = 0u;
              memset(v246, 0, sizeof(v246));
              re::DynamicArray<re::MeshAssetPart>::add((&v282 + 8), v243);
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v247);
              if (v243[72])
              {
                if (v243[72])
                {
                }
              }

              *&v243[80] = &str_67;
              *&v243[72] = 0;
              re::DynamicArray<re::MeshAssetBuffer>::deinit(v243);
              HasSkinningData = re::meshHasSkinningData(v12, v99);
              if (HasSkinningData)
              {
                v100 = v168;
                if (v280 < v168)
                {
                  re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(&v279 + 1, v168);
                }

                v20 = v19 + v170;
                for (i = *(&v280 + 1); i <= v20; ++i)
                {
                  *v243 = 0xFFFFFFFFLL;
                  memset(&v243[8], 0, 136);
                  v102 = re::DynamicArray<re::MeshAssetSkinningData>::add((&v279 + 8), v243);
                  if (*&v243[56])
                  {
                    if (*&v243[64])
                    {
                      (*(**&v243[56] + 40))(v102);
                      *&v243[64] = 0uLL;
                    }

                    *&v243[56] = 0;
                  }

                  if (*&v243[32])
                  {
                    if (*&v243[40])
                    {
                      (*(**&v243[32] + 40))(v102);
                      *&v243[40] = 0;
                      *&v243[48] = 0;
                    }

                    *&v243[32] = 0;
                  }

                  if (*&v243[8] && *&v243[16])
                  {
                    (*(**&v243[8] + 40))(v102);
                  }
                }
              }

              if (v180 == v96)
              {
                v35 = *(v36 + 224);
                if (v35 <= v19)
                {
                  goto LABEL_295;
                }

                v20 = *(v36 + 240) + 48 * v19;
              }

              else
              {
                v20 = v212;
              }

              if (v176)
              {
                v35 = *(v36 + 136);
                if (v35 <= v19)
                {
                  goto LABEL_296;
                }

                v103 = *(v36 + 152) + 80 * v19;
                *v271 = *v103;
                *&v271[8] = *(v103 + 8);
                v271[12] = *(v103 + 12);
                if (v271[12] == 2)
                {
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v271[16], v103 + 16);
                }

                else if (v271[12] == 1)
                {
                  re::DynamicArray<float>::DynamicArray(&v271[16], (v103 + 16));
                }

                else
                {
                  if (v271[12])
                  {
                    goto LABEL_327;
                  }

                  *&v271[16] = *(v103 + 16);
                }
              }

              else
              {
                v104 = 0;
                v105 = *(v12 + 16);
                *v271 = 0xFFFFFFFF00000000;
                *&v271[8] = -1;
                v271[12] = 0;
                if (v105 - 1 <= 0xFFFFFFFD)
                {
                  *&v271[8] = v105 - 1;
                  v104 = v105;
                  *v271 = v105;
                }

                *&v271[16] = v104;
              }

              if (v173)
              {
                v35 = *(v36 + 184);
                if (v35 <= v19)
                {
                  goto LABEL_297;
                }

                v106 = *(v36 + 200) + 80 * v19;
                *v269 = *v106;
                *&v269[8] = *(v106 + 8);
                v269[12] = *(v106 + 12);
                if (v269[12] == 2)
                {
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v269[16], v106 + 16);
                }

                else if (v269[12] == 1)
                {
                  re::DynamicArray<float>::DynamicArray(&v269[16], (v106 + 16));
                }

                else
                {
                  if (v269[12])
                  {
                    goto LABEL_328;
                  }

                  *&v269[16] = *(v106 + 16);
                }
              }

              else
              {
                v107 = 0;
                v108 = *(v12 + 40);
                *v269 = 0xFFFFFFFF00000000;
                *&v269[8] = -1;
                v269[12] = 0;
                if (v108 - 1 <= 0xFFFFFFFD)
                {
                  *&v269[8] = v108 - 1;
                  v107 = v108;
                  *v269 = v108;
                }

                *&v269[16] = v107;
              }

              v35 = *(v36 + 88);
              if (v35)
              {
                if (v35 <= v19)
                {
                  goto LABEL_294;
                }

                v109 = *(*(v36 + 104) + 4 * v19);
              }

              else
              {
                LOWORD(v109) = 0;
              }

              v110 = v282 + 144 * *(&v280 + 1) - 144;
              if (!HasSkinningData)
              {
                v110 = 0;
              }

              if (v269[12])
              {
                if (v269[12] == 2)
                {
                  v112.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v269[16]);
                }

                else
                {
                  if (v269[12] != 1)
                  {
                    goto LABEL_325;
                  }

                  if (*&v269[16])
                  {
                    v111 = v270;
                    if (v270)
                    {
                      (*(**&v269[16] + 40))();
                    }
                  }
                }
              }

              if (v271[12])
              {
                if (v271[12] == 2)
                {
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v271[16]);
                }

                else
                {
                  if (v271[12] != 1)
                  {
                    goto LABEL_326;
                  }

                  if (*&v271[16] && v272)
                  {
                    (*(**&v271[16] + 40))(v112);
                  }
                }
              }
            }

            if (++v19 == v96)
            {
              goto LABEL_222;
            }
          }

LABEL_289:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 797;
          *&v271[18] = 2048;
          *&v271[20] = v19;
          *&v271[28] = 2048;
          *&v271[30] = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_290:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 613;
          *&v269[18] = 2048;
          *&v269[20] = v12;
          *&v269[28] = 2048;
          *&v269[30] = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_291:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 789;
          *&v269[18] = 2048;
          *&v269[20] = v19;
          *&v269[28] = 2048;
          *&v269[30] = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_292:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 613;
          *&v269[18] = 2048;
          *&v269[20] = v12;
          *&v269[28] = 2048;
          *&v269[30] = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_293:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 789;
          *&v269[18] = 2048;
          *&v269[20] = v19;
          *&v269[28] = 2048;
          *&v269[30] = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_294:
          v215 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v307 = 136315906;
          *&v307[4] = "operator[]";
          v308 = 1024;
          v309 = 797;
          v310 = 2048;
          v311 = v19;
          v312 = 2048;
          v313 = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_295:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 797;
          *&v271[18] = 2048;
          *&v271[20] = v19;
          *&v271[28] = 2048;
          *&v271[30] = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_296:
          *v307 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 797;
          *&v269[18] = 2048;
          *&v269[20] = v19;
          *&v269[28] = 2048;
          *&v269[30] = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_297:
          v215 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v307 = 136315906;
          *&v307[4] = "operator[]";
          v308 = 1024;
          v309 = 797;
          v310 = 2048;
          v311 = v19;
          v312 = 2048;
          v313 = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_298:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 797;
          *&v271[18] = 2048;
          *&v271[20] = v20;
          *&v271[28] = 2048;
          *&v271[30] = HasSkinningData;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_299:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 797;
          *&v271[18] = 2048;
          *&v271[20] = v12;
          *&v271[28] = 2048;
          *&v271[30] = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_300:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v269 = 136315906;
          *&v269[4] = "operator[]";
          *&v269[12] = 1024;
          *&v269[14] = 789;
          *&v269[18] = 2048;
          *&v269[20] = v12;
          *&v269[28] = 2048;
          *&v269[30] = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_301:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 789;
          *&v271[18] = 2048;
          *&v271[20] = v12;
          *&v271[28] = 2048;
          *&v271[30] = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_302:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 613;
          *&v271[18] = 2048;
          *&v271[20] = 0;
          *&v271[28] = 2048;
          *&v271[30] = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_303:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 613;
          *&v271[18] = 2048;
          *&v271[20] = 1;
          *&v271[28] = 2048;
          *&v271[30] = 1;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_304:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 613;
          *&v271[18] = 2048;
          *&v271[20] = 2;
          *&v271[28] = 2048;
          *&v271[30] = v20 & 3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_305:
          *&v212[0] = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 613;
          *&v271[18] = 2048;
          *&v271[20] = 3;
          *&v271[28] = 2048;
          *&v271[30] = 3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_306:
          *v269 = 0;
          memset(v243, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 789;
          *&v271[18] = 2048;
          *&v271[20] = v20;
          *&v271[28] = 2048;
          *&v271[30] = v35;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_307;
        }

LABEL_223:
        *v243 = *v273;
        *&v273[8] = &str_67;
        *v273 = 0;
        *&v243[48] = v274;
        *&v243[64] = v275;
        *&v243[80] = v276;
        *&v243[96] = v277;
        *&v243[16] = *&v273[16];
        *&v243[32] = *&v273[32];
        *&v243[112] = v278[0];
        memset(v278, 0, 24);
        ++LODWORD(v278[3]);
        v244 = v279;
        v245 = v280;
        v279 = 0u;
        v280 = 0u;
        *&v246[8] = v282;
        v282 = 0u;
        v247 = v283;
        v12 = v273;
        v283 = 0u;
        ++v281;
        ++v284;
        *&v248[8] = v285;
        v249 = v286;
        v285 = 0u;
        v286 = 0u;
        ++v287;
        v251 = v288;
        v252 = v289;
        v288 = 0u;
        v289 = 0u;
        ++v290;
        v254 = v291;
        v255 = v292;
        v291 = 0u;
        v292 = 0u;
        ++v293;
        v113 = v294;
        v114 = v295;
        v294 = 0u;
        v295 = 0u;
        v257 = v113;
        v258 = v114;
        ++v296;
        v260 = v297;
        v261 = v298;
        v297 = 0u;
        v298 = 0u;
        ++v299;
        v115 = v300;
        v116 = v301;
        v300 = 0u;
        v301 = 0u;
        ++v302;
        v265 = v303;
        v266 = v304;
        v303 = 0u;
        v304 = 0u;
        v268 = v306;
        v306 = 0;
        ++v305;
        LOBYTE(v216[0]) = 1;
        v216[1] = *v243;
        *&v243[8] = &str_67;
        *v243 = 0;
        v217 = *&v273[16];
        v218 = *&v273[32];
        *&v219[32] = v276;
        v220 = v277;
        *v219 = v274;
        *&v219[16] = v275;
        *v221 = *&v243[112];
        memset(&v243[112], 0, 24);
        *&v221[8] = *&v243[120];
        *&v243[136] = 2;
        LODWORD(v222) = 1;
        v223 = v244;
        v224 = v245;
        v244 = 0u;
        v245 = 0u;
        v226[0] = *&v246[8];
        *&v246[8] = 0u;
        v226[1] = v247;
        v247 = 0u;
        *v246 = 2;
        *v248 = 2;
        v225 = 1;
        v227 = 1;
        v228[0] = *&v248[8];
        v228[1] = v249;
        *&v248[8] = 0u;
        v249 = 0u;
        v250 = 2;
        v229 = 1;
        v230[0] = v251;
        v230[1] = v252;
        v251 = 0u;
        v252 = 0u;
        v253 = 2;
        v231 = 1;
        v232[0] = v254;
        v232[1] = v255;
        v254 = 0u;
        v255 = 0u;
        v256 = 2;
        v233 = 1;
        v234[0] = v257;
        v234[1] = v258;
        v257 = 0u;
        v258 = 0u;
        v259 = 2;
        v235 = 1;
        v236[0] = v260;
        v236[1] = v261;
        v260 = 0u;
        v261 = 0u;
        v262 = 2;
        v237 = 1;
        v238[0] = v115;
        v238[1] = v116;
        memset(v263, 0, sizeof(v263));
        v264 = 2;
        v239 = 1;
        v240[0] = v265;
        v240[1] = v266;
        v265 = 0u;
        v266 = 0u;
        v242 = v268;
        v268 = 0;
        v267 = 2;
        v241 = 1;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v265 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v263 + 8);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v260 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v257 + 8);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v254 + 8);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v251 + 8);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v248[16]);
        re::DynamicArray<re::MeshAssetPart>::deinit(&v246[16]);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v244 + 8);
        v117 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v243[112]);
        if (v243[0])
        {
          if (v243[0])
          {
          }
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v209);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v212);
      }

      else
      {
        LOBYTE(v216[0]) = 0;
        *&v216[1] = 100;
        *(&v216[1] + 1) = re::AssetErrorCategory(void)::instance;
        v217 = *v243;
        v218 = *&v243[16];
      }

      re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v303 + 8);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v300 + 8);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v297 + 8);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v294 + 8);
      re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v291 + 8);
      re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v288 + 8);
      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v285 + 8);
      re::DynamicArray<re::MeshAssetPart>::deinit(&v282 + 8);
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v279 + 8);
      v118 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v278);
      if (v273[0])
      {
        if (v273[0])
        {
        }
      }

      v119 = LOBYTE(v216[0]);
      if (LOBYTE(v216[0]) == 1)
      {
        v120 = (v161 + (v164 << 9));
        re::StringID::operator=(v120, &v216[1]);
        v121 = v218;
        *(v120 + 1) = v217;
        *(v120 + 2) = v121;
        v122 = *v219;
        v123 = *&v219[16];
        v124 = v220;
        *(v120 + 5) = *&v219[32];
        *(v120 + 6) = v124;
        *(v120 + 3) = v122;
        *(v120 + 4) = v123;
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 112, v221);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 152, &v223 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 192, v226 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 232, v228 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 272, v230 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 312, v232 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 352, v234 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 392, v236 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 432, v238 + 8);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 472, v240 + 8);
        re::DynamicArray<re::MeshAssetSkeleton>::operator=(v120 + 232, &v196 + 1);
      }

      else
      {
        *v273 = v216[1];
        re::DynamicString::DynamicString(&v273[16], &v217);
        *a3 = 0;
        *(a3 + 8) = *v273;
        v125 = *&v273[40];
        *(a3 + 24) = *&v273[16];
        *(a3 + 48) = v125;
        *(a3 + 32) = *&v273[24];
      }

      if (LOBYTE(v216[0]) == 1)
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v240 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v238 + 8);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v236 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v234 + 8);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v232 + 8);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(v230 + 8);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(v228 + 8);
        re::DynamicArray<re::MeshAssetPart>::deinit(v226 + 8);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v223 + 8);
        v126 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v221);
        if ((v216[1] & 1) == 0)
        {
          goto LABEL_241;
        }

        if ((v216[1] & 1) == 0)
        {
          goto LABEL_241;
        }

        v127 = *(&v216[1] + 1);
      }

      else
      {
        v128 = v217;
        if (!v217 || (BYTE8(v217) & 1) == 0)
        {
          goto LABEL_241;
        }

        v127 = v218;
      }

      (*(*v128 + 40))(v128, v127);
LABEL_241:
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v183);
      if (!v119)
      {
        goto LABEL_283;
      }

      v16 = v164 + 1;
    }

    while (v164 + 1 != v162);
  }

  v20 = v181[7];
  re::DynamicArray<re::MeshAssetInstance>::resize(&v193 + 8, v20);
  memset(v271, 0, 24);
  if (v20)
  {
    v136 = 0;
    v19 = 0;
    v35 = 0;
    while (1)
    {
      v17 = v181[7];
      if (v17 <= v35)
      {
        break;
      }

      v17 = *(&v194 + 1);
      if (*(&v194 + 1) <= v35)
      {
        goto LABEL_308;
      }

      v137 = (v181[9] + v136);
      v12 = *(v137 + 16);
      v17 = *(&v191 + 1);
      if (*(&v191 + 1) <= v12)
      {
        goto LABEL_309;
      }

      v17 = *&v271[8];
      if (*&v271[8] <= v12)
      {
        goto LABEL_310;
      }

      v138 = v196;
      v139 = *(v193 + (v12 << 9) + 8);
      v140 = *(*&v271[16] + 4 * v12);
      *(*&v271[16] + 4 * v12) = v140 + 1;
      v141 = re::DynamicString::format("%s-%u", v243, v139, v140);
      if (v243[8])
      {
        v12 = *&v243[16];
      }

      else
      {
        v12 = &v243[9];
      }

      *&v216[0] = 0;
      *(&v216[0] + 1) = &str_67;
      v142 = re::StringID::operator=((v138 + v19), v216);
      if (v216[0])
      {
        if (v216[0])
        {
        }
      }

      *(&v216[0] + 1) = &str_67;
      *&v216[0] = 0;
      if (*v243 && (v243[8] & 1) != 0)
      {
        (*(**v243 + 40))();
      }

      v143 = v138 + v19;
      v144 = *v137;
      v145 = v137[1];
      v146 = v137[3];
      *(v143 + 48) = v137[2];
      *(v143 + 64) = v146;
      *(v143 + 16) = v144;
      *(v143 + 32) = v145;
      *(v143 + 80) = *(v137 + 16);
      ++v35;
      v19 += 96;
      v136 += 80;
      if (v20 == v35)
      {
        goto LABEL_273;
      }
    }

LABEL_307:
    *v243 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 797;
    *&v273[18] = 2048;
    *&v273[20] = v35;
    *&v273[28] = 2048;
    *&v273[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_308:
    *v243 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 789;
    *&v273[18] = 2048;
    *&v273[20] = v35;
    *&v273[28] = 2048;
    *&v273[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_309:
    *v269 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 789;
    *&v273[18] = 2048;
    *&v273[20] = v12;
    *&v273[28] = 2048;
    *&v273[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_310:
    *v269 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 468;
    *&v273[18] = 2048;
    *&v273[20] = v12;
    *&v273[28] = 2048;
    *&v273[30] = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_311:
    *v269 = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v271 = 136315906;
    *&v271[4] = "operator[]";
    *&v271[12] = 1024;
    *&v271[14] = 797;
    *&v271[18] = 2048;
    *&v271[20] = v20;
    *&v271[28] = 2048;
    *&v271[30] = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_312:
    *&v212[0] = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v269 = 136315906;
    *&v269[4] = "operator[]";
    *&v269[12] = 1024;
    *&v269[14] = 613;
    *&v269[18] = 2048;
    *&v269[20] = 0;
    *&v269[28] = 2048;
    *&v269[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_313:
    *&v212[0] = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v269 = 136315906;
    *&v269[4] = "operator[]";
    *&v269[12] = 1024;
    *&v269[14] = 613;
    *&v269[18] = 2048;
    *&v269[20] = 1;
    *&v269[28] = 2048;
    *&v269[30] = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_314:
    *&v212[0] = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v269 = 136315906;
    *&v269[4] = "operator[]";
    *&v269[12] = 1024;
    *&v269[14] = 613;
    *&v269[18] = 2048;
    *&v269[20] = 2;
    *&v269[28] = 2048;
    *&v269[30] = v19 & 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_315:
    *&v212[0] = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v269 = 136315906;
    *&v269[4] = "operator[]";
    *&v269[12] = 1024;
    *&v269[14] = 613;
    *&v269[18] = 2048;
    *&v269[20] = 3;
    *&v269[28] = 2048;
    *&v269[30] = 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_316:
    *v269 = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v271 = 136315906;
    *&v271[4] = "operator[]";
    *&v271[12] = 1024;
    *&v271[14] = 797;
    *&v271[18] = 2048;
    *&v271[20] = HasSkinningData;
    *&v271[28] = 2048;
    *&v271[30] = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_317:
    *v269 = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v271 = 136315906;
    *&v271[4] = "operator[]";
    *&v271[12] = 1024;
    *&v271[14] = 789;
    *&v271[18] = 2048;
    *&v271[20] = HasSkinningData;
    *&v271[28] = 2048;
    *&v271[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_318:
    *v243 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    v158 = v16;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 797;
    *&v273[18] = 2048;
    *&v273[20] = v158;
    *&v273[28] = 2048;
    *&v273[30] = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_319:
    *v243 = 0;
    v218 = 0u;
    *v219 = 0u;
    v217 = 0u;
    memset(v216, 0, sizeof(v216));
    v159 = v16;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v273 = 136315906;
    *&v273[4] = "operator[]";
    *&v273[12] = 1024;
    *&v273[14] = 789;
    *&v273[18] = 2048;
    *&v273[20] = v159;
    *&v273[28] = 2048;
    *&v273[30] = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_320:
    *v269 = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v271 = 136315906;
    *&v271[4] = "operator[]";
    *&v271[12] = 1024;
    *&v271[14] = 797;
    *&v271[18] = 2048;
    *&v271[20] = 0;
    *&v271[28] = 2048;
    *&v271[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_321:
    *v269 = 0;
    memset(v243, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v271 = 136315906;
    *&v271[4] = "operator[]";
    *&v271[12] = 1024;
    *&v271[14] = 797;
    *&v271[18] = 2048;
    *&v271[20] = 0;
    *&v271[28] = 2048;
    *&v271[30] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_322;
  }

LABEL_273:
  if (*(&v191 + 1))
  {
    v147 = v193;
    v148 = *(&v191 + 1) << 9;
    do
    {
      re::importModelBlendShapes(v147);
      v147 += 256;
      v148 -= 512;
    }

    while (v148);
  }

  re::MeshAssetData::generateMetaData(&v190);
  v149 = v190;
  v190 = 0;
  ++v192;
  ++v195;
  ++v198;
  v150 = v202;
  ++v201;
  v151 = v203;
  LODWORD(v223) = v203;
  v152 = v204;
  v202 = 0;
  v204 = 0;
  v153 = v207;
  v207 = 0;
  ++v206;
  *a3 = 1;
  *(a3 + 8) = v149;
  *&v216[0] = 0;
  *(a3 + 16) = v191;
  v154 = v194;
  *(a3 + 40) = v193;
  *(a3 + 56) = v154;
  v155 = v197;
  *(a3 + 80) = v196;
  *(a3 + 96) = v155;
  v156 = v200;
  *(a3 + 120) = v199;
  v191 = 0u;
  *(v216 + 8) = 0u;
  DWORD2(v216[1]) = 2;
  *(a3 + 32) = 1;
  v193 = 0u;
  v194 = 0u;
  v217 = 0u;
  v218 = 0u;
  *(a3 + 72) = 1;
  v196 = 0u;
  memset(&v219[8], 0, 32);
  v197 = 0u;
  *v219 = 2;
  *&v219[40] = 2;
  *(a3 + 112) = 1;
  v199 = 0u;
  v200 = 0u;
  *(a3 + 136) = v156;
  v220 = 0u;
  *v221 = 0u;
  *(a3 + 160) = v150;
  v222 = 0;
  *&v221[16] = 2;
  *(a3 + 152) = 1;
  *(a3 + 168) = v151;
  *(a3 + 176) = v152;
  *(&v223 + 1) = 0;
  v157 = v205;
  v205 = 0u;
  *(a3 + 184) = v157;
  v224 = 0u;
  *(a3 + 208) = v153;
  *&v226[0] = 0;
  v225 = 2;
  *(a3 + 200) = 1;
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v223 + 8);
  if (*(&v220 + 1))
  {
    if (v222)
    {
      (*(**(&v220 + 1) + 40))();
    }

    v222 = 0;
    *v221 = 0uLL;
    *(&v220 + 1) = 0;
    ++*&v221[16];
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v219[16]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v217 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v216);
  if (*v271 && *&v271[8])
  {
    (*(**v271 + 40))();
  }

LABEL_283:
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v184);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v187);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v204);
  if (*(&v199 + 1))
  {
    if (v202)
    {
      (*(**(&v199 + 1) + 40))();
    }

    v202 = 0;
    v200 = 0uLL;
    *(&v199 + 1) = 0;
    ++v201;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v196 + 8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v193 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(&v190);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v208);
}