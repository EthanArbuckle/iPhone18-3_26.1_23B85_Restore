void re::anonymous namespace::computeGeometryForCanonicalCorner(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v125 = *MEMORY[0x1E69E9840];
  v107 = a5;
  v108 = a4;
  v106 = a6;
  v12 = re::GeomMesh::modifyVertexPositions(a1);
  v14 = v13;
  v104 = v12;
  v105 = v13;
  v15 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
  v16 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v15);
  v95 = v17;
  v18 = v17;
  v19 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexNormal");
  v97 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  v93 = v20;
  v21 = v20;
  if (v7)
  {
    v92 = a2;
    v22 = 0;
    v23 = 1.0 / (v8 + -1.0);
    v24 = 1.0 / (v7 + -1.0);
    while (1)
    {
      v25 = v22 == v7 - 1 ? 1.0 : v24 * v22;
      if (v8)
      {
        break;
      }

LABEL_31:
      v22 = (v22 + 1);
      if (v22 >= v7)
      {
        v14 = v105;
        a2 = v92;
        goto LABEL_33;
      }
    }

    v7 = 0;
    v14 = v6;
    v26 = v97 + 16 * v6;
    v6 = v16 + 16 * v6;
    while (1)
    {
      *v115 = 0u;
      v103 = 0u;
      v27 = v23 * v7;
      if (v7 == v8 - 1)
      {
        v27 = 1.0;
      }

      v8 = v105;
      if (v14 >= v105)
      {
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v99.i64[0] = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        v116 = 2048;
        v117 = v22;
        v118 = 2048;
        v119 = v68;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_79:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_80:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_81:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_84:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_85:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_86:
        *&v101 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        v67 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v14;
        *&v113[28] = 2048;
        *&v113[30] = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v99.i64[0] = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v115 = 136315906;
        *&v115[4] = "operator[]";
        *&v115[12] = 1024;
        *&v115[14] = 621;
        v116 = 2048;
        v117 = v22;
        v118 = 2048;
        v119 = v67;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_88:
        *v115 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v120 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v113 = 136315906;
        *&v113[4] = "operator[]";
        *&v113[12] = 1024;
        *&v113[14] = 621;
        *&v113[18] = 2048;
        *&v113[20] = v26;
        *&v113[28] = 2048;
        *&v113[30] = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_89;
      }

      v30 = (v104 + 16 * v14);
      *v30 = v28;
      v30[1] = v29;
      v31 = *v115;
      v32 = vmulq_f32(v31, v31);
      v33 = v103;
      v34 = vmulq_f32(v33, v33);
      v35 = vmvn_s8(vceqz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v32.i8), vzip2_s32(*v34.i8, *v32.i8)))));
      if ((v35.i32[1] | v35.i32[0]))
      {
        v36 = xmmword_1E30476A0;
        if (v35.i8[0])
        {
          if (v35.i8[4])
          {
            if (v14 >= v18)
            {
              goto LABEL_84;
            }

            *v6 = *v115;
            v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v31)), v33, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
            v38 = vmulq_f32(v37, v37);
            v39 = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
            if (v39 <= 0.0)
            {
              v46 = 0;
              v45 = 0;
            }

            else
            {
              v40 = LODWORD(v39);
              v41 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
              v42 = vrsqrte_f32(v40);
              v43 = vmul_f32(v42, vrsqrts_f32(v40, vmul_f32(v42, v42)));
              v44 = vmulq_n_f32(v41, vmul_f32(v43, vrsqrts_f32(v40, vmul_f32(v43, v43))).f32[0]);
              v45 = v44.i64[1];
              v46 = v44.i64[0];
            }

            if (v14 >= v21)
            {
              goto LABEL_86;
            }

            *v26 = v46;
            *(v26 + 8) = v45;
          }

          else
          {
            if (v14 >= v21)
            {
              goto LABEL_83;
            }

            *v26 = xmmword_1E30476A0;
            if (v14 >= v18)
            {
              goto LABEL_85;
            }

            v47 = vmlaq_f32(vmulq_f32(v33, xmmword_1E30661F0), xmmword_1E30476A0, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
            *v6 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
          }

          goto LABEL_23;
        }

        if (v14 >= v18)
        {
          goto LABEL_81;
        }

        *v6 = *v115;
        if (v14 >= v21)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v36 = xmmword_1E30476A0;
        if (v14 >= v18)
        {
          goto LABEL_79;
        }

        *v6 = xmmword_1E3047680;
        if (v14 >= v21)
        {
          goto LABEL_80;
        }
      }

      *v26 = v36;
LABEL_23:
      ++v14;
      v7 = (v7 + 1);
      v8 = v108;
      v26 += 16;
      v6 += 16;
      if (v7 >= v108)
      {
        v7 = v107;
        v6 = v14;
        goto LABEL_31;
      }
    }
  }

LABEL_33:
  v26 = (v6 - 1);
  if (v14 <= v26)
  {
    goto LABEL_88;
  }

  v48 = 0uLL;
  v49.i64[0] = 0;
  v49.i64[1] = *(v104 + 16 * v26 + 8);
  v103 = v49;
  if (v14 <= v6)
  {
LABEL_89:
    *v115 = 0;
    v123 = v48;
    v124 = v48;
    v121 = v48;
    v122 = v48;
    v120 = v48;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 621;
    *&v113[18] = 2048;
    *&v113[20] = v6;
    *&v113[28] = 2048;
    *&v113[30] = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  v7 = v6;
  *(v104 + 16 * v6) = v103;
  if (v6 >= v95)
  {
LABEL_90:
    *v115 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 621;
    *&v113[18] = 2048;
    *&v113[20] = v7;
    *&v113[28] = 2048;
    *&v113[30] = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_91;
  }

  *(v16 + 16 * v6) = xmmword_1E3047680;
  if (v6 >= v93)
  {
LABEL_91:
    *v115 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v113 = 136315906;
    *&v113[4] = "operator[]";
    *&v113[12] = 1024;
    *&v113[14] = 621;
    *&v113[18] = 2048;
    *&v113[20] = v7;
    *&v113[28] = 2048;
    *&v113[30] = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_92;
  }

  *(v97 + 16 * v6) = xmmword_1E30476A0;
  v102 = v6;
  *v113 = &v103;
  *&v113[8] = &v106;
  *&v113[16] = &v108;
  *&v113[24] = &v107;
  *&v113[32] = &v102;
  v114 = &v104;
  v100 = 0u;
  v101 = 0u;
  v14 = v50;
  v8 = v51;
  a3 = (v6 + 1);
  v26 = v105;
  if (v105 <= a3)
  {
LABEL_92:
    v111 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = a3;
    v118 = 2048;
    v119 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  v54.i64[0] = v14;
  v54.i64[1] = v8;
  v55.i64[0] = v52;
  v55.i64[1] = v53;
  v56 = vdupq_n_s32(0x3EAAAAABu);
  *(v104 + 16 * a3) = vmulq_f32(vaddq_f32(vaddq_f32(v54, v54), v55), v56);
  v8 = (v6 + 2);
  v26 = v105;
  if (v105 <= v8)
  {
LABEL_93:
    v111 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v8;
    v118 = 2048;
    v119 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

  *(v104 + 16 * v8) = vmulq_f32(vaddq_f32(vaddq_f32(v55, v55), v54), v56);
  v26 = v105;
  if (v105 <= a3)
  {
LABEL_94:
    v111 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = a3;
    v118 = 2048;
    v119 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_95;
  }

  v26 = v105;
  if (v105 <= v8)
  {
LABEL_95:
    v109 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v8;
    v118 = 2048;
    v119 = v26;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

  v57 = v111;
  if (v111 >= v95)
  {
LABEL_96:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v88 = v57;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v88;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  v58 = HIDWORD(v111);
  if (HIDWORD(v111) >= v95)
  {
LABEL_97:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v89 = v58;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v89;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_98;
  }

  v59 = v112;
  if (v112 >= v95)
  {
LABEL_98:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v90 = v59;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v90;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_99;
  }

  if (a3 >= v95)
  {
LABEL_99:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = a3;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  v60 = v101;
  v61 = *(&v101 + 2);
  *(v16 + 16 * a3) = vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v111), *&v101), vmulq_n_f32(*(v16 + 16 * HIDWORD(v111)), *(&v101 + 1))), vmulq_n_f32(*(v16 + 16 * v112), *(&v101 + 2)));
  v62 = v109;
  if (v109 >= v95)
  {
LABEL_100:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v91 = v62;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v91;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  v6 = HIDWORD(v109);
  if (HIDWORD(v109) >= v95)
  {
LABEL_101:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v6;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

  v14 = v110;
  if (v110 >= v95)
  {
LABEL_102:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v14;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_103;
  }

  if (v8 >= v95)
  {
LABEL_103:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v8;
    v118 = 2048;
    v119 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v63 = v100;
  v64 = *(&v100 + 2);
  *(v16 + 16 * v8) = vaddq_f32(vaddq_f32(vmulq_n_f32(*(v16 + 16 * v109), *&v100), vmulq_n_f32(*(v16 + 16 * HIDWORD(v109)), *(&v100 + 1))), vmulq_n_f32(*(v16 + 16 * v110), *(&v100 + 2)));
  if (v8 >= v93)
  {
LABEL_104:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v8;
    v118 = 2048;
    v119 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v18;
    v118 = 2048;
    v119 = v67;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v26;
    v118 = 2048;
    v119 = v67;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_107;
  }

  *(v97 + 16 * v8) = *(v97 + 16 * v7);
  *(v97 + 16 * a3) = *(v97 + 16 * v7);
  if (!a2)
  {
    return;
  }

  v96 = v64;
  v98 = v61;
  v7 = v62;
  v94 = v59;
  v8 = v58;
  a3 = v57;
  v65 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
  v18 = v106;
  v67 = v105;
  if (v105 <= v106)
  {
    goto LABEL_105;
  }

  v68 = v66;
  v69 = v104;
  v70 = *(v104 + 16 * v106);
  v71 = v107;
  if (v107)
  {
    v72 = 0;
    v73 = 0.0;
    v74 = v108;
    v26 = v106;
    v75 = v7;
    v77 = v98;
    v76 = *&v60;
    v79 = *(&v63 + 1);
    v78 = *&v63;
    v80 = v96;
    while (1)
    {
      v22 = v18 + v74 * v72;
      if (v67 <= v22)
      {
        goto LABEL_87;
      }

      v81 = *(v69 + 16 * v22);
      v82 = vsubq_f32(v81, v70);
      v83 = vmulq_f32(v82, v82);
      v73 = v73 + sqrtf(v83.f32[2] + vaddv_f32(*v83.f32));
      if (v74)
      {
        v22 = v26;
        v84 = v66 - v26;
        if (v66 < v26)
        {
          v84 = 0;
        }

        v85 = v74;
        do
        {
          if (!v84)
          {
            goto LABEL_78;
          }

          *(v65 + 4 * v22++) = v73;
          --v84;
          --v85;
        }

        while (v85);
        v26 = v22;
      }

      ++v72;
      v70 = v81;
      if (v72 == v71)
      {
        goto LABEL_65;
      }
    }
  }

  v81 = *(v104 + 16 * v106);
  v26 = v106;
  v75 = v7;
  v77 = v98;
  v76 = *&v60;
  v79 = *(&v63 + 1);
  v78 = *&v63;
  v80 = v96;
LABEL_65:
  if (v67 <= v26)
  {
    goto LABEL_106;
  }

  v18 = v26;
  if (v26 >= v66)
  {
LABEL_107:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v18;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  v86 = vsubq_f32(*(v69 + 16 * v26), v81);
  v87 = vmulq_f32(v86, v86);
  *(v65 + 4 * v26) = sqrtf(v87.f32[2] + vaddv_f32(*v87.f32));
  if (a3 >= v66)
  {
LABEL_108:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = a3;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_109;
  }

  if (v8 >= v66)
  {
LABEL_109:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v8;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_110;
  }

  v7 = v94;
  if (v94 >= v66)
  {
LABEL_110:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v7;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_111;
  }

  v18 = (v26 + 1);
  if (v18 >= v66)
  {
LABEL_111:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v18;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  *(v65 + 4 * v18) = ((*(&v60 + 1) * *(v65 + 4 * v8)) + (v76 * *(v65 + 4 * a3))) + (v77 * *(v65 + 4 * v94));
  if (v75 >= v66)
  {
LABEL_112:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    v26 = v75;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v26;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_113;
  }

  if (v6 >= v66)
  {
LABEL_113:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v6;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  if (v14 >= v66)
  {
LABEL_114:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v14;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_115:
    v99.i64[0] = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v115 = 136315906;
    *&v115[4] = "operator[]";
    *&v115[12] = 1024;
    *&v115[14] = 621;
    v116 = 2048;
    v117 = v26;
    v118 = 2048;
    v119 = v68;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v26 = (v26 + 2);
  if (v26 >= v66)
  {
    goto LABEL_115;
  }

  *(v65 + 4 * v26) = ((v79 * *(v65 + 4 * v6)) + (v78 * *(v65 + 4 * v75))) + (v80 * *(v65 + 4 * v14));
}

uint64_t re::anonymous namespace::stitchTwoRows(uint64_t this, uint64_t a2, int *a3, int a4, void *a5, int a6, int *a7, unsigned int *a8)
{
  v14 = a3;
  v15 = this;
  v16 = (a3[2] - 1);
  if (a2 >= 2)
  {
    v8 = a7;
    v20 = a2;
    if (a3[2] == 1)
    {
      v23 = 1;
LABEL_16:
      v24 = *v8 + 1;
      *v8 = v24;
      v25 = v20 - 2;
      if (v20 != 2)
      {
        v26 = 0;
        do
        {
          if (v16)
          {
            LODWORD(a2) = *a8;
            v27 = v16;
            do
            {
              this = re::GeomMeshBuilder::setFaceVertices(v15, a2, *v8 - v23, *v8 + 1 - v23, *v8 + 1, *v8);
              ++*v8;
              a2 = *a8 + 1;
              *a8 = a2;
              --v27;
            }

            while (v27);
            v24 = *v8;
          }

          *v8 = ++v24;
          ++v26;
        }

        while (v26 != v25);
      }

      v28 = v24 - v23;
      *v8 = v24 - v23;
      if (!v16)
      {
LABEL_27:
        *v8 = v28 + 1;
        return this;
      }

      v29 = 0;
      while (1)
      {
        v14 = (v29 + 1);
        v30 = a5[1];
        if (v30 <= v29 + 1)
        {
          break;
        }

        this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, v28, v28 + 1, *(*a5 + 4 * v29 + 4) + a6, *(*a5 + 4 * v29) + a6);
        ++*a8;
        v28 = *v8 + 1;
        *v8 = v28;
        v29 = v14;
        if (v16 == v14)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v21 = 0;
      while (1)
      {
        v22 = *(v14 + 1);
        if (v22 <= v21)
        {
          break;
        }

        v9 = (v21 + 1);
        if (v22 <= v21 + 1)
        {
          goto LABEL_30;
        }

        this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, *(*v14 + 4 * v21) + a4, *(*v14 + 4 * v21 + 4) + a4, *v8 + 1, *v8);
        ++*v8;
        ++*a8;
        v21 = v9;
        if (v16 == v9)
        {
          v23 = v14[2];
          goto LABEL_16;
        }
      }

      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v22);
      _os_crash();
      __break(1u);
LABEL_30:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v22);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v30);
    _os_crash();
    __break(1u);
  }

  else
  {
    if (a3[2] == 1)
    {
      return this;
    }

    v17 = 0;
    while (1)
    {
      v18 = *(v14 + 1);
      if (v18 <= v17)
      {
        break;
      }

      v8 = (v17 + 1);
      if (v18 <= v17 + 1)
      {
        goto LABEL_33;
      }

      v19 = a5[1];
      if (v19 <= v8)
      {
        goto LABEL_34;
      }

      this = re::GeomMeshBuilder::setFaceVertices(v15, *a8, *(*v14 + 4 * v17) + a4, *(*v14 + 4 * v17 + 4) + a4, *(*a5 + 4 * v17 + 4) + a6, *(*a5 + 4 * v17) + a6);
      ++*a8;
      v17 = v8;
      if (v16 == v8)
      {
        return this;
      }
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
  _os_crash();
  __break(1u);
LABEL_33:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v18);
  _os_crash();
  __break(1u);
LABEL_34:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17 + 1, v19);
  this = _os_crash();
  __break(1u);
  return this;
}

float re::anonymous namespace::RoundedPatch::evalTangents(uint64_t a1, float32x4_t *a2, uint64_t a3, float a4, float a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 92);
  if (v9 <= 0.0)
  {
    a5 = 0.0;
  }

  re::internal::UIKitStyleBezierArc::eval(a1, a5);
  v13 = v12;
  v14 = *a1;
  v15 = 1.0;
  if (*a1 >= 1.0)
  {
    v15 = 1.5287;
  }

  else if (v14 > 0.0)
  {
    v15 = (v14 * 0.52866) + 1.0;
  }

  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v36, *(a1 + 96), (v11 / v15) + (*(a1 + 88) - v9));
  re::internal::UIKitStyleBezierArc::evalFirstDerivative(v36, a4);
  v17 = 0uLL;
  if (sqrtf(vaddv_f32(vmul_f32(v16, v16))) > 0.0)
  {
    *v17.f32 = v16;
    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v17 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  }

  v20 = 0;
  v35 = v17;
  *a2 = v17;
  v37 = xmmword_1E30A1010;
  v21 = 0uLL;
  do
  {
    *v21.f32 = vadd_f32(*v21.f32, vmul_n_f32(v36[v20 + 1], *(&v37 + v20)));
    ++v20;
  }

  while (v20 != 4);
  v22 = 0uLL;
  if (sqrtf(vaddv_f32(vmul_f32(*v21.f32, *v21.f32))) > 0.0)
  {
    v23 = vmulq_f32(v21, v21);
    *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v23.f32 = vrsqrte_f32(v24);
    *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
    v22 = vmulq_n_f32(v21, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  }

  v34 = v22;
  re::internal::UIKitStyleBezierArc::evalFirstDerivative(a1, a5);
  v26.i32[0] = 0;
  v27 = 0;
  v28 = 0.0;
  if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) > 0.0)
  {
    v29 = vmulq_f32(v25, v25);
    *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
    *v29.f32 = vrsqrte_f32(v30);
    *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
    v26 = vmulq_n_f32(v25, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
    v27 = v26.i32[1];
    v28 = v26.f32[2];
  }

  v31 = vmulq_f32(v34, v35);
  v31.f32[0] = fmaxf(fminf(v31.f32[2] + vaddv_f32(*v31.f32), 1.0), -1.0);
  v32 = sqrtf(1.0 - (v31.f32[0] * v31.f32[0]));
  *a3 = (v31.f32[0] * v26.f32[0]) - (v32 * v28);
  *(a3 + 4) = (v31.f32[0] * v28) + (v32 * v26.f32[0]);
  *(a3 + 8) = v27;
  re::internal::UIKitStyleBezierArc::eval(v36, a4);
  return v13;
}

float32_t re::anonymous namespace::computeGeometryForCanonicalCorner(re::GeomMesh &,re::GeomAttribute *,re::anonymous namespace::RoundedPatch const&,unsigned int,unsigned int,unsigned int)::$_0::operator()(uint64_t a1, int *a2, uint64_t a3, float32x4_t a4)
{
  v4 = **a1;
  v5 = **(a1 + 16);
  v6 = (**(a1 + 8) + (**(a1 + 24) - 1) * v5);
  v7 = (v5 + v6 - 1);
  v8 = *(a1 + 32);
  v9 = *v8;
  *a2 = *v8;
  a2[1] = v9;
  a2[2] = *v8;
  *a3 = xmmword_1E3047670;
  if (v6 < v7)
  {
    a4 = vsubq_f32(a4, v4);
    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    v12 = vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL);
    v13 = vnegq_f32(a4);
    if (v11 <= v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = 16 * v6 + 16;
    for (i = v6; ; ++i)
    {
      if (v14 == i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_15:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v17 = i + 1;
      if (i + 1 >= v11)
      {
        goto LABEL_15;
      }

      v18 = **a1;
      v19 = vsubq_f32(*(*v10 + v15 - 16), v18);
      v20 = vsubq_f32(*(*v10 + v15), v18);
      v21 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
      v22 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v23 = vmulq_f32(vmlaq_f32(vmulq_f32(v21, v13), v19, v12), vmlaq_f32(vmulq_f32(v22, v13), v20, v12));
      if ((v23.f32[1] + (v23.f32[2] + v23.f32[0])) < 0.0)
      {
        v24 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(v19)), v20, v21);
        if (v24.f32[1] > 0.0)
        {
          break;
        }
      }

      v15 += 16;
      if (v7 == v17)
      {
        return a4.f32[0];
      }
    }

    *a2 = **(a1 + 32);
    a2[1] = i;
    a2[2] = i + 1;
    v25 = vsubq_f32(v19, a4);
    v26 = vsubq_f32(v20, a4);
    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v25.i64[0] = vdivq_f32(vmlaq_f32(vmulq_f32(v27, vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL)), v24).u64[0];
    a4.i64[0] = vdivq_f32(vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v26)), v27, a4), v24).u64[0];
    *a3 = vzip2_s32(*v25.f32, *a4.f32);
    a4.f32[0] = (1.0 - v25.f32[1]) - a4.f32[1];
    *(a3 + 8) = a4.i32[0];
  }

  return a4.f32[0];
}

