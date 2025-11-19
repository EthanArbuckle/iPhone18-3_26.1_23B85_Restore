uint64_t re::TextManager::sortAndFillInstanceUniforms(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2[10];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2[1];
    v9 = a2[4];
    do
    {
      if (v8 == v7)
      {
        goto LABEL_37;
      }

      if (v9 == v7)
      {
LABEL_38:
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(a2[5] + 8 * v7++) = a2[2] + v6;
      v6 += 144;
    }

    while (v5 != v7);
  }

  v10 = 126 - 2 * __clz(v5);
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,false>(a2[5], (a2[5] + 8 * v5), v11, 1);
  if (a2[10])
  {
    v13 = 0;
    v14 = 0;
    v36 = a1;
    while (1)
    {
      if (a2[4] <= v14)
      {
        goto LABEL_39;
      }

      v15 = *(a2[5] + 8 * v14);
      result = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, v15, *v15 >> 1, &v38);
      if (v15[14])
      {
        break;
      }

      v19 = 0;
LABEL_30:
      v15[14] = v19;
      a1 = v36;
      v13 += v19;
      if (++v14 >= a2[10])
      {
        goto LABEL_33;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(*(a1 + 72) + 40 * HIDWORD(v38) + 24);
    LODWORD(v16) = 0;
    *(&v16 + 1) = *(*(v20 + 8) + 4) - **(v20 + 8);
    v37 = v16;
    v21 = 1;
    v22 = 1;
    while (1)
    {
      result = re::DynamicString::operator[]((a2 + 6), v15[13] + v17);
      v23 = *result;
      if (*result)
      {
        if (v23 == 10)
        {
          *(&v24 + 1) = *(&v37 + 1);
          LODWORD(v24) = 0;
          *(&v24 + 1) = *(&v37 + 1) - **(v20 + 8);
          v37 = v24;
          v22 = 1;
        }

        else
        {
          v25 = v23;
          if (v23 < 0)
          {
            result = __maskrune(v23, 0x40000uLL);
            if (!result)
            {
              goto LABEL_27;
            }
          }

          else
          {
            result = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
            if (!result)
            {
              goto LABEL_27;
            }
          }

          v26 = v25 - 32;
          v27 = *(v20 + 8);
          if (v27[3] <= v26)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_35:
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_36:
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_37:
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_38;
          }

          v28 = (v27[5] + 16 * v26);
          v29 = *v28;
          if ((v22 & 1) == 0)
          {
            v30 = v26 + 95 * v18;
            if (v27[8] <= v30)
            {
              goto LABEL_36;
            }

            v29 = *(v27[10] + 8 * v30);
          }

          *(&v31 + 1) = *(&v37 + 1);
          *&v31 = vadd_f32(*&v37, v29);
          v32 = a3 + 48 * v13 + 48 * v19;
          v37 = v31;
          *(&v31 + 1) = vadd_f32(vsub_f32(v28[1], *v28), *&v31);
          *v32 = v31;
          v33 = *(v20 + 8);
          if (*(v33 + 104) <= v26)
          {
            goto LABEL_35;
          }

          v22 = 0;
          *(v32 + 16) = *(*(v33 + 120) + 16 * v26);
          *(v32 + 32) = v14;
          ++v19;
          v18 = v26;
        }
      }

LABEL_27:
      v17 = v21;
      if (v15[14] <= v21++)
      {
        goto LABEL_30;
      }
    }
  }

  v13 = 0;
LABEL_33:
  a2[11] = v13;
  return result;
}

void re::TextManager::renderTextGroup(re::TextManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, unint64_t a18, char *__s2, uint64_t a20, char *__s1, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, uint64_t a36, uint64_t a37)
{
  a37 = *MEMORY[0x1E69E9840];
  if (*(a7 + 80))
  {
    v38 = *(a7 + 56);
    v39 = (v38 & 1) != 0 ? v38 >> 1 : v38 >> 1;
    if (v39)
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 48 * v39, 0x10uLL, &a31);
      v46 = a31;
      v47 = DWORD2(a31);
      v48 = a32;
      if (a8)
      {
        if (*(a7 + 128) == 1)
        {
          *(a7 + 128) = 0;
          re::TextManager::sortAndFillInstanceUniforms(a1, a7, *(a7 + 120));
        }

        memcpy((v46 + v47), *(a7 + 120), 48 * *(a7 + 88));
      }

      else
      {
        re::TextManager::sortAndFillInstanceUniforms(a1, a7, a31 + DWORD2(a31));
      }

      v49 = *(a4 + 16);
      if (!v49)
      {
LABEL_53:
        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        *(&a23 + 14) = 797;
        WORD1(a24) = 2048;
        *(&a24 + 4) = 0;
        WORD6(a24) = 2048;
        *(&a24 + 14) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_54;
      }

      v50 = *(a3 + 16);
      if (!v50)
      {
LABEL_54:
        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        *(&a23 + 14) = 797;
        WORD1(a24) = 2048;
        *(&a24 + 4) = 0;
        WORD6(a24) = 2048;
        *(&a24 + 14) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_55;
      }

      v51 = 0;
      v52 = *(a4 + 32);
      v53 = *(a3 + 32);
      v54 = *v52;
      v55 = v52[1];
      v56 = v52[2];
      v57 = v52[3];
      v58 = v53[1];
      v59 = v53[2];
      v60 = v53[3];
      a23 = *v53;
      a24 = v58;
      a25 = v59;
      a26 = v60;
      do
      {
        *(&a31 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*(&a23 + v51))), v55, *(&a23 + v51), 1), v56, *(&a23 + v51), 2), v57, *(&a23 + v51), 3);
        v51 += 16;
      }

      while (v51 != 64);
      vars0 = v47;
      vars8 = v48;
      v97 = a9;
      v106 = a32;
      v107 = a31;
      v104 = a34;
      v105 = a33;
      if (*a5 == 2)
      {
        if (v49 == 1)
        {
LABEL_56:
          *&a27 = 0;
          a34 = 0u;
          a35 = 0u;
          a32 = 0u;
          a33 = 0u;
          a31 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(a23) = 136315906;
          *(&a23 + 4) = "operator[]";
          WORD6(a23) = 1024;
          *(&a23 + 14) = 797;
          WORD1(a24) = 2048;
          *(&a24 + 4) = 1;
          WORD6(a24) = 2048;
          *(&a24 + 14) = 1;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_57:
          *&a27 = 0;
          a34 = 0u;
          a35 = 0u;
          a32 = 0u;
          a33 = 0u;
          a31 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(a23) = 136315906;
          *(&a23 + 4) = "operator[]";
          WORD6(a23) = 1024;
          *(&a23 + 14) = 797;
          WORD1(a24) = 2048;
          *(&a24 + 4) = 1;
          WORD6(a24) = 2048;
          *(&a24 + 14) = 1;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (v50 == 1)
        {
          goto LABEL_57;
        }

        v61 = 0;
        v62 = v52[4];
        v63 = v52[5];
        v64 = v52[6];
        v65 = v52[7];
        v66 = v53[5];
        v67 = v53[6];
        v68 = v53[7];
        a23 = v53[4];
        a24 = v66;
        a25 = v67;
        a26 = v68;
        do
        {
          *(&a31 + v61) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&a23 + v61))), v63, *(&a23 + v61), 1), v64, *(&a23 + v61), 2), v65, *(&a23 + v61), 3);
          v61 += 16;
        }

        while (v61 != 64);
        v69 = &off_1E3047000;
        v100 = a31;
        v101 = a32;
        v102 = a33;
        v103 = a34;
      }

      else
      {
        v103 = xmmword_1E30474D0;
        v102 = xmmword_1E30476A0;
        v101 = xmmword_1E3047680;
        v69 = &off_1E3047000;
        v100 = xmmword_1E3047670;
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 0x80uLL, 0x10uLL, &a31);
      v95 = DWORD2(a31);
      v96 = a32;
      v70 = (a31 + DWORD2(a31));
      *v70 = v107;
      v70[1] = v106;
      v70[2] = v105;
      v70[3] = v104;
      v70[4] = v100;
      v70[5] = v101;
      v70[6] = v102;
      v70[7] = v103;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 80 * *(a7 + 80), 0x10uLL, &a31);
      v72 = DWORD2(a31);
      v73 = a32;
      if (*(a7 + 80))
      {
        v74 = 0;
        v75 = HIDWORD(a31) / 0x50uLL;
        v76 = (DWORD2(a31) + a31 + 64);
        while (1)
        {
          v77 = *(a7 + 32);
          if (v77 <= v74)
          {
            break;
          }

          if (v75 == v74)
          {
            goto LABEL_50;
          }

          v78 = *(*(a7 + 40) + 8 * v74);
          v79 = v78[2];
          v80 = v78[3];
          v81 = v78[5];
          *(v76 - 2) = v78[4];
          *(v76 - 1) = v81;
          *(v76 - 4) = v79;
          *(v76 - 3) = v80;
          *v76 = v78[1];
          v76 += 5;
          if (++v74 >= *(a7 + 80))
          {
            goto LABEL_27;
          }
        }

        *&a27 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a23) = 136315906;
        *(&a23 + 4) = "operator[]";
        WORD6(a23) = 1024;
        *(&a23 + 14) = 468;
        WORD1(a24) = 2048;
        *(&a24 + 4) = v74;
        WORD6(a24) = 2048;
        *(&a24 + 14) = v77;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        re::internal::assertLog(6, v71, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v75, v75);
        _os_crash();
        __break(1u);
LABEL_51:
        a18 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        WORD6(a27) = 1024;
        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = v69;
        WORD6(a28) = 2048;
        *(&a28 + 14) = v73;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_52:
        a22 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        WORD6(a27) = 1024;
        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = v69;
        WORD6(a28) = 2048;
        *(&a28 + 14) = v73;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_53;
      }

LABEL_27:
      a24 = 0u;
      a25 = 0u;
      v82 = *a5;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 0x400uLL, 0x100uLL, &a31);
      v83 = DWORD2(a31);
      v84 = a32;
      v85 = a31 + DWORD2(a31);
      *v85 = xmmword_1E3047670;
      *(v85 + 16) = xmmword_1E3047680;
      *(v85 + 32) = xmmword_1E30476A0;
      *(v85 + 48) = xmmword_1E30474D0;
      *(v85 + 64) = xmmword_1E3047670;
      *(v85 + 80) = xmmword_1E3047680;
      *(v85 + 96) = xmmword_1E30476A0;
      *(v85 + 112) = xmmword_1E30474D0;
      *(v85 + 128) = xmmword_1E3047670;
      *(v85 + 144) = xmmword_1E3047680;
      *(v85 + 160) = xmmword_1E30476A0;
      *(v85 + 176) = xmmword_1E30474D0;
      *(v85 + 192) = xmmword_1E3047670;
      *(v85 + 208) = xmmword_1E3047680;
      *(v85 + 224) = xmmword_1E30476A0;
      *(v85 + 240) = xmmword_1E30474D0;
      *(v85 + 256) = xmmword_1E3047670;
      *(v85 + 272) = xmmword_1E3047680;
      *(v85 + 288) = xmmword_1E30476A0;
      *(v85 + 304) = xmmword_1E30474D0;
      *(v85 + 320) = xmmword_1E3047670;
      *(v85 + 336) = xmmword_1E3047680;
      *(v85 + 352) = xmmword_1E30476A0;
      *(v85 + 368) = xmmword_1E30474D0;
      *(v85 + 384) = xmmword_1E3047670;
      *(v85 + 400) = xmmword_1E3047680;
      *(v85 + 416) = xmmword_1E30476A0;
      *(v85 + 432) = xmmword_1E30474D0;
      *(v85 + 448) = xmmword_1E3047670;
      *(v85 + 464) = xmmword_1E3047680;
      *(v85 + 480) = xmmword_1E30476A0;
      *(v85 + 496) = xmmword_1E30474D0;
      *(v85 + 512) = xmmword_1E3047670;
      *(v85 + 528) = xmmword_1E3047680;
      *(v85 + 544) = xmmword_1E30476A0;
      *(v85 + 560) = xmmword_1E30474D0;
      *(v85 + 576) = xmmword_1E3047670;
      *(v85 + 592) = xmmword_1E3047680;
      *(v85 + 608) = xmmword_1E30476A0;
      *(v85 + 624) = xmmword_1E30474D0;
      *(v85 + 640) = xmmword_1E3047670;
      *(v85 + 656) = xmmword_1E3047680;
      *(v85 + 672) = xmmword_1E30476A0;
      *(v85 + 688) = xmmword_1E30474D0;
      *(v85 + 704) = xmmword_1E3047670;
      *(v85 + 720) = xmmword_1E3047680;
      *(v85 + 736) = xmmword_1E30476A0;
      *(v85 + 752) = xmmword_1E30474D0;
      *(v85 + 880) = 0u;
      *(v85 + 896) = 0u;
      *(v85 + 848) = 0u;
      *(v85 + 864) = 0u;
      *(v85 + 816) = 0u;
      *(v85 + 832) = 0u;
      *(v85 + 784) = 0u;
      *(v85 + 800) = 0u;
      *(v85 + 768) = 0u;
      *(v85 + 940) = v82;
      *(v85 + 944) = v97;
      *(v85 + 960) = 0u;
      *(v85 + 976) = a23;
      *(v85 + 992) = a24;
      *(v85 + 1008) = a25;
      v86 = re::TextManager::renderData(a1);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, *v86, 0, 0);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, vars8, vars0, 1);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v73, v72, 2);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v96, v95, 3);
      (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v84, v83, 5);
      re::StringID::invalid(&a20);
      if (!*(a7 + 32))
      {
LABEL_55:
        a18 = 0;
        a34 = 0u;
        a35 = 0u;
        a32 = 0u;
        a33 = 0u;
        a31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(a27) = 136315906;
        *(&a27 + 4) = "operator[]";
        WORD6(a27) = 1024;
        *(&a27 + 14) = 468;
        WORD1(a28) = 2048;
        *(&a28 + 4) = 0;
        WORD6(a28) = 2048;
        *(&a28 + 14) = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_56;
      }

      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, **(a7 + 40), ***(a7 + 40) >> 1, &a31);
      isValid = (*(*(a2 + 8) + 104))(**(a2 + 8), sel_setFragmentTexture_atIndex_, **(*(a1 + 9) + 40 * HIDWORD(a31) + 24), 0);
      if (*(a7 + 80))
      {
        v69 = 0;
        v88 = 0;
        v89 = 0;
        do
        {
          v73 = *(a7 + 32);
          if (v73 <= v69)
          {
            goto LABEL_51;
          }

          re::StringID::StringID(&a18, *(*(a7 + 40) + 8 * v69));
          if ((a18 ^ a20) > 1 || (isValid = __s1, __s1 != __s2) && (isValid = strcmp(__s1, __s2), isValid))
          {
            isValid = re::FontID::isValid(&a20);
            if (isValid)
            {
              if (v88)
              {
                *((&a31 | 0x10) + 0x10) = 0u;
                *((&a31 | 0x10) + 0x20) = 0u;
                *(&a31 | 0x10) = 0u;
                re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 0xA0uLL, 0x20uLL, &a27);
                v90 = a28;
                v91 = a27 + DWORD2(a27);
                *(v91 + 16) = 0;
                *(v91 + 28) = v88;
                *(v91 + 32) = a31;
                *(v91 + 48) = a32;
                *(v91 + 64) = a33;
                *(v91 + 80) = a34;
                (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v90);
                (*(*(a2 + 8) + 232))(**(a2 + 8), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_, 3, 0, 6, v88, v89);
              }

              re::StringID::operator=(&a20, &a18);
              v89 += v88;
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 56, &a18, a18 >> 1, &a31);
              isValid = (*(*(a2 + 8) + 104))(**(a2 + 8), sel_setFragmentTexture_atIndex_, **(*(a1 + 9) + 40 * HIDWORD(a31) + 24), 0);
              v88 = 0;
            }
          }

          v73 = *(a7 + 32);
          if (v73 <= v69)
          {
            goto LABEL_52;
          }

          v92 = *(*(*(a7 + 40) + 8 * v69) + 112);
          if (a18)
          {
            if (a18)
            {
            }
          }

          v88 += v92;
          ++v69;
        }

        while (v69 < *(a7 + 80));
        if (v88)
        {
          a33 = 0u;
          a34 = 0u;
          a32 = 0u;
          re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((a6 + 16), 0xA0uLL, 0x20uLL, &a27);
          v93 = a28;
          v94 = a27 + DWORD2(a27);
          *(v94 + 16) = 0;
          *(v94 + 28) = v88;
          *(v94 + 32) = a31;
          *(v94 + 48) = a32;
          *(v94 + 64) = a33;
          *(v94 + 80) = a34;
          (*(*(a2 + 8) + 16))(**(a2 + 8), sel_setVertexBuffer_offset_atIndex_, v93);
          isValid = (*(*(a2 + 8) + 232))(**(a2 + 8), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_, 3, 0, 6, v88, v89);
        }
      }

      if (a20)
      {
        if (a20)
        {
        }
      }
    }
  }
}

uint64_t re::TextManager::render(re::TextManager *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, _BYTE *a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  *&v64 = *MEMORY[0x1E69E9840];
  (*(*(a4 + 8) + 160))(**(a4 + 8), sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Text Rendering" encoding:4]);
  (*(*(a4 + 8) + 64))(**(a4 + 8), sel_setCullMode_, 0);
  (*(*(a4 + 8) + 136))(**(a4 + 8), sel_setFrontFacingWinding_, 1);
  v16 = re::TextManager::renderData(a1);
  v17 = *a1;
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(v16 + 320, a2, &v44);
  if (HIDWORD(v44) == 0x7FFFFFFF)
  {
    *&v42 = a5;
    *(&v42 + 1) = a7;
    for (i = 0; i != 8; ++i)
    {
      [objc_msgSend(objc_msgSend(*(v16 + 312) colorAttachments)];
    }

    [*(v16 + 312) setRasterSampleCount_];
    [*(v16 + 312) setDepthAttachmentPixelFormat_];
    [*(v16 + 312) setStencilAttachmentPixelFormat_];
    if (*(v17 + 366) == 1)
    {
      [*(v16 + 312) setMaxVertexAmplificationCount_];
    }

    *&v56 = *(v17 + 208);
    re::mtl::Device::makeRenderPipelineState(&v56, *(v16 + 312), 0, &v55 + 1);
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(v16 + 320, a2, &v55 + 1);
    re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(v16 + 320, a2, &v44);
    if (HIDWORD(v44) == 0x7FFFFFFF)
    {
      v19 = 0;
    }

    else
    {
      v19 = (*(v16 + 336) + 72 * HIDWORD(v44) + 56);
    }

    if (*(&v55 + 1))
    {
    }
  }

  else
  {
    v19 = (*(v16 + 336) + 72 * HIDWORD(v44) + 56);
  }

  (*(*(a4 + 8) + 56))(**(a4 + 8), sel_setRenderPipelineState_, *v19);
  if (a2[9] - 250 <= 0xA && ((1 << (*(a2 + 36) + 6)) & 0x425) != 0)
  {
    v20 = 200;
  }

  else
  {
    v20 = 256;
  }

  if (a10)
  {
    v21 = re::TextManager::renderData(a1) + v20;
    LOBYTE(v44) = *v21;
    if (v44 == 1)
    {
      re::DynamicString::DynamicString((&v44 + 8), (v21 + 8));
    }

    *(v46 + 8) = *(v21 + 40);
    v22.i32[1] = HIDWORD(v46[0]);
    BYTE6(v46[1]) = *a3;
    v22.i32[0] = *(a3 + 3);
    v23 = vmovl_u8(v22).u64[0];
    v24 = vrev32_s16(v23);
    v25 = vuzp1_s16(v23, v24);
    v26 = vuzp1_s8(v25, v25);
    v24.i32[0] = *(a3 + 11);
    v27 = vmovl_u8(v24).u64[0];
    v26.i32[1] = vuzp1_s8(vuzp1_s16(v27, vrev32_s16(v27)), v26).u32[0];
    *(&v46[0] + 1) = v26;
    *(&v46[1] + 1) = *(a3 + 1);
    BYTE7(v46[1]) = *(a3 + 8);
    *(&v46[1] + 3) = *(a3 + 9);
    DepthStencilState = re::getOrCreateDepthStencilState(*a1, *(*a1 + 112), &v44);
    if (v44 == 1 && *(&v44 + 1) && (v45 & 1) != 0)
    {
      (*(**(&v44 + 1) + 40))();
    }
  }

  else
  {
    v29 = re::TextManager::renderData(a1);
    DepthStencilState = re::getOrCreateDepthStencilState(*a1, *(*a1 + 112), v29 + v20);
  }

  (*(*(a4 + 8) + 112))(**(a4 + 8), sel_setDepthStencilState_, *DepthStencilState);
  (*(*(a4 + 8) + 120))(**(a4 + 8), sel_setStencilReferenceValue_, *(a3 + 16));
  v31 = re::setVertexAmplificationCount(*(*a1 + 366), a9, *a7, 0xFFFF, a4, v30);
  if (*(a8 + 128) == -1)
  {
    v47 = 0u;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    re::DynamicString::setCapacity(&v46[1], 0);
    v48 = 0;
    v49 = 0;
    LODWORD(__s2) = 1;
    __s1 = 0;
    v53 = 0;
    v51 = 0;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = -1;
    v34 = *(a8 + 104);
    if (v34)
    {
      v35 = (v34 >> 1);
    }

    else
    {
      v35 = (v34 >> 1);
    }

    re::StringID::invalid(&v56);
    *&v57 = 0x3F8000003F800000;
    *(&v57 + 1) = 0x3F8000003F800000;
    *v58 = 0u;
    *v59 = 0u;
    *v60 = 0u;
    *v61 = 0u;
    *&v63[0] = 0;
    v62 = 0xFFFFFFFFFFFFFFFFLL;
    *(v63 + 8) = re::kInvalidStringRenderHandle;
    v36 = re::StringID::operator=(&v56, a8);
    v37 = *(a8 + 32);
    v57 = *(a8 + 16);
    *v58 = v37;
    v38 = *(a8 + 64);
    *v59 = *(a8 + 48);
    *v60 = v38;
    *v61 = *(a8 + 80);
    re::TextManager::addStringToGroup(v36, &v44, a8 + 96, &v56);
    LOBYTE(v41) = a9;
    re::TextManager::renderTextGroup(a1, a4, a6, *(&a6 + 1), a7, a5, &v44, 0, v41, v42, a6, v44, v45, v46[0], v46[1], v47, v48, v49, __s2, v51, __s1, v53, v54, v55, v56, v57, *v58, *v59, v60[0], v60[1], *v61, v62, v63[0], v63[1], v64, v65, v66);
    if (v56)
    {
      if (v56)
      {
      }
    }

    re::TextRenderGroupData::~TextRenderGroupData(&v44);
  }

  else
  {
    v32 = re::TextManager::renderData(a1);
    v33 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v32 + 152, (a8 + 128));
    if (v33)
    {
      LOBYTE(v41) = a9;
      re::TextManager::renderTextGroup(a1, a4, a6, *(&a6 + 1), a7, a5, v33, 1, v41, v42, a6, v44, v45, v46[0], v46[1], v47, v48, v49, __s2, v51, __s1, v53, v54, v55, v56, v57, *v58, *v59, v60[0], v60[1], *v61, v62, v63[0], v63[1], v64, v65, v66);
    }
  }

  return (*(*(a4 + 8) + 168))(**(a4 + 8), sel_popDebugGroup);
}

void re::FixedArray<TextRenderPerGlyphData>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 48 * a3;
  v6 = (*(*a2 + 32))(a2, 48 * a3, 16);
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
    bzero(v6, v5 - 48);
    v8 = (v8 + v5 - 48);
  }

  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
}

void *re::FixedArray<re::StringRenderParam>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1C71C71C71C71C8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 144, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 144 * a3, 16);
  v4[2] = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    re::StringID::invalid(v7);
    *(v7 + 16) = 0x3F8000003F800000;
    *(v7 + 24) = 0x3F8000003F800000;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 96) = -1;
    *(v7 + 120) = re::kInvalidStringRenderHandle;
    v7 += 144;
  }

  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  result = re::StringID::invalid(v7);
  *(v7 + 16) = 0x3F8000003F800000;
  *(v7 + 24) = 0x3F8000003F800000;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = -1;
  *(v7 + 120) = re::kInvalidStringRenderHandle;
  return result;
}

void re::FixedArray<re::StringRenderParam *>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void re::TextRenderGroupData::~TextRenderGroupData(re::TextRenderGroupData *this)
{
  re::FixedArray<re::StringRenderParam>::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::DynamicString::deinit((this + 48));
  *(this + 10) = 0;
  *(this + 11) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::DynamicString::deinit((this + 48));
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  re::FixedArray<re::StringRenderParam>::deinit(this);
}

void *re::FixedArray<re::StringRenderParam>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 144 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 144);
        v5 -= 144;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::add(uint64_t a1, uint64_t a2, id *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(a1, a2, &v12);
  if (HIDWORD(v13) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v13) + 56;
  }

  v6 = re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(a1, v13, v12);
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v6 + 4) = *a2;
  *(v6 + 52) = v9;
  *(v6 + 36) = v7;
  *(v6 + 20) = v8;
  *(v6 + 56) = *a3;
  v10 = v6 + 56;
  ++*(a1 + 40);
  return v10;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  MurmurHash3_x64_128(v8, 0x2CuLL, 0, v10);
  return re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>(a1, a2, (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0], a3);
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::findEntry<re::RenderTargetInfo>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = 0x7FFFFFFF;
  if (*a1)
  {
    v4 = a3 % *(a1 + 24);
    v6 = *(*(a1 + 8) + 4 * v4);
    if (v6 == 0x7FFFFFFF)
    {
      result = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = *(a1 + 16);
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      v16 = a2[7];
      v17 = a2[8];
      v18 = a2[9];
      v5 = 0x7FFFFFFF;
      result = 0x7FFFFFFFLL;
      v19 = a2[10];
      while (1)
      {
        v20 = v6;
        v21 = v8 + 72 * v6;
        v23 = *(v21 + 4);
        v22 = (v21 + 4);
        if (v23 == v9 && v22[1] == v10 && v22[2] == v11 && v22[3] == v12 && v22[4] == v13 && v22[5] == v14 && v22[6] == v15 && v22[7] == v16 && v22[8] == v17 && v22[9] == v18 && v22[10] == v19)
        {
          break;
        }

        v6 = *(v8 + 72 * v20) & 0x7FFFFFFF;
        result = v20;
        if (v6 == 0x7FFFFFFF)
        {
          result = v20;
          goto LABEL_19;
        }
      }

      v5 = v20;
    }
  }

  else
  {
    result = 0x7FFFFFFFLL;
  }

LABEL_19:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = result;
  return result;
}

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::move(a1, v9);
      re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 52);
        v10 = *(v8 + 20);
        v11 = *(v8 + 36);
        *(result + 4) = *(v8 + 4);
        *(result + 36) = v11;
        *(result + 20) = v10;
        *(result + 52) = v9;
        v7 = *(a2 + 16);
        *(result + 56) = *(v7 + v5 + 56);
        *(v7 + v5 + 56) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 72;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

double re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::free(a1, v3++);
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

void re::HashTable<re::RenderTargetInfo,NS::SharedPtr<MTL::RenderPipelineState>,re::Hash<re::RenderTargetInfo>,re::EqualTo<re::RenderTargetInfo>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 72 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 56);
    if (v3)
    {

      *(v2 + 56) = 0;
    }
  }
}

double re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::TextRenderGroupData::~TextRenderGroupData((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 168;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v25, 0, 36);
      *&v25[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::init(v25, v4, a2);
      v5 = *a1;
      *a1 = *v25;
      v6 = *(a1 + 16);
      v7 = *&v25[8];
      *v25 = v5;
      *&v25[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v25[24];
      *&v25[24] = *(a1 + 24);
      v8 = *&v25[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 32 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 32 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 32 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 32 * v18 + 8) = *(*(a1 + 16) + 32 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 16) + 32 * v18) = v15;
            v22 = *(a1 + 16) + 32 * v18;
            v23 = *v14;
            *(v22 + 16) = *(v22 + 16) & 0xFFFFFFFFFFFFFFFELL | *v14 & 1;
            *(v22 + 16) = *v14 & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
            *(v22 + 24) = v14[1];
            *v14 = 0;
            v14[1] = &str_67;
            v13 = *(a1 + 8);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 28) + 1;
            *(a1 + 28) = v12;
          }

          ++v11;
          v14 += 4;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::deinit(v25);
    }
  }

  else
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 3;
    }
  }
}

void re::HashSetBase<re::FontID,re::FontID,re::internal::ValueAsKey<re::FontID>,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::allocEntry(a1, *(v13 + v17 + 32) % *(a1 + 24));
                v21 = *(v19 + 8);
                v20[1] = v20[1] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[1] = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[2] = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v28[16];
                v20[3] = *(*&v28[16] + v17 + 24);
                v16 = *&v28[32];
              }

              ++v18;
              v17 += 40;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 40 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 40 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 40 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 32) = a3;
  ++*(a1 + 28);
  return v22 + 40 * v5;
}

void re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

BOOL re::HashTable<re::FontID,re::FontAssetInternal *,re::Hash<re::FontID>,re::EqualTo<re::FontID>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 40 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 40 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 40 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 168 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 168 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 168 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 168 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::TextRenderGroupData const&>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  re::FixedArray<re::StringRenderParam>::FixedArray((v7 + 16), a4);
  re::FixedArray<re::StringRenderParam *>::FixedArray((v7 + 40), a4 + 24);
  re::DynamicString::DynamicString((v7 + 64), (a4 + 48));
  v8 = *(a4 + 80);
  *(v7 + 112) = *(a4 + 96);
  *(v7 + 96) = v8;
  re::FixedArray<TextRenderPerGlyphData>::FixedArray((v7 + 120), a4 + 104);
  *(v7 + 144) = *(a4 + 128);
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
          if (v14)
          {
            v16 = 0;
            v17 = 168 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 160) % *(a1 + 24));
                *(v18 + 8) = *(v13 + v16 + 8);
                re::FixedArray<re::StringRenderParam>::FixedArray((v18 + 16), v13 + v16 + 16);
                re::FixedArray<re::StringRenderParam *>::FixedArray((v18 + 40), v13 + v16 + 40);
                re::DynamicString::DynamicString((v18 + 64), (v13 + v16 + 64));
                v19 = *(v13 + v16 + 96);
                *(v18 + 112) = *(v13 + v16 + 112);
                *(v18 + 96) = v19;
                re::FixedArray<TextRenderPerGlyphData>::FixedArray((v18 + 120), v13 + v16 + 120);
                *(v18 + 144) = *(v13 + v16 + 144);
              }

              v16 += 168;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
    v21 = *(v20 + 168 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 168 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 168 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 160) = a3;
  ++*(a1 + 28);
  return v20 + 168 * v5;
}

void re::HashTable<unsigned long long,re::TextRenderGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 168 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

unint64_t *re::FixedArray<re::StringRenderParam>::FixedArray(unint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::StringRenderParam>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::StringRenderParam>::copy(a1, a2);
  }

  return a1;
}

unint64_t *re::FixedArray<re::StringRenderParam>::copy(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 144 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        v6 = *(v3 + 16);
        v7 = *(v3 + 32);
        v8 = *(v3 + 64);
        *(v5 + 3) = *(v3 + 48);
        *(v5 + 4) = v8;
        *(v5 + 1) = v6;
        *(v5 + 2) = v7;
        v9 = *(v3 + 80);
        v10 = *(v3 + 96);
        v11 = *(v3 + 112);
        v5[16] = *(v3 + 128);
        *(v5 + 6) = v10;
        *(v5 + 7) = v11;
        *(v5 + 5) = v9;
        v3 += 144;
        result = v5 + 18;
        v4 -= 144;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::StringRenderParam *>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::StringRenderParam *>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<re::StringRenderParam *>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<re::StringRenderParam *>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
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

uint64_t *re::FixedArray<TextRenderPerGlyphData>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<TextRenderPerGlyphData>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<TextRenderPerGlyphData>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<TextRenderPerGlyphData>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 48 * v4);
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
  v157 = a2;
  while (1)
  {
    v6 = v7;
    v8 = a2 - v7;
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v92 = *(a2 - 1);
        v93 = *v7;
        result = strcmp(*(v92 + 8), *(*v7 + 8));
        if ((result & 0x80000000) != 0)
        {
          *v7 = v92;
          *(a2 - 1) = v93;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,0>(v7, v7 + 1, v7 + 2, a2 - 1);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,0>(v7, v7 + 1, v7 + 2, v7 + 3);
      v87 = *(a2 - 1);
      v88 = v7[3];
      result = strcmp(*(v87 + 8), *(v88 + 8));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v7[3] = v87;
      *(a2 - 1) = v88;
      v90 = v7[2];
      v89 = v7[3];
      result = strcmp(*(v89 + 8), *(v90 + 8));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v7[2] = v89;
      v7[3] = v90;
      v91 = v7[1];
      result = strcmp(*(v89 + 8), *(v91 + 8));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v7[1] = v89;
      v7[2] = v91;
      goto LABEL_173;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v99 = v7 + 1;
      v101 = v7 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v7;
          do
          {
            v104 = *v103;
            v105 = v103[1];
            v103 = v99;
            result = strcmp(*(v105 + 8), *(v104 + 8));
            if ((result & 0x80000000) != 0)
            {
              v106 = v102;
              while (1)
              {
                *(v6 + v106 + 8) = v104;
                if (!v106)
                {
                  break;
                }

                v104 = *(v6 + v106 - 8);
                result = strcmp(*(v105 + 8), *(v104 + 8));
                v106 -= 8;
                if ((result & 0x80000000) == 0)
                {
                  v107 = (v6 + v106 + 8);
                  goto LABEL_131;
                }
              }

              v107 = v6;
LABEL_131:
              *v107 = v105;
            }

            v99 = v103 + 1;
            v102 += 8;
          }

          while (v103 + 1 != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v148 = *v6;
          v147 = v6[1];
          v6 = v99;
          result = strcmp(*(v147 + 8), *(v148 + 8));
          if ((result & 0x80000000) != 0)
          {
            v149 = v6;
            do
            {
              *v149 = v148;
              v148 = *(v149 - 2);
              result = strcmp(*(v147 + 8), *(v148 + 8));
              --v149;
            }

            while ((result & 0x80000000) != 0);
            *v149 = v147;
          }

          v99 = v6 + 1;
        }

        while (v6 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v108 = v9 >> 1;
        v109 = v9 >> 1;
        v151 = v7;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v6[v111];
            v113 = 2 * v109 + 2;
            v114 = *v112;
            if (v113 < v8)
            {
              v115 = v109;
              v116 = v112[1];
              v117 = strcmp(*(v114 + 8), *(v116 + 8));
              if (v117 < 0)
              {
                v114 = v116;
              }

              v110 = v115;
              if (v117 < 0)
              {
                ++v112;
                v111 = v113;
              }
            }

            v118 = &v6[v110];
            v119 = *v118;
            result = strcmp(*(v114 + 8), *(*v118 + 8));
            if ((result & 0x80000000) == 0)
            {
              v155 = v110;
              do
              {
                v120 = v112;
                *v118 = v114;
                if (v108 < v111)
                {
                  break;
                }

                v121 = (2 * v111) | 1;
                v112 = &v6[v121];
                v122 = 2 * v111 + 2;
                v114 = *v112;
                if (v122 < v8)
                {
                  v123 = v119;
                  v124 = v108;
                  v125 = v112[1];
                  v126 = strcmp(*(v114 + 8), *(v125 + 8));
                  if (v126 < 0)
                  {
                    v114 = v125;
                  }

                  v108 = v124;
                  v119 = v123;
                  v6 = v151;
                  if (v126 < 0)
                  {
                    ++v112;
                    v121 = v122;
                  }
                }

                result = strcmp(*(v114 + 8), *(v119 + 8));
                v118 = v120;
                v111 = v121;
              }

              while ((result & 0x80000000) == 0);
              *v120 = v119;
              v110 = v155;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v127 = v157;
        do
        {
          v128 = 0;
          v156 = *v6;
          v158 = v127;
          v129 = v6;
          do
          {
            v130 = &v129[v128];
            v132 = v130 + 1;
            v131 = v130[1];
            v133 = (2 * v128) | 1;
            v134 = 2 * v128 + 2;
            if (v134 >= v8)
            {
              v128 = (2 * v128) | 1;
            }

            else
            {
              v137 = v130[2];
              v136 = v130 + 2;
              v135 = v137;
              result = strcmp(*(v131 + 8), *(v137 + 8));
              if (result >= 0)
              {
                v128 = v133;
              }

              else
              {
                v131 = v135;
                v132 = v136;
                v128 = v134;
              }
            }

            *v129 = v131;
            v129 = v132;
          }

          while (v128 <= ((v8 - 2) >> 1));
          v127 = v158 - 1;
          if (v132 == v158 - 1)
          {
            *v132 = v156;
          }

          else
          {
            *v132 = *v127;
            *v127 = v156;
            v138 = (v132 - v6 + 8) >> 3;
            v139 = v138 < 2;
            v140 = v138 - 2;
            if (!v139)
            {
              v141 = v140 >> 1;
              v142 = &v6[v140 >> 1];
              v143 = *v142;
              v144 = *v132;
              result = strcmp(*(*v142 + 8), *(*v132 + 8));
              if ((result & 0x80000000) != 0)
              {
                do
                {
                  v145 = v142;
                  *v132 = v143;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = &v6[v141];
                  v143 = *v142;
                  result = strcmp(*(*v142 + 8), *(v144 + 8));
                  v132 = v145;
                }

                while ((result & 0x80000000) != 0);
                *v145 = v144;
              }
            }
          }

          v139 = v8-- <= 2;
        }

        while (!v139);
      }

      return result;
    }

    v10 = &v7[v8 >> 1];
    v11 = *(a2 - 1);
    v12 = *(v11 + 8);
    if (v8 >= 0x81)
    {
      v13 = *v10;
      v14 = *v6;
      v15 = *(*v10 + 8);
      v16 = strcmp(v15, *(*v6 + 8));
      v17 = strcmp(v12, v15);
      v153 = a3;
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          *v6 = v11;
          v18 = v157;
          goto LABEL_27;
        }

        *v6 = v13;
        *v10 = v14;
        v18 = v157;
        v28 = *(v157 - 1);
        if (strcmp(*(v28 + 8), *(v14 + 8)) < 0)
        {
          *v10 = v28;
LABEL_27:
          *(v18 - 1) = v14;
        }
      }

      else
      {
        v18 = v157;
        if (v17 < 0)
        {
          *v10 = v11;
          *(v157 - 1) = v13;
          v24 = *v10;
          v25 = *v6;
          if (strcmp(*(*v10 + 8), *(*v6 + 8)) < 0)
          {
            *v6 = v24;
            *v10 = v25;
          }
        }
      }

      v30 = v10 - 1;
      v29 = *(v10 - 1);
      v31 = v6[1];
      v32 = *(v29 + 8);
      v33 = strcmp(v32, *(v31 + 8));
      v34 = *(v18 - 2);
      v35 = strcmp(*(v34 + 8), v32);
      v36 = v18;
      if (v33 < 0)
      {
        v37 = v10;
        if (v35 < 0)
        {
          v6[1] = v34;
          goto LABEL_39;
        }

        v6[1] = v29;
        *v30 = v31;
        v41 = *(v36 - 2);
        if (strcmp(*(v41 + 8), *(v31 + 8)) < 0)
        {
          *v30 = v41;
LABEL_39:
          *(v36 - 2) = v31;
        }
      }

      else
      {
        v37 = v10;
        if (v35 < 0)
        {
          *v30 = v34;
          *(v36 - 2) = v29;
          v38 = *v30;
          v39 = v6[1];
          if (strcmp(*(*v30 + 8), *(v39 + 8)) < 0)
          {
            v6[1] = v38;
            *v30 = v39;
          }
        }
      }

      v44 = v10[1];
      v43 = v10 + 1;
      v42 = v44;
      v45 = v6[2];
      v46 = *(v44 + 8);
      v47 = strcmp(v46, *(v45 + 8));
      v48 = *(v36 - 3);
      v49 = strcmp(*(v48 + 8), v46);
      if (v47 < 0)
      {
        if (v49 < 0)
        {
          v6[2] = v48;
          goto LABEL_48;
        }

        v6[2] = v42;
        *v43 = v45;
        v52 = *(v36 - 3);
        if (strcmp(*(v52 + 8), *(v45 + 8)) < 0)
        {
          *v43 = v52;
LABEL_48:
          *(v36 - 3) = v45;
        }
      }

      else if (v49 < 0)
      {
        *v43 = v48;
        *(v36 - 3) = v42;
        v50 = *v43;
        v51 = v6[2];
        if (strcmp(*(*v43 + 8), *(v51 + 8)) < 0)
        {
          v6[2] = v50;
          *v43 = v51;
        }
      }

      v53 = *v37;
      v54 = *v30;
      v55 = *(*v37 + 8);
      v56 = strcmp(v55, *(*v30 + 8));
      v57 = *v43;
      v58 = strcmp(*(*v43 + 8), v55);
      if (v56 < 0)
      {
        if ((v58 & 0x80000000) == 0)
        {
          *v30 = v53;
          *v37 = v54;
          v30 = v37;
          v53 = v57;
          if ((strcmp(*(v57 + 8), *(v54 + 8)) & 0x80000000) == 0)
          {
            v53 = v54;
LABEL_56:
            v59 = *v6;
            *v6 = v53;
            *v37 = v59;
            a3 = v153;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        *v37 = v57;
        *v43 = v53;
        v43 = v37;
        v53 = v54;
        if ((strcmp(*(v57 + 8), *(v54 + 8)) & 0x80000000) == 0)
        {
          v53 = v57;
          goto LABEL_56;
        }
      }

      *v30 = v57;
      *v43 = v54;
      goto LABEL_56;
    }

    v19 = *v6;
    v20 = *v10;
    v21 = *(*v6 + 8);
    v22 = strcmp(v21, *(*v10 + 8));
    v23 = strcmp(v12, v21);
    if ((v22 & 0x80000000) == 0)
    {
      if (v23 < 0)
      {
        *v6 = v11;
        *(v157 - 1) = v19;
        v26 = *v6;
        v27 = *v10;
        if (strcmp(*(*v6 + 8), *(*v10 + 8)) < 0)
        {
          *v10 = v26;
          *v6 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v23 < 0)
    {
      *v10 = v11;
LABEL_36:
      *(v157 - 1) = v20;
      goto LABEL_57;
    }

    *v10 = v19;
    *v6 = v20;
    v40 = *(v157 - 1);
    if (strcmp(*(v40 + 8), *(v20 + 8)) < 0)
    {
      *v6 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v60 = *v6;
    if (a4)
    {
      v61 = *(v60 + 8);
LABEL_60:
      v62 = 0;
      do
      {
        v63 = v6[++v62];
      }

      while (strcmp(*(v63 + 8), v61) < 0);
      v64 = &v6[v62];
      v65 = v157;
      if (v62 == 1)
      {
        v65 = v157;
        do
        {
          if (v64 >= v65)
          {
            break;
          }

          v67 = *--v65;
        }

        while ((strcmp(*(v67 + 8), v61) & 0x80000000) == 0);
      }

      else
      {
        do
        {
          v66 = *--v65;
        }

        while ((strcmp(*(v66 + 8), v61) & 0x80000000) == 0);
      }

      if (v64 >= v65)
      {
        v74 = v64 - 1;
      }

      else
      {
        v154 = a3;
        v68 = *v65;
        v69 = v64;
        v70 = v65;
        do
        {
          *v69 = v68;
          *v70 = v63;
          v71 = *(v60 + 8);
          do
          {
            v72 = v69[1];
            ++v69;
            v63 = v72;
          }

          while (strcmp(*(v72 + 8), v71) < 0);
          do
          {
            v73 = *--v70;
            v68 = v73;
          }

          while ((strcmp(*(v73 + 8), v71) & 0x80000000) == 0);
        }

        while (v69 < v70);
        v74 = v69 - 1;
        a3 = v154;
      }

      a2 = v157;
      if (v74 != v6)
      {
        *v6 = *v74;
      }

      *v74 = v60;
      if (v64 < v65)
      {
        goto LABEL_81;
      }

      v75 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **>(v6, v74);
      v7 = v74 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **>(v74 + 1, v157);
      if (result)
      {
        a2 = v74;
        if (!v75)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v75)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,false>(v6, v74, a3, a4 & 1);
        a4 = 0;
        v7 = v74 + 1;
      }
    }

    else
    {
      v61 = *(v60 + 8);
      if (strcmp(*(*(v6 - 1) + 8), v61) < 0)
      {
        goto LABEL_60;
      }

      a2 = v157;
      result = strcmp(v61, *(*(v157 - 1) + 8));
      if ((result & 0x80000000) != 0)
      {
        v7 = v6;
        do
        {
          v76 = v7[1];
          ++v7;
          result = strcmp(v61, *(v76 + 8));
        }

        while ((result & 0x80000000) == 0);
      }

      else
      {
        v77 = v6 + 1;
        do
        {
          v7 = v77;
          if (v77 >= v157)
          {
            break;
          }

          ++v77;
          result = strcmp(v61, *(*v7 + 8));
        }

        while ((result & 0x80000000) == 0);
      }

      v78 = a3;
      v79 = v157;
      if (v7 < v157)
      {
        v79 = v157;
        do
        {
          v80 = *--v79;
          result = strcmp(v61, *(v80 + 8));
        }

        while ((result & 0x80000000) != 0);
      }

      if (v7 < v79)
      {
        v81 = *v7;
        v82 = *v79;
        do
        {
          *v7 = v82;
          *v79 = v81;
          v83 = *(v60 + 8);
          do
          {
            v84 = v7[1];
            ++v7;
            v81 = v84;
          }

          while ((strcmp(v83, *(v84 + 8)) & 0x80000000) == 0);
          do
          {
            v85 = *--v79;
            v82 = v85;
            result = strcmp(v83, *(v85 + 8));
          }

          while ((result & 0x80000000) != 0);
        }

        while (v7 < v79);
      }

      v86 = v7 - 1;
      if (v7 - 1 != v6)
      {
        *v6 = *v86;
      }

      a4 = 0;
      *v86 = v60;
      a3 = v78;
    }
  }

  v94 = *v7;
  v95 = v7[1];
  v96 = *(v95 + 8);
  v97 = strcmp(v96, *(*v6 + 8));
  v98 = *(a2 - 1);
  result = strcmp(*(v98 + 8), v96);
  if ((v97 & 0x80000000) == 0)
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v6[1] = v98;
    *(a2 - 1) = v95;
    v89 = v6[1];
LABEL_173:
    v146 = *v6;
    result = strcmp(*(v89 + 8), *(*v6 + 8));
    if ((result & 0x80000000) != 0)
    {
      *v6 = v89;
      v6[1] = v146;
    }

    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    *v6 = v98;
  }

  else
  {
    *v6 = v95;
    v6[1] = v94;
    v150 = *(a2 - 1);
    result = strcmp(*(v150 + 8), *(v94 + 8));
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v6[1] = v150;
  }

  *(a2 - 1) = v94;
  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = *(*a2 + 8);
  v11 = strcmp(v10, *(*a1 + 8));
  v12 = *a3;
  v13 = strcmp(*(*a3 + 8), v10);
  if (v11 < 0)
  {
    if (v13 < 0)
    {
      *a1 = v12;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (strcmp(*(*a3 + 8), *(v9 + 8)) < 0)
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v13 < 0)
  {
    *a2 = v12;
    *a3 = v8;
    v14 = *a2;
    v15 = *a1;
    if (strcmp(*(*a2 + 8), *(*a1 + 8)) < 0)
    {
      *a1 = v14;
      *a2 = v15;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v12;
  }

LABEL_11:
  v16 = *a4;
  result = strcmp(*(*a4 + 8), *(v8 + 8));
  if ((result & 0x80000000) != 0)
  {
    *a3 = v16;
    *a4 = v8;
    v18 = *a3;
    v19 = *a2;
    result = strcmp(*(*a3 + 8), *(*a2 + 8));
    if ((result & 0x80000000) != 0)
    {
      *a2 = v18;
      *a3 = v19;
      v20 = *a2;
      v21 = *a1;
      result = strcmp(*(*a2 + 8), *(*a1 + 8));
      if ((result & 0x80000000) != 0)
      {
        *a1 = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = *(v13 + 8);
        v15 = strcmp(v14, *(*a1 + 8));
        v16 = *(a2 - 1);
        v17 = strcmp(*(v16 + 8), v14);
        if (v15 < 0)
        {
          if (v17 < 0)
          {
            *a1 = v16;
          }

          else
          {
            *a1 = v13;
            a1[1] = v12;
            v40 = *(a2 - 1);
            if ((strcmp(*(v40 + 8), *(v12 + 8)) & 0x80000000) == 0)
            {
              return 1;
            }

            a1[1] = v40;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if ((v17 & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v16;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextManager::sortAndFillInstanceUniforms(re::TextRenderGroupData &,TextRenderPerGlyphData *)::$_0 &,re::StringRenderParam **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((strcmp(*(v7 + 8), *(v8 + 8)) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((strcmp(*(v9 + 8), *(v10 + 8)) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((strcmp(*(v9 + 8), *(v11 + 8)) & 0x80000000) == 0)
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_16;
    }

    v29 = *a1;
    if (strcmp(*(v9 + 8), *(*a1 + 8)) < 0)
    {
      *a1 = v9;
      a1[1] = v29;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (strcmp(*(v5 + 8), *(*a1 + 8)) < 0)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v18 = a1 + 1;
  v19 = a1[1];
  v20 = *a1;
  v21 = *(v19 + 8);
  v22 = strcmp(v21, *(*a1 + 8));
  v23 = a1 + 2;
  v24 = a1[2];
  v25 = strcmp(*(v24 + 8), v21);
  if (v22 < 0)
  {
    v26 = a1;
    v27 = a1 + 2;
    if ((v25 & 0x80000000) == 0)
    {
      *a1 = v19;
      a1[1] = v20;
      v28 = strcmp(*(v24 + 8), *(v20 + 8));
      v26 = a1 + 1;
      v27 = a1 + 2;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v26 = v24;
    *v27 = v20;
    goto LABEL_28;
  }

  if (v25 < 0)
  {
    *v18 = v24;
    *v23 = v19;
    v30 = strcmp(*(v24 + 8), *(v20 + 8));
    v26 = a1;
    v27 = a1 + 1;
    if (v30 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  for (i = 24; ; i += 8)
  {
    v34 = *v31;
    v35 = *v23;
    if (strcmp(*(*v31 + 8), *(v35 + 8)) < 0)
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 8;
        if (v36 == 8)
        {
          break;
        }

        v35 = *(a1 + v36 - 16);
        v38 = strcmp(*(v34 + 8), *(v35 + 8));
        v36 = v37;
        if ((v38 & 0x80000000) == 0)
        {
          v39 = (a1 + v37);
          goto LABEL_36;
        }
      }

      v39 = a1;
LABEL_36:
      *v39 = v34;
      if (++v32 == 8)
      {
        break;
      }
    }

    v23 = v31++;
    if (v31 == a2)
    {
      return 1;
    }
  }

  return v31 + 1 == a2;
}

void re::uploadDataToTexture(id *a1, void **a2, uint64_t *a3, id *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ([*a4 storageMode] == 2)
  {
    v28 = [*a1 newBufferWithBytes:a8 length:a9 options:0];
    v17 = *a4;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    re::mtl::BlitCommandEncoder::copyFromBufferToTexture(a2, &v28, a3, a5, v17, a7, a6, &v23);
    if (v28)
    {
    }
  }

  else
  {
    v18 = *a4;
    v19 = a5[2];
    v20 = a3[1];
    v21 = a3[2];
    v22 = *a5;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v22;
    v27 = v19;
    [v18 replaceRegion:&v23 mipmapLevel:a6 slice:a7 withBytes:a8 bytesPerRow:v20 bytesPerImage:v21];
  }
}

id re::makeTexture(void *a1, id *this, id *a3, id *a4)
{
  if (re::mtl::Device::isPhysicalHardware(this))
  {
    [*a4 setStorageMode_];
    result = [*a3 newTextureWithDescriptor_];
    *a1 = result;
  }

  else
  {
    v9 = *a4;

    return re::mtl::Device::makeTexture(v9, this, a1);
  }

  return result;
}

id re::textureDescriptorColor1D(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a1 = v4;
  [v4 setStorageMode_];
  [v4 setTextureType_];
  [v4 setWidth_];

  return [v4 setPixelFormat_];
}

uint64_t re::makeTextureColor1D@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x2_t *a5@<X4>, id *a6@<X8>)
{
  re::makeTexture(a6, this, a2, a3);
  v10 = (a5->f32[0] * 255.0);
  v11 = (a5->f32[1] * 255.0);
  v16 = vcvt_s32_f32(vmul_f32(a5[1], vdup_n_s32(0x437F0000u)));
  v12 = vshl_u32(v16, 0x1800000010);
  v21 = v12.i32[0] | (v11 << 8) | v10 | v12.i32[1];
  v19 = xmmword_1E3068150;
  v20 = 4;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  re::uploadDataToTexture(this, a4, &v19, a6, v17.i64, 0, 0, &v21, 4);
  v13 = *a6;
  re::DynamicString::format("Color1D-(%i,%i,%i,%i)", &v17, v10, v11, v16.u32[0], v16.u32[1]);
  if (v17.i8[8])
  {
    v14 = v18;
  }

  else
  {
    v14 = &v17.i8[9];
  }

  [v13 setLabel_];
  result = v17.i64[0];
  if (v17.i64[0])
  {
    if (v17.i8[8])
    {
      return (*(*v17.i64[0] + 40))();
    }
  }

  return result;
}

uint64_t re::makeTextureColor1DArray@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x2_t *a5@<X4>, id *a6@<X8>)
{
  re::makeTexture(a6, this, a2, a3);
  v10 = (a5->f32[0] * 255.0);
  v11 = (a5->f32[1] * 255.0);
  v16 = vcvt_s32_f32(vmul_f32(a5[1], vdup_n_s32(0x437F0000u)));
  v12 = vshl_u32(v16, 0x1800000010);
  v21 = v12.i32[0] | (v11 << 8) | v10 | v12.i32[1];
  v19 = xmmword_1E3068150;
  v20 = 4;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  re::uploadDataToTexture(this, a4, &v19, a6, v17.i64, 0, 0, &v21, 4);
  v13 = *a6;
  re::DynamicString::format("Color1DArray-(%i,%i,%i,%i)", &v17, v10, v11, v16.u32[0], v16.u32[1]);
  if (v17.i8[8])
  {
    v14 = v18;
  }

  else
  {
    v14 = &v17.i8[9];
  }

  [v13 setLabel_];
  result = v17.i64[0];
  if (v17.i64[0])
  {
    if (v17.i8[8])
    {
      return (*(*v17.i64[0] + 40))();
    }
  }

  return result;
}

uint64_t re::makeTextureBuffer@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x2_t *a5@<X4>, id *a6@<X8>)
{
  re::makeTexture(a6, this, a2, a3);
  v10 = (a5->f32[0] * 255.0);
  v11 = (a5->f32[1] * 255.0);
  v16 = vcvt_s32_f32(vmul_f32(a5[1], vdup_n_s32(0x437F0000u)));
  v12 = vshl_u32(v16, 0x1800000010);
  v21 = v12.i32[0] | (v11 << 8) | v10 | v12.i32[1];
  v19 = xmmword_1E3068150;
  v20 = 4;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  re::uploadDataToTexture(this, a4, &v19, a6, v17.i64, 0, 0, &v21, 4);
  v13 = *a6;
  re::DynamicString::format("TextureBuffer-(%i,%i,%i,%i)", &v17, v10, v11, v16.u32[0], v16.u32[1]);
  if (v17.i8[8])
  {
    v14 = v18;
  }

  else
  {
    v14 = &v17.i8[9];
  }

  [v13 setLabel_];
  result = v17.i64[0];
  if (v17.i64[0])
  {
    if (v17.i8[8])
    {
      return (*(*v17.i64[0] + 40))();
    }
  }

  return result;
}

id re::textureDescriptorColor1x1(void *a1, id *a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  v15 = a6;
  v16 = a3;
  if (a4)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  v13 = 2;
  v14 = v9;
  TextureCompressionType = re::mtl::getTextureCompressionType(a2, &v16, &v15, &v14, &v13);
  v11 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a1 = v11;
  [v11 setStorageMode_];
  if (([v11 respondsToSelector_] & 1) != 0 || objc_msgSend(v11, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v11 setCompressionType_];
  }

  [v11 setWidth_];
  [v11 setHeight_];
  [v11 setPixelFormat_];

  return [v11 setUsage_];
}

uint64_t re::makeTextureColor1x1@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x2_t *a5@<X4>, id *a6@<X8>)
{
  re::makeTexture(a6, this, a2, a3);
  v11 = (a5->f32[0] * 255.0);
  v12 = (a5->f32[1] * 255.0);
  v19 = vcvt_s32_f32(vmul_f32(a5[1], vdup_n_s32(0x437F0000u)));
  v13 = vshl_u32(v19, 0x1800000010);
  v24 = v13.i32[0] | (v12 << 8) | v11 | v13.i32[1];
  v22 = xmmword_1E3068150;
  v23 = 4;
  v20 = vdupq_n_s64(1uLL);
  v21 = 1;
  re::uploadDataToTexture(this, a4, &v22, a6, v20.i64, 0, 0, &v24, 4);
  v14 = [*a3 usage];
  v15 = "_writable";
  if ((v14 & 2) == 0)
  {
    v15 = "";
  }

  re::DynamicString::format("Color1x1-(%i,%i,%i,%i)%s", &v20, v11, v12, v19.u32[0], v19.u32[1], v15);
  v16 = *a6;
  if (v20.i8[8])
  {
    v17 = v21;
  }

  else
  {
    v17 = &v20.i8[9];
  }

  [v16 setLabel_];
  result = v20.i64[0];
  if (v20.i64[0])
  {
    if (v20.i8[8])
    {
      return (*(*v20.i64[0] + 40))();
    }
  }

  return result;
}

id re::textureDescriptorColor1x1x1(void *a1, id *a2, uint64_t a3)
{
  v10 = 70;
  v11 = a3;
  v8 = 2;
  v9 = 0;
  TextureCompressionType = re::mtl::getTextureCompressionType(a2, &v11, &v10, &v9, &v8);
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a1 = v6;
  [v6 setStorageMode_];
  if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v6 setCompressionType_];
  }

  [v6 setTextureType_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setDepth_];

  return [v6 setPixelFormat_];
}

uint64_t re::makeTextureColor1x1x1@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x2_t *a5@<X4>, id *a6@<X8>)
{
  re::makeTexture(a6, this, a2, a3);
  v10 = (a5->f32[0] * 255.0);
  v11 = (a5->f32[1] * 255.0);
  v16 = vcvt_s32_f32(vmul_f32(a5[1], vdup_n_s32(0x437F0000u)));
  v12 = vshl_u32(v16, 0x1800000010);
  v21 = v12.i32[0] | (v11 << 8) | v10 | v12.i32[1];
  v19 = xmmword_1E3068150;
  v20 = 4;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  re::uploadDataToTexture(this, a4, &v19, a6, v17.i64, 0, 0, &v21, 4);
  v13 = *a6;
  re::DynamicString::format("Color1x1x1-(%i,%i,%i,%i)", &v17, v10, v11, v16.u32[0], v16.u32[1]);
  if (v17.i8[8])
  {
    v14 = v18;
  }

  else
  {
    v14 = &v17.i8[9];
  }

  [v13 setLabel_];
  result = v17.i64[0];
  if (v17.i64[0])
  {
    if (v17.i8[8])
    {
      return (*(*v17.i64[0] + 40))();
    }
  }

  return result;
}

uint64_t re::makeTextureColor1x1_Float16@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x4_t *a5@<X4>, id *a6@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  re::makeTexture(a6, this, a2, a3);
  v17[0] = vcvt_f16_f32(*a5);
  v15 = xmmword_1E30B5C10;
  v16 = 8;
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  re::uploadDataToTexture(this, a4, &v15, a6, v13.i64, 0, 0, v17, 8);
  v10 = *a6;
  re::DynamicString::format("Color1x1_Float16-(%f,%f,%f,%f)", &v13, a5->f32[0], a5->f32[1], a5->f32[2], a5->f32[3]);
  if (v13.i8[8])
  {
    v11 = v14;
  }

  else
  {
    v11 = &v13.i8[9];
  }

  [v10 setLabel_];
  result = v13.i64[0];
  if (v13.i64[0])
  {
    if (v13.i8[8])
    {
      return (*(*v13.i64[0] + 40))();
    }
  }

  return result;
}

id re::textureDescriptor2DArrayColor1x1(void *a1, id *a2, uint64_t a3)
{
  v10 = 115;
  v11 = a3;
  v8 = 2;
  v9 = 0;
  TextureCompressionType = re::mtl::getTextureCompressionType(a2, &v11, &v10, &v9, &v8);
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a1 = v6;
  [v6 setStorageMode_];
  if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v6 setCompressionType_];
  }

  [v6 setTextureType_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setArrayLength_];

  return [v6 setPixelFormat_];
}

uint64_t re::makeTexture2DArrayColor1x1@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x4_t *a5@<X4>, id *a6@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  re::makeTexture(a6, this, a2, a3);
  v17[0] = vcvt_f16_f32(*a5);
  v15 = xmmword_1E30B5C10;
  v16 = 8;
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  re::uploadDataToTexture(this, a4, &v15, a6, v13.i64, 0, 0, v17, 8);
  v10 = *a6;
  re::DynamicString::format("Texture2DArray1x1x1-(%f,%f,%f,%f)", &v13, a5->f32[0], a5->f32[1], a5->f32[2], a5->f32[3]);
  if (v13.i8[8])
  {
    v11 = v14;
  }

  else
  {
    v11 = &v13.i8[9];
  }

  [v10 setLabel_];
  result = v13.i64[0];
  if (v13.i64[0])
  {
    if (v13.i8[8])
    {
      return (*(*v13.i64[0] + 40))();
    }
  }

  return result;
}

id re::textureDescriptorEnvMapColor(void *a1, id *a2, uint64_t a3)
{
  v10 = 115;
  v11 = a3;
  v8 = 2;
  v9 = 0;
  TextureCompressionType = re::mtl::getTextureCompressionType(a2, &v11, &v10, &v9, &v8);
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a1 = v6;
  [v6 setStorageMode_];
  if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v6 setCompressionType_];
  }

  [v6 setTextureType_];
  [v6 setWidth_];
  [v6 setHeight_];

  return [v6 setPixelFormat_];
}

uint64_t re::makeStockEnvMapColor@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x4_t *a5@<X4>, id *a6@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  re::makeTexture(a6, this, a2, a3);
  v10 = 0;
  v19[0] = vcvt_f16_f32(*a5);
  v17 = xmmword_1E30B5C10;
  v18 = 8;
  v14 = vdupq_n_s64(1uLL);
  do
  {
    v15 = v14;
    v16 = 1;
    re::uploadDataToTexture(this, a4, &v17, a6, v15.i64, 0, v10++, v19, 8);
  }

  while (v10 != 6);
  v11 = *a6;
  re::DynamicString::format("EnvMap1x1x6-(%f,%f,%f,%f)", &v15, a5->f32[0], a5->f32[1], a5->f32[2], a5->f32[3]);
  if (v15.i8[8])
  {
    v12 = v16;
  }

  else
  {
    v12 = &v15.i8[9];
  }

  [v11 setLabel_];
  result = v15.i64[0];
  if (v15.i64[0])
  {
    if (v15.i8[8])
    {
      return (*(*v15.i64[0] + 40))();
    }
  }

  return result;
}

uint64_t re::makeStockCubeArray@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, float32x4_t *a5@<X4>, id *a6@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  re::makeTexture(a6, this, a2, a3);
  v10 = 0;
  v19[0] = vcvt_f16_f32(*a5);
  v17 = xmmword_1E30B5C10;
  v18 = 8;
  v14 = vdupq_n_s64(1uLL);
  do
  {
    v15 = v14;
    v16 = 1;
    re::uploadDataToTexture(this, a4, &v17, a6, v15.i64, 0, v10++, v19, 8);
  }

  while (v10 != 6);
  v11 = *a6;
  re::DynamicString::format("CubeArray1x1x6x1-(%f,%f,%f,%f)", &v15, a5->f32[0], a5->f32[1], a5->f32[2], a5->f32[3]);
  if (v15.i8[8])
  {
    v12 = v16;
  }

  else
  {
    v12 = &v15.i8[9];
  }

  [v11 setLabel_];
  result = v15.i64[0];
  if (v15.i64[0])
  {
    if (v15.i8[8])
    {
      return (*(*v15.i64[0] + 40))();
    }
  }

  return result;
}

re *re::makeStockMipmapGradient@<X0>(id *this@<X0>, id *a2@<X1>, id *a3@<X2>, void **a4@<X3>, id *a5@<X8>)
{
  result = re::makeTexture(a5, this, a2, a3);
  for (i = 0; i != 7; ++i)
  {
    v10 = (1 << i);
    v11 = re::globalAllocators(result);
    v12 = (*(*v11[2] + 32))(v11[2], v10 << (i + 2), 0);
    v13 = v12;
    v14 = 0;
    v15 = v10 << i;
    v16.i32[0] = dword_1E30B5C50[i];
    v17 = vmovl_u8(v16).u64[0];
    if ((v10 << i) <= 1)
    {
      v15 = 1;
    }

    v18 = vuzp1_s8(v17, v17).u32[0];
    do
    {
      *(v12 + 4 * v14++) = v18;
    }

    while (v15 != v14);
    v22[0] = 0;
    v22[1] = 4 * v10;
    v23 = v10 << (i + 2);
    v21[0] = (1 << i);
    v21[1] = v21[0];
    v21[2] = 1;
    re::uploadDataToTexture(this, a4, v22, a5, v21, 6 - i, 0, v12, v23);
    v20 = re::globalAllocators(v19);
    result = (*(*v20[2] + 40))(v20[2], v13);
  }

  return result;
}

void re::TextureManager::~TextureManager(re::TextureManager *this)
{
  re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(this + 456);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 408);
  if (*(this + 95))
  {
    v2 = re::DataArray<re::Texture>::clear(this + 42);
    if (!*(this + 44))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = *(this + 46);
    (*(**(this + 42) + 40))(*(this + 42), *v3, v2);
    (*(**(this + 42) + 40))(*(this + 42), v3[1]);
    re::DynamicArray<unsigned long>::deinit(this + 336);
    *(this + 95) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 336);
  v4 = *(this + 35);
  if (v4)
  {
    v5 = (this + 280);
    v6 = *(this + 78);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i < v6; ++i)
      {
        v9 = *(this + 37);
        v10 = *(v9 + v7);
        if (v10 < 0)
        {
          *(v9 + v7) = v10 & 0x7FFFFFFF;
          re::TextureHandle::invalidate((v9 + v7 + 16));
          v6 = *(this + 78);
        }

        v7 += 40;
      }

      v4 = *v5;
    }

    (*(*v4 + 40))(v4, *(this + 36));
    *(this + 78) = 0;
    *v5 = 0u;
    *(this + 296) = 0u;
    *(this + 316) = 0x7FFFFFFFLL;
  }

  v11 = *(this + 34);
  if (v11)
  {

    *(this + 34) = 0;
  }

  re::FixedArray<re::DynamicString>::deinit(this + 31);
  v12 = *(this + 29);
  if (v12)
  {

    *(this + 29) = 0;
  }

  v13 = *(this + 28);
  if (v13)
  {

    *(this + 28) = 0;
  }

  v14 = *(this + 27);
  if (v14)
  {

    *(this + 27) = 0;
  }

  v15 = *(this + 26);
  if (v15)
  {

    *(this + 26) = 0;
  }

  v16 = *(this + 25);
  if (v16)
  {

    *(this + 25) = 0;
  }

  v17 = *(this + 24);
  if (v17)
  {

    *(this + 24) = 0;
  }

  v18 = *(this + 23);
  if (v18)
  {

    *(this + 23) = 0;
  }

  v19 = *(this + 22);
  if (v19)
  {

    *(this + 22) = 0;
  }

  v20 = *(this + 21);
  if (v20)
  {

    *(this + 21) = 0;
  }

  v21 = *(this + 20);
  if (v21)
  {

    *(this + 20) = 0;
  }

  v22 = *(this + 19);
  if (v22)
  {

    *(this + 19) = 0;
  }

  v23 = *(this + 18);
  if (v23)
  {

    *(this + 18) = 0;
  }

  v24 = *(this + 17);
  if (v24)
  {

    *(this + 17) = 0;
  }

  v25 = *(this + 16);
  if (v25)
  {

    *(this + 16) = 0;
  }

  v26 = *(this + 15);
  if (v26)
  {

    *(this + 15) = 0;
  }

  v27 = *(this + 14);
  if (v27)
  {

    *(this + 14) = 0;
  }

  v28 = *(this + 13);
  if (v28)
  {

    *(this + 13) = 0;
  }

  v29 = *(this + 12);
  if (v29)
  {

    *(this + 12) = 0;
  }

  v30 = *(this + 11);
  if (v30)
  {

    *(this + 11) = 0;
  }

  v31 = *(this + 10);
  if (v31)
  {

    *(this + 10) = 0;
  }

  v32 = *(this + 9);
  if (v32)
  {

    *(this + 9) = 0;
  }

  v33 = *(this + 8);
  if (v33)
  {

    *(this + 8) = 0;
  }

  v34 = *(this + 7);
  if (v34)
  {

    *(this + 7) = 0;
  }

  v35 = *(this + 6);
  if (v35)
  {

    *(this + 6) = 0;
  }

  v36 = *(this + 5);
  if (v36)
  {

    *(this + 5) = 0;
  }

  v37 = *(this + 4);
  if (v37)
  {

    *(this + 4) = 0;
  }

  v38 = *(this + 3);
  if (v38)
  {

    *(this + 3) = 0;
  }

  v39 = *(this + 2);
  if (v39)
  {

    *(this + 2) = 0;
  }

  v40 = *(this + 1);
  if (v40)
  {

    *(this + 1) = 0;
  }
}