unint64_t re::anonymous namespace::computeGeometryForInstancedFrontCorners(re::_anonymous_namespace_ *this, re::GeomMesh *a2, re::GeomAttribute *a3, unsigned int a4)
{
  v74 = a3;
  v7 = re::GeomMesh::modifyVertexPositions(this);
  v82 = v8;
  v9 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexTangent");
  v10 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v9);
  v12 = v11;
  v77 = v11;
  v13 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexNormal");
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v13);
  v23 = a2;
  v24 = result;
  v26 = v25;
  v76 = v25;
  if (a2)
  {
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
    v23 = a2;
    v81 = result;
  }

  else
  {
    v81 = 0;
    v27 = -1;
  }

  v78 = 2 * v74;
  v73 = 3 * v74;
  v28 = v82;
  v83 = v7;
  if (a4)
  {
    v29 = 0;
    v30 = ((v74 + -3.0) / a4);
    v79 = a4;
    v75 = v7 + 4;
    do
    {
      if (v30)
      {
        v31 = 0;
        v32 = 0;
        v33 = (v29 * v30);
        result = (v33 + v78);
        v80 = v29 + 1;
        v34 = (v29 + 1) * v30;
        if (v82 >= v33)
        {
          v35 = v82 - v33;
        }

        else
        {
          v35 = 0;
        }

        if (v82 >= result)
        {
          v36 = v82 - result;
        }

        else
        {
          v36 = 0;
        }

        v37 = v7 + 16 * result;
        if (v77 >= v33)
        {
          v38 = v77 - v33;
        }

        else
        {
          v38 = 0;
        }

        v39 = v81 + 4 * v33;
        if (v77 >= result)
        {
          v40 = v77 - result;
        }

        else
        {
          v40 = 0;
        }

        v41 = v76 - v33;
        v42 = v75 + 16 * v33;
        if (v76 < v33)
        {
          v41 = 0;
        }

        v43 = v76 - result;
        if (v76 < result)
        {
          v43 = 0;
        }

        v44 = v73 - 1 + v34;
        v45 = v74 - 1 + v34;
        v46 = v10 + 16 * v33;
        v47 = v24 + 16 * v33;
        do
        {
          if (v35 == v32)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_71:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_72:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_73:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_74:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_75:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_76:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_77:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_78:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_79:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_80:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_81:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_82:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_83:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_84:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_85:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_86:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_87:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_88:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_89:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_90:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_91:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_92:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_93:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_94:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_95:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_96:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_97:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_98:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_99:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_100:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_101:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (v45 >= v28)
          {
            goto LABEL_71;
          }

          v15.i32[0] = *(v42 + v31 - 4);
          *v17.i32 = -*v15.i32;
          v48 = *(v42 + v31);
          v49 = v17;
          *&v49.i32[1] = v48;
          v50 = *(v42 + v31 + 4);
          v49.i32[2] = v50;
          *(v7 + 16 * v45) = v49;
          if (v36 == v32)
          {
            goto LABEL_72;
          }

          v51 = -v48;
          *&v17.i32[1] = v51;
          v17.i32[2] = v50;
          *(v37 + 16 * v32) = v17;
          if (v44 >= v28)
          {
            goto LABEL_73;
          }

          *&v15.i32[1] = v51;
          v15.i32[2] = v50;
          *(v7 + 16 * v44) = v15;
          if (v38 == v32)
          {
            goto LABEL_74;
          }

          if (v45 >= v12)
          {
            goto LABEL_75;
          }

          v15.i64[0] = *(v46 + v31 + 4);
          v17.i32[0] = *(v46 + v31);
          v52 = v17;
          *&v52.i32[1] = -*v15.i32;
          v52.i32[2] = v15.i32[1];
          *(v10 + 16 * v45) = v52;
          if (v40 == v32)
          {
            goto LABEL_76;
          }

          *v17.i32 = -*v17.i32;
          v18 = v17;
          *&v18.i32[1] = -*v15.i32;
          v18.i32[2] = v15.i32[1];
          *(v10 + 16 * result + 16 * v32) = v18;
          if (v44 >= v12)
          {
            goto LABEL_77;
          }

          v16 = vextq_s8(v17, v17, 4uLL);
          v15 = vextq_s8(v16, v15, 0xCuLL);
          *(v10 + 16 * v44) = v15;
          if (v41 == v32)
          {
            goto LABEL_78;
          }

          if (v45 >= v26)
          {
            goto LABEL_79;
          }

          v15.i32[0] = *(v47 + v31);
          v53 = *(v47 + v31 + 4);
          *v17.i32 = -*v15.i32;
          v19 = v17;
          *&v19.i32[1] = v53;
          v54 = *(v47 + v31 + 8);
          v19.i32[2] = v54;
          *(v24 + 16 * v45) = v19;
          if (v43 == v32)
          {
            goto LABEL_80;
          }

          v55 = -v53;
          *&v17.i32[1] = v55;
          v17.i32[2] = v54;
          *(v24 + 16 * result + 16 * v32) = v17;
          if (v44 >= v26)
          {
            goto LABEL_81;
          }

          *&v15.i32[1] = v55;
          v15.i32[2] = v54;
          *(v24 + 16 * v44) = v15;
          if (a2)
          {
            if (v33 + v32 >= v27)
            {
              goto LABEL_82;
            }

            if (v27 <= v45)
            {
              goto LABEL_83;
            }

            v56 = *(v39 + 4 * v32);
            *(v81 + 4 * v45) = v56;
            if (result + v32 >= v27)
            {
              goto LABEL_84;
            }

            *(v81 + 4 * result + 4 * v32) = v56;
            if (v27 <= v44)
            {
              goto LABEL_85;
            }

            *(v81 + 4 * v44) = *(v39 + 4 * v32);
          }

          ++v32;
          --v44;
          --v45;
          v31 += 16;
          v28 = v82;
          v7 = v83;
        }

        while (v30 != v32);
        v23 = a2;
        v57 = v80;
      }

      else
      {
        v57 = v29 + 1;
      }

      v29 = v57;
    }

    while (v57 != v79);
  }

  v58 = v73 - 1;
  v59 = 4 * v74 - 1;
  v60 = v78 - 1;
  v61 = v74 - 1;
  v62 = -3;
  do
  {
    v63 = ((v62 + 4) + -3.0);
    if (v62 == -3)
    {
      v63 = 1;
    }

    if (v61 >= v28)
    {
      goto LABEL_86;
    }

    if (v61 >= v12)
    {
      goto LABEL_87;
    }

    if (v61 >= v26)
    {
      goto LABEL_88;
    }

    v64 = (v60 - v63);
    v65 = v28;
    if (v64 >= v28)
    {
      goto LABEL_89;
    }

    v66 = v83 + 16 * v61;
    LODWORD(v20) = *v66;
    v21.i64[0] = *(v66 + 4);
    v67 = v10 + 16 * v61;
    v19.i32[0] = *v67;
    v18.i64[0] = *(v67 + 4);
    v68 = v24 + 16 * v61;
    v16.i32[0] = *v68;
    v17.i64[0] = *(v68 + 4);
    *v22.i32 = -*&v20;
    *(v83 + 16 * v64) = vextq_s8(vextq_s8(v22, v22, 4uLL), v21, 0xCuLL);
    v28 = v65;
    if (v58 >= v65)
    {
      goto LABEL_90;
    }

    *&v22.i32[1] = -*v21.i32;
    v22.i32[2] = v21.i32[1];
    *(v83 + 16 * v58) = v22;
    v69 = (v59 - v63);
    if (v69 >= v65)
    {
      goto LABEL_91;
    }

    *(&v20 + 1) = -*v21.i32;
    DWORD2(v20) = v21.i32[1];
    *(v83 + 16 * v69) = v20;
    if (v64 >= v12)
    {
      goto LABEL_92;
    }

    v70 = v19;
    *&v70.i32[1] = -*v18.i32;
    v70.i32[2] = v18.i32[1];
    *(v10 + 16 * v64) = v70;
    if (v58 >= v12)
    {
      goto LABEL_93;
    }

    *v19.i32 = -*v19.i32;
    v21 = v19;
    *&v21.i32[1] = -*v18.i32;
    v21.i32[2] = v18.i32[1];
    *(v10 + 16 * v58) = v21;
    if (v69 >= v12)
    {
      goto LABEL_94;
    }

    v18 = vextq_s8(vextq_s8(v19, v19, 4uLL), v18, 0xCuLL);
    *(v10 + 16 * v69) = v18;
    if (v64 >= v26)
    {
      goto LABEL_95;
    }

    *v18.i32 = -*v16.i32;
    v19 = vextq_s8(vextq_s8(v18, v18, 4uLL), v17, 0xCuLL);
    *(v24 + 16 * v64) = v19;
    if (v58 >= v26)
    {
      goto LABEL_96;
    }

    *&v18.i32[1] = -*v17.i32;
    v18.i32[2] = v17.i32[1];
    *(v24 + 16 * v58) = v18;
    if (v69 >= v26)
    {
      goto LABEL_97;
    }

    *&v16.i32[1] = -*v17.i32;
    v16.i32[2] = v17.i32[1];
    *(v24 + 16 * v69) = v16;
    if (v23)
    {
      if (v27 <= v61)
      {
        goto LABEL_98;
      }

      if (v27 <= v64)
      {
        goto LABEL_99;
      }

      v71 = *(v81 + 4 * v61);
      *(v81 + 4 * v64) = v71;
      if (v27 <= v58)
      {
        goto LABEL_100;
      }

      *(v81 + 4 * v58) = v71;
      if (v27 <= v69)
      {
        goto LABEL_101;
      }

      *(v81 + 4 * v69) = *(v81 + 4 * v61);
    }

    --v58;
    --v59;
    --v60;
    --v61;
  }

  while (!__CFADD__(v62++, 1));
  return result;
}

uint64_t re::anonymous namespace::translateCornerVertexPositions(uint64_t result, unsigned int a2, float32x4_t a3, float a4, float a5, float32x4_t a6)
{
  if (a2)
  {
    v6 = 0;
    a6.f32[0] = a3.f32[0] * 0.5;
    v7 = a6;
    v7.f32[1] = a4 * 0.5;
    v8 = v7;
    a3.f32[0] = -(a3.f32[0] * 0.5);
    v9 = a3;
    v9.f32[1] = a4 * 0.5;
    v10 = v9;
    a3.f32[1] = -(a4 * 0.5);
    v11 = a3;
    a6.i32[1] = a3.i32[1];
    v12 = a6;
    do
    {
      if (v6 >= *(result + 8))
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_14:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_15:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_16:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_17:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_18:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_19:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_20:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v8.f32[2] = a5 * 0.5;
      *(*result + 16 * v6) = vaddq_f32(v8, *(*result + 16 * v6));
      if (a2 + v6 >= *(result + 8))
      {
        goto LABEL_14;
      }

      v10.f32[2] = a5 * 0.5;
      *(*result + 16 * a2 + 16 * v6) = vaddq_f32(v10, *(*result + 16 * a2 + 16 * v6));
      if (2 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_15;
      }

      v13 = *result + 32 * a2;
      v11.f32[2] = a5 * 0.5;
      *(v13 + 16 * v6) = vaddq_f32(v11, *(v13 + 16 * v6));
      if (3 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_16;
      }

      v14 = *result + 48 * a2;
      v12.f32[2] = a5 * 0.5;
      *(v14 + 16 * v6) = vaddq_f32(v12, *(v14 + 16 * v6));
      if (4 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_17;
      }

      v15 = *result + 64 * a2;
      a6.f32[2] = -(a5 * 0.5);
      *(v15 + 16 * v6) = vaddq_f32(a6, *(v15 + 16 * v6));
      if (5 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_18;
      }

      v16 = *result + 80 * a2;
      a3.f32[2] = -(a5 * 0.5);
      *(v16 + 16 * v6) = vaddq_f32(a3, *(v16 + 16 * v6));
      if (6 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_19;
      }

      v17 = *result + 96 * a2;
      v9.f32[2] = -(a5 * 0.5);
      *(v17 + 16 * v6) = vaddq_f32(v9, *(v17 + 16 * v6));
      if (7 * a2 + v6 >= *(result + 8))
      {
        goto LABEL_20;
      }

      v18 = *result + 112 * a2;
      v7.f32[2] = -(a5 * 0.5);
      *(v18 + 16 * v6) = vaddq_f32(v7, *(v18 + 16 * v6));
      ++v6;
    }

    while (a2 != v6);
  }

  return result;
}

uint64_t re::anonymous namespace::computeGeometryToStitchTwoRows(uint64_t result, void *a2, unsigned int a3, void *a4, int a5, void *a6, int a7, _DWORD *a8)
{
  if (a3 >= 2)
  {
    v10 = result;
    if (a2)
    {
      v14 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a2);
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = -1;
    }

    v17 = re::GeomMesh::modifyVertexPositions(v10);
    v48 = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName((v10 + 64), "vertexTangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v21 = v10;
    v22 = v20;
    v24 = v23;
    v25 = re::internal::GeomAttributeManager::attributeByName((v21 + 64), "vertexNormal");
    result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
    v27 = 0;
    v28 = 1.0 / a3;
    v29 = *(a4 + 2);
    v30 = a8;
    v31 = *a8;
    v32 = a3 - 1;
    v33 = a5;
    while (1)
    {
      v34 = v27;
      v35 = a4[1];
      if (v35 <= v27)
      {
        goto LABEL_31;
      }

      v36 = *(*a4 + 4 * v27) + v33;
      if (v36 >= v48)
      {
        goto LABEL_32;
      }

      v37 = a6[1];
      if (v37 <= v34)
      {
        goto LABEL_33;
      }

      v38 = (*(*a6 + 4 * v34) + a7);
      if (v38 >= v48)
      {
        goto LABEL_34;
      }

      if (v38 >= v24)
      {
        goto LABEL_35;
      }

      v39 = *(v17 + 16 * v36);
      v40 = *(v17 + 16 * v38);
      v50 = *(v22 + 16 * v38);
      if (v38 >= v26)
      {
        goto LABEL_36;
      }

      v49 = *(result + 16 * v38);
      v41 = 1;
      v42 = v32;
      v43 = v31;
      do
      {
        if (v43 >= v48)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_26:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_27:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v44);
          _os_crash();
          __break(1u);
LABEL_29:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_30:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_31:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v35);
          _os_crash();
          __break(1u);
LABEL_32:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_33:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v37);
          _os_crash();
          __break(1u);
LABEL_34:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_35:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_36:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(v17 + 16 * v43) = vaddq_f32(vmulq_n_f32(v40, v28 * v41), vmulq_n_f32(v39, 1.0 - (v28 * v41)));
        if (v43 >= v24)
        {
          goto LABEL_26;
        }

        *(v22 + 16 * v43) = v50;
        if (v43 >= v26)
        {
          goto LABEL_27;
        }

        *(result + 16 * v43) = v49;
        if (a2)
        {
          v44 = a4[1];
          if (v44 <= v34)
          {
            goto LABEL_28;
          }

          v45 = *(*a4 + 4 * v34) + v33;
          if (v16 <= v45)
          {
            goto LABEL_29;
          }

          if (v16 <= v43)
          {
            goto LABEL_30;
          }

          *(v14 + 4 * v43) = *(v14 + 4 * v45);
        }

        v43 += v29;
        ++v41;
        --v42;
      }

      while (v42);
      ++v31;
      v27 = v34 + 1;
      if (v34 + 1 > (v29 - 1))
      {
        *v30 += v32 * v29;
        return result;
      }
    }
  }

  return result;
}