BOOL re::TextureManager::init(id *this, id *a2)
{
  v2 = a2;
  v158 = *MEMORY[0x1E69E9840];
  re::ObjCObject::operator=(this, a2 + 26);
  v4 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v4 setHazardTrackingMode_];
  v140 = 0;
  v141 = 0;
  isPhysicalHardware = re::mtl::Device::isPhysicalHardware(this);
  if (isPhysicalHardware)
  {
    v6 = [v4 setStorageMode_];
    v141 = 0;
    v142 = 0;
    v140 = 0;
  }

  else
  {
    [v4 setStorageMode_];
    v7 = [*this newCommandQueue];

    v142 = v7;
    if ((atomic_load_explicit(&qword_1EE1B9958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9958))
    {
      v133 = re::ns::String::String(&qword_1EE1B9950, "uploadFallbackTextureQueue");
      __cxa_guard_release(v133 + 1);
    }

    v8 = qword_1EE1B9950;
    [v142 setLabel:v8];

    re::mtl::CommandQueue::makeCommandBuffer(&v142, buf);
    v9 = *buf;
    *buf = 0;
    v10 = v140;
    v140 = v9;

    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v140, buf);
    v11 = *buf;
    *buf = 0;
    v12 = v141;
    v141 = v11;
  }

  if (!v13)
  {
LABEL_142:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_143;
  }

  v15 = v13;
  v134 = isPhysicalHardware;
  for (i = 0; i != 232; i += 8)
  {
    v17 = &v13[i];
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    v17[5] = 0;
    v17[6] = 0;
    v17[4] = 0;
  }

  v13[232] = 0;
  v13[233] = 0;
  v13[234] = 0;
  v13[237] = 0;
  v13[238] = 0;
  v13[236] = 0;
  *buf = "black";
  v18 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v18, 0, v19, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 2;
  *v15 = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 1, &buf[8]);
  v20 = v156;
  v21 = v155;
  *(v15 + 1) = v154;
  *(v15 + 2) = v21;
  v15[6] = v20;
  if (*&buf[8])
  {
  }

  *buf = "white";
  v22 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v22, 0, v23, 70);
  *&v154 = re::makeTextureColor1x1;
  __asm { FMOV            V0.4S, #1.0 }

  v136 = _Q0;
  v155 = _Q0;
  *&v156 = this + 3;
  v15[8] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 9, &buf[8]);
  v29 = v155;
  *(v15 + 5) = v154;
  *(v15 + 6) = v29;
  v15[14] = v156;
  if (*&buf[8])
  {
  }

  *buf = "gray";
  v30 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v30, 0, v31, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30B4E10;
  *&v156 = this + 4;
  v15[16] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 17, &buf[8]);
  v32 = v155;
  *(v15 + 9) = v154;
  *(v15 + 10) = v32;
  v15[22] = v156;
  if (*&buf[8])
  {
  }

  *buf = "graySrgb";
  v33 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v33, 0, v34, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30B5C20;
  *&v156 = this + 5;
  v15[24] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 25, &buf[8]);
  v35 = v155;
  *(v15 + 13) = v154;
  *(v15 + 14) = v35;
  v15[30] = v156;
  if (*&buf[8])
  {
  }

  *buf = "lightBlue";
  v36 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v36, 0, v37, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30B5C30;
  *&v156 = this + 6;
  v15[32] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 33, &buf[8]);
  v38 = v155;
  *(v15 + 17) = v154;
  *(v15 + 18) = v38;
  v15[38] = v156;
  if (*&buf[8])
  {
  }

  *buf = "transparentBlank";
  v39 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v39, 0, v40, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = 0uLL;
  *&v156 = this + 7;
  v15[40] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 41, &buf[8]);
  v41 = v155;
  *(v15 + 21) = v154;
  *(v15 + 22) = v41;
  v15[46] = v156;
  if (*&buf[8])
  {
  }

  *buf = "stockEnvMap";
  re::textureDescriptorEnvMapColor(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeStockEnvMapColor;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 11;
  v15[48] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 49, &buf[8]);
  v42 = v155;
  *(v15 + 25) = v154;
  *(v15 + 26) = v42;
  v15[54] = v156;
  if (*&buf[8])
  {
  }

  *buf = "stockEnvMapGraySrgb";
  re::textureDescriptorEnvMapColor(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeStockEnvMapColor;
  v155 = xmmword_1E30B5C20;
  *&v156 = this + 12;
  v15[56] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 57, &buf[8]);
  v43 = v155;
  *(v15 + 29) = v154;
  *(v15 + 30) = v43;
  v15[62] = v156;
  if (*&buf[8])
  {
  }

  *buf = "stockEnvMapArray";
  v44 = *(v2 + 369);
  v45 = [v4 storageMode];
  v46 = v45;
  v135 = v2;
  if (v44 == 1)
  {
    v145 = 115;
    *v146 = v45;
    v143 = 2;
    v144 = 0;
    TextureCompressionType = re::mtl::getTextureCompressionType(this, v146, &v145, &v144, &v143);
    v48 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    *&buf[8] = v48;
    [v48 setStorageMode_];
    if (([v48 respondsToSelector_] & 1) != 0 || objc_msgSend(v48, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v48 setCompressionType_];
    }

    [v48 setTextureType_];
    [v48 setArrayLength_];
    [v48 setWidth_];
    [v48 setHeight_];
    [v48 setPixelFormat_];
    v2 = v135;
  }

  else
  {
    re::textureDescriptorEnvMapColor(&buf[8], this, v45);
  }

  v49 = re::makeStockEnvMapColor;
  if (*(v2 + 369))
  {
    v49 = re::makeStockCubeArray;
  }

  *&v154 = v49;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 8;
  v15[128] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 129, &buf[8]);
  v50 = v155;
  *(v15 + 65) = v154;
  *(v15 + 66) = v50;
  v15[134] = v156;
  if (*&buf[8])
  {
  }

  *buf = "black3D";
  re::textureDescriptorColor1x1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTextureColor1x1x1;
  v155 = 0uLL;
  *&v156 = this + 13;
  v15[64] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 65, &buf[8]);
  v51 = v155;
  *(v15 + 33) = v154;
  *(v15 + 34) = v51;
  v15[70] = v156;
  if (*&buf[8])
  {
  }

  *buf = "white3D";
  re::textureDescriptorColor1x1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTextureColor1x1x1;
  v155 = xmmword_1E304F3C0;
  *&v156 = this + 14;
  v15[72] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 73, &buf[8]);
  v52 = v155;
  *(v15 + 37) = v154;
  *(v15 + 38) = v52;
  v15[78] = v156;
  if (*&buf[8])
  {
  }

  *buf = "mipmapGradient";
  v53 = [v4 storageMode];
  v145 = 70;
  *v146 = v53;
  v143 = 2;
  v144 = 0;
  v54 = re::mtl::getTextureCompressionType(this, v146, &v145, &v144, &v143);
  v55 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *&buf[8] = v55;
  [v55 setStorageMode_];
  if (([v55 respondsToSelector_] & 1) != 0 || objc_msgSend(v55, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v55 setCompressionType_];
  }

  [v55 setWidth_];
  [v55 setHeight_];
  [v55 setPixelFormat_];
  [v55 setMipmapLevelCount_];
  *&v154 = re::makeStockMipmapGradient;
  v155 = xmmword_1E304F3C0;
  *&v156 = this + 34;
  v15[80] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 81, &buf[8]);
  v56 = v155;
  *(v15 + 41) = v154;
  *(v15 + 42) = v56;
  v15[86] = v156;
  if (*&buf[8])
  {
  }

  *buf = "red";
  v57 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v57, 0, v58, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E3060D30;
  *&v156 = this + 15;
  v15[88] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 89, &buf[8]);
  v59 = v155;
  *(v15 + 45) = v154;
  *(v15 + 46) = v59;
  v15[94] = v156;
  if (*&buf[8])
  {
  }

  *buf = "green";
  v60 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v60, 0, v61, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E3071540;
  *&v156 = this + 16;
  v15[96] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 97, &buf[8]);
  v62 = v155;
  *(v15 + 49) = v154;
  *(v15 + 50) = v62;
  v15[102] = v156;
  if (*&buf[8])
  {
  }

  *buf = "cyan";
  v63 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v63, 0, v64, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30B5C30;
  *&v156 = this + 17;
  v15[104] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 105, &buf[8]);
  v65 = v155;
  *(v15 + 53) = v154;
  *(v15 + 54) = v65;
  v15[110] = v156;
  if (*&buf[8])
  {
  }

  *buf = "blackArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 9;
  v15[112] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 113, &buf[8]);
  v66 = v155;
  *(v15 + 57) = v154;
  *(v15 + 58) = v66;
  v15[118] = v156;
  if (*&buf[8])
  {
  }

  *buf = "transparentBlankArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = 0uLL;
  *&v156 = this + 10;
  v15[120] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 121, &buf[8]);
  v67 = v155;
  *(v15 + 61) = v154;
  *(v15 + 62) = v67;
  v15[126] = v156;
  if (*&buf[8])
  {
  }

  *buf = "black1D";
  re::textureDescriptorColor1D(&buf[8], [v4 storageMode]);
  *&v154 = re::makeTextureColor1D;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 18;
  v15[136] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 137, &buf[8]);
  v68 = v155;
  *(v15 + 69) = v154;
  *(v15 + 70) = v68;
  v15[142] = v156;
  if (*&buf[8])
  {
  }

  *buf = "black1DArray";
  v69 = [v4 storageMode];
  v70 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *&buf[8] = v70;
  [v70 setStorageMode_];
  [v70 setTextureType_];
  [v70 setWidth_];
  [v70 setPixelFormat_];
  *&v154 = re::makeTextureColor1DArray;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 19;
  v15[144] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 145, &buf[8]);
  v71 = v155;
  *(v15 + 73) = v154;
  *(v15 + 74) = v71;
  v15[150] = v156;
  if (*&buf[8])
  {
  }

  *buf = "stockTextureBuffer";
  v72 = [v4 storageMode];
  v73 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *&buf[8] = v73;
  [v73 setStorageMode_];
  [v73 setTextureType_];
  [v73 setWidth_];
  [v73 setPixelFormat_];
  *&v154 = re::makeTextureBuffer;
  v155 = 0uLL;
  *&v156 = this + 20;
  v15[152] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 153, &buf[8]);
  v74 = v155;
  *(v15 + 77) = v154;
  *(v15 + 78) = v74;
  v15[158] = v156;
  if (*&buf[8])
  {
  }

  *buf = "whiteArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = v136;
  *&v156 = this + 21;
  v15[160] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 161, &buf[8]);
  v75 = v155;
  *(v15 + 81) = v154;
  *(v15 + 82) = v75;
  v15[166] = v156;
  if (*&buf[8])
  {
  }

  *buf = "white1D";
  re::textureDescriptorColor1D(&buf[8], [v4 storageMode]);
  *&v154 = re::makeTextureColor1D;
  v155 = v136;
  *&v156 = this + 22;
  v15[168] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 169, &buf[8]);
  v76 = v155;
  *(v15 + 85) = v154;
  *(v15 + 86) = v76;
  v15[174] = v156;
  if (*&buf[8])
  {
  }

  *buf = "missingUITexture";
  v77 = [v4 storageMode];
  re::textureDescriptorColor1x1(&buf[8], this, v77, 0, v78, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E3071540;
  *&v156 = 0;
  v15[176] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 177, &buf[8]);
  v79 = v155;
  *(v15 + 89) = v154;
  *(v15 + 90) = v79;
  v15[182] = v156;
  if (*&buf[8])
  {
  }

  *buf = "writableWhiteTexture";
  re::textureDescriptorColor1x1(&buf[8], this, [v4 storageMode], 1, 3u, 70);
  *&v154 = re::makeTextureColor1x1;
  v155 = v136;
  *&v156 = this + 23;
  v15[184] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 185, &buf[8]);
  v80 = v155;
  *(v15 + 93) = v154;
  *(v15 + 94) = v80;
  v15[190] = v156;
  if (*&buf[8])
  {
  }

  *buf = "grayArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = xmmword_1E30B4E10;
  *&v156 = this + 24;
  v15[192] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 193, &buf[8]);
  v81 = v155;
  *(v15 + 97) = v154;
  *(v15 + 98) = v81;
  v15[198] = v156;
  if (*&buf[8])
  {
  }

  *buf = "graySrgbArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = xmmword_1E30B5C20;
  *&v156 = this + 25;
  v15[200] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 201, &buf[8]);
  v82 = v155;
  *(v15 + 101) = v154;
  *(v15 + 102) = v82;
  v15[206] = v156;
  if (*&buf[8])
  {
  }

  *buf = "infinity";
  v83 = [v4 storageMode];
  v145 = 115;
  *v146 = v83;
  v143 = 2;
  v144 = 0;
  v84 = re::mtl::getTextureCompressionType(this, v146, &v145, &v144, &v143);
  v85 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *&buf[8] = v85;
  [v85 setStorageMode_];
  if (([v85 respondsToSelector_] & 1) != 0 || objc_msgSend(v85, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v85 setCompressionType_];
  }

  [v85 setTextureType_];
  [v85 setWidth_];
  [v85 setHeight_];
  [v85 setArrayLength_];
  [v85 setPixelFormat_];
  *&v154 = re::makeTextureColor1x1_Float16;
  v86.i64[0] = 0x7F0000007FLL;
  v86.i64[1] = 0x7F0000007FLL;
  v137 = vnegq_f32(v86);
  v155 = v137;
  *&v156 = this + 26;
  v15[208] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 209, &buf[8]);
  v87 = v155;
  *(v15 + 105) = v154;
  *(v15 + 106) = v87;
  v15[214] = v156;
  if (*&buf[8])
  {
  }

  *buf = "infinityArray";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = v137;
  *&v156 = this + 27;
  v15[216] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 217, &buf[8]);
  v88 = v155;
  *(v15 + 109) = v154;
  *(v15 + 110) = v88;
  v15[222] = v156;
  if (*&buf[8])
  {
  }

  *buf = "blackUint";
  re::textureDescriptorColor1x1(&buf[8], this, [v4 storageMode], 1, 0, 73);
  *&v154 = re::makeTextureColor1x1;
  v155 = xmmword_1E30474D0;
  *&v156 = this + 28;
  v15[224] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 225, &buf[8]);
  v89 = v155;
  *(v15 + 113) = v154;
  *(v15 + 114) = v89;
  v15[230] = v156;
  if (*&buf[8])
  {
  }

  *buf = "vdSentinel";
  re::textureDescriptor2DArrayColor1x1(&buf[8], this, [v4 storageMode]);
  *&v154 = re::makeTexture2DArrayColor1x1;
  v155 = xmmword_1E30B5C40;
  *&v156 = this + 29;
  v15[232] = *buf;
  NS::SharedPtr<MTL::Texture>::operator=(v15 + 233, &buf[8]);
  v90 = v155;
  *(v15 + 117) = v154;
  *(v15 + 118) = v90;
  v15[238] = v156;
  v91 = *&buf[8];
  if (*&buf[8])
  {
  }

  v92 = 0;
  isPhysicalHardware = 0;
  v93 = v15;
  do
  {
    v94 = this[32];
    if (v94 <= isPhysicalHardware)
    {
      v145 = 0;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      v147 = 1024;
      v148 = 468;
      v149 = 2048;
      v150 = isPhysicalHardware;
      v151 = 2048;
      v152 = v94;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_141:
      v145 = 0;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v146 = 136315906;
      *&v146[4] = "operator[]";
      v147 = 1024;
      v148 = 468;
      v149 = 2048;
      v150 = v94;
      v151 = 2048;
      v152 = isPhysicalHardware;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_142;
    }

    v95 = *v93;
    v93 += 8;
    v96 = this[33];
    v97 = strlen(v95);
    *buf = v95;
    *&buf[8] = v97;
    v98 = re::DynamicString::operator=(&v96[v92], buf);
    ++isPhysicalHardware;
    v92 += 32;
  }

  while (isPhysicalHardware != 30);
  v99 = 0;
  v100 = 0;
  do
  {
    if (v15[v99 + 6])
    {
      v98 = [*this heapTextureSizeAndAlignWithDescriptor_];
      if (v100 % v101)
      {
        v102 = v101 - v100 % v101;
      }

      else
      {
        v102 = 0;
      }

      v100 += v98 + v102;
    }

    v99 += 8;
  }

  while (v99 != 240);
  if (v100 > 0x40000 && (atomic_exchange(_MergedGlobals_449, 1u) & 1) == 0)
  {
    v103 = *re::graphicsLogObjects(v98);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v100 >> 10;
      _os_log_impl(&dword_1E1C61000, v103, OS_LOG_TYPE_DEFAULT, "Stock texture heap size is unexpectedly large (%zu KiB).", buf, 0xCu);
    }
  }

  [v4 setSize_];
  *buf = [*this newHeapWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 1, buf);
  if (*buf)
  {
  }

  for (j = 0; j != 240; j += 8)
  {
    v105 = &v15[j];
    if (v15[j + 6])
    {
      (v105[2])(buf, this, this + 8, v105 + 1, &v141, v105 + 4);
      NS::SharedPtr<MTL::Texture>::operator=(v105[6], buf);
      if (*buf)
      {
      }
    }
  }

  if ((v134 & 1) == 0)
  {
    [v141 endEncoding];
    v106 = v140;
    [v140 commit];
    [v106 waitUntilCompleted];
  }

  TextureTableForName = re::MaterialManager::findOrCreateTextureTableForName(v135[3], "fallback");
  this[30] = TextureTableForName;
  TextureTableForName += 72;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(TextureTableForName, 0x1EuLL);
  v94 = 0;
  ++*(TextureTableForName + 24);
  while (2)
  {
    v108 = v15[8 * v94 + 6];
    if (v108)
    {
      isPhysicalHardware = this[32];
      if (isPhysicalHardware <= v94)
      {
        goto LABEL_141;
      }

      v109 = this[33] + 32 * v94;
      v110 = *(v109 + 8);
      if (v110)
      {
        v112 = *(v109 + 16);
        if (v112)
        {
          LOBYTE(v109) = *v112;
          goto LABEL_112;
        }

        v116 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v111 = v110 >> 8;
        v112 = (v109 + 9);
        LOBYTE(v109) = v111;
LABEL_112:
        if (v109)
        {
          v109 = v109;
          v113 = v112[1];
          if (v113)
          {
            v114 = v112 + 2;
            do
            {
              v109 = 31 * v109 + v113;
              v115 = *v114++;
              v113 = v115;
            }

            while (v115);
          }

          v116 = v109 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v116 = 0;
        }
      }

      v117 = this[30];
      v139 = v116;
      re::TextureTable::setTexture(v117, &v139, v108);
      v139 = 0;
    }

    if (++v94 != 30)
    {
      continue;
    }

    break;
  }

  isPhysicalHardware = this[32];
  if (isPhysicalHardware <= 0x16)
  {
LABEL_143:
    v145 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v146 = 136315906;
    *&v146[4] = "operator[]";
    v147 = 1024;
    v148 = 468;
    v149 = 2048;
    v150 = 22;
    v151 = 2048;
    v152 = isPhysicalHardware;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v118 = this[30];
  v119 = this[33];
  v120 = *(v119 + 712);
  if (v120)
  {
    v122 = *(v119 + 720);
    v123 = this + 7;
    if (v122)
    {
      LOBYTE(v119) = *v122;
      goto LABEL_126;
    }

    v127 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = v120 >> 8;
    v122 = (v119 + 713);
    LOBYTE(v119) = v121;
    v123 = this + 7;
LABEL_126:
    if (v119)
    {
      v119 = v119;
      v124 = v122[1];
      if (v124)
      {
        v125 = v122 + 2;
        do
        {
          v119 = 31 * v119 + v124;
          v126 = *v125++;
          v124 = v126;
        }

        while (v126);
      }

      v127 = v119 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 = 0;
    }
  }

  v138 = v127;
  re::TextureTable::setTexture(v118, &v138, v123);
  v138 = 0;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 42, 0);
  ++*(this + 90);
  *(this + 95) = 32;
  re::DataArray<re::Texture>::allocBlock(this + 42);
  v129 = *this;
  for (k = 1; k != 241; k += 8)
  {
    v131 = v15[k];
    if (v131)
    {

      v15[k] = 0;
    }
  }

  if (v4)
  {
  }

  return v129 != 0;
}

void re::TextureManager::deinit(re::TextureManager *this)
{
  re::DataArray<re::Texture>::clear(this + 42);
  *(this + 30) = 0;

  *(this + 2) = 0;
  *(this + 3) = 0;

  *(this + 4) = 0;
  *(this + 5) = 0;

  *(this + 6) = 0;
  *(this + 7) = 0;

  *(this + 11) = 0;
  *(this + 12) = 0;

  *(this + 8) = 0;
  *(this + 13) = 0;

  *(this + 14) = 0;
  *(this + 34) = 0;

  *(this + 15) = 0;
  *(this + 16) = 0;

  *(this + 17) = 0;
  *(this + 9) = 0;

  *(this + 10) = 0;
  *(this + 18) = 0;

  *(this + 19) = 0;
  *(this + 20) = 0;

  *(this + 24) = 0;
  *(this + 25) = 0;

  *(this + 26) = 0;
  *(this + 27) = 0;

  *(this + 28) = 0;
  v2 = *this;
  *this = 0;
}

double re::DataArray<re::Texture>::clear(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v12, a1, 0);
  if (v12 != a1 || DWORD2(v12) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v12);
      re::DataArray<re::Texture>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
    }

    while (v12 != a1 || WORD4(v12) != 0xFFFF || WORD5(v12) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6 - 16;
    do
    {
      if (v6 <= v7)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v12 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
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

      v9 = (a1[4] + v8);
      (*(**a1 + 40))(*a1, *v9);
      (*(**a1 + 40))(*a1, v9[1]);
      v10 = a1[2];
      if (v10 <= v7)
      {
        goto LABEL_22;
      }

      v6 = v10 - 1;
      if (v10 - 1 > v7)
      {
        *(a1[4] + v8) = *(a1[4] + 16 * v10 - 16);
        v6 = a1[2] - 1;
      }

      a1[2] = v6;
      ++*(a1 + 6);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::TextureManager::createRenderTarget(id *a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, id *a9@<X8>)
{
  v22 = *a1;
  v17 = a7 | 4u;
  v18 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v19 = v18;
  if (a5 >= 2)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  [v18 setTextureType_];
  [v19 setWidth_];
  [v19 setHeight_];
  [v19 setPixelFormat_];
  [v19 setMipmapLevelCount_];
  [v19 setUsage_];
  if (a8 == 0xFFFF)
  {
    v21 = 0;
  }

  else
  {
    v21 = a8;
  }

  [v19 setResourceOptions_];
  [v19 setProtectionOptions_];
  re::mtl::Device::makeTexture(v19, &v22, a9);
  if (a6)
  {
    [*a9 setLabel_];
  }

  if (v19)
  {
  }
}

id re::TextureManager::stockTextureForType@<X0>(re *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v5 = *(a1 + 11);
      }

      else
      {
        v5 = *(a1 + 8);
      }

      goto LABEL_19;
    }

    if (a2 == 7)
    {
      v5 = *(a1 + 13);
      goto LABEL_19;
    }

    if (a2 == 9)
    {
      v5 = *(a1 + 20);
      goto LABEL_19;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v5 = *(a1 + 2);
      goto LABEL_19;
    }

    if (a2 == 3)
    {
      v5 = *(a1 + 9);
      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {
      v5 = *(a1 + 18);
      goto LABEL_19;
    }

    if (a2 == 1)
    {
      v5 = *(a1 + 19);
LABEL_19:
      result = v5;
      goto LABEL_20;
    }
  }

  v7 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Texture type %u not supported", v8, 8u);
  }

  result = 0;
LABEL_20:
  *a3 = result;
  return result;
}

void re::TextureManager::dequeueMipmapGeneration(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 100);
  v4 = 0;
  *a2 = 0;
  v5 = 0u;
  *(a2 + 8) = 0u;
  v7 = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 1;
  v6 = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2, &this[102]);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&this[102], &v4);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v4);
  os_unfair_lock_unlock(this + 100);
}

void re::TextureManager::queueBlurGeneration(os_unfair_lock_s *a1, void **a2, void **a3, char a4)
{
  os_unfair_lock_lock(a1 + 112);
  v8 = 0;
  v9 = 0;
  v10 = 3;
  NS::SharedPtr<MTL::Buffer>::operator=(&v8, a2);
  NS::SharedPtr<MTL::Buffer>::operator=(&v9, a3);
  v10 = a4;
  re::DynamicArray<re::RenderGraphBlurGenerationData>::add(&a1[114], &v8);
  os_unfair_lock_unlock(a1 + 112);
  if (v9)
  {

    v9 = 0;
  }

  if (v8)
  {
  }
}

id re::DynamicArray<re::RenderGraphBlurGenerationData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphBlurGenerationData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 24 * v4;
  *v5 = *a2;
  result = *(a2 + 8);
  *(v5 + 8) = result;
  *(v5 + 16) = *(a2 + 16);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::TextureManager::dequeueBlurGeneration(os_unfair_lock_s *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 112);
  v4 = 0;
  *a2 = 0;
  v5 = 0u;
  *(a2 + 8) = 0u;
  v7 = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 1;
  v6 = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2, &this[114]);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&this[114], &v4);
  re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(&v4);
  os_unfair_lock_unlock(this + 112);
}

void re::TextureManager::registerTexture(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  re::TextureManager::registerTextureAndHeap(a1, a2, &v3, a3);
  if (v3)
  {
  }
}

void re::TextureManager::registerTextureAndHeap(uint64_t a1@<X0>, void **a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock((a1 + 328));
  v9 = *(a1 + 392);
  if ((v9 + 1) >> 24)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  *(a1 + 392) = v10;
  v11 = *(a1 + 388);
  v12 = *(a1 + 390);
  if (v11 == 0xFFFF && v12 == 0xFFFF)
  {
    if (*(a1 + 384) >= *(a1 + 380))
    {
      re::DataArray<re::Texture>::allocBlock((a1 + 336));
    }

    v16 = *(a1 + 352);
    v12 = (v16 - 1);
    if (!v16)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 384);
    if (v11 >= 0x10000)
    {
      goto LABEL_22;
    }

    v17 = (*(a1 + 368) + 16 * v12);
    *(a1 + 384) = v11 + 1;
    *(v17[1] + 4 * v11) = *(a1 + 392);
    v15 = *v17 + 88 * v11;
  }

  else
  {
    if (*(a1 + 352) <= v12)
    {
LABEL_20:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      v20 = 0;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v21) = 136315906;
      *(&v21 + 4) = "operator[]";
      WORD6(v21) = 1024;
      HIWORD(v21) = 789;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_22:
      re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v11, v20, v21);
      _os_crash();
      __break(1u);
    }

    v14 = (*(a1 + 368) + 16 * v12);
    *(v14[1] + 4 * v11) = v10;
    v15 = *v14 + 88 * v11;
    *(a1 + 388) = *v15;
  }

  ++*(a1 + 376);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *v15 = 1;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0x7FFFFFFF00000000;
  *(v15 + 80) = 0;
  v18 = v12 + (v11 >> 16);
  if (*(a1 + 352) <= v18)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v19 = (*(*(a1 + 368) + 16 * v18) + 88 * v11);
  NS::SharedPtr<MTL::Buffer>::operator=(v19 + 2, a2);
  NS::SharedPtr<MTL::Buffer>::operator=(v19 + 1, a2);
  NS::SharedPtr<MTL::Buffer>::operator=(v19 + 4, a3);
  NS::SharedPtr<MTL::Buffer>::operator=(v19 + 3, a3);
  *a4 = a1;
  a4[1] = v19;

  os_unfair_lock_unlock((a1 + 328));
}

void re::TextureManager::synchronizeTextures(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 82);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v10, &this[84], 0);
  if (&this[84] != v10 || DWORD2(v10) != 0xFFFFFFFFLL)
  {
    do
    {
      if (atomic_load(re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(&v10)))
      {
        v4 = re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(&v10);
        v5 = re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(&v10);
        NS::SharedPtr<MTL::Buffer>::operator=((v5 + 8), (v4 + 16));
        v6 = re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(&v10);
        v7 = re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(&v10);
        NS::SharedPtr<MTL::Buffer>::operator=((v7 + 24), (v6 + 32));
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      }

      else
      {
        v9 = v10;
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
        v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v9);
        re::DataArray<re::Texture>::destroy(&this[84], v8);
      }
    }

    while (v10 != &this[84] || WORD4(v10) != 0xFFFF || WORD5(v10) != 0xFFFF);
  }

  os_unfair_lock_unlock(this + 82);
}

uint64_t re::DataArray<re::Texture>::DataArrayIterator<re::Texture,re::Texture&>::operator*(unsigned __int16 *a1)
{
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 88 * a1[4];
}

void re::DataArray<re::Texture>::destroy(uint64_t a1, uint64_t a2)
{
  v2 = WORD1(a2);
  v3 = *(a1 + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v6 = (v3 - 1) == WORD1(a2) ? *(a1 + 48) : *(a1 + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(a1 + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          v12 = v11 + 88 * a2;
          re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit((v12 + 40));
          v13 = *(v12 + 32);
          if (v13)
          {

            *(v12 + 32) = 0;
          }

          v14 = *(v12 + 24);
          if (v14)
          {

            *(v12 + 24) = 0;
          }

          v15 = *(v12 + 16);
          if (v15)
          {

            *(v12 + 16) = 0;
          }

          v16 = *(v12 + 8);
          if (v16)
          {

            *(v12 + 8) = 0;
          }

          if (*(a1 + 16) <= v2)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(a1 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(a1 + 52);
          *(a1 + 52) = v4;
          --*(a1 + 40);
        }
      }
    }
  }
}