re *re::anonymous namespace::computeUVsToStitchTwoRows(re *result, re::GeomMesh *a2, void *a3, int a4, void *a5, int a6, unsigned int *a7)
{
  if (a2 >= 2)
  {
    v12 = a2;
    result = re::modifyVertexUVs(result, a2);
    v14 = 0;
    v15 = 1.0 / v12;
    v16 = *(a3 + 2);
    v17 = *a7;
    v18 = v12 - 1;
    while (1)
    {
      v19 = v14;
      v20 = a3[1];
      if (v20 <= v14)
      {
        goto LABEL_14;
      }

      v21 = *(*a3 + 4 * v14) + a4;
      if (v21 >= v13)
      {
        goto LABEL_15;
      }

      v22 = a5[1];
      if (v22 <= v19)
      {
        goto LABEL_16;
      }

      v23 = *(*a5 + 4 * v19) + a6;
      if (v23 >= v13)
      {
        goto LABEL_17;
      }

      v24 = *(result + 8 * v21);
      v25 = *(result + 8 * v23);
      v26 = 1;
      v27 = v17;
      v28 = v18;
      do
      {
        if (v27 >= v13)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v20);
          _os_crash();
          __break(1u);
LABEL_15:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v22);
          _os_crash();
          __break(1u);
LABEL_17:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(result + v27) = vadd_f32(vmul_n_f32(v25, v15 * v26), vmul_n_f32(v24, 1.0 - (v15 * v26)));
        ++v26;
        v27 += v16;
        --v28;
      }

      while (v28);
      ++v17;
      v14 = v19 + 1;
      if (v19 + 1 > (v16 - 1))
      {
        *a7 += v18 * v16;
        return result;
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::normalizeUVs(re::GeomMesh &,re::anonymous namespace::InternalBoxRoundedCornersOptions const&)::$_0::operator()(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 - a2;
  if (a3 > a2)
  {
    v4 = *(result + 8);
    if (v4 > a2)
    {
      v5 = a2;
      v6 = *(*result + 8 * a2);
      if (a2 + 1 >= a3)
      {
        v9 = *(*result + 8 * a2);
      }

      else
      {
        if (~a2 + v4 <= v3 - 2)
        {
          goto LABEL_15;
        }

        v7 = (*result + 8 * a2 + 8);
        v8 = ~a2 + a3;
        v9 = *(*result + 8 * a2);
        do
        {
          v10 = *v7++;
          v6 = vbsl_s8(vcgt_f32(v10, v6), v6, v10);
          v9 = vbsl_s8(vcgt_f32(v9, v10), v9, v10);
          --v8;
        }

        while (v8);
      }

      v11 = vsub_f32(v9, v6);
      __asm { FMOV            V3.2S, #1.0 }

      v17 = vbsl_s8(vcgtz_f32(v11), v11, _D3);
      while (v5 < *(result + 8))
      {
        *(*result + 8 * v5) = vdiv_f32(vsub_f32(*(*result + 8 * v5), v6), v17);
        ++v5;
        if (!--v3)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::computeBestFitPlane(float32x4_t *a1, unint64_t a2, double *a3, float32x2_t *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = &a1->i32[1];
    v6 = 0uLL;
    v7 = 0.0;
    v8 = a2;
    do
    {
      v7 = v7 + v5[-1].f32[1];
      v9 = *v5;
      v5 += 2;
      v6 = vaddq_f64(v6, vcvtq_f64_f32(v9));
      --v8;
    }

    while (v8);
    v10 = 1.0 / a2;
  }

  else
  {
    v7 = 0.0;
    v10 = 0.0;
    v6 = 0uLL;
  }

  v11 = vdupq_lane_s64(*&v6.f64[0], 0);
  v11.f64[0] = v7;
  v13 = vmulq_n_f64(v11, v10);
  *v13.f32 = vcvt_f32_f64(v13);
  v12 = vmuld_lane_f64(v10, v6, 1);
  v13.f32[2] = v12;
  *a3 = v13;
  memset(v24, 0, sizeof(v24));
  v25 = 0uLL;
  v26 = 0.0;
  if (a2)
  {
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *a1++;
      v18 = vsubq_f32(v17, v13);
      v14 = vaddq_f64(v14, vcvtq_f64_f32(vmul_lane_f32(*v18.f32, *v18.f32, 1)));
      *(&v24[1] + 8) = v14;
      v15 = vaddq_f64(v15, vcvtq_f64_f32(vmul_laneq_f32(*v18.f32, v18, 2)));
      v25 = v15;
      v19 = vmulq_f32(v18, v18);
      v20.i32[0] = vextq_s8(v19, v19, 8uLL).u32[0];
      v20.i32[1] = v19.i32[0];
      v16 = vaddq_f64(v16, vcvtq_f64_f32(v20));
      v24[0].f64[0] = v16.f64[1];
      v26 = v16.f64[0];
      --a2;
    }

    while (a2);
  }

  if (result)
  {
    *a4 = vcvt_f32_f64(v24[0]);
    v22 = v24[1].f64[0];
    a4[1].f32[0] = v22;
  }

  else
  {
    *a4 = 0x3F80000000000000;
    a4[1] = 0;
  }

  return result;
}

uint64_t re::anonymous namespace::computeEigenDecompositionOfCovarianceMatrix(re::_anonymous_namespace_ *this, double *a2, double *a3)
{
  v3 = dsyev_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v3);
  dsyev_NEWLAPACK();
  return 0;
}

void re::computeConvexHull2d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  collection_u = geom_create_collection_u();
  geom_convex_hull_2f();
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v5 = geom_collection_data_u();
  v6 = geom_collection_size_u();
  re::DynamicArray<float>::copy(a3, 0, v5, v6);

  os_release(collection_u);
}

void *re::computeSignedAreaOf2DPolygon(void *result, uint64_t a2)
{
  v2 = result[1];
  v3 = 0.0;
  if (v2 >= 3)
  {
    v4 = (v2 - 1);
    if (v2 >= v2 - 1)
    {
      v5 = v2 - 1;
    }

    else
    {
      v5 = result[1];
    }

    v6 = v4 - 1;
    if (v5 >= v4 - 1)
    {
      v5 = v4 - 1;
    }

    if (v2 != v5)
    {
      v7 = (*result + 8);
      while (v2 - 1 > v6)
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v11 = *v7;
        v10 = v7[1];
        v7 += 2;
        *&v3 = *&v3 + ((v8 * v10) - (v9 * v11));
        if (!--v4)
        {
          return result;
        }
      }

      re::internal::assertLog(6, a2, v3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, result[1], v2);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 10) + 4 * a2);
  return (v2 >> 28) & 3 | (4 * (v2 & 0xFFFFFFF));
}

uint64_t re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(re::GeomConnectivityManifold *this, int a2, int a3)
{
  v3 = (a3 + 4 * a2);
  if (*(this + 13) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 15) + 4 * v3);
}

uint64_t re::GeomConnectivityManifold::faceVertexDualHalfEdge(re::GeomConnectivityManifold *this, int a2, int a3)
{
  v4 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, a2, a3);
  if (*(this + 8) <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 4 * v4);
}

uint64_t re::GeomConnectivityManifold::halfEdgePreviousDual(re::GeomConnectivityManifold *a1, unsigned int a2, unsigned int *a3)
{
  if (*(a1 + 3) <= (a2 & 0xFFFFFFF))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  if (*(*(a1 + 5) + 16 * (a2 & 0xFFFFFFF) + 12) == -1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  v6 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(a1, a2 & 0xFFFFFFF, (v5 + ((a2 >> 28) & 3) - 1) % v5);
  *a3 = v6;
  if (*(a1 + 8) <= v6)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 10) + 4 * v6);
}

uint64_t re::GeomConnectivityManifold::halfEdgeStartVertex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) <= (a2 & 0xFFFFFFF))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 16 * (a2 & 0xFFFFFFF) + 4 * ((a2 >> 28) & 3));
}

uint64_t re::GeomConnectivityManifold::halfEdgeEndVertex(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) <= (a2 & 0xFFFFFFF))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = ((a2 >> 28) & 3) + 1;
  v3 = *(a1 + 40) + 16 * (a2 & 0xFFFFFFF);
  if (*(v3 + 12) == -1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (v2 < v4)
  {
    v4 = 0;
  }

  return *(v3 + 4 * (v2 - v4));
}

uint64_t re::GeomConnectivityManifold::halfEdgeNextIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(*(this + 10) + 4 * a2);
  v4 = v3 & 0xFFFFFFF;
  if (*(this + 3) <= v4)
  {
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v5 = ((v3 >> 28) & 3) + 1;
  if (*(*(this + 5) + 16 * v4 + 12) == -1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (v5 < v6)
  {
    v6 = 0;
  }

  LODWORD(result) = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v4, v5 - v6);
  if (*(this + 8) <= result)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(*(this + 10) + 4 * result);
  if ((v8 & 0x40000000) != 0)
  {
    return result;
  }

  return re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v8 & 0xFFFFFFF, (v8 >> 28) & 3);
}

uint64_t re::GeomConnectivityManifold::halfEdgePreviousIndex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(*(this + 10) + 4 * a2);
  v4 = v3 & 0xFFFFFFF;
  if (*(this + 3) <= v4)
  {
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v5 = (v3 >> 28) & 3;
  if (*(*(this + 5) + 16 * v4 + 12) == -1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  LODWORD(result) = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v4, (v6 + v5 - 1) % v6);
  if (*(this + 8) <= result)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(*(this + 10) + 4 * result);
  if ((v8 & 0x40000000) != 0)
  {
    return result;
  }

  return re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v8 & 0xFFFFFFF, (v8 >> 28) & 3);
}

uint64_t re::GeomConnectivityManifold::halfEdgeDualIndex(re::GeomConnectivityManifold *this, uint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(*(this + 10) + 4 * a2);
  if ((v2 & 0x40000000) == 0)
  {
    v3 = (v2 >> 28) & 3 | (4 * (v2 & 0xFFFFFFF));
    if (*(this + 13) > v3)
    {
      return *(*(this + 15) + 4 * v3);
    }

LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2;
}

uint64_t re::GeomConnectivityManifold::edgeVertices(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 28) <= a2)
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

  v4 = *(*(this + 30) + 4 * a2);
  if (*(this + 8) <= v4)
  {
    goto LABEL_5;
  }

  v6 = *(*(this + 10) + 4 * v4);
  *a3 = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v6);
  result = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v6);
  a3[1] = result;
  return result;
}

uint64_t re::GeomConnectivityManifold::fetchVertexOneRing(re::GeomConnectivityManifold *a1, unsigned int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  if (*(a1 + 18) <= a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*(a1 + 20) + 4 * a2);
  if (*(a1 + 8) <= v4)
  {
    goto LABEL_14;
  }

  v6 = *(*(a1 + 10) + 4 * v4);
  if ((v6 & 0x80000000) != 0)
  {
    if ((v6 & 0x40000000) != 0)
    {
      while (1)
      {
        LODWORD(v11) = re::GeomConnectivityManifold::halfEdgeEndVertex(a1, v6);
        re::DynamicArray<int>::add(a3, &v11);
        v10 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v6, &v11);
        if ((v10 & 0x80000000) == 0)
        {
          break;
        }

        v6 = v10;
        if ((v10 & 0x40000000) != 0)
        {
          LODWORD(v11) = re::GeomConnectivityManifold::halfEdgeStartVertex(a1, v10);
          re::DynamicArray<int>::add(a3, &v11);
          return *(a3 + 16);
        }
      }
    }

    else
    {
      v8 = v6;
      do
      {
        if ((v8 & 0x80000000) == 0)
        {
          break;
        }

        v9 = v8;
        LODWORD(v11) = re::GeomConnectivityManifold::halfEdgeEndVertex(a1, v8);
        re::DynamicArray<int>::add(a3, &v11);
        v8 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v9, &v11);
      }

      while (v6 != v8);
    }
  }

  return *(a3 + 16);
}

uint64_t re::GeomConnectivityManifold::fetchVertexIncidentEdges(re::GeomConnectivityManifold *a1, unsigned int a2, _anonymous_namespace_ *this)
{
  v27 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  v4 = a2;
  v5 = *(a1 + 18);
  if (v5 <= a2)
  {
LABEL_15:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(*(a1 + 20) + 4 * a2);
  v5 = v12;
  v4 = *(a1 + 8);
  if (v4 <= v12)
  {
LABEL_16:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1 + 10);
  v4 = *(v8 + 4 * v12);
  if ((v4 & 0x40000000) == 0)
  {
    v5 = *(v8 + 4 * v12);
    while (1)
    {
      v3 = v12;
      v9 = *(a1 + 23);
      if (v9 <= v12)
      {
        break;
      }

      re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * v12));
      v5 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v5, &v12);
      if (v4 == v5)
      {
        return *(this + 4);
      }
    }

    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(a1 + 23);
  if (v3 <= v12)
  {
    goto LABEL_17;
  }

  re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * v12));
  do
  {
    v10 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v4, &v12);
    v5 = v12;
    v3 = *(a1 + 23);
    if (v3 <= v12)
    {
      goto LABEL_14;
    }

    v4 = v10;
    re::DynamicArray<int>::add(this, (*(a1 + 25) + 4 * v12));
  }

  while ((v4 & 0x40000000) == 0);
  return *(this + 4);
}

uint64_t re::GeomConnectivityManifold::fetchVertexIncidentFaces(re::GeomConnectivityManifold *a1, unsigned int a2, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  ++*(this + 6);
  if (*(a1 + 18) <= a2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

  v4 = *(*(a1 + 20) + 4 * a2);
  if (*(a1 + 8) <= v4)
  {
    goto LABEL_10;
  }

  v6 = *(*(a1 + 10) + 4 * v4);
  if ((v6 & 0x40000000) != 0)
  {
    do
    {
      LODWORD(v9) = v6 & 0xFFFFFFF;
      re::DynamicArray<int>::add(this, &v9);
      v6 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v6, &v9);
    }

    while ((v6 & 0x40000000) == 0);
  }

  else
  {
    v7 = v6;
    do
    {
      LODWORD(v9) = v7 & 0xFFFFFFF;
      re::DynamicArray<int>::add(this, &v9);
      v7 = re::GeomConnectivityManifold::halfEdgePreviousDual(a1, v7, &v9);
    }

    while (v6 != v7);
  }

  return *(this + 4);
}

uint64_t re::GeomConnectivityManifold::fetchFaceIncidentFaces(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 4 * re::GeomConnectivityManifold::faceIncidentEdges(this, a2, v11);
  do
  {
    if (re::GeomConnectivityManifold::edgeIncidentFaces(this, v11[v6 / 4], v10) == 2)
    {
      a3[v7++] = v10[v10[0] == a2];
    }

    v6 += 4;
  }

  while (v8 != v6);
  return v7;
}

uint64_t re::GeomConnectivityManifold::faceIncidentEdges(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 3) <= a2)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = 0;
  if (*(*(this + 5) + 16 * a2 + 12) == -1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  do
  {
    v8 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, a2, v6);
    if (*(this + 23) <= v8)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_9;
    }

    a3[v6++] = *(*(this + 25) + 4 * v8);
  }

  while (v7 != v6);
  return v7;
}

uint64_t re::GeomConnectivityManifold::edgeIncidentFaces(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 28) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(this + 30) + 4 * a2);
  if (*(this + 8) <= v3)
  {
    goto LABEL_8;
  }

  v5 = *(*(this + 10) + 4 * v3);
  if ((v5 & 0x40000000) != 0)
  {
    result = 1;
  }

  else
  {
    v6 = v5 & 0xFFFFFFF;
    v5 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, v5 & 0xFFFFFFF, (v5 >> 28) & 3);
    a3[1] = v6;
    result = 2;
  }

  *a3 = v5 & 0xFFFFFFF;
  return result;
}

BOOL re::GeomConnectivityManifold::isBoundaryFace(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(*(this + 5) + 16 * a2 + 12) == -1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if ((re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, a2, 0) & 0x40000000) != 0)
  {
    return 1;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(this, a2, v5);
    v5 = v6 + 1;
  }

  while ((v7 & 0x40000000) == 0);
  return v6 < v4;
}

BOOL re::GeomConnectivityManifold::isCollapseEdgeSafe(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 28);
  if (v5 <= a2)
  {
    *v83 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    *&v79[18] = 2048;
    *&v79[20] = v4;
    v80 = 2048;
    *v81 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_109;
  }

  v4 = *(*(this + 30) + 4 * a2);
  v5 = *(this + 8);
  if (v5 <= v4)
  {
LABEL_109:
    *v83 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    *&v79[18] = 2048;
    *&v79[20] = v4;
    v80 = 2048;
    *v81 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    *v83 = 0;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    v8 = v9;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v79 = 136315906;
    *&v79[4] = "operator[]";
    *&v79[12] = 1024;
    *&v79[14] = 797;
    *&v79[18] = 2048;
    *&v79[20] = v8;
    v80 = 2048;
    *v81 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_111:
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    v84 = 1024;
    v85 = 789;
    v86 = 2048;
    v87 = v5;
    v88 = 2048;
    v89 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  if ((*(*(this + 10) + 4 * v4) & 0x80000000) == 0)
  {
    return 0;
  }

  re::GeomConnectivityManifold::edgeVertices(this, a2, v90);
  v5 = v90[0];
  v8 = v90[1];
  *v82 = -1;
  v2 = re::GeomConnectivityManifold::edgeIncidentFaces(this, a2, v82);
  if (re::GeomConnectivityManifold::isBoundaryVertex(this, v5))
  {
    if (re::GeomConnectivityManifold::isBoundaryVertex(this, v8) && v2 == 2)
    {
      return 0;
    }
  }

  v9 = v82[0];
  v3 = *(this + 3);
  if (v3 <= v82[0])
  {
    goto LABEL_110;
  }

  v10 = *(this + 5);
  if (*(v10 + 16 * v82[0] + 12) != -1)
  {
    return 0;
  }

  v13 = 0;
  *v90 = *(v10 + 16 * v82[0]);
  while (1)
  {
    v14 = v90[v13];
    v15 = v14 == v5 || v14 == v8;
    if (!v15)
    {
      break;
    }

    if (++v13 == 3)
    {
      v14 = -1;
      break;
    }
  }

  if (v2 == 2)
  {
    v16 = v82[1];
    if (v3 <= v82[1])
    {
LABEL_115:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v61 = v16;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 797;
      *&v79[18] = 2048;
      *&v79[20] = v61;
      v80 = 2048;
      *v81 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_116:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v62 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v62;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_117;
    }

    if (*(v10 + 16 * v82[1] + 12) != -1)
    {
      return 0;
    }

    v17 = 0;
    *v90 = *(v10 + 16 * v82[1]);
    while (1)
    {
      v3 = v90[v17];
      if (v3 != v5 && v3 != v8)
      {
        break;
      }

      if (++v17 == 3)
      {
        v3 = 0xFFFFFFFFLL;
        break;
      }
    }

    v19 = 4 * v82[0];
    v2 = *(this + 13);
    if (v2 <= v19)
    {
      goto LABEL_116;
    }

    v20 = *(this + 15);
    v21 = *(v20 + 4 * v19);
    v22 = *(this + 8);
    if (v22 <= v21)
    {
LABEL_117:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v63 = v22;
      v64 = v21;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v64;
      v80 = 2048;
      *v81 = v63;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_118;
    }

    v23 = v19 | 1;
    if (v2 <= v23)
    {
LABEL_118:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v65 = v23;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v65;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_119;
    }

    v24 = *(v20 + 4 * v23);
    if (v22 <= v24)
    {
LABEL_119:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v66 = v22;
      v67 = v24;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v67;
      v80 = 2048;
      *v81 = v66;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_120;
    }

    v25 = v19 | 2;
    if (v2 <= v25)
    {
LABEL_120:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v68 = v25;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v68;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_121;
    }

    v26 = *(v20 + 4 * v25);
    if (v22 <= v26)
    {
LABEL_121:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v69 = v22;
      v70 = v26;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v70;
      v80 = 2048;
      *v81 = v69;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_122:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v71 = v28;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v71;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_123;
    }

    v27 = *(this + 10);
    if (((*(v27 + 4 * v24) >> 30) & 1) + ((*(v27 + 4 * v21) >> 30) & 1) + ((*(v27 + 4 * v26) >> 30) & 1) == 2)
    {
      return 0;
    }

    v28 = 4 * v82[1];
    if (v2 <= v28)
    {
      goto LABEL_122;
    }

    v29 = *(v20 + 4 * v28);
    if (v22 <= v29)
    {
LABEL_123:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v72 = v22;
      v73 = v29;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v73;
      v80 = 2048;
      *v81 = v72;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_124;
    }

    v30 = v28 | 1;
    if (v2 <= v30)
    {
LABEL_124:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v74 = v30;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v74;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_125;
    }

    v31 = *(v20 + 4 * v30);
    if (v22 <= v31)
    {
LABEL_125:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v75 = v22;
      v76 = v31;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v76;
      v80 = 2048;
      *v81 = v75;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_126;
    }

    v32 = v28 | 2;
    if (v2 <= v32)
    {
LABEL_126:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v77 = v32;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v77;
      v80 = 2048;
      *v81 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_127:
      *v83 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      *v90 = 0u;
      v91 = 0u;
      v78 = v22;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      *&v79[12] = 1024;
      *&v79[14] = 789;
      *&v79[18] = 2048;
      *&v79[20] = v2;
      v80 = 2048;
      *v81 = v78;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v2 = *(v20 + 4 * v32);
    if (v22 <= v2)
    {
      goto LABEL_127;
    }

    if (((*(v27 + 4 * v31) >> 30) & 1) + ((*(v27 + 4 * v29) >> 30) & 1) + ((*(v27 + 4 * v2) >> 30) & 1) == 2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  *&v81[2] = 0;
  *v79 = 0;
  *&v79[8] = 0;
  v33 = *this;
  v34 = *(this + 37);
  if ((v33 & 0x3F) != 0)
  {
    v35 = (v33 >> 6) + 1;
  }

  else
  {
    v35 = v33 >> 6;
  }

  *(this + 37) = v33;
  *v90 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize((this + 248), v35, v90);
  if (v33 && v34 > v33)
  {
    v36 = 63;
    v37 = *(this + 37) & 0x3FLL;
    if (v37)
    {
      v15 = v37 == 63;
      v38 = -1 << v37;
      if (!v15)
      {
        v36 = ~v38;
      }
    }

    if (*(this + 264))
    {
      v39 = this + 272;
    }

    else
    {
      v39 = *(this + 35);
    }

    *&v39[8 * *(this + 32) - 8] &= v36;
  }

  v40 = *(this + 66);
  if (v40)
  {
    v41 = this + 272;
  }

  else
  {
    v41 = *(this + 35);
  }

  v42 = *(this + 32);
  while (1)
  {
    v43 = this + 272;
    if ((v40 & 1) == 0)
    {
      v43 = *(this + 35);
    }

    if (v41 == &v43[8 * v42])
    {
      break;
    }

    *v41 = 0;
    v41 += 8;
    v40 = *(this + 66);
  }

  *&v79[16] = 0;
  *&v79[24] = 1;
  v2 = *(this + 18);
  if (v2 <= v5)
  {
    goto LABEL_111;
  }

  v5 = *(*(this + 20) + 4 * v5);
  v2 = *(this + 8);
  if (v2 <= v5)
  {
LABEL_112:
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    v84 = 1024;
    v85 = 789;
    v86 = 2048;
    v87 = v5;
    v88 = 2048;
    v89 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    v84 = 1024;
    v85 = 789;
    v86 = 2048;
    v87 = v8;
    v88 = 2048;
    v89 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_114;
  }

  v44 = *(*(this + 10) + 4 * v5);
  if ((v44 & 0x40000000) != 0)
  {
    do
    {
      v47 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v44);
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, v47);
      v48 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v44, v90);
      v44 = v48;
    }

    while ((v48 & 0x40000000) == 0);
    started = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v48);
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, started);
  }

  else
  {
    v45 = v44;
    do
    {
      v2 = v45;
      v46 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v45);
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 248, v46);
      v45 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v2, v90);
    }

    while (v44 != v45);
  }

  v5 = *(this + 18);
  if (v5 <= v8)
  {
    goto LABEL_113;
  }

  v8 = *(*(this + 20) + 4 * v8);
  v5 = *(this + 8);
  if (v5 <= v8)
  {
LABEL_114:
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    *v90 = 0u;
    v91 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v83 = 136315906;
    *&v83[4] = "operator[]";
    v84 = 1024;
    v85 = 789;
    v86 = 2048;
    v87 = v8;
    v88 = 2048;
    v89 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v50 = *(*(this + 10) + 4 * v8);
  *v83 = -1;
  if ((v50 & 0x40000000) != 0)
  {
    while (1)
    {
      *v83 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v50);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v83))
      {
        re::DynamicArray<int>::add(v79, v83);
      }

      v53 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v50, v90);
      if ((v53 & 0x40000000) != 0)
      {
        break;
      }

      v50 = v53;
    }

    *v83 = re::GeomConnectivityManifold::halfEdgeStartVertex(this, v53);
    if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v83))
    {
      re::DynamicArray<int>::add(v79, v83);
    }
  }

  else
  {
    v51 = v50;
    do
    {
      v52 = v51;
      *v83 = re::GeomConnectivityManifold::halfEdgeEndVertex(this, v51);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 248, *v83))
      {
        re::DynamicArray<int>::add(v79, v83);
      }

      v51 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v52, v90);
    }

    while (v50 != v51);
  }

  if (*&v79[16])
  {
    v54 = 4 * *&v79[16] - 4;
    v55 = *&v81[2];
    do
    {
      v57 = *v55++;
      v56 = v57;
      v11 = v57 == v14 || v56 == v3;
      v59 = !v11 || v54 == 0;
      v54 -= 4;
    }

    while (!v59);
  }

  else
  {
    v11 = 1;
  }

  if (*v79)
  {
    v60 = *&v81[2] == 0;
  }

  else
  {
    v60 = 1;
  }

  if (!v60)
  {
    (*(**v79 + 40))();
  }

  return v11;
}

uint64_t re::GeomConnectivityManifold::glueHalfEdges(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = *(this + 8);
  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  if ((*(*(this + 10) + 4 * a2) & 0x40000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v8 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, a2);
    if (*(this + 13) <= v8)
    {
LABEL_50:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

    v9 = *(*(this + 15) + 4 * v8);
    v4 = *(this + 8);
  }

  if (v4 <= a3)
  {
    goto LABEL_47;
  }

  if ((*(*(this + 10) + 4 * a3) & 0x40000000) != 0)
  {
    if (v9 != -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v10 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, a3);
    if (*(this + 13) <= v10)
    {
LABEL_51:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

    v11 = *(*(this + 15) + 4 * v10);
    if (v9 != -1 && v11 != -1)
    {
      v12 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v11);
      if (*(this + 13) <= v12)
      {
LABEL_56:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_57;
      }

      *(*(this + 15) + 4 * v12) = v9;
      v13 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v9);
      if (*(this + 13) <= v13)
      {
LABEL_57:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_58;
      }

      *(*(this + 15) + 4 * v13) = v11;
      v14 = *(this + 23);
      if (v14 <= a3)
      {
LABEL_58:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_59;
      }

      if (v14 <= v3)
      {
LABEL_59:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

      v15 = *(this + 25);
      v16 = *(v15 + 4 * v3);
      v17 = *(this + 28);
      if (v17 <= v16)
      {
LABEL_60:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_61;
      }

      v18 = *(v15 + 4 * a3);
      v19 = *(this + 30);
      *(v19 + 4 * v16) = a2;
      if (v17 <= v18)
      {
LABEL_61:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_62;
      }

      *(v19 + 4 * v18) = v9;
      if (v14 <= v9)
      {
LABEL_62:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_63;
      }

      *(v15 + 4 * v9) = v18;
      if (v14 <= v11)
      {
LABEL_63:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_64;
      }

      *(v15 + 4 * v11) = v18;
LABEL_32:
      v26 = 1;
      goto LABEL_33;
    }

    if (v9 != -1)
    {
LABEL_27:
      v27 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v9);
      if (*(this + 13) <= v27)
      {
LABEL_52:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_53;
      }

      *(*(this + 15) + 4 * v27) = v9;
      if (*(this + 23) <= v3)
      {
LABEL_53:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_54;
      }

      v28 = *(*(this + 25) + 4 * v3);
      if (*(this + 28) <= v28)
      {
LABEL_54:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_55;
      }

      *(*(this + 30) + 4 * v28) = v9;
      if (*(this + 8) <= v9)
      {
LABEL_55:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_56;
      }

      *(*(this + 10) + 4 * v9) |= 0x40000000u;
      goto LABEL_32;
    }

    if (v11 != -1)
    {
      v32 = re::GeomConnectivityManifold::e2eIndexFromHalfEdgeIndex(this, v11);
      if (*(this + 13) <= v32)
      {
LABEL_68:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_69;
      }

      *(*(this + 15) + 4 * v32) = v11;
      if (*(this + 23) <= a3)
      {
LABEL_69:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_70;
      }

      v33 = *(*(this + 25) + 4 * a3);
      if (*(this + 28) <= v33)
      {
LABEL_70:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_71:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *(*(this + 30) + 4 * v33) = v11;
      if (*(this + 8) <= v11)
      {
        goto LABEL_71;
      }

      v26 = 0;
      *(*(this + 10) + 4 * v11) |= 0x40000000u;
      goto LABEL_33;
    }
  }

  v20 = *(this + 23);
  if (v20 <= v3)
  {
LABEL_64:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v21 = *(this + 25);
  v22 = *(v21 + 4 * v3);
  v23 = *(this + 28);
  if (v23 <= v22)
  {
LABEL_65:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v24 = *(this + 30);
  *(v24 + 4 * v22) = a2;
  if (v20 <= a3)
  {
LABEL_66:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_67;
  }

  v25 = *(v21 + 4 * a3);
  if (v23 <= v25)
  {
LABEL_67:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  v26 = 0;
  *(v24 + 4 * v25) = a2;
LABEL_33:
  if (*(this + 8) <= a3)
  {
LABEL_48:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  result = re::GeomConnectivityManifold::halfEdgeStartVertex(this, *(*(this + 10) + 4 * a3));
  if (*(this + 18) <= result)
  {
LABEL_49:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v30 = *(this + 20);
  v31 = v26 ^ 1;
  if (*(v30 + 4 * result) != a3)
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    *(v30 + 4 * result) = v9;
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::collapseEdgeWithoutSafetyCheck(re::GeomConnectivityManifold *this, unsigned int a2, unsigned int *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(this + 28) <= a2)
  {
    goto LABEL_92;
  }

  v6 = *(this + 30);
  v7 = *(v6 + 4 * a2);
  Index = re::GeomConnectivityManifold::halfEdgeNextIndex(this, *(v6 + 4 * a2));
  v9 = re::GeomConnectivityManifold::halfEdgePreviousIndex(this, v7);
  if (*(this + 8) <= v7)
  {
LABEL_93:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_94:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_95:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

  v57 = v9;
  v59 = Index;
  v10 = *(*(this + 10) + 4 * v7);
  v11 = v10 & 0xFFFFFFF;
  v12 = (v10 >> 28) & 3;
  v60 = v10;
  if ((v10 & 0x40000000) != 0)
  {
    v16 = 0;
    v15 = -1;
    v58 = -1;
    v14 = -1;
  }

  else
  {
    v13 = re::GeomConnectivityManifold::faceVertexDualHalfEdgeIndex(this, v10 & 0xFFFFFFF, (v10 >> 28) & 3);
    v14 = re::GeomConnectivityManifold::halfEdgeNextIndex(this, v13);
    v15 = re::GeomConnectivityManifold::halfEdgePreviousIndex(this, v13);
    v58 = v13;
    if (*(this + 8) <= v13)
    {
LABEL_105:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_106;
    }

    v16 = 4 * (*(*(this + 10) + 4 * v13) & 0xFFFFFFF);
  }

  if (*(this + 3) <= v11)
  {
    goto LABEL_94;
  }

  v61 = *(*(this + 5) + 16 * v11);
  v17 = *(&v61 | (4 * v12));
  v18 = v12 + 1;
  if (HIDWORD(v61) == -1)
  {
    v19 = 3;
  }

  else
  {
    v19 = 4;
  }

  if (v18 < v19)
  {
    v19 = 0;
  }

  if (*(this + 18) <= v17)
  {
    goto LABEL_95;
  }

  v52 = v15;
  v53 = v14;
  v51 = v16;
  v20 = *(&v61 + v18 - v19);
  v21 = *(*(this + 20) + 4 * v17);
  isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(this, v17);
  v23 = re::GeomConnectivityManifold::isBoundaryVertex(this, v20);
  v55 = a3;
  if ((v60 & 0x40000000) == 0)
  {
    if ((isBoundaryVertex & v23) == 1)
    {
      v24 = *(this + 18);
      if (v24 <= v17)
      {
LABEL_112:
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_113;
      }

      v56 = v21;
      v25 = *(this + 20);
      if (*(v25 + 4 * v17) != v53)
      {
        goto LABEL_39;
      }

      if (v24 <= v20)
      {
LABEL_114:
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_115;
      }

      v56 = *(v25 + 4 * v20);
      if (v56 != v59)
      {
        goto LABEL_39;
      }

      if (*(this + 8) <= v57)
      {
LABEL_116:
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_117:
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if ((*(*(this + 10) + 4 * v57) & 0x40000000) == 0)
      {
LABEL_37:
        v26 = this;
        v27 = v57;
        goto LABEL_38;
      }
    }

    else
    {
      if (!isBoundaryVertex)
      {
        if (v23)
        {
          if (*(this + 8) <= v59)
          {
LABEL_115:
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v61 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_116;
          }

          if ((*(*(this + 10) + 4 * v59) & 0x40000000) == 0)
          {
            if (*(this + 18) <= v20)
            {
              goto LABEL_117;
            }

            v56 = *(*(this + 20) + 4 * v20);
            goto LABEL_39;
          }
        }

        goto LABEL_37;
      }

      v56 = v21;
      if (*(this + 18) <= v17)
      {
LABEL_113:
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_114;
      }

      if (*(*(this + 20) + 4 * v17) != v53)
      {
        goto LABEL_39;
      }
    }

    v26 = this;
    v27 = v52;
LABEL_38:
    v56 = re::GeomConnectivityManifold::halfEdgeDualIndex(v26, v27);
LABEL_39:
    if (*(this + 8) <= v58)
    {
LABEL_107:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_108;
    }

    v28 = *(*(this + 10) + 4 * v58) & 0xFFFFFFF;
    goto LABEL_41;
  }

  if (*(this + 18) <= v20)
  {
LABEL_106:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_107;
  }

  if (*(*(this + 20) + 4 * v20) == v59)
  {
    v56 = re::GeomConnectivityManifold::halfEdgeDualIndex(this, v57);
  }

  else
  {
    v56 = *(*(this + 20) + 4 * v20);
  }

  v28 = -1;
LABEL_41:
  if (*(this + 18) <= v20)
  {
LABEL_96:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  v29 = *(*(this + 20) + 4 * v20);
  if (*(this + 8) <= v29)
  {
LABEL_97:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_99;
  }

  v54 = v3;
  v30 = *(this + 10);
  v31 = *(v30 + 4 * v29);
  if ((v31 & 0x40000000) == 0)
  {
    v32 = *(v30 + 4 * v29);
    while (1)
    {
      v33 = v32 & 0xFFFFFFF;
      v34 = v33 == v11 || v33 == v28;
      if (!v34)
      {
        if (*(this + 3) <= v33)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_91:
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_92:
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_93;
        }

        v35 = *(this + 5) + 16 * v33;
        v61 = *v35;
        if (HIDWORD(v61) == -1)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        v37 = (v32 >> 28) & 3;
        if (v37 < v36)
        {
          LOBYTE(v36) = 0;
        }

        v34 = HIDWORD(v61) == -1;
        *(&v61 | (4 * (v37 - v36))) = v17;
        v38 = DWORD2(v61);
        v39 = HIDWORD(v61);
        if (v34)
        {
          v39 = -1;
        }

        *v35 = v61;
        *(v35 + 8) = v38;
        *(v35 + 12) = v39;
      }

      v32 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v32, &v61);
      if (v31 == v32)
      {
        goto LABEL_76;
      }
    }
  }

  do
  {
    v40 = v31 & 0xFFFFFFF;
    if (v40 != v11 && v40 != v28)
    {
      if (*(this + 3) <= v40)
      {
        goto LABEL_91;
      }

      v42 = *(this + 5) + 16 * v40;
      v61 = *v42;
      if (HIDWORD(v61) == -1)
      {
        v43 = 3;
      }

      else
      {
        v43 = 4;
      }

      v44 = (v31 >> 28) & 3;
      if (v44 < v43)
      {
        LOBYTE(v43) = 0;
      }

      v34 = HIDWORD(v61) == -1;
      *(&v61 | (4 * (v44 - v43))) = v17;
      v45 = DWORD2(v61);
      v46 = HIDWORD(v61);
      if (v34)
      {
        v46 = -1;
      }

      *v42 = v61;
      *(v42 + 8) = v45;
      *(v42 + 12) = v46;
    }

    v31 = re::GeomConnectivityManifold::halfEdgePreviousDual(this, v31, &v61);
  }

  while ((v31 & 0x40000000) == 0);
LABEL_76:
  if (*(this + 8) <= v7)
  {
    goto LABEL_98;
  }

  *(*(this + 10) + 4 * v7) &= ~0x80000000;
  if (*(this + 8) <= v59)
  {
LABEL_99:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  *(*(this + 10) + 4 * v59) &= ~0x80000000;
  if (*(this + 8) <= v57)
  {
LABEL_100:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  *(*(this + 10) + 4 * v57) &= ~0x80000000;
  result = re::GeomConnectivityManifold::glueHalfEdges(this, v59, v57);
  v48 = (4 * v11);
  if (*(this + 13) <= v48)
  {
LABEL_101:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_102:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_103;
  }

  *(*(this + 15) + 4 * v48) = v7;
  if ((v60 & 0x40000000) == 0)
  {
    if (*(this + 8) <= v58)
    {
LABEL_108:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_109;
    }

    *(*(this + 10) + 4 * v58) &= ~0x80000000;
    if (*(this + 8) <= v53)
    {
LABEL_109:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_110;
    }

    *(*(this + 10) + 4 * v53) &= ~0x80000000;
    if (*(this + 8) <= v52)
    {
LABEL_110:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_111;
    }

    *(*(this + 10) + 4 * v52) &= ~0x80000000;
    result = re::GeomConnectivityManifold::glueHalfEdges(this, v53, v52);
    if (*(this + 13) <= v51)
    {
LABEL_111:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_112;
    }

    *(*(this + 15) + 4 * v51) = v58;
  }

  v49 = *(this + 18);
  if (v49 <= v20)
  {
    goto LABEL_102;
  }

  v50 = *(this + 20);
  *(v50 + 4 * v20) = v7;
  if (*(this + 28) <= v54)
  {
LABEL_103:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  *(*(this + 30) + 4 * v54) = v7;
  *v55 = v17;
  if (v49 <= v17)
  {
LABEL_104:
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_105;
  }

  *(v50 + 4 * v17) = v56;
  return result;
}

uint64_t re::addVertexUVs(re *this, re::GeomMesh *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!result)
  {

    return re::GeomMesh::addAttribute(this, "vertexUV", 1, 6);
  }

  return result;
}

uint64_t re::accessVertexUVs(re *this, const re::GeomMesh *a2)
{
  v2 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!(*(*v2 + 16))(v2))
  {
    return 0;
  }

  if (!v2[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2[7];
  (*(*v2 + 16))(v2);
  return v3;
}

uint64_t re::modifyVertexUVs(re *this, re::GeomMesh *a2)
{
  v2 = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexUV");
  if (!(*(*v2 + 16))(v2))
  {
    return 0;
  }

  if (!v2[5])
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2[7];
  (*(*v2 + 16))(v2);
  return v3;
}

uint64_t re::buildExtrudedText(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v14 = 0;
  v13 = 0;
  v18 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v6 = DWORD2(v16);
  if (DWORD2(v16))
  {
    v7 = 0;
    v8 = 64;
    do
    {
      v9 = *(&v16 + 1);
      if (*(&v16 + 1) <= v7)
      {
        *v23 = 0;
        memset(v21, 0, 64);
        v20 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v30[0] = 136315906;
        *&v30[1] = "operator[]";
        LOWORD(v30[3]) = 1024;
        *(&v30[3] + 2) = 789;
        HIWORD(v30[4]) = 2048;
        *&v30[5] = v7;
        LOWORD(v30[7]) = 2048;
        *(&v30[7] + 2) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_12:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        memset(v30, 0, sizeof(v30));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v23 = 136315906;
        *&v23[4] = "operator[]";
        v24 = 1024;
        v25 = 789;
        v26 = 2048;
        v27 = v3;
        v28 = 2048;
        v29 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v13;
      v10 = (v18 + v8 - 64);
      v3 = *(v18 + v8);
      if (v13 <= v3)
      {
        goto LABEL_12;
      }

      v3 = (v15 + 736 * v3);
      *&v20 = 0;
      DWORD2(v20) = 0;
      bzero(v21, 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(v21);
      v22 = 0;
      re::GeomMesh::copy(v3, &v20);
      re::transform(&v20, v10);
      re::DynamicArray<re::GeomMesh>::add(a1, &v20);
      re::GeomMesh::~GeomMesh(&v20);
      ++v7;
      v8 += 80;
    }

    while (v6 != v7);
  }

  if (*(&v15 + 1))
  {
    if (v18)
    {
      (*(**(&v15 + 1) + 40))();
    }

    v18 = 0;
    v16 = 0uLL;
    *(&v15 + 1) = 0;
    ++v17;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v12);
}

void re::anonymous namespace::buildExtrudedText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v5 = &unk_1F5D03008;
    v6 = 0;
    *cf = 0u;
    memset(v8, 0, sizeof(v8));
    v9 = 0x7FFFFFFFLL;
    v5 = &unk_1F5D03008;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

uint64_t re::buildExtrudedText(re *this, re::GeomMesh *a2, const re::GeomBuildExtrudedTextOptions *a3, re::GeomBuildExtrudedTextSupport *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v23[1] = 0;
  v25 = 0;
  v24 = 0;
  v29 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v6 = *(&v27 + 1);
  v7 = DWORD2(v27);
  if (DWORD2(v27))
  {
    v8 = 0;
    v9 = 0;
    v10 = v24;
    v11 = (v29 + 64);
    v12 = *(&v27 + 1);
    v13 = DWORD2(v27);
    while (v12)
    {
      v4 = *v11;
      if (v24 <= v4)
      {
        goto LABEL_30;
      }

      v14 = v26 + 736 * v4;
      v8 = (*(v14 + 16) + v8);
      v9 = (v9 + *(v14 + 40));
      v11 += 20;
      --v12;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    v54[0] = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    *v39 = 789;
    *&v39[4] = 2048;
    *&v39[6] = v6;
    *&v39[14] = 2048;
    *&v39[16] = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v54[0] = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    *v39 = 789;
    *&v39[4] = 2048;
    *&v39[6] = v4;
    *&v39[14] = 2048;
    *&v39[16] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    *v47 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v54[0]) = 136315906;
    *(v54 + 4) = "operator[]";
    WORD2(v54[1]) = 1024;
    *(&v54[1] + 6) = 789;
    WORD1(v54[2]) = 2048;
    *(&v54[2] + 4) = v10;
    WORD2(v54[3]) = 2048;
    *(&v54[3] + 6) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v30 = 0;
    v55 = 0u;
    v56 = 0u;
    memset(v54, 0, sizeof(v54));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    v48 = 1024;
    v49 = 789;
    v50 = 2048;
    v51 = v8;
    v52 = 2048;
    v53 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = 0;
  v8 = 0;
LABEL_8:
  bzero(v37, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v39[2], 1uLL);
  ++v40;
  re::internal::GeomAttributeManager::GeomAttributeManager(v42);
  re::internal::GeomAttributeManager::addAttribute(v42, "vertexPosition", 1, 7);
  if (v43)
  {
    v16 = v44;
    v6 = 8 * v43;
    do
    {
      v17 = *v16++;
      (*(*v17 + 88))(v17, v8);
      v6 -= 8;
    }

    while (v6);
  }

  if (*&v39[10] < v9)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v39[2], v9);
  }

  if (v45)
  {
    v8 = v46;
    v18 = 8 * v45;
    do
    {
      v19 = *v8++;
      (*(*v19 + 88))(v19, v9);
      v18 -= 8;
    }

    while (v18);
  }

  if (v7)
  {
    v10 = 0;
    v20 = 64;
    do
    {
      v9 = *(&v27 + 1);
      if (*(&v27 + 1) <= v10)
      {
        goto LABEL_31;
      }

      v6 = v24;
      v21 = (v29 + v20 - 64);
      v8 = *(v29 + v20);
      if (v24 <= v8)
      {
        goto LABEL_32;
      }

      v8 = (v26 + 736 * v8);
      *&v31 = 0;
      DWORD2(v31) = 0;
      bzero(&v32, 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(&v32);
      v36 = 0;
      re::GeomMesh::copy(v8, &v31);
      re::transform(&v31, v21);
      re::GeomMeshBuilder::appendMesh(v37, &v31);
      re::GeomMesh::~GeomMesh(&v31);
      ++v10;
      v20 += 80;
    }

    while (v7 != v10);
  }

  re::GeomMesh::GeomMesh(&v31, 0);
  re::GeomMesh::operator=(&v31, &v37[8]);
  re::GeomMesh::setName(&v31, *v37);
  re::GeomMesh::freeName(v37);
  re::GeomMesh::freeName(v37);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v42);
  if (*&v39[2] && v41)
  {
    (*(**&v39[2] + 40))();
  }

  re::GeomMesh::operator=(this, &v31);
  re::GeomMesh::~GeomMesh(&v31);
  if (*(&v26 + 1))
  {
    if (v29)
    {
      (*(**(&v26 + 1) + 40))();
    }

    v29 = 0;
    v27 = 0uLL;
    *(&v26 + 1) = 0;
    ++v28;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v23);
}

uint64_t re::buildExtrudedText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  re::DynamicArray<re::GeomMesh>::operator=(a1, v7);
  re::DynamicArray<re::GeomMesh>::operator=(a2, &v9 + 8);
  if (*(&v9 + 1))
  {
    if (v12)
    {
      (*(**(&v9 + 1) + 40))();
    }

    v12 = 0;
    v10 = 0uLL;
    *(&v9 + 1) = 0;
    ++v11;
  }

  return re::DynamicArray<re::GeomMesh>::deinit(v7);
}

uint64_t re::DynamicArray<re::GeomMesh>::operator=(uint64_t result, uint64_t a2)
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

re::_anonymous_namespace_ *re::anonymous namespace::computeFrameSizeHelper(const char *a1, const char *a2, char a3, float a4, float a5)
{
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = CTFontCreateWithName(v9, 1.0, 0);
  if (v11)
  {
    v12 = v11;
    v15 = AttributeString;
    if (AttributeString)
    {
      v16 = 12.0;
      if (a4 > 0.0)
      {
        v16 = a4;
      }

      v20 = v16;
      v18 = vmul_n_f32(v17, v20);
      CFRelease(v15);
      v15 = v18;
    }

    CFRelease(v12);
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v10);
  return v15;
}

const __CTFont *re::GeomBuildExtrudedTextOptions::getFontMetrics(re::GeomBuildExtrudedTextOptions *this, const char *a2, float a3)
{
  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], this, 0x8000100u);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CTFontCreateWithName(v4, 1.0, 0);
  v7 = v6;
  if (v6)
  {
    Ascent = CTFontGetAscent(v6);
    CapHeight = CTFontGetCapHeight(v7);
    XHeight = CTFontGetXHeight(v7);
    Descent = CTFontGetDescent(v7);
    v9.f64[0] = XHeight;
    v9.f64[1] = Descent;
    v10.f64[0] = Ascent;
    v10.f64[1] = CapHeight;
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v9);
    v12 = 12.0;
    if (a3 > 0.0)
    {
      v12 = a3;
    }

    v17 = vmulq_n_f32(v11, v12).u64[0];
    CFRelease(v7);
    v7 = v17;
  }

  CFRelease(v5);
  return v7;
}

uint64_t re::anonymous namespace::buildScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v166 = *MEMORY[0x1E69E9840];
  v5 = &v135;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v144 = vnegq_f32(v6);
  v145 = v6;
  v143 = 0;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v138 = 0x7FFFFFFFLL;
  v7 = *(a2 + 88);
  v8 = *(a2 + 92);
  if (*(a2 + 40))
  {
    v9 = *(a2 + 48);
  }

  else
  {
    v9 = (a2 + 41);
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
  v11 = CTFontCreateWithName(v10, 1.0, 0);
  v13 = v11;
  v14.i32[0] = 12.0;
  if (*(a2 + 64) > 0.0)
  {
    v14.i32[0] = *(a2 + 64);
  }

  v15 = *(a2 + 72);
  v134[1] = 1065353216;
  v134[0] = v15;
  v12.i32[0] = *(a2 + 99);
  v16 = vmovl_u8(v12).u64[0];
  v17 = vext_s8(v16, v16, 4uLL);
  v134[2] = vuzp1_s8(v17, v17).u32[0];
  if (!v10 || !v11)
  {
LABEL_58:
    if (!v10)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v116 = v14;
  if (*(a2 + 8))
  {
    v18 = *(a2 + 16);
  }

  else
  {
    v18 = (a2 + 9);
  }

  if (AttributeString)
  {
    v21 = AttributeString;
    if ((v7 * v8) == 0.0)
    {
    }

    else
    {
      v22 = vdiv_f32(*(a2 + 88), vdup_lane_s32(v116, 0));
    }

    v172.size.width = v22.f32[0];
    v172.size.height = v22.f32[1];
    v172.origin.x = 0.0;
    v172.origin.y = 0.0;
    v23 = CGPathCreateWithRect(v172, 0);
    if (v23)
    {
      Length = CFAttributedStringGetLength(v21);
      v25 = v21;
      v26 = CTFramesetterCreateWithAttributedString(v21);
      if (v26)
      {
        v27 = v26;
        keys.i64[0] = *MEMORY[0x1E69659E8];
        values[0].i64[0] = *MEMORY[0x1E695E4C0];
        v28 = CFDictionaryCreate(0, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v167.location = 0;
        v167.length = Length;
        Frame = CTFramesetterCreateFrame(v27, v167, v23, v28);
        CFRelease(v28);
        CFRelease(v27);
      }

      else
      {
        Frame = 0;
      }

      CFRelease(v23);
      v21 = v25;
      v23 = Frame;
    }

    v30 = 0;
    v31.i64[0] = 0;
    LODWORD(v32) = 0;
    HIDWORD(v32) = v116.i32[0];
    v31.i64[1] = *(a2 + 68);
    v33 = *(a2 + 80);
    v33.i64[1] = 0x3F80000000000000;
    values[0] = v116.u32[0];
    values[1] = v32;
    values[2] = v31;
    v162 = xmmword_1E30474D0;
    do
    {
      *(&keys + v30 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&values[v30])), xmmword_1E3047680, *values[v30].f32, 1), xmmword_1E30476A0, values[v30], 2), v33, values[v30], 3);
      ++v30;
    }

    while (v30 != 4);
    if (!v23)
    {
      goto LABEL_57;
    }

    v100 = v10;
    v110 = v148;
    v111 = keys;
    v113 = v149;
    v112 = v150;
    theArray = CTFrameGetLines(v23);
    origins = 0;
    Count = CFArrayGetCount(theArray);
    v130[1] = 0;
    v131 = 0;
    v130[0] = 0;
    v132 = 0;
    v35 = Count == 0;
    v101 = v13;
    v108 = Count;
    cf = v23;
    v99 = v21;
    if (Count)
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(v130, Count);
      v36 = origins;
      v37 = Count - v131;
      if (Count > v131)
      {
        v38 = &origins[v131];
        do
        {
          v38->x = 0.0;
          v38->y = 0.0;
          ++v38;
          --v37;
        }

        while (v37);
      }

      v131 = Count;
      ++v132;
      v168.location = 0;
      v168.length = Count;
      CTFrameGetLineOrigins(v23, v168, v36);
      v39 = 0;
      v40 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
        GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
        v43 = CFArrayGetCount(GlyphRuns);
        v44 = v43;
        if (v43)
        {
          v45 = 0;
          do
          {
            v46 = CFArrayGetValueAtIndex(GlyphRuns, v45);
            v40 += CTRunGetGlyphCount(v46);
            ++v45;
          }

          while (v44 != v45);
        }

        ++v39;
      }

      while (v39 != v108);
      v47 = v40;
      v48 = 0.0;
      if (!*(a2 + 98))
      {
        v35 = 0;
        v13 = v101;
        goto LABEL_48;
      }

      v49 = 0;
      v50 = v131;
      p_y = &origins->y;
      v52 = INFINITY;
      v13 = v101;
      do
      {
        v53 = CFArrayGetValueAtIndex(theArray, v49);
        BoundsWithOptions = CTLineGetBoundsWithOptions(v53, 0x40uLL);
        if (v50 == v49)
        {
          goto LABEL_140;
        }

        v54 = *p_y;
        p_y += 2;
        v55 = BoundsWithOptions.origin.y + v54;
        if (v52 > v55)
        {
          v52 = v55;
        }

        ++v49;
      }

      while (v108 != v49);
      v56 = *(a2 + 98);
      if (!*(a2 + 98))
      {
        v35 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v169.location = 0;
      v169.length = 0;
      CTFrameGetLineOrigins(v23, v169, 0);
      v56 = *(a2 + 98);
      if (!*(a2 + 98))
      {
LABEL_53:
        CFRelease(cf);
        if (v130[0] && origins)
        {
          (*(*v130[0] + 40))();
        }

        v21 = v99;
        v10 = v100;
LABEL_57:
        CFRelease(v21);
        goto LABEL_58;
      }

      v47 = 0;
      v52 = INFINITY;
    }

    v57 = 0.0;
    if (v52 >= 0.0)
    {
      v57 = v52;
    }

    v58 = -v57;
    v59 = v57 * -0.5;
    if (v56 == 1)
    {
      v59 = v58;
    }

    v48 = v59;
LABEL_48:
    if (*(a1 + 48) < v47)
    {
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v47);
    }

    if (v140 < v47)
    {
      re::DynamicArray<re::AABB>::setCapacity(&v139, v47);
    }

    if (!v35)
    {
      v61 = 0;
      key = *MEMORY[0x1E6965658];
      v62.i64[0] = 0x7F0000007FLL;
      v62.i64[1] = 0x7F0000007FLL;
      v106 = vnegq_f32(v62);
      while (1)
      {
        v63 = CFArrayGetValueAtIndex(theArray, v61);
        v104 = CTLineGetGlyphRuns(v63);
        v64 = CFArrayGetCount(v104);
        v103 = v64;
        if (v64)
        {
          break;
        }

LABEL_128:
        ++v61;
        v13 = v101;
        if (v61 == v108)
        {
          goto LABEL_53;
        }
      }

      v65 = 0;
      while (1)
      {
        v66 = CFArrayGetValueAtIndex(v104, v65);
        Attributes = CTRunGetAttributes(v66);
        Value = CFDictionaryGetValue(Attributes, key);
        GlyphCount = CTRunGetGlyphCount(v66);
        font = Value;
        v70 = CTFontCopyFullName(Value);
        v117 = CFHash(v70);
        buffer = 0;
        v126[1] = 0;
        v127 = 0;
        v125 = 0;
        v126[0] = 0;
        v128 = 0;
        v122[1] = 0;
        v123 = 0;
        v122[0] = 0;
        v124 = 0;
        v105 = v65;
        if (GlyphCount)
        {
          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v122, GlyphCount);
          v71 = v125;
          if (GlyphCount > v123 && GlyphCount > v123)
          {
            bzero(&v125[v123], 16 * (GlyphCount - v123));
          }

          v123 = GlyphCount;
          ++v124;
          v73 = v71;
        }

        else
        {
          v73 = 0;
        }

        re::DynamicArray<unsigned short>::resize(v126, GlyphCount);
        v170.location = 0;
        v170.length = GlyphCount;
        CTRunGetGlyphs(v66, v170, buffer);
        v171.location = 0;
        v171.length = GlyphCount;
        v115 = v73;
        CTRunGetPositions(v66, v171, v73);
        (**a3)();
        v114 = GlyphCount;
        if (GlyphCount)
        {
          break;
        }

LABEL_121:
        CFRelease(v70);
        if (v122[0] && v115)
        {
          (*(*v122[0] + 40))();
        }

        if (v126[0] && buffer)
        {
          (*(*v126[0] + 40))();
        }

        v65 = v105 + 1;
        if (v105 + 1 == v103)
        {
          goto LABEL_128;
        }
      }

      v50 = 0;
      v74 = v114;
      while (1)
      {
        v75 = v127;
        if (v127 <= v50)
        {
          break;
        }

        (*(*a3 + 8))(a3, buffer[v50]);
        v75 = v127;
        if (v127 <= v50)
        {
          goto LABEL_131;
        }

        v119 = buffer[v50];
        v120 = v70;
        *&v121 = v117;
        *(&v121 + 1) = ((v117 << 6) + (v117 >> 2) - 0x61C8864680B583E9 + v119) ^ v117;
        if (v70)
        {
          CFRetain(v70);
        }

        if (keys.i32[3] == 0x7FFFFFFF)
        {
          v75 = v127;
          if (v127 <= v50)
          {
            goto LABEL_135;
          }

          v5 = *(a1 + 16);
          v75 = buffer[v50];
          v66 = (*(*a3 + 16))(a3);
          if (!v66)
          {
            re::GeomMesh::GeomMesh(&keys, 0);
            v76.i64[0] = 0x7F0000007FLL;
            v76.i64[1] = 0x7F0000007FLL;
            v152 = v106;
            v153 = v76;
            re::internal::build3dGlyph(&keys, font, v75, v134);
            if (re::internal::GeomAttributeManager::attributeByName(v151, "vertexUV"))
            {
              *&v164[32] = 0;
              memset(v164, 0, 28);
              re::DynamicArray<double>::resize(v164, 4uLL);
              v77 = *&v164[16];
              if (!*&v164[16])
              {
                goto LABEL_136;
              }

              **&v164[32] = "vertexUV";
              if (v77 == 1)
              {
                goto LABEL_137;
              }

              *(*&v164[32] + 8) = "vertexNormal";
              if (v77 <= 2)
              {
                goto LABEL_138;
              }

              *(*&v164[32] + 16) = "vertexTangent";
              if (v77 == 3)
              {
                goto LABEL_139;
              }

              *(*&v164[32] + 24) = "vertexBitangent";
              re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(&keys, v164, 0, &keys);
              if (*v164 && *&v164[32])
              {
                (*(**v164 + 40))();
              }
            }

            re::computeAABB(&keys, values);
            v152 = values[0];
            v153 = values[1];
            v66 = (*(*a3 + 24))(a3, &keys);
            re::GeomMesh::~GeomMesh(&keys);
          }

          re::DynamicArray<re::GeomMesh>::add(a1, v66);
          re::DynamicArray<re::AABB>::add(&v139, v66 + 736);
          keys = 0uLL;
          v148.i64[0] = 0;
          if (keys.i32[3] == 0x7FFFFFFF)
          {
            *(v75 + 8) = v119;
            v78 = v120;
            *(v75 + 16) = v120;
            *(v75 + 24) = v121;
            if (v78)
            {
              CFRetain(v78);
            }

            *(v75 + 40) = v5;
            ++HIDWORD(v138);
          }

          v74 = v123;
        }

        else
        {
          v5 = *(v136 + 56 * keys.u32[3] + 40);
        }

        LODWORD(v163) = v5;
        if (v74 <= v50)
        {
          goto LABEL_132;
        }

        v75 = v131;
        if (v131 <= v61)
        {
          goto LABEL_133;
        }

        v75 = v70;
        v79 = v74;
        v80 = 0;
        v115 = v125;
        v81 = &v125[v50];
        *&v82 = v81->x;
        y = v81->y;
        v84 = v61;
        v85 = &origins[v61];
        *&v82 = *&v82 + v85->x;
        *&y = v48 + y + v85->y;
        DWORD1(v82) = LODWORD(y);
        DWORD2(v82) = 0;
        HIDWORD(v82) = 1.0;
        *v164 = xmmword_1E3047670;
        *&v164[16] = xmmword_1E3047680;
        *&v164[32] = xmmword_1E30476A0;
        v165 = v82;
        do
        {
          *(&keys + v80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, COERCE_FLOAT(*&v164[v80])), v110, *&v164[v80], 1), v113, *&v164[v80], 2), v112, *&v164[v80], 3);
          v80 += 16;
        }

        while (v80 != 64);
        v61 = &v135;
        values[0] = keys;
        values[1] = v148;
        values[2] = v149;
        v162 = v150;
        v66 = v141;
        if (v141 <= v5)
        {
          goto LABEL_134;
        }

        v86 = re::AABB::transform((v143 + 32 * v5), values, &keys);
        v87 = v144;
        v88 = v145;
        v87.i32[3] = 0;
        v89 = keys;
        v90 = v148;
        v89.i32[3] = 0;
        v88.i32[3] = 0;
        v90.i32[3] = 0;
        v144 = vminnmq_f32(v87, v89);
        v145 = vmaxnmq_f32(v88, v90);
        v91 = *(a1 + 48);
        v92 = *(a1 + 56);
        v5 = &v135;
        v61 = v84;
        v74 = v79;
        v70 = v75;
        if (v92 >= v91)
        {
          v66 = (v92 + 1);
          if (v91 < v92 + 1)
          {
            if (*(a1 + 40))
            {
              v93 = 2 * v91;
              v94 = v91 == 0;
              v95 = 8;
              if (!v94)
              {
                v95 = v93;
              }

              if (v95 <= v66)
              {
                v96 = v66;
              }

              else
              {
                v96 = v95;
              }

              re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v96);
            }

            else
            {
              re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a1 + 40), v66);
              ++*(a1 + 64);
            }
          }

          v92 = *(a1 + 56);
        }

        v97 = *(a1 + 72) + 80 * v92;
        *(v97 + 16) = values[1];
        *(v97 + 32) = values[2];
        *(v97 + 48) = v162;
        *(v97 + 64) = v163;
        *v97 = values[0];
        ++*(a1 + 56);
        ++*(a1 + 64);
        if (v120)
        {
          CFRelease(v120);
        }

        if (++v50 == v114)
        {
          goto LABEL_121;
        }
      }

      *v164 = 0;
      v150 = 0u;
      v151[0] = 0u;
      v148 = 0u;
      v149 = 0u;
      keys = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_131:
      *v164 = 0;
      v150 = 0u;
      v151[0] = 0u;
      v148 = 0u;
      v149 = 0u;
      keys = 0u;
      v74 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_132:
      *v154 = 0;
      v150 = 0u;
      v151[0] = 0u;
      v148 = 0u;
      v149 = 0u;
      keys = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v164 = 136315906;
      *&v164[4] = "operator[]";
      *&v164[12] = 1024;
      *&v164[14] = 789;
      *&v164[18] = 2048;
      *&v164[20] = v50;
      *&v164[28] = 2048;
      *&v164[30] = v74;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_133:
      *v154 = 0;
      v150 = 0u;
      v151[0] = 0u;
      v148 = 0u;
      v149 = 0u;
      keys = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v164 = 136315906;
      *&v164[4] = "operator[]";
      *&v164[12] = 1024;
      *&v164[14] = 789;
      *&v164[18] = 2048;
      *&v164[20] = v61;
      *&v164[28] = 2048;
      *&v164[30] = v75;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_134:
      *v154 = 0;
      *(v61 + 192) = 0u;
      *(v61 + 208) = 0u;
      *(v61 + 160) = 0u;
      *(v61 + 176) = 0u;
      *(v61 + 144) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v164 = 136315906;
      *&v164[4] = "operator[]";
      *&v164[12] = 1024;
      *&v164[14] = 789;
      *&v164[18] = 2048;
      *&v164[20] = v5;
      *&v164[28] = 2048;
      *&v164[30] = v66;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_135:
      *v164 = 0;
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 144) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v75;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_136:
      v146 = 0;
      v162 = 0u;
      v163 = 0u;
      memset(values, 0, sizeof(values));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      v155 = 1024;
      v156 = 789;
      v157 = 2048;
      v158 = 0;
      v159 = 2048;
      v160 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_137:
      v146 = 0;
      v162 = 0u;
      v163 = 0u;
      memset(values, 0, sizeof(values));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      v155 = 1024;
      v156 = 789;
      v157 = 2048;
      v158 = 1;
      v159 = 2048;
      v160 = 1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_138:
      v146 = 0;
      v162 = 0u;
      v163 = 0u;
      memset(values, 0, sizeof(values));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      v155 = 1024;
      v156 = 789;
      v157 = 2048;
      v158 = 2;
      v159 = 2048;
      v160 = 2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_139:
      v146 = 0;
      v162 = 0u;
      v163 = 0u;
      memset(values, 0, sizeof(values));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v154 = 136315906;
      *&v154[4] = "operator[]";
      v155 = 1024;
      v156 = 789;
      v157 = 2048;
      v158 = 3;
      v159 = 2048;
      v160 = 3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_140:
      *v164 = 0;
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 144) = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      values[0].i32[0] = 136315906;
      *(values[0].i64 + 4) = "operator[]";
      values[0].i16[6] = 1024;
      *(&values[0].i32[3] + 2) = 789;
      values[1].i16[1] = 2048;
      *(values[1].i64 + 4) = v50;
      values[1].i16[6] = 2048;
      *(&values[1].i64[1] + 6) = v50;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    goto LABEL_53;
  }