_anonymous_namespace_ *re::DataArray<re::Texture>::allocBlock(void *a1)
{
  v3 = 88 * *(a1 + 11);
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

void *re::DynamicArray<re::RenderGraphBlurGenerationData>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphBlurGenerationData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          *(v11 + 16) = *(v8 + 16);
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 24;
          v11 += 3;
          v10 -= 24;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

FILE *re::parseFontLayout@<X0>(re::FileStreamReader *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::FileStreamReader::open(a1, v68);
  if (v68[0])
  {
    *(&v65 + 1) = 0;
    v66 = 0;
    v67 = 0;
    re::DynamicString::setCapacity(&v65, 0);
    if (re::readLineFromStream(&v69, &v65, v7))
    {
      if (BYTE8(v65))
      {
        v8 = v66;
      }

      else
      {
        v8 = &v65 + 9;
      }

      v9 = atof(v8);
      *a2 = v9;
      if (re::readLineFromStream(&v69, &v65, v10))
      {
        v56 = a1;
        v57 = a3;
        if (BYTE8(v65))
        {
          v11 = v66;
        }

        else
        {
          v11 = &v65 + 9;
        }

        v13 = atof(v11);
        *(a2 + 4) = v13;
        if (*(a2 + 16) <= 0x5EuLL)
        {
          re::DynamicArray<re::Vector4<float>>::setCapacity((a2 + 8), 0x5FuLL);
        }

        for (i = 0; i != 95; ++i)
        {
          if (!re::readLineFromStream(&v69, &v65, v12))
          {
            re::DynamicString::format("[%s] Failed to parse font layout %luth glyphBound.", &v63, v56, i);
            goto LABEL_94;
          }

          v15 = 0;
          v16 = 0;
          v62 = 0uLL;
          do
          {
            v17 = re::DynamicString::find(&v65, " ", 1, v16, &v60);
            v63 = 0u;
            v64 = 0u;
            re::DynamicString::setCapacity(&v63, 0);
            if (v60 == 1)
            {
              v18 = v61;
              re::DynamicString::substr(&v65, v16, v61 - v16, &v58);
              re::DynamicString::operator=(&v63, &v58);
              if (v58 && (v59 & 1) != 0)
              {
                (*(*v58 + 40))();
              }

              v16 = v18 + 1;
            }

            else
            {
              if (BYTE8(v65))
              {
                v19 = *(&v65 + 1) >> 1;
              }

              else
              {
                v19 = BYTE8(v65) >> 1;
              }

              re::DynamicString::substr(&v65, v16, v19, &v58);
              re::DynamicString::operator=(&v63, &v58);
              if (v58 && (v59 & 1) != 0)
              {
                (*(*v58 + 40))();
              }
            }

            v20 = BYTE8(v63) & 1;
            if (BYTE8(v63))
            {
              v21 = v64;
            }

            else
            {
              v21 = &v63 + 9;
            }

            v22 = atof(v21);
            v62.n128_f32[v15] = v22;
            if (v63 && v20)
            {
              (*(*v63 + 40))();
            }

            ++v15;
          }

          while (v15 != 4);
          re::DynamicArray<re::Vector4<float>>::add((a2 + 8), &v62);
        }

        if (*(a2 + 56) <= 0x2340uLL)
        {
          re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a2 + 48), 0x2341uLL);
        }

        v23 = 0;
        while (2)
        {
          v55 = v23;
          for (j = 0; j != 95; ++j)
          {
            if (!re::readLineFromStream(&v69, &v65, v12))
            {
              re::DynamicString::format("[%s] Failed to parse font layout glyph offset for the pair [%lu, %lu].", &v63, v56, v55, j);
              goto LABEL_94;
            }

            v25 = 0;
            v60 = 0;
            v26 = &v60;
            v27 = 1;
            do
            {
              v28 = v27;
              v29 = re::DynamicString::find(&v65, " ", 1, v25, &v62);
              v63 = 0u;
              v64 = 0u;
              re::DynamicString::setCapacity(&v63, 0);
              if (v62.n128_u8[0] == 1)
              {
                v30 = v62.n128_u64[1];
                re::DynamicString::substr(&v65, v25, v62.n128_u64[1] - v25, &v58);
                re::DynamicString::operator=(&v63, &v58);
                if (v58 && (v59 & 1) != 0)
                {
                  (*(*v58 + 40))();
                }

                v25 = v30 + 1;
              }

              else
              {
                if (BYTE8(v65))
                {
                  v31 = *(&v65 + 1) >> 1;
                }

                else
                {
                  v31 = BYTE8(v65) >> 1;
                }

                re::DynamicString::substr(&v65, v25, v31, &v58);
                re::DynamicString::operator=(&v63, &v58);
                if (v58 && (v59 & 1) != 0)
                {
                  (*(*v58 + 40))();
                }
              }

              v32 = BYTE8(v63) & 1;
              if (BYTE8(v63))
              {
                v33 = v64;
              }

              else
              {
                v33 = &v63 + 9;
              }

              v34 = atof(v33);
              *v26 = v34;
              if (v63 && v32)
              {
                (*(*v63 + 40))();
              }

              v27 = 0;
              v26 = &v60 + 1;
            }

            while ((v28 & 1) != 0);
            re::DynamicArray<unsigned long>::add((a2 + 48), &v60);
          }

          v23 = v55 + 1;
          if (v55 != 94)
          {
            continue;
          }

          break;
        }

        v35 = 0;
        while (re::readLineFromStream(&v69, &v65, v12))
        {
          v36 = 0;
          v37 = 0;
          v62 = 0uLL;
          do
          {
            v38 = re::DynamicString::find(&v65, " ", 1, v37, &v60);
            v63 = 0u;
            v64 = 0u;
            re::DynamicString::setCapacity(&v63, 0);
            if (v60 == 1)
            {
              v39 = v61;
              re::DynamicString::substr(&v65, v37, v61 - v37, &v58);
              re::DynamicString::operator=(&v63, &v58);
              if (v58 && (v59 & 1) != 0)
              {
                (*(*v58 + 40))();
              }

              v37 = v39 + 1;
            }

            else
            {
              if (BYTE8(v65))
              {
                v40 = *(&v65 + 1) >> 1;
              }

              else
              {
                v40 = BYTE8(v65) >> 1;
              }

              re::DynamicString::substr(&v65, v37, v40, &v58);
              re::DynamicString::operator=(&v63, &v58);
              if (v58 && (v59 & 1) != 0)
              {
                (*(*v58 + 40))();
              }
            }

            v41 = BYTE8(v63) & 1;
            if (BYTE8(v63))
            {
              v42 = v64;
            }

            else
            {
              v42 = &v63 + 9;
            }

            v43 = atof(v42);
            v62.n128_f32[v36] = v43;
            if (v63 && v41)
            {
              (*(*v63 + 40))();
            }

            ++v36;
          }

          while (v36 != 4);
          re::DynamicArray<re::Vector4<float>>::add((a2 + 88), &v62);
          if (++v35 == 95)
          {
            *v57 = 1;
            goto LABEL_95;
          }
        }

        re::DynamicString::format("[%s] Failed to parse font layout %lu glyphTexcoordBounds.", &v63, v56, v35);
LABEL_94:
        v52 = v63;
        v53 = v64;
        *v57 = 0;
        *(v57 + 8) = v52;
        *(v57 + 24) = v53;
LABEL_95:
        v48 = v65;
        if (v65 && (BYTE8(v65) & 1) != 0)
        {
          v49 = v66;
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      re::DynamicString::format("[%s] Failed to parse font layout belowBaselineHeight.", &v63, a1);
    }

    else
    {
      re::DynamicString::format("[%s] Failed to parse font layout lineHeight.", &v63, a1);
    }

    v50 = v63;
    v51 = v64;
    *a3 = 0;
    *(a3 + 8) = v50;
    *(a3 + 24) = v51;
    goto LABEL_95;
  }

  re::formattedErrorMessage<re::DetailedError>(&v69, &v63);
  if (BYTE8(v63))
  {
    v44 = v64;
  }

  else
  {
    v44 = &v63 + 9;
  }

  re::DynamicString::format("[%s] Failed to open font layout file. Error: %s", &v65, a1, v44);
  v45 = v65;
  v46 = v66;
  v47 = v67;
  *a3 = 0;
  *(a3 + 8) = v45;
  *(a3 + 24) = v46;
  *(a3 + 32) = v47;
  v48 = v63;
  if (v63 && (BYTE8(v63) & 1) != 0)
  {
    v49 = v64;
LABEL_98:
    (*(*v48 + 40))(v48, v49);
  }

LABEL_99:
  if (v68[0] == 1)
  {
    result = v70;
    if (v70)
    {
      if (v72 == 1)
      {
        return fclose(v70);
      }
    }
  }

  else
  {
    result = v71;
    if (v71 && (v72 & 1) != 0)
    {
      return (*(v71->_p + 5))();
    }
  }

  return result;
}

BOOL re::readLineFromStream(re *this, re::StreamReader *a2, re::DynamicString *a3)
{
  if (*(a2 + 8))
  {
    *(a2 + 1) = 1;
    v5 = *(a2 + 2);
  }

  else
  {
    *(a2 + 8) = 0;
    v5 = a2 + 9;
  }

  v10 = 0;
  *v5 = 0;
  while ((*(*this + 16))(this, &v10, 1) == 1 && v10 != 10)
  {
    __src = v10;
    re::DynamicString::append(a2, &__src, 1uLL);
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = v7 >> 1;
  }

  else
  {
    v8 = v7 >> 1;
  }

  return v8 != 0;
}

uint64_t *re::graphicsLogObjects(re *this)
{
  {
    re::graphicsLogObjects(void)::logObjects = os_log_create("com.apple.re", "Graphics");
  }

  return &re::graphicsLogObjects(void)::logObjects;
}

uint64_t re::getOrCreateRenderPipelineState(uint64_t a1, uint64_t a2)
{
  v186 = *MEMORY[0x1E69E9840];
  if (*a2 == 1)
  {
    v4 = re::Hash<re::DynamicString>::operator()(v148, a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = re::Hash<re::DynamicString>::operator()(v148, a2 + 40);
  v6 = re::Hash<re::DynamicString>::operator()(v148, a2 + 72);
  Key = re::MetalFunctionConfiguration::generateKey((a2 + 104));
  v9 = 0;
  if (*(a2 + 248))
  {
    v10 = *(a2 + 256);
  }

  else
  {
    v10 = 0;
  }

  v11 = ((v10 << 6) + (v10 >> 2) - 0x61C8864680B583E9 + (((*(a2 + 240) << 6) + (*(a2 + 240) >> 2) - 0x61C8864680B583E9 + (((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + (((v4 << 6) + (v4 >> 2) + Key - 0x61C8864680B583E9) ^ v4) - 0x61C8864680B583E9) ^ v5)) ^ v6)) ^ *(a2 + 240))) ^ v10;
  do
  {
    if (*(a2 + v9 + 264) == 1)
    {
      v12 = *(a2 + v9 + 268);
    }

    else
    {
      v12 = 0;
    }

    v11 = (v11 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
    v9 += 8;
  }

  while (v9 != 64);
  if (*(a2 + 328))
  {
    v13 = *(a2 + 332);
  }

  else
  {
    v13 = 0;
  }

  if (*(a2 + 336))
  {
    v14 = *(a2 + 340);
  }

  else
  {
    v14 = 0;
  }

  v15 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + ((v11 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13)) ^ v14;
  v16 = *(a1 + 48);
  v17 = (v16 + 104);
  if (!*(v16 + 104) || (v18 = *(*(v16 + 112) + 4 * (v15 % *(v16 + 128))), v18 == 0x7FFFFFFF))
  {
LABEL_23:
    MetalFunction = re::getOrCreateMetalFunction(a1, (a2 + 40), (a2 + 104), v8);
    v22 = re::getOrCreateMetalFunction(a1, (a2 + 72), (a2 + 104), v21);
    v23 = mach_absolute_time();
    v24 = 0;
    if (!MetalFunction || !v22)
    {
      return v24;
    }

    v145 = v23;
    re::ShaderManager::makeRenderPipelineDescriptor(*(a1 + 48), &v147);
    if (*a2 == 1)
    {
      if (*(a2 + 16))
      {
        v25 = *(a2 + 24);
      }

      else
      {
        v25 = a2 + 17;
      }

      [v147 setLabel_];
    }

    if (*MetalFunction)
    {
      [v147 setVertexFunction_];
    }

    if (*v22)
    {
      [v147 setFragmentFunction_];
    }

    [v147 setRasterSampleCount_];
    if (*(a2 + 248))
    {
      [v147 setMaxVertexAmplificationCount_];
    }

    v26 = 0;
    v27 = (a2 + 268);
    do
    {
      if (*(v27 - 4) == 1 && *v27)
      {
        [objc_msgSend(objc_msgSend(v147 colorAttachments)];
      }

      ++v26;
      v27 += 2;
    }

    while (v26 != 8);
    v28 = *(a2 + 332);
    if (*(a2 + 328) == 1 && v28 != 0)
    {
      [v147 setDepthAttachmentPixelFormat_];
    }

    v30 = *(a2 + 340);
    if (*(a2 + 336) == 1 && v30 != 0)
    {
      [v147 setStencilAttachmentPixelFormat_];
    }

    [v147 setInputPrimitiveTopology_];
    v146 = 0;
    re::mtl::Device::makeRenderPipelineState((a1 + 208), v147, 0, v148);
    NS::SharedPtr<MTL::Texture>::operator=(&v146, v148);
    if (*v148)
    {
    }

    v32 = mach_absolute_time();
    v33 = v32;
    v34 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v32 = mach_timebase_info(v148);
      if (v32)
      {
        v37 = NAN;
        goto LABEL_59;
      }

      LODWORD(v36) = *&v148[4];
      LODWORD(v35) = *v148;
      v34 = v35 / v36;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v34;
    }

    v37 = v34 * (v33 - v145);
LABEL_59:
    v38 = (v37 / 1000000.0);
    v39 = *re::graphicsLogObjects(v32);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 48))
      {
        v40 = *(a2 + 56);
      }

      else
      {
        v40 = a2 + 49;
      }

      if (*(a2 + 80))
      {
        v41 = *(a2 + 88);
      }

      else
      {
        v41 = a2 + 81;
      }

      *v148 = 136446722;
      *&v148[4] = v40;
      v149 = 2082;
      *v150 = v41;
      *&v150[8] = 1024;
      *v151 = v38;
      _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for render pipeline %{public}s/%{public}s in %d", v148, 0x1Cu);
    }

    if (*v17)
    {
      v42 = v15 % *(v16 + 128);
      v43 = *(*(v16 + 112) + 4 * v42);
      if (v43 != 0x7FFFFFFF)
      {
        v44 = *(v16 + 120);
        if (*(v44 + 24 * v43 + 8) == v15)
        {
LABEL_72:
          v24 = v44 + 24 * v43 + 16;
          goto LABEL_75;
        }

        while (1)
        {
          LODWORD(v43) = *(v44 + 24 * v43) & 0x7FFFFFFF;
          if (v43 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v44 + 24 * v43 + 8) == v15)
          {
            goto LABEL_72;
          }
        }
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    v45 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v17, v42, v15);
    *(v45 + 8) = v15;
    *(v45 + 16) = v146;
    v24 = v45 + 16;
    ++*(v16 + 144);
LABEL_75:
    if ((atomic_load_explicit(&qword_1EE1B9968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9968))
    {
      re::Defaults::BOOLValue("enableShaderDebugLogs", v143, v148);
      if (v148[0])
      {
        v144 = v148[1];
      }

      else
      {
        v144 = 0;
      }

      _MergedGlobals_450 = v144;
      __cxa_guard_release(&qword_1EE1B9968);
    }

    if (v38 > 10 || _MergedGlobals_450 == 1)
    {
      if (re::mtl::Device::isPhysicalHardware((a1 + 208)))
      {
        v46 = re::RenderManager::perFrameAllocator(a1);
        v47 = *(a2 + 200);
        if (v47)
        {
          v48 = *(a2 + 216);
          v49 = (v48 + 36);
          v50 = 104 * v47;
          while (!*v49)
          {
            v49 += 13;
            v50 -= 104;
            if (!v50)
            {
              v51 = 0xFFFFFFFFLL;
LABEL_86:
              v59 = 0;
              v60 = (v48 + 36);
              v61 = 104 * v47;
              while (1)
              {
                if (*v60)
                {
                  if (v59 == 1)
                  {
                    v54 = *(v60 - 1);
                    goto LABEL_93;
                  }

                  v59 = 1;
                }

                v60 += 13;
                v61 -= 104;
                if (!v61)
                {
                  v54 = 0xFFFFFFFFLL;
LABEL_93:
                  v62 = 0;
                  v63 = (v48 + 36);
                  v64 = 104 * v47;
                  while (1)
                  {
                    if (*v63)
                    {
                      if (v62 == 2)
                      {
                        v55 = *(v63 - 1);
                        goto LABEL_100;
                      }

                      ++v62;
                    }

                    v63 += 13;
                    v64 -= 104;
                    if (!v64)
                    {
                      v55 = 0xFFFFFFFFLL;
LABEL_100:
                      v65 = 0;
                      v66 = (v48 + 36);
                      v67 = 104 * v47;
                      while (1)
                      {
                        if (*v66)
                        {
                          if (v65 == 3)
                          {
                            v53 = *(v66 - 1);
                            goto LABEL_107;
                          }

                          ++v65;
                        }

                        v66 += 13;
                        v67 -= 104;
                        if (!v67)
                        {
                          v53 = 0xFFFFFFFFLL;
LABEL_107:
                          v68 = 0;
                          v69 = (v48 + 36);
                          v70 = 104 * v47;
                          while (1)
                          {
                            if (*v69)
                            {
                              if (v68 == 4)
                              {
                                v56 = *(v69 - 1);
                                goto LABEL_114;
                              }

                              ++v68;
                            }

                            v69 += 13;
                            v70 -= 104;
                            if (!v70)
                            {
                              v56 = 0xFFFFFFFFLL;
LABEL_114:
                              v71 = 0;
                              v72 = (v48 + 36);
                              v73 = 104 * v47;
                              while (1)
                              {
                                if (*v72)
                                {
                                  if (v71 == 5)
                                  {
                                    v52 = *(v72 - 1);
                                    goto LABEL_121;
                                  }

                                  ++v71;
                                }

                                v72 += 13;
                                v73 -= 104;
                                if (!v73)
                                {
                                  v52 = 0xFFFFFFFFLL;
LABEL_121:
                                  v74 = 0;
                                  v75 = (v48 + 36);
                                  v76 = 104 * v47;
                                  while (1)
                                  {
                                    if (*v75)
                                    {
                                      if (v74 == 6)
                                      {
                                        v57 = *(v75 - 1);
                                        goto LABEL_128;
                                      }

                                      ++v74;
                                    }

                                    v75 += 13;
                                    v76 -= 104;
                                    if (!v76)
                                    {
                                      v57 = 0xFFFFFFFFLL;
LABEL_128:
                                      v77 = 0;
                                      v78 = (v48 + 36);
                                      v79 = 104 * v47;
                                      while (1)
                                      {
                                        if (*v78)
                                        {
                                          if (v77 == 7)
                                          {
                                            v58 = *(v78 - 1);
                                            goto LABEL_135;
                                          }

                                          ++v77;
                                        }

                                        v78 += 13;
                                        v79 -= 104;
                                        if (!v79)
                                        {
                                          v58 = 0xFFFFFFFFLL;
                                          goto LABEL_135;
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

          v51 = *(v49 - 1);
          goto LABEL_86;
        }

        v52 = 0xFFFFFFFFLL;
        v53 = 0xFFFFFFFFLL;
        v54 = 0xFFFFFFFFLL;
        v51 = 0xFFFFFFFFLL;
        v55 = 0xFFFFFFFFLL;
        v56 = 0xFFFFFFFFLL;
        v57 = 0xFFFFFFFFLL;
        v58 = 0xFFFFFFFFLL;
LABEL_135:
        if (*(a2 + 264))
        {
          v80 = *(a2 + 268);
        }

        else
        {
          v80 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 272))
        {
          v81 = *(a2 + 276);
        }

        else
        {
          v81 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 280))
        {
          v82 = *(a2 + 284);
        }

        else
        {
          v82 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 288))
        {
          v83 = *(a2 + 292);
        }

        else
        {
          v83 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 296))
        {
          v84 = *(a2 + 300);
        }

        else
        {
          v84 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 304))
        {
          v85 = *(a2 + 308);
        }

        else
        {
          v85 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 312))
        {
          v86 = *(a2 + 316);
        }

        else
        {
          v86 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 320))
        {
          v87 = *(a2 + 324);
        }

        else
        {
          v87 = 0xFFFFFFFFLL;
        }

        if (*(a2 + 328))
        {
          v88 = *(a2 + 332);
        }

        else
        {
          v88 = 0;
        }

        if (*(a2 + 336))
        {
          v89 = *(a2 + 340);
        }

        else
        {
          v89 = 0;
        }

        re::DynamicString::format(v46, "fc=%d %d %d %d %d %d %d %d p=%d %d %d %d %d %d %d %d sc=%d d=%d s=%d", v148, v51, v54, v55, v53, v56, v52, v57, v58, v80, v81, v82, v83, v84, v85, v86, v87, *(a2 + 240), v88, v89);
        if (v148[8])
        {
          v91 = *&v150[2];
        }

        else
        {
          v91 = &v148[9];
        }

        re::REAnalyticsEventShaderPermutationsForCustomClear(v91, v90);
        if (*v148 && (v148[8] & 1) != 0)
        {
          (*(**v148 + 40))();
        }
      }

      isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((a1 + 208));
      v93 = isFrameCaptureEnabled;
      v94 = *re::graphicsLogObjects(isFrameCaptureEnabled);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v95 = *(a2 + 56);
        if ((*(a2 + 48) & 1) == 0)
        {
          v95 = a2 + 49;
        }

        v96 = *(a2 + 200);
        if (v96)
        {
          v97 = *(a2 + 216);
          v98 = (v97 + 36);
          v99 = 104 * v96;
          while (!*v98)
          {
            v98 += 13;
            v99 -= 104;
            if (!v99)
            {
              v100 = -1;
LABEL_181:
              v107 = 0;
              v108 = (v97 + 36);
              v109 = 104 * v96;
              while (1)
              {
                if (*v108)
                {
                  if (v107 == 1)
                  {
                    v103 = *(v108 - 1);
                    goto LABEL_188;
                  }

                  v107 = 1;
                }

                v108 += 13;
                v109 -= 104;
                if (!v109)
                {
                  v103 = -1;
LABEL_188:
                  v110 = 0;
                  v111 = (v97 + 36);
                  v112 = 104 * v96;
                  while (1)
                  {
                    if (*v111)
                    {
                      if (v110 == 2)
                      {
                        v104 = *(v111 - 1);
                        goto LABEL_195;
                      }

                      ++v110;
                    }

                    v111 += 13;
                    v112 -= 104;
                    if (!v112)
                    {
                      v104 = -1;
LABEL_195:
                      v113 = 0;
                      v114 = (v97 + 36);
                      v115 = 104 * v96;
                      while (1)
                      {
                        if (*v114)
                        {
                          if (v113 == 3)
                          {
                            v102 = *(v114 - 1);
                            goto LABEL_202;
                          }

                          ++v113;
                        }

                        v114 += 13;
                        v115 -= 104;
                        if (!v115)
                        {
                          v102 = -1;
LABEL_202:
                          v116 = 0;
                          v117 = (v97 + 36);
                          v118 = 104 * v96;
                          while (1)
                          {
                            if (*v117)
                            {
                              if (v116 == 4)
                              {
                                v105 = *(v117 - 1);
                                goto LABEL_209;
                              }

                              ++v116;
                            }

                            v117 += 13;
                            v118 -= 104;
                            if (!v118)
                            {
                              v105 = -1;
LABEL_209:
                              v119 = 0;
                              v120 = (v97 + 36);
                              v121 = 104 * v96;
                              while (1)
                              {
                                if (*v120)
                                {
                                  if (v119 == 5)
                                  {
                                    v101 = *(v120 - 1);
                                    goto LABEL_216;
                                  }

                                  ++v119;
                                }

                                v120 += 13;
                                v121 -= 104;
                                if (!v121)
                                {
                                  v101 = -1;
LABEL_216:
                                  v122 = 0;
                                  v123 = (v97 + 36);
                                  v124 = 104 * v96;
                                  while (1)
                                  {
                                    if (*v123)
                                    {
                                      if (v122 == 6)
                                      {
                                        v106 = *(v123 - 1);
                                        goto LABEL_223;
                                      }

                                      ++v122;
                                    }

                                    v123 += 13;
                                    v124 -= 104;
                                    if (!v124)
                                    {
                                      v106 = -1;
LABEL_223:
                                      v125 = 0;
                                      v126 = (v97 + 36);
                                      v127 = 104 * v96;
                                      while (1)
                                      {
                                        if (*v126)
                                        {
                                          if (v125 == 7)
                                          {
                                            v128 = *(v126 - 1);
                                            goto LABEL_230;
                                          }

                                          ++v125;
                                        }

                                        v126 += 13;
                                        v127 -= 104;
                                        if (!v127)
                                        {
                                          goto LABEL_228;
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

          v100 = *(v98 - 1);
          goto LABEL_181;
        }

        v101 = -1;
        v102 = -1;
        v103 = -1;
        v100 = -1;
        v104 = -1;
        v105 = -1;
        v106 = -1;
LABEL_228:
        v128 = -1;
LABEL_230:
        if (*(a2 + 264))
        {
          v129 = *(a2 + 268);
        }

        else
        {
          v129 = -1;
        }

        if (*(a2 + 272))
        {
          v130 = *(a2 + 276);
        }

        else
        {
          v130 = -1;
        }

        if (*(a2 + 280))
        {
          v131 = *(a2 + 284);
        }

        else
        {
          v131 = -1;
        }

        if (*(a2 + 288))
        {
          v132 = *(a2 + 292);
        }

        else
        {
          v132 = -1;
        }

        if (*(a2 + 296))
        {
          v133 = *(a2 + 300);
        }

        else
        {
          v133 = -1;
        }

        if (*(a2 + 304))
        {
          v134 = *(a2 + 308);
        }

        else
        {
          v134 = -1;
        }

        if (*(a2 + 312))
        {
          v135 = *(a2 + 316);
        }

        else
        {
          v135 = -1;
        }

        if (*(a2 + 320))
        {
          v136 = *(a2 + 324);
        }

        else
        {
          v136 = -1;
        }

        v137 = *(a2 + 240);
        if (*(a2 + 328))
        {
          v138 = *(a2 + 332);
        }

        else
        {
          v138 = 0;
        }

        v139 = *(a2 + 336);
        v140 = *(a2 + 340);
        if (!v139)
        {
          v140 = 0;
        }

        if (v93)
        {
          v141 = "(frame capture enabled)";
        }

        else
        {
          v141 = "";
        }

        *v148 = 136451330;
        *&v148[4] = v95;
        v149 = 1024;
        *v150 = v100;
        *&v150[4] = 1024;
        *&v150[6] = v103;
        *v151 = 1024;
        *&v151[2] = v104;
        v152 = 1024;
        v153 = v102;
        v154 = 1024;
        v155 = v105;
        v156 = 1024;
        v157 = v101;
        v158 = 1024;
        v159 = v106;
        v160 = 1024;
        v161 = v128;
        v162 = 1024;
        v163 = v129;
        v164 = 1024;
        v165 = v130;
        v166 = 1024;
        v167 = v131;
        v168 = 1024;
        v169 = v132;
        v170 = 1024;
        v171 = v133;
        v172 = 1024;
        v173 = v134;
        v174 = 1024;
        v175 = v135;
        v176 = 1024;
        v177 = v136;
        v178 = 1024;
        v179 = v137;
        v180 = 1024;
        v181 = v138;
        v182 = 1024;
        v183 = v140;
        v184 = 2080;
        v185 = v141;
        _os_log_impl(&dword_1E1C61000, v94, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT v=%{public}s fc=%d %d %d %d %d %d %d %d p=%d %d %d %d %d %d %d %d sc=%d d=%d s=%d %s", v148, 0x88u);
      }
    }

    if (v146)
    {
    }

    if (v147)
    {
    }

    return v24;
  }

  v19 = *(v16 + 120);
  while (*(v19 + 24 * v18 + 8) != v15)
  {
    v18 = *(v19 + 24 * v18) & 0x7FFFFFFF;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }
  }

  return v19 + 24 * v18 + 16;
}

uint64_t MetalEmulation::internal::_executeShader(uint64_t a1, uint64_t a2, double a3)
{
  if (_MergedGlobals_451 != -1)
  {
    v13 = a3;
    dispatch_once(&_MergedGlobals_451, &__block_literal_global_42);
    a3 = v13;
  }

  v5 = LOWORD(a3) * WORD1(a3) * WORD2(a3);
  aBlock[0] = MEMORY[0x1E69E9820];
  v6 = (v5 + 4 * _ZZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_bE15kProcessorCount - 1) / (4 * _ZZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_bE15kProcessorCount);
  v7 = v5 + 255;
  v8 = v6 >= 0x100;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_b_block_invoke_2;
  aBlock[3] = &__block_descriptor_72_e8_v16__0Q8l;
  if (v6 <= 0x100)
  {
    v6 = 256;
  }

  aBlock[4] = v6;
  aBlock[5] = LOWORD(a3) * WORD1(a3);
  *&aBlock[6] = a3;
  if (v8)
  {
    v9 = 4 * _ZZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_bE15kProcessorCount;
  }

  else
  {
    v9 = v7 >> 8;
  }

  aBlock[7] = a1;
  aBlock[8] = a2;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v9 < 2)
  {
    (*(v10 + 2))(v10, 0);
  }

  else
  {
    dispatch_apply(v9, qword_1EE1B9978, v10);
  }

  return 1;
}

void ___ZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_b_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  if ([v0 activeProcessorCount] <= 4)
  {
    _ZZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_bE15kProcessorCount = 4;
  }

  else
  {
    v1 = [MEMORY[0x1E696AE30] processInfo];
    _ZZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_bE15kProcessorCount = [v1 activeProcessorCount];
  }

  v2 = dispatch_get_global_queue(21, 0);
  v3 = qword_1EE1B9978;
  qword_1EE1B9978 = v2;
}

uint64_t ___ZN14MetalEmulation8internal14_executeShaderEPFvDv3_tPvES2_S1_b_block_invoke_2(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = *(result + 32);
  v4 = v3 * a2;
  v5 = v3 * a2 + v3;
  if (v3 * a2 < v5)
  {
    v6 = result;
    v7 = *(result + 40);
    v8 = v4 / v7;
    v9 = *(result + 52);
    if (v4 / v7 < v9)
    {
      v10 = v4 % v7;
      v11 = *(result + 50);
      v12 = v10 / v11;
      v13 = v10 % v11;
      v14 = *(result + 50);
      do
      {
        if (v12 < v14)
        {
          a3.n128_u64[0] = *(v6 + 48);
          v15 = v13;
          do
          {
            if (v15 >= a3.n128_u16[0])
            {
              v14 = a3.n128_u16[1];
              LOWORD(v9) = a3.n128_u16[2];
            }

            else
            {
              do
              {
                a3.n128_u16[0] = v15;
                a3.n128_u16[1] = v12;
                a3.n128_u16[2] = v8;
                result = (*(v6 + 56))(*(v6 + 64), a3);
                ++v15;
                ++v4;
                a3.n128_u64[0] = *(v6 + 48);
              }

              while (v15 < a3.n128_u16[0] && v4 < v5);
              LOWORD(v9) = WORD2(*(v6 + 48));
              v14 = WORD1(*(v6 + 48));
            }

            v15 = 0;
            v13 = 0;
          }

          while (++v12 < v14 && v4 < v5);
        }

        if (++v8 >= v9)
        {
          break;
        }

        v12 = 0;
      }

      while (v4 < v5);
    }
  }

  return result;
}

unint64_t re::SamplerTableCollection::hash(re::SamplerTableCollection *this)
{
  v2 = 0;
  result = 0;
  v4 = this + 16;
  v5 = 6;
  do
  {
    if (*(v4 - 1) && *v4)
    {
      v6 = *(*v4 + 48);
    }

    else
    {
      v6 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
    }

    result ^= (result << 6) + (result >> 2) - 0x61C8864680B583E9 + v6;
    v2 -= 0x40A7B892E31B1A47;
    v4 += 24;
    --v5;
  }

  while (v5);
  return result;
}

void *re::DrawCallRef::DrawCallRef(void *this, const re::DrawCall *a2)
{
  *this = a2;
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      unk_1EE1C7AA0 = xmmword_1E3047680;
      xmmword_1EE1C7AB0 = xmmword_1E30476A0;
      unk_1EE1C7AC0 = xmmword_1E30474D0;
      this = v3;
    }
  }

  return this;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_61, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(a1, v3++);
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

uint64_t re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(re::MaterialParameterTableLayers *this, unint64_t a2)
{
  v4 = *(this + 9);
  if (!v4)
  {
    goto LABEL_5;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  result = re::MaterialParameterTable::tryGetPassTechniqueMapping(v4, a2, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (!result)
  {
LABEL_5:
    v6 = *(this + 8);
    if (!v6)
    {
      goto LABEL_9;
    }

    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    result = re::MaterialParameterTable::tryGetPassTechniqueMapping(v6, a2, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    if (!result)
    {
LABEL_9:
      v7 = *(this + 11);
      if (!v7)
      {
        goto LABEL_13;
      }

      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      result = re::MaterialParameterTable::tryGetPassTechniqueMapping(v7, a2, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      if (!result)
      {
LABEL_13:
        v8 = *(this + 7);
        if (!v8)
        {
          return 0;
        }

        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
        {
          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
        }

        result = re::MaterialParameterTable::tryGetPassTechniqueMapping((v8 + 304), a2, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t re::MaterialParameterTableLayers::getDebugMode(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v8 = a3;
  if (*(a2 + 208) != 1 || (v5 = *(*(a2 + 56) + 16), this = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v5 + 184), &v8), this == -1) || (v6 = *(v5 + 192) + 72 * this, this = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 8), (a2 + 216)), this == -1))
  {
    *v3 = 0;
  }

  else
  {
    v7 = *(v6 + 16) + 16 * this;
    *v3 = 1;
    *(v3 + 2) = *(v7 + 8);
  }

  return this;
}

uint64_t re::MaterialParameterTableLayers::getTechniqueAtIndex(re::MaterialParameterTableLayers *this, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(this + 208) & 1) == 0)
  {
    v4 = a2;
    goto LABEL_9;
  }

  v3 = *(this + 7);
  v4 = a2;
  if (v3[10] <= a2)
  {
LABEL_13:
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!v3[12] || (v5 = **(v3[11] + 40 * a2), *(v5 + 2632) != 1) || (re::MaterialParameterTableLayers::getDebugMode(&v9, this, *(v5 + 2640)), v9 != 1))
  {
LABEL_9:
    v7 = *(this + 7);
    if (*(v7 + 80) > v4)
    {
      v6 = (v7 + 88);
      return *(*v6 + 40 * v4);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  if (v3[13] <= v4)
  {
    goto LABEL_14;
  }

  v6 = v3 + 14;
  return *(*v6 + 40 * v4);
}

void *re::MaterialParameterTableLayers::resolveTechniqueIndices(re::MaterialParameterTableLayers *this, unint64_t a2)
{
  PrioritizedPassTechniqueMapping = re::MaterialParameterTableLayers::getPrioritizedPassTechniqueMapping(this, a2);
  if (PrioritizedPassTechniqueMapping && (v4 = *(this + 7), re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v4 + 24, PrioritizedPassTechniqueMapping, *PrioritizedPassTechniqueMapping, v6), v7 != 0x7FFFFFFF))
  {
    return *(*(v4 + 40) + 48 * v7 + 32);
  }

  else
  {
    return &re::kInvalidMaterialTechniqueIndex;
  }
}

BOOL re::MaterialParameterTableLayers::containsDirectBuffer(uint64_t *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = a1[1];
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = *a1;
    if (!*a1)
    {
      return 0;
    }
  }

  if (*(v3 + 8) > a2)
  {
    return *(*(v3 + 16) + 8 * a2) != 0;
  }

  return 0;
}

void re::encodeDrawCalls(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, float a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = MEMORY[0x1EEE9AC00](a1);
  v904 = v74;
  v76 = v75;
  STACK[0x2A0] = v73;
  v77 = &STACK[0x1020];
  TechniqueVariant = &STACK[0xDB0];
  v79 = &STACK[0xCF0];
  STACK[0x1FF8] = *MEMORY[0x1E69E9840];
  LOBYTE(v80) = *(v75[3] + 319) | *(v75 + 148);
  v81 = &byte_1EE1B9981;
  if ((atomic_load_explicit(&qword_1EE1B9988, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_1109;
  }

  while (1)
  {
    if (*v81)
    {
      v82 = *(v81 + 1);
    }

    else
    {
      v82 = v80;
    }

    v919 = v82;
    v83 = *(v76[3] + 24);
    *(v77 + 72) = 0u;
    *(v77 + 56) = 0u;
    *(v77 + 40) = 0u;
    *&STACK[0x1020] = vextq_s8(v83[41], v83[41], 8uLL);
    v84 = v83[40].u64[0];
    STACK[0x1078] = 0;
    STACK[0x1040] = v84;
    v85 = re::MaterialManager::sceneTextures(v83, *(v76 + 36));
    v86 = v83[40].u64[1];
    STACK[0x1030] = v85;
    STACK[0x1038] = v86;
    STACK[0x1068] = v76[2] + 368;
    LODWORD(STACK[0xDD0]) = 0;
    *&STACK[0xDC0] = 0u;
    *&STACK[0xDB0] = 0u;
    STACK[0x1018] = 0;
    *(v79 + 232) = 0u;
    *(v79 + 248) = 0u;
    *(TechniqueVariant + 68) = 0u;
    *(TechniqueVariant + 88) = 0u;
    *(TechniqueVariant + 104) = 0u;
    *(TechniqueVariant + 116) = 0u;
    *(TechniqueVariant + 136) = 0u;
    *(TechniqueVariant + 152) = 0u;
    *(TechniqueVariant + 164) = 0u;
    *(TechniqueVariant + 184) = 0u;
    *(TechniqueVariant + 200) = 0u;
    *(TechniqueVariant + 212) = 0u;
    *(TechniqueVariant + 260) = 0u;
    *(TechniqueVariant + 248) = 0u;
    *(TechniqueVariant + 232) = 0u;
    *(TechniqueVariant + 308) = 0u;
    *(TechniqueVariant + 280) = 0u;
    *(TechniqueVariant + 296) = 0u;
    *(TechniqueVariant + 328) = 0u;
    *(TechniqueVariant + 344) = 0u;
    *(TechniqueVariant + 356) = 0u;
    *(TechniqueVariant + 376) = 0u;
    *(TechniqueVariant + 392) = 0u;
    *(TechniqueVariant + 404) = 0u;
    *(TechniqueVariant + 424) = 0u;
    *(TechniqueVariant + 440) = 0u;
    *(TechniqueVariant + 452) = 0u;
    *(TechniqueVariant + 472) = 0u;
    *(TechniqueVariant + 488) = 0u;
    *(TechniqueVariant + 500) = 0u;
    *(TechniqueVariant + 520) = 0u;
    *(TechniqueVariant + 536) = 0u;
    *(TechniqueVariant + 548) = 0u;
    *(TechniqueVariant + 596) = 0u;
    *(TechniqueVariant + 568) = 0u;
    *(TechniqueVariant + 584) = 0u;
    v87 = v83[45].i64[0];
    v88 = v87[10];
    v89 = v87[17];
    v90 = v87[15];
    STACK[0xDE0] = v87[12];
    STACK[0xDE8] = v88;
    STACK[0xDF0] = v89;
    STACK[0xDF8] = v90;
    STACK[0xE08] = v87;
    v91 = re::MaterialManager::lightBuffers(v83, *(v76 + 36));
    v92 = v91[10];
    v93 = v91[17];
    v94 = v91[15];
    STACK[0xE40] = v91[12];
    STACK[0xE48] = v92;
    STACK[0xE50] = v93;
    STACK[0xE58] = v94;
    LODWORD(STACK[0xE60]) = 0;
    STACK[0xE68] = v91;
    v95 = re::MaterialManager::sceneBuffers(v83, *(v76 + 36));
    v96 = v95[10];
    v97 = v95[17];
    v98 = v95[15];
    STACK[0xE10] = v95[12];
    STACK[0xE18] = v96;
    STACK[0xE20] = v97;
    STACK[0xE28] = v98;
    LODWORD(STACK[0xE30]) = 0;
    STACK[0xE38] = v95;
    v99 = v83[44].i64[1];
    v100 = v99[10];
    v101 = v99[17];
    v102 = v99[15];
    STACK[0xE70] = v99[12];
    STACK[0xE78] = v100;
    STACK[0xE80] = v101;
    STACK[0xE88] = v102;
    LODWORD(STACK[0xE90]) = 0;
    v103 = v76[2];
    v104 = (v103 + 60);
    v105 = v103[72];
    v106 = v103[70];
    v107 = v103[77];
    v108 = v103[75];
    STACK[0xE98] = v99;
    STACK[0xF60] = v105;
    STACK[0xF68] = v106;
    STACK[0xF70] = v107;
    STACK[0xF78] = v108;
    LODWORD(STACK[0xF80]) = 0;
    STACK[0xF88] = v104;
    v109 = v83[45].i64[1];
    v110 = v109[10];
    v111 = v109[17];
    v112 = v109[15];
    STACK[0xFC0] = v109[12];
    STACK[0xFC8] = v110;
    STACK[0xFD0] = v111;
    STACK[0xFD8] = v112;
    LODWORD(STACK[0xFE0]) = 0;
    STACK[0xFE8] = v109;
    v113 = re::MaterialManager::lightBuffers(v83, *(v76 + 36));
    v114 = *(v113 + 216);
    v80 = STACK[0x2A0];
    if (v114)
    {
      v115 = 24 * v114;
      TechniqueVariant = *(v113 + 232) + 16;
      do
      {
        v116 = *(TechniqueVariant - 8);
        if (v116)
        {
          [*v80 useResources:*TechniqueVariant count:v116 usage:1 stages:2];
        }

        TechniqueVariant += 24;
        v115 -= 24;
      }

      while (v115);
    }

    v117 = v76[2];
    v118 = v117[87];
    if (v118)
    {
      v119 = 24 * v118;
      TechniqueVariant = v117[89] + 16;
      do
      {
        v120 = *(TechniqueVariant - 8);
        if (v120)
        {
          [*v80 useResources:*TechniqueVariant count:v120 usage:1 stages:2];
        }

        TechniqueVariant += 24;
        v119 -= 24;
      }

      while (v119);
      v117 = v76[2];
    }

    *&STACK[0xDA0] = 0u;
    *&STACK[0xD90] = 0u;
    *&STACK[0xD80] = 0u;
    *&STACK[0xD20] = 0u;
    *&STACK[0xD30] = 0u;
    *&STACK[0xD70] = 0u;
    *&STACK[0xD60] = 0u;
    *&STACK[0xD50] = 0u;
    *&STACK[0xD40] = 0u;
    v121 = v83[55].u64[1];
    v122 = *(v121 + 80);
    STACK[0xD20] = *(v121 + 96);
    STACK[0xD28] = v122;
    STACK[0xD30] = v121;
    v123 = v117[4];
    *&STACK[0xCF0] = 0u;
    *&STACK[0xD00] = 0u;
    LODWORD(STACK[0xD10]) = 0;
    *(v79 + 36) = 0x7FFFFFFFLL;
    re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(&STACK[0xCF0], v123, 3);
    v124 = *(v76 + 36);
    LOBYTE(STACK[0xCD0]) = 0;
    *&STACK[0xCC0] = 0u;
    *&STACK[0xCB0] = 0u;
    *&STACK[0xCA0] = 0u;
    *&STACK[0xC90] = 0u;
    *&STACK[0xC80] = 0u;
    *&STACK[0xC70] = 0u;
    *&STACK[0xC60] = 0u;
    *&STACK[0xC50] = 0u;
    *&STACK[0xC40] = 0u;
    *&STACK[0xC30] = 0u;
    *&STACK[0xC20] = 0u;
    *&STACK[0xC10] = 0u;
    *&STACK[0xC00] = 0u;
    v891 = v124;
    *&STACK[0xBF0] = *re::MaterialManager::sceneConstants(v83, v124);
    *&STACK[0x700] = xmmword_1E3047670;
    *&STACK[0x710] = xmmword_1E3047680;
    *&STACK[0x720] = xmmword_1E30476A0;
    *&STACK[0x730] = xmmword_1E30474D0;
    *&STACK[0x740] = xmmword_1E3047670;
    *&STACK[0x750] = xmmword_1E3047680;
    *&STACK[0x760] = xmmword_1E30476A0;
    *&STACK[0x770] = xmmword_1E30474D0;
    *&STACK[0x780] = xmmword_1E3047670;
    *&STACK[0x790] = xmmword_1E3047680;
    *&STACK[0x7A0] = xmmword_1E30476A0;
    *&STACK[0x7B0] = xmmword_1E30474D0;
    *&STACK[0x7C0] = xmmword_1E3047670;
    *&STACK[0x7D0] = xmmword_1E3047680;
    *&STACK[0x7E0] = xmmword_1E30476A0;
    *&STACK[0x7F0] = xmmword_1E30474D0;
    *&STACK[0x800] = xmmword_1E3047670;
    *&STACK[0x810] = xmmword_1E3047680;
    *&STACK[0x820] = xmmword_1E30476A0;
    *&STACK[0x830] = xmmword_1E30474D0;
    *&STACK[0x840] = xmmword_1E3047670;
    *&STACK[0x850] = xmmword_1E3047680;
    *&STACK[0x860] = xmmword_1E30476A0;
    *&STACK[0x870] = xmmword_1E30474D0;
    *&STACK[0x880] = xmmword_1E3047670;
    *&STACK[0x890] = xmmword_1E3047680;
    *&STACK[0x8A0] = xmmword_1E30476A0;
    *&STACK[0x8B0] = xmmword_1E30474D0;
    *&STACK[0x8C0] = xmmword_1E3047670;
    *&STACK[0x8D0] = xmmword_1E3047680;
    *&STACK[0x8E0] = xmmword_1E30476A0;
    *&STACK[0x8F0] = xmmword_1E30474D0;
    *&STACK[0x900] = xmmword_1E3047670;
    *&STACK[0x910] = xmmword_1E3047680;
    *&STACK[0x920] = xmmword_1E30476A0;
    *&STACK[0x930] = xmmword_1E30474D0;
    *&STACK[0x940] = xmmword_1E3047670;
    *&STACK[0x950] = xmmword_1E3047680;
    *&STACK[0x960] = xmmword_1E30476A0;
    *&STACK[0x970] = xmmword_1E30474D0;
    *&STACK[0x980] = xmmword_1E3047670;
    *&STACK[0x990] = xmmword_1E3047680;
    *&STACK[0x9A0] = xmmword_1E30476A0;
    *&STACK[0x9B0] = xmmword_1E30474D0;
    *&STACK[0x9C0] = xmmword_1E3047670;
    *&STACK[0x9D0] = xmmword_1E3047680;
    *&STACK[0x9E0] = xmmword_1E30476A0;
    *&STACK[0x9F0] = xmmword_1E30474D0;
    *&STACK[0xAC0] = 0u;
    *&STACK[0xA80] = 0u;
    *&STACK[0xA70] = 0u;
    *&STACK[0xA60] = 0u;
    *&STACK[0xA50] = 0u;
    *&STACK[0xA40] = 0u;
    *&STACK[0xA30] = 0u;
    *&STACK[0xA20] = 0u;
    *&STACK[0xA10] = 0u;
    *&STACK[0xA00] = 0u;
    *&STACK[0xAE0] = 0u;
    *&STACK[0xAF0] = 0u;
    v125 = v76[1];
    v77 = *(v125 + 40);
    re::ConstantSetupHelper::populateViewConstants(&STACK[0x700], v76[6], v76[7], *(v125 + 48), &STACK[0xBF0], *(v76 + 76), *(v125 + 40), v76[4], *(v76 + 84), 0x3F80000000000000, 0, *(v76 + 84), HIDWORD(*(v76 + 84)), *(v76 + 92));
    v126 = v76[8];
    if (v126)
    {
      re::ViewConstantsLateLatch::copyOriginalViewConstants(v126, &STACK[0x700]);
    }

    v127 = &STACK[0x1E60];
    v128 = v76[2];
    v129 = v76[3];
    STACK[0x6F8] = v128;
    v130 = *(v129 + 24);
    v79 = *(v130 + 928);
    if (v79 <= 1)
    {
      goto LABEL_1096;
    }

    if (v79 != 2)
    {
      break;
    }

LABEL_1097:
    STACK[0x600] = 0;
    *&STACK[0x1300] = 0u;
    *&STACK[0x12F0] = 0u;
    *&STACK[0x12E0] = 0u;
    *&STACK[0x12D0] = 0u;
    *&STACK[0x12C0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1ED0]) = 136315906;
    *(v127 + 116) = "operator[]";
    LOWORD(STACK[0x1EDC]) = 1024;
    *(v127 + 126) = 797;
    LOWORD(STACK[0x1EE2]) = 2048;
    *(v127 + 132) = 2;
    LOWORD(STACK[0x1EEC]) = 2048;
    *(v127 + 142) = 2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1098:
    STACK[0x600] = 0;
    *&STACK[0x1300] = 0u;
    *&STACK[0x12F0] = 0u;
    *&STACK[0x12E0] = 0u;
    *&STACK[0x12D0] = 0u;
    *&STACK[0x12C0] = 0u;
    v81 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1ED0]) = 136315906;
    *(v127 + 116) = "operator[]";
    LOWORD(STACK[0x1EDC]) = 1024;
    *(v127 + 126) = 797;
    LOWORD(STACK[0x1EE2]) = 2048;
    *(v127 + 132) = 3;
    LOWORD(STACK[0x1EEC]) = 2048;
    *(v127 + 142) = v79;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_1099:
    re::internal::assertLog(4, v542, "assertion failure: '%s' (%s:line %i) ", "samplerIndexBuffer.size() == numTextures", "updateTextureBlockTables", 595);
    _os_crash();
    __break(1u);
LABEL_1100:
    re::internal::assertLog(4, v542, "assertion failure: '%s' (%s:line %i) ", "uvIndexBuffer.size() == numTextures", "updateTextureBlockTables", 596);
    _os_crash();
    __break(1u);
LABEL_1101:
    re::internal::assertLog(6, v789, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v790, v789);
    _os_crash();
    __break(1u);
LABEL_1102:
    re::internal::assertLog(6, v792, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v793, v792);
    _os_crash();
    __break(1u);
LABEL_1103:
    re::internal::assertLog(6, v809, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v810, v809);
    _os_crash();
    __break(1u);
LABEL_1104:
    re::internal::assertLog(6, v812, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v813, v812);
    _os_crash();
    __break(1u);
LABEL_1105:
    re::internal::assertLog(6, v824, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v825, v824);
    _os_crash();
    __break(1u);
LABEL_1106:
    re::internal::assertLog(6, v824, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v825, v824);
    _os_crash();
    __break(1u);
LABEL_1107:
    re::internal::assertLog(6, v837, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v838, v837);
    _os_crash();
    __break(1u);
LABEL_1108:
    re::internal::assertLog(6, v827, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v828);
    _os_crash();
    __break(1u);
LABEL_1109:
    if (__cxa_guard_acquire(&qword_1EE1B9988))
    {
      re::Defaults::BOOLValue("compilePipelinesSynchronously", v863, v81);
      __cxa_guard_release((v81 + 7));
    }
  }

  if (v79 <= 3)
  {
    goto LABEL_1098;
  }

  v131 = *(v130 + 944);
  *&STACK[0x6B0] = 0uLL;
  *&STACK[0x6D0] = 0u;
  *&STACK[0x6E0] = 0u;
  LODWORD(STACK[0x6C0]) = *(v128 + 8);
  LODWORD(STACK[0x6C4]) = *(v128 + 40);
  *&STACK[0x6B0] = *&STACK[0xBF0];
  *&STACK[0x67C] = 0u;
  *&STACK[0x670] = 0u;
  *&STACK[0x660] = 0u;
  *&STACK[0x650] = 0u;
  *&STACK[0x640] = 0u;
  *&STACK[0x630] = 0u;
  *&STACK[0x620] = 0u;
  *&STACK[0x610] = 0u;
  *&STACK[0x600] = 0u;
  STACK[0x6A0] = 0;
  STACK[0x690] = 0;
  STACK[0x698] = 0;
  STACK[0x5E8] = &unk_1F5D06490;
  STACK[0x5F0] = v131;
  STACK[0x5F8] = &STACK[0x6B0];
  STACK[0x5D0] = &unk_1F5D06490;
  STACK[0x5D8] = v131 + 64;
  STACK[0x5E0] = &STACK[0x700];
  STACK[0x5B8] = &unk_1F5D06490;
  STACK[0x5C0] = v131 + 192;
  STACK[0x5C8] = 0;
  STACK[0x5A0] = &unk_1F5D06490;
  STACK[0x5A8] = v131 + 128;
  STACK[0x5B0] = 0;
  STACK[0x698] = *(v129 + 24) + 952;
  STACK[0x6A0] = 21;
  STACK[0x600] = &STACK[0x5E8];
  STACK[0x608] = &STACK[0x5D0];
  STACK[0x618] = &STACK[0x5B8];
  STACK[0x610] = &STACK[0x5A0];
  STACK[0x670] = *(v128 + 32);
  re::DynamicArray<re::ConstantSource const*>::setCapacity(&STACK[0x670], 0);
  v132 = 0;
  ++LODWORD(STACK[0x688]);
  STACK[0x588] = &STACK[0x600];
  STACK[0x590] = &STACK[0x1020];
  STACK[0x598] = &STACK[0xDB0];
  do
  {
    v133 = &STACK[0x12C0] + v132;
    *v133 = 0;
    *(v133 + 1) = 0;
    v133[16] = 1;
    *(v133 + 9) = 0;
    v132 += 24;
    *(v133 + 5) = 0;
  }

  while (v132 != 744);
  for (i = 0; i != 744; i += 24)
  {
    v135 = &STACK[0x12C0] + i;
    *(&STACK[0x12C0] + i + 744) = 0uLL;
    v135[760] = 1;
    *(v135 + 381) = 0;
    *(v135 + 191) = 0;
  }

  v136 = 0;
  *&STACK[0x1A70] = 0u;
  *&STACK[0x1A60] = 0u;
  *&STACK[0x1A50] = 0u;
  *&STACK[0x1A40] = 0u;
  *&STACK[0x1A30] = 0u;
  *&STACK[0x1A20] = 0u;
  *&STACK[0x1A10] = 0u;
  *&STACK[0x1A00] = 0u;
  *&STACK[0x19F0] = 0u;
  *&STACK[0x19E0] = 0u;
  *&STACK[0x19D0] = 0u;
  *&STACK[0x19C0] = 0u;
  *&STACK[0x19B0] = 0u;
  *&STACK[0x19A0] = 0u;
  *&STACK[0x1990] = 0u;
  *&STACK[0x1980] = 0u;
  *&STACK[0x1970] = 0u;
  *&STACK[0x1960] = 0u;
  *&STACK[0x1950] = 0u;
  *&STACK[0x1940] = 0u;
  *&STACK[0x1930] = 0u;
  *&STACK[0x1920] = 0u;
  *&STACK[0x1910] = 0u;
  *&STACK[0x1900] = 0u;
  *&STACK[0x18F0] = 0u;
  *&STACK[0x18E0] = 0u;
  *&STACK[0x18D0] = 0u;
  *&STACK[0x18C0] = 0u;
  *&STACK[0x18B0] = 0u;
  *&STACK[0x18A0] = 0u;
  *&STACK[0x1890] = 0u;
  v137 = &STACK[0x1B70];
  v138 = vdupq_n_s64(0x1FuLL);
  do
  {
    v139 = vdupq_n_s64(v136);
    v140 = vorrq_s8(v139, xmmword_1E3049620);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v138, v140)), 14), 14).u8[0])
    {
      *(v137 - 240) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v140)), 14), 14).i8[1])
    {
      *(v137 - 224) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v139, xmmword_1E3049640)))), 14).i8[2])
    {
      *(v137 - 208) = 0;
      *(v137 - 192) = 0;
    }

    v141 = vorrq_s8(v139, xmmword_1E3049660);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v141)), 14)).i32[1])
    {
      *(v137 - 176) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v141)), 14)).i8[5])
    {
      *(v137 - 160) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v139, xmmword_1E305F210))))).i8[6])
    {
      *(v137 - 144) = 0;
      *(v137 - 128) = 0;
    }

    v142 = vorrq_s8(v139, xmmword_1E30903F0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v142)), 14), 14).u8[0])
    {
      *(v137 - 112) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v142)), 14), 14).i8[1])
    {
      *(v137 - 96) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v139, xmmword_1E30903E0)))), 14).i8[2])
    {
      *(v137 - 80) = 0;
      *(v137 - 64) = 0;
    }

    v143 = vorrq_s8(v139, xmmword_1E30903D0);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v143)), 14)).i32[1])
    {
      *(v137 - 48) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v143)), 14)).i8[5])
    {
      *(v137 - 32) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v139, xmmword_1E30903C0))))).i8[6])
    {
      *(v137 - 16) = 0;
      *v137 = 0;
    }

    v136 += 16;
    v137 += 32;
  }

  while (v136 != 32);
  v144 = 0;
  v145 = &STACK[0x1D60];
  v146 = vdupq_n_s64(0x1FuLL);
  do
  {
    v147 = vdupq_n_s64(v144);
    v148 = vorrq_s8(v147, xmmword_1E3049620);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v146, v148)), 14), 14).u8[0])
    {
      *(v145 - 240) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v148)), 14), 14).i8[1])
    {
      *(v145 - 224) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v147, xmmword_1E3049640)))), 14).i8[2])
    {
      *(v145 - 208) = 0;
      *(v145 - 192) = 0;
    }

    v149 = vorrq_s8(v147, xmmword_1E3049660);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v149)), 14)).i32[1])
    {
      *(v145 - 176) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v149)), 14)).i8[5])
    {
      *(v145 - 160) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v147, xmmword_1E305F210))))).i8[6])
    {
      *(v145 - 144) = 0;
      *(v145 - 128) = 0;
    }

    v150 = vorrq_s8(v147, xmmword_1E30903F0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v150)), 14), 14).u8[0])
    {
      *(v145 - 112) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v150)), 14), 14).i8[1])
    {
      *(v145 - 96) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v147, xmmword_1E30903E0)))), 14).i8[2])
    {
      *(v145 - 80) = 0;
      *(v145 - 64) = 0;
    }

    v151 = vorrq_s8(v147, xmmword_1E30903D0);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v151)), 14)).i32[1])
    {
      *(v145 - 48) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v151)), 14)).i8[5])
    {
      *(v145 - 32) = 0;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v147, xmmword_1E30903C0))))).i8[6])
    {
      *(v145 - 16) = 0;
      *v145 = 0;
    }

    v144 += 16;
    v145 += 32;
  }

  while (v144 != 32);
  *&STACK[0x530] = 0u;
  *&STACK[0x520] = 0u;
  *&STACK[0x510] = 0u;
  *&STACK[0x548] = 0u;
  *&STACK[0x558] = 0u;
  *&STACK[0x568] = 0u;
  LODWORD(STACK[0x540]) = 0;
  LODWORD(STACK[0x578]) = 0;
  re::ArgumentBufferCacheReferences::ArgumentBufferCacheReferences(&STACK[0x4B8], *(v76[2] + 32));
  v152 = *(v76[2] + 32);
  STACK[0x460] = 0;
  STACK[0x450] = 0;
  LODWORD(STACK[0x458]) = 0;
  STACK[0x448] = 0;
  STACK[0x440] = v152;
  v153 = re::DynamicArray<re::InstanceConstants>::setCapacity(&STACK[0x440], 1uLL);
  v154 = LODWORD(STACK[0x458]) + 1;
  LODWORD(STACK[0x458]) = v154;
  v155 = STACK[0x450];
  v156 = STACK[0x448];
  if (STACK[0x450] >= STACK[0x448])
  {
    v157 = v155 + 1;
    if (v156 < v155 + 1)
    {
      if (STACK[0x440])
      {
        v158 = 2 * v156;
        if (!v156)
        {
          v158 = 8;
        }

        if (v158 <= v157)
        {
          v159 = v155 + 1;
        }

        else
        {
          v159 = v158;
        }

        re::DynamicArray<re::InstanceConstants>::setCapacity(&STACK[0x440], v159);
        v154 = STACK[0x458];
      }

      else
      {
        re::DynamicArray<re::InstanceConstants>::setCapacity(&STACK[0x440], v157);
        v154 = LODWORD(STACK[0x458]) + 1;
      }
    }

    v155 = STACK[0x450];
  }

  v160 = (STACK[0x460] + (v155 << 8));
  *v160 = 0u;
  v160[1] = 0u;
  v160[2] = 0u;
  v160[3] = 0u;
  v160[4] = 0u;
  v160[5] = 0u;
  v160[6] = 0u;
  v160[7] = 0u;
  v160[8] = 0u;
  v160[9] = 0u;
  v160[10] = 0u;
  v160[11] = 0u;
  v160[12] = 0u;
  v160[13] = 0u;
  v160[14] = 0u;
  v160[15] = 0u;
  STACK[0x450] = v155 + 1;
  LODWORD(STACK[0x458]) = v154 + 1;
  LOWORD(STACK[0x418]) = 0;
  STACK[0x420] = 0;
  LODWORD(STACK[0x428]) = 0;
  STACK[0x438] = 0;
  STACK[0x430] = 0;
  v79 = v76[1];
  v161 = *(v79 + 56);
  v162 = (*(*(v80 + 8) + 64))(**(v80 + 8), sel_setCullMode_, v161);
  LOBYTE(STACK[0x41A]) = v161;
  v164 = STACK[0x418];
  LOBYTE(v165) = LOWORD(STACK[0x418]) | 1;
  LOWORD(STACK[0x418]) |= 1u;
  v166 = *v79;
  if ((v164 & 2) == 0 || LOBYTE(STACK[0x41B]) != v166)
  {
    v162 = (*(*(v80 + 8) + 176))(**(v80 + 8), sel_setTriangleFillMode_, *v79);
    LOBYTE(STACK[0x41B]) = v166;
    v165 = LOWORD(STACK[0x418]) | 2;
    LOWORD(STACK[0x418]) = v165;
  }

  v167 = *(v79 + 59);
  if ((v165 & 4) == 0 || LOBYTE(STACK[0x41C]) != v167 || LOBYTE(STACK[0x41D]) != v167)
  {
    v162 = (*(*(v80 + 8) + 128))(**(v80 + 8), sel_setStencilFrontReferenceValue_backReferenceValue_, *(v79 + 59), *(v79 + 59));
    LOBYTE(STACK[0x41C]) = v167;
    LOBYTE(STACK[0x41D]) = v167;
    LOWORD(STACK[0x418]) |= 4u;
  }

  if ((atomic_load_explicit(&qword_1EE1B9998, memory_order_acquire) & 1) == 0)
  {
    v162 = __cxa_guard_acquire(&qword_1EE1B9998);
    if (v162)
    {
      re::Defaults::intValue("fallbackRenderingMode", v163, &byte_1EE1B9990);
      __cxa_guard_release(&qword_1EE1B9998);
    }
  }

  v168 = v76 + 19;
  if (byte_1EE1B9990)
  {
    v168 = &algn_1EE1B9991[3];
  }

  LODWORD(STACK[0x414]) = *v168;
  TechniqueVariant = *(v76[3] + 96);
  v910 = v77;
  if (TechniqueVariant)
  {
    STACK[0x1ED0] = 0;
    STACK[0x1ED8] = &str_67;
    v79 = &STACK[0x1ED0];
    v169 = re::DebugSettingsManager::getWithErrorCode<int>(TechniqueVariant, &STACK[0x1ED0], &STACK[0x414]);
    if (STACK[0x1ED0])
    {
      if (STACK[0x1ED0])
      {
      }
    }

    re::Defaults::intValue("fallbackRenderingMode", v170, &STACK[0x1ED0]);
    if (LOBYTE(STACK[0x1ED0]))
    {
      v171 = &STACK[0x1ED4];
    }

    else
    {
      v171 = &STACK[0x414];
    }

    LODWORD(STACK[0x414]) = *v171;
  }

  v172 = *(v80 + 56);
  v890 = v172[15].u8[0];
  STACK[0x3B0] = 0;
  LODWORD(STACK[0x3B8]) = 0;
  *&STACK[0x3C0] = 0u;
  *&STACK[0x3D0] = 0u;
  *&STACK[0x3E0] = 0u;
  *&STACK[0x3F0] = 0u;
  *&STACK[0x400] = 0u;
  v173 = *(v80 + 40);
  if (v173 == *(v80 + 48))
  {
    goto LABEL_107;
  }

  v900 = 0;
  v883 = 0;
  v884 = 0;
  v895 = 0;
  v885 = 0;
  v174 = *v76;
  v77 = 0x9E3779B97F4A7C17;
  v889 = v83 + 9;
  v876 = v83 + 15;
  v877 = v83 + 3;
  v874 = v83 + 12;
  v875 = v83 + 6;
  v872 = *v76;
  v873 = v83 + 18;
  v879 = -1;
  v909 = v83;
  while (2)
  {
    v175 = v174[2];
    if (v175 <= v173)
    {
      goto LABEL_1094;
    }

    v176 = v173 >> 7;
    v177 = v174[1];
    if (v177 <= v173 >> 7)
    {
      goto LABEL_1095;
    }

    v178 = v77;
    v880 = v173;
    v127 = (*(*v174 + 8 * v176) + 224 * (v173 & 0x7F));
    if (*(v127 + 156) == 1)
    {
      v179 = *(v127 + 40);
      STACK[0x1030] = re::MaterialManager::sceneTextures(v83, v179);
      v180 = re::MaterialManager::lightBuffers(v83, v179);
      v181 = v180[10];
      v182 = v180[17];
      v183 = v180[15];
      STACK[0xE40] = v180[12];
      STACK[0xE48] = v181;
      STACK[0xE50] = v182;
      STACK[0xE58] = v183;
      LODWORD(STACK[0xE60]) = 0;
      STACK[0xE68] = v180;
      v184 = re::MaterialManager::sceneBuffers(v83, v179);
      v185 = v184[10];
      v186 = v184[17];
      v187 = v184[15];
      STACK[0xE10] = v184[12];
      STACK[0xE18] = v185;
      STACK[0xE20] = v186;
      STACK[0xE28] = v187;
      LODWORD(STACK[0xE30]) = 0;
      STACK[0xE38] = v184;
      v188 = re::MaterialManager::lightBuffers(v83, v179);
      v189 = *(v188 + 216);
      if (v189)
      {
        v190 = 24 * v189;
        v79 = *(v188 + 232) + 16;
        do
        {
          v191 = *(v79 - 8);
          if (v191)
          {
            [*v80 useResources:*v79 count:v191 usage:1 stages:2];
          }

          v79 += 24;
          v190 -= 24;
        }

        while (v190);
      }
    }

    re::MeshStats::setCurrentCategory(*(v80 + 56), v890);
    v192 = v127[9];
    v193 = *(v127 + 8);
    if (v193 <= 1)
    {
      v193 = 1;
    }

    v194 = *(v80 + 56);
    v80 = *(v192 + 56);
    *(v194 + 4) += v193;
    if (v80)
    {
      v195 = *(v192 + 72);
      v196 = *(v80 + 176);
      if (v196)
      {
        v79 = *(v80 + 184);
        v197 = v79 + 40 * v196;
        while (1)
        {
          v198 = *(v79 + 8);
          if ((v198 & 1) == 0)
          {
            break;
          }

          v200 = *(v79 + 16);
          if (v200)
          {
            LOBYTE(v199) = *v200;
LABEL_143:
            if (v199)
            {
              v199 = v199;
              v201 = v200[1];
              if (v201)
              {
                v202 = v200 + 2;
                do
                {
                  v199 = 31 * v199 + v201;
                  v203 = *v202++;
                  v201 = v203;
                }

                while (v203);
              }

              v204 = v199 & 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v204 = 0;
            }

            goto LABEL_150;
          }

          v204 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_150:
          STACK[0x1ED0] = v204;
          v205 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v80 + 504), &STACK[0x1ED0]);
          if (v205 != -1)
          {
            v206 = *(v80 + 496);
            v207 = *(*(v80 + 512) + 16 * v205 + 8);
            STACK[0x1ED0] = *(v79 + 32);
            LODWORD(STACK[0x1220]) = *(v206 + v207);
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v192 + 128), &STACK[0x1ED0], &STACK[0x1220]);
          }

          v79 += 40;
          if (v79 == v197)
          {
            goto LABEL_153;
          }
        }

        v199 = v198 >> 8;
        v200 = (v79 + 9);
        goto LABEL_143;
      }