LABEL_59:
  CFRelease(v10);
LABEL_60:
  if (v13)
  {
    CFRelease(v13);
  }

  (*(*a3 + 32))(a3, &v144);
  result = v139;
  if (v139)
  {
    if (v143)
    {
      return (*(*v139 + 40))();
    }
  }

  return result;
}

CFAttributedStringRef re::anonymous namespace::createAttributeString(void *a1, char a2, char a3, const char *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = a2;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v14;
  v13 = a3;
  v18 = 6;
  v19 = 1;
  v20 = &v13;
  v6 = CTParagraphStyleCreate(&settings, 2uLL);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
  v9 = *MEMORY[0x1E6965A30];
  keys[0] = *MEMORY[0x1E6965658];
  keys[1] = v9;
  values[0] = a1;
  values[1] = v6;
  v10 = CFDictionaryCreate(v7, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = CFAttributedStringCreate(0, v8, v10);
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v8)
  {
LABEL_3:
    CFRelease(v8);
  }

LABEL_4:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

float32x2_t re::anonymous namespace::computeSuggestedFrameSize(re::_anonymous_namespace_ *this, const __CFAttributedString *a2, CGFloat a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v4 = CTFramesetterCreateWithAttributedString(this);
  if (v4)
  {
    v5 = v4;
    keys[0] = *MEMORY[0x1E69659E8];
    values = *MEMORY[0x1E695E4C0];
    v6 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14.height = 1.79769313e308;
    v13.location = 0;
    v13.length = 0;
    v14.width = a3;
    v7 = CTFramesetterSuggestFrameSizeWithConstraints(v5, v13, v6, v14, &fitRange);
    CFRelease(v6);
    CFRelease(v5);
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
  }

  return vcvt_f32_f64(v8);
}

void re::DynamicArray<re::GeomMesh>::add(_anonymous_namespace_ *this, uint64_t **a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomMesh>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 736 * v4;
  *v5 = 0;
  *(v5 + 8) = 0;
  bzero((v5 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((v5 + 16));
  *(v5 + 728) = 0;
  re::GeomMesh::copy(a2, v5);
  ++*(this + 2);
  ++*(this + 6);
}

uint64_t *re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::~HashTable(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {
            CFRelease(v9);
            *(v8 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

BOOL re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 24);
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = v4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  if (result)
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      if (result)
      {
        break;
      }

      v10 = *(a2 + 16);
      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v5 = v12;
  }

LABEL_7:
  *v3 = v4;
  *(v3 + 8) = v7;
  *(v3 + 12) = v5;
  *(v3 + 16) = v8;
  return result;
}

BOOL re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>::operator()(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = 0;
  if (*(a1 + 3) == *(a2 + 3) && *a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2 == v3 || v2 && v3 && CFStringCompare(v2, v3, 0) == kCFCompareEqualTo)
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,unsigned int,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
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
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                *(v18 + 8) = *(v17 - 16);
                v19 = *(v17 - 8);
                *(v18 + 16) = v19;
                *(v18 + 24) = *v17;
                if (v19)
                {
                  *(v17 - 16) = 0;
                  *v17 = 0;
                  *(v17 + 8) = 0;
                  *(v17 - 8) = 0;
                }

                *(v18 + 40) = *(v17 + 16);
              }

              v17 += 56;
              --v16;
            }

            while (v16);
          }
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
    v21 = *(v20 + 56 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 56 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 48) = a3;
  ++*(a1 + 28);
  return v20 + 56 * v5;
}

void re::anonymous namespace::GlyphCache::setFont(re::_anonymous_namespace_::GlyphCache *this, CFTypeRef cf, unint64_t a3)
{
  v6 = *(this + 4);
  v7 = (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9 + v6;
  if (cf)
  {
    CFRetain(cf);
  }

  v8 = v7 ^ a3;
  v9 = *(this + 2);
  if (v9)
  {
    CFRelease(v9);
  }

  *(this + 3) = a3;
  *(this + 4) = v8;
  *(this + 4) = v6;
  *(this + 2) = cf;
  if (cf)
  {
    CFRetain(cf);

    CFRelease(cf);
  }
}

uint64_t re::anonymous namespace::GlyphCache::setGlyphIndex(uint64_t this, unint64_t a2)
{
  if (a2 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) glyphIndex (%llu) is too large for a 16-bit unsigned integer", "!overflow", "setGlyphIndex", 102, a2);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    *(this + 8) = a2;
    *(this + 32) = (a2 + (*(this + 24) << 6) + (*(this + 24) >> 2) - 0x61C8864680B583E9) ^ *(this + 24);
  }

  return this;
}

uint64_t re::anonymous namespace::GlyphCache::cachedGlyph(re::_anonymous_namespace_::GlyphCache *this)
{
  if (v4 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(this + 7) + 832 * v4 + 48;
  }
}

uint64_t re::anonymous namespace::GlyphCache::storeGlyph(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 56) + 832 * HIDWORD(v10) + 48;
  }

  *(v4 + 8) = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = *(a1 + 24);
  if (v5)
  {
    CFRetain(v5);
  }

  *(v4 + 48) = 0;
  v6 = v4 + 48;
  *(v6 + 8) = 0;
  bzero((v6 + 16), 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((v6 + 16));
  *(v6 + 728) = 0;
  re::GeomMesh::copy(a2, v6);
  v7 = *(a2 + 752);
  *(v6 + 736) = *(a2 + 736);
  *(v6 + 752) = v7;
  ++*(a1 + 80);
  return v6;
}

BOOL re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::findEntry<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 24);
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = v4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  if (result)
  {
    v5 = v8;
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  v11 = *(v10 + 832 * v8) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      if (result)
      {
        break;
      }

      v10 = *(a2 + 16);
      v11 = *(v10 + 832 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v5 = v12;
  }

LABEL_7:
  *v3 = v4;
  *(v3 + 8) = v7;
  *(v3 + 12) = v5;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          if (v14)
          {
            v16 = 0;
            v17 = 832 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v20 = v19;
                *(v19 + 8) = *(v13 + v16 + 8);
                v21 = *(v13 + v16 + 16);
                *(v19 + 16) = v21;
                *(v19 + 24) = *(v13 + v16 + 24);
                if (v21)
                {
                  *(v18 + 8) = 0;
                  *(v18 + 24) = 0;
                  *(v18 + 32) = 0;
                  *(v13 + v16 + 16) = 0;
                }

                re::GeomMesh::GeomMesh(v19 + 48, v18 + 48);
                v22 = *(v18 + 800);
                *(v20 + 784) = *(v18 + 784);
                *(v20 + 800) = v22;
              }

              v16 += 832;
            }

            while (v17 != v16);
          }
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 832 * v5);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 832 * v5);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 832 * v5;
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 816) = a3;
  ++*(a1 + 28);
  return v23 + 832 * v5;
}

uint64_t *re::HashTable<re::anonymous namespace::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::anonymous namespace::FontNameAndGlyphIndexCacheKey>,true,false>::~HashTable(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {
            CFRelease(v9);
            *(v8 + 16) = 0;
          }

          re::GeomMesh::~GeomMesh((v8 + 48));
          v3 = *(a1 + 8);
        }

        v4 += 832;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

float32x2_t *re::buildPlane(re *this, unsigned __int16 *a2)
{
  v6 = this;
  v174 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = *a2;
  if (v7)
  {
    _ZF = v8 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    LODWORD(v153) = 0;
    *(&v155 + 1) = 0;
    v154 = 0uLL;
    LODWORD(v155) = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(&v153 + 1, 1uLL);
    LODWORD(v155) = v155 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v156);
    re::internal::GeomAttributeManager::addAttribute(&v156, "vertexPosition", 1, 7);
    if (*(a2 + 20) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v156, "vertexUV", 1, 6);
    }

    if (*(a2 + 21) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v156, "vertexNormal", 1, 7);
    }

    if (*(a2 + 20) == 1 && *(a2 + 21) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(&v156, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(&v156, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(v6, &v153);
    re::internal::GeomAttributeManager::~GeomAttributeManager(&v156);
    result = *(&v153 + 1);
    if (*(&v153 + 1) && *(&v155 + 1))
    {
      return (*(**(&v153 + 1) + 40))();
    }
  }

  else
  {
    v11 = v164;
    v12 = a2[2] != 0;
    v13 = *(a2 + 4);
    v14 = v13 > 0.0;
    v15 = *(a2 + 4);
    v16 = vbsl_s8(vcgtz_f32(v15), v15, vneg_f32(v15));
    v17 = *&v16.i32[1];
    if (*&v16.i32[1] >= *v16.i32)
    {
      v18 = *v16.i32;
    }

    else
    {
      v18 = *&v16.i32[1];
    }

    v19 = fabsf(v13);
    if ((v19 + v19) > v18)
    {
      v19 = v18 * 0.5;
    }

    v148 = v19;
    v20 = v19 + v19;
    v21 = *v16.i32 - (v19 + v19);
    v22 = v12 && v14;
    v145 = v16;
    if (!v12 || !v14)
    {
      v21 = *v16.i32;
    }

    v23 = *&v16.i32[1] - v20;
    if (!v12 || !v14)
    {
      v23 = *&v16.i32[1];
    }

    result = re::buildParametricPlane(this, v8, v21, v23, v7);
    if (v22 == 1)
    {
      v151 = a2;
      v25 = *(v6 + 16);
      v3 = *(v6 + 40);
      v26 = *a2;
      v27 = v26 + 1;
      v28 = a2[1];
      v29 = a2[2];
      v144 = v28 + 1;
      v146 = v29 - 1;
      v30 = 2 * (v28 + 1 + v26 + 1) + 4 * (v29 - 1);
      v136 = v28;
      v31 = 2 * (v28 + v26);
      LODWORD(v153) = *(v6 + 16);
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v153 + 8, (v6 + 24));
      if (!v154)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v153 + 1, 1uLL);
      }

      v147 = v29;
      v32 = v31 + 4 * v29;
      re::internal::GeomAttributeManager::GeomAttributeManager(&v156, (v6 + 64));
      LODWORD(v153) = v30 + *(v6 + 16);
      v158 = v153;
      if (v159)
      {
        v33 = v160;
        v34 = 8 * v159;
        do
        {
          v35 = *v33++;
          (*(*v35 + 80))(v35, v158);
          v34 -= 8;
        }

        while (v34);
      }

      v36 = v32 + *(v6 + 40);
      re::DynamicArray<re::GeomCell4>::resize(&v153 + 1, v36);
      v161 = v36;
      v11 = v164;
      if (v162)
      {
        v37 = v163;
        v38 = 8 * v162;
        do
        {
          v39 = *v37++;
          (*(*v39 + 80))(v39, v161);
          v38 -= 8;
        }

        while (v38);
      }

      v40 = *a2;
      v41 = re::internal::GeomAttributeManager::attributeByName(&v156, "vertexPosition");
      v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
      v45 = (v25 + v40 + 1);
      if (v45 != v25)
      {
        v46 = 0;
        v2 = v43;
        v47 = v43 - v25;
        if (v43 < v25)
        {
          v47 = 0;
        }

        v48 = 16 * v47;
        v4 = v25;
        while (16 * v43 != v46)
        {
          if (v48 == v46)
          {
            goto LABEL_126;
          }

          LODWORD(v44) = *(v42 + v46);
          *(&v44 + 2) = v17 * 0.5;
          *(v42 + 16 * v4++) = v44;
          v46 += 16;
          if (v45 == v4)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_125;
      }

LABEL_41:
      if (v40)
      {
        v49 = 0;
        v2 = *(&v154 + 1);
        v50 = *(&v155 + 1);
        while (1)
        {
          v4 = (v3 + v49);
          if (v2 <= v4)
          {
            break;
          }

          v51 = (v50 + 16 * v4);
          v51[3] = v49;
          *v51 = v25 + v49;
          v51[1] = v25 + v49 + 1;
          v51[2] = ++v49;
          if (v40 == v49)
          {
            goto LABEL_45;
          }
        }

        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 789;
        v165 = 2048;
        v166 = v4;
        v167 = 2048;
        v168 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_117;
      }

LABEL_45:
      v138 = v6;
      v52 = *a2;
      v2 = (v146 + v27 + v25);
      v53.i64[0] = 0;
      v53.i64[1] = LODWORD(v148);
      v137 = v53;
      v169 = v53;
      *v164 = LODWORD(v148);
      v142 = v52 + v3;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v151, &v153, v52 + v3, v27 + v25, v52, v146 + v27 + v25, &v169, v164);
      v140 = a2[2];
      v4 = *a2;
      v54 = a2[1];
      v55 = re::internal::GeomAttributeManager::attributeByName(&v156, "vertexPosition");
      v56 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v55);
      DWORD1(v58) = 0;
      *(&v58 + 1) = 0;
      v59 = (v27 + v25 + v147 + v54);
      if (v59 != v2)
      {
        LODWORD(v3) = v57;
        v60 = (v56 + 16 * v2);
        if (v2 <= v57)
        {
          v11 = v57;
        }

        else
        {
          v11 = v2;
        }

        v61 = v59 - v2;
        v62 = (v11 - v2);
        v6 = v4;
        while (v6 < v57)
        {
          if (!v62)
          {
            goto LABEL_128;
          }

          *&v58 = v145.f32[0] * 0.5;
          v63 = v58;
          DWORD2(v63) = *(v56 + 8 + 16 * v6);
          *v60++ = v63;
          v6 = (v6 + v27);
          --v62;
          if (!--v61)
          {
            goto LABEL_53;
          }
        }

LABEL_127:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v6;
        v167 = 2048;
        v168 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_128:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v11;
        v167 = 2048;
        v168 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_129;
      }