LABEL_153:
      if (v195)
      {
        v208 = *(v80 + 176);
        if (v208)
        {
          v79 = *(v80 + 184);
          v209 = v79 + 40 * v208;
          while (1)
          {
            v210 = *(v79 + 8);
            if ((v210 & 1) == 0)
            {
              break;
            }

            v212 = *(v79 + 16);
            if (v212)
            {
              LOBYTE(v211) = *v212;
LABEL_160:
              if (v211)
              {
                v211 = v211;
                v213 = v212[1];
                if (v213)
                {
                  v214 = v212 + 2;
                  do
                  {
                    v211 = 31 * v211 + v213;
                    v215 = *v214++;
                    v213 = v215;
                  }

                  while (v215);
                }

                v216 = v211 & 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v216 = 0;
              }

              goto LABEL_167;
            }

            v216 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_167:
            STACK[0x1ED0] = v216;
            v217 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v195 + 25, &STACK[0x1ED0]);
            if (v217 != -1)
            {
              v218 = v195[24];
              v219 = *(v195[26] + 16 * v217 + 8);
              STACK[0x1ED0] = *(v79 + 32);
              LODWORD(STACK[0x1220]) = *(v218 + v219);
              re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v192 + 128), &STACK[0x1ED0], &STACK[0x1220]);
            }

            v79 += 40;
            if (v79 == v209)
            {
              goto LABEL_170;
            }
          }

          v211 = v210 >> 8;
          v212 = (v79 + 9);
          goto LABEL_160;
        }
      }
    }

LABEL_170:
    v163 = *(v127 + 11);
    v905 = v80;
    if (v163 == -1)
    {
      v906 = 0;
      TechniqueVariant = 0;
    }

    else
    {
      if (*(v76 + 156))
      {
        v79 = *(v192 + 192) | 4u;
      }

      else
      {
        v79 = *(v192 + 192);
      }

      TechniqueAtIndex = re::MaterialParameterTableLayers::getTechniqueAtIndex(v192, v163);
      TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, 0, 0);
      if ((*(v192 + 192) || *(v192 + 104) || *(v192 + 112) || *(v192 + 120) || *(v192 + 152)) && (*(TechniqueAtIndex + 40) != 1 ? (v221 = *TechniqueAtIndex + 8) : (v221 = TechniqueAtIndex + 48), *(v221 + 8)))
      {
        *&STACK[0x1ED0] = *(v192 + 104);
        STACK[0x1EE0] = *(v192 + 120);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&STACK[0x1EE8], v192 + 128);
        LOWORD(STACK[0x1F28]) = *(v192 + 192);
        v222 = *(v221 + 24);
        LOBYTE(STACK[0x1E60]) = 1;
        LOWORD(STACK[0x1E62]) = v79;
        STACK[0x11B0] = (v178 + (v222 << 6) + (v222 >> 2) + re::CombinedDynamicFunctionConstants::hash(&STACK[0x1ED0], &STACK[0x1E60])) ^ v222;
        v223 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v909 + 42, &STACK[0x11B0]);
        if (v223 == -1)
        {
          LOBYTE(STACK[0x1080]) = 1;
          LOWORD(STACK[0x1082]) = v79;
          re::CombinedDynamicFunctionConstants::combinedMap(&STACK[0x1ED0], &STACK[0x1080], &STACK[0x1220]);
          v225 = re::FunctionConstantsEnumerator::enumerateFunctionConstantSet(v221, &STACK[0x1220]);
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&STACK[0x1220]);
          STACK[0x1220] = v225;
          re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(v909 + 42, &STACK[0x11B0], &STACK[0x1220]);
          v224 = v226;
        }

        else
        {
          v224 = (*(v909 + 43) + 16 * v223 + 8);
        }

        TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(TechniqueAtIndex, *v224, 0);
        v906 = *v224;
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&STACK[0x1EE8]);
      }

      else
      {
        v906 = 0;
      }

      v227 = **TechniqueVariant;
      if (*(v227 + 2632) == 1)
      {
        v228 = *(v227 + 2640);
        LODWORD(STACK[0x1230]) = 0;
        *&STACK[0x1250] = 0u;
        *&STACK[0x1260] = 0u;
        *&STACK[0x1270] = 0u;
        re::MaterialParameterTableLayers::getDebugMode(&STACK[0x3AC], v192, v228);
        STACK[0x398] = TechniqueVariant;
        v77 = v178;
        goto LABEL_192;
      }
    }

    v77 = v178;
    LODWORD(STACK[0x1230]) = 0;
    *&STACK[0x1250] = 0u;
    *&STACK[0x1260] = 0u;
    *&STACK[0x1270] = 0u;
    LOBYTE(STACK[0x3AC]) = 0;
    STACK[0x398] = TechniqueVariant;
    if (!TechniqueVariant)
    {
      FallbackVariant = 0;
      goto LABEL_195;
    }

LABEL_192:
    FallbackVariant = *TechniqueVariant;
    if (*TechniqueVariant)
    {
      FallbackVariant = re::MaterialTechnique::tryGetFallbackVariant(FallbackVariant);
      v77 = v178;
    }

LABEL_195:
    STACK[0x3A0] = FallbackVariant;
    if (LODWORD(STACK[0x414]) != 2)
    {
      if (LODWORD(STACK[0x414]) != 1 || !FallbackVariant)
      {
        goto LABEL_200;
      }

      STACK[0x398] = FallbackVariant;
    }

    STACK[0x3A0] = 0;
LABEL_200:
    v230 = v80;
    LOBYTE(v80) = 0;
    v231 = 0;
    LODWORD(STACK[0xE60]) = *(v127 + 24);
    v894 = v230 + 456;
    v881 = v230 + 1096;
    v882 = v230 + 984;
    v893 = v230 + 568;
    do
    {
      if (v80)
      {
        LOBYTE(v80) = 1;
        goto LABEL_935;
      }

      TechniqueVariant = *(&STACK[0x398] + v231);
      v232 = *(v192 + 232);
      if ((v919 & 1) == 0)
      {
        if (TechniqueVariant)
        {
          shouldCompileSynchronously = re::MaterialTechniqueVariant::shouldCompileSynchronously(*(&STACK[0x398] + v231));
          goto LABEL_208;
        }

        shouldCompileSynchronously = 0;
        v80 = 1;
LABEL_218:
        v238 = (v76 + 26);
        if (v76[24] & 1) != 0 || (v238 = (v192 + 288), (*(v192 + 272)) || (v238 = (v127 + 24), *(v127 + 176) == 1))
        {
          a77 = v238[1];
          a78 = *v238;
          v239 = 1;
        }

        else
        {
          v239 = 0;
        }

        v77 = v910;
        v920 = v231;
        if (v80)
        {
          v240 = 0;
        }

        else
        {
          v241 = *(TechniqueVariant + 8);
          v242 = *(v241 + 24);
          if (v242)
          {
            LODWORD(v242) = *(v242 + 328) + 1;
          }

          v243 = *(*(v241 + 16) + 328);
          if (v243 + 1 > v242)
          {
            v244 = v243 + 1;
          }

          else
          {
            v244 = v242;
          }

          v240 = v244;
        }

        v245 = *(v192 + 236);
        v246 = *(v192 + 256);
        v247 = *(v192 + 264);
        v248 = *(v192 + 200);
        v249 = LOBYTE(STACK[0x3AC]);
        v250 = LOWORD(STACK[0x3AE]);
        v163 = *(v127 + 8);
        v251 = *(v192 + 260);
        if (*(v127 + 145))
        {
          v252 = *(v127 + 146);
        }

        else
        {
          v252 = 0;
        }

        v253 = v127[11];
        v254 = v127[16];
        v255 = *(v127 + 24);
        v256 = *(v192 + 240);
        v257 = *(v192 + 248);
        v258 = *(v76 + 60);
        if (*(v127 + 41) != 0.0)
        {
          v258 = *(v127 + 41);
        }

        v259 = *(v127 + 3);
        v260 = *(v192 + 252);
        LODWORD(STACK[0x1220]) = bswap32(*(v127 + 1)) & 0xFFFF0000 | HIWORD(*(v127 + 1));
        if (v232 <= 1.0)
        {
          v261 = v232;
        }

        else
        {
          v261 = 1.0;
        }

        if (v261 < 0.0)
        {
          v261 = 0.0;
        }

        if (v245 < 0.0)
        {
          v245 = 0.0;
        }

        *&STACK[0x1294] = v245;
        *&STACK[0x1224] = v261;
        LODWORD(STACK[0x1228]) = v246;
        if (v249)
        {
          v262 = v250;
        }

        else
        {
          v262 = 0;
        }

        LODWORD(STACK[0x1230]) = v248;
        LODWORD(STACK[0x122C]) = v262;
        LOBYTE(STACK[0x1244]) = 0;
        LOBYTE(STACK[0x1290]) = 0;
        LOWORD(STACK[0x1292]) = COERCE_UNSIGNED_INT(1.0);
        LODWORD(STACK[0x1234]) = v240;
        LODWORD(STACK[0x1238]) = 0;
        *&STACK[0x1260] = xmmword_1E30B5C80;
        *&STACK[0x1270] = xmmword_1E30B5C90;
        LOBYTE(STACK[0x1245]) = v252;
        LOBYTE(STACK[0x1246]) = v247;
        LODWORD(STACK[0x1240]) = 1065353216;
        LODWORD(STACK[0x123C]) = v163;
        LODWORD(STACK[0x1248]) = v251;
        if (v239)
        {
          v263 = vmulq_f32(a77, vsubq_f32(a78, *&STACK[0xBF0]));
          LODWORD(v264) = a77.i32[2];
          *(&v264 + 1) = -(v263.f32[2] + vaddv_f32(*v263.f32));
          v265 = v264;
          v266 = a77.i64[0];
        }

        else
        {
          v266 = 0;
          v265 = 0;
        }

        STACK[0x1250] = v266;
        STACK[0x1258] = v265;
        _H4 = 0;
        if (v258 != 0.0)
        {
          _S3 = 1.0 / v258;
          __asm { FCVT            H4, S3 }
        }

        LOWORD(STACK[0x12A8]) = _H4;
        STACK[0x1280] = v253;
        STACK[0x1288] = v254;
        LOWORD(STACK[0x1298]) = v255;
        STACK[0x129C] = v256;
        LODWORD(STACK[0x12A4]) = v257;
        LOBYTE(STACK[0x12AA]) = v259 == 2;
        LOWORD(STACK[0x12AC]) = v260;
        STACK[0x5B0] = &STACK[0x1220];
        v272 = STACK[0x450];
        v273 = *(v127 + 8);
        v274 = *(v127 + 8);
        _CF = STACK[0x450] >= v273;
        STACK[0x2A8] = TechniqueVariant;
        v911 = shouldCompileSynchronously;
        if (_CF)
        {
          v273 = v272;
        }

        else
        {
          if (STACK[0x448] < v273)
          {
            re::DynamicArray<re::InstanceConstants>::setCapacity(&STACK[0x440], v273);
            v274 = *(v127 + 8);
          }

          STACK[0x450] = v273;
          ++LODWORD(STACK[0x458]);
        }

        if (*(v127 + 3) == 2)
        {
          v275 = v274;
        }

        else
        {
          v275 = 1;
        }

        if (v275 >= 1)
        {
          v79 = 0;
          TechniqueVariant = STACK[0x460];
          while (v273 != v79)
          {
            v276 = *v76;
            v277 = (v79 + *(v127 + 21));
            v278 = *(*v76 + 40);
            if (v278 <= v277)
            {
              goto LABEL_1074;
            }

            v279 = v277 >> 7;
            v280 = v276[4];
            if (v280 <= v277 >> 7)
            {
              goto LABEL_1075;
            }

            v281 = v276[11];
            if (v281 <= v277)
            {
              goto LABEL_1076;
            }

            v282 = v276[10];
            if (v282 <= v279)
            {
              goto LABEL_1077;
            }

            v283 = v276[14];
            if (v283 <= v277)
            {
              goto LABEL_1078;
            }

            v284 = v276[13];
            if (v284 <= v279)
            {
              goto LABEL_1079;
            }

            re::ConstantSetupHelper::populateInstanceConstants(TechniqueVariant, *(v276[3] + 8 * v279) + (((v79 + *(v127 + 84)) & 0x7F) << 6), &STACK[0xBF0], *(*(v276[12] + 8 * v279) + 4 * ((v79 + *(v127 + 84)) & 0x7F)), *(*(v276[9] + 8 * v279) + 4 * ((v79 + *(v127 + 84)) & 0x7F)));
            if (v80)
            {
              v285 = 0;
            }

            else
            {
              v286 = *(STACK[0x2A8] + 8);
              v287 = *(v286 + 24);
              if (v287)
              {
                LODWORD(v287) = *(v287 + 328) + 1;
              }

              v285 = *(*(v286 + 16) + 328);
              if (v285 + 1 > v287)
              {
                LOWORD(v285) = v285 + 1;
              }

              else
              {
                LOWORD(v285) = v287;
              }

              v285 = v285;
            }

            v288 = *(v192 + 232);
            *(TechniqueVariant + 124) = bswap32(*(v127 + 1)) & 0xFFFF0000 | HIWORD(*(v127 + 1));
            *(TechniqueVariant + 128) = v288;
            *(TechniqueVariant + 136) = v262;
            *(TechniqueVariant + 140) = v285;
            *(TechniqueVariant + 132) = v910;
            ++v79;
            TechniqueVariant += 256;
            if (v275 == v79)
            {
              goto LABEL_276;
            }
          }

          STACK[0x1E60] = 0;
          *&STACK[0x1F10] = 0u;
          *&STACK[0x1F00] = 0u;
          *&STACK[0x1EF0] = 0u;
          *&STACK[0x1EE0] = 0u;
          *&STACK[0x1ED0] = 0u;
          v79 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(STACK[0x11B0]) = 136315906;
          STACK[0x11B4] = "operator[]";
          LOWORD(STACK[0x11BC]) = 1024;
          LODWORD(STACK[0x11BE]) = 789;
          LOWORD(STACK[0x11C2]) = 2048;
          STACK[0x11C4] = v273;
          LOWORD(STACK[0x11CC]) = 2048;
          STACK[0x11CE] = v273;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_1074:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, v277, v278);
          _os_crash();
          __break(1u);
LABEL_1075:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v279, v280);
          _os_crash();
          __break(1u);
LABEL_1076:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, v277, v281);
          _os_crash();
          __break(1u);
LABEL_1077:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v279, v282);
          _os_crash();
          __break(1u);
LABEL_1078:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, v277, v283);
          _os_crash();
          __break(1u);
LABEL_1079:
          re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v279, v284);
          _os_crash();
          __break(1u);
          goto LABEL_1080;
        }