LABEL_53:
      if (v54)
      {
        v3 = *(&v154 + 1);
        v64 = *(&v155 + 1);
        v65 = v25 + v147;
        v66 = v142 + v140;
        while (1)
        {
          v11 = v66;
          if (v3 <= v66)
          {
            break;
          }

          v67 = (v64 + 16 * v66);
          v67[2] = v26 + v4 + 1;
          v67[3] = v4;
          v4 = (v4 + v27);
          *v67 = v26 + v65;
          v67[1] = v26 + v65 + 1;
          ++v66;
          ++v65;
          if (!--v54)
          {
            goto LABEL_57;
          }
        }

LABEL_117:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 789;
        v165 = 2048;
        v166 = v11;
        v167 = 2048;
        v168 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *v164 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v169.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v169.i16[6] = 1024;
        *(v11 + 62) = 621;
        WORD1(v170) = 2048;
        *(v11 + 68) = v25;
        WORD6(v170) = 2048;
        *(v11 + 78) = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_119:
        *v164 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v169.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v169.i16[6] = 1024;
        *(v11 + 62) = 613;
        WORD1(v170) = 2048;
        *(v11 + 68) = v2;
        WORD6(v170) = 2048;
        *(v11 + 78) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_120:
        *v164 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v169.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v169.i16[6] = 1024;
        *(v11 + 62) = 621;
        WORD1(v170) = 2048;
        *(v11 + 68) = v3;
        WORD6(v170) = 2048;
        *(v11 + 78) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_121:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 789;
        v165 = 2048;
        v166 = v3;
        v167 = 2048;
        v168 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *v164 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v169.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v169.i16[6] = 1024;
        *(v11 + 62) = 621;
        WORD1(v170) = 2048;
        *(v11 + 68) = v2;
        WORD6(v170) = 2048;
        *(v11 + 78) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_123:
        *v164 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v153 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v169.i32[0] = 136315906;
        *(v11 + 52) = "operator[]";
        v169.i16[6] = 1024;
        *(v11 + 62) = 621;
        WORD1(v170) = 2048;
        *(v11 + 68) = v3;
        WORD6(v170) = 2048;
        *(v11 + 78) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_124:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v164[12] = 1024;
        *(v11 + 14) = 789;
        v165 = 2048;
        *(v11 + 20) = v4;
        v167 = 2048;
        *(v11 + 30) = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_125:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v164[12] = 1024;
        *(v11 + 14) = 621;
        v165 = 2048;
        *(v11 + 20) = v2;
        v167 = 2048;
        *(v11 + 30) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_126:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *(v11 + 4) = "operator[]";
        *&v164[12] = 1024;
        *(v11 + 14) = 621;
        v165 = 2048;
        *(v11 + 20) = v4;
        v167 = 2048;
        *(v11 + 30) = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_127;
      }

LABEL_57:
      v68 = v142 + v140 + a2[1];
      v6 = (v2 + v144);
      v11 = (v25 - 1);
      v2 = (v6 + v146);
      v169 = LODWORD(v148);
      v69.i64[0] = 0;
      v69.i32[3] = 0;
      v69.f32[2] = -v148;
      v139 = v69;
      v141 = -v148;
      *v164 = v69;
      v149 = v68;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v151, &v153, v68, v6, v25 - 1, v6 + v146, &v169, v164);
      v143 = a2[2];
      v70 = *a2;
      v71 = re::internal::GeomAttributeManager::attributeByName(&v156, "vertexPosition");
      v72 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v71);
      v75 = (v6 + v147 + v70);
      if (v75 != v2)
      {
        v4 = v73;
        if (v2 <= v73)
        {
          v6 = v73;
        }

        else
        {
          v6 = v2;
        }

        v76 = (v72 + 16 * v2);
        v77 = v75 - v2;
        v78 = (v2 - v6);
        LODWORD(v3) = v25 - 1;
        while (v3 < v73)
        {
          if (!v78)
          {
            goto LABEL_130;
          }

          LODWORD(v74) = *(v72 + 16 * v3);
          *(&v74 + 2) = v17 * -0.5;
          *v76++ = v74;
          LODWORD(v3) = v3 - 1;
          ++v78;
          if (!--v77)
          {
            goto LABEL_65;
          }
        }

LABEL_129:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v3;
        v167 = 2048;
        v168 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_130:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v6;
        v167 = 2048;
        v168 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_131:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v3;
        v167 = 2048;
        v168 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_132:
        v152 = 0;
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v169 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v164 = 136315906;
        *&v164[4] = "operator[]";
        *&v164[12] = 1024;
        *&v164[14] = 621;
        v165 = 2048;
        v166 = v6;
        v167 = 2048;
        v168 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_65:
      v79 = v149 + v143;
      if (v70)
      {
        v4 = *(&v154 + 1);
        v80 = *(&v155 + 1);
        v81 = v2;
        v82 = v149 + v143;
        do
        {
          v3 = v82;
          if (v4 <= v82)
          {
            goto LABEL_121;
          }

          v83 = (v80 + 16 * v82);
          v83[3] = v11;
          v11 = (v11 - 1);
          *v83 = v81++;
          v83[1] = v81;
          v83[2] = v11;
          v82 = v3 + 1;
        }

        while (v3 + 1 != v79 + v70);
      }

      v84 = v79 + *a2;
      v85 = v2 + v27;
      v3 = (v25 - v27);
      v2 = (v2 + v27 + v146);
      v169 = v139;
      *v164 = LODWORD(v141);
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v151, &v153, v84, v85, v25 - v27, v2, &v169, v164);
      v150 = a2[2];
      v86 = ~v26;
      v87 = a2[1];
      v88 = re::internal::GeomAttributeManager::attributeByName(&v156, "vertexPosition");
      v89 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v88);
      DWORD1(v91) = 0;
      *(&v91 + 1) = 0;
      v92 = v85 + v147 + v87;
      if (v92 != v2)
      {
        v4 = v90;
        if (v2 <= v90)
        {
          v6 = v90;
        }

        else
        {
          v6 = v2;
        }

        v93 = (v89 + 16 * v2);
        v94 = v92 - v2;
        v95 = (v2 - v6);
        while (v3 < v90)
        {
          if (!v95)
          {
            goto LABEL_132;
          }

          *&v91 = v145.f32[0] * -0.5;
          v96 = v91;
          DWORD2(v96) = *(v89 + 8 + 16 * v3);
          *v93++ = v96;
          v3 = (v3 + v86);
          ++v95;
          if (!--v94)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_131;
      }

LABEL_77:
      v97 = v84 + v150;
      v11 = v164;
      v6 = v138;
      if (v87)
      {
        v3 = *(&v154 + 1);
        v98 = *(&v155 + 1);
        v99 = (2 * v26) ^ 0xFFFFFFFE;
        v100 = 3 * v147 + 2 * v26 + v136;
        v101 = ~v26;
        v102 = v97;
        do
        {
          v4 = v102;
          if (v3 <= v102)
          {
            goto LABEL_124;
          }

          v103 = (v98 + 16 * v102);
          *v103 = v25 + v100;
          v103[1] = v25 + v100 + 1;
          ++v102;
          v103[2] = v25 + v99;
          v103[3] = v25 + v101;
          v101 += v86;
          v99 += v86;
          ++v100;
        }

        while (--v87);
      }

      v104 = a2[1];
      v169 = LODWORD(v141);
      *v164 = v137;
      re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(&v151, &v153, v97 + v104, v2 + v144, 0, v25, &v169, v164);
      re::GeomMesh::operator=(v138, &v153);
      re::internal::GeomAttributeManager::~GeomAttributeManager(&v156);
      result = *(&v153 + 1);
      if (*(&v153 + 1))
      {
        v24 = *(&v155 + 1);
        if (*(&v155 + 1))
        {
          result = (*(**(&v153 + 1) + 40))();
        }
      }
    }

    if (*(a2 + 20) == 1)
    {
      re::addVertexUVs(v6, v24);
      v105 = *(v6 + 16);
      v106 = re::GeomMesh::accessVertexPositions(v6);
      v2 = v107;
      result = re::modifyVertexUVs(v6, v107);
      if (v105)
      {
        v109 = vceqz_f32(v15);
        __asm { FMOV            V0.2S, #1.0 }

        v114 = vbic_s8(vdiv_f32(COERCE_FLOAT32X2_T(-_D0), v145), v109);
        v115 = vbic_s8(0x3F0000003F000000, v109);
        v2 = v2;
        v3 = v108;
        v116 = (v106 + 8);
        v117 = v2;
        v118 = v108;
        while (v117)
        {
          if (!v118)
          {
            goto LABEL_120;
          }

          v119.i32[0] = *(v116 - 2);
          v119.i32[1] = *v116;
          *result++ = vmla_f32(v115, v114, v119);
          v116 += 4;
          --v118;
          --v117;
          if (!--v105)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_119;
      }
    }

LABEL_90:
    if (*(a2 + 21) == 1)
    {
      v120 = *(v6 + 16);
      v121 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "vertexNormal");
      result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v121);
      if (v120)
      {
        v25 = v122;
        v123 = v122;
        while (v123)
        {
          *result->f32 = xmmword_1E3047680;
          result += 2;
          --v123;
          if (!--v120)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_118;
      }
    }

LABEL_95:
    if (*(a2 + 21) == 1 && (a2[10] & 1) != 0)
    {
      v124 = re::GeomMesh::addAttribute(v6, "vertexTangent", 1, 7);
      v125 = re::GeomMesh::addAttribute(v6, "vertexBitangent", 1, 7);
      v126 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v124);
      LODWORD(v2) = v127;
      result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v125);
      v129 = *(v6 + 16);
      if (v129)
      {
        v2 = v2;
        v3 = v128;
        v130 = v2;
        v131 = v128;
        while (v130)
        {
          *v126 = xmmword_1E3047670;
          if (!v131)
          {
            goto LABEL_123;
          }

          *result->f32 = xmmword_1E306DD20;
          result += 2;
          ++v126;
          --v131;
          --v130;
          if (!--v129)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_122;
      }
    }

LABEL_102:
    v132 = *(a2 + 6);
    if (v132 <= 2)
    {
      if (v132)
      {
        if (v132 != 1)
        {
          return result;
        }

        v134 = xmmword_1E3047680;
        v135 = xmmword_1E3047690;
      }

      else
      {
        v134 = xmmword_1E30476B0;
        v135 = xmmword_1E3047670;
      }

      v153 = v134;
      v154 = v135;
      v133 = xmmword_1E30476A0;
    }

    else
    {
      switch(v132)
      {
        case 5:
          v153 = xmmword_1E3047670;
          v154 = xmmword_1E306DD20;
          v133 = xmmword_1E3047680;
          break;
        case 4:
          v153 = xmmword_1E3047670;
          v154 = xmmword_1E30476A0;
          v133 = xmmword_1E30476B0;
          break;
        case 3:
          v153 = xmmword_1E3047670;
          v154 = xmmword_1E30476B0;
          v133 = xmmword_1E306DD20;
          break;
        default:
          return result;
      }
    }

    v155 = v133;
    return re::transform(v6, &v153);
  }

  return result;
}

void re::buildPlane(re::GeomMesh &,re::GeomBuildPlaneOptions const&)::$_1::operator()(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, float32x4_t *a7, float32x4_t *a8)
{
  v14 = a2;
  v16 = re::internal::GeomAttributeManager::attributeByName((a2 + 12), "vertexPosition");
  v17 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
  if (v18 <= a5)
  {
    goto LABEL_21;
  }

  v19 = *(*a1 + 4);
  v20 = *v14;
  if (v19 == 1)
  {
    v30 = 1;
LABEL_12:
    v31 = a4 - 1;
    v32 = *(v14 + 3);
    v33 = *(v14 + 5);
    v34 = v20 - a4;
    while (v32 > a3)
    {
      if (v34)
      {
        v35 = v31 + 1;
      }

      else
      {
        v35 = a6;
      }

      v36 = (v33 + 16 * a3);
      *v36 = a5;
      v36[1] = v31++;
      v36[2] = v35;
      v36[3] = -1;
      ++a3;
      --v34;
      if (!--v30)
      {
        return;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_21:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21 = v17;
  v37 = *v14;
  v38 = a1;
  v39 = v14;
  v22 = 1.5708 / v19;
  v23 = a4 + (v19 - 1);
  v24 = (v17 + 16 * a4);
  if (a4 <= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = a4;
  }

  v26 = v23 - a4;
  v40 = a4;
  v27 = v25 - a4;
  v28 = 1;
  do
  {
    if (!v27)
    {
      goto LABEL_20;
    }

    v29 = __sincosf_stret(v22 * v28);
    *v24++ = vaddq_f32(*(v21 + 16 * a5), vaddq_f32(vmulq_n_f32(*a7, v29.__cosval), vmulq_n_f32(*a8, v29.__sinval)));
    ++v28;
    --v27;
    --v26;
  }

  while (v26);
  v14 = v39;
  v30 = *(*v38 + 4);
  a4 = v40;
  v20 = v37;
  if (*(*v38 + 4))
  {
    goto LABEL_12;
  }
}

void re::buildPlane(uint64_t a1, unsigned __int16 *a2)
{
  re::GeomMesh::GeomMesh(v4, 0);
  re::buildPlane(v4, a2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::add(a1, v4);
  re::GeomMesh::~GeomMesh(v4);
}

void dispatchMipGenRect(void *a1, void *a2, void *a3, void *a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v46 = __PAIR64__(a7, a8);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5 - 1;
  v17 = a4;
  v18 = [v13 width];
  if (v18 >> a5 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 >> a5;
  }

  v20 = [v13 height];
  if (v20 >> a5 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20 >> a5;
  }

  v22 = [v13 width];
  if (v22 >> v16 <= 1)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v23 = v22 >> v16;
  }

  v24 = [v13 height] >> v16;
  if (v24 <= 1)
  {
    LOBYTE(v24) = 1;
  }

  v25.f32[1] = v21;
  __asm { FMOV            V1.2S, #1.0 }

  v25.f32[0] = v19;
  v31 = vdiv_f32(_D1, v25);
  __asm { FMOV            V1.2S, #0.25 }

  v55[0] = v31;
  v55[1] = vmul_f32(v31, _D1);
  v55[2] = vmul_f32(v31, 0x3F0000003F000000);
  v56 = a6;
  BYTE4(v56) = v14 != v13;
  v57 = a5 - 1;
  v58 = a5;
  v33 = v24 & 1;
  _ZF = v33 == 0;
  v34 = (2 * v33) ^ 2;
  v35 = 3;
  if (!_ZF)
  {
    v35 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v34 = v35;
  }

  v36 = v17[2 * v34 + 2];

  v37 = v36;
  [v15 setComputePipelineState:v37];
  [v15 setBytes:v55 length:40 atIndex:0];
  if (v47)
  {
    v38 = [v13 newTextureViewWithPixelFormat:objc_msgSend(v13 textureType:"pixelFormat") levels:objc_msgSend(v13 slices:"textureType"), v16, 1, 0, 1];
    v39 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:objc_msgSend(v14 slices:"textureType"), a5, 1, 0, 1];
    v40 = [v14 newTextureViewWithPixelFormat:objc_msgSend(v14 textureType:"pixelFormat") levels:objc_msgSend(v14 slices:"textureType"), 0, 1, 0, 1];
    [v15 setTexture:v38 atIndex:1];
    [v15 setTexture:v39 atIndex:2];
    [v15 setTexture:v38 atIndex:3];
    [v15 setTexture:v40 atIndex:4];
  }

  else
  {
    [v15 setTexture:v13 atIndex:1];
    [v15 setTexture:v14 atIndex:2];
  }

  v41 = [v37 threadExecutionWidth];
  v42 = [v37 maxTotalThreadsPerThreadgroup];
  v43 = v42 / [v37 threadExecutionWidth];
  v44 = [v37 device];
  v45 = [v44 supportsFamily:1004];

  if (v45)
  {
    v52 = v48;
    v53 = HIWORD(v48);
    v54 = 1;
    v49 = v41;
    v50 = v43;
    v51 = 1;
    [v15 dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  }

  else
  {
    v52 = (v48 + v41 - 1) / v41;
    v53 = (HIWORD(v48) + v43 - 1) / v43;
    v54 = 1;
    v49 = v41;
    v50 = v43;
    v51 = 1;
    [v15 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v49];
  }
}

void generateMipmapsForTexture_HierarchicalTiling_traverse(void *a1, void *a2, uint64_t a3, void *a4, int a5, __int32 a6, unsigned int a7, uint64_t a8, uint16x4_t a9)
{
  a9.i32[0] = a6;
  v40 = a9;
  v39 = a1;
  v16 = a2;
  v17 = a4;
  v18 = [v39 width];
  v19 = [v39 height];
  if (v40.u16[1] <= HIWORD(a7))
  {
    v20 = vmovl_u16(v40);
    v21.i64[0] = v18;
    v21.i64[1] = v19;
    v22 = vshlq_u64(v21, vnegq_s64(vdupq_n_s64(a5)));
    v23 = vcgtq_u64(v22, vdupq_n_s64(1uLL));
    v36 = vdupq_n_s64(0x800uLL);
    v37 = vsubq_s64(vandq_s8(v22, v23), vmvnq_s8(v23));
    do
    {
      v20.i32[0] = a6;
      if (a7 >= a6)
      {
        v24 = a6;
        do
        {
          v41 = v20;
          v25 = vshl_n_s32(*v20.i8, 0xBuLL);
          v26.i64[0] = v25.u32[0];
          v26.i64[1] = v25.u32[1];
          v27.i64[0] = 0xFFFFLL;
          v27.i64[1] = 0xFFFFLL;
          v28 = vsubq_s64(v37, vandq_s8(v26, v27));
          v29 = vmovn_s64(vbslq_s8(vcgtq_u64(v36, v28), v28, v36));
          if (a5 >= 2)
          {
            v38 = v29;
            v30 = vadd_s32(v25, v29);
            v31 = vshr_n_u32(vand_s8(vadd_s32(vadd_s32(v30, v30), -1), 0xFFFF0000FFFFLL), 0xBuLL);
            HIWORD(v45) = v31.i16[2];
            LOWORD(v45) = v31.i16[0];
            v32 = vand_s8(vadd_s32(*v41.i8, *v41.i8), 0x1E0000001ELL);
            HIWORD(v44) = v32.i16[2];
            LOWORD(v44) = v32.i16[0];
            v33 = *(a3 + 16);
            v46[0] = *a3;
            v46[1] = v33;
            v47 = *(a3 + 32);
            v35 = v25;
            generateMipmapsForTexture_HierarchicalTiling_traverse(v39, v16, v46, v17, (a5 - 1), v44, v45, a8);
            v29 = v38;
            v25 = v35;
          }

          HIWORD(v43) = v25.i16[2];
          LOWORD(v43) = v25.i16[0];
          HIWORD(v42) = v29.i16[2];
          LOWORD(v42) = v29.i16[0];
          dispatchMipGenRect(v39, v39, v16, v17, a5, v43, v42, a8);
          ++v24;
          v34 = v41;
          v34.i32[0] = v24;
          v20 = v34;
        }

        while (v24 <= a7);
      }

      ++v20.i32[1];
    }

    while (v20.u16[2] <= HIWORD(a7));
  }
}

void generateMipmapsForTexture(void *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  v36 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  if (CGRectIsNull(*(a4 + 8)))
  {
    v14 = [v11 width];
    v15 = [v11 height];
    v16 = 0;
  }

  else
  {
    v14 = *(a4 + 24);
    v15 = *(a4 + 32);
    v16 = vcvt_f32_f64(*(a4 + 8));
  }

  v17 = [v11 width];
  v18 = [v11 height];
  v19 = [v11 width];
  v20 = [v11 height];
  if ([v11 mipmapLevelCount] >= 2)
  {
    v21.f32[0] = v17;
    v21.f32[1] = v18;
    v22 = vdiv_f32(v16, v21);
    v21.f32[0] = v14;
    v23 = v15;
    v21.f32[1] = v23;
    v24.f32[0] = v19;
    v24.f32[1] = v20;
    v25 = vdiv_f32(v21, v24);
    v26 = 1;
    do
    {
      v27 = [v11 width];
      if (v27 >> v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27 >> v26;
      }

      v29 = [v11 height] >> v26;
      v30.f32[0] = v28;
      if (v29 <= 1)
      {
        v29 = 1;
      }

      v30.f32[1] = v29;
      v31 = vmul_f32(v22, v30);
      v32 = vadd_f32(v31, vmul_f32(v25, v30));
      v33 = vcvt_s32_f32(vrndm_f32(v31));
      HIWORD(v39) = v33.i16[2];
      v34 = vsub_s32(vcvt_s32_f32(vrndp_f32(v32)), v33);
      LOWORD(v39) = v33.i16[0];
      HIWORD(v38) = v34.i16[2];
      LOWORD(v38) = v34.i16[0];
      v35 = v37;
      if ((a6 & (v26 == 1)) == 0)
      {
        v35 = v11;
      }

      dispatchMipGenRect(v35, v11, v12, v13, v26++, v39, v38, v13[160]);
    }

    while ([v11 mipmapLevelCount] > v26);
  }
}

void re::SamplerManager::~SamplerManager(re::SamplerManager *this)
{
  re::FixedArray<re::DynamicString>::deinit(this + 17);
  v2 = *(this + 15);
  if (v2)
  {

    *(this + 15) = 0;
  }

  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  v4 = *(this + 13);
  if (v4)
  {

    *(this + 13) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {

    *(this + 12) = 0;
  }

  v6 = *(this + 11);
  if (v6)
  {

    *(this + 11) = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {

    *(this + 10) = 0;
  }

  v8 = *(this + 9);
  if (v8)
  {

    *(this + 9) = 0;
  }

  v9 = *(this + 8);
  if (v9)
  {

    *(this + 8) = 0;
  }

  v10 = *(this + 7);
  if (v10)
  {

    *(this + 7) = 0;
  }

  v11 = *(this + 6);
  if (v11)
  {

    *(this + 6) = 0;
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 8);
}

BOOL re::SamplerManager::init(id *this, id *a2)
{
  v4 = &v142;
  v155 = *MEMORY[0x1E69E9840];
  v5 = re::ObjCObject::operator=(this, a2 + 26);
  if (!this[18])
  {
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 0;
    v148 = 2048;
    v149 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v6 = this[19];
  *&v150 = "nearest";
  *(&v150 + 1) = 7;
  re::DynamicString::operator=(v6, &v150);
  v4 = this[18];
  if (v4 <= 1)
  {
LABEL_193:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 1;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_194;
  }

  v7 = this[19];
  *&v150 = "bilinear";
  *(&v150 + 1) = 8;
  re::DynamicString::operator=((v7 + 32), &v150);
  v4 = this[18];
  if (v4 <= 2)
  {
LABEL_194:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 2;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_195;
  }

  v8 = this[19];
  *&v150 = "trilinear";
  *(&v150 + 1) = 9;
  re::DynamicString::operator=((v8 + 64), &v150);
  v4 = this[18];
  if (v4 <= 3)
  {
LABEL_195:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 3;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_196;
  }

  v9 = this[19];
  *&v150 = "anisotropic4x";
  *(&v150 + 1) = 13;
  re::DynamicString::operator=((v9 + 96), &v150);
  v4 = this[18];
  if (v4 <= 4)
  {
LABEL_196:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 4;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_197;
  }

  v10 = this[19];
  *&v150 = "nearestClamp";
  *(&v150 + 1) = 12;
  re::DynamicString::operator=((v10 + 128), &v150);
  v4 = this[18];
  if (v4 <= 5)
  {
LABEL_197:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 5;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_198;
  }

  v11 = this[19];
  *&v150 = "bilinearClamp";
  *(&v150 + 1) = 13;
  re::DynamicString::operator=((v11 + 160), &v150);
  v4 = this[18];
  if (v4 <= 6)
  {
LABEL_198:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 6;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_199;
  }

  v12 = this[19];
  *&v150 = "trilinearClamp";
  *(&v150 + 1) = 14;
  re::DynamicString::operator=((v12 + 192), &v150);
  v4 = this[18];
  if (v4 <= 7)
  {
LABEL_199:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 7;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_200;
  }

  v13 = this[19];
  *&v150 = "nearestClampToZero";
  *(&v150 + 1) = 18;
  re::DynamicString::operator=((v13 + 224), &v150);
  v4 = this[18];
  if (v4 <= 8)
  {
LABEL_200:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 8;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_201;
  }

  v14 = this[19];
  *&v150 = "bilinearClampToZero";
  *(&v150 + 1) = 19;
  re::DynamicString::operator=((v14 + 256), &v150);
  v4 = this[18];
  if (v4 <= 9)
  {
LABEL_201:
    v141 = 0;
    v25 = &v142;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 9;
    v148 = 2048;
    v149 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_202:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 0;
    v148 = 2048;
    v149 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_203:
    v141 = 0;
    v45 = &v142;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 1;
    v148 = 2048;
    v149 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_204:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 2;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_205:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 3;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_206:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 4;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_207:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 5;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_208:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 6;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_209:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 7;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_210:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 8;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_211;
  }

  v15 = this[19];
  *&v150 = "trilinearClampToZero";
  *(&v150 + 1) = 20;
  re::DynamicString::operator=((v15 + 288), &v150);
  v16 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v16 setRAddressMode_];
  [v16 setSAddressMode_];
  [v16 setTAddressMode_];
  [v16 setMinFilter_];
  [v16 setMagFilter_];
  [v16 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 6, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  v119 = a2;
  if (v16)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 6);
  v17 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v17 setRAddressMode_];
  [v17 setSAddressMode_];
  [v17 setTAddressMode_];
  [v17 setMinFilter_];
  [v17 setMagFilter_];
  [v17 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 7, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v17)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 7);
  v18 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v18 setRAddressMode_];
  [v18 setSAddressMode_];
  [v18 setTAddressMode_];
  [v18 setMinFilter_];
  [v18 setMagFilter_];
  [v18 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 8, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v18)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 8);
  v19 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v19 setRAddressMode_];
  [v19 setSAddressMode_];
  [v19 setTAddressMode_];
  [v19 setMinFilter_];
  [v19 setMagFilter_];
  [v19 setMipFilter_];
  [v19 setMaxAnisotropy_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 9, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v19)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 9);
  v20 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v20 setRAddressMode_];
  [v20 setSAddressMode_];
  [v20 setTAddressMode_];
  [v20 setMinFilter_];
  [v20 setMagFilter_];
  [v20 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 10, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v20)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 10);
  v21 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v21 setRAddressMode_];
  [v21 setSAddressMode_];
  [v21 setTAddressMode_];
  [v21 setMinFilter_];
  [v21 setMagFilter_];
  [v21 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 11, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v21)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 11);
  v22 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v22 setRAddressMode_];
  [v22 setSAddressMode_];
  [v22 setTAddressMode_];
  [v22 setMinFilter_];
  [v22 setMagFilter_];
  [v22 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 12, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v22)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 12);
  v23 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v23 setRAddressMode_];
  [v23 setSAddressMode_];
  [v23 setTAddressMode_];
  [v23 setMinFilter_];
  [v23 setMagFilter_];
  [v23 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 13, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v23)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 13);
  v24 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v24 setRAddressMode_];
  [v24 setSAddressMode_];
  [v24 setTAddressMode_];
  [v24 setMinFilter_];
  [v24 setMagFilter_];
  [v24 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  v120 = this + 14;
  NS::SharedPtr<MTL::Texture>::operator=(this + 14, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v24)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), v120);
  v25 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  [v25 setRAddressMode_];
  [v25 setSAddressMode_];
  [v25 setTAddressMode_];
  [v25 setMinFilter_];
  [v25 setMagFilter_];
  [v25 setMipFilter_];
  *&v150 = [*this newSamplerStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(this + 15, &v150);
  if (v150)
  {

    *&v150 = 0;
  }

  if (v25)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 1), this + 15);
  SamplerTableByName = re::MaterialManager::findSamplerTableByName(v119[3], "fallback");
  this[16] = SamplerTableByName;
  re::SamplerTable::init(SamplerTableByName, 0xAuLL);
  if (!this[18])
  {
    goto LABEL_202;
  }

  v27 = this[16];
  v28 = this[19];
  v29 = *(v28 + 8);
  if (v29)
  {
    v31 = *(v28 + 16);
    if (!v31)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_63;
    }

    LOBYTE(v28) = *v31;
  }

  else
  {
    v30 = v29 >> 8;
    v31 = (v28 + 9);
    LOBYTE(v28) = v30;
  }

  if (v28)
  {
    v28 = v28;
    v32 = v31[1];
    if (v32)
    {
      v33 = v31 + 2;
      do
      {
        v28 = 31 * v28 + v32;
        v34 = *v33++;
        v32 = v34;
      }

      while (v34);
    }

    v35 = v28 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = 0;
  }

LABEL_63:
  v140 = v35;
  v139 = this[6];
  re::SamplerTable::setSampler(v27, &v140, &v139);
  if (v139)
  {

    v139 = 0;
  }

  v140 = 0;
  v25 = this[18];
  if (v25 <= 1)
  {
    goto LABEL_203;
  }

  v36 = this[16];
  v37 = this[19];
  v38 = *(v37 + 40);
  if (v38)
  {
    v40 = *(v37 + 48);
    if (!v40)
    {
      v44 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }

    LOBYTE(v37) = *v40;
  }

  else
  {
    v39 = v38 >> 8;
    v40 = (v37 + 41);
    LOBYTE(v37) = v39;
  }

  if (v37)
  {
    v37 = v37;
    v41 = v40[1];
    if (v41)
    {
      v42 = v40 + 2;
      do
      {
        v37 = 31 * v37 + v41;
        v43 = *v42++;
        v41 = v43;
      }

      while (v43);
    }

    v44 = v37 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = 0;
  }

LABEL_77:
  v138 = v44;
  v137 = this[7];
  re::SamplerTable::setSampler(v36, &v138, &v137);
  if (v137)
  {

    v137 = 0;
  }

  v138 = 0;
  v45 = this[18];
  if (v45 <= 2)
  {
    goto LABEL_204;
  }

  v46 = this[16];
  v47 = this[19];
  v48 = *(v47 + 72);
  if (v48)
  {
    v50 = *(v47 + 80);
    if (!v50)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_91;
    }

    LOBYTE(v47) = *v50;
  }

  else
  {
    v49 = v48 >> 8;
    v50 = (v47 + 73);
    LOBYTE(v47) = v49;
  }

  if (v47)
  {
    v47 = v47;
    v51 = v50[1];
    if (v51)
    {
      v52 = v50 + 2;
      do
      {
        v47 = 31 * v47 + v51;
        v53 = *v52++;
        v51 = v53;
      }

      while (v53);
    }

    v54 = v47 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v54 = 0;
  }

LABEL_91:
  v136 = v54;
  v135 = this[8];
  re::SamplerTable::setSampler(v46, &v136, &v135);
  if (v135)
  {

    v135 = 0;
  }

  v136 = 0;
  v45 = this[18];
  if (v45 <= 3)
  {
    goto LABEL_205;
  }

  v55 = this[16];
  v56 = this[19];
  v57 = *(v56 + 104);
  if (v57)
  {
    v59 = *(v56 + 112);
    if (!v59)
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_105;
    }

    LOBYTE(v56) = *v59;
  }

  else
  {
    v58 = v57 >> 8;
    v59 = (v56 + 105);
    LOBYTE(v56) = v58;
  }

  if (v56)
  {
    v56 = v56;
    v60 = v59[1];
    if (v60)
    {
      v61 = v59 + 2;
      do
      {
        v56 = 31 * v56 + v60;
        v62 = *v61++;
        v60 = v62;
      }

      while (v62);
    }

    v63 = v56 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v63 = 0;
  }

LABEL_105:
  v134 = v63;
  v133 = this[9];
  re::SamplerTable::setSampler(v55, &v134, &v133);
  if (v133)
  {

    v133 = 0;
  }

  v134 = 0;
  v45 = this[18];
  if (v45 <= 4)
  {
    goto LABEL_206;
  }

  v64 = this[16];
  v65 = this[19];
  v66 = *(v65 + 136);
  if (v66)
  {
    v68 = *(v65 + 144);
    if (!v68)
    {
      v72 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_119;
    }

    LOBYTE(v65) = *v68;
  }

  else
  {
    v67 = v66 >> 8;
    v68 = (v65 + 137);
    LOBYTE(v65) = v67;
  }

  if (v65)
  {
    v65 = v65;
    v69 = v68[1];
    if (v69)
    {
      v70 = v68 + 2;
      do
      {
        v65 = 31 * v65 + v69;
        v71 = *v70++;
        v69 = v71;
      }

      while (v71);
    }

    v72 = v65 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v72 = 0;
  }

LABEL_119:
  v132 = v72;
  v131 = this[10];
  re::SamplerTable::setSampler(v64, &v132, &v131);
  if (v131)
  {

    v131 = 0;
  }

  v132 = 0;
  v45 = this[18];
  if (v45 <= 5)
  {
    goto LABEL_207;
  }

  v73 = this[16];
  v74 = this[19];
  v75 = *(v74 + 168);
  if (v75)
  {
    v77 = *(v74 + 176);
    if (!v77)
    {
      v81 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_133;
    }

    LOBYTE(v74) = *v77;
  }

  else
  {
    v76 = v75 >> 8;
    v77 = (v74 + 169);
    LOBYTE(v74) = v76;
  }

  if (v74)
  {
    v74 = v74;
    v78 = v77[1];
    if (v78)
    {
      v79 = v77 + 2;
      do
      {
        v74 = 31 * v74 + v78;
        v80 = *v79++;
        v78 = v80;
      }

      while (v80);
    }

    v81 = v74 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = 0;
  }

LABEL_133:
  v130 = v81;
  v129 = this[11];
  re::SamplerTable::setSampler(v73, &v130, &v129);
  if (v129)
  {

    v129 = 0;
  }

  v130 = 0;
  v45 = this[18];
  if (v45 <= 6)
  {
    goto LABEL_208;
  }

  v82 = this[16];
  v83 = this[19];
  v84 = *(v83 + 200);
  if (v84)
  {
    v86 = *(v83 + 208);
    if (!v86)
    {
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_147;
    }

    LOBYTE(v83) = *v86;
  }

  else
  {
    v85 = v84 >> 8;
    v86 = (v83 + 201);
    LOBYTE(v83) = v85;
  }

  if (v83)
  {
    v83 = v83;
    v87 = v86[1];
    if (v87)
    {
      v88 = v86 + 2;
      do
      {
        v83 = 31 * v83 + v87;
        v89 = *v88++;
        v87 = v89;
      }

      while (v89);
    }

    v90 = v83 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v90 = 0;
  }

LABEL_147:
  v128 = v90;
  v127 = this[12];
  re::SamplerTable::setSampler(v82, &v128, &v127);
  if (v127)
  {

    v127 = 0;
  }

  v128 = 0;
  v45 = this[18];
  if (v45 <= 7)
  {
    goto LABEL_209;
  }

  v91 = this[16];
  v92 = this[19];
  v93 = *(v92 + 232);
  if (v93)
  {
    v95 = *(v92 + 240);
    if (!v95)
    {
      v99 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_161;
    }

    LOBYTE(v92) = *v95;
  }

  else
  {
    v94 = v93 >> 8;
    v95 = (v92 + 233);
    LOBYTE(v92) = v94;
  }

  if (v92)
  {
    v92 = v92;
    v96 = v95[1];
    if (v96)
    {
      v97 = v95 + 2;
      do
      {
        v92 = 31 * v92 + v96;
        v98 = *v97++;
        v96 = v98;
      }

      while (v98);
    }

    v99 = v92 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = 0;
  }

LABEL_161:
  v126 = v99;
  v125 = this[13];
  re::SamplerTable::setSampler(v91, &v126, &v125);
  if (v125)
  {

    v125 = 0;
  }

  v126 = 0;
  v45 = this[18];
  if (v45 <= 8)
  {
    goto LABEL_210;
  }

  v100 = this[16];
  v101 = this[19];
  v102 = *(v101 + 264);
  if (v102)
  {
    v104 = *(v101 + 272);
    if (!v104)
    {
      v108 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_175;
    }

    LOBYTE(v101) = *v104;
  }

  else
  {
    v103 = v102 >> 8;
    v104 = (v101 + 265);
    LOBYTE(v101) = v103;
  }

  if (v101)
  {
    v101 = v101;
    v105 = v104[1];
    if (v105)
    {
      v106 = v104 + 2;
      do
      {
        v101 = 31 * v101 + v105;
        v107 = *v106++;
        v105 = v107;
      }

      while (v107);
    }

    v108 = v101 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v108 = 0;
  }

LABEL_175:
  v124 = v108;
  v123 = *v120;
  re::SamplerTable::setSampler(v100, &v124, &v123);
  if (v123)
  {

    v123 = 0;
  }

  v124 = 0;
  v45 = this[18];
  if (v45 <= 9)
  {
LABEL_211:
    v141 = 0;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v150 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    v143 = "operator[]";
    v144 = 1024;
    v145 = 468;
    v146 = 2048;
    v147 = 9;
    v148 = 2048;
    v149 = v45;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v109 = this[16];
  v110 = this[19];
  v111 = *(v110 + 296);
  if (v111)
  {
    v113 = *(v110 + 304);
    if (!v113)
    {
      v117 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_189;
    }

    LOBYTE(v110) = *v113;
  }

  else
  {
    v112 = v111 >> 8;
    v113 = (v110 + 297);
    LOBYTE(v110) = v112;
  }

  if (v110)
  {
    v110 = v110;
    v114 = v113[1];
    if (v114)
    {
      v115 = v113 + 2;
      do
      {
        v110 = 31 * v110 + v114;
        v116 = *v115++;
        v114 = v116;
      }

      while (v116);
    }

    v117 = v110 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v117 = 0;
  }

LABEL_189:
  v122 = v117;
  v121 = this[15];
  re::SamplerTable::setSampler(v109, &v122, &v121);
  if (v121)
  {
  }

  return *this != 0;
}