LABEL_276:
        STACK[0x5C8] = STACK[0x460];
        v289 = v127[9];
        v291 = v289[9];
        v290 = v289[10];
        if (v291)
        {
          v292 = v291 + 152;
        }

        else
        {
          v292 = 0;
        }

        STACK[0x648] = v292;
        if (v290)
        {
          v290 = *v290;
        }

        v262 = &STACK[0x1E60];
        v77 = 0x9E3779B97F4A7C17;
        STACK[0x668] = v290;
        v293 = v289[8];
        if (v293)
        {
          v294 = v293 + 152;
        }

        else
        {
          v294 = 0;
        }

        v295 = v289[11];
        if (v295)
        {
          v296 = v295 + 152;
        }

        else
        {
          v296 = 0;
        }

        STACK[0x640] = v294;
        STACK[0x650] = v296;
        v297 = v289[9];
        if (v297)
        {
          v298 = (v297 + 33);
          v299 = v297[45];
          v300 = v297[43];
          v301 = v297[50];
          v297 = v297[48];
        }

        else
        {
          v299 = 0;
          v300 = 0;
          v301 = 0;
          v298 = 0;
        }

        STACK[0xF30] = v299;
        STACK[0xF38] = v300;
        STACK[0xF40] = v301;
        STACK[0xF48] = v297;
        LODWORD(STACK[0xF50]) = 0;
        STACK[0xF58] = v298;
        v302 = *(v127[9] + 64);
        if (v302)
        {
          v303 = (v302 + 33);
          v304 = v302[45];
          v305 = v302[43];
          v306 = v302[50];
          v302 = v302[48];
        }

        else
        {
          v304 = 0;
          v305 = 0;
          v306 = 0;
          v303 = 0;
        }

        STACK[0xF00] = v304;
        STACK[0xF08] = v305;
        STACK[0xF10] = v306;
        STACK[0xF18] = v302;
        LODWORD(STACK[0xF20]) = 0;
        STACK[0xF28] = v303;
        v307 = *(v127[9] + 88);
        if (v307)
        {
          v308 = (v307 + 33);
          v309 = v307[45];
          v310 = v307[43];
          v311 = v307[50];
          v307 = v307[48];
        }

        else
        {
          v309 = 0;
          v310 = 0;
          v311 = 0;
          v308 = 0;
        }

        STACK[0xFF0] = v309;
        STACK[0xFF8] = v310;
        STACK[0x1000] = v311;
        STACK[0x1008] = v307;
        LODWORD(STACK[0x1010]) = 0;
        STACK[0x1018] = v308;
        v312 = v127[9];
        v314 = v312[9];
        v313 = v312[10];
        if (v314)
        {
          v315 = v314 + 680;
        }

        else
        {
          v315 = 0;
        }

        STACK[0x1060] = v315;
        if (v313)
        {
          v313 = *(v313 + 8);
        }

        STACK[0x1078] = v313;
        v316 = v312[8];
        if (v316)
        {
          v317 = v316 + 680;
        }

        else
        {
          v317 = 0;
        }

        v318 = v312[11];
        if (v318)
        {
          v319 = v318 + 680;
        }

        else
        {
          v319 = 0;
        }

        STACK[0x1058] = v317;
        STACK[0x1070] = v319;
        v320 = v312[9];
        if (v320)
        {
          v321 = v320 + 792;
          v322 = *(v320 + 888);
          v320 = *(v320 + 872);
        }

        else
        {
          v322 = 0;
          v321 = 0;
        }

        STACK[0xD80] = v322;
        STACK[0xD88] = v320;
        STACK[0xD90] = v321;
        v323 = v312[8];
        if (v323)
        {
          v324 = v323 + 792;
          v325 = *(v323 + 888);
          v323 = *(v323 + 872);
        }

        else
        {
          v325 = 0;
          v324 = 0;
        }

        STACK[0xD68] = v325;
        STACK[0xD70] = v323;
        STACK[0xD78] = v324;
        v326 = v312[11];
        if (v326)
        {
          v327 = v326 + 792;
          v328 = *(v326 + 888);
          v326 = *(v326 + 872);
        }

        else
        {
          v328 = 0;
          v327 = 0;
        }

        STACK[0xD98] = v328;
        STACK[0xDA0] = v326;
        STACK[0xDA8] = v327;
        if (*(v127 + 3) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1B99A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B99A0))
          {
            re::Defaults::BOOLValue("skipDrawCallHandlers", v852, &STACK[0x1ED0]);
            if (LOBYTE(STACK[0x1ED0]))
            {
              v853 = STACK[0x1ED1];
            }

            else
            {
              v853 = 0;
            }

            _MergedGlobals_452 = v853;
            __cxa_guard_release(&qword_1EE1B99A0);
          }

          v329 = STACK[0x2A0];
          v330 = *(STACK[0x2A0] + 56);
          if (*(v330 + 120) != 3)
          {
            *(v330 + 120) = 3;
            *(v330 + 96) = v330 + 56;
            *(v330 + 104) = v330 + 60;
            *(v330 + 112) = v330 + 64;
          }

          re::EncoderState::setVertexAmplificationCountForState(&STACK[0x418], *(v76[3] + 366), *(v76 + 108), v76[1] + 8, *(v127 + 36), *(v127 + 10), v329);
          v331 = v76[1];
          v332 = v76[4];
          v333 = v76[8];
          if (v333)
          {
            STACK[0x1ED0] = v333[197];
            STACK[0x1ED8] = 0;
            re::DynamicArray<re::PatchHandler>::add((v333 + 197), &STACK[0x1ED0]);
            v334 = v333[201] + 16 * v333[199] - 16;
          }

          else
          {
            v334 = 0;
          }

          v338 = *(v192 + 232);
          v79 = *(v127 + 80);
          TechniqueVariant = *(v76 + 156);
          re::resolveStencilInfo(&STACK[0x1ED0], v127, v76[5], 0);
          a74 = a74 & 0xFFFFFF00 | LOBYTE(STACK[0x1EE0]);
          if ((_MergedGlobals_452 & 1) == 0)
          {
            v339.i32[0] = STACK[0x1ED0];
            v341 = vmovl_u8(v339).u64[0];
            v342 = STACK[0x1ED4];
            v340.i32[0] = STACK[0x1ED8];
            v343 = STACK[0x1EDC];
            v344 = *(STACK[0x2A0] + 56);
            v345 = *v127[15];
            STACK[0x1ED0] = &STACK[0x1020];
            STACK[0x1ED8] = &STACK[0xDB0];
            STACK[0x1EE0] = &STACK[0xD20];
            STACK[0x1EE8] = &STACK[0x600];
            STACK[0x1EF0] = v331 + 8;
            STACK[0x1EF8] = v332;
            STACK[0x1F00] = v192 + 104;
            STACK[0x1F08] = v334;
            v346 = vuzp1_s8(v341, v341);
            LODWORD(STACK[0x1F10]) = v346.i32[0];
            LODWORD(STACK[0x1F14]) = v342;
            LODWORD(STACK[0x1F18]) = vuzp1_s8(*&vmovl_u8(v340), v346).u32[0];
            LODWORD(STACK[0x1F1C]) = v343;
            LODWORD(STACK[0x1F20]) = a74;
            LODWORD(STACK[0x1F24]) = v338;
            LOBYTE(STACK[0x1F28]) = v79;
            LOWORD(STACK[0x1F29]) = TechniqueVariant;
            STACK[0x1F30] = v344;
            STACK[0x1F38] = &STACK[0x418];
            (*(v345 + 16))();
            if (v904)
            {
              LOBYTE(STACK[0x370]) = 0;
              LOBYTE(STACK[0x348]) = 0;
              LOBYTE(STACK[0x2E0]) = 0;
              v842 = v76[5];
              v843 = *(v842 + 16);
              *&STACK[0x1ED0] = *v842;
              LOBYTE(STACK[0x1EE0]) = v843;
              re::DrawCallRecorderGroup::recordEncodedDrawCall(v904, v127, 0, &STACK[0x370], &STACK[0x348], &STACK[0x2E0], &STACK[0x1ED0], 0, 1);
              if (LOBYTE(STACK[0x2E0]) == 1 && STACK[0x320])
              {
                if (STACK[0x340])
                {
                  (*(*STACK[0x320] + 40))(STACK[0x320]);
                }

                STACK[0x340] = 0;
                STACK[0x328] = 0;
                STACK[0x330] = 0;
                STACK[0x320] = 0;
                ++LODWORD(STACK[0x338]);
              }

              if (LOBYTE(STACK[0x348]) == 1 && STACK[0x350])
              {
                if (STACK[0x358])
                {
                  (*(*STACK[0x350] + 40))(STACK[0x350], STACK[0x360]);
                }

                *&STACK[0x360] = 0u;
                *&STACK[0x350] = 0u;
              }

              if (LOBYTE(STACK[0x370]) == 1 && STACK[0x378])
              {
                if (STACK[0x380])
                {
                  (*(*STACK[0x378] + 40))(STACK[0x378], STACK[0x388]);
                }

                *&STACK[0x388] = 0u;
                *&STACK[0x378] = 0u;
              }
            }
          }

          re::ShaderResourceBindState::reset(&STACK[0x12C0]);
          v347 = *(STACK[0x2A0] + 56);
          *(v347 + 96) = 0;
          *(v347 + 104) = 0;
          *(v347 + 120) = 0;
          *(v347 + 112) = 0;
          LOBYTE(v80) = 1;
          v231 = v920;
          v77 = 0x9E3779B97F4A7C17;
          goto LABEL_935;
        }

        if (v80)
        {
          LOBYTE(v80) = 0;
          v231 = v920;
          goto LABEL_935;
        }

        STACK[0x11B0] = &unk_1F5CC38C8;
        LODWORD(STACK[0x11D0]) = 0;
        STACK[0x11C0] = 0;
        STACK[0x11C8] = 0;
        STACK[0x11B8] = 0;
        *&STACK[0x11D8] = 0u;
        *&STACK[0x11E8] = 0u;
        *&STACK[0x11F8] = 0u;
        *&STACK[0x1208] = 0u;
        STACK[0x1218] = 0;
        v335 = STACK[0x2A8];
        v80 = 0x9E3779B97F4A7C17;
        if (*(STACK[0x2A8] + 16) == 1)
        {
          v336 = *v335;
          if (*(*v335 + 40) == 1)
          {
            v337 = (v336 + 48);
          }

          else
          {
            v337 = (*v336 + 8);
          }

          Permutation = re::FunctionConstantsEnumerator::createPermutation(v337, v906, *(v336 + 4), *(v336 + 3), &STACK[0x1E60]);
          v349 = 8 * STACK[0x1E70];
          v350 = re::DynamicArray<BOOL>::setCapacity(&STACK[0x11B8], v349);
          ++LODWORD(STACK[0x11D0]);
          v351 = STACK[0x11D8];
          v352 = STACK[0x1E70];
          if (STACK[0x1E70])
          {
            v353 = 0;
            v354 = 0;
            do
            {
              v355 = STACK[0x1E80] + v353;
              re::DynamicString::DynamicString(&STACK[0x1ED0], v355);
              *&STACK[0x1EF0] = *(v355 + 32);
              v356 = *(v355 + 48);
              v357 = *(v355 + 64);
              v358 = *(v355 + 80);
              LODWORD(STACK[0x1F30]) = *(v355 + 96);
              *&STACK[0x1F10] = v357;
              *&STACK[0x1F20] = v358;
              *&STACK[0x1F00] = v356;
              *(v351 + 8 * v354) = STACK[0x1EF4];
              re::TechniqueFunctionConstant::getNameWithoutNamespace(&STACK[0x1ED0], &STACK[0x1080]);
              LOWORD(STACK[0x1160]) = 8 * v354;
              LOWORD(STACK[0x1162]) = 8;
              re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(&STACK[0x11E0], &STACK[0x1080], &STACK[0x1160]);
              if (STACK[0x1ED0] && (STACK[0x1ED8] & 1) != 0)
              {
                (*(*STACK[0x1ED0] + 40))(STACK[0x1ED0], STACK[0x1EE0]);
              }

              ++v354;
              v353 += 104;
            }

            while (STACK[0x1E70] > v354);
          }

          STACK[0x660] = &STACK[0x11B0];
          v359 = STACK[0x1210];
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&STACK[0x1E60]);
          v312 = v127[9];
          v80 = v359 - 0x61C8864680B583E9;
          v335 = STACK[0x2A8];
        }

        STACK[0x620] = **v335 + 320;
        STACK[0x628] = **v335 + 1448;
        STACK[0x630] = v894;
        TechniqueVariant = v905;
        STACK[0x638] = v905[2] + 400;
        if (v312[12])
        {
          v360 = *(v127 + 8);
          v79 = STACK[0x680];
          if (STACK[0x680] >= v360)
          {
            if (STACK[0x680] > v360)
            {
              goto LABEL_351;
            }
          }

          else
          {
            if (STACK[0x678] < v360)
            {
              re::DynamicArray<re::ConstantSource const*>::setCapacity(&STACK[0x670], *(v127 + 8));
              v79 = STACK[0x680];
            }

            if (v360 > v79 && v360 > v79)
            {
              bzero((STACK[0x690] + 8 * v79), 8 * (v360 - v79));
            }

LABEL_351:
            STACK[0x680] = v360;
            ++LODWORD(STACK[0x688]);
            v79 = v360;
            v360 = *(v127 + 8);
          }

          if (v360)
          {
            v362 = 0;
            v363 = *(v127 + 21);
            while (1)
            {
              v364 = *v76;
              v365 = (v363 + v362);
              v366 = *(*v76 + 64);
              if (v366 <= v365)
              {
                break;
              }

              v367 = v365 >> 7;
              v368 = *(v364 + 56);
              if (v368 <= v365 >> 7)
              {
                goto LABEL_1081;
              }

              if (v79 == v362)
              {
                goto LABEL_1082;
              }

              *(STACK[0x690] + 8 * v362) = *(*(*(v364 + 48) + 8 * v367) + 8 * ((v363 + v362) & 0x7F));
              if (v360 == ++v362)
              {
                goto LABEL_358;
              }
            }

LABEL_1080:
            re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, v365, v366);
            _os_crash();
            __break(1u);
LABEL_1081:
            re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v367, v368);
            _os_crash();
            __break(1u);
LABEL_1082:
            STACK[0x1080] = 0;
            *&STACK[0x1F10] = 0u;
            *&STACK[0x1F00] = 0u;
            *&STACK[0x1EF0] = 0u;
            *&STACK[0x1EE0] = 0u;
            *&STACK[0x1ED0] = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(STACK[0x1E60]) = 136315906;
            *(v262 + 4) = "operator[]";
            LOWORD(STACK[0x1E6C]) = 1024;
            *(v262 + 14) = 789;
            LOWORD(STACK[0x1E72]) = 2048;
            *(v262 + 20) = v79;
            LOWORD(STACK[0x1E7C]) = 2048;
            *(v262 + 30) = v79;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_1083:
            re::internal::assertLog(6, v684, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v79, v702);
            _os_crash();
            __break(1u);
LABEL_1084:
            re::internal::assertLog(6, v705, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v80, 2);
            _os_crash();
            __break(1u);
            goto LABEL_1085;
          }
        }

LABEL_358:
        v369 = v905[2];
        v370 = (v369 + 64);
        v371 = v369[76];
        v372 = v369[74];
        v373 = v369[81];
        v374 = v369[79];
        STACK[0xED8] = v372;
        STACK[0xEE0] = v373;
        STACK[0xEE8] = v374;
        LODWORD(STACK[0xEF0]) = 0;
        STACK[0xEF8] = v370;
        v375 = v905[81];
        v376 = v905[88];
        v377 = v905[86];
        STACK[0xEA0] = v905[83];
        STACK[0xEA8] = v375;
        STACK[0xEB0] = v376;
        STACK[0xEB8] = v377;
        LODWORD(STACK[0xEC0]) = 0;
        STACK[0xED0] = v371;
        STACK[0xEC8] = v893;
        v378 = v127[8];
        v379 = v378;
        do
        {
          v380 = v379;
          v379 = *v379;
        }

        while (v379 && !v380[8]);
        STACK[0xDD8] = (v380 + 5);
        STACK[0xDB0] = re::AttributeTable::buffers(v378);
        STACK[0xDB8] = v381;
        re::resolveStencilInfo(&STACK[0x2CF], v127, v76[5], v335);
        v382 = v127[9];
        v383 = **v335;
        v384 = v383[14];
        v385.n128_u32[0] = v383[15].u32[0];
        v386 = v382[8];
        if (v386 && *(v386 + 1092) == 1)
        {
          v71 = *(v386 + 1096);
          a45 = *(v386 + 1104);
          v387 = 1;
        }

        else
        {
          v387 = 0;
        }

        v388 = v382[9];
        v886 = v80;
        if (v388 && *(v388 + 1092) == 1)
        {
          v72 = *(v388 + 1096);
          v70 = *(v388 + 1104);
          v389 = 1;
        }

        else
        {
          v389 = 0;
        }

        v390 = v382[11];
        if (v390 && v390[136].i8[4] == 1)
        {
          v384 = v390[137];
          v385.n128_u32[0] = v390[138].u32[0];
        }

        if (v389)
        {
          v385.n128_f32[0] = v70;
        }

        if (v387)
        {
          v391 = a45;
        }

        else
        {
          v391 = v385.n128_f32[0];
        }

        v392 = v127[8];
        v393 = v335[1];
        v394 = v392;
        if (v393)
        {
          v395 = v393 + 8;
          v394 = v127[8];
        }

        v385.n128_u64[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v387), 0x1FuLL)), v71, vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v389), 0x1FuLL)), v72, v384));
        v907 = v385;
        do
        {
          v396 = v394;
          v394 = *v394;
        }

        while (v394 && !v396[8]);
        v397 = v396[11];
        v398 = *(v393 + 2);
        v399 = re::MaterialTechnique::combinedBuffersHash(*v335);
        v400 = *(v127[9] + 64);
        v401 = 0x9E3779B97F4A7C17;
        if (v400)
        {
          v401 = ((*(v400 + 312) - 0x61C8864680B583E9 + (*(v400 + 136) << 6) + (*(v400 + 136) >> 2)) ^ *(v400 + 136)) - 0x61C8864680B583E9;
        }

        v402 = (v397 - 0x61C8864680B583E9 + (v399 << 6) + (v399 >> 2)) ^ v399;
        v403 = ((v401 << 6) - 0x61C8864680B583E9 + (v401 >> 2) + (((v402 << 6) - 0x61C8864680B583E9 + (v402 >> 2) + *(v398 + 288)) ^ v402)) ^ v401;
        v404 = STACK[0x2A8] + 216;
        STACK[0x1ED0] = v889;
        STACK[0x1ED8] = v404;
        if (!v889->i64[0])
        {
          goto LABEL_391;
        }

        v405 = *(*(v909 + 19) + 4 * (v403 % *(v909 + 42)));
        if (v405 == 0x7FFFFFFF)
        {
          goto LABEL_391;
        }

        v406 = *(v909 + 20);
        while (*(v406 + 24 * v405 + 8) != v403)
        {
          v405 = *(v406 + 24 * v405) & 0x7FFFFFFF;
          if (v405 == 0x7FFFFFFF)
          {
            goto LABEL_391;
          }
        }

        v407 = *(v406 + 24 * v405 + 16);
        if (!v407)
        {
LABEL_391:
          v407 = re::MaterialTechniqueVariant::completeResolution<re::AttributeResolution,re::AttributeTable>(STACK[0x2A8], &STACK[0x1ED0], v392, v127, v403);
          v404 = STACK[0x1ED8];
        }

        v408 = *(v407 + 40);
        v409 = *(v407 + 24);
        STACK[0x1E60] = v403;
        v410 = *(v404 + 28);
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v404, &STACK[0x1E60]);
        if (v410 != *(v404 + 28))
        {
          ++*v407;
        }

        STACK[0xC00] = v408;
        STACK[0xC08] = v409;
        v77 = 0x9E3779B97F4A7C17;
        if (v393)
        {
        }

        v412 = v127[9];
        v413 = v412[9];
        v414 = STACK[0x2A0];
        if (v413)
        {
          v415 = re::MaterialParameterTable::hash(v413);
          v412 = v127[9];
        }

        else
        {
          v415 = 0;
        }

        v416 = v412[8];
        if (v416)
        {
          v416 = re::MaterialParameterTable::hash(v416);
          v412 = v127[9];
        }

        v417 = v412[12];
        v418 = 0x9E3779B97F4A7C17;
        if (v417)
        {
          v418 = ((*(v417 + 248) - 0x61C8864680B583E9 + (*(v417 + 72) << 6) + (*(v417 + 72) >> 2)) ^ *(v417 + 72)) - 0x61C8864680B583E9;
        }

        v419 = ((v416 >> 2) + (v416 << 6) + v418) ^ v416;
        v898 = v415;
        v420 = (v415 - 0x61C8864680B583E9 + (v419 << 6) + (v419 >> 2)) ^ v419;
        TechniqueVariant = v412[10];
        if (TechniqueVariant)
        {
          if (*TechniqueVariant)
          {
            v421 = (*(**TechniqueVariant + 8))(*TechniqueVariant);
          }

          else
          {
            v421 = 0;
          }

          v422 = *(TechniqueVariant + 8);
          v423 = 0x9E3779B97F4A7C17;
          if (v422)
          {
            v423 = (*(*v422 + 8))(v422) - 0x61C8864680B583E9;
          }

          v420 ^= (v420 << 6) - 0x61C8864680B583E9 + (v420 >> 2) + (((v421 >> 2) + (v421 << 6) + v423) ^ v421);
          v412 = v127[9];
        }

        v424 = v412[11];
        v425 = 0x9E3779B97F4A7C17;
        if (v424)
        {
          v425 = re::MaterialParameterTable::hash(v424) - 0x61C8864680B583E9;
        }

        if (*(v127 + 147) == 255)
        {
          v892 = 0;
        }

        else
        {
          v426 = 0xBF58476D1CE4E5B9 * (*(v127 + 147) ^ (*(v127 + 147) >> 30));
          v892 = (0x94D049BB133111EBLL * (v426 ^ (v426 >> 27))) ^ ((0x94D049BB133111EBLL * (v426 ^ (v426 >> 27))) >> 31);
        }

        v427 = ((v420 >> 2) + (v420 << 6) + v425) ^ v420;
        if (*(v127 + 156))
        {
          v428 = (v127 + 20);
        }

        else
        {
          v428 = (v76 + 18);
        }

        v429 = *v428;
        v430 = v127[8];
        if (STACK[0x2A8] == v900)
        {
          v448 = *(v430 + 8) != v883 || v427 != v884 || v429 != v891;
          if (*(v127 + 80) == v885)
          {
            if (v448)
            {
              goto LABEL_419;
            }

            if (v879 == ((*v127 >> 1) & 7) && v895 == v892)
            {
              v892 = v895;
              goto LABEL_663;
            }
          }

          else if (v448)
          {
            goto LABEL_419;
          }

          re::getOrCreateEncoderStates(&STACK[0x1ED0], STACK[0x2A8], *(v414 + 16), v76[3], v76[4], v127, v430, v411, STACK[0xC00], STACK[0xC08], &STACK[0x2CF], v911, v76[20], v76[22], v76[21]);
          if (LOBYTE(STACK[0x1ED0]) == 1)
          {
            re::Optional<re::DrawCallEncoderStates>::operator=(&STACK[0xCD0], &STACK[0x1ED0]);
            v885 = *(v127 + 80);
            v879 = (*v127 >> 1) & 7;
            re::Optional<re::DrawCallEncoderStates>::~Optional(&STACK[0x1ED0]);
            goto LABEL_663;
          }

          v445 = &STACK[0x1ED0];
        }

        else
        {
LABEL_419:
          v431 = STACK[0x2A8];
          re::getOrCreateEncoderStates(&STACK[0x1080], STACK[0x2A8], *(v414 + 16), v76[3], v76[4], v127, v430, v411, STACK[0xC00], STACK[0xC08], &STACK[0x2CF], v911, v76[20], v76[22], v76[21]);
          if (STACK[0x1080])
          {
            v884 = v427;
            v891 = v429;
            re::Optional<re::DrawCallEncoderStates>::operator=(&STACK[0xCD0], &STACK[0x1080]);
            v432 = 0;
            v433 = 0;
            v434 = 0;
            v883 = *(v127[8] + 8);
            v885 = *(v127 + 80);
            v435 = *v127;
            STACK[0x1050] = v905[2] + 928;
            STACK[0x1048] = v882;
            v436 = v905[2];
            STACK[0xD58] = *(v436 + 1120);
            STACK[0xD60] = v436 + 1040;
            v437 = v905[147];
            STACK[0xD38] = v905[149];
            STACK[0xD40] = v437;
            v879 = (v435 >> 1) & 7;
            STACK[0xD50] = *(v436 + 1136);
            STACK[0xD48] = v881;
            v438 = *(v414 + 64);
            do
            {
              v439 = *(&STACK[0x1020] + v432);
              if (v439)
              {
                v440 = (*(*v439 + 8))(v439);
              }

              else
              {
                v440 = (0x94D049BB133111EBLL * (v433 ^ (v433 >> 27))) ^ ((0x94D049BB133111EBLL * (v433 ^ (v433 >> 27))) >> 31);
              }

              v434 ^= (v434 << 6) - 0x61C8864680B583E9 + (v434 >> 2) + v440;
              v433 -= 0x40A7B892E31B1A47;
              v432 += 8;
            }

            while (v432 != 96);
            v441 = re::MaterialTechnique::combinedTexturesHash(*v431);
            v442 = v127[9];
            v443 = v442[8];
            if (v443)
            {
              v444 = (*(v443 + 736) - 0x61C8864680B583E9 + (*(v443 + 600) << 6) + (*(v443 + 600) >> 2)) ^ *(v443 + 600);
            }

            else
            {
              v444 = 0;
            }

            v449 = v442[9];
            if (v449)
            {
              v450 = (*(v449 + 736) - 0x61C8864680B583E9 + (*(v449 + 600) << 6) + (*(v449 + 600) >> 2)) ^ *(v449 + 600);
            }

            else
            {
              v450 = 0;
            }

            v451 = v442[10];
            if (v451 && (v452 = *(v451 + 8)) != 0)
            {
              v453 = (*(*v452 + 8))(v452);
              v442 = v127[9];
            }

            else
            {
              v453 = 0;
            }

            v454 = v442[11];
            if (v454)
            {
              v455 = (*(v454 + 736) - 0x61C8864680B583E9 + (*(v454 + 600) << 6) + (*(v454 + 600) >> 2)) ^ *(v454 + 600);
            }

            else
            {
              v455 = 0;
            }

            v456 = re::hashCombine(v434, v441, v444, v450, v453, v455);
            v457 = re::MaterialTechnique::combinedConstantsHash(*STACK[0x2A8]);
            v458 = v127[9];
            v459 = v458[8];
            if (v459)
            {
              v460 = (*(v459 + 248) - 0x61C8864680B583E9 + (*(v459 + 72) << 6) + (*(v459 + 72) >> 2)) ^ *(v459 + 72);
            }

            else
            {
              v460 = 0;
            }

            v461 = v458[12];
            if (v461)
            {
              v462 = (*(v461 + 248) - 0x61C8864680B583E9 + (*(v461 + 72) << 6) + (*(v461 + 72) >> 2)) ^ *(v461 + 72);
            }

            else
            {
              v462 = 0;
            }

            v463 = v458[9];
            if (v463)
            {
              v464 = (*(v463 + 248) - 0x61C8864680B583E9 + (*(v463 + 72) << 6) + (*(v463 + 72) >> 2)) ^ *(v463 + 72);
            }

            else
            {
              v464 = 0;
            }

            v465 = v458[10];
            if (v465 && *v465)
            {
              v466 = (*(**v465 + 8))(*v465);
              v458 = v127[9];
            }

            else
            {
              v466 = 0;
            }

            v467 = v458[11];
            if (v467)
            {
              v468 = (*(v467 + 248) - 0x61C8864680B583E9 + (*(v467 + 72) << 6) + (*(v467 + 72) >> 2)) ^ *(v467 + 72);
            }

            else
            {
              v468 = 0;
            }

            v469 = re::hashCombine(v457, v460, v462, v464, v466, v468);
            v470 = STACK[0x2A8];
            if (*(STACK[0x2A8] + 16) == 1)
            {
              v469 ^= v886 + (v469 << 6) + (v469 >> 2);
            }

            v887 = v469;
            v471 = *(STACK[0x2A0] + 64);
            v472 = *(v470 + 8);
            if (v472)
            {
              v473 = v472 + 1;
            }

            v474 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v438 ^ (v438 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v438 ^ (v438 >> 30))) >> 27));
            v896 = ((v474 ^ (v474 >> 31)) - 0x61C8864680B583E9 + (v456 << 6) + (v456 >> 2)) ^ v456;
            v475 = ((v896 << 6) - 0x61C8864680B583E9 + (v896 >> 2) + ((v472[12] - 0x61C8864680B583E9 + (v472[11] << 6) + (v472[11] >> 2)) ^ v472[11])) ^ v896;
            STACK[0x1ED0] = v877;
            STACK[0x1ED8] = v470 + 120;
            if (!v877->i64[0])
            {
              goto LABEL_485;
            }

            v476 = *(*(v909 + 7) + 4 * (v475 % *(v909 + 18)));
            if (v476 == 0x7FFFFFFF)
            {
              goto LABEL_485;
            }

            v477 = *(v909 + 8);
            while (*(v477 + 24 * v476 + 8) != v475)
            {
              v476 = *(v477 + 24 * v476) & 0x7FFFFFFF;
              if (v476 == 0x7FFFFFFF)
              {
                goto LABEL_485;
              }
            }

            v478 = *(v477 + 24 * v476 + 16);
            if (!v478)
            {
LABEL_485:
              v478 = re::MaterialTechniqueVariant::completeResolution<re::TextureResolution,re::TextureTableCollection>(STACK[0x2A8], &STACK[0x1ED0], &STACK[0x1020], v127, v475, v471);
            }

            v479 = *(v478 + 40);
            v912 = *(v478 + 24);
            if (*(*(STACK[0x2A8] + 8) + 24))
            {
              v480 = *(v478 + 80);
              v481 = *(v478 + 64);
            }

            else
            {
              v481 = 0;
              v480 = 0;
            }

            v482 = STACK[0x1ED8];
            STACK[0x1E60] = v475;
            v483 = *(v482 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v482, &STACK[0x1E60]);
            if (v483 != *(v482 + 28))
            {
              ++*v478;
            }

            STACK[0xC50] = v479;
            STACK[0xC58] = v912;
            STACK[0xC60] = v480;
            STACK[0xC68] = v481;
            if (v472)
            {
            }

            v484 = *(STACK[0x2A8] + 8);
            if (v484)
            {
              v485 = v484 + 1;
            }

            v486 = re::SamplerTableCollection::hash(&STACK[0xD20]);
            v487 = v484[11];
            v488 = v484[12];
            v489 = re::MaterialTechnique::combinedTextureBlocksHash(*STACK[0x2A8]);
            v490 = v127[9];
            v491 = v490[8];
            if (v491)
            {
              v492 = (*(v491 + 1016) - 0x61C8864680B583E9 + (*(v491 + 952) << 6) + (*(v491 + 952) >> 2)) ^ *(v491 + 952);
            }

            else
            {
              v492 = 0;
            }

            v493 = v490[9];
            if (v493)
            {
              v494 = (*(v493 + 1016) - 0x61C8864680B583E9 + (*(v493 + 952) << 6) + (*(v493 + 952) >> 2)) ^ *(v493 + 952);
            }

            else
            {
              v494 = 0;
            }

            v913 = v484;
            v495 = v490[11];
            if (v495)
            {
              v496 = (*(v495 + 1016) - 0x61C8864680B583E9 + (*(v495 + 952) << 6) + (*(v495 + 952) >> 2)) ^ *(v495 + 952);
            }

            else
            {
              v496 = 0;
            }

            v497 = re::hashCombine(v486, (v488 - 0x61C8864680B583E9 + (v487 << 6) + (v487 >> 2)) ^ v487, v489, v492, v494, v496);
            v498 = STACK[0x2A8];
            v499 = re::MaterialTechnique::combinedSamplersHash(*STACK[0x2A8]);
            v500 = v127[9];
            v501 = v500[8];
            if (v501)
            {
              v501 = (*(v501 + 840) - 0x61C8864680B583E9 + (*(v501 + 664) << 6) + (*(v501 + 664) >> 2)) ^ *(v501 + 664);
            }

            v502 = v500[9];
            v503 = 0x9E3779B97F4A7C17;
            if (v502)
            {
              v503 = ((*(v502 + 840) - 0x61C8864680B583E9 + (*(v502 + 664) << 6) + (*(v502 + 664) >> 2)) ^ *(v502 + 664)) - 0x61C8864680B583E9;
            }

            v504 = v500[11];
            v505 = 0x9E3779B97F4A7C17;
            if (v504)
            {
              v505 = ((*(v504 + 840) - 0x61C8864680B583E9 + (*(v504 + 664) << 6) + (*(v504 + 664) >> 2)) ^ *(v504 + 664)) - 0x61C8864680B583E9;
            }

            v506 = ((v497 << 6) - 0x61C8864680B583E9 + (v497 >> 2) + v499) ^ v497;
            v507 = ((v501 >> 2) + (v501 << 6) + v503) ^ v501;
            v508 = ((v506 << 6) - 0x61C8864680B583E9 + (v506 >> 2) + (((v507 >> 2) + (v507 << 6) + v505) ^ v507)) ^ v506;
            STACK[0x1ED0] = v876;
            STACK[0x1ED8] = v498 + 312;
            if (!v876->i64[0])
            {
              goto LABEL_517;
            }

            v509 = *(*(v909 + 31) + 4 * (v508 % *(v909 + 66)));
            if (v509 == 0x7FFFFFFF)
            {
              goto LABEL_517;
            }

            v510 = *(v909 + 32);
            while (*(v510 + 24 * v509 + 8) != v508)
            {
              v509 = *(v510 + 24 * v509) & 0x7FFFFFFF;
              if (v509 == 0x7FFFFFFF)
              {
                goto LABEL_517;
              }
            }

            v511 = *(v510 + 24 * v509 + 16);
            if (!v511)
            {
LABEL_517:
              v511 = re::MaterialTechniqueVariant::completeResolution<re::TextureBlockResolution,re::SamplerTableCollection>(STACK[0x2A8], &STACK[0x1ED0], &STACK[0xD20], v127, v508);
            }

            v512 = *(v511 + 40);
            v901 = *(v511 + 24);
            if (*(*(STACK[0x2A8] + 8) + 24))
            {
              v513 = *(v511 + 80);
              v514 = *(v511 + 64);
            }

            else
            {
              v514 = 0;
              v513 = 0;
            }

            v515 = STACK[0x1ED8];
            STACK[0x1E60] = v508;
            v516 = *(v515 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v515, &STACK[0x1E60]);
            if (v516 != *(v515 + 28))
            {
              ++*v511;
            }

            STACK[0xC90] = v512;
            STACK[0xC98] = v901;
            STACK[0xCA0] = v513;
            STACK[0xCA8] = v514;
            v77 = v913;
            if (v913)
            {
            }

            v517 = *(v76[2] + 32);
            v518 = *(STACK[0x2A8] + 8);
            v519 = *(v518 + 24);
            v520 = *(*(v518 + 16) + 328);
            LOBYTE(v80) = -71;
            if (v519)
            {
              LODWORD(v519) = *(v519 + 328) + 1;
            }

            if (v520 + 1 > v519)
            {
              v521 = v520 + 1;
            }

            else
            {
              v521 = v519;
            }

            TechniqueVariant = v521;
            if (v521)
            {
              if (STACK[0xCF0])
              {
                v522 = v508 % LODWORD(STACK[0xD08]);
                v523 = STACK[0xCF8];
                v524 = *(STACK[0xCF8] + 4 * v522);
                if (v524 != 0x7FFFFFFF)
                {
                  v525 = STACK[0xD00];
                  v526 = *(STACK[0xCF8] + 4 * v522);
                  while (*(v525 + 304 * v526 + 8) != v508)
                  {
                    v526 = *(v525 + 304 * v526) & 0x7FFFFFFF;
                    if (v526 == 0x7FFFFFFF)
                    {
                      goto LABEL_536;
                    }
                  }

                  while (*(v525 + 304 * v524 + 8) != v508)
                  {
                    v524 = *(v525 + 304 * v524) & 0x7FFFFFFF;
                    v681 = 0x7FFFFFFFLL;
                    if (v524 == 0x7FFFFFFF)
                    {
                      goto LABEL_748;
                    }
                  }

                  v681 = v524;
LABEL_748:
                  v81 = v525 + 304 * v681 + 16;
                  goto LABEL_565;
                }

LABEL_536:
                *&STACK[0x1FE0] = 0u;
                *&STACK[0x1FD0] = 0u;
                *&STACK[0x1FC0] = 0u;
                *&STACK[0x1FB0] = 0u;
                *&STACK[0x1FA0] = 0u;
                *&STACK[0x1F90] = 0u;
                *&STACK[0x1F80] = 0u;
                *&STACK[0x1F70] = 0u;
                *&STACK[0x1F60] = 0u;
                *&STACK[0x1F50] = 0u;
                *&STACK[0x1F40] = 0u;
                *&STACK[0x1F30] = 0u;
                *&STACK[0x1F20] = 0u;
                *&STACK[0x1F10] = 0u;
                *&STACK[0x1F00] = 0u;
                *&STACK[0x1EF0] = 0u;
                *&STACK[0x1EE0] = 0u;
                *&STACK[0x1ED0] = 0u;
                LODWORD(STACK[0x1F70]) = 1;
                *&STACK[0x1F80] = 0uLL;
                STACK[0x1F78] = 0;
                LODWORD(STACK[0x1F90]) = 0;
                *&STACK[0x1FA0] = 0uLL;
                STACK[0x1F98] = 0;
                LODWORD(STACK[0x1FB0]) = 0;
                *&STACK[0x1FB8] = 0u;
                *&STACK[0x1FC8] = 0u;
                LODWORD(STACK[0x1FD8]) = 0;
                v527 = *(v523 + 4 * v522);
                if (v527 != 0x7FFFFFFF)
                {
                  v528 = STACK[0xD00];
                  while (*(v528 + 304 * v527 + 8) != v508)
                  {
                    LODWORD(v527) = *(v528 + 304 * v527) & 0x7FFFFFFF;
                    if (v527 == 0x7FFFFFFF)
                    {
                      goto LABEL_543;
                    }
                  }

                  v81 = v528 + 304 * v527 + 16;
                  goto LABEL_545;
                }
              }

              else
              {
                LODWORD(v522) = 0;
                *&STACK[0x1FE0] = 0u;
                *&STACK[0x1FD0] = 0u;
                *&STACK[0x1FC0] = 0u;
                *&STACK[0x1FB0] = 0u;
                *&STACK[0x1FA0] = 0u;
                *&STACK[0x1F90] = 0u;
                *&STACK[0x1F80] = 0u;
                *&STACK[0x1F70] = 0u;
                *&STACK[0x1F60] = 0u;
                *&STACK[0x1F50] = 0u;
                *&STACK[0x1F40] = 0u;
                *&STACK[0x1F30] = 0u;
                *&STACK[0x1F20] = 0u;
                *&STACK[0x1F10] = 0u;
                *&STACK[0x1F00] = 0u;
                *&STACK[0x1EF0] = 0u;
                *&STACK[0x1EE0] = 0u;
                *&STACK[0x1ED0] = 0u;
                LODWORD(STACK[0x1F70]) = 1;
                *&STACK[0x1F80] = 0uLL;
                STACK[0x1F78] = 0;
                LODWORD(STACK[0x1F90]) = 0;
                *&STACK[0x1FA0] = 0uLL;
                STACK[0x1F98] = 0;
                LODWORD(STACK[0x1FB0]) = 0;
                *&STACK[0x1FB8] = 0u;
                *&STACK[0x1FC8] = 0u;
                LODWORD(STACK[0x1FD8]) = 0;
              }

LABEL_543:
              v529 = re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(&STACK[0xCF0], v522, v508);
              *(v529 + 8) = v508;
              v81 = v529 + 16;
              re::BufferTable::BufferTable(v529 + 16, &STACK[0x1ED0]);
              ++LODWORD(STACK[0xD18]);
LABEL_545:
              re::BufferTable::~BufferTable(&STACK[0x1ED0]);
              v530 = *(STACK[0x2A8] + 8);
              v531 = *(v530 + 16);
              v532 = *(v530 + 24);
              if (v532)
              {
                LODWORD(v532) = *(v532 + 332);
              }

              v533 = *(v531 + 332);
              if (v533 <= v532)
              {
                v533 = v532;
              }

              LODWORD(STACK[0x1ED0]) = v533 - 1;
              STACK[0x1170] = 0;
              STACK[0x1160] = 0;
              STACK[0x1168] = 0;
              re::FixedArray<unsigned char>::init<int>(&STACK[0x1160], v517, TechniqueVariant, &STACK[0x1ED0]);
              LODWORD(STACK[0x1ED0]) = 0;
              STACK[0x1148] = 0;
              STACK[0x1138] = 0;
              STACK[0x1140] = 0;
              re::FixedArray<unsigned char>::init<int>(&STACK[0x1138], v517, TechniqueVariant, &STACK[0x1ED0]);
              if (STACK[0xC98])
              {
                v534 = STACK[0xC90];
                v535 = STACK[0xC90] + 6 * STACK[0xC98];
                v79 = STACK[0x1168];
                v536 = STACK[0x1170];
                v262 = STACK[0x1140];
                v537 = STACK[0x1148];
                do
                {
                  v80 = *v534;
                  if (v79 <= v80)
                  {
                    goto LABEL_1086;
                  }

                  *(v536 + v80) = *(v534 + 2);
                  v80 = *v534;
                  if (v262 <= v80)
                  {
                    goto LABEL_1087;
                  }

                  *(v537 + v80) = *(v534 + 4);
                  v534 += 3;
                }

                while (v534 != v535);
              }

              v79 = STACK[0x1168];
              if (STACK[0xCA8])
              {
                v538 = STACK[0xCA0];
                v539 = STACK[0xCA0] + 6 * STACK[0xCA8];
                v540 = STACK[0x1170];
                v262 = STACK[0x1140];
                v541 = STACK[0x1148];
                while (1)
                {
                  v80 = *v538;
                  if (v79 <= v80)
                  {
                    break;
                  }

                  *(v540 + v80) = *(v538 + 2);
                  v80 = *v538;
                  if (v262 <= v80)
                  {
                    goto LABEL_1089;
                  }

                  *(v541 + v80) = *(v538 + 4);
                  v538 += 3;
                  if (v538 == v539)
                  {
                    goto LABEL_559;
                  }
                }

LABEL_1088:
                STACK[0x1110] = 0;
                *&STACK[0x1F10] = 0u;
                *&STACK[0x1F00] = 0u;
                *&STACK[0x1EF0] = 0u;
                *&STACK[0x1EE0] = 0u;
                *&STACK[0x1ED0] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(STACK[0x1E60]) = 136315906;
                STACK[0x1E64] = "operator[]";
                LOWORD(STACK[0x1E6C]) = 1024;
                LODWORD(STACK[0x1E6E]) = 468;
                LOWORD(STACK[0x1E72]) = 2048;
                STACK[0x1E74] = v80;
                LOWORD(STACK[0x1E7C]) = 2048;
                STACK[0x1E7E] = v79;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_1089:
                STACK[0x1110] = 0;
                *&STACK[0x1F10] = 0u;
                *&STACK[0x1F00] = 0u;
                *&STACK[0x1EF0] = 0u;
                *&STACK[0x1EE0] = 0u;
                *&STACK[0x1ED0] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(STACK[0x1E60]) = 136315906;
                STACK[0x1E64] = "operator[]";
                LOWORD(STACK[0x1E6C]) = 1024;
                LODWORD(STACK[0x1E6E]) = 468;
                LOWORD(STACK[0x1E72]) = 2048;
                STACK[0x1E74] = v80;
                LOWORD(STACK[0x1E7C]) = 2048;
                STACK[0x1E7E] = v262;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_1090:
                re::internal::assertLog(6, v684, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v80, v750);
                _os_crash();
                __break(1u);
LABEL_1091:
                re::internal::assertLog(6, v752, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, TechniqueVariant, 2);
                _os_crash();
                __break(1u);
LABEL_1092:
                STACK[0x1160] = 0;
                *&STACK[0x1F10] = 0u;
                *&STACK[0x1F00] = 0u;
                *&STACK[0x1EF0] = 0u;
                *&STACK[0x1EE0] = 0u;
                *&STACK[0x1ED0] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(STACK[0x1E60]) = 136315906;
                STACK[0x1E64] = "operator[]";
                LOWORD(STACK[0x1E6C]) = 1024;
                LODWORD(STACK[0x1E6E]) = 476;
                LOWORD(STACK[0x1E72]) = 2048;
                STACK[0x1E74] = TechniqueVariant;
                LOWORD(STACK[0x1E7C]) = 2048;
                STACK[0x1E7E] = v79;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_1093:
                re::internal::assertLog(6, v738, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v739, v738);
                _os_crash();
                __break(1u);
LABEL_1094:
                re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, v173, v175);
                _os_crash();
                __break(1u);
LABEL_1095:
                re::internal::assertLog(6, v163, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v176, v177);
                _os_crash();
                __break(1u);
LABEL_1096:
                STACK[0x600] = 0;
                *&STACK[0x1300] = 0u;
                *&STACK[0x12F0] = 0u;
                *&STACK[0x12E0] = 0u;
                *&STACK[0x12D0] = 0u;
                *&STACK[0x12C0] = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(STACK[0x1ED0]) = 136315906;
                *(v127 + 116) = "operator[]";
                LOWORD(STACK[0x1EDC]) = 1024;
                *(v127 + 126) = 797;
                LOWORD(STACK[0x1EE2]) = 2048;
                *(v127 + 132) = 1;
                LOWORD(STACK[0x1EEC]) = 2048;
                *(v127 + 142) = v79;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_1097;
              }

LABEL_559:
              re::BufferTable::deinit(v81);
              re::BufferTable::init(v81, v517, 1uLL);
              if (v79 != TechniqueVariant)
              {
                goto LABEL_1099;
              }

              if (STACK[0x1140] != TechniqueVariant)
              {
                goto LABEL_1100;
              }

              re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((STACK[0x6F8] + 16), 2 * TechniqueVariant, 0x10uLL, &STACK[0x1ED0]);
              v543 = STACK[0x1ED0];
              v544 = LODWORD(STACK[0x1ED8]);
              v545 = STACK[0x1170];
              memcpy((STACK[0x1ED0] + v544), STACK[0x1170], TechniqueVariant);
              v546 = STACK[0x1148];
              memcpy((v543 + (v544 + TechniqueVariant)), STACK[0x1148], TechniqueVariant);
              STACK[0x1110] = 0x66DF0473A9B7D6CALL;
              v547 = STACK[0x1EDC];
              STACK[0x1E60] = STACK[0x1EE0];
              LODWORD(STACK[0x1E68]) = 0;
              LODWORD(STACK[0x1E70]) = v544;
              LODWORD(STACK[0x1E74]) = v547;
              re::BufferTable::setBuffer(v81, &STACK[0x1110], &STACK[0x1E60]);
              if (STACK[0x1138])
              {
                (*(*STACK[0x1138] + 40))(STACK[0x1138], v546);
              }

              if (STACK[0x1160])
              {
                (*(*STACK[0x1160] + 40))(STACK[0x1160], v545);
              }

LABEL_565:
              v548 = *(v81 + 80);
              v549 = *(v81 + 136);
              v550 = *(v81 + 120);
              STACK[0xF90] = *(v81 + 96);
              STACK[0xF98] = v548;
              STACK[0xFA0] = v549;
              STACK[0xFA8] = v550;
              LODWORD(STACK[0xFB0]) = 0;
            }

            else
            {
              v81 = 0;
              LODWORD(STACK[0xFB0]) = 0;
              *&STACK[0xF90] = 0u;
              *&STACK[0xFA0] = 0u;
            }

            STACK[0xFB8] = v81;
            v551 = *(STACK[0x2A8] + 8);
            if (v551)
            {
              v552 = (v551 + 8);
            }

            v553 = 0;
            v554 = 0;
            for (j = 40; j != 664; j += 48)
            {
              v556 = *(&STACK[0xDB0] + j);
              if (v556)
              {
                v557 = *(v556 + 48);
              }

              else
              {
                v557 = (0x94D049BB133111EBLL * (v553 ^ (v553 >> 27))) ^ ((0x94D049BB133111EBLL * (v553 ^ (v553 >> 27))) >> 31);
              }

              v554 ^= (v554 << 6) - 0x61C8864680B583E9 + (v554 >> 2) + v557;
              v553 -= 0x40A7B892E31B1A47;
            }

            v558 = STACK[0x2A8];
            v559 = re::MaterialTechnique::combinedBuffersHash(*STACK[0x2A8]);
            v560 = v127[9];
            v561 = v560[8];
            if (v561)
            {
              v562 = (*(v561 + 312) - 0x61C8864680B583E9 + (*(v561 + 136) << 6) + (*(v561 + 136) >> 2)) ^ *(v561 + 136);
            }

            else
            {
              v562 = 0;
            }

            v563 = v560[9];
            if (v563)
            {
              v564 = (*(v563 + 312) - 0x61C8864680B583E9 + (*(v563 + 136) << 6) + (*(v563 + 136) >> 2)) ^ *(v563 + 136);
            }

            else
            {
              v564 = 0;
            }

            v565 = v560[11];
            if (v565)
            {
              v566 = (*(v565 + 312) - 0x61C8864680B583E9 + (*(v565 + 136) << 6) + (*(v565 + 136) >> 2)) ^ *(v565 + 136);
            }

            else
            {
              v566 = 0;
            }

            v567 = re::hashCombine(v554, *(v551 + 104), v559, v562, v564, v566);
            v568 = v567;
            STACK[0x1ED0] = v875;
            STACK[0x1ED8] = v558 + 168;
            if (!v875->i64[0])
            {
              goto LABEL_589;
            }

            v569 = *(*(v909 + 13) + 4 * (v567 % *(v909 + 30)));
            if (v569 == 0x7FFFFFFF)
            {
              goto LABEL_589;
            }

            v570 = *(v909 + 14);
            while (*(v570 + 24 * v569 + 8) != v567)
            {
              v569 = *(v570 + 24 * v569) & 0x7FFFFFFF;
              if (v569 == 0x7FFFFFFF)
              {
                goto LABEL_589;
              }
            }

            v571 = *(v570 + 24 * v569 + 16);
            if (!v571)
            {
LABEL_589:
              v571 = re::MaterialTechniqueVariant::completeResolution<re::BufferResolution,re::BufferTableCollection>(STACK[0x2A8], &STACK[0x1ED0], &STACK[0xDB0], v127, v567);
            }

            v914 = *(v571 + 40);
            v572 = *(v571 + 24);
            if (*(*(STACK[0x2A8] + 8) + 24))
            {
              v573 = *(v571 + 80);
              v574 = *(v571 + 64);
            }

            else
            {
              v574 = 0;
              v573 = 0;
            }

            v575 = STACK[0x1ED8];
            STACK[0x1E60] = v568;
            v576 = *(v575 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v575, &STACK[0x1E60]);
            if (v576 != *(v575 + 28))
            {
              ++*v571;
            }

            STACK[0xC30] = v914;
            STACK[0xC38] = v572;
            STACK[0xC40] = v573;
            STACK[0xC48] = v574;
            if (v551)
            {
            }

            v577 = STACK[0x2A8];
            v578 = *(STACK[0x2A8] + 8);
            if (v578)
            {
              v579 = v578 + 1;
            }

            v580 = re::SamplerTableCollection::hash(&STACK[0xD20]);
            v581 = re::MaterialTechnique::combinedSamplersHash(*v577);
            v582 = v127[9];
            v583 = v582[9];
            v584 = 0x9E3779B97F4A7C17;
            if (v583)
            {
              v584 = *(v583 + 952) - 0x61C8864680B583E9;
            }

            v585 = v582[8];
            v586 = 0x9E3779B97F4A7C17;
            if (v585)
            {
              v586 = ((*(v585 + 840) - 0x61C8864680B583E9 + (*(v585 + 664) << 6) + (*(v585 + 664) >> 2)) ^ *(v585 + 664)) - 0x61C8864680B583E9;
            }

            if (v583)
            {
              v583 = (*(v583 + 840) - 0x61C8864680B583E9 + (*(v583 + 664) << 6) + (*(v583 + 664) >> 2)) ^ *(v583 + 664);
            }

            v587 = v582[11];
            v588 = 0x9E3779B97F4A7C17;
            if (v587)
            {
              v588 = ((*(v587 + 840) - 0x61C8864680B583E9 + (*(v587 + 664) << 6) + (*(v587 + 664) >> 2)) ^ *(v587 + 664)) - 0x61C8864680B583E9;
            }

            v915 = v578;
            v589 = ((v580 << 6) - 0x61C8864680B583E9 + (v580 >> 2) + v578[14]) ^ v580;
            v590 = ((((v581 >> 2) + (v581 << 6) + v584) ^ v581) - 0x61C8864680B583E9 + (v589 << 6) + (v589 >> 2)) ^ v589;
            v591 = (v586 + (v590 << 6) + (v590 >> 2)) ^ v590;
            v592 = ((((v583 >> 2) + (v583 << 6) + v588) ^ v583) - 0x61C8864680B583E9 + (v591 << 6) + (v591 >> 2)) ^ v591;
            STACK[0x1ED0] = v874;
            STACK[0x1ED8] = (v577 + 33);
            if (!v874->i64[0])
            {
              goto LABEL_614;
            }

            v593 = *(*(v909 + 25) + 4 * (v592 % *(v909 + 54)));
            if (v593 == 0x7FFFFFFF)
            {
              goto LABEL_614;
            }

            v594 = *(v909 + 26);
            while (*(v594 + 24 * v593 + 8) != v592)
            {
              v593 = *(v594 + 24 * v593) & 0x7FFFFFFF;
              if (v593 == 0x7FFFFFFF)
              {
                goto LABEL_614;
              }
            }

            v595 = *(v594 + 24 * v593 + 16);
            if (!v595)
            {
LABEL_614:
              v595 = re::MaterialTechniqueVariant::completeResolution<re::SamplerResolution,re::SamplerTableCollection>(STACK[0x2A8], &STACK[0x1ED0], &STACK[0xD20], v127, v592);
            }

            v902 = *(v595 + 40);
            v596 = *(v595 + 24);
            if (*(*(STACK[0x2A8] + 8) + 24))
            {
              v597 = *(v595 + 80);
              v598 = *(v595 + 64);
            }

            else
            {
              v598 = 0;
              v597 = 0;
            }

            v599 = STACK[0x1ED8];
            STACK[0x1E60] = v592;
            v600 = *(v599 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v599, &STACK[0x1E60]);
            if (v600 != *(v599 + 28))
            {
              ++*v595;
            }

            STACK[0xC70] = v902;
            STACK[0xC78] = v596;
            STACK[0xC80] = v597;
            STACK[0xC88] = v598;
            if (v915)
            {
            }

            v601 = STACK[0x2A8];
            v602 = *(STACK[0x2A8] + 8);
            if (v602)
            {
              v603 = (v602 + 8);
            }

            v604 = ((v887 << 6) - 0x61C8864680B583E9 + (v887 >> 2) + ((*(**v601 + 2720) - 0x61C8864680B583E9 + (*(v602 + 80) << 6) + (*(v602 + 80) >> 2)) ^ *(v602 + 80))) ^ v887;
            STACK[0x1ED0] = v909;
            STACK[0x1ED8] = v601 + 72;
            if (!*v909)
            {
              goto LABEL_631;
            }

            v605 = *(*(v909 + 1) + 4 * (v604 % *(v909 + 6)));
            if (v605 == 0x7FFFFFFF)
            {
              goto LABEL_631;
            }

            v606 = *(v909 + 2);
            while (*(v606 + 24 * v605 + 8) != v604)
            {
              v605 = *(v606 + 24 * v605) & 0x7FFFFFFF;
              if (v605 == 0x7FFFFFFF)
              {
                goto LABEL_631;
              }
            }

            v607 = *(v606 + 24 * v605 + 16);
            if (!v607)
            {
LABEL_631:
              v607 = re::MaterialTechniqueVariant::completeResolution<re::ConstantResolution,re::ConstantTableCollection>(STACK[0x2A8], &STACK[0x1ED0], &STACK[0x600], v127, v604);
            }

            v916 = *(v607 + 40);
            v903 = *(v607 + 24);
            if (*(*(STACK[0x2A8] + 8) + 24))
            {
              v608 = *(v607 + 80);
              v609 = *(v607 + 64);
            }

            else
            {
              v609 = 0;
              v608 = 0;
            }

            v610 = STACK[0x1ED8];
            STACK[0x1E60] = v604;
            v611 = *(v610 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v610, &STACK[0x1E60]);
            if (v611 != *(v610 + 28))
            {
              ++*v607;
            }

            STACK[0xC10] = v916;
            STACK[0xC18] = v903;
            STACK[0xC20] = v608;
            STACK[0xC28] = v609;
            if (v602)
            {
            }

            v612 = *(STACK[0x2A0] + 64);
            v613 = STACK[0x2A8];
            v614 = *(STACK[0x2A8] + 8);
            if (v614)
            {
              v615 = (v614 + 8);
            }

            v616 = (v896 - 0x61C8864680B583E9 + (v887 << 6) + (v887 >> 2)) ^ v887;
            v617 = v614;
            v618 = ((v616 << 6) - 0x61C8864680B583E9 + (v616 >> 2) + *(v614 + 120)) ^ v616;
            STACK[0x1ED0] = v873;
            STACK[0x1ED8] = v613 + 360;
            if (!v873->i64[0])
            {
              goto LABEL_648;
            }

            v619 = *(*(v909 + 37) + 4 * (v618 % *(v909 + 78)));
            if (v619 == 0x7FFFFFFF)
            {
              goto LABEL_648;
            }

            v620 = *(v909 + 38);
            while (*(v620 + 24 * v619 + 8) != v618)
            {
              v619 = *(v620 + 24 * v619) & 0x7FFFFFFF;
              if (v619 == 0x7FFFFFFF)
              {
                goto LABEL_648;
              }
            }

            v621 = *(v620 + 24 * v619 + 16);
            if (!v621)
            {
LABEL_648:
              v621 = re::MaterialTechniqueVariant::completeResolution<re::ArgumentBufferResolution,re::ArgumentBufferTableCollection>(v613, &STACK[0x1ED0], &STACK[0x588], v127, v618, v612);
            }

            v917 = *(v621 + 40);
            v622 = *(v621 + 24);
            if (*(*(v613 + 1) + 24))
            {
              v623 = *(v621 + 80);
              v624 = *(v621 + 64);
            }

            else
            {
              v624 = 0;
              v623 = 0;
            }

            v625 = STACK[0x1ED8];
            STACK[0x1E60] = v618;
            v626 = *(v625 + 28);
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v625, &STACK[0x1E60]);
            if (v626 != *(v625 + 28))
            {
              ++*v621;
            }

            STACK[0xCB0] = v917;
            STACK[0xCB8] = v622;
            STACK[0xCC0] = v623;
            STACK[0xCC8] = v624;
            if (v617)
            {

              v622 = STACK[0xCB8];
              v624 = STACK[0xCC8];
            }

            v627 = v622 | v624;
            v414 = STACK[0x2A0];
            v77 = 0x9E3779B97F4A7C17;
            v628 = STACK[0x2A8];
            if (v627 && (v629 = v76[3], v630 = *(v414 + 24), STACK[0x470] = v629, STACK[0x468] = v630, v631 = *(*v628 + 8), STACK[0x488] = &STACK[0x588], STACK[0x478] = v631, STACK[0x490] = v898, STACK[0x4A0] = v414, (STACK[0x508] & 1) == 0))
            {
              re::ensureHeapInitialized(v630, (v629 + 208));
              v632 = *(v414 + 24);
              v633 = *(v632 + 80);
              if (v633)
              {
                v634 = *(v632 + 96);
                v635 = 8 * v633;
                do
                {
                  v636 = *v634++;
                  [*v414 useHeap:v636 stages:3];
                  v635 -= 8;
                }

                while (v635);
              }

              LOBYTE(STACK[0x508]) = 1;
              re::Optional<re::DrawCallEncoderStates>::~Optional(&STACK[0x1080]);
              v900 = STACK[0x2A8];
            }

            else
            {
              re::Optional<re::DrawCallEncoderStates>::~Optional(&STACK[0x1080]);
              v900 = v628;
            }

LABEL_663:
            if (*(v127 + 145))
            {
              v637 = (v127 + 146);
            }

            else
            {
              v637 = &STACK[0x2DF];
            }

            v638 = *v637;
            v639 = STACK[0x418];
            if ((STACK[0x418] & 4) == 0 || LOBYTE(STACK[0x41C]) != v638 || LOBYTE(STACK[0x41D]) != v638)
            {
              (*(*(v414 + 8) + 128))(**(v414 + 8), sel_setStencilFrontReferenceValue_backReferenceValue_, v638, v638);
              LOBYTE(STACK[0x41C]) = v638;
              LOBYTE(STACK[0x41D]) = v638;
              v639 = LOWORD(STACK[0x418]) | 4;
              LOWORD(STACK[0x418]) = v639;
            }

            if ((v639 & 8) == 0 || (v640 = vceq_f32(STACK[0x420], v907.n128_u64[0]), (v640.i8[0] & 1) == 0) || (v640.i8[4] & 1) == 0 || *&STACK[0x428] != v391)
            {
              (*(*(v414 + 8) + 72))(**(v414 + 8), sel_setDepthBias_slopeScale_clamp_, v907, v907.n128_f32[1], v391);
              STACK[0x420] = v907.n128_u64[0];
              *&STACK[0x428] = v391;
              LOWORD(STACK[0x418]) |= 8u;
            }

            if (!STACK[0xCE0])
            {
              v644 = STACK[0xCD8];
              v645 = v644;
              if (v644)
              {
                v644 = [objc_msgSend(v644 label)];
                TechniqueVariant = v644;
              }

              else
              {
                TechniqueVariant = "<NULL PSO>";
              }

              v79 = v892;
              v680 = *re::graphicsLogObjects(v644);
              if (os_log_type_enabled(v680, OS_LOG_TYPE_ERROR))
              {
                LODWORD(STACK[0x1ED0]) = 136315138;
                STACK[0x1ED4] = TechniqueVariant;
                _os_log_error_impl(&dword_1E1C61000, v680, OS_LOG_TYPE_ERROR, "cachedPipelineStatePair with PSO '%s' has a NULL depth-stencil. Draw call will be dropped.", &STACK[0x1ED0], 0xCu);
              }

              LOWORD(STACK[0x418]) = 0;
              re::ShaderResourceBindState::reset(&STACK[0x12C0]);
              LOBYTE(STACK[0x1ED0]) = 0;
              v231 = v920;
              if (LOBYTE(STACK[0xCD0]) == 1)
              {
                if (STACK[0xCE8])
                {

                  STACK[0xCE8] = 0;
                }

                if (STACK[0xCE0])
                {

                  STACK[0xCE0] = 0;
                }

                if (STACK[0xCD8])
                {

                  STACK[0xCD8] = 0;
                }

                LOBYTE(STACK[0xCD0]) = 0;
              }

              re::Optional<re::DrawCallEncoderStates>::~Optional(&STACK[0x1ED0]);
              if (v645)
              {
              }

              LOBYTE(v80) = 0;
              v900 = 0;
              goto LABEL_934;
            }

            v641 = **STACK[0x2A8];
            if ((*(v641 + 2850) & 1) != 0 || *(v641 + 2852) == 1)
            {
              v642 = v127[7];
              v643 = v76[8];
              if (v642)
              {
                STACK[0x1ED0] = v642;
                LODWORD(STACK[0x1ED8]) = 0;
                LODWORD(STACK[0x1EE0]) = 0;
                LODWORD(STACK[0x1EE4]) = [v642 length];
                re::StandardEngineResources::populate(&STACK[0x3B0], &STACK[0x6F8], v643, &STACK[0x1ED0], &STACK[0x1220], &STACK[0x700], &STACK[0x6B0]);
              }

              else
              {
                if (*(v127 + 3) == 2)
                {
                  v646 = *(v127 + 8) << 8;
                }

                else
                {
                  v646 = 256;
                }

                re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((STACK[0x6F8] + 16), v646, 0x100uLL, &STACK[0x1ED0]);
                v647 = LODWORD(STACK[0x1ED8]);
                v648 = (STACK[0x1ED0] + v647);
                v649 = memcpy(v648, STACK[0x460], v646);
                if (v643)
                {
                  v650 = *(v127 + 9);
                  if (v650)
                  {
                    if (re::LateLatch::shouldApplyAnchorLateLatching(v649))
                    {
                      STACK[0x1E60] = v648;
                      LOBYTE(STACK[0x1E68]) = v650;
                      re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::add((v643 + 384), &STACK[0x1E60]);
                    }
                  }
                }

                v651 = STACK[0x1EDC];
                STACK[0x1E60] = STACK[0x1EE0];
                LODWORD(STACK[0x1E68]) = 0;
                LODWORD(STACK[0x1E70]) = v647;
                LODWORD(STACK[0x1E74]) = v651;
                re::StandardEngineResources::populate(&STACK[0x3B0], &STACK[0x6F8], v643, &STACK[0x1E60], &STACK[0x1220], &STACK[0x700], &STACK[0x6B0]);
                v414 = STACK[0x2A0];
              }
            }

            v652 = v76[3];
            v908 = *(v652 + 24);
            v888 = STACK[0x6F8];
            v653 = *(v76[2] + 32);
            v897 = *(v414 + 56);
            v899 = v76[1];
            v878 = v76[8];
            v918 = v127[8];
            v654 = *(v76 + 72);
            v867 = v652;
            v868 = *(v652 + 366);
            v869 = *(v76 + 108);
            *&STACK[0x2B0] = *&STACK[0x2CF];
            LOBYTE(STACK[0x2C0]) = STACK[0x2DF];
            (*(*(v414 + 8) + 160))(**(v414 + 8), sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:v127[13] encoding:{4, v864}]);
            re::mtl::RenderCommandEncoder::insertDebugSignpost(v414, v127[13]);
            v655 = v127[9];
            v656 = *(v655 + 24);
            if (v656)
            {
              v870 = v654;
              v658 = *(v655 + 32);
              v657 = *(v655 + 40);
              v659 = *(v655 + 16);
              STACK[0x1ED8] = 0;
              STACK[0x1EE0] = 0;
              LODWORD(STACK[0x1EE8]) = 0;
              STACK[0x1EF0] = 0;
              STACK[0x1ED0] = v653;
              re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&STACK[0x1ED0], 0);
              ++LODWORD(STACK[0x1EE8]);
              v660 = &v659[2 * v656];
              v80 = STACK[0x2A0];
              do
              {
                re::TextureHandle::metalTexture(v659, &STACK[0x1E60]);
                v661 = STACK[0x1E60];
                if (STACK[0x1E60])
                {
                }

                STACK[0x1E60] = v661;
                v662 = STACK[0x1EE0];
                if (STACK[0x1EE0])
                {
                  v663 = STACK[0x1EF0];
                  do
                  {
                    v664 = v662 >> 1;
                    v665 = (v663 + 8 * (v662 >> 1));
                    v667 = *v665;
                    v666 = v665 + 1;
                    v662 += ~(v662 >> 1);
                    if (v667 < v661)
                    {
                      v663 = v666;
                    }

                    else
                    {
                      v662 = v664;
                    }
                  }

                  while (v662);
                }

                else
                {
                  v663 = STACK[0x1EF0];
                }

                re::DynamicArray<unsigned long>::insert(&STACK[0x1ED0], (v663 - STACK[0x1EF0]) >> 3, &STACK[0x1E60]);
                v659 += 2;
              }

              while (v659 != v660);
              v654 = v870;
              if (v657)
              {
                v668 = &v658[v657];
                do
                {
                  v669 = *v658;
                  STACK[0x1E60] = *v658;
                  v670 = STACK[0x1EE0];
                  if (STACK[0x1EE0])
                  {
                    v671 = STACK[0x1EF0];
                    do
                    {
                      v672 = v670 >> 1;
                      v673 = (v671 + 8 * (v670 >> 1));
                      v675 = *v673;
                      v674 = v673 + 1;
                      v670 += ~(v670 >> 1);
                      if (v675 < v669)
                      {
                        v671 = v674;
                      }

                      else
                      {
                        v670 = v672;
                      }
                    }

                    while (v670);
                  }

                  else
                  {
                    v671 = STACK[0x1EF0];
                  }

                  re::DynamicArray<unsigned long>::insert(&STACK[0x1ED0], (v671 - STACK[0x1EF0]) >> 3, &STACK[0x1E60]);
                  ++v658;
                }

                while (v658 != v668);
              }

              re::ArgumentBufferCacheReferences::addAndUseResourcePtrs(&STACK[0x4B8], v80, &STACK[0x1ED0]);
              if (STACK[0x1ED0] && STACK[0x1EF0])
              {
                (*(*STACK[0x1ED0] + 40))(STACK[0x1ED0]);
              }

              v655 = v127[9];
            }

            else
            {
              v80 = STACK[0x2A0];
            }

            v676 = v899;
            if (*(v655 + 48) == 1 && (STACK[0x509] & 1) == 0)
            {
              [*v80 useHeap:*(*(v867 + 56) + 8) stages:3];
              v676 = v899;
              LOBYTE(STACK[0x509]) = 1;
            }

            if (v676[57] == 1)
            {
              v677 = v676[58];
              goto LABEL_751;
            }

            v678 = *v127;
            if ((v678 & 0x40) != 0)
            {
              v677 = 0;
            }

            else
            {
              v679 = **STACK[0x2A8];
              if (*(v679 + 124) == 1)
              {
                v677 = *(v679 + 125);
                goto LABEL_750;
              }

              if ((v678 & 0x200) != 0)
              {
                v677 = (v678 >> 10) & 3;
LABEL_750:
                v676 = v899;
              }

              else
              {
                v676 = v899;
                v677 = v899[56];
              }
            }

LABEL_751:
            if (v676[60] == 1)
            {
              if (v677 == 1)
              {
                v677 = 2;
              }

              else if (v677 == 2)
              {
                v677 = 1;
              }
            }

            v682 = STACK[0x418];
            if ((STACK[0x418] & 1) == 0 || LOBYTE(STACK[0x41A]) != v677)
            {
              (*(*(v80 + 8) + 64))(**(v80 + 8), sel_setCullMode_, v677);
              LOBYTE(STACK[0x41A]) = v677;
              v682 = LOWORD(STACK[0x418]) | 1;
              LOWORD(STACK[0x418]) = v682;
            }

            if ((*v127 & 0x1000) != 0)
            {
              v683 = (*v127 & 0x2000) != 0;
            }

            else
            {
              v683 = *v899;
            }

            if ((v682 & 2) == 0 || LOBYTE(STACK[0x41B]) != v683)
            {
              (*(*(v80 + 8) + 176))(**(v80 + 8), sel_setTriangleFillMode_, v683);
              LOBYTE(STACK[0x41B]) = v683;
              LOWORD(STACK[0x418]) |= 2u;
            }

            re::EncoderState::setRenderPipelineState(&STACK[0x418], &STACK[0xCD8], v80);
            if ((v899[65] & 0x80) != 0)
            {
              re::EncoderState::setDepthStencilState(&STACK[0x418], &STACK[0xCE0], v80);
            }

            if (v654)
            {
              (*(*(v80 + 8) + 192))(**(v80 + 8), sel_setVisibilityResultMode_offset_, (*v127 << 10) >> 14, 8 * *(v127 + 6));
            }

            v686 = **STACK[0x2A8];
            v687 = *(v686 + 2850);
            if ((v687 & 1) != 0 || *(v686 + 2852) == 1)
            {
              v688 = STACK[0x3D8];
              STACK[0x1ED0] = STACK[0x3D8];
              LODWORD(STACK[0x1ED8]) = 0;
              v689 = STACK[0x3D0];
              STACK[0x1EE0] = STACK[0x3D0];
              v690 = STACK[0x3F0];
              STACK[0x1E60] = STACK[0x3F0];
              LODWORD(STACK[0x1E68]) = 0;
              v691 = STACK[0x3E8];
              STACK[0x1E70] = STACK[0x3E8];
              v692 = STACK[0x408];
              STACK[0x1160] = STACK[0x408];
              LODWORD(STACK[0x1168]) = 0;
              v693 = STACK[0x400];
              STACK[0x1170] = STACK[0x400];
              if (v687)
              {
                v871 = v693;
                v865 = v689;
                v866 = v691;
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], STACK[0x3B0], STACK[0x3C0], 1u, *(v80 + 8), 0, v685);
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], v688, v865, 2u, *(v80 + 8), 0, v694);
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], v690, v866, 3u, *(v80 + 8), 0, v695);
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], v692, v871, 4u, *(v80 + 8), 0, v696);
              }

              if (*(*(STACK[0x2A8] + 8) + 24) && *(**STACK[0x2A8] + 2852) == 1)
              {
                re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x3B0], 1u, *(v80 + 8));
                re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1ED0], 2u, *(v80 + 8));
                re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1E60], 3u, *(v80 + 8));
                re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1160], 4u, *(v80 + 8));
              }
            }

            v697 = v127[9];
            v698 = v697[9];
            if (v698)
            {
              v699 = *(v698 + 1121);
              v700 = *(v698 + 1122);
            }

            else
            {
              v700 = 0;
              v699 = 0;
            }

            STACK[0x4B0] = v698;
            LOBYTE(STACK[0x4A9]) = v699;
            LOBYTE(STACK[0x4A8]) = v700;
            v701 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v127 + 50)) ^ ((0xBF58476D1CE4E5B9 * *(v127 + 50)) >> 27));
            STACK[0x498] = ((v127[11] << 6) - 0x61C8864680B583E9 + (v127[11] >> 2) + (v701 ^ (v701 >> 31))) ^ v127[11];
            TechniqueVariant = STACK[0xCB8];
            if (STACK[0xCB8])
            {
              v79 = 0;
              v262 = 136;
              do
              {
                v702 = STACK[0xCB8];
                if (STACK[0xCB8] <= v79)
                {
                  goto LABEL_1083;
                }

                v703 = STACK[0xCB0];
                STACK[0x480] = STACK[0xCB0] + v262 - 136;
                v704 = re::processArgumentBufferContextAndUseResources(&STACK[0x468], &STACK[0x4B8], v80);
                v77 = v80;
                v80 = *(v704 + 75);
                if (v80 >= 2)
                {
                  goto LABEL_1084;
                }

                v706 = v704;
                STACK[0x1ED0] = *(v704 + 8 * v80);
                LODWORD(STACK[0x1EE8]) = 0;
                LODWORD(STACK[0x1EF0]) = 0;
                LODWORD(STACK[0x1EF4]) = [*(v706 + 8 * v80) length];
                v707 = *(v703 + v262);
                LOBYTE(STACK[0x11A0]) = 0;
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], &STACK[0x1ED0], v707, v77, &STACK[0x11A0]);
                v708 = LODWORD(STACK[0x1EE8]);
                v80 = v77;
                if (v708 != -1)
                {
                  (off_1F5D06470[v708])(&STACK[0x1E60], &STACK[0x1ED0]);
                }

                ++v79;
                v262 += 144;
              }

              while (TechniqueVariant != v79);
              v697 = v127[9];
            }

            v79 = *v697;
            if (*v697)
            {
              v709 = *(v79 + 8);
              if (v709)
              {
                v710 = 0;
                for (k = 0; k < v709; v710 = ++k)
                {
                  v712 = *(v79 + 16);
                  v713 = *(v712 + 8 * v710);
                  if (v713)
                  {
                    [*(v712 + 8 * v710) length];
                    re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], v713, 0, k, *(v80 + 8), 0, v714);
                    v709 = *(v79 + 8);
                  }
                }
              }
            }

            v262 = v888;
            if (STACK[0xC18])
            {
              v715 = STACK[0xC10];
              v79 = STACK[0xC10] + 112 * STACK[0xC18];
              do
              {
                re::fillConstantBuffer(&STACK[0x1ED0], v888, v897, &STACK[0x510], v878, &STACK[0x600], v127, v715);
                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], STACK[0x1EE0], STACK[0x1ED8], *(v715 + 96), *(v80 + 8), 0, v716);
                v715 += 112;
              }

              while (v715 != v79);
            }

            TechniqueVariant = 24;
            if (STACK[0xC58])
            {
              v717 = 8 * STACK[0xC58];
              v79 = STACK[0xC50] + 4;
              do
              {
                (*(**(&STACK[0x1020] + *(v79 - 2)) + 24))(&STACK[0x1ED0]);
                v718 = *(v79 - 4);
                v719 = STACK[0x1ED0];
                if (v718 <= 0x1E)
                {
                  v720 = &STACK[0x1A80] + 2 * v718;
                  if (*v720 == 1)
                  {
                    v722 = v720[1];
                    v721 = v720 + 1;
                    if (v722 == v719)
                    {
                      goto LABEL_805;
                    }
                  }

                  else
                  {
                    *v720 = 1;
                    v721 = v720 + 1;
                  }

                  *v721 = v719;
                }

                (*(*(v80 + 8) + 48))(**(v80 + 8), sel_setVertexTexture_atIndex_, v719);
LABEL_805:
                if (STACK[0x1ED0])
                {
                }

                v79 += 8;
                v717 -= 8;
              }

              while (v717);
            }

            if (STACK[0xC38])
            {
              v723 = 8 * STACK[0xC38];
              v79 = STACK[0xC30] + 4;
              while (1)
              {
                v724 = &STACK[0xDB0] + 6 * *(v79 - 2);
                v725 = *v79;
                v726 = v724[1];
                if (v726 <= v725)
                {
                  break;
                }

                re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], *(*v724 + 24 * *v79), *(*v724 + 24 * *v79 + 16), *(v79 - 4), *(v80 + 8), 0, v685);
                v79 += 8;
                v723 -= 8;
                if (!v723)
                {
                  goto LABEL_812;
                }
              }

LABEL_1085:
              re::internal::assertLog(6, v684, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v725, v726);
              _os_crash();
              __break(1u);
LABEL_1086:
              STACK[0x1110] = 0;
              *&STACK[0x1F10] = 0u;
              *&STACK[0x1F00] = 0u;
              *&STACK[0x1EF0] = 0u;
              *&STACK[0x1EE0] = 0u;
              *&STACK[0x1ED0] = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(STACK[0x1E60]) = 136315906;
              STACK[0x1E64] = "operator[]";
              LOWORD(STACK[0x1E6C]) = 1024;
              LODWORD(STACK[0x1E6E]) = 468;
              LOWORD(STACK[0x1E72]) = 2048;
              STACK[0x1E74] = v80;
              LOWORD(STACK[0x1E7C]) = 2048;
              STACK[0x1E7E] = v79;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_1087:
              STACK[0x1110] = 0;
              *&STACK[0x1F10] = 0u;
              *&STACK[0x1F00] = 0u;
              *&STACK[0x1EF0] = 0u;
              *&STACK[0x1EE0] = 0u;
              *&STACK[0x1ED0] = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(STACK[0x1E60]) = 136315906;
              STACK[0x1E64] = "operator[]";
              LOWORD(STACK[0x1E6C]) = 1024;
              LODWORD(STACK[0x1E6E]) = 468;
              LOWORD(STACK[0x1E72]) = 2048;
              STACK[0x1E74] = v80;
              LOWORD(STACK[0x1E7C]) = 2048;
              STACK[0x1E7E] = v262;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_1088;
            }

LABEL_812:
            if ((*(STACK[0x2A8] + 16) & 1) != 0 && *(**STACK[0x2A8] + 2849) == 1)
            {
              STACK[0x1198] = *(v908 + 760);
              re::createVertexFetchArgumentBuffer<re::mtl::RenderCommandEncoder>((v867 + 208), v80, v918, &STACK[0xC00], &STACK[0x1198], &STACK[0x1E60]);
              if (STACK[0x1198])
              {

                STACK[0x1198] = 0;
              }

              STACK[0x1ED0] = STACK[0x1E60];
              LODWORD(STACK[0x1EE8]) = 0;
              LODWORD(STACK[0x1EF0]) = 0;
              LODWORD(STACK[0x1EF4]) = [STACK[0x1E60] length];
              LOBYTE(STACK[0x1188]) = 0;
              re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], &STACK[0x1ED0], 0x1Eu, v80, &STACK[0x1188]);
              v727 = LODWORD(STACK[0x1EE8]);
              v79 = 1;
              if (v727 != -1)
              {
                (off_1F5D06470[v727])(&STACK[0x1160], &STACK[0x1ED0]);
              }

              v728 = STACK[0xCE8];
              if (STACK[0x1580] != STACK[0xCE8] || STACK[0x1578] || LODWORD(STACK[0x158C]) || LOBYTE(STACK[0x1588]) != 1 || LOWORD(STACK[0x158A]))
              {
                [*v80 setVertexVisibleFunctionTable:STACK[0xCE8] atBufferIndex:29];
                STACK[0x1578] = 0;
                STACK[0x1580] = v728;
                if ((STACK[0x1588] & 1) == 0)
                {
                  LOBYTE(STACK[0x1588]) = 1;
                }

                LOWORD(STACK[0x158A]) = 0;
                LODWORD(STACK[0x158C]) = 0;
              }

              if (STACK[0x1E60])
              {
              }
            }

            else if (STACK[0xC08])
            {
              v729 = STACK[0xC00];
              v730 = STACK[0xC00] + 10 * STACK[0xC08];
              do
              {
                if (v729[3])
                {
                  v731 = v918;
                  do
                  {
                    v732 = v731;
                    v731 = *v731;
                    v79 = v732[3];
                    if (v731)
                    {
                      v733 = v79 == 0;
                    }

                    else
                    {
                      v733 = 0;
                    }
                  }

                  while (v733);
                  TechniqueVariant = v729[2];
                  if (v79 <= TechniqueVariant)
                  {
                    goto LABEL_1092;
                  }

                  v734 = (v732[4] + 16 * TechniqueVariant);
                  if (*(v734 + 5) && *(v729 + 8) != 1)
                  {
                    v79 = *v734;
                  }

                  else
                  {
                    v79 = 0;
                  }

                  v735 = 1;
                }

                else
                {
                  v735 = 0;
                }

                if (*(v729 + 8) == 1)
                {
                  TechniqueVariant = *(v908 + 760);
                  [TechniqueVariant length];
                  v736 = a69;
                  if (v735)
                  {
                    v736 = v79;
                  }

                  a69 = v736;
                  re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], TechniqueVariant, 0, *v729, *(v80 + 8), v735, v736);
                  if (TechniqueVariant)
                  {
                  }
                }

                else
                {
                  v737 = re::AttributeTable::buffers(v918);
                  v739 = v729[2];
                  if (v738 <= v739)
                  {
                    goto LABEL_1093;
                  }

                  v741 = a68;
                  if (v735)
                  {
                    v741 = v79;
                  }

                  a68 = v741;
                  v740 = v737 + 24 * v729[2];
                  re::ShaderResourceBindState::bindVertexResource(&STACK[0x12C0], *v740, *(v740 + 4), *v729, *(v80 + 8), v735, v741);
                }

                v729 += 5;
              }

              while (v729 != v730);
            }

            v77 = 0x9E3779B97F4A7C17;
            TechniqueVariant = &STACK[0xD20];
            v742 = STACK[0x2A8];
            if (STACK[0xC78])
            {
              v743 = 8 * STACK[0xC78];
              v79 = STACK[0xC70] + 4;
              while (1)
              {
                v744 = re::SamplerTableReference::samplerAt((&STACK[0xD20] + 3 * *(v79 - 2)), *v79);
                v745 = *(v79 - 4);
                v746 = *v80;
                v747 = *v744;
                if (v745 > 0x1E)
                {
                  goto LABEL_858;
                }

                if (*(&STACK[0x1890] + v745) != v747)
                {
                  break;
                }

LABEL_859:
                v79 += 8;
                v743 -= 8;
                if (!v743)
                {
                  goto LABEL_860;
                }
              }

              *(&STACK[0x1890] + v745) = v747;
              v747 = *v744;
LABEL_858:
              [v746 setVertexSamplerState:v747 atIndex:?];
              goto LABEL_859;
            }

LABEL_860:
            if (*(*(v742 + 8) + 24))
            {
              v748 = STACK[0xCC8];
              if (STACK[0xCC8])
              {
                v80 = 0;
                v749 = 136;
                do
                {
                  v750 = STACK[0xCC8];
                  if (STACK[0xCC8] <= v80)
                  {
                    goto LABEL_1090;
                  }

                  v79 = STACK[0xCC0];
                  STACK[0x480] = STACK[0xCC0] + v749 - 136;
                  v751 = re::processArgumentBufferContextAndUseResources(&STACK[0x468], &STACK[0x4B8], STACK[0x2A0]);
                  TechniqueVariant = *(v751 + 75);
                  if (TechniqueVariant >= 2)
                  {
                    goto LABEL_1091;
                  }

                  v753 = v751;
                  STACK[0x1ED0] = *(v751 + 8 * TechniqueVariant);
                  LODWORD(STACK[0x1EE8]) = 0;
                  LODWORD(STACK[0x1EF0]) = 0;
                  LODWORD(STACK[0x1EF4]) = [*(v753 + 8 * TechniqueVariant) length];
                  TechniqueVariant = *(v79 + v749);
                  if (TechniqueVariant < 0x1F)
                  {
                    v755 = &STACK[0x15A8] + 3 * *(v79 + v749);
                    re::BufferSlice::buffer(&STACK[0x1ED0], v754);
                    v79 = *v755;
                    if (v755[1])
                    {
                      v756 = 0;
                    }

                    else
                    {
                      v756 = v79 == STACK[0x1ED0];
                    }

                    if (!v756 || *(v755 + 5) != LODWORD(STACK[0x1EF0]) || *(v755 + 16) != 1 || *(v755 + 9))
                    {
                      re::BufferSlice::buffer(&STACK[0x1ED0], v684);
                      if (v79 == STACK[0x1ED0])
                      {
                        (*(*(STACK[0x2A0] + 8) + 96))(**(STACK[0x2A0] + 8), sel_setFragmentBufferOffset_atIndex_, LODWORD(STACK[0x1EF0]), TechniqueVariant);
                      }

                      else
                      {
                        re::BufferSlice::buffer(&STACK[0x1ED0], v757);
                        (*(*(STACK[0x2A0] + 8) + 88))(**(STACK[0x2A0] + 8), sel_setFragmentBuffer_offset_atIndex_, STACK[0x1ED0], LODWORD(STACK[0x1EF0]), TechniqueVariant);
                      }

                      re::BufferSlice::buffer(&STACK[0x1ED0], v758);
                      v759 = STACK[0x1EF0];
                      *v755 = STACK[0x1ED0];
                      v755[1] = 0;
                      if ((v755[2] & 1) == 0)
                      {
                        *(v755 + 16) = 1;
                      }

                      *(v755 + 9) = 0;
                      *(v755 + 5) = v759;
                    }
                  }

                  else
                  {
                    re::BufferSlice::buffer(&STACK[0x1ED0], v754);
                    (*(*(STACK[0x2A0] + 8) + 88))(**(STACK[0x2A0] + 8), sel_setFragmentBuffer_offset_atIndex_, STACK[0x1ED0], LODWORD(STACK[0x1EF0]), TechniqueVariant);
                  }

                  v760 = LODWORD(STACK[0x1EE8]);
                  if (v760 != -1)
                  {
                    (off_1F5D06470[v760])(&STACK[0x1E60], &STACK[0x1ED0]);
                  }

                  ++v80;
                  v749 += 144;
                }

                while (v748 != v80);
              }

              v761 = *(v127[9] + 8);
              v80 = STACK[0x2A0];
              if (v761)
              {
                v762 = *(v761 + 8);
                if (v762)
                {
                  v763 = 0;
                  for (m = 0; m < v762; v763 = ++m)
                  {
                    v765 = *(v761 + 16);
                    v766 = *(v765 + 8 * v763);
                    if (v766)
                    {
                      v767 = [*(v765 + 8 * v763) length];
                      STACK[0x1ED0] = v766;
                      LODWORD(STACK[0x1ED8]) = 0;
                      LODWORD(STACK[0x1EE0]) = 0;
                      LODWORD(STACK[0x1EE4]) = v767;
                      re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1ED0], m, *(v80 + 8));
                      v762 = *(v761 + 8);
                    }
                  }
                }
              }

              if (STACK[0xC28])
              {
                v768 = STACK[0xC20];
                v769 = STACK[0xC20] + 112 * STACK[0xC28];
                do
                {
                  re::fillConstantBuffer(&STACK[0x1ED0], v888, v897, &STACK[0x510], v878, &STACK[0x600], v127, v768);
                  STACK[0x1E60] = STACK[0x1EE0];
                  LODWORD(STACK[0x1E68]) = 0;
                  STACK[0x1E70] = STACK[0x1ED8];
                  re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1E60], *(v768 + 96), *(v80 + 8));
                  v768 += 112;
                }

                while (v768 != v769);
              }

              v77 = 0x9E3779B97F4A7C17;
              if (STACK[0xC68])
              {
                v770 = STACK[0xC60];
                for (n = 8 * STACK[0xC68]; n; n -= 8)
                {
                  if ((v770[3] & 1) == 0)
                  {
                    (*(**(&STACK[0x1020] + v770[1]) + 24))(&STACK[0x1ED0]);
                    v776 = *v770;
                    v777 = STACK[0x1ED0];
                    if (v776 <= 0x1E)
                    {
                      v778 = &STACK[0x1C70] + 2 * v776;
                      if (*v778 == 1)
                      {
                        v780 = v778[1];
                        v779 = v778 + 1;
                        if (v780 == v777)
                        {
LABEL_910:
                          if (STACK[0x1ED0])
                          {
                          }

                          goto LABEL_912;
                        }
                      }

                      else
                      {
                        *v778 = 1;
                        v779 = v778 + 1;
                      }

                      *v779 = v777;
                    }

                    (*(*(v80 + 8) + 104))(**(v80 + 8), sel_setFragmentTexture_atIndex_, v777);
                    goto LABEL_910;
                  }

                  v772 = *v770;
                  if (v772 <= 0x1E)
                  {
                    v773 = &STACK[0x1C70] + 2 * v772;
                    if (*v773 == 1)
                    {
                      v775 = v773[1];
                      v774 = v773 + 1;
                      if (!v775)
                      {
                        goto LABEL_912;
                      }
                    }

                    else
                    {
                      *v773 = 1;
                      v774 = v773 + 1;
                    }

                    *v774 = 0;
                  }

                  (*(*(v80 + 8) + 104))(**(v80 + 8), sel_setFragmentTexture_atIndex_, 0);
LABEL_912:
                  v770 += 4;
                }
              }

              if (STACK[0xC48])
              {
                v781 = 8 * STACK[0xC48];
                v782 = (STACK[0xC40] + 4);
                do
                {
                  re::BufferTableReference::getBuffer((&STACK[0xDB0] + 6 * *(v782 - 1)), *v782, &STACK[0x1ED0]);
                  re::ShaderResourceBindState::bindFragmentResource(&STACK[0x12C0], &STACK[0x1ED0], *(v782 - 2), *(v80 + 8));
                  v782 += 4;
                  v781 -= 8;
                }

                while (v781);
              }

              TechniqueVariant = &STACK[0xD20];
              if (STACK[0xC88])
              {
                v783 = 8 * STACK[0xC88];
                v784 = (STACK[0xC80] + 4);
                while (1)
                {
                  v785 = re::SamplerTableReference::samplerAt((&STACK[0xD20] + 3 * *(v784 - 1)), *v784);
                  v786 = *(v784 - 2);
                  v787 = *v785;
                  if (v786 > 0x1E)
                  {
                    goto LABEL_921;
                  }

                  if (*(&STACK[0x1988] + v786) != v787)
                  {
                    break;
                  }

LABEL_922:
                  v784 += 4;
                  v783 -= 8;
                  if (!v783)
                  {
                    goto LABEL_923;
                  }
                }

                *(&STACK[0x1988] + v786) = v787;
                v787 = *v785;
LABEL_921:
                [*v80 setFragmentSamplerState:v787 atIndex:?];
                goto LABEL_922;
              }
            }

LABEL_923:
            v81 = *(v127 + 1) & 1;
            if ((STACK[0x418] & 0x10) == 0 || LOBYTE(STACK[0x42C]) != v81)
            {
              (*(*(v80 + 8) + 136))(**(v80 + 8), sel_setFrontFacingWinding_, *(v127 + 1) & 1);
              LOBYTE(STACK[0x42C]) = v81;
              LOWORD(STACK[0x418]) |= 0x10u;
            }

            v79 = v869;
            re::EncoderState::setVertexAmplificationCountForState(&STACK[0x418], v868, v869, (v899 + 8), *(v127 + 36), *(v127 + 10), v80);
            if (*(*(STACK[0x2A8] + 8) + 184))
            {
              v788 = re::AttributeTable::buffers(v127[8]);
              v790 = *(v127 + 8);
              if (v789 <= v790)
              {
                goto LABEL_1101;
              }

              v81 = *(v788 + 3 * *(v127 + 8));
              v791 = re::AttributeTable::buffers(v127[8]);
              v793 = *(v127 + 8);
              if (v792 <= v793)
              {
                goto LABEL_1102;
              }

              [*v80 setTessellationFactorBuffer:v81 offset:*(v791 + 6 * *(v127 + 8) + 4) instanceStride:0];
              v864 = 0;
              [*v80 drawPatches:*(*(STACK[0x2A8] + 8) + 176) patchStart:0 patchCount:*(v127 + 6) patchIndexBuffer:0 patchIndexBufferOffset:0 instanceCount:1 baseInstance:?];
              goto LABEL_930;
            }

            v796 = *(v127 + 5);
            v797 = v796;
            v798 = v796 & 1;
            v799 = v796 & 2;
            v800 = *(v76 + 28);
            if (v800 == 2)
            {
              v801 = (v796 >> 1) & 1;
            }

            else
            {
              v801 = 1;
            }

            v802 = *(v127 + 9);
            if (v800 || v802 != 2)
            {
              v804 = ((v800 != 1) | v796) & v801;
              v805 = v798 != v799 >> 1;
              if (v802 != 1)
              {
                v805 = 0;
              }

              if (v800)
              {
                v803 = 0;
              }

              else
              {
                v803 = v805;
              }
            }

            else
            {
              v803 = 0;
              v804 = (v796 & 3) != 0;
            }

            if (!v804 || v803)
            {
LABEL_930:
              ++*(v897 + 8);
              v794 = *(v897 + 96);
              if (v794)
              {
                ++*v794;
              }

              v795 = STACK[0x2A0];
              TechniqueVariant = &STACK[0x1E60];
              v231 = v920;
              if (v904)
              {
                LOBYTE(STACK[0x1ED0]) = 0;
                LOBYTE(STACK[0x1160]) = 0;
                LOBYTE(STACK[0x1138]) = 0;
                v844 = *STACK[0x2A8];
                if (v844 && (v845 = *v844) != 0)
                {
                  v846 = *v845;
                  LOBYTE(STACK[0x1E60]) = 1;
                  re::DynamicString::DynamicString(&STACK[0x1E68], (v845 + 305));
                  re::Optional<re::DynamicString>::operator=(&STACK[0x1160], &STACK[0x1E60]);
                  if (LOBYTE(STACK[0x1E60]) == 1 && STACK[0x1E68] && (STACK[0x1E70] & 1) != 0)
                  {
                    (*(*STACK[0x1E68] + 40))(STACK[0x1E68], STACK[0x1E78]);
                  }

                  v847 = **STACK[0x2A8];
                  LOBYTE(STACK[0x1E60]) = 1;
                  re::DynamicString::DynamicString(&STACK[0x1E68], (v847 + 2472));
                  re::Optional<re::DynamicString>::operator=(&STACK[0x1138], &STACK[0x1E60]);
                  if (LOBYTE(STACK[0x1E60]) == 1 && STACK[0x1E68] && (STACK[0x1E70] & 1) != 0)
                  {
                    (*(*STACK[0x1E68] + 40))(STACK[0x1E68], STACK[0x1E78]);
                  }

                  v848 = **STACK[0x2A8];
                  LOBYTE(STACK[0x1E60]) = 1;
                  *&STACK[0x1E68] = *(v848 + 72);
                  *&STACK[0x1E78] = *(v848 + 88);
                  *&STACK[0x1E88] = *(v848 + 104);
                  LODWORD(STACK[0x1E98]) = *(v848 + 120);
                  v849 = *(v848 + 124);
                  LOBYTE(STACK[0x1E9C]) = v849;
                  if (v849 == 1)
                  {
                    LOBYTE(STACK[0x1E9D]) = *(v848 + 125);
                  }

                  re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&STACK[0x1EA0], (v848 + 128));
                  re::Optional<re::TechniqueState>::operator=(&STACK[0x1ED0], &STACK[0x1E60]);
                  if (LOBYTE(STACK[0x1E60]) == 1 && STACK[0x1EA0] && STACK[0x1EC0])
                  {
                    (*(*STACK[0x1EA0] + 40))(STACK[0x1EA0]);
                  }

                  v850 = STACK[0x1160];
                  LOBYTE(STACK[0x1110]) = STACK[0x1160];
                  if (v850)
                  {
                    re::DynamicString::DynamicString(&STACK[0x1118], &STACK[0x1168]);
                  }

                  v795 = STACK[0x2A0];
                  TechniqueVariant = &STACK[0x1E60];
                }

                else
                {
                  v846 = 0;
                  LOBYTE(STACK[0x1110]) = 0;
                }

                v851 = LOBYTE(STACK[0x1138]);
                LOBYTE(STACK[0x10E8]) = v851;
                if (v851 == 1)
                {
                  re::DynamicString::DynamicString(&STACK[0x10F0], &STACK[0x1140]);
                }

                re::Optional<re::TechniqueState>::Optional(&STACK[0x1080], &STACK[0x1ED0]);
                *&STACK[0x1E60] = *&STACK[0x2B0];
                LOBYTE(STACK[0x1E70]) = STACK[0x2C0];
                re::DrawCallRecorderGroup::recordEncodedDrawCall(v904, v127, v846, &STACK[0x1110], &STACK[0x10E8], &STACK[0x1080], &STACK[0x1E60], *(v127 + 8), 0);
                if (LOBYTE(STACK[0x1080]) == 1 && STACK[0x10C0])
                {
                  if (STACK[0x10E0])
                  {
                    (*(*STACK[0x10C0] + 40))(STACK[0x10C0]);
                  }

                  STACK[0x10E0] = 0;
                  STACK[0x10C8] = 0;
                  STACK[0x10D0] = 0;
                  STACK[0x10C0] = 0;
                  ++LODWORD(STACK[0x10D8]);
                }

                if (LOBYTE(STACK[0x10E8]) == 1 && STACK[0x10F0])
                {
                  if (STACK[0x10F8])
                  {
                    (*(*STACK[0x10F0] + 40))(STACK[0x10F0], STACK[0x1100]);
                  }

                  *&STACK[0x1100] = 0u;
                  *&STACK[0x10F0] = 0u;
                }

                if (LOBYTE(STACK[0x1110]) == 1 && STACK[0x1118])
                {
                  if (STACK[0x1120])
                  {
                    (*(*STACK[0x1118] + 40))(STACK[0x1118], STACK[0x1128]);
                  }

                  *&STACK[0x1128] = 0u;
                  *&STACK[0x1118] = 0u;
                }

                if (LOBYTE(STACK[0x1138]) == 1 && STACK[0x1140] && (STACK[0x1148] & 1) != 0)
                {
                  (*(*STACK[0x1140] + 40))(STACK[0x1140], STACK[0x1150]);
                }

                if (LOBYTE(STACK[0x1160]) == 1 && STACK[0x1168] && (STACK[0x1170] & 1) != 0)
                {
                  (*(*STACK[0x1168] + 40))(STACK[0x1168], STACK[0x1178]);
                }

                if (LOBYTE(STACK[0x1ED0]) == 1 && STACK[0x1F10] && STACK[0x1F30])
                {
                  (*(*STACK[0x1F10] + 40))(STACK[0x1F10]);
                }
              }

              v77 = 0x9E3779B97F4A7C17;
              (*(*(v795 + 8) + 168))(**(v795 + 8), sel_popDebugGroup);
              LOBYTE(v80) = 1;
              v79 = v892;
              goto LABEL_934;
            }

            v806 = *(v127 + 8);
            v807 = *(v127 + 10);
            if (v806 * v802 > 1 || v807)
            {
              if (v802 > 1 && v799 != 0 && v798 == 0)
              {
                v820 = *(v127 + 8);
              }

              else
              {
                v820 = 0;
              }

              if ((~v797 & 3) != 0)
              {
                LODWORD(v80) = 1;
              }

              else
              {
                LODWORD(v80) = *(v127 + 9);
              }

              v821 = *v127;
              if (v821)
              {
                TechniqueVariant = *(v127 + 5);
                if (!TechniqueVariant)
                {
                  goto LABEL_930;
                }

                v822 = (v821 >> 1) & 7;
                v77 = (v821 >> 7) & 1;
                v823 = re::AttributeTable::buffers(v127[8]);
                v825 = *(v127 + 2);
                if (v869)
                {
                  if (v824 <= v825)
                  {
                    goto LABEL_1106;
                  }

                  v79 = 24;
                  v81 = *(v823 + 3 * *(v127 + 2));
                  v826 = re::AttributeTable::buffers(v127[8]);
                  v828 = *(v127 + 2);
                  if (v827 <= v828)
                  {
                    goto LABEL_1108;
                  }

                  v864 = *(v127 + 7);
                  (*(*(STACK[0x2A0] + 8) + 240))(**(STACK[0x2A0] + 8), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_, v822, TechniqueVariant, v77, v81, *(v826 + 6 * *(v127 + 2) + 4), *(v127 + 8));
                }

                else
                {
                  if (v824 <= v825)
                  {
                    goto LABEL_1105;
                  }

                  v79 = 24;
                  v81 = *(v823 + 3 * *(v127 + 2));
                  v836 = re::AttributeTable::buffers(v127[8]);
                  v838 = *(v127 + 2);
                  if (v837 <= v838)
                  {
                    goto LABEL_1107;
                  }

                  v864 = *(v127 + 7);
                  (*(*(STACK[0x2A0] + 8) + 240))(**(STACK[0x2A0] + 8), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_, v822, TechniqueVariant, v77, v81, *(v836 + 6 * *(v127 + 2) + 4), *(v127 + 8) * v80);
                }

                v839 = *(v127 + 8) * v80;
                v840 = *(v127 + 5) / 3u * v839;
                *(v897 + 12) += v840;
                v841 = *(v897 + 104);
                if (v841)
                {
                  *v841 += v840;
                  v839 = *(v127 + 8) * v80;
                }

                v816 = *(v127 + 4) * v839;
                *(v897 + 16) += v816;
                v817 = *(v897 + 112);
                if (!v817)
                {
                  goto LABEL_930;
                }
              }

              else
              {
                if (!v869)
                {
                  v806 = v806 * v80;
                }

                (*(*(STACK[0x2A0] + 8) + 232))(**(STACK[0x2A0] + 8), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_, (v821 >> 1) & 7, *(v127 + 7), *(v127 + 4), v806, v820 + v807);
                v829 = *(v127 + 8) * v80;
                v830 = *(v127 + 4);
                v831 = v830 / 3 * v829;
                *(v897 + 12) += v831;
                v832 = *(v897 + 104);
                if (v832)
                {
                  *v832 += v831;
                  v830 = *(v127 + 4);
                  v829 = *(v127 + 8) * v80;
                }

                v816 = v830 * v829;
                *(v897 + 16) += v816;
                v817 = *(v897 + 112);
                if (!v817)
                {
                  goto LABEL_930;
                }
              }
            }

            else
            {
              v79 = *v127;
              if ((v79 & 1) == 0)
              {
                (*(*(STACK[0x2A0] + 8) + 208))(**(STACK[0x2A0] + 8), sel_drawPrimitives_vertexStart_vertexCount_, (v79 >> 1) & 7, *(v127 + 7), *(v127 + 4));
                v833 = *(v127 + 4);
                *(v897 + 12) += v833 / 3;
                v834 = *(v897 + 104);
                if (v834)
                {
                  *v834 += v833 / 3;
                  v833 = *(v127 + 4);
                }

                *(v897 + 16) += v833;
                v817 = *(v897 + 112);
                if (!v817)
                {
                  goto LABEL_930;
                }

                v835 = *v817 + v833;
                goto LABEL_995;
              }

              v81 = *(v127 + 5);
              if (!v81)
              {
                goto LABEL_930;
              }

              v808 = re::AttributeTable::buffers(v127[8]);
              v810 = *(v127 + 2);
              if (v809 <= v810)
              {
                goto LABEL_1103;
              }

              LOBYTE(v80) = 24;
              TechniqueVariant = *(v808 + 3 * *(v127 + 2));
              v811 = re::AttributeTable::buffers(v127[8]);
              v813 = *(v127 + 2);
              if (v812 <= v813)
              {
                goto LABEL_1104;
              }

              (*(*(STACK[0x2A0] + 8) + 224))(**(STACK[0x2A0] + 8), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_, (v79 >> 1) & 7, v81, (v79 >> 7) & 1, TechniqueVariant, *(v811 + 6 * *(v127 + 2) + 4));
              v814 = *(v127 + 5) / 3u;
              *(v897 + 12) += v814;
              v815 = *(v897 + 104);
              if (v815)
              {
                *v815 += v814;
              }

              v816 = *(v127 + 4);
              *(v897 + 16) += v816;
              v817 = *(v897 + 112);
              if (!v817)
              {
                goto LABEL_930;
              }
            }

            v835 = *v817 + v816;
LABEL_995:
            *v817 = v835;
            goto LABEL_930;
          }

          v445 = &STACK[0x1080];
        }

        re::Optional<re::DrawCallEncoderStates>::~Optional(v445);
        LOBYTE(v80) = 0;
        v79 = v895;
        v231 = v920;
LABEL_934:
        re::ConstantTable::~ConstantTable(&STACK[0x11B0]);
        v895 = v79;
        goto LABEL_935;
      }

      shouldCompileSynchronously = 1;
      v80 = 1;
      if (!TechniqueVariant)
      {
        goto LABEL_218;
      }

LABEL_208:
      v234 = v76[3];
      v235 = (TechniqueVariant + 17);
      v79 = atomic_load((TechniqueVariant + 17));
      if (!v79)
      {
        STACK[0x1ED8] = TechniqueVariant;
        STACK[0x1ED0] = v906;
        STACK[0x1EE0] = v234;
        v79 = 2;
        atomic_store(2u, v235);
        re::dispatchMaterialPipelineDataCompilation(&STACK[0x1ED0]);
      }

      v236 = shouldCompileSynchronously ^ 1;
      if (v79 != 2)
      {
        v236 = 1;
      }

      if ((v236 & 1) == 0)
      {
        do
        {
          __ulock_wait();
          v237 = atomic_load(v235);
        }

        while (v237 == 2);
        v79 = atomic_load(v235);
      }

      v80 = 0;
      if (v79 == 1)
      {
        goto LABEL_218;
      }

LABEL_935:
      v231 += 8;
    }

    while (v231 != 16);
    v83 = v909;
    if (*(v127 + 156))
    {
      STACK[0x1030] = re::MaterialManager::sceneTextures(v909, *(v76 + 36));
      v854 = re::MaterialManager::lightBuffers(v909, *(v76 + 36));
      v855 = v854[10];
      v856 = v854[17];
      v857 = v854[15];
      STACK[0xE40] = v854[12];
      STACK[0xE48] = v855;
      STACK[0xE50] = v856;
      STACK[0xE58] = v857;
      LODWORD(STACK[0xE60]) = 0;
      STACK[0xE68] = v854;
      v858 = re::MaterialManager::sceneBuffers(v909, *(v76 + 36));
      v859 = v858[10];
      v860 = v858[17];
      v861 = v858[15];
      STACK[0xE10] = v858[12];
      STACK[0xE18] = v859;
      STACK[0xE20] = v860;
      STACK[0xE28] = v861;
      LODWORD(STACK[0xE30]) = 0;
      STACK[0xE38] = v858;
    }

    v173 = v880 + 1;
    v80 = STACK[0x2A0];
    v174 = v872;
    if (v872 != *v76 || v173 != *(STACK[0x2A0] + 48))
    {
      continue;
    }

    break;
  }

  v172 = *(v80 + 56);
LABEL_107:
  v172[2].i32[1] += LODWORD(STACK[0x570]) + LODWORD(STACK[0x538]);
  v172[3] = vadd_s32(vrev64_s32(vadd_s32(STACK[0x574], STACK[0x53C])), v172[3]);
  if (STACK[0x438])
  {

    STACK[0x438] = 0;
  }

  if (STACK[0x430])
  {
  }

  if (STACK[0x440] && STACK[0x460])
  {
    (*(*STACK[0x440] + 40))(STACK[0x440]);
  }

  if (STACK[0x4E0])
  {
    if (STACK[0x500])
    {
      (*(*STACK[0x4E0] + 40))(STACK[0x4E0]);
    }

    STACK[0x500] = 0;
    STACK[0x4E8] = 0;
    STACK[0x4F0] = 0;
    STACK[0x4E0] = 0;
    ++LODWORD(STACK[0x4F8]);
  }

  if (STACK[0x4B8] && STACK[0x4D8])
  {
    (*(*STACK[0x4B8] + 40))(STACK[0x4B8]);
  }

  if (STACK[0x670] && STACK[0x690])
  {
    (*(*STACK[0x670] + 40))(STACK[0x670]);
  }

  re::Optional<re::DrawCallEncoderStates>::~Optional(&STACK[0xCD0]);
  re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(&STACK[0xCF0]);
}